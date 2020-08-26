	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateRolyPoly
CreateRolyPoly: @ 0x080ACCD0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080ACD04 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080ACD08 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080ACD0C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080ACD14
	.align 2, 0
_080ACD04: .4byte ObjectMain
_080ACD08: .4byte ObjectDestroy
_080ACD0C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080ACD14:
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
	ble _080ACD34
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	b _080ACD3C
_080ACD34:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080ACD3C:
	str r0, [r5, #8]
	movs r4, #5
	rsbs r4, r4, #0
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #7
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r0, #9
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r5, #0
	bl ObjectInitSprite
	ldr r2, _080ACD9C @ =gUnk_08351648
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
	ldr r0, _080ACDA0 @ =sub_080ACDA4
	str r0, [r5, #0x7c]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080ACD9C: .4byte gUnk_08351648
_080ACDA0: .4byte sub_080ACDA4

	thumb_func_start sub_080ACDA4
sub_080ACDA4: @ 0x080ACDA4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #0
	ldr r0, _080ACDF0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r4, #0
	adds r1, #0x56
	movs r6, #1
	adds r0, r6, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	bne _080ACEB8
	ldrh r1, [r4, #4]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0x1f
	bne _080ACDDA
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
_080ACDDA:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #2
	beq _080ACE2E
	cmp r0, #2
	bgt _080ACDF4
	cmp r0, #0
	beq _080ACDFE
	b _080ACDF8
	.align 2, 0
_080ACDF0: .4byte gUnk_03000510
_080ACDF4:
	cmp r0, #3
	beq _080ACE94
_080ACDF8:
	adds r3, r4, #0
	adds r3, #0x9e
	b _080ACEA2
_080ACDFE:
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080ACE12
	ldr r0, [r4, #8]
	orrs r0, r6
	b _080ACE1A
_080ACE12:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080ACE1A:
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r3, r1, #0
	cmp r0, #0x3c
	bls _080ACEA2
	movs r0, #2
	orrs r5, r0
	b _080ACEA2
_080ACE2E:
	ldrh r1, [r4, #4]
	movs r0, #0xf
	ands r0, r1
	adds r3, r4, #0
	adds r3, #0x9e
	cmp r0, #0xf
	bne _080ACEA2
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	ldr r1, [r4, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080ACE58
	ldr r0, _080ACE54 @ =0x00004FFF
	cmp r2, r0
	ble _080ACE60
	b _080ACEA2
	.align 2, 0
_080ACE54: .4byte 0x00004FFF
_080ACE58:
	subs r1, r1, r0
	ldr r0, _080ACE84 @ =0x00004FFF
	cmp r1, r0
	bgt _080ACEA2
_080ACE60:
	ldr r2, _080ACE88 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080ACE8C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080ACE90 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	adds r3, r4, #0
	adds r3, #0x9e
	cmp r0, #0
	bne _080ACEA2
	movs r0, #1
	orrs r5, r0
	b _080ACEA2
	.align 2, 0
_080ACE84: .4byte 0x00004FFF
_080ACE88: .4byte gRngVal
_080ACE8C: .4byte 0x00196225
_080ACE90: .4byte 0x3C6EF35F
_080ACE94:
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r3, r1, #0
	cmp r0, #0x1d
	bhi _080ACEA2
	movs r5, #1
_080ACEA2:
	adds r1, r4, #0
	adds r1, #0x9d
	ldrb r0, [r1]
	strb r5, [r1]
	bics r5, r0
	adds r0, r4, #0
	adds r0, #0x9c
	strb r5, [r0]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_080ACEB8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ACEC0
sub_080ACEC0: @ 0x080ACEC0
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080ACEE8
	adds r0, r3, #0
	adds r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080ACEF8
	b _080ACEF4
_080ACEE8:
	adds r0, r3, #0
	subs r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080ACEF8
_080ACEF4:
	movs r0, #0
	strh r0, [r1]
_080ACEF8:
	adds r0, r2, #0
	adds r0, #0x9d
	ldrb r1, [r0]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _080ACF28
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080ACF16
	ldr r0, [r2, #8]
	movs r1, #1
	orrs r0, r1
	b _080ACF26
_080ACF16:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080ACF28
	ldr r0, [r2, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080ACF26:
	str r0, [r2, #8]
_080ACF28:
	adds r0, r2, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	adds r3, r2, #0
	adds r3, #0x9c
	cmp r0, #0
	beq _080ACF4A
	ldrb r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080ACF4A
	adds r0, r2, #0
	bl sub_080ACF68
	b _080ACF62
_080ACF4A:
	ldrb r1, [r3]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080ACF5C
	adds r0, r2, #0
	bl sub_080AD5F4
	b _080ACF62
_080ACF5C:
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
_080ACF62:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080ACF68
sub_080ACF68: @ 0x080ACF68
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AD030
	ldr r2, _080AD038 @ =sub_080AD068
	adds r0, r4, #0
	movs r1, #3
	bl ObjectSetFunc
	adds r3, r4, #0
	adds r3, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r3]
	ldr r2, _080AD03C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080AD040 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080AD044 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r5, #1
	ands r0, r5
	cmp r0, #0
	beq _080ACFAA
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r3]
_080ACFAA:
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0xe8
	lsls r2, r2, #1
	strh r2, [r1]
	ldr r0, [r4, #8]
	ands r0, r5
	cmp r0, #0
	beq _080ACFC0
	rsbs r0, r2, #0
	strh r0, [r1]
_080ACFC0:
	ldr r0, [r4, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #8]
	ldr r1, _080AD048 @ =gUnk_02020EE0
	ldr r0, _080AD04C @ =gUnk_0203AD3C
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
	bne _080AD030
	ldrb r0, [r4]
	cmp r0, #0
	bne _080ACFF4
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080AD030
_080ACFF4:
	ldr r1, _080AD050 @ =gUnk_08D60FA4
	ldr r4, _080AD054 @ =gSongTable
	ldr r2, _080AD058 @ =0x00000A2C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080AD018
	ldr r1, _080AD05C @ =0x00000A28
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080AD030
_080AD018:
	cmp r3, #0
	beq _080AD02A
	ldr r0, _080AD060 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080AD030
_080AD02A:
	ldr r0, _080AD064 @ =0x00000145
	bl m4aSongNumStart
_080AD030:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AD038: .4byte sub_080AD068
_080AD03C: .4byte gRngVal
_080AD040: .4byte 0x00196225
_080AD044: .4byte 0x3C6EF35F
_080AD048: .4byte gUnk_02020EE0
_080AD04C: .4byte gUnk_0203AD3C
_080AD050: .4byte gUnk_08D60FA4
_080AD054: .4byte gSongTable
_080AD058: .4byte 0x00000A2C
_080AD05C: .4byte 0x00000A28
_080AD060: .4byte gUnk_0203AD10
_080AD064: .4byte 0x00000145

	thumb_func_start sub_080AD068
sub_080AD068: @ 0x080AD068
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x52
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0xb
	ble _080AD08A
	adds r0, r4, #0
	adds r0, #0x9d
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080AD08A
	movs r0, #0xb
	strh r0, [r2]
_080AD08A:
	adds r0, r4, #0
	adds r0, #0x9d
	ldrb r1, [r0]
	movs r3, #0x30
	ands r3, r1
	cmp r3, #0
	beq _080AD114
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080AD0A8
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080AD0B8
_080AD0A8:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080AD0BA
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080AD0B8:
	str r0, [r4, #8]
_080AD0BA:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AD0F0
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _080AD0E0 @ =0xFFFFFF00
	cmp r2, r0
	bge _080AD0E4
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	b _080AD13A
	.align 2, 0
_080AD0E0: .4byte 0xFFFFFF00
_080AD0E4:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	ble _080AD13A
	strh r0, [r1]
	b _080AD13A
_080AD0F0:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080AD10C
	ldr r2, _080AD110 @ =0xFFFFFF00
	cmp r0, r2
	bge _080AD13A
_080AD10C:
	strh r2, [r1]
	b _080AD13A
	.align 2, 0
_080AD110: .4byte 0xFFFFFF00
_080AD114:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080AD12E
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080AD13A
	b _080AD138
_080AD12E:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080AD13A
_080AD138:
	strh r3, [r1]
_080AD13A:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AD166
	ldr r0, [r4, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080AD17C @ =sub_080ACEC0
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_080AD166:
	adds r0, r4, #0
	adds r0, #0x9c
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080AD180
	adds r0, r4, #0
	bl sub_080AD61C
	b _080AD186
	.align 2, 0
_080AD17C: .4byte sub_080ACEC0
_080AD180:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_080AD186:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080AD18C
sub_080AD18C: @ 0x080AD18C
	push {r4, lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080AD1AC
	adds r0, r2, #0
	adds r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080AD1BC
	b _080AD1B8
_080AD1AC:
	adds r0, r2, #0
	subs r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080AD1BC
_080AD1B8:
	movs r0, #0
	strh r0, [r1]
_080AD1BC:
	ldrh r1, [r3, #4]
	movs r2, #4
	ldrsh r0, [r3, r2]
	cmp r0, #0xa
	ble _080AD1CE
	adds r0, r3, #0
	bl sub_080AD61C
	b _080AD1D2
_080AD1CE:
	adds r0, r1, #1
	strh r0, [r3, #4]
_080AD1D2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080AD1D8
sub_080AD1D8: @ 0x080AD1D8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, [r4, #8]
	movs r0, #4
	orrs r2, r0
	str r2, [r4, #8]
	ldr r1, _080AD218 @ =gUnk_082D88B8
	adds r0, r4, #0
	adds r0, #0x57
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r1, r0
	movs r0, #0xc0
	lsls r0, r0, #0x16
	cmp r1, r0
	beq _080AD242
	cmp r1, r0
	bhi _080AD226
	movs r0, #0x80
	lsls r0, r0, #0x15
	cmp r1, r0
	beq _080AD242
	cmp r1, r0
	bhi _080AD21C
	cmp r1, #0
	bne _080AD216
	b _080AD308
_080AD216:
	b _080AD378
	.align 2, 0
_080AD218: .4byte gUnk_082D88B8
_080AD21C:
	movs r0, #0x80
	lsls r0, r0, #0x16
	cmp r1, r0
	beq _080AD242
	b _080AD378
_080AD226:
	movs r0, #0xa0
	lsls r0, r0, #0x17
	cmp r1, r0
	beq _080AD288
	cmp r1, r0
	bhi _080AD238
	movs r0, #0x80
	lsls r0, r0, #0x17
	b _080AD23C
_080AD238:
	movs r0, #0xc0
	lsls r0, r0, #0x17
_080AD23C:
	cmp r1, r0
	beq _080AD288
	b _080AD378
_080AD242:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080AD25E
	adds r0, r3, #6
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080AD26C
	b _080AD268
_080AD25E:
	subs r0, r3, #6
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080AD26C
_080AD268:
	movs r0, #0
	strh r0, [r2]
_080AD26C:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _080AD276
	b _080AD378
_080AD276:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, _080AD284 @ =sub_080AD3D0
	str r0, [r4, #0x78]
	b _080AD378
	.align 2, 0
_080AD284: .4byte sub_080AD3D0
_080AD288:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AD2C4
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r1, [r0]
	subs r1, #8
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	ldr r1, _080AD2B0 @ =0xFFFFFE30
	adds r2, r0, #0
	cmp r3, r1
	bge _080AD2B8
	ldr r0, _080AD2B4 @ =0x0000FE30
	strh r0, [r2]
	b _080AD2E8
	.align 2, 0
_080AD2B0: .4byte 0xFFFFFE30
_080AD2B4: .4byte 0x0000FE30
_080AD2B8:
	movs r0, #0xe8
	lsls r0, r0, #1
	cmp r3, r0
	ble _080AD2E8
	strh r0, [r2]
	b _080AD2E8
_080AD2C4:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xe8
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	ble _080AD2E0
	strh r3, [r2]
	b _080AD2E8
_080AD2E0:
	ldr r1, _080AD304 @ =0xFFFFFE30
	cmp r0, r1
	bge _080AD2E8
	strh r1, [r2]
_080AD2E8:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080AD378
	adds r0, r4, #0
	adds r0, #0x9c
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AD378
	b _080AD316
	.align 2, 0
_080AD304: .4byte 0xFFFFFE30
_080AD308:
	adds r0, r4, #0
	adds r0, #0x9c
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AD31E
_080AD316:
	adds r0, r4, #0
	bl sub_080ACF68
	b _080AD3CA
_080AD31E:
	movs r5, #0x20
	ands r5, r2
	cmp r5, #0
	bne _080AD378
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080AD342
	adds r0, r3, #2
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080AD34E
	b _080AD34C
_080AD342:
	subs r0, r3, #2
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080AD34E
_080AD34C:
	strh r5, [r2]
_080AD34E:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _080AD358
	rsbs r0, r0, #0
_080AD358:
	cmp r0, #0x7f
	bgt _080AD378
	ldr r2, _080AD374 @ =sub_080ACEC0
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080AD3CA
	.align 2, 0
_080AD374: .4byte sub_080ACEC0
_080AD378:
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AD3C4
	ldr r3, [r4, #8]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r3, r0
	str r3, [r4, #8]
	ldrb r1, [r2]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080AD3C4
	ands r3, r5
	subs r2, #0x12
	cmp r3, #0
	beq _080AD3B8
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _080AD3B0
	movs r0, #0
	strh r0, [r2]
_080AD3B0:
	ldr r0, [r4, #8]
	ands r0, r5
	cmp r0, #0
	bne _080AD3C4
_080AD3B8:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	ble _080AD3C4
	movs r0, #0
	strh r0, [r2]
_080AD3C4:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_080AD3CA:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080AD3D0
sub_080AD3D0: @ 0x080AD3D0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldr r1, _080AD410 @ =gUnk_082D88B8
	adds r0, r4, #0
	adds r0, #0x57
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r1, r0
	movs r0, #0xc0
	lsls r0, r0, #0x16
	cmp r1, r0
	beq _080AD43A
	cmp r1, r0
	bhi _080AD41E
	movs r0, #0x80
	lsls r0, r0, #0x15
	cmp r1, r0
	beq _080AD43A
	cmp r1, r0
	bhi _080AD414
	cmp r1, #0
	bne _080AD40E
	b _080AD500
_080AD40E:
	b _080AD57C
	.align 2, 0
_080AD410: .4byte gUnk_082D88B8
_080AD414:
	movs r0, #0x80
	lsls r0, r0, #0x16
	cmp r1, r0
	beq _080AD43A
	b _080AD57C
_080AD41E:
	movs r0, #0xa0
	lsls r0, r0, #0x17
	cmp r1, r0
	beq _080AD4B8
	cmp r1, r0
	bhi _080AD430
	movs r0, #0x80
	lsls r0, r0, #0x17
	b _080AD434
_080AD430:
	movs r0, #0xc0
	lsls r0, r0, #0x17
_080AD434:
	cmp r1, r0
	beq _080AD4B8
	b _080AD57C
_080AD43A:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AD474
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r1, [r0]
	subs r1, #8
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	ldr r1, _080AD460 @ =0xFFFFFE30
	adds r2, r0, #0
	cmp r3, r1
	bge _080AD468
	ldr r0, _080AD464 @ =0x0000FE30
	strh r0, [r2]
	b _080AD498
	.align 2, 0
_080AD460: .4byte 0xFFFFFE30
_080AD464: .4byte 0x0000FE30
_080AD468:
	movs r0, #0xe8
	lsls r0, r0, #1
	cmp r3, r0
	ble _080AD498
	strh r0, [r2]
	b _080AD498
_080AD474:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xe8
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	ble _080AD490
	strh r3, [r2]
	b _080AD498
_080AD490:
	ldr r1, _080AD4B4 @ =0xFFFFFE30
	cmp r0, r1
	bge _080AD498
	strh r1, [r2]
_080AD498:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080AD57C
	adds r0, r4, #0
	adds r0, #0x9c
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AD57C
	b _080AD51A
	.align 2, 0
_080AD4B4: .4byte 0xFFFFFE30
_080AD4B8:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080AD4D4
	adds r0, r3, #6
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080AD4E2
	b _080AD4DE
_080AD4D4:
	subs r0, r3, #6
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080AD4E2
_080AD4DE:
	movs r0, #0
	strh r0, [r2]
_080AD4E2:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bne _080AD57C
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, _080AD4FC @ =sub_080AD1D8
	str r0, [r4, #0x78]
	b _080AD57C
	.align 2, 0
_080AD4FC: .4byte sub_080AD1D8
_080AD500:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080AD522
	adds r0, r4, #0
	adds r0, #0x9c
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AD522
_080AD51A:
	adds r0, r4, #0
	bl sub_080ACF68
	b _080AD5CE
_080AD522:
	ldr r3, [r4, #8]
	movs r0, #0x20
	ands r3, r0
	cmp r3, #0
	bne _080AD57C
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r5, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080AD548
	adds r0, r5, #2
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080AD554
	b _080AD552
_080AD548:
	subs r0, r5, #2
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080AD554
_080AD552:
	strh r3, [r2]
_080AD554:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _080AD55E
	rsbs r0, r0, #0
_080AD55E:
	cmp r0, #0x7f
	bgt _080AD57C
	ldr r2, _080AD578 @ =sub_080ACEC0
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080AD5CE
	.align 2, 0
_080AD578: .4byte sub_080ACEC0
_080AD57C:
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AD5C8
	ldr r3, [r4, #8]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r3, r0
	str r3, [r4, #8]
	ldrb r1, [r2]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080AD5C8
	ands r3, r5
	subs r2, #0x12
	cmp r3, #0
	beq _080AD5BC
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _080AD5B4
	movs r0, #0
	strh r0, [r2]
_080AD5B4:
	ldr r0, [r4, #8]
	ands r0, r5
	cmp r0, #0
	bne _080AD5C8
_080AD5BC:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	ble _080AD5C8
	movs r0, #0
	strh r0, [r2]
_080AD5C8:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_080AD5CE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080AD5D4
sub_080AD5D4: @ 0x080AD5D4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AD5F0 @ =sub_080ACEC0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AD5F0: .4byte sub_080ACEC0

	thumb_func_start sub_080AD5F4
sub_080AD5F4: @ 0x080AD5F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AD618 @ =sub_080AD18C
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AD618: .4byte sub_080AD18C

	thumb_func_start sub_080AD61C
sub_080AD61C: @ 0x080AD61C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AD63C @ =sub_080AD3D0
	movs r1, #2
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AD644
	adds r1, r4, #0
	adds r1, #0x50
	ldr r2, _080AD640 @ =0xFFFFFEE0
	b _080AD64C
	.align 2, 0
_080AD63C: .4byte sub_080AD3D0
_080AD640: .4byte 0xFFFFFEE0
_080AD644:
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0x90
	lsls r2, r2, #1
_080AD64C:
	adds r0, r2, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AD66C
	ldr r0, _080AD668 @ =sub_080AD3D0
	b _080AD66E
	.align 2, 0
_080AD668: .4byte sub_080AD3D0
_080AD66C:
	ldr r0, _080AD678 @ =sub_080AD1D8
_080AD66E:
	str r0, [r4, #0x78]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AD678: .4byte sub_080AD1D8

	thumb_func_start CreateBrontoBurt
CreateBrontoBurt: @ 0x080AD67C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080AD6B0 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080AD6B4 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080AD6B8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080AD6C0
	.align 2, 0
_080AD6B0: .4byte ObjectMain
_080AD6B4: .4byte ObjectDestroy
_080AD6B8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080AD6C0:
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
	ble _080AD6E0
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	b _080AD6E8
_080AD6E0:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080AD6E8:
	str r0, [r5, #8]
	ldr r0, [r5, #0xc]
	movs r1, #1
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #0xc]
	subs r1, #9
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
	ldrb r0, [r6, #0xe]
	cmp r0, #5
	bhi _080AD750
	lsls r0, r0, #2
	ldr r1, _080AD734 @ =_080AD738
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080AD734: .4byte _080AD738
_080AD738: @ jump table
	.4byte _080AD750 @ case 0
	.4byte _080AD76E @ case 1
	.4byte _080AD78C @ case 2
	.4byte _080AD794 @ case 3
	.4byte _080AD79C @ case 4
	.4byte _080AD7A4 @ case 5
_080AD750:
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x44]
	cmp r1, r0
	ble _080AD766
	adds r0, r5, #0
	bl sub_080AEB68
	b _080AD7AA
_080AD766:
	adds r0, r5, #0
	bl sub_080AD8F0
	b _080AD7AA
_080AD76E:
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x44]
	cmp r1, r0
	ble _080AD784
	adds r0, r5, #0
	bl sub_080AEBD8
	b _080AD7AA
_080AD784:
	adds r0, r5, #0
	bl sub_080AEC34
	b _080AD7AA
_080AD78C:
	adds r0, r5, #0
	bl sub_080ADCA4
	b _080AD7AA
_080AD794:
	adds r0, r5, #0
	bl sub_080AE100
	b _080AD7AA
_080AD79C:
	adds r0, r5, #0
	bl sub_080AECA4
	b _080AD7AA
_080AD7A4:
	adds r0, r5, #0
	bl sub_080AED1C
_080AD7AA:
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

	thumb_func_start sub_080AD7C0
sub_080AD7C0: @ 0x080AD7C0
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #5
	bhi _080AD810
	lsls r0, r0, #2
	ldr r1, _080AD7F4 @ =_080AD7F8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080AD7F4: .4byte _080AD7F8
_080AD7F8: @ jump table
	.4byte _080AD810 @ case 0
	.4byte _080AD826 @ case 1
	.4byte _080AD83C @ case 2
	.4byte _080AD856 @ case 3
	.4byte _080AD85E @ case 4
	.4byte _080AD866 @ case 5
_080AD810:
	adds r0, r2, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r2, #0x44]
	ldr r0, [r0, #0x44]
	cmp r1, r0
	ble _080AD84E
	adds r0, r2, #0
	bl sub_080AEB68
	b _080AD86C
_080AD826:
	adds r0, r2, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r2, #0x44]
	ldr r0, [r0, #0x44]
	cmp r1, r0
	ble _080AD846
	adds r0, r2, #0
	bl sub_080AEBD8
	b _080AD86C
_080AD83C:
	adds r0, r2, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080AD84E
_080AD846:
	adds r0, r2, #0
	bl sub_080AEC34
	b _080AD86C
_080AD84E:
	adds r0, r2, #0
	bl sub_080AD8F0
	b _080AD86C
_080AD856:
	adds r0, r2, #0
	bl sub_080AE100
	b _080AD86C
_080AD85E:
	adds r0, r2, #0
	bl sub_080AECA4
	b _080AD86C
_080AD866:
	adds r0, r2, #0
	bl sub_080AED90
_080AD86C:
	pop {r0}
	bx r0

	thumb_func_start sub_080AD870
sub_080AD870: @ 0x080AD870
	push {r4, lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080AD890
	adds r0, r2, #0
	adds r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080AD8A0
	b _080AD89C
_080AD890:
	adds r0, r2, #0
	subs r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080AD8A0
_080AD89C:
	movs r0, #0
	strh r0, [r1]
_080AD8A0:
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080AD8AC
sub_080AD8AC: @ 0x080AD8AC
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	adds r3, r2, #0
	adds r3, #0x52
	ldrh r0, [r3]
	subs r0, #0x19
	strh r0, [r3]
	lsls r0, r0, #0x10
	ldr r1, _080AD8E0 @ =0xFD760000
	cmp r0, r1
	bge _080AD8CE
	ldr r0, _080AD8E4 @ =0x0000FD76
	strh r0, [r3]
_080AD8CE:
	ldrh r1, [r2, #4]
	movs r3, #4
	ldrsh r0, [r2, r3]
	cmp r0, #0x28
	ble _080AD8E8
	adds r0, r2, #0
	bl sub_080AD8F0
	b _080AD8EC
	.align 2, 0
_080AD8E0: .4byte 0xFD760000
_080AD8E4: .4byte 0x0000FD76
_080AD8E8:
	adds r0, r1, #1
	strh r0, [r2, #4]
_080AD8EC:
	pop {r0}
	bx r0

	thumb_func_start sub_080AD8F0
sub_080AD8F0: @ 0x080AD8F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldr r2, _080AD91C @ =sub_080AD958
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080AD920
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	b _080AD926
	.align 2, 0
_080AD91C: .4byte sub_080AD958
_080AD920:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
_080AD926:
	strh r0, [r1]
	adds r2, r1, #0
	adds r1, r4, #0
	adds r1, #0x52
	ldr r0, _080AD954 @ =0x0000FD76
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AD942
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080AD942:
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AD954: .4byte 0x0000FD76

	thumb_func_start sub_080AD958
sub_080AD958: @ 0x080AD958
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x19
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080AD9A0 @ =0x0000028A
	cmp r0, r2
	ble _080AD97A
	strh r2, [r1]
_080AD97A:
	ldrh r1, [r4, #4]
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0x28
	ble _080AD9FC
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _080AD9A4
	adds r0, r4, #0
	bl sub_080AEBC4
	b _080ADA00
	.align 2, 0
_080AD9A0: .4byte 0x0000028A
_080AD9A4:
	ldr r2, _080AD9C4 @ =sub_080AD8AC
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080AD9C8
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	b _080AD9CE
	.align 2, 0
_080AD9C4: .4byte sub_080AD8AC
_080AD9C8:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
_080AD9CE:
	strh r0, [r1]
	adds r2, r1, #0
	adds r1, r4, #0
	adds r1, #0x52
	ldr r0, _080AD9F8 @ =0x0000028A
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AD9EA
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080AD9EA:
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	b _080ADA00
	.align 2, 0
_080AD9F8: .4byte 0x0000028A
_080AD9FC:
	adds r0, r1, #1
	strh r0, [r4, #4]
_080ADA00:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ADA08
sub_080ADA08: @ 0x080ADA08
	push {lr}
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x19
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xfe
	lsls r2, r2, #7
	cmp r0, r2
	ble _080ADA2A
	strh r2, [r1]
_080ADA2A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ADA30
sub_080ADA30: @ 0x080ADA30
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x19
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080ADA74 @ =0xFD760000
	cmp r0, r1
	bge _080ADA52
	ldr r0, _080ADA78 @ =0x0000FD76
	strh r0, [r2]
_080ADA52:
	movs r1, #4
	ldrsh r0, [r4, r1]
	ldrh r1, [r4, #4]
	cmp r0, #0x14
	ble _080ADA86
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r0, #0x44]
	ldr r0, [r4, #0x44]
	cmp r1, r0
	ble _080ADA80
	ldr r0, _080ADA7C @ =sub_080ADA94
	b _080ADA82
	.align 2, 0
_080ADA74: .4byte 0xFD760000
_080ADA78: .4byte 0x0000FD76
_080ADA7C: .4byte sub_080ADA94
_080ADA80:
	ldr r0, _080ADA90 @ =sub_080ADAD8
_080ADA82:
	str r0, [r4, #0x78]
	ldrh r1, [r4, #4]
_080ADA86:
	adds r0, r1, #1
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ADA90: .4byte sub_080ADAD8

	thumb_func_start sub_080ADA94
sub_080ADA94: @ 0x080ADA94
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	adds r3, r2, #0
	adds r3, #0x52
	ldrh r0, [r3]
	subs r0, #0x20
	strh r0, [r3]
	lsls r0, r0, #0x10
	ldr r1, _080ADAC8 @ =0xFD760000
	cmp r0, r1
	bge _080ADAB6
	ldr r0, _080ADACC @ =0x0000FD76
	strh r0, [r3]
_080ADAB6:
	ldrh r1, [r2, #4]
	movs r3, #4
	ldrsh r0, [r2, r3]
	cmp r0, #0x28
	ble _080ADAD0
	adds r0, r2, #0
	bl sub_080AEC34
	b _080ADAD4
	.align 2, 0
_080ADAC8: .4byte 0xFD760000
_080ADACC: .4byte 0x0000FD76
_080ADAD0:
	adds r0, r1, #1
	strh r0, [r2, #4]
_080ADAD4:
	pop {r0}
	bx r0

	thumb_func_start sub_080ADAD8
sub_080ADAD8: @ 0x080ADAD8
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	adds r3, r2, #0
	adds r3, #0x52
	ldrh r0, [r3]
	subs r0, #0xd
	strh r0, [r3]
	lsls r0, r0, #0x10
	ldr r1, _080ADB0C @ =0xFD760000
	cmp r0, r1
	bge _080ADAFA
	ldr r0, _080ADB10 @ =0x0000FD76
	strh r0, [r3]
_080ADAFA:
	ldrh r1, [r2, #4]
	movs r3, #4
	ldrsh r0, [r2, r3]
	cmp r0, #0x28
	ble _080ADB14
	adds r0, r2, #0
	bl sub_080AEC34
	b _080ADB18
	.align 2, 0
_080ADB0C: .4byte 0xFD760000
_080ADB10: .4byte 0x0000FD76
_080ADB14:
	adds r0, r1, #1
	strh r0, [r2, #4]
_080ADB18:
	pop {r0}
	bx r0

	thumb_func_start sub_080ADB1C
sub_080ADB1C: @ 0x080ADB1C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x19
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080ADB60 @ =0x0000028A
	cmp r0, r2
	ble _080ADB3E
	strh r2, [r1]
_080ADB3E:
	movs r1, #4
	ldrsh r0, [r4, r1]
	ldrh r1, [r4, #4]
	cmp r0, #0x14
	ble _080ADB6E
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r0, #0x44]
	ldr r0, [r4, #0x44]
	cmp r1, r0
	ble _080ADB68
	ldr r0, _080ADB64 @ =sub_080ADC10
	b _080ADB6A
	.align 2, 0
_080ADB60: .4byte 0x0000028A
_080ADB64: .4byte sub_080ADC10
_080ADB68:
	ldr r0, _080ADB78 @ =sub_080ADB7C
_080ADB6A:
	str r0, [r4, #0x78]
	ldrh r1, [r4, #4]
_080ADB6E:
	adds r0, r1, #1
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ADB78: .4byte sub_080ADB7C

	thumb_func_start sub_080ADB7C
sub_080ADB7C: @ 0x080ADB7C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080ADBC8 @ =0x0000028A
	cmp r0, r2
	ble _080ADB9E
	strh r2, [r1]
_080ADB9E:
	ldrh r1, [r4, #4]
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0x28
	ble _080ADC04
	ldr r2, _080ADBCC @ =sub_080ADA30
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080ADBD0
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	b _080ADBD6
	.align 2, 0
_080ADBC8: .4byte 0x0000028A
_080ADBCC: .4byte sub_080ADA30
_080ADBD0:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
_080ADBD6:
	strh r0, [r1]
	adds r2, r1, #0
	adds r1, r4, #0
	adds r1, #0x52
	ldr r0, _080ADC00 @ =0x0000028A
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080ADBF2
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080ADBF2:
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	b _080ADC08
	.align 2, 0
_080ADC00: .4byte 0x0000028A
_080ADC04:
	adds r0, r1, #1
	strh r0, [r4, #4]
_080ADC08:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ADC10
sub_080ADC10: @ 0x080ADC10
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0xd
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080ADC5C @ =0x0000028A
	cmp r0, r2
	ble _080ADC32
	strh r2, [r1]
_080ADC32:
	ldrh r1, [r4, #4]
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0x28
	ble _080ADC98
	ldr r2, _080ADC60 @ =sub_080ADA30
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080ADC64
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	b _080ADC6A
	.align 2, 0
_080ADC5C: .4byte 0x0000028A
_080ADC60: .4byte sub_080ADA30
_080ADC64:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
_080ADC6A:
	strh r0, [r1]
	adds r2, r1, #0
	adds r1, r4, #0
	adds r1, #0x52
	ldr r0, _080ADC94 @ =0x0000028A
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080ADC86
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080ADC86:
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	b _080ADC9C
	.align 2, 0
_080ADC94: .4byte 0x0000028A
_080ADC98:
	adds r0, r1, #1
	strh r0, [r4, #4]
_080ADC9C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ADCA4
sub_080ADCA4: @ 0x080ADCA4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r2, _080ADCD8 @ =sub_080ADD74
	movs r1, #3
	bl ObjectSetFunc
	adds r0, r5, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _080ADD6C
	adds r1, r5, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r3, [r5, #0x44]
	ldr r0, [r0, #0x44]
	subs r2, r3, r0
	adds r6, r1, #0
	cmp r2, #0
	blt _080ADCE0
	ldr r0, _080ADCDC @ =0x00001FFF
	cmp r2, r0
	ble _080ADCE8
	b _080ADCF4
	.align 2, 0
_080ADCD8: .4byte sub_080ADD74
_080ADCDC: .4byte 0x00001FFF
_080ADCE0:
	subs r1, r0, r3
	ldr r0, _080ADCF0 @ =0x00001FFF
	cmp r1, r0
	bgt _080ADCF4
_080ADCE8:
	ldr r0, [r6]
	ldr r0, [r0, #0x40]
	str r0, [r5, #0x40]
	b _080ADD1E
	.align 2, 0
_080ADCF0: .4byte 0x00001FFF
_080ADCF4:
	ldr r0, [r6]
	ldr r2, [r0, #0x40]
	str r2, [r5, #0x40]
	ldr r4, _080ADD50 @ =gUnk_08353A3C
	ldr r3, _080ADD54 @ =gRngVal
	ldr r1, [r3]
	ldr r0, _080ADD58 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080ADD5C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	adds r2, r2, r0
	str r2, [r5, #0x40]
_080ADD1E:
	ldr r1, _080ADD60 @ =gCurLevelInfo
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r5, #0x44]
	ldr r2, [r5, #8]
	movs r0, #0xa0
	lsls r0, r0, #1
	orrs r2, r0
	str r2, [r5, #8]
	ldr r0, [r6]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080ADD64
	movs r0, #1
	orrs r2, r0
	b _080ADD6A
	.align 2, 0
_080ADD50: .4byte gUnk_08353A3C
_080ADD54: .4byte gRngVal
_080ADD58: .4byte 0x00196225
_080ADD5C: .4byte 0x3C6EF35F
_080ADD60: .4byte gCurLevelInfo
_080ADD64:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080ADD6A:
	str r2, [r5, #8]
_080ADD6C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ADD74
sub_080ADD74: @ 0x080ADD74
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x25
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080ADD92
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r2]
_080ADD92:
	ldrh r1, [r4, #4]
	movs r0, #0x1f
	ands r0, r1
	adds r5, r4, #0
	adds r5, #0xac
	cmp r0, #0x1f
	bne _080ADDA8
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r5]
_080ADDA8:
	ldr r0, [r5]
	ldr r1, [r4, #0x44]
	ldr r0, [r0, #0x44]
	subs r2, r1, r0
	cmp r2, #0
	blt _080ADDC0
	ldr r0, _080ADDBC @ =0x00000FFF
	cmp r2, r0
	ble _080ADDC8
	b _080ADDD4
	.align 2, 0
_080ADDBC: .4byte 0x00000FFF
_080ADDC0:
	subs r1, r0, r1
	ldr r0, _080ADDD0 @ =0x00000FFF
	cmp r1, r0
	bgt _080ADDD4
_080ADDC8:
	adds r0, r4, #0
	bl sub_080AEC90
	b _080ADDDA
	.align 2, 0
_080ADDD0: .4byte 0x00000FFF
_080ADDD4:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_080ADDDA:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080ADDE0
sub_080ADDE0: @ 0x080ADDE0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080ADDF8
	b _080ADF9C
_080ADDF8:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	mov ip, r0
	adds r3, r4, #0
	adds r3, #0x9f
	ldr r7, _080ADEB8 @ =gUnk_08353AC4
	adds r5, r4, #0
	adds r5, #0x50
	adds r6, r4, #0
	adds r6, #0x52
	cmp r1, #0
	bne _080ADEE6
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
	bne _080ADE2C
	subs r0, r1, #1
	strb r0, [r3]
_080ADE2C:
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
	beq _080ADE54
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
_080ADE54:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080ADEBC
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
	movs r6, #0
	ldrsh r1, [r1, r6]
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r1, r0
	beq _080ADE8C
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080ADE8C
	rsbs r0, r2, #0
	strh r0, [r5]
_080ADE8C:
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
	movs r6, #2
	ldrsh r1, [r1, r6]
	movs r6, #2
	ldrsh r0, [r0, r6]
	adds r6, r4, #0
	adds r6, #0x52
	cmp r1, r0
	beq _080ADEE6
	strh r2, [r6]
	b _080ADEE6
	.align 2, 0
_080ADEB8: .4byte gUnk_08353AC4
_080ADEBC:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	strh r0, [r6]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r2, [r0]
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080ADF04
	rsbs r0, r2, #0
	strh r0, [r5]
_080ADEE6:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080ADF04
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r5]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r5]
	b _080ADF16
_080ADF04:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrh r0, [r1, #4]
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
_080ADF16:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #6]
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r6]
	mov r1, ip
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
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
	beq _080ADF48
	b _080AE0FA
_080ADF48:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080ADF52
	b _080AE0FA
_080ADF52:
	strh r0, [r6]
	ldr r2, _080ADF70 @ =sub_080ADB1C
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080ADF74
	movs r0, #0x80
	lsls r0, r0, #1
	b _080ADF76
	.align 2, 0
_080ADF70: .4byte sub_080ADB1C
_080ADF74:
	movs r0, #0xc0
_080ADF76:
	strh r0, [r5]
	ldr r0, _080ADF98 @ =0x0000FD76
	strh r0, [r6]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080ADF8C
	ldrh r0, [r5]
	rsbs r0, r0, #0
	strh r0, [r5]
_080ADF8C:
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	b _080AE0FA
	.align 2, 0
_080ADF98: .4byte 0x0000FD76
_080ADF9C:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	mov ip, r0
	adds r3, r4, #0
	adds r3, #0x9f
	adds r5, r4, #0
	adds r5, #0x50
	adds r6, r4, #0
	adds r6, #0x52
	ldr r7, _080AE05C @ =gUnk_08353A40
	cmp r1, #0
	bne _080AE08A
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
	bne _080ADFD0
	subs r0, r1, #1
	strb r0, [r3]
_080ADFD0:
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
	beq _080ADFF8
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
_080ADFF8:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080AE060
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
	movs r6, #0
	ldrsh r1, [r1, r6]
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r1, r0
	beq _080AE030
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AE030
	rsbs r0, r2, #0
	strh r0, [r5]
_080AE030:
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
	movs r6, #2
	ldrsh r1, [r1, r6]
	movs r6, #2
	ldrsh r0, [r0, r6]
	adds r6, r4, #0
	adds r6, #0x52
	cmp r1, r0
	beq _080AE08A
	strh r2, [r6]
	b _080AE08A
	.align 2, 0
_080AE05C: .4byte gUnk_08353A40
_080AE060:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	strh r0, [r6]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r2, [r0]
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AE0A8
	rsbs r0, r2, #0
	strh r0, [r5]
_080AE08A:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AE0A8
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r5]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r5]
	b _080AE0BA
_080AE0A8:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrh r0, [r1, #4]
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
_080AE0BA:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #6]
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r6]
	mov r1, ip
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
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
	bne _080AE0FA
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080AE0FA
	strh r0, [r6]
	adds r0, r4, #0
	bl sub_080AD8F0
_080AE0FA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080AE100
sub_080AE100: @ 0x080AE100
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AE128 @ =sub_080AE1AC
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080AE12C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080AE134
	.align 2, 0
_080AE128: .4byte sub_080AE1AC
_080AE12C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080AE134:
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r2, [r4, #0x44]
	ldr r0, [r0, #0x44]
	adds r3, r1, #0
	cmp r2, r0
	ble _080AE152
	subs r1, #0x5a
	movs r0, #0xb5
	strh r0, [r1]
	adds r1, #0x33
	movs r0, #4
	b _080AE15E
_080AE152:
	adds r1, r4, #0
	adds r1, #0x52
	ldr r0, _080AE17C @ =0x0000FF4B
	strh r0, [r1]
	adds r1, #0x33
	movs r0, #8
_080AE15E:
	strb r0, [r1]
	adds r2, r1, #0
	ldr r0, [r3]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	bge _080AE180
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xb5
	strh r0, [r1]
	ldrb r1, [r2]
	movs r0, #2
	b _080AE18C
	.align 2, 0
_080AE17C: .4byte 0x0000FF4B
_080AE180:
	adds r1, r4, #0
	adds r1, #0x50
	ldr r0, _080AE1A4 @ =0x0000FF4B
	strh r0, [r1]
	ldrb r1, [r2]
	movs r0, #1
_080AE18C:
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	ldr r1, _080AE1A8 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AE1A4: .4byte 0x0000FF4B
_080AE1A8: .4byte 0xFFFFFEFF

	thumb_func_start sub_080AE1AC
sub_080AE1AC: @ 0x080AE1AC
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AE1C4
	b _080AE654
_080AE1C4:
	ldr r0, _080AE204 @ =gUnk_082D88B8
	adds r1, r2, #0
	adds r1, #0x57
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r1, r0
	movs r0, #0xc0
	lsls r0, r0, #0x17
	cmp r1, r0
	beq _080AE2D2
	cmp r1, r0
	bhi _080AE21A
	movs r0, #0xc0
	lsls r0, r0, #0x16
	cmp r1, r0
	beq _080AE25A
	cmp r1, r0
	bhi _080AE208
	movs r0, #0x80
	lsls r0, r0, #0x15
	cmp r1, r0
	beq _080AE25A
	movs r0, #0x80
	lsls r0, r0, #0x16
	cmp r1, r0
	beq _080AE25A
	b _080AE4A0
	.align 2, 0
_080AE204: .4byte gUnk_082D88B8
_080AE208:
	movs r0, #0x80
	lsls r0, r0, #0x17
	cmp r1, r0
	beq _080AE2D2
	movs r0, #0xa0
	lsls r0, r0, #0x17
	cmp r1, r0
	beq _080AE2D2
	b _080AE4A0
_080AE21A:
	movs r0, #0x90
	lsls r0, r0, #0x18
	cmp r1, r0
	bne _080AE224
	b _080AE3F0
_080AE224:
	cmp r1, r0
	bhi _080AE23E
	movs r0, #0xe0
	lsls r0, r0, #0x17
	cmp r1, r0
	bne _080AE232
	b _080AE3F0
_080AE232:
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bne _080AE23C
	b _080AE3F0
_080AE23C:
	b _080AE4A0
_080AE23E:
	movs r0, #0xb0
	lsls r0, r0, #0x18
	cmp r1, r0
	beq _080AE344
	cmp r1, r0
	bhi _080AE250
	movs r0, #0xa0
	lsls r0, r0, #0x18
	b _080AE254
_080AE250:
	movs r0, #0xc0
	lsls r0, r0, #0x18
_080AE254:
	cmp r1, r0
	beq _080AE344
	b _080AE4A0
_080AE25A:
	movs r0, #0x14
	strh r0, [r2, #4]
	movs r0, #0x85
	adds r0, r0, r2
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _080AE2CE
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _080AE2B0
	adds r3, r2, #0
	adds r3, #0x87
	ldrb r0, [r3]
	movs r1, #0xe2
	cmp r0, #1
	beq _080AE28C
	movs r1, #0xb5
_080AE28C:
	rsbs r0, r1, #0
	adds r1, r2, #0
	adds r1, #0x50
	strh r0, [r1]
	ldrb r0, [r3]
	movs r1, #0xe2
	cmp r0, #1
	beq _080AE29E
	movs r1, #0xb5
_080AE29E:
	adds r0, r2, #0
	adds r0, #0x52
	strh r1, [r0]
	ldr r0, [r2, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r2, #8]
	movs r0, #5
	b _080AE464
_080AE2B0:
	adds r0, r2, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, #0x37
	ldrb r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #1
	cmp r0, #1
	beq _080AE2C4
	subs r1, #0x40
_080AE2C4:
	adds r0, r2, #0
	adds r0, #0x52
	strh r1, [r0]
	movs r0, #4
	b _080AE440
_080AE2CE:
	movs r0, #8
	b _080AE3BE
_080AE2D2:
	movs r0, #0x14
	strh r0, [r2, #4]
	movs r1, #0x85
	adds r1, r1, r2
	mov ip, r1
	ldrb r1, [r1]
	movs r4, #1
	adds r3, r4, #0
	ands r3, r1
	cmp r3, #0
	beq _080AE340
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _080AE322
	adds r1, r2, #0
	adds r1, #0x87
	ldrb r0, [r1]
	movs r3, #0xe2
	cmp r0, #1
	beq _080AE302
	movs r3, #0xb5
_080AE302:
	adds r0, r2, #0
	adds r0, #0x50
	strh r3, [r0]
	ldrb r0, [r1]
	movs r1, #0xe2
	cmp r0, #1
	beq _080AE312
	movs r1, #0xb5
_080AE312:
	adds r0, r2, #0
	adds r0, #0x52
	strh r1, [r0]
	ldr r0, [r2, #8]
	eors r0, r4
	str r0, [r2, #8]
	movs r0, #6
	b _080AE440
_080AE322:
	adds r0, r2, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, #0x37
	ldrb r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #1
	cmp r0, #1
	beq _080AE336
	subs r1, #0x40
_080AE336:
	adds r0, r2, #0
	adds r0, #0x52
	strh r1, [r0]
	movs r0, #4
	b _080AE464
_080AE340:
	movs r0, #8
	b _080AE46C
_080AE344:
	movs r0, #0x14
	strh r0, [r2, #4]
	movs r0, #0x85
	adds r0, r0, r2
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _080AE3BC
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _080AE39C
	adds r3, r2, #0
	adds r3, #0x87
	ldrb r0, [r3]
	movs r1, #0xe2
	cmp r0, #1
	beq _080AE376
	movs r1, #0xb5
_080AE376:
	rsbs r0, r1, #0
	adds r1, r2, #0
	adds r1, #0x50
	strh r0, [r1]
	ldrb r0, [r3]
	movs r1, #0xe2
	cmp r0, #1
	beq _080AE388
	movs r1, #0xb5
_080AE388:
	rsbs r0, r1, #0
	adds r1, r2, #0
	adds r1, #0x52
	strh r0, [r1]
	ldr r0, [r2, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r2, #8]
	movs r0, #9
	b _080AE464
_080AE39C:
	adds r0, r2, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, #0x37
	ldrb r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #1
	cmp r0, #1
	beq _080AE3B0
	subs r1, #0x40
_080AE3B0:
	rsbs r0, r1, #0
	adds r1, r2, #0
	adds r1, #0x52
	strh r0, [r1]
	movs r0, #8
	b _080AE440
_080AE3BC:
	movs r0, #4
_080AE3BE:
	ands r0, r1
	cmp r0, #0
	bne _080AE3C6
	b _080AE654
_080AE3C6:
	adds r0, r2, #0
	adds r0, #0x87
	ldrb r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #1
	cmp r0, #1
	beq _080AE3D6
	subs r1, #0x40
_080AE3D6:
	rsbs r1, r1, #0
	adds r0, r2, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, #2
	strh r3, [r0]
	movs r1, #1
	mov r0, ip
	strb r1, [r0]
	ldr r0, [r2, #8]
	orrs r0, r1
	str r0, [r2, #8]
	b _080AE654
_080AE3F0:
	movs r0, #0x14
	strh r0, [r2, #4]
	movs r1, #0x85
	adds r1, r1, r2
	mov ip, r1
	ldrb r1, [r1]
	movs r4, #1
	adds r3, r4, #0
	ands r3, r1
	cmp r3, #0
	beq _080AE46A
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _080AE446
	adds r1, r2, #0
	adds r1, #0x87
	ldrb r0, [r1]
	movs r3, #0xe2
	cmp r0, #1
	beq _080AE420
	movs r3, #0xb5
_080AE420:
	adds r0, r2, #0
	adds r0, #0x50
	strh r3, [r0]
	ldrb r0, [r1]
	movs r1, #0xe2
	cmp r0, #1
	beq _080AE430
	movs r1, #0xb5
_080AE430:
	rsbs r0, r1, #0
	adds r1, r2, #0
	adds r1, #0x52
	strh r0, [r1]
	ldr r0, [r2, #8]
	eors r0, r4
	str r0, [r2, #8]
	movs r0, #0xa
_080AE440:
	mov r3, ip
	strb r0, [r3]
	b _080AE654
_080AE446:
	adds r0, r2, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, #0x37
	ldrb r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #1
	cmp r0, #1
	beq _080AE45A
	subs r1, #0x40
_080AE45A:
	rsbs r0, r1, #0
	adds r1, r2, #0
	adds r1, #0x52
	strh r0, [r1]
	movs r0, #8
_080AE464:
	mov r1, ip
	strb r0, [r1]
	b _080AE654
_080AE46A:
	movs r0, #4
_080AE46C:
	ands r0, r1
	cmp r0, #0
	bne _080AE474
	b _080AE654
_080AE474:
	adds r0, r2, #0
	adds r0, #0x87
	ldrb r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #1
	cmp r0, #1
	beq _080AE484
	subs r1, #0x40
_080AE484:
	adds r0, r2, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, #2
	strh r3, [r0]
	movs r0, #2
	mov r3, ip
	strb r0, [r3]
	ldr r0, [r2, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	b _080AE654
_080AE4A0:
	movs r0, #0x14
	strh r0, [r2, #4]
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080AE564
	adds r3, r2, #0
	adds r3, #0x85
	ldrb r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080AE510
	ldr r0, [r2, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AE4E0
	adds r0, r2, #0
	adds r0, #0x50
	ldrh r1, [r0]
	rsbs r1, r1, #0
	b _080AE634
_080AE4E0:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080AE4F4
	adds r0, r2, #0
	adds r0, #0x50
	ldrh r1, [r0]
	rsbs r1, r1, #0
	strh r1, [r0]
	b _080AE5BE
_080AE4F4:
	adds r0, r2, #0
	adds r0, #0x87
	ldrb r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #1
	cmp r0, #1
	beq _080AE504
	subs r1, #0x40
_080AE504:
	adds r0, r2, #0
	adds r0, #0x50
	strh r1, [r0]
	movs r0, #2
	strb r0, [r3]
	b _080AE654
_080AE510:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080AE51A
	b _080AE654
_080AE51A:
	ldr r0, [r2, #8]
	orrs r0, r4
	str r0, [r2, #8]
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AE534
	adds r0, r2, #0
	adds r0, #0x50
	ldrh r1, [r0]
	rsbs r1, r1, #0
	b _080AE612
_080AE534:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080AE548
	adds r0, r2, #0
	adds r0, #0x50
	ldrh r1, [r0]
	rsbs r1, r1, #0
	strh r1, [r0]
	b _080AE59A
_080AE548:
	adds r0, r2, #0
	adds r0, #0x87
	ldrb r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #1
	cmp r0, #1
	beq _080AE558
	subs r1, #0x40
_080AE558:
	rsbs r1, r1, #0
	adds r0, r2, #0
	adds r0, #0x50
	strh r1, [r0]
	strb r4, [r3]
	b _080AE654
_080AE564:
	movs r5, #8
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080AE5E0
	adds r3, r2, #0
	adds r3, #0x85
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AE654
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080AE5A0
	adds r0, r2, #0
	adds r0, #0x87
	ldrb r0, [r0]
	movs r1, #0xe2
	cmp r0, #1
	beq _080AE592
	movs r1, #0xb5
_080AE592:
	rsbs r0, r1, #0
	adds r1, r2, #0
	adds r1, #0x52
	strh r0, [r1]
_080AE59A:
	movs r0, #9
	strb r0, [r3]
	b _080AE654
_080AE5A0:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080AE5C4
	adds r0, r2, #0
	adds r0, #0x87
	ldrb r0, [r0]
	movs r1, #0xe2
	cmp r0, #1
	beq _080AE5B6
	movs r1, #0xb5
_080AE5B6:
	rsbs r0, r1, #0
	adds r1, r2, #0
	adds r1, #0x52
	strh r0, [r1]
_080AE5BE:
	movs r0, #0xa
	strb r0, [r3]
	b _080AE654
_080AE5C4:
	adds r0, r2, #0
	adds r0, #0x87
	ldrb r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #1
	cmp r0, #1
	beq _080AE5D4
	subs r1, #0x40
_080AE5D4:
	rsbs r0, r1, #0
	adds r1, r2, #0
	adds r1, #0x52
	strh r0, [r1]
	strb r5, [r3]
	b _080AE654
_080AE5E0:
	movs r6, #4
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080AE654
	adds r3, r2, #0
	adds r3, #0x85
	ldrb r1, [r3]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080AE654
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080AE61A
	adds r0, r2, #0
	adds r0, #0x87
	ldrb r0, [r0]
	movs r1, #0xe2
	cmp r0, #1
	beq _080AE60E
	movs r1, #0xb5
_080AE60E:
	adds r0, r2, #0
	adds r0, #0x52
_080AE612:
	strh r1, [r0]
	movs r0, #5
	strb r0, [r3]
	b _080AE654
_080AE61A:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080AE63C
	adds r0, r2, #0
	adds r0, #0x87
	ldrb r0, [r0]
	movs r1, #0xe2
	cmp r0, #1
	beq _080AE630
	movs r1, #0xb5
_080AE630:
	adds r0, r2, #0
	adds r0, #0x52
_080AE634:
	strh r1, [r0]
	movs r0, #6
	strb r0, [r3]
	b _080AE654
_080AE63C:
	adds r0, r2, #0
	adds r0, #0x87
	ldrb r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #1
	cmp r0, #1
	beq _080AE64C
	subs r1, #0x40
_080AE64C:
	adds r0, r2, #0
	adds r0, #0x52
	strh r1, [r0]
	strb r6, [r3]
_080AE654:
	ldrh r1, [r2, #4]
	movs r3, #4
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _080AE66A
	subs r0, r1, #1
	strh r0, [r2, #4]
	adds r1, r2, #0
	adds r1, #0x83
	movs r0, #1
	b _080AE670
_080AE66A:
	adds r1, r2, #0
	adds r1, #0x83
	movs r0, #2
_080AE670:
	strb r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080AE678
sub_080AE678: @ 0x080AE678
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	adds r4, r5, #0
	adds r4, #0x9e
	ldrb r0, [r4]
	adds r0, #1
	movs r6, #0
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _080AE6BC
	adds r0, r5, #0
	bl sub_0803D368
	adds r2, r5, #0
	adds r2, #0xac
	str r0, [r2]
	strb r6, [r4]
	ldr r0, [r2]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa0
	strh r0, [r1]
	ldr r0, [r2]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	adds r1, #2
	strh r0, [r1]
_080AE6BC:
	ldr r4, [r5, #0x44]
	ldr r2, _080AE6EC @ =0xFFFFF000
	ands r4, r2
	adds r1, r5, #0
	adds r1, #0xa2
	movs r3, #0
	ldrsh r0, [r1, r3]
	lsls r3, r0, #8
	ands r3, r2
	adds r7, r1, #0
	cmp r4, r3
	ble _080AE6F0
	subs r1, #0x50
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	ble _080AE736
	strh r2, [r1]
	b _080AE736
	.align 2, 0
_080AE6EC: .4byte 0xFFFFF000
_080AE6F0:
	cmp r4, r3
	bge _080AE710
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080AE70C @ =0xFFFFFF00
	cmp r0, r2
	bge _080AE736
	strh r2, [r1]
	b _080AE736
	.align 2, 0
_080AE70C: .4byte 0xFFFFFF00
_080AE710:
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080AE72A
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080AE736
	b _080AE734
_080AE72A:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080AE736
_080AE734:
	strh r6, [r1]
_080AE736:
	ldr r4, [r5, #0x40]
	ldr r0, _080AE758 @ =0xFFFFF000
	ands r4, r0
	adds r1, r5, #0
	adds r1, #0xa0
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r3, r1, #8
	ands r3, r0
	cmp r4, r3
	bge _080AE75C
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	b _080AE794
	.align 2, 0
_080AE758: .4byte 0xFFFFF000
_080AE75C:
	cmp r4, r3
	ble _080AE7B8
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	beq _080AE794
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080AE790 @ =0xFFFFFF00
	cmp r0, r2
	blt _080AE78A
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	ble _080AE7E0
_080AE78A:
	strh r2, [r1]
	b _080AE7E0
	.align 2, 0
_080AE790: .4byte 0xFFFFFF00
_080AE794:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080AE78A
	ldr r2, _080AE7B4 @ =0xFFFFFF00
	cmp r0, r2
	bge _080AE7E0
	b _080AE78A
	.align 2, 0
_080AE7B4: .4byte 0xFFFFFF00
_080AE7B8:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080AE7D2
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080AE7E0
	b _080AE7DC
_080AE7D2:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080AE7E0
_080AE7DC:
	movs r0, #0
	strh r0, [r1]
_080AE7E0:
	ldr r2, [r5, #0x44]
	movs r1, #0xf0
	lsls r1, r1, #4
	adds r0, r2, r1
	asrs r0, r0, #8
	movs r3, #0
	ldrsh r1, [r7, r3]
	cmp r0, r1
	bge _080AE7FA
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #3
	b _080AE816
_080AE7FA:
	ldr r3, _080AE80C @ =0xFFFFF100
	adds r0, r2, r3
	asrs r0, r0, #8
	cmp r0, r1
	ble _080AE810
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #1
	b _080AE816
	.align 2, 0
_080AE80C: .4byte 0xFFFFF100
_080AE810:
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #2
_080AE816:
	strb r0, [r1]
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _080AE82C
	adds r0, r5, #0
	bl sub_080AECC4
_080AE82C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AE834
sub_080AE834: @ 0x080AE834
	push {lr}
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x19
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xfe
	lsls r2, r2, #7
	cmp r0, r2
	ble _080AE856
	strh r2, [r1]
_080AE856:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AE85C
sub_080AE85C: @ 0x080AE85C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AE8F4 @ =sub_080AE910
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ldr r1, _080AE8F8 @ =gUnk_02020EE0
	ldr r0, _080AE8FC @ =gUnk_0203AD3C
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
	bne _080AE8EE
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AE8AE
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080AE8EE
_080AE8AE:
	ldr r1, _080AE900 @ =gUnk_08D60FA4
	ldr r4, _080AE904 @ =gSongTable
	ldr r2, _080AE908 @ =0x000009C4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080AE8D4
	movs r1, #0x9c
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080AE8EE
_080AE8D4:
	cmp r3, #0
	beq _080AE8E6
	ldr r0, _080AE90C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080AE8EE
_080AE8E6:
	movs r0, #0x9c
	lsls r0, r0, #1
	bl m4aSongNumStart
_080AE8EE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AE8F4: .4byte sub_080AE910
_080AE8F8: .4byte gUnk_02020EE0
_080AE8FC: .4byte gUnk_0203AD3C
_080AE900: .4byte gUnk_08D60FA4
_080AE904: .4byte gSongTable
_080AE908: .4byte 0x000009C4
_080AE90C: .4byte gUnk_0203AD10

	thumb_func_start sub_080AE910
sub_080AE910: @ 0x080AE910
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	mov r0, ip
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AE92A
	b _080AEA2A
_080AE92A:
	mov r0, ip
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r7, r0, #0
	mov r3, ip
	adds r3, #0x9f
	ldr r6, _080AE9E8 @ =gUnk_08353BB4
	mov r4, ip
	adds r4, #0x50
	mov r5, ip
	adds r5, #0x52
	cmp r1, #0
	bne _080AEA1A
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080AE95E
	subs r0, r1, #1
	strb r0, [r3]
_080AE95E:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r7]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080AE984
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080AE984:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080AE9EC
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r1, [r1, r5]
	movs r5, #0
	ldrsh r0, [r0, r5]
	cmp r1, r0
	beq _080AE9BE
	strh r2, [r4]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AE9BE
	rsbs r0, r2, #0
	strh r0, [r4]
_080AE9BE:
	ldrb r2, [r3]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r1, #2]
	movs r5, #2
	ldrsh r1, [r1, r5]
	movs r5, #2
	ldrsh r0, [r0, r5]
	mov r5, ip
	adds r5, #0x52
	cmp r1, r0
	beq _080AEA1A
	strh r2, [r5]
	b _080AEA1A
	.align 2, 0
_080AE9E8: .4byte gUnk_08353BB4
_080AE9EC:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	strh r0, [r5]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r0]
	strh r2, [r4]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080AEA16
	b _080AEB38
_080AEA16:
	rsbs r0, r2, #0
	strh r0, [r4]
_080AEA1A:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AEA28
	b _080AEB24
_080AEA28:
	b _080AEB38
_080AEA2A:
	mov r0, ip
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r7, r0, #0
	mov r3, ip
	adds r3, #0x9f
	mov r4, ip
	adds r4, #0x50
	mov r5, ip
	adds r5, #0x52
	ldr r6, _080AEAE8 @ =gUnk_08353B48
	cmp r1, #0
	bne _080AEB18
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080AEA5E
	subs r0, r1, #1
	strb r0, [r3]
_080AEA5E:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r7]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080AEA84
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080AEA84:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080AEAEC
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r1, [r1, r5]
	movs r5, #0
	ldrsh r0, [r0, r5]
	cmp r1, r0
	beq _080AEABE
	strh r2, [r4]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AEABE
	rsbs r0, r2, #0
	strh r0, [r4]
_080AEABE:
	ldrb r2, [r3]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r1, #2]
	movs r5, #2
	ldrsh r1, [r1, r5]
	movs r5, #2
	ldrsh r0, [r0, r5]
	mov r5, ip
	adds r5, #0x52
	cmp r1, r0
	beq _080AEB18
	strh r2, [r5]
	b _080AEB18
	.align 2, 0
_080AEAE8: .4byte gUnk_08353B48
_080AEAEC:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	strh r0, [r5]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r0]
	strh r2, [r4]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AEB38
	rsbs r0, r2, #0
	strh r0, [r4]
_080AEB18:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AEB38
_080AEB24:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r4]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r4]
	b _080AEB4A
_080AEB38:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
_080AEB4A:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
	ldrb r0, [r7]
	subs r0, #1
	strb r0, [r7]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080AEB68
sub_080AEB68: @ 0x080AEB68
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AEB88 @ =sub_080AD8AC
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080AEB8C
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	b _080AEB92
	.align 2, 0
_080AEB88: .4byte sub_080AD8AC
_080AEB8C:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
_080AEB92:
	strh r0, [r1]
	adds r2, r1, #0
	adds r1, r4, #0
	adds r1, #0x52
	ldr r0, _080AEBC0 @ =0x0000028A
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AEBAE
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080AEBAE:
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AEBC0: .4byte 0x0000028A

	thumb_func_start sub_080AEBC4
sub_080AEBC4: @ 0x080AEBC4
	push {lr}
	ldr r2, _080AEBD4 @ =sub_080ADA08
	movs r1, #1
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080AEBD4: .4byte sub_080ADA08

	thumb_func_start sub_080AEBD8
sub_080AEBD8: @ 0x080AEBD8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AEBF8 @ =sub_080ADA30
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080AEBFC
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	b _080AEC02
	.align 2, 0
_080AEBF8: .4byte sub_080ADA30
_080AEBFC:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
_080AEC02:
	strh r0, [r1]
	adds r2, r1, #0
	adds r1, r4, #0
	adds r1, #0x52
	ldr r0, _080AEC30 @ =0x0000028A
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AEC1E
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080AEC1E:
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AEC30: .4byte 0x0000028A

	thumb_func_start sub_080AEC34
sub_080AEC34: @ 0x080AEC34
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AEC54 @ =sub_080ADB1C
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080AEC58
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	b _080AEC5E
	.align 2, 0
_080AEC54: .4byte sub_080ADB1C
_080AEC58:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
_080AEC5E:
	strh r0, [r1]
	adds r2, r1, #0
	adds r1, r4, #0
	adds r1, #0x52
	ldr r0, _080AEC8C @ =0x0000FD76
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AEC7A
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080AEC7A:
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AEC8C: .4byte 0x0000FD76

	thumb_func_start sub_080AEC90
sub_080AEC90: @ 0x080AEC90
	push {lr}
	ldr r2, _080AECA0 @ =sub_080ADDE0
	movs r1, #2
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080AECA0: .4byte sub_080ADDE0

	thumb_func_start sub_080AECA4
sub_080AECA4: @ 0x080AECA4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AECC0 @ =sub_080AE678
	movs r1, #1
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AECC0: .4byte sub_080AE678

	thumb_func_start sub_080AECC4
sub_080AECC4: @ 0x080AECC4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AECF0 @ =sub_080AE834
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x66
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080AECF4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080AECFC
	.align 2, 0
_080AECF0: .4byte sub_080AE834
_080AECF4:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080AECFC:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080AED16
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080AED16:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080AED1C
sub_080AED1C: @ 0x080AED1C
	push {lr}
	ldr r2, _080AED2C @ =sub_080AED30
	movs r1, #0
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080AED2C: .4byte sub_080AED30

	thumb_func_start sub_080AED30
sub_080AED30: @ 0x080AED30
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldrh r1, [r4, #4]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0x3f
	bne _080AED52
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
_080AED52:
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r3, [r4, #0x40]
	ldr r1, [r0, #0x40]
	subs r2, r3, r1
	cmp r2, #0
	blt _080AED70
	ldr r0, _080AED6C @ =0x00002FFF
	cmp r2, r0
	ble _080AED78
	b _080AED84
	.align 2, 0
_080AED6C: .4byte 0x00002FFF
_080AED70:
	subs r1, r1, r3
	ldr r0, _080AED80 @ =0x00002FFF
	cmp r1, r0
	bgt _080AED84
_080AED78:
	adds r0, r4, #0
	bl sub_080AE85C
	b _080AED8A
	.align 2, 0
_080AED80: .4byte 0x00002FFF
_080AED84:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_080AED8A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080AED90
sub_080AED90: @ 0x080AED90
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AEDCC @ =sub_080AEDD0
	movs r1, #1
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0xc0
	lsls r3, r3, #2
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AEDB4
	rsbs r0, r3, #0
	strh r0, [r2]
_080AEDB4:
	ldr r0, [r4, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AEDCC: .4byte sub_080AEDD0

	thumb_func_start sub_080AEDD0
sub_080AEDD0: @ 0x080AEDD0
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start CreateGlunk
CreateGlunk: @ 0x080AEDDC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080AEE10 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080AEE14 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080AEE18
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080AEE20
	.align 2, 0
_080AEE10: .4byte ObjectMain
_080AEE14: .4byte ObjectDestroy
_080AEE18:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080AEE20:
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
	ble _080AEE40
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080AEE48
_080AEE40:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080AEE48:
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0xc]
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
	ldr r2, _080AEEA0 @ =gUnk_08351648
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
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080AEEA0: .4byte gUnk_08351648

	thumb_func_start sub_080AEEA4
sub_080AEEA4: @ 0x080AEEA4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080AEEF0
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080AEF08
	adds r0, r4, #0
	bl sub_080AEF14
	adds r0, r4, #0
	bl sub_080AF204
	movs r0, #0xc
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _080AEF08
	ldr r2, _080AEEEC @ =sub_080AF624
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	b _080AEF08
	.align 2, 0
_080AEEEC: .4byte sub_080AF624
_080AEEF0:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x23
	ble _080AEF08
	ldr r2, _080AEF10 @ =sub_080AF624
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
_080AEF08:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AEF10: .4byte sub_080AF624

	thumb_func_start sub_080AEF14
sub_080AEF14: @ 0x080AEF14
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #0
	ldr r1, _080AEF28 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080AEF2C @ =gUnk_020229E0
	b _080AEF44
	.align 2, 0
_080AEF28: .4byte gUnk_020229D4
_080AEF2C: .4byte gUnk_020229E0
_080AEF30:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080AEF4C
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080AEF44:
	cmp r0, #0
	bne _080AEF30
	orrs r2, r3
	str r2, [r1]
_080AEF4C:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	movs r3, #0
	strh r0, [r1, #6]
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xd6
	strb r0, [r1, #0xc]
	strb r3, [r1, #0xe]
	strb r3, [r1, #0xf]
	adds r0, r5, #0
	adds r0, #0x87
	ldrb r0, [r0]
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
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl CreateObject
	adds r1, r0, #0
	str r5, [r1, #0x70]
	ldr r0, [r5, #8]
	ands r0, r4
	cmp r0, #0
	beq _080AEFB6
	ldr r0, [r1, #8]
	orrs r0, r4
	str r0, [r1, #8]
_080AEFB6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080AEFBC
sub_080AEFBC: @ 0x080AEFBC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080AEFF0 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080AEFF4 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080AEFF8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r6, r0, r1
	b _080AF000
	.align 2, 0
_080AEFF0: .4byte ObjectMain
_080AEFF4: .4byte ObjectDestroy
_080AEFF8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
_080AF000:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	adds r0, r6, #0
	adds r0, #0x63
	movs r5, #0
	movs r1, #1
	strb r1, [r0]
	ldr r2, [r6, #8]
	movs r3, #0x40
	orrs r2, r3
	ldr r0, [r6, #0xc]
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r4, #2
	orrs r0, r4
	str r0, [r6, #0xc]
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #1
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x15
	orrs r2, r0
	ldr r0, _080AF09C @ =0x20000043
	str r0, [r6, #0x68]
	ldr r0, [r6, #0x5c]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r6, #0x5c]
	orrs r2, r3
	str r2, [r6, #8]
	adds r0, r6, #0
	adds r0, #0x9e
	strb r5, [r0]
	ldr r0, _080AF0A0 @ =sub_0809F840
	str r0, [r6, #0x7c]
	movs r2, #2
	rsbs r2, r2, #0
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r2, #0
	movs r3, #2
	bl sub_0803E2B0
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #2
	movs r2, #2
	movs r3, #2
	bl sub_0803E308
	adds r0, r6, #0
	bl ObjectInitSprite
	ldr r2, _080AF0A4 @ =gUnk_08351648
	adds r0, r6, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080AF09C: .4byte 0x20000043
_080AF0A0: .4byte sub_0809F840
_080AF0A4: .4byte gUnk_08351648

	thumb_func_start sub_080AF0A8
sub_080AF0A8: @ 0x080AF0A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AF14C @ =sub_080AF16C
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r1]
	ldr r0, [r4, #0x44]
	ldr r1, _080AF150 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldr r1, _080AF154 @ =gUnk_02020EE0
	ldr r0, _080AF158 @ =gUnk_0203AD3C
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
	bne _080AF144
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AF104
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080AF144
_080AF104:
	ldr r1, _080AF15C @ =gUnk_08D60FA4
	ldr r4, _080AF160 @ =gSongTable
	ldr r2, _080AF164 @ =0x00000A34
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080AF12A
	movs r1, #0xa3
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080AF144
_080AF12A:
	cmp r3, #0
	beq _080AF13C
	ldr r0, _080AF168 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080AF144
_080AF13C:
	movs r0, #0xa3
	lsls r0, r0, #1
	bl m4aSongNumStart
_080AF144:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AF14C: .4byte sub_080AF16C
_080AF150: .4byte 0xFFFFF800
_080AF154: .4byte gUnk_02020EE0
_080AF158: .4byte gUnk_0203AD3C
_080AF15C: .4byte gUnk_08D60FA4
_080AF160: .4byte gSongTable
_080AF164: .4byte 0x00000A34
_080AF168: .4byte gUnk_0203AD10

	thumb_func_start sub_080AF16C
sub_080AF16C: @ 0x080AF16C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	ldr r1, _080AF1FC @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080AF200 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	adds r0, r2, #0
	adds r0, #0x50
	adds r0, r1, r0
	ldr r3, [r4, #0x40]
	ldr r0, [r0]
	cmp r3, r0
	bgt _080AF1C4
	adds r0, r2, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt _080AF1C4
	adds r0, r2, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r3, [r4, #0x44]
	ldr r0, [r0]
	cmp r3, r0
	bgt _080AF1C4
	adds r0, r2, #0
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt _080AF1C4
	adds r0, r4, #0
	bl sub_0806FC70
_080AF1C4:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	bgt _080AF1E6
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	beq _080AF1F6
_080AF1E6:
	adds r0, r4, #0
	bl sub_0809DA30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_080AF1F6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AF1FC: .4byte 0xFFFFFEFF
_080AF200: .4byte gCurLevelInfo

	thumb_func_start sub_080AF204
sub_080AF204: @ 0x080AF204
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080AF238 @ =sub_080AF330
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080AF23C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080AF240
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r6, r0, r1
	b _080AF248
	.align 2, 0
_080AF238: .4byte sub_080AF330
_080AF23C: .4byte sub_0803DCCC
_080AF240:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
_080AF248:
	adds r4, r6, #0
	adds r0, r4, #0
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
	movs r1, #0x42
	adds r1, r1, r4
	mov r8, r1
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
	strh r2, [r4, #0x3c]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x3e]
	ldr r0, [r4, #0x38]
	ldr r1, _080AF308 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4, #0x38]
	ldr r0, _080AF30C @ =gUnk_03000510
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
	beq _080AF2B4
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	orrs r3, r0
	strh r3, [r4, #6]
_080AF2B4:
	adds r1, r6, #0
	adds r1, #0xc
	ldr r3, _080AF310 @ =0x00000329
	str r5, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r2, #6
	bl sub_080709F8
	adds r4, r6, #0
	adds r4, #0x2b
	strb r7, [r4]
	ldr r2, _080AF314 @ =gUnk_02020EE0
	ldr r0, _080AF318 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r3, r8
	ldrh r3, [r3]
	cmp r0, r3
	bne _080AF320
	ldr r5, _080AF31C @ =0x00000327
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080AF322
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080AF322
	.align 2, 0
_080AF308: .4byte 0xFFFFF800
_080AF30C: .4byte gUnk_03000510
_080AF310: .4byte 0x00000329
_080AF314: .4byte gUnk_02020EE0
_080AF318: .4byte gUnk_0203AD3C
_080AF31C: .4byte 0x00000327
_080AF320:
	strb r7, [r4]
_080AF322:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AF330
sub_080AF330: @ 0x080AF330
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r2, _080AF350 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080AF354
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080AF35C
	.align 2, 0
_080AF350: .4byte gCurTask
_080AF354:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080AF35C:
	adds r5, r0, #0
	ldrh r3, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _080AF372
	ldr r0, [r2]
	bl TaskDestroy
	b _080AF606
_080AF372:
	ldr r2, _080AF3D8 @ =gUnk_02020EE0
	ldr r0, _080AF3DC @ =gUnk_0203AD3C
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
	bne _080AF420
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080AF3E8
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080AF446
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #6
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080AF3E0 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080AF3E4 @ =0x0400000A
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
	b _080AF446
	.align 2, 0
_080AF3D8: .4byte gUnk_02020EE0
_080AF3DC: .4byte gUnk_0203AD3C
_080AF3E0: .4byte 0xFFF7FFFF
_080AF3E4: .4byte 0x0400000A
_080AF3E8:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080AF446
	movs r0, #6
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080AF418 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080AF41C @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080AF446
	.align 2, 0
_080AF418: .4byte 0xFFF7FFFF
_080AF41C: .4byte 0x0400000A
_080AF420:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _080AF43C
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080AF43C
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080AF43C:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080AF446:
	ldr r2, _080AF48C @ =gUnk_02020EE0
	ldr r0, _080AF490 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r1, [r7]
	cmp r0, r1
	bne _080AF498
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AF4A0
	ldr r6, _080AF494 @ =0x00000327
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080AF4A0
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080AF4A0
	.align 2, 0
_080AF48C: .4byte gUnk_02020EE0
_080AF490: .4byte gUnk_0203AD3C
_080AF494: .4byte 0x00000327
_080AF498:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_080AF4A0:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _080AF4F4
	ldrb r0, [r3]
	cmp r0, #0
	beq _080AF4BE
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080AF4BE
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080AF4BE:
	cmp r3, #0
	beq _080AF4F4
	ldr r0, _080AF4F0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080AF560
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080AF560
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080AF606
	.align 2, 0
_080AF4F0: .4byte gUnk_03000510
_080AF4F4:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080AF558 @ =gUnk_02020EE0
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	beq _080AF532
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080AF532
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080AF532
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080AF532
	movs r3, #4
_080AF532:
	ldr r0, _080AF55C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080AF560
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080AF560
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080AF606
	.align 2, 0
_080AF558: .4byte gUnk_02020EE0
_080AF55C: .4byte gUnk_03000510
_080AF560:
	ldr r0, _080AF5D4 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldrh r1, [r5, #4]
	mov ip, r1
	cmp r0, #0
	beq _080AF5A4
	ldr r6, _080AF5D8 @ =gCurLevelInfo
	ldrh r3, [r7]
	ldr r4, _080AF5DC @ =gUnk_02026D50
_080AF572:
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
	bne _080AF59C
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080AF5B6
_080AF59C:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080AF572
_080AF5A4:
	movs r0, #1
	cmp r0, #0
	beq _080AF5B6
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_080AF5B6:
	mov r0, ip
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _080AF5E0
	ldrh r0, [r5, #6]
	movs r6, #0x80
	lsls r6, r6, #5
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _080AF606
	.align 2, 0
_080AF5D4: .4byte gUnk_0203AD44
_080AF5D8: .4byte gCurLevelInfo
_080AF5DC: .4byte gUnk_02026D50
_080AF5E0:
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080AF600
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
_080AF600:
	adds r0, r5, #0
	bl sub_0806FAC8
_080AF606:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AF610
sub_080AF610: @ 0x080AF610
	push {lr}
	ldr r2, _080AF620 @ =sub_080AF624
	movs r1, #0
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080AF620: .4byte sub_080AF624

	thumb_func_start sub_080AF624
sub_080AF624: @ 0x080AF624
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080AF656
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r3, #0
	adds r1, #0x87
	ldrb r2, [r1]
	movs r1, #3
	subs r1, r1, r2
	cmp r0, r1
	blt _080AF656
	adds r0, r3, #0
	bl sub_080AF65C
_080AF656:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AF65C
sub_080AF65C: @ 0x080AF65C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AF67C @ =sub_080AEEA4
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AF67C: .4byte sub_080AEEA4

	thumb_func_start CreateSquishy
CreateSquishy: @ 0x080AF680
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080AF6B4 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080AF6B8 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080AF6BC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080AF6C4
	.align 2, 0
_080AF6B4: .4byte ObjectMain
_080AF6B8: .4byte ObjectDestroy
_080AF6BC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080AF6C4:
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
	ble _080AF6E4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080AF6EC
_080AF6E4:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080AF6EC:
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0xc]
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
	cmp r0, #1
	beq _080AF73C
	cmp r0, #1
	ble _080AF734
	cmp r0, #2
	beq _080AF744
_080AF734:
	adds r0, r4, #0
	bl sub_080AF754
	b _080AF74A
_080AF73C:
	adds r0, r4, #0
	bl sub_080AFB70
	b _080AF74A
_080AF744:
	adds r0, r4, #0
	bl sub_080B0134
_080AF74A:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080AF754
sub_080AF754: @ 0x080AF754
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AF780 @ =sub_080AF7D4
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080AF784
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080AF78C
	.align 2, 0
_080AF780: .4byte sub_080AF7D4
_080AF784:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080AF78C:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080AF7AA
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0xc0
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0x83
	movs r1, #1
	strb r1, [r2]
	b _080AF7BA
_080AF7AA:
	adds r0, r4, #0
	adds r0, #0x50
	movs r2, #0
	movs r1, #0x80
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x83
	strb r2, [r1]
_080AF7BA:
	adds r2, r0, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AF7CC
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080AF7CC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AF7D4
sub_080AF7D4: @ 0x080AF7D4
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, [r3, #0x58]
	movs r0, #2
	ands r2, r0
	cmp r2, #0
	beq _080AF7EA
	adds r0, r3, #0
	bl sub_080B0078
	b _080AF870
_080AF7EA:
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x14
	ble _080AF840
	strh r2, [r3, #4]
	adds r1, r3, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _080AF82C
	ldr r2, _080AF834 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080AF838 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080AF83C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #3
	bne _080AF840
_080AF82C:
	adds r0, r3, #0
	bl sub_080B0040
	b _080AF870
	.align 2, 0
_080AF834: .4byte gRngVal
_080AF838: .4byte 0x00196225
_080AF83C: .4byte 0x3C6EF35F
_080AF840:
	adds r2, r3, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080AF860
	ldr r0, [r3, #8]
	eors r0, r4
	str r0, [r3, #8]
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080AF860:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080AF870
	adds r0, r3, #0
	bl sub_080AFF90
_080AF870:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AF878
sub_080AF878: @ 0x080AF878
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AF8A0 @ =sub_080AF958
	movs r1, #3
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080AF8A4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080AF8AC
	.align 2, 0
_080AF8A0: .4byte sub_080AF958
_080AF8A4:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080AF8AC:
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0xc0
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AF8D6
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080AF8D6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080AF8DC
sub_080AF8DC: @ 0x080AF8DC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AF904 @ =sub_080AF958
	movs r1, #3
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080AF908
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080AF910
	.align 2, 0
_080AF904: .4byte sub_080AF958
_080AF908:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080AF910:
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x52
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	blt _080AF932
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0xc0
	lsls r1, r1, #1
	strh r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r2]
	adds r2, r0, #0
	b _080AF93C
_080AF932:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r2, r1, #0
_080AF93C:
	ldr r0, [r4, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AF952
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080AF952:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080AF958
sub_080AF958: @ 0x080AF958
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080AF97C
	ldr r0, [r4, #8]
	eors r0, r3
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080AF97C:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AF9AC
	ldr r2, _080AF9A8 @ =sub_080B0024
	adds r0, r4, #0
	movs r1, #4
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #0x21
	ands r0, r1
	str r0, [r4, #8]
	b _080AF9BC
	.align 2, 0
_080AF9A8: .4byte sub_080B0024
_080AF9AC:
	ldr r0, [r4, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080AF9BC
	adds r0, r4, #0
	bl sub_080B0078
_080AF9BC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AF9C4
sub_080AF9C4: @ 0x080AF9C4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	ldrh r1, [r0, #4]
	movs r2, #4
	ldrsh r0, [r0, r2]
	cmp r0, #0x60
	bgt _080AF9D8
	b _080AFB42
_080AF9D8:
	ldr r2, _080AFAC4 @ =gUnk_08353C58
	mov r3, ip
	adds r3, #0x9f
	ldrb r7, [r3]
	adds r1, r7, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #8]
	adds r6, r2, #0
	movs r5, #0x9e
	add r5, ip
	mov r8, r5
	cmp r0, #0
	bne _080AFA0E
	ldrb r0, [r5]
	mov r4, ip
	adds r4, #0x50
	mov r5, ip
	adds r5, #0x52
	cmp r0, #0
	bne _080AFAF4
	movs r0, #0xff
	strb r0, [r3]
_080AFA0E:
	mov r1, r8
	ldrb r0, [r1]
	mov r4, ip
	adds r4, #0x50
	mov r5, ip
	adds r5, #0x52
	cmp r0, #0
	bne _080AFAF4
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080AFA38
	subs r0, r1, #1
	strb r0, [r3]
_080AFA38:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	mov r2, r8
	strb r0, [r2]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080AFA60
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080AFA60:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080AFAC8
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r1, [r1, r5]
	movs r5, #0
	ldrsh r0, [r0, r5]
	cmp r1, r0
	beq _080AFA9A
	strh r2, [r4]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AFA9A
	rsbs r0, r2, #0
	strh r0, [r4]
_080AFA9A:
	ldrb r2, [r3]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r1, #2]
	movs r5, #2
	ldrsh r1, [r1, r5]
	movs r5, #2
	ldrsh r0, [r0, r5]
	mov r5, ip
	adds r5, #0x52
	cmp r1, r0
	beq _080AFAF4
	strh r2, [r5]
	b _080AFAF4
	.align 2, 0
_080AFAC4: .4byte gUnk_08353C58
_080AFAC8:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	strh r0, [r5]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r0]
	strh r2, [r4]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AFB14
	rsbs r0, r2, #0
	strh r0, [r4]
_080AFAF4:
	mov r2, ip
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AFB14
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r4]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r4]
	b _080AFB26
_080AFB14:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
_080AFB26:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
	mov r3, r8
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
	b _080AFB48
_080AFB42:
	adds r0, r1, #1
	mov r5, ip
	strh r0, [r5, #4]
_080AFB48:
	mov r1, ip
	ldr r0, [r1, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080AFB64
	mov r2, ip
	ldr r0, [r2, #8]
	subs r1, #0x43
	ands r0, r1
	str r0, [r2, #8]
	mov r0, ip
	bl sub_080AF8DC
_080AFB64:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AFB70
sub_080AFB70: @ 0x080AFB70
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AFB94 @ =sub_080B00A4
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080AFB98
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080AFBA0
	.align 2, 0
_080AFB94: .4byte sub_080B00A4
_080AFB98:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080AFBA0:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0x80
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AFBE4
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	movs r1, #0xa0
	lsls r1, r1, #7
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
	b _080AFBF2
_080AFBE4:
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	ldr r1, _080AFBF8 @ =0xFFFFB000
	adds r0, r0, r1
	str r0, [r4, #0x40]
_080AFBF2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AFBF8: .4byte 0xFFFFB000

	thumb_func_start sub_080AFBFC
sub_080AFBFC: @ 0x080AFBFC
	push {r4, r5, r6, lr}
	mov ip, r0
	mov r3, ip
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r6, _080AFCC0 @ =gUnk_08353CA0
	cmp r0, #0
	bne _080AFCF8
	mov r1, ip
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	adds r4, r1, #0
	cmp r0, #0
	bne _080AFC2C
	subs r0, r2, #1
	strb r0, [r4]
_080AFC2C:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080AFC52
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080AFC52:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080AFCC4
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080AFC90
	mov r2, ip
	adds r2, #0x50
	strh r3, [r2]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AFC90
	rsbs r0, r3, #0
	strh r0, [r2]
_080AFC90:
	mov r0, ip
	adds r0, #0x9f
	ldrb r2, [r0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r1, #2]
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080AFCF8
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	b _080AFCF8
	.align 2, 0
_080AFCC0: .4byte gUnk_08353CA0
_080AFCC4:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r3, ip
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r5, [r0]
	mov r2, ip
	adds r2, #0x50
	strh r5, [r2]
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080AFD22
	rsbs r0, r5, #0
	strh r0, [r2]
_080AFCF8:
	mov r2, ip
	ldr r1, [r2, #8]
	movs r0, #1
	ands r1, r0
	mov r4, ip
	adds r4, #0x9f
	adds r2, #0x50
	mov r3, ip
	adds r3, #0x52
	cmp r1, #0
	beq _080AFD22
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r2]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r2]
	b _080AFD34
_080AFD22:
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080AFD34:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _080AFD62
	mov r2, ip
	ldr r0, [r2, #8]
	ldr r1, _080AFD7C @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r2, #8]
_080AFD62:
	mov r0, ip
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AFD76
	mov r0, ip
	bl sub_080B00DC
_080AFD76:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AFD7C: .4byte 0xFFFFFEFF

	thumb_func_start sub_080AFD80
sub_080AFD80: @ 0x080AFD80
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x50
	movs r7, #0
	strh r7, [r5]
	movs r0, #0x52
	adds r0, r0, r4
	mov r8, r0
	strh r7, [r0]
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _080AFDAE
	adds r0, r4, #0
	bl sub_080AFE0C
	b _080AFDFC
_080AFDAE:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	beq _080AFDD8
	ldr r2, _080AFDD4 @ =sub_080B0024
	adds r0, r4, #0
	movs r1, #4
	bl ObjectSetFunc
	strh r7, [r5]
	mov r0, r8
	strh r7, [r0]
	ldr r0, [r4, #8]
	b _080AFDF4
	.align 2, 0
_080AFDD4: .4byte sub_080B0024
_080AFDD8:
	ldr r0, [r4, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080AFDFC
	ldr r2, _080AFE08 @ =sub_080AF9C4
	adds r0, r4, #0
	movs r1, #3
	bl ObjectSetFunc
	strh r6, [r5]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
_080AFDF4:
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_080AFDFC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AFE08: .4byte sub_080AF9C4

	thumb_func_start sub_080AFE0C
sub_080AFE0C: @ 0x080AFE0C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AFE34 @ =sub_080AFEBC
	movs r1, #3
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080AFE38
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080AFE40
	.align 2, 0
_080AFE34: .4byte sub_080AFEBC
_080AFE38:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080AFE40:
	str r0, [r4, #8]
	ldr r2, [r4, #0x44]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r2, r1
	adds r1, r4, #0
	adds r1, #0xac
	ldr r1, [r1]
	ldr r1, [r1, #0x44]
	cmp r0, r1
	bge _080AFE5E
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0x2b
	b _080AFE7A
_080AFE5E:
	ldr r3, _080AFE70 @ =0xFFFFF800
	adds r0, r2, r3
	cmp r0, r1
	ble _080AFE74
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0x25
	b _080AFE7A
	.align 2, 0
_080AFE70: .4byte 0xFFFFF800
_080AFE74:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0x28
_080AFE7A:
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080AFE90
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xa0
	lsls r0, r0, #1
	b _080AFE98
_080AFE90:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
_080AFE98:
	strh r0, [r1]
	adds r2, r1, #0
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AFEB6
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080AFEB6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080AFEBC
sub_080AFEBC: @ 0x080AFEBC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0x85
	ldrb r0, [r3]
	subs r0, #1
	movs r7, #0
	strb r0, [r3]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AFEEC
	ldr r2, _080AFEE8 @ =sub_080AFD80
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	strh r7, [r0]
	adds r0, #2
	strh r7, [r0]
	b _080AFF84
	.align 2, 0
_080AFEE8: .4byte sub_080AFD80
_080AFEEC:
	adds r6, r4, #0
	adds r6, #0x52
	ldrh r0, [r6]
	subs r0, #0xb
	strh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080AFF54 @ =0xFFFFFD00
	cmp r0, r1
	bge _080AFF02
	strh r1, [r6]
_080AFF02:
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080AFF22
	ldr r0, [r4, #8]
	eors r0, r5
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080AFF22:
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080AFF30
	movs r0, #0x18
	strb r0, [r3]
_080AFF30:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _080AFF5C
	ldr r2, _080AFF58 @ =sub_080B0024
	adds r0, r4, #0
	movs r1, #4
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	strh r7, [r0]
	strh r7, [r6]
	ldr r0, [r4, #8]
	b _080AFF7C
	.align 2, 0
_080AFF54: .4byte 0xFFFFFD00
_080AFF58: .4byte sub_080B0024
_080AFF5C:
	ldr r0, [r4, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080AFF84
	ldr r2, _080AFF8C @ =sub_080AF9C4
	adds r0, r4, #0
	movs r1, #3
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	strh r5, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
_080AFF7C:
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_080AFF84:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AFF8C: .4byte sub_080AF9C4

	thumb_func_start sub_080AFF90
sub_080AFF90: @ 0x080AFF90
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AFFA8 @ =sub_080AFFAC
	movs r1, #5
	bl ObjectSetFunc
	adds r4, #0x85
	movs r0, #0
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AFFA8: .4byte sub_080AFFAC

	thumb_func_start sub_080AFFAC
sub_080AFFAC: @ 0x080AFFAC
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080AFFD0
	ldr r0, [r2, #8]
	eors r0, r4
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080AFFD0:
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AFFE2
	adds r0, r2, #0
	bl sub_080AFFF8
	b _080AFFF2
_080AFFE2:
	ldr r0, [r2, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080AFFF2
	adds r0, r2, #0
	bl sub_080B0078
_080AFFF2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080AFFF8
sub_080AFFF8: @ 0x080AFFF8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B0020 @ =sub_080B0024
	movs r1, #4
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #0x21
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B0020: .4byte sub_080B0024

	thumb_func_start sub_080B0024
sub_080B0024: @ 0x080B0024
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa
	ble _080B003C
	adds r0, r1, #0
	bl sub_080AF754
_080B003C:
	pop {r0}
	bx r0

	thumb_func_start sub_080B0040
sub_080B0040: @ 0x080B0040
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B0058 @ =sub_080B005C
	movs r1, #2
	bl ObjectSetFunc
	adds r4, #0x50
	movs r0, #0
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B0058: .4byte sub_080B005C

	thumb_func_start sub_080B005C
sub_080B005C: @ 0x080B005C
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x18
	ble _080B0074
	adds r0, r1, #0
	bl sub_080AF878
_080B0074:
	pop {r0}
	bx r0

	thumb_func_start sub_080B0078
sub_080B0078: @ 0x080B0078
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B00A0 @ =sub_080AF9C4
	movs r1, #3
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B00A0: .4byte sub_080AF9C4

	thumb_func_start sub_080B00A4
sub_080B00A4: @ 0x080B00A4
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x58]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B00B8
	adds r0, r2, #0
	bl sub_080B00BC
_080B00B8:
	pop {r0}
	bx r0

	thumb_func_start sub_080B00BC
sub_080B00BC: @ 0x080B00BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B00D8 @ =sub_080AFBFC
	movs r1, #3
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B00D8: .4byte sub_080AFBFC

	thumb_func_start sub_080B00DC
sub_080B00DC: @ 0x080B00DC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B0108 @ =sub_080B010C
	movs r1, #2
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
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
_080B0108: .4byte sub_080B010C

	thumb_func_start sub_080B010C
sub_080B010C: @ 0x080B010C
	push {lr}
	adds r1, r0, #0
	ldrh r2, [r1, #4]
	movs r3, #4
	ldrsh r0, [r1, r3]
	cmp r0, #8
	ble _080B012C
	adds r2, r1, #0
	adds r2, #0x52
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2]
	adds r1, #0x83
	movs r0, #3
	strb r0, [r1]
	b _080B0130
_080B012C:
	adds r0, r2, #1
	strh r0, [r1, #4]
_080B0130:
	pop {r0}
	bx r0

	thumb_func_start sub_080B0134
sub_080B0134: @ 0x080B0134
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B0154 @ =sub_080AFD80
	movs r1, #2
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
_080B0154: .4byte sub_080AFD80

	thumb_func_start CreateLeap
CreateLeap: @ 0x080B0158
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080B018C @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080B0190 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B0194
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B019C
	.align 2, 0
_080B018C: .4byte ObjectMain
_080B0190: .4byte ObjectDestroy
_080B0194:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B019C:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #0xc]
	movs r3, #1
	orrs r0, r3
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r2, [r4, #8]
	movs r0, #0x40
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x10
	orrs r2, r0
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	subs r1, #0xc
	ands r0, r1
	str r0, [r4, #0x68]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B01E0
	orrs r2, r3
	b _080B01E6
_080B01E0:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080B01E6:
	str r2, [r4, #8]
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
	ldr r2, _080B0248 @ =gUnk_08351648
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
	bl sub_080B0860
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080B0248: .4byte gUnk_08351648

	thumb_func_start sub_080B024C
sub_080B024C: @ 0x080B024C
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #8
	bne _080B026A
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r0, [r1]
	lsls r0, r0, #1
	strh r0, [r1]
_080B026A:
	movs r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #0x10
	ble _080B0284
	movs r0, #0
	strh r0, [r2, #4]
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	rsbs r0, r0, #0
	strh r0, [r1]
_080B0284:
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B0290
sub_080B0290: @ 0x080B0290
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	ldr r2, _080B03A0 @ =gUnk_08353D20
	mov r4, ip
	adds r4, #0x9f
	ldrb r3, [r4]
	mov r8, r3
	mov r1, r8
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #8]
	adds r7, r2, #0
	cmp r0, #0
	bne _080B02E0
	mov r0, ip
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r3, r4, #0
	mov sb, r0
	mov r5, ip
	adds r5, #0x50
	mov r6, ip
	adds r6, #0x52
	cmp r1, #0
	bne _080B03D0
	movs r0, #0xff
	strb r0, [r3]
_080B02E0:
	mov r0, ip
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r3, r4, #0
	mov sb, r0
	mov r5, ip
	adds r5, #0x50
	mov r6, ip
	adds r6, #0x52
	cmp r1, #0
	bne _080B03D0
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
	bne _080B0310
	subs r0, r1, #1
	strb r0, [r3]
_080B0310:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	mov r4, sb
	strb r0, [r4]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080B0338
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080B0338:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080B03A4
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
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	beq _080B0372
	strh r2, [r5]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B0372
	rsbs r0, r2, #0
	strh r0, [r5]
_080B0372:
	mov r3, ip
	adds r3, #0x9f
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
	movs r4, #2
	ldrsh r1, [r1, r4]
	movs r4, #2
	ldrsh r0, [r0, r4]
	mov r6, ip
	adds r6, #0x52
	cmp r1, r0
	beq _080B03D0
	strh r2, [r6]
	b _080B03D0
	.align 2, 0
_080B03A0: .4byte gUnk_08353D20
_080B03A4:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	strh r0, [r6]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r2, [r0]
	strh r2, [r5]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B03F0
	rsbs r0, r2, #0
	strh r0, [r5]
_080B03D0:
	mov r4, ip
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B03F0
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r5]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r5]
	b _080B0402
_080B03F0:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrh r0, [r1, #4]
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
_080B0402:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #6]
	ldrh r3, [r6]
	adds r0, r0, r3
	strh r0, [r6]
	mov r4, sb
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080B0428
sub_080B0428: @ 0x080B0428
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	ldr r2, _080B0538 @ =gUnk_08353DBC
	mov r4, ip
	adds r4, #0x9f
	ldrb r3, [r4]
	mov r8, r3
	mov r1, r8
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #8]
	adds r7, r2, #0
	cmp r0, #0
	bne _080B0478
	mov r0, ip
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r3, r4, #0
	mov sb, r0
	mov r5, ip
	adds r5, #0x50
	mov r6, ip
	adds r6, #0x52
	cmp r1, #0
	bne _080B0568
	movs r0, #0xff
	strb r0, [r3]
_080B0478:
	mov r0, ip
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r3, r4, #0
	mov sb, r0
	mov r5, ip
	adds r5, #0x50
	mov r6, ip
	adds r6, #0x52
	cmp r1, #0
	bne _080B0568
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
	bne _080B04A8
	subs r0, r1, #1
	strb r0, [r3]
_080B04A8:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	mov r4, sb
	strb r0, [r4]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080B04D0
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080B04D0:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080B053C
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
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	beq _080B050A
	strh r2, [r5]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B050A
	rsbs r0, r2, #0
	strh r0, [r5]
_080B050A:
	mov r3, ip
	adds r3, #0x9f
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
	movs r4, #2
	ldrsh r1, [r1, r4]
	movs r4, #2
	ldrsh r0, [r0, r4]
	mov r6, ip
	adds r6, #0x52
	cmp r1, r0
	beq _080B0568
	strh r2, [r6]
	b _080B0568
	.align 2, 0
_080B0538: .4byte gUnk_08353DBC
_080B053C:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	strh r0, [r6]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r2, [r0]
	strh r2, [r5]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B0588
	rsbs r0, r2, #0
	strh r0, [r5]
_080B0568:
	mov r4, ip
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B0588
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r5]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r5]
	b _080B059A
_080B0588:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrh r0, [r1, #4]
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
_080B059A:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #6]
	ldrh r3, [r6]
	adds r0, r0, r3
	strh r0, [r6]
	mov r4, sb
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080B05C0
sub_080B05C0: @ 0x080B05C0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	ldr r2, _080B06D0 @ =gUnk_08353E58
	mov r4, ip
	adds r4, #0x9f
	ldrb r3, [r4]
	mov r8, r3
	mov r1, r8
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #8]
	adds r7, r2, #0
	cmp r0, #0
	bne _080B0610
	mov r0, ip
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r3, r4, #0
	mov sb, r0
	mov r5, ip
	adds r5, #0x50
	mov r6, ip
	adds r6, #0x52
	cmp r1, #0
	bne _080B0700
	movs r0, #0xff
	strb r0, [r3]
_080B0610:
	mov r0, ip
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r3, r4, #0
	mov sb, r0
	mov r5, ip
	adds r5, #0x50
	mov r6, ip
	adds r6, #0x52
	cmp r1, #0
	bne _080B0700
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
	bne _080B0640
	subs r0, r1, #1
	strb r0, [r3]
_080B0640:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	mov r4, sb
	strb r0, [r4]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080B0668
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080B0668:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080B06D4
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
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	beq _080B06A2
	strh r2, [r5]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B06A2
	rsbs r0, r2, #0
	strh r0, [r5]
_080B06A2:
	mov r3, ip
	adds r3, #0x9f
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
	movs r4, #2
	ldrsh r1, [r1, r4]
	movs r4, #2
	ldrsh r0, [r0, r4]
	mov r6, ip
	adds r6, #0x52
	cmp r1, r0
	beq _080B0700
	strh r2, [r6]
	b _080B0700
	.align 2, 0
_080B06D0: .4byte gUnk_08353E58
_080B06D4:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	strh r0, [r6]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r2, [r0]
	strh r2, [r5]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B0720
	rsbs r0, r2, #0
	strh r0, [r5]
_080B0700:
	mov r4, ip
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B0720
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r5]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r5]
	b _080B0732
_080B0720:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrh r0, [r1, #4]
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
_080B0732:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #6]
	ldrh r3, [r6]
	adds r0, r0, r3
	strh r0, [r6]
	mov r4, sb
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080B0758
sub_080B0758: @ 0x080B0758
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B07A0
	ldrb r0, [r6]
	cmp r0, #0
	bne _080B07A0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080B07A0
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x27
	beq _080B07A0
	cmp r0, #0x7a
	bhi _080B07A0
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _080B07A0
	ldr r4, [r6, #8]
	ldr r0, _080B07A4 @ =0x03800B00
	ands r4, r0
	cmp r4, #0
	beq _080B07A8
_080B07A0:
	movs r0, #0
	b _080B07D4
	.align 2, 0
_080B07A4: .4byte 0x03800B00
_080B07A8:
	ldr r0, _080B07DC @ =gUnk_08353EF4
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xac
	str r6, [r0]
	ldr r2, _080B07E0 @ =sub_080B07E4
	adds r0, r5, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r5, #0
	adds r0, #0x50
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	str r6, [r5, #0x6c]
	movs r0, #1
_080B07D4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080B07DC: .4byte gUnk_08353EF4
_080B07E0: .4byte sub_080B07E4

	thumb_func_start sub_080B07E4
sub_080B07E4: @ 0x080B07E4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0x14
	bne _080B07F4
	adds r0, r4, #0
	bl sub_080B0A64
_080B07F4:
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B0856
	movs r0, #0x40
	orrs r1, r0
	subs r0, #0x61
	ands r1, r0
	str r1, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080B0844
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #1
	beq _080B082C
	cmp r0, #2
	beq _080B0834
	ldr r2, _080B0828 @ =sub_080B0290
	b _080B0836
	.align 2, 0
_080B0828: .4byte sub_080B0290
_080B082C:
	ldr r2, _080B0830 @ =sub_080B0428
	b _080B0836
	.align 2, 0
_080B0830: .4byte sub_080B0428
_080B0834:
	ldr r2, _080B0840 @ =sub_080B05C0
_080B0836:
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	b _080B0856
	.align 2, 0
_080B0840: .4byte sub_080B05C0
_080B0844:
	ldr r2, _080B085C @ =sub_080B024C
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	strh r0, [r1]
_080B0856:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B085C: .4byte sub_080B024C

	thumb_func_start sub_080B0860
sub_080B0860: @ 0x080B0860
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080B0890 @ =sub_080B0938
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
	beq _080B0894
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080B089C
	.align 2, 0
_080B0890: .4byte sub_080B0938
_080B0894:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080B089C:
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
	ldr r0, _080B0930 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080B08EA
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080B08EA:
	ldr r0, [r4, #8]
	ldr r1, _080B0934 @ =0x10010000
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
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	movs r1, #5
	rsbs r1, r1, #0
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B0930: .4byte gUnk_03000510
_080B0934: .4byte 0x10010000

	thumb_func_start sub_080B0938
sub_080B0938: @ 0x080B0938
	push {r4, r5, r6, lr}
	ldr r0, _080B0954 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B0958
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B0960
	.align 2, 0
_080B0954: .4byte gCurTask
_080B0958:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B0960:
	adds r5, r0, #0
	ldr r6, [r5, #0x70]
	adds r3, r5, #0
	adds r3, #0x60
	ldrh r2, [r3]
	ldr r4, _080B09B4 @ =0x0000FFFF
	cmp r2, r4
	beq _080B0982
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080B0982
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r3]
_080B0982:
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
	bne _080B0A56
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B09B8
	ldr r0, [r5, #8]
	orrs r0, r1
	b _080B09C0
	.align 2, 0
_080B09B4: .4byte 0x0000FFFF
_080B09B8:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B09C0:
	str r0, [r5, #8]
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	bhi _080B0A56
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080B09E4
	ldr r0, _080B09E0 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r5, #8]
	b _080B0A56
	.align 2, 0
_080B09E0: .4byte 0xFFFBFFFF
_080B09E4:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080B0A56
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080B0A56
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _080B0A1C
	ldr r2, _080B0A14 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080B0A18 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080B0A1E
	.align 2, 0
_080B0A14: .4byte gCurLevelInfo
_080B0A18: .4byte 0x0000065E
_080B0A1C:
	movs r1, #0xff
_080B0A1E:
	cmp r1, #0xff
	beq _080B0A56
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080B0A5C @ =gUnk_02022EB0
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
	ldr r2, _080B0A60 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080B0A56:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B0A5C: .4byte gUnk_02022EB0
_080B0A60: .4byte gUnk_02022F50

	thumb_func_start sub_080B0A64
sub_080B0A64: @ 0x080B0A64
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _080B0A9C @ =sub_080B0C40
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080B0AA0 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B0AA4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B0AAC
	.align 2, 0
_080B0A9C: .4byte sub_080B0C40
_080B0AA0: .4byte sub_0803DCCC
_080B0AA4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B0AAC:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x38]
	str r6, [r4, #0x44]
	adds r2, r6, #0
	adds r2, #0x60
	ldrh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x42
	movs r5, #0
	strh r0, [r1]
	movs r7, #0x20
	strh r7, [r4, #0x3c]
	movs r0, #0x40
	strh r0, [r4, #0x3e]
	ldr r0, [r4, #0x38]
	ldr r1, _080B0B08 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4, #0x38]
	ldrh r1, [r4, #6]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r3, #0
	adds r3, r1, #0
	orrs r3, r0
	orrs r3, r5
	strh r3, [r4, #6]
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	mov sb, r2
	cmp r0, #0
	beq _080B0B10
	ldr r0, [r4, #0x34]
	ldr r1, _080B0B0C @ =0xFFFFF400
	adds r0, r0, r1
	str r0, [r4, #0x34]
	rsbs r0, r7, #0
	strh r0, [r4, #0x3c]
	b _080B0B20
	.align 2, 0
_080B0B08: .4byte 0xFFFFF800
_080B0B0C: .4byte 0xFFFFF400
_080B0B10:
	movs r0, #1
	orrs r3, r0
	strh r3, [r4, #6]
	ldr r0, [r4, #0x34]
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r4, #0x34]
_080B0B20:
	ldr r0, _080B0B9C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r3, r6, #0
	adds r3, #0x56
	movs r0, #1
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	mov r8, r3
	cmp r2, #0
	beq _080B0B46
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_080B0B46:
	adds r1, r4, #0
	adds r1, #0xc
	ldr r3, _080B0BA0 @ =0x00000313
	movs r7, #0
	str r7, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0xc
	bl sub_080709F8
	adds r5, r4, #0
	adds r5, #0x2b
	strb r7, [r5]
	ldr r2, _080B0BA4 @ =gUnk_02020EE0
	ldr r0, _080B0BA8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080B0BB0
	ldr r4, _080B0BAC @ =0x00000312
	adds r0, r4, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080B0BB2
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080B0BB2
	.align 2, 0
_080B0B9C: .4byte gUnk_03000510
_080B0BA0: .4byte 0x00000313
_080B0BA4: .4byte gUnk_02020EE0
_080B0BA8: .4byte gUnk_0203AD3C
_080B0BAC: .4byte 0x00000312
_080B0BB0:
	strb r7, [r5]
_080B0BB2:
	ldr r1, _080B0C28 @ =gUnk_02020EE0
	ldr r0, _080B0C2C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	mov r3, sb
	ldrh r3, [r3]
	cmp r0, r3
	bne _080B0C1A
	ldrb r0, [r6]
	cmp r0, #0
	bne _080B0BDA
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, r2
	bne _080B0C1A
_080B0BDA:
	ldr r1, _080B0C30 @ =gUnk_08D60FA4
	ldr r4, _080B0C34 @ =gSongTable
	ldr r2, _080B0C38 @ =0x00000AE4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080B0C00
	movs r1, #0xae
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080B0C1A
_080B0C00:
	cmp r3, #0
	beq _080B0C12
	ldr r0, _080B0C3C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B0C1A
_080B0C12:
	movs r0, #0xae
	lsls r0, r0, #1
	bl m4aSongNumStart
_080B0C1A:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B0C28: .4byte gUnk_02020EE0
_080B0C2C: .4byte gUnk_0203AD3C
_080B0C30: .4byte gUnk_08D60FA4
_080B0C34: .4byte gSongTable
_080B0C38: .4byte 0x00000AE4
_080B0C3C: .4byte gUnk_0203AD10

	thumb_func_start sub_080B0C40
sub_080B0C40: @ 0x080B0C40
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x28
	ldr r2, _080B0C64 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B0C68
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B0C70
	.align 2, 0
_080B0C64: .4byte gCurTask
_080B0C68:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B0C70:
	adds r5, r0, #0
	ldrh r3, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _080B0C86
	ldr r0, [r2]
	bl TaskDestroy
	b _080B0F1A
_080B0C86:
	ldr r2, _080B0CEC @ =gUnk_02020EE0
	ldr r0, _080B0CF0 @ =gUnk_0203AD3C
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
	bne _080B0D34
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080B0CFC
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080B0D5A
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0xc
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080B0CF4 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080B0CF8 @ =0x0400000A
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
	b _080B0D5A
	.align 2, 0
_080B0CEC: .4byte gUnk_02020EE0
_080B0CF0: .4byte gUnk_0203AD3C
_080B0CF4: .4byte 0xFFF7FFFF
_080B0CF8: .4byte 0x0400000A
_080B0CFC:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080B0D5A
	movs r0, #0xc
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080B0D2C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080B0D30 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080B0D5A
	.align 2, 0
_080B0D2C: .4byte 0xFFF7FFFF
_080B0D30: .4byte 0x0400000A
_080B0D34:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _080B0D50
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080B0D50
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080B0D50:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080B0D5A:
	ldr r2, _080B0DA0 @ =gUnk_02020EE0
	ldr r0, _080B0DA4 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r1, [r7]
	cmp r0, r1
	bne _080B0DAC
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080B0DB4
	ldr r6, _080B0DA8 @ =0x00000312
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080B0DB4
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080B0DB4
	.align 2, 0
_080B0DA0: .4byte gUnk_02020EE0
_080B0DA4: .4byte gUnk_0203AD3C
_080B0DA8: .4byte 0x00000312
_080B0DAC:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_080B0DB4:
	ldr r0, _080B0E60 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldr r2, [r5, #0x44]
	mov ip, r2
	ldr r6, _080B0E64 @ =gUnk_03000510
	mov r8, r6
	cmp r0, #0
	beq _080B0E00
	ldr r1, _080B0E68 @ =gCurLevelInfo
	mov sb, r1
	ldrh r3, [r7]
	ldr r4, _080B0E6C @ =gUnk_02026D50
_080B0DCC:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r6, sb
	adds r1, r0, r6
	movs r6, #0xbf
	lsls r6, r6, #3
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r3
	bne _080B0DF8
	adds r6, #0x66
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080B0E12
_080B0DF8:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080B0DCC
_080B0E00:
	movs r0, #1
	cmp r0, #0
	beq _080B0E12
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_080B0E12:
	mov r3, ip
	cmp r3, #0
	beq _080B0E70
	ldrb r0, [r3]
	cmp r0, #0
	beq _080B0E30
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080B0E30
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080B0E30:
	cmp r3, #0
	beq _080B0E70
	mov r6, r8
	ldrb r2, [r6, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080B0ED8
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080B0ED8
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080B0F1A
	.align 2, 0
_080B0E60: .4byte gUnk_0203AD44
_080B0E64: .4byte gUnk_03000510
_080B0E68: .4byte gCurLevelInfo
_080B0E6C: .4byte gUnk_02026D50
_080B0E70:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080B0ED4 @ =gUnk_02020EE0
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	beq _080B0EAE
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080B0EAE
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080B0EAE
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080B0EAE
	movs r3, #4
_080B0EAE:
	mov r1, r8
	ldrb r0, [r1, #4]
	movs r1, #1
	lsls r1, r3
	movs r2, #0x10
	orrs r1, r2
	ands r0, r1
	cmp r0, #0
	beq _080B0ED8
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080B0ED8
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080B0F1A
	.align 2, 0
_080B0ED4: .4byte gUnk_02020EE0
_080B0ED8:
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x30
	ble _080B0EF4
	ldrh r0, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _080B0F1A
_080B0EF4:
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080B0F14
	movs r6, #0x3c
	ldrsh r1, [r5, r6]
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
	str r0, [r5, #0x34]
	movs r0, #0x3e
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x38]
	subs r0, r0, r1
	str r0, [r5, #0x38]
_080B0F14:
	adds r0, r5, #0
	bl sub_0806FAC8
_080B0F1A:
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080B0F28
sub_080B0F28: @ 0x080B0F28
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080B0F74
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #1
	beq _080B0F5C
	cmp r0, #2
	beq _080B0F64
	ldr r2, _080B0F58 @ =sub_080B0290
	b _080B0F66
	.align 2, 0
_080B0F58: .4byte sub_080B0290
_080B0F5C:
	ldr r2, _080B0F60 @ =sub_080B0428
	b _080B0F66
	.align 2, 0
_080B0F60: .4byte sub_080B0428
_080B0F64:
	ldr r2, _080B0F70 @ =sub_080B05C0
_080B0F66:
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	b _080B0F86
	.align 2, 0
_080B0F70: .4byte sub_080B05C0
_080B0F74:
	ldr r2, _080B0F8C @ =sub_080B024C
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	strh r0, [r1]
_080B0F86:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B0F8C: .4byte sub_080B024C

	thumb_func_start CreateMirra
CreateMirra: @ 0x080B0F90
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080B0FC4 @ =ObjectMain
	ldr r2, _080B0FC8 @ =0x00003064
	ldr r1, _080B0FCC @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B0FD0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B0FD8
	.align 2, 0
_080B0FC4: .4byte ObjectMain
_080B0FC8: .4byte 0x00003064
_080B0FCC: .4byte ObjectDestroy
_080B0FD0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B0FD8:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x5c]
	movs r1, #0xa0
	orrs r0, r1
	str r0, [r4, #0x5c]
	movs r0, #0
	str r0, [r4, #0x68]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r1, [r0]
	ldrh r0, [r1, #0x14]
	cmp r0, #0
	beq _080B1024
	subs r0, #1
	movs r1, #1
	lsls r1, r0
	ldr r0, _080B103C @ =gUnk_020229D8
	ldr r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _080B1024
	adds r0, r4, #0
	bl sub_080B11C0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_080B1024:
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B1040
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B1048
	.align 2, 0
_080B103C: .4byte gUnk_020229D8
_080B1040:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B1048:
	str r0, [r4, #8]
	movs r1, #5
	rsbs r1, r1, #0
	movs r0, #0xd
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #0xf
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	ldr r2, _080B10A4 @ =gUnk_08351648
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
_080B10A4: .4byte gUnk_08351648

	thumb_func_start sub_080B10A8
sub_080B10A8: @ 0x080B10A8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_08070504
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B1158
	movs r5, #0
	ldr r0, _080B10C8 @ =gUnk_0203AD44
	adds r6, r0, #0
	b _080B1166
	.align 2, 0
_080B10C8: .4byte gUnk_0203AD44
_080B10CC:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, _080B1100 @ =gUnk_02020EE0
	adds r1, r1, r0
	mov ip, r1
	mov r0, ip
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080B1160
	movs r1, #4
	ldrsh r3, [r4, r1]
	mov r0, ip
	ldr r2, [r0, #0x40]
	ldr r0, [r4, #0x40]
	subs r1, r2, r0
	cmp r1, #0
	blt _080B1104
	cmp r1, r3
	blt _080B110A
	b _080B1160
	.align 2, 0
_080B1100: .4byte gUnk_02020EE0
_080B1104:
	subs r0, r0, r2
	cmp r0, r3
	bge _080B1160
_080B110A:
	movs r1, #4
	ldrsh r3, [r4, r1]
	mov r0, ip
	ldr r2, [r0, #0x44]
	ldr r0, [r4, #0x44]
	subs r1, r2, r0
	cmp r1, #0
	blt _080B1120
	cmp r1, r3
	blt _080B1126
	b _080B1160
_080B1120:
	subs r0, r0, r2
	cmp r0, r3
	bge _080B1160
_080B1126:
	mov r1, ip
	ldr r0, [r1, #0xc]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080B1158
	mov r0, ip
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x61
	beq _080B1158
	cmp r0, #0xd
	beq _080B1158
	cmp r0, #0x20
	beq _080B1158
	cmp r0, #0x14
	beq _080B1158
	cmp r0, #0x15
	beq _080B1158
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B116C
_080B1158:
	adds r0, r4, #0
	bl sub_080B1218
	b _080B116C
_080B1160:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080B1166:
	ldrb r0, [r6]
	cmp r5, r0
	blo _080B10CC
_080B116C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B1174
sub_080B1174: @ 0x080B1174
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B11A8 @ =sub_080B10A8
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080B11AC
	cmp r0, #1
	beq _080B11B2
	movs r0, #0x80
	lsls r0, r0, #8
	b _080B11B6
	.align 2, 0
_080B11A8: .4byte sub_080B10A8
_080B11AC:
	movs r0, #0xc0
	lsls r0, r0, #6
	b _080B11B6
_080B11B2:
	movs r0, #0xa0
	lsls r0, r0, #7
_080B11B6:
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B11C0
sub_080B11C0: @ 0x080B11C0
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r5, r3, #0
	adds r5, #0xb0
	ldr r1, [r5]
	ldrh r0, [r1, #0x14]
	cmp r0, #0
	beq _080B11DE
	ldr r2, _080B1214 @ =gUnk_020229D8
	subs r0, #1
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
_080B11DE:
	adds r0, r3, #0
	adds r0, #0x56
	ldrb r4, [r0]
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrh r2, [r0, #8]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B1214: .4byte gUnk_020229D8

	thumb_func_start sub_080B1218
sub_080B1218: @ 0x080B1218
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B1250 @ =sub_080B1254
	movs r1, #1
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x13
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B1250: .4byte sub_080B1254

	thumb_func_start sub_080B1254
sub_080B1254: @ 0x080B1254
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #8]
	movs r2, #2
	ands r0, r2
	cmp r0, #0
	beq _080B1268
	adds r0, r1, #0
	adds r0, #0x83
	strb r2, [r0]
_080B1268:
	pop {r0}
	bx r0

	thumb_func_start CreateSirKibble
CreateSirKibble: @ 0x080B126C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080B12A0 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080B12A4 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B12A8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B12B0
	.align 2, 0
_080B12A0: .4byte ObjectMain
_080B12A4: .4byte ObjectDestroy
_080B12A8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B12B0:
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
	ble _080B12D0
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080B12D0:
	movs r1, #5
	rsbs r1, r1, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r2, #7
	rsbs r2, r2, #0
	movs r0, #0xa
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #7
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	ldrb r0, [r6, #0xe]
	cmp r0, #0
	blt _080B1308
	cmp r0, #1
	ble _080B1308
	cmp r0, #2
	beq _080B1310
_080B1308:
	adds r0, r4, #0
	bl sub_080B2160
	b _080B1316
_080B1310:
	adds r0, r4, #0
	bl sub_080B2210
_080B1316:
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

	thumb_func_start sub_080B132C
sub_080B132C: @ 0x080B132C
	push {r4, lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080B134C
	adds r0, r2, #0
	adds r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080B135C
	b _080B1358
_080B134C:
	adds r0, r2, #0
	subs r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080B135C
_080B1358:
	movs r0, #0
	strh r0, [r1]
_080B135C:
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B1368
sub_080B1368: @ 0x080B1368
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r3, [r0, #0xe]
	cmp r3, #0
	bne _080B13B6
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080B13A2
	adds r0, r2, #0
	adds r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	adds r5, r4, #0
	adds r5, #0x62
	cmp r0, #0
	ble _080B13F6
	strh r3, [r1]
	b _080B13F6
_080B13A2:
	adds r0, r2, #0
	subs r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	adds r5, r4, #0
	adds r5, #0x62
	cmp r0, #0
	bge _080B13F6
	strh r3, [r1]
	b _080B13F6
_080B13B6:
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _080B13F6
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B13EC
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B13F4
_080B13EC:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B13F4:
	str r0, [r4, #8]
_080B13F6:
	ldrb r1, [r5]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080B141A
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x10
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080B141A
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r2]
_080B141A:
	movs r0, #4
	ldrsh r2, [r4, r0]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	movs r0, #0xb4
	subs r0, r0, r1
	cmp r2, r0
	ble _080B1494
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r0, [r0, #0x40]
	ldr r1, [r4, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080B1454
	ldr r0, _080B1450 @ =0x00003FFF
	cmp r2, r0
	ble _080B145C
	b _080B148C
	.align 2, 0
_080B1450: .4byte 0x00003FFF
_080B1454:
	subs r1, r1, r0
	ldr r0, _080B147C @ =0x00003FFF
	cmp r1, r0
	bgt _080B148C
_080B145C:
	ldr r2, _080B1480 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080B1484 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B1488 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080B148C
	adds r0, r4, #0
	bl sub_080B21D8
	b _080B149A
	.align 2, 0
_080B147C: .4byte 0x00003FFF
_080B1480: .4byte gRngVal
_080B1484: .4byte 0x00196225
_080B1488: .4byte 0x3C6EF35F
_080B148C:
	adds r0, r4, #0
	bl sub_080B21A0
	b _080B149A
_080B1494:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_080B149A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080B14A0
sub_080B14A0: @ 0x080B14A0
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080B14C0
	adds r0, r2, #0
	adds r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080B14D0
	b _080B14CC
_080B14C0:
	adds r0, r2, #0
	subs r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080B14D0
_080B14CC:
	movs r0, #0
	strh r0, [r1]
_080B14D0:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080B14F8
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x10
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080B14F8
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r2]
_080B14F8:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0xa2
	ble _080B1538
	ldr r2, _080B1534 @ =sub_080B1368
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080B1548
	adds r0, r4, #0
	adds r0, #0x83
	movs r1, #1
	strb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0x80
	strh r3, [r2]
	ldr r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080B1548
	rsbs r0, r3, #0
	strh r0, [r2]
	b _080B1548
	.align 2, 0
_080B1534: .4byte sub_080B1368
_080B1538:
	cmp r0, #0x32
	bne _080B1542
	adds r0, r4, #0
	bl sub_080B1DF8
_080B1542:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_080B1548:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B1550
sub_080B1550: @ 0x080B1550
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080B1570
	adds r0, r2, #0
	adds r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080B1580
	b _080B157C
_080B1570:
	adds r0, r2, #0
	subs r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080B1580
_080B157C:
	movs r0, #0
	strh r0, [r1]
_080B1580:
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	bne _080B15A8
	subs r2, #0x10
	ldrh r0, [r2]
	subs r0, #0x2b
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080B15A8
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r2]
_080B15A8:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0x78
	bne _080B1622
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1]
	ldr r1, _080B1668 @ =gUnk_02020EE0
	ldr r0, _080B166C @ =gUnk_0203AD3C
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
	bne _080B1622
	ldrb r0, [r4]
	cmp r0, #0
	bne _080B15E6
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080B1622
_080B15E6:
	ldr r1, _080B1670 @ =gUnk_08D60FA4
	ldr r5, _080B1674 @ =gSongTable
	ldr r2, _080B1678 @ =0x00000A2C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080B160A
	ldr r1, _080B167C @ =0x00000A28
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080B1622
_080B160A:
	cmp r3, #0
	beq _080B161C
	ldr r0, _080B1680 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B1622
_080B161C:
	ldr r0, _080B1684 @ =0x00000145
	bl m4aSongNumStart
_080B1622:
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0x78
	ble _080B168C
	ldrb r1, [r6]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B168C
	ldr r2, _080B1688 @ =sub_080B1368
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080B16A0
	adds r0, r4, #0
	adds r0, #0x83
	movs r1, #1
	strb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0x80
	strh r3, [r2]
	ldr r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080B16A0
	rsbs r0, r3, #0
	strh r0, [r2]
	b _080B16A0
	.align 2, 0
_080B1668: .4byte gUnk_02020EE0
_080B166C: .4byte gUnk_0203AD3C
_080B1670: .4byte gUnk_08D60FA4
_080B1674: .4byte gSongTable
_080B1678: .4byte 0x00000A2C
_080B167C: .4byte 0x00000A28
_080B1680: .4byte gUnk_0203AD10
_080B1684: .4byte 0x00000145
_080B1688: .4byte sub_080B1368
_080B168C:
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0x32
	bne _080B169A
	adds r0, r4, #0
	bl sub_080B1DF8
_080B169A:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_080B16A0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B16A8
sub_080B16A8: @ 0x080B16A8
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080B16D0
	adds r0, r2, #0
	adds r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080B16E0
	b _080B16DC
_080B16D0:
	adds r0, r2, #0
	subs r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080B16E0
_080B16DC:
	movs r0, #0
	strh r0, [r1]
_080B16E0:
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B16EC
sub_080B16EC: @ 0x080B16EC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080B1720 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080B1724 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B1728
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080B1730
	.align 2, 0
_080B1720: .4byte ObjectMain
_080B1724: .4byte ObjectDestroy
_080B1728:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080B1730:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	ldr r1, _080B17B4 @ =gUnk_02000140
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x5c]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #0x5c]
	subs r1, #0x25
	movs r2, #3
	rsbs r2, r2, #0
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
	bl ObjectInitSprite
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	ldrb r1, [r6, #0xe]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080B178E
	ldr r0, [r4, #8]
	orrs r0, r2
	str r0, [r4, #8]
_080B178E:
	ldr r2, _080B17B8 @ =gUnk_08351648
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
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080B17B4: .4byte gUnk_02000140
_080B17B8: .4byte gUnk_08351648

	thumb_func_start sub_080B17BC
sub_080B17BC: @ 0x080B17BC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x70]
	cmp r1, #0
	beq _080B17E8
	ldr r0, [r1, #8]
	movs r5, #0x80
	lsls r5, r5, #5
	ands r0, r5
	cmp r0, #0
	beq _080B17D6
	movs r0, #0
	str r0, [r4, #0x70]
_080B17D6:
	adds r0, r4, #0
	bl sub_0803925C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B17E8
	ldr r0, [r4, #8]
	orrs r0, r5
	str r0, [r4, #8]
_080B17E8:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B1820
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _080B180C @ =0xFFFFFD58
	cmp r2, r0
	bge _080B1814
	ldr r0, _080B1810 @ =0x0000FD58
	strh r0, [r1]
	b _080B183E
	.align 2, 0
_080B180C: .4byte 0xFFFFFD58
_080B1810: .4byte 0x0000FD58
_080B1814:
	movs r0, #0xaa
	lsls r0, r0, #2
	cmp r2, r0
	ble _080B183E
	strh r0, [r1]
	b _080B183E
_080B1820:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xaa
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080B183C
	ldr r2, _080B184C @ =0xFFFFFD58
	cmp r0, r2
	bge _080B183E
_080B183C:
	strh r2, [r1]
_080B183E:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B184C: .4byte 0xFFFFFD58

	thumb_func_start sub_080B1850
sub_080B1850: @ 0x080B1850
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _080B1888 @ =sub_080B1AC4
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080B188C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B1890
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B1898
	.align 2, 0
_080B1888: .4byte sub_080B1AC4
_080B188C: .4byte sub_0803DCCC
_080B1890:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B1898:
	adds r4, r0, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x44]
	str r6, [r4, #0x70]
	strh r1, [r4, #4]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080B1928 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080B18E8
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080B18E8:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r0, _080B192C @ =0x10000140
	str r0, [r4, #8]
	ldr r0, _080B1930 @ =0x20000043
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xaa
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r6, #8]
	ands r0, r3
	cmp r0, #0
	beq _080B1938
	ldr r0, [r4, #0x40]
	ldr r2, _080B1934 @ =0xFFFFF000
	adds r0, r0, r2
	str r0, [r4, #0x40]
	ldr r0, [r4, #8]
	orrs r0, r3
	str r0, [r4, #8]
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
	b _080B194C
	.align 2, 0
_080B1928: .4byte gUnk_03000510
_080B192C: .4byte 0x10000140
_080B1930: .4byte 0x20000043
_080B1934: .4byte 0xFFFFF000
_080B1938:
	ldr r0, [r4, #0x40]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_080B194C:
	movs r1, #3
	rsbs r1, r1, #0
	movs r2, #2
	rsbs r2, r2, #0
	movs r0, #2
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #3
	bl sub_0803E2B0
	movs r2, #0
	mov r8, r2
	str r2, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0803E308
	adds r1, r4, #0
	adds r1, #0x10
	ldr r0, _080B19D8 @ =0x0000032D
	mov sb, r0
	movs r0, #6
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #6
	mov r3, sb
	bl sub_080708DC
	adds r5, r4, #0
	adds r5, #0x2f
	mov r1, r8
	strb r1, [r5]
	ldr r3, [r6, #0xc]
	movs r0, #0x10
	ands r3, r0
	cmp r3, #0
	beq _080B19EE
	ldr r2, _080B19DC @ =gUnk_02020EE0
	ldr r0, _080B19E0 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r2, [r7]
	cmp r0, r2
	bne _080B19E8
	ldr r0, _080B19E4 @ =gUnk_08351648
	movs r1, #0x97
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r6, [r0]
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080B1A32
	adds r0, r6, #0
	b _080B1A1E
	.align 2, 0
_080B19D8: .4byte 0x0000032D
_080B19DC: .4byte gUnk_02020EE0
_080B19E0: .4byte gUnk_0203AD3C
_080B19E4: .4byte gUnk_08351648
_080B19E8:
	mov r2, r8
	strb r2, [r5]
	b _080B1A32
_080B19EE:
	ldr r2, _080B1A28 @ =gUnk_02020EE0
	ldr r0, _080B1A2C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r1, [r7]
	cmp r0, r1
	bne _080B1A30
	mov r0, sb
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080B1A32
	mov r0, sb
_080B1A1E:
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080B1A32
	.align 2, 0
_080B1A28: .4byte gUnk_02020EE0
_080B1A2C: .4byte gUnk_0203AD3C
_080B1A30:
	strb r3, [r5]
_080B1A32:
	ldr r1, _080B1AA4 @ =gUnk_02020EE0
	ldr r0, _080B1AA8 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	bne _080B1A96
	ldrb r0, [r4]
	cmp r0, #0
	bne _080B1A5A
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080B1A96
_080B1A5A:
	ldr r1, _080B1AAC @ =gUnk_08D60FA4
	ldr r4, _080B1AB0 @ =gSongTable
	ldr r2, _080B1AB4 @ =0x000009FC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080B1A7E
	ldr r1, _080B1AB8 @ =0x000009F8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080B1A96
_080B1A7E:
	cmp r3, #0
	beq _080B1A90
	ldr r0, _080B1ABC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B1A96
_080B1A90:
	ldr r0, _080B1AC0 @ =0x0000013F
	bl m4aSongNumStart
_080B1A96:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B1AA4: .4byte gUnk_02020EE0
_080B1AA8: .4byte gUnk_0203AD3C
_080B1AAC: .4byte gUnk_08D60FA4
_080B1AB0: .4byte gSongTable
_080B1AB4: .4byte 0x000009FC
_080B1AB8: .4byte 0x000009F8
_080B1ABC: .4byte gUnk_0203AD10
_080B1AC0: .4byte 0x0000013F

	thumb_func_start sub_080B1AC4
sub_080B1AC4: @ 0x080B1AC4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	ldr r0, _080B1AE8 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B1AEC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B1AF4
	.align 2, 0
_080B1AE8: .4byte gCurTask
_080B1AEC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B1AF4:
	adds r5, r0, #0
	ldr r0, [r5, #0x70]
	mov r8, r0
	ldr r2, _080B1B64 @ =gUnk_02020EE0
	ldr r0, _080B1B68 @ =gUnk_0203AD3C
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
	bne _080B1BAC
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080B1B74
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080B1BD0
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #6
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080B1B6C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080B1B70 @ =0x0400000A
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
	b _080B1BD0
	.align 2, 0
_080B1B64: .4byte gUnk_02020EE0
_080B1B68: .4byte gUnk_0203AD3C
_080B1B6C: .4byte 0xFFF7FFFF
_080B1B70: .4byte 0x0400000A
_080B1B74:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080B1BD0
	movs r0, #6
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080B1BA4 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080B1BA8 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080B1BD0
	.align 2, 0
_080B1BA4: .4byte 0xFFF7FFFF
_080B1BA8: .4byte 0x0400000A
_080B1BAC:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _080B1BC6
	ldr r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _080B1BC6
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0x10]
_080B1BC6:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_080B1BD0:
	mov r1, r8
	ldr r3, [r1, #0xc]
	movs r0, #0x10
	ands r3, r0
	cmp r3, #0
	beq _080B1C26
	ldr r2, _080B1C10 @ =gUnk_02020EE0
	ldr r0, _080B1C14 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r2, [r7]
	cmp r0, r2
	bne _080B1C1C
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080B1C7E
	ldr r0, _080B1C18 @ =gUnk_08351648
	movs r1, #0x97
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r6, [r0]
	b _080B1C50
	.align 2, 0
_080B1C10: .4byte gUnk_02020EE0
_080B1C14: .4byte gUnk_0203AD3C
_080B1C18: .4byte gUnk_08351648
_080B1C1C:
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	b _080B1C7E
_080B1C26:
	ldr r2, _080B1C6C @ =gUnk_02020EE0
	ldr r0, _080B1C70 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r2, [r7]
	cmp r0, r2
	bne _080B1C78
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080B1C7E
	ldr r6, _080B1C74 @ =0x0000032D
_080B1C50:
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080B1C7E
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080B1C7E
	.align 2, 0
_080B1C6C: .4byte gUnk_02020EE0
_080B1C70: .4byte gUnk_0203AD3C
_080B1C74: .4byte 0x0000032D
_080B1C78:
	adds r0, r5, #0
	adds r0, #0x2f
	strb r3, [r0]
_080B1C7E:
	mov r0, r8
	cmp r0, #0
	beq _080B1CA4
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080B1C90
	ldr r0, _080B1CD4 @ =0x0000FFFF
	strh r0, [r7]
_080B1C90:
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080B1CA4
	movs r0, #0
	str r0, [r5, #0x70]
	mov r8, r0
_080B1CA4:
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080B1CB2
	b _080B1DE6
_080B1CB2:
	mov r2, r8
	cmp r2, #0
	beq _080B1CD8
	adds r0, r5, #0
	mov r1, r8
	bl sub_0803925C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B1CD8
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
	b _080B1DE6
	.align 2, 0
_080B1CD4: .4byte 0x0000FFFF
_080B1CD8:
	ldr r1, [r5, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080B1D56
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080B1D56
	adds r1, r5, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080B1D1C
	ldr r2, _080B1D14 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080B1D18 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080B1D1E
	.align 2, 0
_080B1D14: .4byte gCurLevelInfo
_080B1D18: .4byte 0x0000065E
_080B1D1C:
	movs r1, #0xff
_080B1D1E:
	cmp r1, #0xff
	beq _080B1D56
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080B1D7C @ =gUnk_02022EB0
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
	ldr r2, _080B1D80 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080B1D56:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B1D98
	adds r0, r5, #0
	adds r0, #0x50
	ldrh r1, [r0]
	adds r1, #0x10
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	ldr r1, _080B1D84 @ =0xFFFFFD58
	adds r2, r0, #0
	cmp r3, r1
	bge _080B1D8C
	ldr r0, _080B1D88 @ =0x0000FD58
	strh r0, [r2]
	b _080B1DBC
	.align 2, 0
_080B1D7C: .4byte gUnk_02022EB0
_080B1D80: .4byte gUnk_02022F50
_080B1D84: .4byte 0xFFFFFD58
_080B1D88: .4byte 0x0000FD58
_080B1D8C:
	movs r0, #0xaa
	lsls r0, r0, #2
	cmp r3, r0
	ble _080B1DBC
	strh r0, [r2]
	b _080B1DBC
_080B1D98:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xaa
	lsls r3, r3, #2
	adds r2, r1, #0
	cmp r0, r3
	ble _080B1DB4
	strh r3, [r2]
	b _080B1DBC
_080B1DB4:
	ldr r1, _080B1DF4 @ =0xFFFFFD58
	cmp r0, r1
	bge _080B1DBC
	strh r1, [r2]
_080B1DBC:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080B1DE0
	movs r0, #0
	ldrsh r1, [r2, r0]
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
_080B1DE0:
	adds r0, r5, #0
	bl sub_0806F8BC
_080B1DE6:
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B1DF4: .4byte 0xFFFFFD58

	thumb_func_start sub_080B1DF8
sub_080B1DF8: @ 0x080B1DF8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #0
	ldr r1, _080B1E0C @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080B1E10 @ =gUnk_020229E0
	b _080B1E28
	.align 2, 0
_080B1E0C: .4byte gUnk_020229D4
_080B1E10: .4byte gUnk_020229E0
_080B1E14:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080B1E30
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080B1E28:
	cmp r0, #0
	bne _080B1E14
	orrs r2, r3
	str r2, [r1]
_080B1E30:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	movs r3, #0
	strh r0, [r1, #6]
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xd5
	strb r0, [r1, #0xc]
	strb r3, [r1, #0xe]
	strb r3, [r1, #0xf]
	adds r0, r5, #0
	adds r0, #0x87
	ldrb r0, [r0]
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
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl CreateObject
	adds r2, r0, #0
	str r5, [r2, #0x70]
	ldr r0, [r5, #8]
	ands r0, r4
	cmp r0, #0
	beq _080B1E9A
	ldr r0, [r2, #8]
	orrs r0, r4
	str r0, [r2, #8]
_080B1E9A:
	adds r1, r2, #0
	adds r1, #0x50
	movs r0, #0xaa
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r5, #8]
	ands r0, r4
	cmp r0, #0
	beq _080B1EC8
	ldr r0, [r2, #0x40]
	ldr r3, _080B1EC4 @ =0xFFFFF000
	adds r0, r0, r3
	str r0, [r2, #0x40]
	ldr r0, [r2, #8]
	orrs r0, r4
	str r0, [r2, #8]
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
	b _080B1EDC
	.align 2, 0
_080B1EC4: .4byte 0xFFFFF000
_080B1EC8:
	ldr r0, [r2, #0x40]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r2, #0x40]
	ldr r0, [r2, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
_080B1EDC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B1EE4
sub_080B1EE4: @ 0x080B1EE4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080B1F18 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080B1F1C @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B1F20
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _080B1F28
	.align 2, 0
_080B1F18: .4byte ObjectMain
_080B1F1C: .4byte ObjectDestroy
_080B1F20:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_080B1F28:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	adds r0, r5, #0
	adds r0, #0x63
	movs r3, #0
	movs r1, #1
	strb r1, [r0]
	ldr r2, [r5, #8]
	movs r0, #0x40
	orrs r2, r0
	ldr r0, [r5, #0xc]
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r4, #2
	orrs r0, r4
	str r0, [r5, #0xc]
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #1
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x15
	orrs r2, r0
	str r2, [r5, #8]
	ldr r0, _080B1FC4 @ =0x20000043
	str r0, [r5, #0x68]
	ldr r0, [r5, #0x5c]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r5, #0x5c]
	adds r0, r5, #0
	adds r0, #0x9e
	strb r3, [r0]
	ldr r0, _080B1FC8 @ =sub_080B2224
	str r0, [r5, #0x7c]
	subs r1, #0x23
	movs r2, #2
	rsbs r2, r2, #0
	str r4, [sp]
	adds r0, r5, #0
	movs r3, #3
	bl sub_0803E2B0
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #2
	movs r3, #2
	bl sub_0803E308
	adds r0, r5, #0
	bl ObjectInitSprite
	ldr r2, _080B1FCC @ =gUnk_08351648
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
_080B1FC4: .4byte 0x20000043
_080B1FC8: .4byte sub_080B2224
_080B1FCC: .4byte gUnk_08351648

	thumb_func_start sub_080B1FD0
sub_080B1FD0: @ 0x080B1FD0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B2058 @ =sub_080B207C
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _080B205C @ =gUnk_02020EE0
	ldr r0, _080B2060 @ =gUnk_0203AD3C
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
	bne _080B2050
	ldrb r0, [r4]
	cmp r0, #0
	bne _080B2014
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080B2050
_080B2014:
	ldr r1, _080B2064 @ =gUnk_08D60FA4
	ldr r4, _080B2068 @ =gSongTable
	ldr r2, _080B206C @ =0x000009FC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080B2038
	ldr r1, _080B2070 @ =0x000009F8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080B2050
_080B2038:
	cmp r3, #0
	beq _080B204A
	ldr r0, _080B2074 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B2050
_080B204A:
	ldr r0, _080B2078 @ =0x0000013F
	bl m4aSongNumStart
_080B2050:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B2058: .4byte sub_080B207C
_080B205C: .4byte gUnk_02020EE0
_080B2060: .4byte gUnk_0203AD3C
_080B2064: .4byte gUnk_08D60FA4
_080B2068: .4byte gSongTable
_080B206C: .4byte 0x000009FC
_080B2070: .4byte 0x000009F8
_080B2074: .4byte gUnk_0203AD10
_080B2078: .4byte 0x0000013F

	thumb_func_start sub_080B207C
sub_080B207C: @ 0x080B207C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x70]
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	cmp r2, #0
	beq _080B20A8
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0803925C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B20A8
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	b _080B20FE
_080B20A8:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B20E0
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _080B20CC @ =0xFFFFFD58
	cmp r2, r0
	bge _080B20D4
	ldr r0, _080B20D0 @ =0x0000FD58
	strh r0, [r1]
	b _080B20FE
	.align 2, 0
_080B20CC: .4byte 0xFFFFFD58
_080B20D0: .4byte 0x0000FD58
_080B20D4:
	movs r0, #0xaa
	lsls r0, r0, #2
	cmp r2, r0
	ble _080B20FE
	strh r0, [r1]
	b _080B20FE
_080B20E0:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xaa
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080B20FC
	ldr r2, _080B2104 @ =0xFFFFFD58
	cmp r0, r2
	bge _080B20FE
_080B20FC:
	strh r2, [r1]
_080B20FE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B2104: .4byte 0xFFFFFD58

	thumb_func_start sub_080B2108
sub_080B2108: @ 0x080B2108
	push {lr}
	adds r1, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	blt _080B211E
	cmp r0, #1
	ble _080B211E
	cmp r0, #2
	beq _080B2126
_080B211E:
	adds r0, r1, #0
	bl sub_080B2160
	b _080B212C
_080B2126:
	adds r0, r1, #0
	bl sub_080B2210
_080B212C:
	pop {r0}
	bx r0

	thumb_func_start sub_080B2130
sub_080B2130: @ 0x080B2130
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B215C @ =sub_080B17BC
	movs r1, #0
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0xaa
	lsls r3, r3, #2
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B2154
	rsbs r0, r3, #0
	strh r0, [r2]
_080B2154:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B215C: .4byte sub_080B17BC

	thumb_func_start sub_080B2160
sub_080B2160: @ 0x080B2160
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B219C @ =sub_080B1368
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080B2194
	adds r0, r4, #0
	adds r0, #0x83
	movs r1, #1
	strb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0x80
	strh r3, [r2]
	ldr r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080B2194
	rsbs r0, r3, #0
	strh r0, [r2]
_080B2194:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B219C: .4byte sub_080B1368

	thumb_func_start sub_080B21A0
sub_080B21A0: @ 0x080B21A0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B21C4 @ =sub_080B14A0
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B21C8
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B21D0
	.align 2, 0
_080B21C4: .4byte sub_080B14A0
_080B21C8:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B21D0:
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B21D8
sub_080B21D8: @ 0x080B21D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B21FC @ =sub_080B1550
	movs r1, #3
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B2200
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080B2206
	.align 2, 0
_080B21FC: .4byte sub_080B1550
_080B2200:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080B2206:
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B2210
sub_080B2210: @ 0x080B2210
	push {lr}
	ldr r2, _080B2220 @ =sub_080B16A8
	movs r1, #0
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080B2220: .4byte sub_080B16A8

	thumb_func_start sub_080B2224
sub_080B2224: @ 0x080B2224
	push {lr}
	adds r3, r0, #0
	ldr r2, [r3, #0x70]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _080B2242
	adds r0, r2, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _080B2246
_080B2242:
	movs r0, #0
	str r0, [r3, #0x70]
_080B2246:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateLaserBall
CreateLaserBall: @ 0x080B224C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080B2280 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080B2284 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B2288
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B2290
	.align 2, 0
_080B2280: .4byte ObjectMain
_080B2284: .4byte ObjectDestroy
_080B2288:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B2290:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #5
	orrs r0, r1
	str r0, [r4, #0xc]
	subs r1, #0xa
	movs r2, #3
	rsbs r2, r2, #0
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
	bl ObjectInitSprite
	ldr r0, [r4, #0xc]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B22F0
	ldr r1, _080B22EC @ =gUnk_08353F98
	adds r0, r4, #0
	bl sub_08088398
	b _080B22F8
	.align 2, 0
_080B22EC: .4byte gUnk_08353F98
_080B22F0:
	ldr r1, _080B2328 @ =gUnk_08353F88
	adds r0, r4, #0
	bl sub_08085CE8
_080B22F8:
	ldr r2, _080B232C @ =gUnk_08351648
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
_080B2328: .4byte gUnk_08353F88
_080B232C: .4byte gUnk_08351648

	thumb_func_start sub_080B2330
sub_080B2330: @ 0x080B2330
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #1
	bne _080B2364
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080B2364
	movs r0, #0
	strb r0, [r2]
	movs r2, #0
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	cmp r0, #0
	bne _080B2362
	movs r2, #1
_080B2362:
	strb r2, [r1]
_080B2364:
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r2, [r4, #0x40]
	ldr r0, [r0, #0x40]
	mov sb, r1
	cmp r2, r0
	bgt _080B2376
	b _080B2528
_080B2376:
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r1, [r2]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	mov sl, r2
	cmp r0, #0
	bne _080B238E
	adds r0, r4, #0
	adds r0, #0x83
	strb r3, [r0]
_080B238E:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	movs r1, #0
	mov r8, r1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r7, r4, #0
	adds r7, #0xa0
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #0x1f
	bls _080B23CA
	adds r0, r4, #0
	bl sub_0803D368
	mov r2, sb
	str r0, [r2]
	mov r3, r8
	strb r3, [r5]
	ldr r0, [r2]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	strh r0, [r7]
	ldr r0, [r2]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080B23CA:
	ldr r2, [r4, #0x44]
	ldr r1, _080B23F4 @ =0xFFFFFC00
	ands r2, r1
	movs r5, #0
	ldrsh r0, [r6, r5]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	ble _080B23F8
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x33
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _080B2446
	movs r0, #0xff
	b _080B2444
	.align 2, 0
_080B23F4: .4byte 0xFFFFFC00
_080B23F8:
	cmp r2, r0
	bge _080B2416
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x33
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xff
	rsbs r2, r2, #0
	cmp r0, r2
	bge _080B2446
	strh r2, [r1]
	b _080B2446
_080B2416:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080B2436
	adds r0, r2, #0
	adds r0, #0x38
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080B2446
	mov r5, r8
	strh r5, [r1]
	b _080B2446
_080B2436:
	adds r0, r2, #0
	subs r0, #0x38
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080B2446
	mov r0, r8
_080B2444:
	strh r0, [r1]
_080B2446:
	ldr r2, [r4, #0x40]
	ldr r1, _080B247C @ =0xFFFFFC00
	ands r2, r1
	movs r3, #0
	ldrsh r0, [r7, r3]
	adds r0, #0x40
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	bge _080B2480
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x33
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _080B24C6
	movs r0, #0xff
	b _080B24FC
	.align 2, 0
_080B247C: .4byte 0xFFFFFC00
_080B2480:
	cmp r2, r0
	ble _080B24D2
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080B24B0
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x33
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xff
	rsbs r2, r2, #0
	cmp r0, r2
	blt _080B24CE
	cmp r0, #0xff
	ble _080B24FE
	movs r0, #0xff
	b _080B24FC
_080B24B0:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x33
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _080B24C6
	movs r0, #0xff
	b _080B24FC
_080B24C6:
	movs r2, #0xff
	rsbs r2, r2, #0
	cmp r0, r2
	bge _080B24FE
_080B24CE:
	strh r2, [r1]
	b _080B24FE
_080B24D2:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080B24EE
	adds r0, r2, #0
	adds r0, #0x38
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080B24FE
	b _080B24FA
_080B24EE:
	adds r0, r2, #0
	subs r0, #0x38
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080B24FE
_080B24FA:
	movs r0, #0
_080B24FC:
	strh r0, [r1]
_080B24FE:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	mov r2, sl
	ldrb r1, [r2]
	orrs r0, r1
	str r0, [r4, #8]
	ldr r1, [r4, #0x40]
	ldr r2, _080B2524 @ =0xFFFFFC00
	ands r1, r2
	mov r5, sb
	ldr r3, [r5]
	ldr r0, [r3, #0x40]
	movs r5, #0x80
	lsls r5, r5, #7
	b _080B26CE
	.align 2, 0
_080B2524: .4byte 0xFFFFFC00
_080B2528:
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r1, [r2]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	mov sl, r2
	cmp r0, #0
	beq _080B2540
	adds r0, r4, #0
	adds r0, #0x83
	strb r3, [r0]
_080B2540:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	movs r1, #0
	mov r8, r1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r7, r4, #0
	adds r7, #0xa0
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #0x1f
	bls _080B257C
	adds r0, r4, #0
	bl sub_0803D368
	mov r2, sb
	str r0, [r2]
	mov r3, r8
	strb r3, [r5]
	ldr r0, [r2]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	strh r0, [r7]
	ldr r0, [r2]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080B257C:
	ldr r2, [r4, #0x44]
	ldr r1, _080B25A4 @ =0xFFFFFC00
	ands r2, r1
	movs r5, #0
	ldrsh r0, [r6, r5]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	ble _080B25A8
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x33
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _080B25F6
	movs r0, #0xff
	b _080B25F4
	.align 2, 0
_080B25A4: .4byte 0xFFFFFC00
_080B25A8:
	cmp r2, r0
	bge _080B25C6
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x33
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xff
	rsbs r2, r2, #0
	cmp r0, r2
	bge _080B25F6
	strh r2, [r1]
	b _080B25F6
_080B25C6:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080B25E6
	adds r0, r2, #0
	adds r0, #0x38
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080B25F6
	mov r5, r8
	strh r5, [r1]
	b _080B25F6
_080B25E6:
	adds r0, r2, #0
	subs r0, #0x38
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080B25F6
	mov r0, r8
_080B25F4:
	strh r0, [r1]
_080B25F6:
	ldr r2, [r4, #0x40]
	ldr r1, _080B262C @ =0xFFFFFC00
	ands r2, r1
	movs r3, #0
	ldrsh r0, [r7, r3]
	subs r0, #0x40
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	bge _080B2630
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x33
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _080B2676
	movs r0, #0xff
	b _080B26AC
	.align 2, 0
_080B262C: .4byte 0xFFFFFC00
_080B2630:
	cmp r2, r0
	ble _080B2682
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080B2660
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x33
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xff
	rsbs r2, r2, #0
	cmp r0, r2
	blt _080B267E
	cmp r0, #0xff
	ble _080B26AE
	movs r0, #0xff
	b _080B26AC
_080B2660:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x33
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _080B2676
	movs r0, #0xff
	b _080B26AC
_080B2676:
	movs r2, #0xff
	rsbs r2, r2, #0
	cmp r0, r2
	bge _080B26AE
_080B267E:
	strh r2, [r1]
	b _080B26AE
_080B2682:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080B269E
	adds r0, r2, #0
	adds r0, #0x38
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080B26AE
	b _080B26AA
_080B269E:
	adds r0, r2, #0
	subs r0, #0x38
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080B26AE
_080B26AA:
	movs r0, #0
_080B26AC:
	strh r0, [r1]
_080B26AE:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	mov r2, sl
	ldrb r1, [r2]
	orrs r0, r1
	str r0, [r4, #8]
	ldr r1, [r4, #0x40]
	ldr r2, _080B26EC @ =0xFFFFFC00
	ands r1, r2
	mov r5, sb
	ldr r3, [r5]
	ldr r0, [r3, #0x40]
	ldr r5, _080B26F0 @ =0xFFFFC000
_080B26CE:
	adds r0, r0, r5
	ands r0, r2
	cmp r1, r0
	bne _080B26F4
	ldr r1, [r4, #0x44]
	ands r1, r2
	ldr r0, [r3, #0x44]
	ands r0, r2
	cmp r1, r0
	bne _080B26F4
	adds r0, r4, #0
	bl sub_080B2C48
	b _080B2700
	.align 2, 0
_080B26EC: .4byte 0xFFFFFC00
_080B26F0: .4byte 0xFFFFC000
_080B26F4:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	bne _080B2700
	adds r0, r4, #0
	bl sub_080B2C48
_080B2700:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B2710
sub_080B2710: @ 0x080B2710
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #3
	bne _080B274A
	adds r5, r4, #0
	adds r5, #0x85
	ldrb r0, [r5]
	cmp r0, #0
	bne _080B2738
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
_080B2738:
	ldrb r0, [r4, #1]
	cmp r0, #3
	bne _080B274A
	adds r0, r4, #0
	bl sub_080B2780
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
_080B274A:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080B277A
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	bne _080B276A
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #3
	strb r0, [r1]
_080B276A:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B277A
	adds r0, r4, #0
	bl sub_080B2CAC
_080B277A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080B2780
sub_080B2780: @ 0x080B2780
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _080B27B8 @ =sub_08070580
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080B27BC @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x8c
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B27C0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B27C8
	.align 2, 0
_080B27B8: .4byte sub_08070580
_080B27BC: .4byte sub_0803DCCC
_080B27C0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B27C8:
	adds r4, r0, #0
	bl sub_0803E380
	movs r2, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x44]
	str r6, [r4, #0x70]
	movs r0, #0
	mov sb, r0
	strh r2, [r4, #4]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x56
	strb r0, [r3]
	ldr r1, _080B2898 @ =gUnk_03000510
	mov ip, r1
	ldrb r1, [r1, #4]
	movs r5, #1
	adds r0, r5, #0
	ldrb r7, [r3]
	lsls r0, r7
	movs r7, #0x10
	mov r8, r7
	orrs r0, r7
	ands r1, r0
	cmp r1, #0
	beq _080B2820
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080B2820:
	ldr r0, _080B289C @ =sub_080B2A30
	str r0, [r4, #0x78]
	ldr r1, _080B28A0 @ =sub_080B2D74
	str r1, [r4, #0x7c]
	adds r0, r4, #0
	adds r0, #0x80
	str r1, [r0]
	adds r0, #4
	str r2, [r0]
	adds r0, #4
	mov r1, sb
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strh r2, [r0]
	subs r0, #0x27
	strb r5, [r0]
	ldr r2, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0x15
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, _080B28A4 @ =0x20000043
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	mov r7, ip
	ldrb r1, [r7, #4]
	adds r0, r5, #0
	ldrb r3, [r3]
	lsls r0, r3
	mov r3, r8
	orrs r0, r3
	ands r1, r0
	cmp r1, #0
	beq _080B2878
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r2, r0
	str r2, [r4, #8]
_080B2878:
	ldr r0, [r6, #8]
	ands r0, r5
	cmp r0, #0
	beq _080B28A8
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xf8
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r0, [r4, #8]
	orrs r0, r5
	str r0, [r4, #8]
	ldr r0, [r4, #0x40]
	subs r0, #0x10
	b _080B28B6
	.align 2, 0
_080B2898: .4byte gUnk_03000510
_080B289C: .4byte sub_080B2A30
_080B28A0: .4byte sub_080B2D74
_080B28A4: .4byte 0x20000043
_080B28A8:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r1]
	ldr r0, [r4, #0x40]
	adds r0, #0x10
_080B28B6:
	str r0, [r4, #0x40]
	movs r2, #3
	rsbs r2, r2, #0
	movs r0, #3
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #2
	movs r3, #0xa
	bl sub_0803E2B0
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x10
	movs r3, #0x12
	bl sub_0803E308
	adds r1, r4, #0
	adds r1, #0x10
	ldr r7, _080B2948 @ =0x00000321
	mov r8, r7
	movs r0, #6
	str r0, [sp]
	movs r0, #9
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #4
	mov r3, r8
	bl sub_080708DC
	adds r5, r4, #0
	adds r5, #0x2f
	movs r0, #0
	mov ip, r0
	mov r1, ip
	strb r1, [r5]
	ldr r3, [r6, #0xc]
	movs r0, #0x10
	ands r3, r0
	cmp r3, #0
	beq _080B295E
	ldr r2, _080B294C @ =gUnk_02020EE0
	ldr r0, _080B2950 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r2, [r7]
	cmp r0, r2
	bne _080B2958
	ldr r0, _080B2954 @ =gUnk_08351648
	movs r3, #0x97
	lsls r3, r3, #3
	adds r0, r0, r3
	ldrh r6, [r0]
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080B29A2
	adds r0, r6, #0
	b _080B298E
	.align 2, 0
_080B2948: .4byte 0x00000321
_080B294C: .4byte gUnk_02020EE0
_080B2950: .4byte gUnk_0203AD3C
_080B2954: .4byte gUnk_08351648
_080B2958:
	mov r0, ip
	strb r0, [r5]
	b _080B29A2
_080B295E:
	ldr r2, _080B2998 @ =gUnk_02020EE0
	ldr r0, _080B299C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r1, [r7]
	cmp r0, r1
	bne _080B29A0
	mov r0, r8
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080B29A2
	mov r0, r8
_080B298E:
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080B29A2
	.align 2, 0
_080B2998: .4byte gUnk_02020EE0
_080B299C: .4byte gUnk_0203AD3C
_080B29A0:
	strb r3, [r5]
_080B29A2:
	ldr r1, _080B2A18 @ =gUnk_02020EE0
	ldr r0, _080B2A1C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	bne _080B2A0A
	ldrb r0, [r4]
	cmp r0, #0
	bne _080B29CA
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080B2A0A
_080B29CA:
	ldr r1, _080B2A20 @ =gUnk_08D60FA4
	ldr r4, _080B2A24 @ =gSongTable
	ldr r2, _080B2A28 @ =0x000009E4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080B29F0
	movs r7, #0x9e
	lsls r7, r7, #4
	adds r0, r4, r7
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080B2A0A
_080B29F0:
	cmp r3, #0
	beq _080B2A02
	ldr r0, _080B2A2C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B2A0A
_080B2A02:
	movs r0, #0x9e
	lsls r0, r0, #1
	bl m4aSongNumStart
_080B2A0A:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B2A18: .4byte gUnk_02020EE0
_080B2A1C: .4byte gUnk_0203AD3C
_080B2A20: .4byte gUnk_08D60FA4
_080B2A24: .4byte gSongTable
_080B2A28: .4byte 0x000009E4
_080B2A2C: .4byte gUnk_0203AD10

	thumb_func_start sub_080B2A30
sub_080B2A30: @ 0x080B2A30
	push {r4, r5, r6, lr}
	sub sp, #0x28
	adds r5, r0, #0
	ldr r6, [r5, #0x70]
	ldr r2, _080B2AA0 @ =gUnk_02020EE0
	ldr r0, _080B2AA4 @ =gUnk_0203AD3C
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
	bne _080B2AE8
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080B2AB0
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080B2B0C
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #4
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080B2AA8 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080B2AAC @ =0x0400000A
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
	b _080B2B0C
	.align 2, 0
_080B2AA0: .4byte gUnk_02020EE0
_080B2AA4: .4byte gUnk_0203AD3C
_080B2AA8: .4byte 0xFFF7FFFF
_080B2AAC: .4byte 0x0400000A
_080B2AB0:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080B2B0C
	movs r0, #4
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080B2AE0 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080B2AE4 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080B2B0C
	.align 2, 0
_080B2AE0: .4byte 0xFFF7FFFF
_080B2AE4: .4byte 0x0400000A
_080B2AE8:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _080B2B02
	ldr r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _080B2B02
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0x10]
_080B2B02:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_080B2B0C:
	ldr r3, [r6, #0xc]
	movs r0, #0x10
	ands r3, r0
	cmp r3, #0
	beq _080B2B5E
	ldr r2, _080B2B48 @ =gUnk_02020EE0
	ldr r0, _080B2B4C @ =gUnk_0203AD3C
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
	bne _080B2B54
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080B2BB6
	ldr r0, _080B2B50 @ =gUnk_08351648
	movs r1, #0x97
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r6, [r0]
	b _080B2B86
	.align 2, 0
_080B2B48: .4byte gUnk_02020EE0
_080B2B4C: .4byte gUnk_0203AD3C
_080B2B50: .4byte gUnk_08351648
_080B2B54:
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	b _080B2BB6
_080B2B5E:
	ldr r2, _080B2BA4 @ =gUnk_02020EE0
	ldr r0, _080B2BA8 @ =gUnk_0203AD3C
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
	bne _080B2BB0
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080B2BB6
	ldr r6, _080B2BAC @ =0x00000321
_080B2B86:
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080B2BB6
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080B2BB6
	.align 2, 0
_080B2BA4: .4byte gUnk_02020EE0
_080B2BA8: .4byte gUnk_0203AD3C
_080B2BAC: .4byte 0x00000321
_080B2BB0:
	adds r0, r5, #0
	adds r0, #0x2f
	strb r3, [r0]
_080B2BB6:
	adds r0, r5, #0
	adds r0, #0x88
	ldrb r0, [r0]
	cmp r0, #0
	beq _080B2BD6
	ldr r1, [r5, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B2BD6
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r5, #8]
	movs r0, #1
	b _080B2BD8
_080B2BD6:
	movs r0, #0
_080B2BD8:
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080B2BE0
sub_080B2BE0: @ 0x080B2BE0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080B2C08
	adds r0, r4, #0
	bl sub_080B2D08
	b _080B2C42
_080B2C08:
	ldr r2, _080B2C28 @ =sub_080B2330
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B2C2C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B2C34
	.align 2, 0
_080B2C28: .4byte sub_080B2330
_080B2C2C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B2C34:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x85
	strb r0, [r1]
_080B2C42:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B2C48
sub_080B2C48: @ 0x080B2C48
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B2C7C @ =sub_080B2710
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r2, _080B2C80 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080B2C84 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B2C88 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080B2C8C @ =0x00005554
	cmp r2, r0
	bhi _080B2C90
	movs r1, #0
	b _080B2C9A
	.align 2, 0
_080B2C7C: .4byte sub_080B2710
_080B2C80: .4byte gRngVal
_080B2C84: .4byte 0x00196225
_080B2C88: .4byte 0x3C6EF35F
_080B2C8C: .4byte 0x00005554
_080B2C90:
	ldr r0, _080B2CA8 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080B2C9A
	movs r1, #1
_080B2C9A:
	adds r1, #1
	adds r0, r4, #0
	adds r0, #0x85
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B2CA8: .4byte 0x0000AAA9

	thumb_func_start sub_080B2CAC
sub_080B2CAC: @ 0x080B2CAC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B2CCC @ =sub_080B2CD0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
	adds r4, #0x52
	movs r0, #0
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B2CCC: .4byte sub_080B2CD0

	thumb_func_start sub_080B2CD0
sub_080B2CD0: @ 0x080B2CD0
	push {lr}
	adds r2, r0, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r2, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B2CE8
	adds r1, r2, #0
	adds r1, #0x50
	movs r0, #0x48
	b _080B2CEE
_080B2CE8:
	adds r1, r2, #0
	adds r1, #0x50
	ldr r0, _080B2D04 @ =0x0000FFB8
_080B2CEE:
	strh r0, [r1]
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	pop {r0}
	bx r0
	.align 2, 0
_080B2D04: .4byte 0x0000FFB8

	thumb_func_start sub_080B2D08
sub_080B2D08: @ 0x080B2D08
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B2D2C @ =sub_080B2D68
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B2D30
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B2D38
	.align 2, 0
_080B2D2C: .4byte sub_080B2D68
_080B2D30:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B2D38:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x85
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B2D68
sub_080B2D68: @ 0x080B2D68
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_080B2D74
sub_080B2D74: @ 0x080B2D74
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x2a
	movs r2, #0
	movs r0, #7
	strb r0, [r1]
	adds r1, #0x5e
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r3, #8]
	ldr r1, _080B2D9C @ =0xFFFFFDFF
	ands r0, r1
	ldr r1, _080B2DA0 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r3, #8]
	adds r0, r3, #0
	adds r0, #0x50
	strh r2, [r0]
	movs r0, #0
	bx lr
	.align 2, 0
_080B2D9C: .4byte 0xFFFFFDFF
_080B2DA0: .4byte 0xFFFFFEFF

	thumb_func_start CreateSwordKnight
CreateSwordKnight: @ 0x080B2DA4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080B2DD8 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080B2DDC @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B2DE0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080B2DE8
	.align 2, 0
_080B2DD8: .4byte ObjectMain
_080B2DDC: .4byte ObjectDestroy
_080B2DE0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080B2DE8:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #0x44]
	ldr r1, _080B2E64 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r4, #0x44]
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
	ldr r2, _080B2E68 @ =gUnk_08351648
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
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080B2E5A
	adds r0, r4, #0
	bl sub_080B37DC
_080B2E5A:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080B2E64: .4byte 0xFFFFFF00
_080B2E68: .4byte gUnk_08351648

	thumb_func_start sub_080B2E6C
sub_080B2E6C: @ 0x080B2E6C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r6, [r0, #0xe]
	cmp r6, #0
	bne _080B2EA8
	adds r5, r4, #0
	adds r5, #0x50
	movs r2, #0x80
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B2E9A
	rsbs r0, r2, #0
	strh r0, [r5]
_080B2E9A:
	adds r0, r4, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B2EA8
	strh r6, [r5]
_080B2EA8:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bhi _080B2F34
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	adds r5, r4, #0
	adds r5, #0xac
	cmp r0, #0
	beq _080B2ECA
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r5]
_080B2ECA:
	ldr r0, [r5]
	ldr r0, [r0, #0x40]
	ldr r1, [r4, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080B2EE4
	ldr r0, _080B2EE0 @ =0x00003FFF
	cmp r2, r0
	ble _080B2EEC
	b _080B2F2C
	.align 2, 0
_080B2EE0: .4byte 0x00003FFF
_080B2EE4:
	subs r1, r1, r0
	ldr r0, _080B2F14 @ =0x00003FFF
	cmp r1, r0
	bgt _080B2F2C
_080B2EEC:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	ldr r2, _080B2F18 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080B2F1C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B2F20 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #3
	bne _080B2F24
	adds r0, r4, #0
	bl sub_080B3A60
	b _080B2F34
	.align 2, 0
_080B2F14: .4byte 0x00003FFF
_080B2F18: .4byte gRngVal
_080B2F1C: .4byte 0x00196225
_080B2F20: .4byte 0x3C6EF35F
_080B2F24:
	adds r0, r4, #0
	bl sub_080B3AAC
	b _080B2F34
_080B2F2C:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #1
	strb r0, [r1]
_080B2F34:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B2F3C
sub_080B2F3C: @ 0x080B2F3C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080B2F5C
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
_080B2F5C:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r6, [r0, #0xe]
	cmp r6, #0
	bne _080B2F8C
	adds r5, r4, #0
	adds r5, #0x50
	ldr r0, _080B2FBC @ =0x0000FF80
	strh r0, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B2F7E
	movs r0, #0x80
	strh r0, [r5]
_080B2F7E:
	adds r0, r4, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B2F8C
	strh r6, [r5]
_080B2F8C:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x5a
	ble _080B2FDC
	ldr r2, _080B2FC0 @ =sub_080B2E6C
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B2FC4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B2FCC
	.align 2, 0
_080B2FBC: .4byte 0x0000FF80
_080B2FC0: .4byte sub_080B2E6C
_080B2FC4:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B2FCC:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_080B2FDC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B2FE4
sub_080B2FE4: @ 0x080B2FE4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080B306A
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #2
	bne _080B3082
	ldr r2, _080B3024 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080B3028 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B302C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #3
	bne _080B3030
	adds r0, r4, #0
	bl sub_080B3AAC
	b _080B31E2
	.align 2, 0
_080B3024: .4byte gRngVal
_080B3028: .4byte 0x00196225
_080B302C: .4byte 0x3C6EF35F
_080B3030:
	ldr r2, _080B3050 @ =sub_080B2F3C
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B3054
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B305C
	.align 2, 0
_080B3050: .4byte sub_080B2F3C
_080B3054:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B305C:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080B31E2
_080B306A:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #2
	bne _080B3082
	ldrb r0, [r4, #1]
	cmp r0, #2
	bne _080B3082
	adds r0, r4, #0
	bl sub_080B351C
_080B3082:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	mov sb, r0
	adds r3, r4, #0
	adds r3, #0x9f
	ldr r6, _080B3148 @ =gUnk_08353FCC
	adds r5, r4, #0
	adds r5, #0x50
	movs r2, #0x52
	adds r2, r2, r4
	mov ip, r2
	cmp r1, #0
	bne _080B3178
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080B30B8
	subs r0, r1, #1
	strb r0, [r3]
_080B30B8:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	mov r7, sb
	strb r0, [r7]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080B30DE
	mov r0, r8
	strb r1, [r0]
_080B30DE:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080B314C
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r1]
	movs r7, #0
	ldrsh r1, [r1, r7]
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r1, r0
	beq _080B3116
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B3116
	rsbs r0, r2, #0
	strh r0, [r5]
_080B3116:
	ldrb r2, [r3]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r1, #2]
	mov r8, r2
	movs r7, #2
	ldrsh r1, [r1, r7]
	movs r2, #2
	ldrsh r0, [r0, r2]
	movs r7, #0x52
	adds r7, r7, r4
	mov ip, r7
	cmp r1, r0
	beq _080B3178
	mov r0, r8
	strh r0, [r7]
	b _080B3178
	.align 2, 0
_080B3148: .4byte gUnk_08353FCC
_080B314C:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r1, ip
	strh r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r0]
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B3196
	rsbs r0, r2, #0
	strh r0, [r5]
_080B3178:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B3196
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r5]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r5]
	b _080B31A8
_080B3196:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
_080B31A8:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	mov r7, ip
	ldrh r7, [r7]
	adds r0, r0, r7
	movs r6, #0
	mov r1, ip
	strh r0, [r1]
	mov r2, sb
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080B31E0
	adds r0, r4, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B31E2
_080B31E0:
	strh r6, [r5]
_080B31E2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B31F0
sub_080B31F0: @ 0x080B31F0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080B329A
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #4
	bne _080B32B2
	ldr r2, _080B3250 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080B3254 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B3258 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #3
	bne _080B3260
	ldr r2, _080B325C @ =sub_080B2FE4
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B3284
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B328C
	.align 2, 0
_080B3250: .4byte gRngVal
_080B3254: .4byte 0x00196225
_080B3258: .4byte 0x3C6EF35F
_080B325C: .4byte sub_080B2FE4
_080B3260:
	ldr r2, _080B3280 @ =sub_080B2F3C
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B3284
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B328C
	.align 2, 0
_080B3280: .4byte sub_080B2F3C
_080B3284:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B328C:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080B3412
_080B329A:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #4
	bne _080B32B2
	ldrb r0, [r4, #1]
	cmp r0, #2
	bne _080B32B2
	adds r0, r4, #0
	bl sub_080B351C
_080B32B2:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r5, r4, #0
	adds r5, #0x50
	mov sb, r0
	adds r3, r4, #0
	adds r3, #0x9f
	ldr r6, _080B3378 @ =gUnk_08354020
	movs r2, #0x52
	adds r2, r2, r4
	mov ip, r2
	cmp r1, #0
	bne _080B33A8
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080B32E8
	subs r0, r1, #1
	strb r0, [r3]
_080B32E8:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	mov r7, sb
	strb r0, [r7]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080B330E
	mov r0, r8
	strb r1, [r0]
_080B330E:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080B337C
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r1]
	movs r7, #0
	ldrsh r1, [r1, r7]
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r1, r0
	beq _080B3346
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B3346
	rsbs r0, r2, #0
	strh r0, [r5]
_080B3346:
	ldrb r2, [r3]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r1, #2]
	mov r8, r2
	movs r7, #2
	ldrsh r1, [r1, r7]
	movs r2, #2
	ldrsh r0, [r0, r2]
	movs r7, #0x52
	adds r7, r7, r4
	mov ip, r7
	cmp r1, r0
	beq _080B33A8
	mov r0, r8
	strh r0, [r7]
	b _080B33A8
	.align 2, 0
_080B3378: .4byte gUnk_08354020
_080B337C:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r1, ip
	strh r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r0]
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B33C6
	rsbs r0, r2, #0
	strh r0, [r5]
_080B33A8:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B33C6
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r5]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r5]
	b _080B33D8
_080B33C6:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
_080B33D8:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	mov r7, ip
	ldrh r7, [r7]
	adds r0, r0, r7
	movs r6, #0
	mov r1, ip
	strh r0, [r1]
	mov r2, sb
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080B3410
	adds r0, r4, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B3412
_080B3410:
	strh r6, [r5]
_080B3412:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B3420
sub_080B3420: @ 0x080B3420
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B346C @ =sub_080B3AF8
	movs r1, #5
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	ldr r2, _080B3470 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080B3474 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B3478 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #3
	bne _080B3454
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #6
	strb r0, [r1]
_080B3454:
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B347C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B3484
	.align 2, 0
_080B346C: .4byte sub_080B3AF8
_080B3470: .4byte gRngVal
_080B3474: .4byte 0x00196225
_080B3478: .4byte 0x3C6EF35F
_080B347C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B3484:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _080B3504 @ =gUnk_02020EE0
	ldr r0, _080B3508 @ =gUnk_0203AD3C
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
	bne _080B34FC
	ldrb r0, [r4]
	cmp r0, #0
	bne _080B34BC
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080B34FC
_080B34BC:
	ldr r1, _080B350C @ =gUnk_08D60FA4
	ldr r4, _080B3510 @ =gSongTable
	ldr r2, _080B3514 @ =0x00000A14
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080B34E2
	movs r1, #0xa1
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080B34FC
_080B34E2:
	cmp r3, #0
	beq _080B34F4
	ldr r0, _080B3518 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B34FC
_080B34F4:
	movs r0, #0xa1
	lsls r0, r0, #1
	bl m4aSongNumStart
_080B34FC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B3504: .4byte gUnk_02020EE0
_080B3508: .4byte gUnk_0203AD3C
_080B350C: .4byte gUnk_08D60FA4
_080B3510: .4byte gSongTable
_080B3514: .4byte 0x00000A14
_080B3518: .4byte gUnk_0203AD10

	thumb_func_start sub_080B351C
sub_080B351C: @ 0x080B351C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080B354C @ =sub_080B3694
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
	beq _080B3550
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B3558
	.align 2, 0
_080B354C: .4byte sub_080B3694
_080B3550:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B3558:
	adds r4, r0, #0
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
	ldr r0, _080B35D4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080B35A8
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080B35A8:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r0, _080B35D8 @ =0x20000043
	str r0, [r4, #0x68]
	ldr r2, _080B35DC @ =0x50500400
	str r2, [r4, #8]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080B35E4
	ldr r0, [r4, #0x40]
	ldr r1, _080B35E0 @ =0xFFFFE600
	adds r0, r0, r1
	str r0, [r4, #0x40]
	orrs r2, r3
	b _080B35EE
	.align 2, 0
_080B35D4: .4byte gUnk_03000510
_080B35D8: .4byte 0x20000043
_080B35DC: .4byte 0x50500400
_080B35E0: .4byte 0xFFFFE600
_080B35E4:
	ldr r0, [r4, #0x40]
	movs r1, #0xd0
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r4, #0x40]
_080B35EE:
	str r2, [r4, #8]
	movs r1, #0xf
	rsbs r1, r1, #0
	movs r2, #0xa
	rsbs r2, r2, #0
	movs r0, #0xa
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xa
	bl sub_0803E2B0
	ldr r1, _080B3674 @ =gUnk_02020EE0
	ldr r0, _080B3678 @ =gUnk_0203AD3C
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
	bne _080B366C
	ldrb r0, [r4]
	cmp r0, #0
	bne _080B3630
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080B366C
_080B3630:
	ldr r1, _080B367C @ =gUnk_08D60FA4
	ldr r4, _080B3680 @ =gSongTable
	ldr r2, _080B3684 @ =0x00000A0C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080B3654
	ldr r1, _080B3688 @ =0x00000A08
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080B366C
_080B3654:
	cmp r3, #0
	beq _080B3666
	ldr r0, _080B368C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B366C
_080B3666:
	ldr r0, _080B3690 @ =0x00000141
	bl m4aSongNumStart
_080B366C:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B3674: .4byte gUnk_02020EE0
_080B3678: .4byte gUnk_0203AD3C
_080B367C: .4byte gUnk_08D60FA4
_080B3680: .4byte gSongTable
_080B3684: .4byte 0x00000A0C
_080B3688: .4byte 0x00000A08
_080B368C: .4byte gUnk_0203AD10
_080B3690: .4byte 0x00000141

	thumb_func_start sub_080B3694
sub_080B3694: @ 0x080B3694
	push {r4, r5, r6, r7, lr}
	ldr r2, _080B36B0 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B36B4
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B36BC
	.align 2, 0
_080B36B0: .4byte gCurTask
_080B36B4:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B36BC:
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #5
	mov ip, r0
	adds r0, r1, #0
	mov r3, ip
	ands r0, r3
	cmp r0, #0
	beq _080B36DA
	ldr r0, [r2]
	bl TaskDestroy
	b _080B37CE
_080B36DA:
	ldr r0, [r5, #8]
	mov r2, ip
	ands r0, r2
	cmp r0, #0
	beq _080B36EA
	orrs r1, r2
	str r1, [r4, #8]
	b _080B37CE
_080B36EA:
	adds r1, r5, #0
	adds r1, #0x56
	ldrb r0, [r1]
	adds r3, r4, #0
	adds r3, #0x56
	strb r0, [r3]
	ldr r6, [r5, #0x40]
	str r6, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	ldr r0, _080B372C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r7, #1
	adds r0, r7, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	bne _080B37CE
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080B3730
	ldr r0, [r4, #8]
	mov r3, ip
	orrs r0, r3
	str r0, [r4, #8]
	b _080B37CE
	.align 2, 0
_080B372C: .4byte gUnk_03000510
_080B3730:
	ldr r0, [r5, #8]
	ands r0, r7
	cmp r0, #0
	beq _080B3748
	ldr r1, _080B3744 @ =0xFFFFE600
	adds r0, r6, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #8]
	orrs r0, r7
	b _080B3758
	.align 2, 0
_080B3744: .4byte 0xFFFFE600
_080B3748:
	movs r2, #0xd0
	lsls r2, r2, #5
	adds r0, r6, r2
	str r0, [r4, #0x40]
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B3758:
	str r0, [r4, #8]
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080B37CE
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080B37CE
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _080B3794
	ldr r2, _080B378C @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r3, _080B3790 @ =0x0000065E
	adds r0, r0, r3
	ldrb r1, [r0]
	b _080B3796
	.align 2, 0
_080B378C: .4byte gCurLevelInfo
_080B3790: .4byte 0x0000065E
_080B3794:
	movs r1, #0xff
_080B3796:
	cmp r1, #0xff
	beq _080B37CE
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080B37D4 @ =gUnk_02022EB0
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
	ldr r2, _080B37D8 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080B37CE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B37D4: .4byte gUnk_02022EB0
_080B37D8: .4byte gUnk_02022F50

	thumb_func_start sub_080B37DC
sub_080B37DC: @ 0x080B37DC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080B380C @ =sub_080B38B0
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
	beq _080B3810
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B3818
	.align 2, 0
_080B380C: .4byte sub_080B38B0
_080B3810:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B3818:
	adds r4, r0, #0
	bl sub_0803E380
	movs r6, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r6, [r4, #4]
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
	ldr r0, _080B38A8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080B3868
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080B3868:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	str r6, [r4, #0x68]
	ldr r2, _080B38AC @ =0x42110400
	str r2, [r4, #8]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080B3888
	orrs r2, r3
_080B3888:
	str r2, [r4, #8]
	movs r1, #0x1e
	rsbs r1, r1, #0
	movs r2, #0x30
	rsbs r2, r2, #0
	movs r0, #0x30
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x1e
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B38A8: .4byte gUnk_03000510
_080B38AC: .4byte 0x42110400

	thumb_func_start sub_080B38B0
sub_080B38B0: @ 0x080B38B0
	push {r4, r5, lr}
	ldr r2, _080B38CC @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B38D0
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B38D8
	.align 2, 0
_080B38CC: .4byte gCurTask
_080B38D0:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B38D8:
	adds r4, r0, #0
	ldr r0, [r4, #0x70]
	mov ip, r0
	ldr r1, [r4, #8]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080B38F4
	ldr r0, [r2]
	bl TaskDestroy
	b _080B3A0A
_080B38F4:
	mov r2, ip
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	beq _080B3904
	orrs r1, r3
	str r1, [r4, #8]
	b _080B3A0A
_080B3904:
	mov r1, ip
	ldr r0, [r1, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r1, #0x44]
	str r0, [r4, #0x44]
	adds r1, #0x56
	ldrb r0, [r1]
	adds r3, r4, #0
	adds r3, #0x56
	strb r0, [r3]
	ldr r0, _080B3940 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r5, #1
	adds r0, r5, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	bne _080B3A0A
	mov r2, ip
	ldr r0, [r2, #8]
	ands r0, r5
	cmp r0, #0
	beq _080B3944
	ldr r0, [r4, #8]
	orrs r0, r5
	b _080B394C
	.align 2, 0
_080B3940: .4byte gUnk_03000510
_080B3944:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B394C:
	str r0, [r4, #8]
	mov r5, ip
	adds r5, #0x85
	ldrb r0, [r5]
	cmp r0, #0
	beq _080B3A0A
	mov r0, ip
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #6
	bhi _080B3A0A
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080B3998
	ldr r2, [r4, #0x6c]
	ldr r0, _080B3994 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r4, #8]
	ldr r0, [r2, #0x70]
	cmp r0, #0
	beq _080B3998
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x16
	ands r0, r1
	cmp r0, #0
	beq _080B3998
	mov r0, ip
	bl sub_080B3420
	movs r0, #0
	strb r0, [r5]
	b _080B3A0A
	.align 2, 0
_080B3994: .4byte 0xFFFBFFFF
_080B3998:
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080B3A0A
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080B3A0A
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _080B39D0
	ldr r2, _080B39C8 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080B39CC @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080B39D2
	.align 2, 0
_080B39C8: .4byte gCurLevelInfo
_080B39CC: .4byte 0x0000065E
_080B39D0:
	movs r1, #0xff
_080B39D2:
	cmp r1, #0xff
	beq _080B3A0A
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080B3A10 @ =gUnk_02022EB0
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
	ldr r2, _080B3A14 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080B3A0A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B3A10: .4byte gUnk_02022EB0
_080B3A14: .4byte gUnk_02022F50

	thumb_func_start sub_080B3A18
sub_080B3A18: @ 0x080B3A18
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B3A3C @ =sub_080B2E6C
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B3A40
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B3A48
	.align 2, 0
_080B3A3C: .4byte sub_080B2E6C
_080B3A40:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B3A48:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B3A60
sub_080B3A60: @ 0x080B3A60
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B3A8C @ =sub_080B2FE4
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B3A90
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B3A98
	.align 2, 0
_080B3A8C: .4byte sub_080B2FE4
_080B3A90:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B3A98:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B3AAC
sub_080B3AAC: @ 0x080B3AAC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B3AD8 @ =sub_080B31F0
	movs r1, #3
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B3ADC
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B3AE4
	.align 2, 0
_080B3AD8: .4byte sub_080B31F0
_080B3ADC:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B3AE4:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B3AF8
sub_080B3AF8: @ 0x080B3AF8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080B3B46
	ldr r2, _080B3B28 @ =sub_080B2E6C
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B3B2C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B3B34
	.align 2, 0
_080B3B28: .4byte sub_080B2E6C
_080B3B2C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B3B34:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	b _080B3B70
_080B3B46:
	ldrb r0, [r4, #1]
	cmp r0, #1
	bne _080B3B52
	adds r0, r4, #0
	bl sub_080B351C
_080B3B52:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r5, [r0, #0xe]
	cmp r5, #0
	bne _080B3B70
	adds r0, r4, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B3B70
	adds r0, r4, #0
	adds r0, #0x50
	strh r5, [r0]
_080B3B70:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateMinny
CreateMinny: @ 0x080B3B78
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080B3BAC @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080B3BB0 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B3BB4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B3BBC
	.align 2, 0
_080B3BAC: .4byte ObjectMain
_080B3BB0: .4byte ObjectDestroy
_080B3BB4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B3BBC:
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
	ble _080B3BDC
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B3BE4
_080B3BDC:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B3BE4:
	str r0, [r4, #8]
	movs r2, #2
	rsbs r2, r2, #0
	movs r0, #2
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #2
	bl sub_0803E2B0
	movs r1, #5
	rsbs r1, r1, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #7
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	ldr r2, _080B3C40 @ =gUnk_08351648
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
_080B3C40: .4byte gUnk_08351648

	thumb_func_start sub_080B3C44
sub_080B3C44: @ 0x080B3C44
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
	ble _080B3C64
	movs r0, #1
	orrs r2, r0
	b _080B3C6A
_080B3C64:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080B3C6A:
	str r2, [r3, #8]
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080B3C80
	adds r0, r3, #0
	bl sub_080B3CD8
	b _080B3CCE
_080B3C80:
	adds r1, r3, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r4, [r0, #0x40]
	ldr r0, [r3, #0x40]
	subs r2, r4, r0
	adds r5, r1, #0
	cmp r2, #0
	blt _080B3CA0
	ldr r0, _080B3C9C @ =0x00003BFF
	cmp r2, r0
	ble _080B3CA8
	b _080B3CCE
	.align 2, 0
_080B3C9C: .4byte 0x00003BFF
_080B3CA0:
	subs r1, r0, r4
	ldr r0, _080B3CBC @ =0x00003BFF
	cmp r1, r0
	bgt _080B3CCE
_080B3CA8:
	ldr r0, [r5]
	ldr r0, [r0, #0x44]
	ldr r1, [r3, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080B3CC0
	ldr r0, _080B3CBC @ =0x00003BFF
	cmp r2, r0
	ble _080B3CC8
	b _080B3CCE
	.align 2, 0
_080B3CBC: .4byte 0x00003BFF
_080B3CC0:
	subs r1, r1, r0
	ldr r0, _080B3CD4 @ =0x00003BFF
	cmp r1, r0
	bgt _080B3CCE
_080B3CC8:
	adds r0, r3, #0
	bl sub_080B3CD8
_080B3CCE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B3CD4: .4byte 0x00003BFF

	thumb_func_start sub_080B3CD8
sub_080B3CD8: @ 0x080B3CD8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B3CFC @ =sub_080B3F08
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B3D00
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B3D08
	.align 2, 0
_080B3CFC: .4byte sub_080B3F08
_080B3D00:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B3D08:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r2, #1
	eors r0, r2
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080B3D2C
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
_080B3D2C:
	ldr r0, [r4, #8]
	ands r0, r2
	cmp r0, #0
	beq _080B3D3A
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080B3D3A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B3D40
sub_080B3D40: @ 0x080B3D40
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080B3DAC
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080B3D8C
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r1, [r0]
	subs r1, #0x40
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	ldr r1, _080B3D7C @ =0xFFFFFE00
	adds r2, r0, #0
	cmp r3, r1
	bge _080B3D80
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r2]
	b _080B3DFC
	.align 2, 0
_080B3D7C: .4byte 0xFFFFFE00
_080B3D80:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r3, r0
	ble _080B3DFC
	strh r0, [r2]
	b _080B3DFC
_080B3D8C:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #2
	adds r2, r1, #0
	cmp r0, r3
	bgt _080B3DF0
	ldr r1, _080B3DA8 @ =0xFFFFFE00
	b _080B3DF6
	.align 2, 0
_080B3DA8: .4byte 0xFFFFFE00
_080B3DAC:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080B3DD8
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080B3DD4 @ =0xFFFFFEE0
	adds r2, r1, #0
	cmp r0, r3
	blt _080B3DF0
	movs r1, #0x90
	lsls r1, r1, #1
	cmp r0, r1
	ble _080B3DFC
	b _080B3DFA
	.align 2, 0
_080B3DD4: .4byte 0xFFFFFEE0
_080B3DD8:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x90
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	ble _080B3DF4
_080B3DF0:
	strh r3, [r2]
	b _080B3DFC
_080B3DF4:
	ldr r1, _080B3E10 @ =0xFFFFFEE0
_080B3DF6:
	cmp r0, r1
	bge _080B3DFC
_080B3DFA:
	strh r1, [r2]
_080B3DFC:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B3E14
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	blt _080B3E1C
	b _080B3E6C
	.align 2, 0
_080B3E10: .4byte 0xFFFFFEE0
_080B3E14:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	ble _080B3E6C
_080B3E1C:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080B3E6C
	ldr r2, _080B3E5C @ =sub_080B3D40
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
	ldr r2, _080B3E60 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080B3E64 @ =0x00196225
	muls r1, r0, r1
	ldr r0, _080B3E68 @ =0x3C6EF35F
	adds r1, r1, r0
	str r1, [r2]
	lsrs r1, r1, #0x10
	movs r0, #3
	ands r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #0xa
	strh r0, [r4, #4]
	b _080B3EBA
	.align 2, 0
_080B3E5C: .4byte sub_080B3D40
_080B3E60: .4byte gRngVal
_080B3E64: .4byte 0x00196225
_080B3E68: .4byte 0x3C6EF35F
_080B3E6C:
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r3, [r0, #0x40]
	ldr r0, [r4, #0x40]
	subs r2, r3, r0
	adds r5, r1, #0
	cmp r2, #0
	blt _080B3E8C
	ldr r0, _080B3E88 @ =0x00003BFF
	cmp r2, r0
	ble _080B3E94
	b _080B3EBA
	.align 2, 0
_080B3E88: .4byte 0x00003BFF
_080B3E8C:
	subs r1, r0, r3
	ldr r0, _080B3EA8 @ =0x00003BFF
	cmp r1, r0
	bgt _080B3EBA
_080B3E94:
	ldr r0, [r5]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080B3EAC
	ldr r0, _080B3EA8 @ =0x00003BFF
	cmp r2, r0
	ble _080B3EB4
	b _080B3EBA
	.align 2, 0
_080B3EA8: .4byte 0x00003BFF
_080B3EAC:
	subs r1, r1, r0
	ldr r0, _080B3EC0 @ =0x00003BFF
	cmp r1, r0
	bgt _080B3EBA
_080B3EB4:
	adds r0, r4, #0
	bl sub_080B3CD8
_080B3EBA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B3EC0: .4byte 0x00003BFF

	thumb_func_start sub_080B3EC4
sub_080B3EC4: @ 0x080B3EC4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xb0
	ldr r0, [r5]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bne _080B3EDC
	adds r0, r4, #0
	bl sub_080B3F64
	b _080B3EFC
_080B3EDC:
	ldr r2, _080B3F04 @ =sub_080B3C44
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r5]
	ldrb r1, [r0, #0x11]
	adds r1, #1
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	strh r0, [r4, #4]
_080B3EFC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B3F04: .4byte sub_080B3C44

	thumb_func_start sub_080B3F08
sub_080B3F08: @ 0x080B3F08
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
	beq _080B3F32
	eors r2, r3
	str r2, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080B3F32:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #0x14]
	cmp r0, #0
	beq _080B3F5E
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x28
	ble _080B3F5E
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	adds r0, r4, #0
	bl sub_080B3CD8
_080B3F5E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B3F64
sub_080B3F64: @ 0x080B3F64
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B3F9C @ =sub_080B3D40
	movs r1, #1
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
	ldr r2, _080B3FA0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080B3FA4 @ =0x00196225
	muls r1, r0, r1
	ldr r0, _080B3FA8 @ =0x3C6EF35F
	adds r1, r1, r0
	str r1, [r2]
	lsrs r1, r1, #0x10
	movs r0, #3
	ands r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #0xa
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B3F9C: .4byte sub_080B3D40
_080B3FA0: .4byte gRngVal
_080B3FA4: .4byte 0x00196225
_080B3FA8: .4byte 0x3C6EF35F

	thumb_func_start CreateBoxin
CreateBoxin: @ 0x080B3FAC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080B3FE0 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080B3FE4 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B3FE8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B3FF0
	.align 2, 0
_080B3FE0: .4byte ObjectMain
_080B3FE4: .4byte ObjectDestroy
_080B3FE8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B3FF0:
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
	ble _080B4010
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B4018
_080B4010:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B4018:
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
	ldr r2, _080B4088 @ =gUnk_08351648
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
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bls _080B4074
	adds r0, r4, #0
	bl sub_080B5614
_080B4074:
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
_080B4088: .4byte gUnk_08351648

	thumb_func_start sub_080B408C
sub_080B408C: @ 0x080B408C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r2, _080B4158 @ =gCurLevelInfo
	movs r0, #0x56
	adds r0, r0, r4
	mov r8, r0
	ldrb r7, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r1, r7, #0
	muls r1, r0, r1
	adds r0, r2, #0
	adds r0, #0x50
	adds r0, r1, r0
	ldr r5, [r4, #0x40]
	ldr r0, [r0]
	cmp r5, r0
	bgt _080B4160
	adds r0, r2, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r5, r0
	blt _080B4160
	adds r0, r2, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r3, [r4, #0x44]
	ldr r0, [r0]
	cmp r3, r0
	bgt _080B4160
	adds r0, r2, #0
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt _080B4160
	adds r6, r4, #0
	adds r6, #0x50
	movs r0, #0
	ldrsh r1, [r6, r0]
	adds r1, r5, r1
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	adds r5, r4, #0
	adds r5, #0x3f
	movs r2, #0
	ldrsb r2, [r5, r2]
	adds r2, #9
	lsls r2, r2, #8
	adds r2, r3, r2
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_080023E4
	ldr r1, _080B415C @ =gUnk_082D88B8
	mov sb, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	add r0, sb
	ldr r0, [r0]
	movs r7, #1
	ands r0, r7
	cmp r0, #0
	beq _080B411A
	movs r0, #0
	strh r0, [r6]
_080B411A:
	mov r1, r8
	ldrb r0, [r1]
	ldr r1, [r4, #0x40]
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	movs r3, #0
	ldrsb r3, [r5, r3]
	adds r3, #9
	lsls r3, r3, #8
	ldr r2, [r4, #0x44]
	adds r2, r2, r3
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	add r0, sb
	ldr r0, [r0]
	ands r0, r7
	cmp r0, #0
	beq _080B4160
	adds r0, r4, #0
	bl sub_080B5898
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	b _080B432C
	.align 2, 0
_080B4158: .4byte gCurLevelInfo
_080B415C: .4byte gUnk_082D88B8
_080B4160:
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	subs r1, #0x18
	movs r3, #0
	strh r1, [r0]
	lsls r1, r1, #0x10
	movs r2, #0xfd
	lsls r2, r2, #0x18
	adds r7, r0, #0
	cmp r1, r2
	bge _080B417E
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r7]
_080B417E:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080B418A
	b _080B432C
_080B418A:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080B419A
	b _080B432C
_080B419A:
	adds r2, r4, #0
	adds r2, #0x50
	strh r3, [r2]
	strh r3, [r7]
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r5, [r0, #0x40]
	ldr r0, [r4, #0x40]
	subs r3, r5, r0
	adds r6, r2, #0
	mov r8, r1
	cmp r3, #0
	blt _080B41C4
	ldr r0, _080B41C0 @ =0x00003FFF
	cmp r3, r0
	ble _080B41CC
	b _080B4200
	.align 2, 0
_080B41C0: .4byte 0x00003FFF
_080B41C4:
	subs r1, r0, r5
	ldr r0, _080B41E4 @ =0x00003FFF
	cmp r1, r0
	bgt _080B4200
_080B41CC:
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080B41EC
	ldr r0, _080B41E8 @ =0x00002FFF
	cmp r2, r0
	ble _080B41F4
	b _080B4200
	.align 2, 0
_080B41E4: .4byte 0x00003FFF
_080B41E8: .4byte 0x00002FFF
_080B41EC:
	subs r1, r1, r0
	ldr r0, _080B41FC @ =0x00002FFF
	cmp r1, r0
	bgt _080B4200
_080B41F4:
	adds r0, r4, #0
	bl sub_080B597C
	b _080B432C
	.align 2, 0
_080B41FC: .4byte 0x00002FFF
_080B4200:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080B420E
	b _080B432C
_080B420E:
	adds r0, r4, #0
	bl sub_0803D368
	adds r2, r0, #0
	mov r0, r8
	str r2, [r0]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #2
	bne _080B4286
	movs r0, #1
	strb r0, [r3]
	ldr r2, _080B4244 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080B4248 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B424C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080B4250 @ =0x00005554
	cmp r2, r0
	bhi _080B4254
	movs r1, #0
	b _080B425E
	.align 2, 0
_080B4244: .4byte gRngVal
_080B4248: .4byte 0x00196225
_080B424C: .4byte 0x3C6EF35F
_080B4250: .4byte 0x00005554
_080B4254:
	ldr r0, _080B426C @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080B425E
	movs r1, #1
_080B425E:
	cmp r1, #1
	beq _080B427C
	cmp r1, #1
	bgt _080B4270
	cmp r1, #0
	beq _080B4276
	b _080B431C
	.align 2, 0
_080B426C: .4byte 0x0000AAA9
_080B4270:
	cmp r1, #2
	beq _080B4280
	b _080B431C
_080B4276:
	strh r1, [r6]
	strh r1, [r7]
	b _080B4318
_080B427C:
	movs r0, #0xc0
	b _080B42FA
_080B4280:
	movs r0, #0x80
	lsls r0, r0, #1
	b _080B4310
_080B4286:
	ldr r1, [r4, #0x40]
	ldr r0, [r2, #0x40]
	cmp r1, r0
	ble _080B4296
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B429E
_080B4296:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B429E:
	str r0, [r4, #8]
	movs r0, #2
	strb r0, [r3]
	ldr r2, _080B42C0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080B42C4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B42C8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080B42CC @ =0x00005554
	cmp r2, r0
	bhi _080B42D0
	movs r1, #0
	b _080B42DA
	.align 2, 0
_080B42C0: .4byte gRngVal
_080B42C4: .4byte 0x00196225
_080B42C8: .4byte 0x3C6EF35F
_080B42CC: .4byte 0x00005554
_080B42D0:
	ldr r0, _080B42E8 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080B42DA
	movs r1, #1
_080B42DA:
	cmp r1, #1
	beq _080B42F8
	cmp r1, #1
	bgt _080B42EC
	cmp r1, #0
	beq _080B42F2
	b _080B431C
	.align 2, 0
_080B42E8: .4byte 0x0000AAA9
_080B42EC:
	cmp r1, #2
	beq _080B430C
	b _080B431C
_080B42F2:
	strh r1, [r6]
	strh r1, [r7]
	b _080B4318
_080B42F8:
	ldr r0, _080B4308 @ =0x0000FF40
_080B42FA:
	strh r0, [r6]
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r7]
	strh r1, [r4, #4]
	b _080B431C
	.align 2, 0
_080B4308: .4byte 0x0000FF40
_080B430C:
	movs r0, #0xff
	lsls r0, r0, #8
_080B4310:
	strh r0, [r6]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r7]
_080B4318:
	movs r0, #1
	strh r0, [r4, #4]
_080B431C:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B432C
	ldrh r0, [r6]
	rsbs r0, r0, #0
	strh r0, [r6]
_080B432C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080B4338
sub_080B4338: @ 0x080B4338
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r2, _080B4384 @ =gUnk_083540DC
	movs r0, #0x9f
	adds r0, r0, r4
	mov ip, r0
	ldrb r0, [r0]
	adds r3, r0, #1
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #8]
	mov r8, r2
	cmp r0, #0
	bne _080B43D0
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	mov sb, r0
	cmp r1, #0
	beq _080B4370
	b _080B44C6
_080B4370:
	adds r0, #0x12
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #3
	bne _080B4388
	adds r0, r4, #0
	bl sub_080B5AC8
	b _080B4562
	.align 2, 0
_080B4384: .4byte gUnk_083540DC
_080B4388:
	ldr r2, _080B43AC @ =sub_080B408C
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r2, [r4, #0x40]
	ldr r0, [r0, #0x40]
	adds r5, r1, #0
	cmp r2, r0
	ble _080B43B0
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B43B8
	.align 2, 0
_080B43AC: .4byte sub_080B408C
_080B43B0:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B43B8:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r5]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	movs r0, #1
	strh r0, [r4, #4]
	b _080B4562
_080B43D0:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	mov sb, r0
	cmp r1, #0
	bne _080B44C6
	mov r1, ip
	strb r3, [r1]
	ldrb r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080B43F6
	subs r0, r1, #1
	mov r2, ip
	strb r0, [r2]
_080B43F6:
	mov r3, ip
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0, #8]
	mov r1, sb
	strb r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080B4420
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
_080B4420:
	mov r2, ip
	ldrb r0, [r2]
	cmp r0, #0
	beq _080B448C
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	add r1, r8
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	add r0, r8
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080B445E
	adds r2, r4, #0
	adds r2, #0x50
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B445E
	rsbs r0, r3, #0
	strh r0, [r2]
_080B445E:
	adds r0, r4, #0
	adds r0, #0x9f
	ldrb r2, [r0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	add r1, r8
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	add r0, r8
	ldrh r2, [r1, #2]
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080B44C6
	adds r0, r4, #0
	adds r0, #0x52
	strh r2, [r0]
	b _080B44C6
_080B448C:
	mov r0, ip
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0, #2]
	adds r3, r4, #0
	adds r3, #0x52
	strh r0, [r3]
	mov r2, ip
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldrh r6, [r0]
	adds r2, r4, #0
	adds r2, #0x50
	strh r6, [r2]
	ldr r1, [r4, #8]
	movs r0, #1
	ands r1, r0
	adds r5, r2, #0
	adds r7, r3, #0
	cmp r1, #0
	beq _080B44F0
	rsbs r0, r6, #0
	strh r0, [r5]
_080B44C6:
	ldr r1, [r4, #8]
	movs r0, #1
	ands r1, r0
	adds r5, r4, #0
	adds r5, #0x50
	adds r7, r4, #0
	adds r7, #0x52
	cmp r1, #0
	beq _080B44F0
	adds r2, r4, #0
	adds r2, #0x9f
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldrh r1, [r5]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r5]
	b _080B4506
_080B44F0:
	adds r2, r4, #0
	adds r2, #0x9f
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0, #4]
	ldrh r3, [r5]
	adds r0, r0, r3
	strh r0, [r5]
_080B4506:
	adds r0, r2, #0
	adds r2, r7, #0
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0, #6]
	ldrh r1, [r2]
	adds r0, r0, r1
	movs r6, #0
	strh r0, [r2]
	mov r2, sb
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	ldrb r0, [r4, #1]
	cmp r0, #0xa
	bne _080B4532
	adds r0, r4, #0
	bl sub_080B4DF4
_080B4532:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080B4554
	ldr r2, _080B4550 @ =sub_080B58C0
	adds r0, r4, #0
	movs r1, #0xa
	bl ObjectSetFunc
	strh r6, [r5]
	strh r6, [r7]
	b _080B4562
	.align 2, 0
_080B4550: .4byte sub_080B58C0
_080B4554:
	adds r0, r4, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B4562
	strh r6, [r5]
_080B4562:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B4570
sub_080B4570: @ 0x080B4570
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r2, _080B45B8 @ =gUnk_08354118
	adds r4, r5, #0
	adds r4, #0x9f
	ldrb r0, [r4]
	adds r3, r0, #1
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #8]
	mov ip, r2
	cmp r0, #0
	bne _080B4604
	adds r0, r5, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _080B45A4
	b _080B46EE
_080B45A4:
	adds r0, #0x12
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #3
	bne _080B45BC
	adds r0, r5, #0
	bl sub_080B5AC8
	b _080B4790
	.align 2, 0
_080B45B8: .4byte gUnk_08354118
_080B45BC:
	ldr r2, _080B45E0 @ =sub_080B408C
	adds r0, r5, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r1, r5, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r2, [r5, #0x40]
	ldr r0, [r0, #0x40]
	adds r4, r1, #0
	cmp r2, r0
	ble _080B45E4
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	b _080B45EC
	.align 2, 0
_080B45E0: .4byte sub_080B408C
_080B45E4:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B45EC:
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_0803D368
	str r0, [r4]
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	movs r0, #1
	strh r0, [r5, #4]
	b _080B4790
_080B4604:
	adds r0, r5, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	bne _080B46EE
	strb r3, [r4]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080B4626
	subs r0, r1, #1
	strb r0, [r4]
_080B4626:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrb r0, [r0, #8]
	mov r1, r8
	strb r0, [r1]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080B464E
	adds r0, r5, #0
	adds r0, #0x83
	strb r1, [r0]
_080B464E:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080B46B8
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
	beq _080B468A
	adds r2, r5, #0
	adds r2, #0x50
	strh r3, [r2]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B468A
	rsbs r0, r3, #0
	strh r0, [r2]
_080B468A:
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
	beq _080B46EE
	adds r0, r5, #0
	adds r0, #0x52
	strh r2, [r0]
	b _080B46EE
_080B46B8:
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
	ldrh r4, [r0]
	adds r2, r5, #0
	adds r2, #0x50
	strh r4, [r2]
	ldr r1, [r5, #8]
	movs r0, #1
	ands r1, r0
	adds r6, r2, #0
	adds r7, r3, #0
	cmp r1, #0
	beq _080B4718
	rsbs r0, r4, #0
	strh r0, [r6]
_080B46EE:
	ldr r1, [r5, #8]
	movs r0, #1
	ands r1, r0
	adds r6, r5, #0
	adds r6, #0x50
	adds r7, r5, #0
	adds r7, #0x52
	cmp r1, #0
	beq _080B4718
	adds r2, r5, #0
	adds r2, #0x9f
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrh r1, [r6]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r6]
	b _080B472E
_080B4718:
	adds r2, r5, #0
	adds r2, #0x9f
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrh r0, [r0, #4]
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r6]
_080B472E:
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrh r0, [r0, #6]
	ldrh r2, [r7]
	adds r0, r0, r2
	strh r0, [r7]
	mov r3, r8
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
	ldrb r0, [r5, #1]
	cmp r0, #0xa
	beq _080B4752
	cmp r0, #0x14
	bne _080B4758
_080B4752:
	adds r0, r5, #0
	bl sub_080B4DF4
_080B4758:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _080B4780
	ldr r2, _080B477C @ =sub_080B58C0
	adds r0, r5, #0
	movs r1, #0xa
	bl ObjectSetFunc
	strh r4, [r6]
	strh r4, [r7]
	b _080B4790
	.align 2, 0
_080B477C: .4byte sub_080B58C0
_080B4780:
	adds r0, r5, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B4790
	movs r0, #0
	strh r0, [r6]
_080B4790:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B479C
sub_080B479C: @ 0x080B479C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r2, _080B47E4 @ =gUnk_08354178
	adds r4, r5, #0
	adds r4, #0x9f
	ldrb r0, [r4]
	adds r3, r0, #1
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #8]
	mov ip, r2
	cmp r0, #0
	bne _080B4830
	adds r0, r5, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	mov sb, r0
	cmp r1, #0
	beq _080B47D2
	b _080B491C
_080B47D2:
	adds r0, #0x12
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #3
	bne _080B47E8
	adds r0, r5, #0
	bl sub_080B5AC8
	b _080B49DC
	.align 2, 0
_080B47E4: .4byte gUnk_08354178
_080B47E8:
	ldr r2, _080B480C @ =sub_080B408C
	adds r0, r5, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r1, r5, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r2, [r5, #0x40]
	ldr r0, [r0, #0x40]
	adds r4, r1, #0
	cmp r2, r0
	ble _080B4810
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	b _080B4818
	.align 2, 0
_080B480C: .4byte sub_080B408C
_080B4810:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B4818:
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_0803D368
	str r0, [r4]
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	movs r0, #1
	strh r0, [r5, #4]
	b _080B49DC
_080B4830:
	adds r0, r5, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	mov sb, r0
	cmp r1, #0
	bne _080B491C
	strb r3, [r4]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080B4852
	subs r0, r1, #1
	strb r0, [r4]
_080B4852:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrb r0, [r0, #8]
	mov r1, sb
	strb r0, [r1]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	movs r2, #0x83
	adds r2, r2, r5
	mov r8, r2
	cmp r0, #0xff
	beq _080B487C
	strb r1, [r2]
_080B487C:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080B48E6
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
	beq _080B48B8
	adds r2, r5, #0
	adds r2, #0x50
	strh r3, [r2]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B48B8
	rsbs r0, r3, #0
	strh r0, [r2]
_080B48B8:
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
	beq _080B491C
	adds r0, r5, #0
	adds r0, #0x52
	strh r2, [r0]
	b _080B491C
_080B48E6:
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
	ldrh r4, [r0]
	adds r2, r5, #0
	adds r2, #0x50
	strh r4, [r2]
	ldr r1, [r5, #8]
	movs r0, #1
	ands r1, r0
	adds r6, r2, #0
	adds r7, r3, #0
	cmp r1, #0
	beq _080B494C
	rsbs r0, r4, #0
	strh r0, [r6]
_080B491C:
	ldr r1, [r5, #8]
	movs r0, #1
	ands r1, r0
	adds r6, r5, #0
	adds r6, #0x50
	movs r0, #0x83
	adds r0, r0, r5
	mov r8, r0
	adds r7, r5, #0
	adds r7, #0x52
	cmp r1, #0
	beq _080B494C
	adds r2, r5, #0
	adds r2, #0x9f
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrh r1, [r6]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r6]
	b _080B4962
_080B494C:
	adds r2, r5, #0
	adds r2, #0x9f
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrh r0, [r0, #4]
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r6]
_080B4962:
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrh r0, [r0, #6]
	ldrh r2, [r7]
	adds r0, r0, r2
	strh r0, [r7]
	mov r3, sb
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #3
	bne _080B4990
	ldrb r0, [r5, #1]
	cmp r0, #0xa
	bne _080B4990
	adds r0, r5, #0
	bl sub_080B4DF4
_080B4990:
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #6
	bne _080B49A4
	ldrb r0, [r5, #1]
	cmp r0, #7
	bne _080B49A4
	adds r0, r5, #0
	bl sub_080B50A8
_080B49A4:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _080B49CC
	ldr r2, _080B49C8 @ =sub_080B58C0
	adds r0, r5, #0
	movs r1, #0xa
	bl ObjectSetFunc
	strh r4, [r6]
	strh r4, [r7]
	b _080B49DC
	.align 2, 0
_080B49C8: .4byte sub_080B58C0
_080B49CC:
	adds r0, r5, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B49DC
	movs r0, #0
	strh r0, [r6]
_080B49DC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080B49E8
sub_080B49E8: @ 0x080B49E8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r2, _080B4A30 @ =gUnk_08354214
	adds r4, r5, #0
	adds r4, #0x9f
	ldrb r0, [r4]
	adds r3, r0, #1
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #8]
	mov ip, r2
	cmp r0, #0
	bne _080B4A7C
	adds r0, r5, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	mov sb, r0
	cmp r1, #0
	beq _080B4A1E
	b _080B4B68
_080B4A1E:
	adds r0, #0x12
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #3
	bne _080B4A34
	adds r0, r5, #0
	bl sub_080B5AC8
	b _080B4C2C
	.align 2, 0
_080B4A30: .4byte gUnk_08354214
_080B4A34:
	ldr r2, _080B4A58 @ =sub_080B408C
	adds r0, r5, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r1, r5, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r2, [r5, #0x40]
	ldr r0, [r0, #0x40]
	adds r4, r1, #0
	cmp r2, r0
	ble _080B4A5C
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	b _080B4A64
	.align 2, 0
_080B4A58: .4byte sub_080B408C
_080B4A5C:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B4A64:
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_0803D368
	str r0, [r4]
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	movs r0, #1
	strh r0, [r5, #4]
	b _080B4C2C
_080B4A7C:
	adds r0, r5, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	mov sb, r0
	cmp r1, #0
	bne _080B4B68
	strb r3, [r4]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080B4A9E
	subs r0, r1, #1
	strb r0, [r4]
_080B4A9E:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrb r0, [r0, #8]
	mov r1, sb
	strb r0, [r1]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	movs r2, #0x83
	adds r2, r2, r5
	mov r8, r2
	cmp r0, #0xff
	beq _080B4AC8
	strb r1, [r2]
_080B4AC8:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080B4B32
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
	beq _080B4B04
	adds r2, r5, #0
	adds r2, #0x50
	strh r3, [r2]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B4B04
	rsbs r0, r3, #0
	strh r0, [r2]
_080B4B04:
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
	beq _080B4B68
	adds r0, r5, #0
	adds r0, #0x52
	strh r2, [r0]
	b _080B4B68
_080B4B32:
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
	ldrh r4, [r0]
	adds r2, r5, #0
	adds r2, #0x50
	strh r4, [r2]
	ldr r1, [r5, #8]
	movs r0, #1
	ands r1, r0
	adds r6, r2, #0
	adds r7, r3, #0
	cmp r1, #0
	beq _080B4B98
	rsbs r0, r4, #0
	strh r0, [r6]
_080B4B68:
	ldr r1, [r5, #8]
	movs r0, #1
	ands r1, r0
	adds r6, r5, #0
	adds r6, #0x50
	movs r0, #0x83
	adds r0, r0, r5
	mov r8, r0
	adds r7, r5, #0
	adds r7, #0x52
	cmp r1, #0
	beq _080B4B98
	adds r2, r5, #0
	adds r2, #0x9f
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrh r1, [r6]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r6]
	b _080B4BAE
_080B4B98:
	adds r2, r5, #0
	adds r2, #0x9f
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrh r0, [r0, #4]
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r6]
_080B4BAE:
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrh r0, [r0, #6]
	ldrh r2, [r7]
	adds r0, r0, r2
	strh r0, [r7]
	mov r3, sb
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #4
	bne _080B4BE0
	ldrb r0, [r5, #1]
	cmp r0, #0xa
	beq _080B4BDA
	cmp r0, #0x14
	bne _080B4BE0
_080B4BDA:
	adds r0, r5, #0
	bl sub_080B4DF4
_080B4BE0:
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #6
	bne _080B4BF4
	ldrb r0, [r5, #1]
	cmp r0, #7
	bne _080B4BF4
	adds r0, r5, #0
	bl sub_080B50A8
_080B4BF4:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _080B4C1C
	ldr r2, _080B4C18 @ =sub_080B58C0
	adds r0, r5, #0
	movs r1, #0xa
	bl ObjectSetFunc
	strh r4, [r6]
	strh r4, [r7]
	b _080B4C2C
	.align 2, 0
_080B4C18: .4byte sub_080B58C0
_080B4C1C:
	adds r0, r5, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B4C2C
	movs r0, #0
	strh r0, [r6]
_080B4C2C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080B4C38
sub_080B4C38: @ 0x080B4C38
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	ldr r2, _080B4C90 @ =gUnk_083542D4
	mov r3, ip
	adds r3, #0x9f
	ldrb r0, [r3]
	adds r4, r0, #1
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #8]
	adds r7, r2, #0
	cmp r0, #0
	bne _080B4C98
	mov r0, ip
	adds r0, #0x9e
	ldrb r4, [r0]
	mov r8, r0
	mov r5, ip
	adds r5, #0x50
	mov r6, ip
	adds r6, #0x52
	cmp r4, #0
	beq _080B4C7E
	b _080B4D7E
_080B4C7E:
	ldr r2, _080B4C94 @ =sub_080B58C0
	mov r0, ip
	movs r1, #0xa
	bl ObjectSetFunc
	strh r4, [r5]
	strh r4, [r6]
	b _080B4DEA
	.align 2, 0
_080B4C90: .4byte gUnk_083542D4
_080B4C94: .4byte sub_080B58C0
_080B4C98:
	mov r0, ip
	adds r0, #0x9e
	ldrb r1, [r0]
	mov r8, r0
	mov r5, ip
	adds r5, #0x50
	mov r6, ip
	adds r6, #0x52
	cmp r1, #0
	bne _080B4D7E
	strb r4, [r3]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080B4CC2
	subs r0, r1, #1
	strb r0, [r3]
_080B4CC2:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	mov r1, r8
	strb r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	mov r4, ip
	adds r4, #0x83
	cmp r0, #0xff
	beq _080B4CEA
	strb r1, [r4]
_080B4CEA:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080B4D52
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
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080B4D24
	strh r2, [r5]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B4D24
	rsbs r0, r2, #0
	strh r0, [r5]
_080B4D24:
	mov r0, ip
	adds r0, #0x9f
	ldrb r2, [r0]
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
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	mov r6, ip
	adds r6, #0x52
	cmp r1, r0
	beq _080B4D7E
	strh r2, [r6]
	b _080B4D7E
_080B4D52:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	strh r0, [r6]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r2, [r0]
	strh r2, [r5]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B4DA6
	rsbs r0, r2, #0
	strh r0, [r5]
_080B4D7E:
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	mov r4, ip
	adds r4, #0x83
	cmp r0, #0
	beq _080B4DA6
	mov r2, ip
	adds r2, #0x9f
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r5]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r5]
	b _080B4DBC
_080B4DA6:
	mov r2, ip
	adds r2, #0x9f
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #4]
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
_080B4DBC:
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #6]
	ldrh r3, [r6]
	adds r0, r0, r3
	strh r0, [r6]
	mov r1, r8
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ldrb r0, [r4]
	cmp r0, #8
	bne _080B4DEA
	mov r3, ip
	ldrb r0, [r3, #1]
	cmp r0, #5
	bne _080B4DEA
	mov r0, ip
	bl sub_080B535C
_080B4DEA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080B4DF4
sub_080B4DF4: @ 0x080B4DF4
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080B4E24 @ =sub_080B4F6C
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
	beq _080B4E28
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B4E30
	.align 2, 0
_080B4E24: .4byte sub_080B4F6C
_080B4E28:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B4E30:
	adds r4, r0, #0
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
	ldr r0, _080B4EB0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080B4E80
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080B4E80:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r2, _080B4EB4 @ =0x10000400
	str r2, [r4, #8]
	ldr r0, _080B4EB8 @ =0x20000043
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080B4EC0
	ldr r0, [r4, #0x40]
	ldr r1, _080B4EBC @ =0xFFFFF400
	adds r0, r0, r1
	str r0, [r4, #0x40]
	adds r0, r3, #0
	orrs r0, r2
	str r0, [r4, #8]
	b _080B4ECC
	.align 2, 0
_080B4EB0: .4byte gUnk_03000510
_080B4EB4: .4byte 0x10000400
_080B4EB8: .4byte 0x20000043
_080B4EBC: .4byte 0xFFFFF400
_080B4EC0:
	ldr r0, [r4, #0x40]
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0x40]
	str r2, [r4, #8]
_080B4ECC:
	movs r1, #0xa
	rsbs r1, r1, #0
	movs r2, #8
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xa
	bl sub_0803E2B0
	ldr r1, _080B4F54 @ =gUnk_02020EE0
	ldr r0, _080B4F58 @ =gUnk_0203AD3C
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
	bne _080B4F4C
	ldrb r0, [r4]
	cmp r0, #0
	bne _080B4F0C
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080B4F4C
_080B4F0C:
	ldr r1, _080B4F5C @ =gUnk_08D60FA4
	ldr r4, _080B4F60 @ =gSongTable
	ldr r2, _080B4F64 @ =0x00000A94
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080B4F32
	movs r1, #0xa9
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080B4F4C
_080B4F32:
	cmp r3, #0
	beq _080B4F44
	ldr r0, _080B4F68 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B4F4C
_080B4F44:
	movs r0, #0xa9
	lsls r0, r0, #1
	bl m4aSongNumStart
_080B4F4C:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B4F54: .4byte gUnk_02020EE0
_080B4F58: .4byte gUnk_0203AD3C
_080B4F5C: .4byte gUnk_08D60FA4
_080B4F60: .4byte gSongTable
_080B4F64: .4byte 0x00000A94
_080B4F68: .4byte gUnk_0203AD10

	thumb_func_start sub_080B4F6C
sub_080B4F6C: @ 0x080B4F6C
	push {r4, r5, r6, lr}
	ldr r0, _080B4F88 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B4F8C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B4F94
	.align 2, 0
_080B4F88: .4byte gCurTask
_080B4F8C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B4F94:
	adds r4, r0, #0
	ldr r6, [r4, #0x70]
	adds r3, r4, #0
	adds r3, #0x60
	ldrh r2, [r3]
	ldr r5, _080B4FF0 @ =0x0000FFFF
	cmp r2, r5
	beq _080B4FB6
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080B4FB6
	adds r0, r5, #0
	orrs r0, r2
	strh r0, [r3]
_080B4FB6:
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r5, r4, #0
	adds r5, #0x56
	strb r0, [r5]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080B50A0
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _080B4FF4
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	b _080B509E
	.align 2, 0
_080B4FF0: .4byte 0x0000FFFF
_080B4FF4:
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080B5066
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080B5066
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _080B502C
	ldr r2, _080B5024 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080B5028 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080B502E
	.align 2, 0
_080B5024: .4byte gCurLevelInfo
_080B5028: .4byte 0x0000065E
_080B502C:
	movs r1, #0xff
_080B502E:
	cmp r1, #0xff
	beq _080B5066
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080B5080 @ =gUnk_02022EB0
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
	ldr r2, _080B5084 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080B5066:
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B508C
	ldr r0, [r4, #0x40]
	ldr r2, _080B5088 @ =0xFFFFF400
	adds r0, r0, r2
	str r0, [r4, #0x40]
	ldr r0, [r4, #8]
	orrs r0, r1
	b _080B509E
	.align 2, 0
_080B5080: .4byte gUnk_02022EB0
_080B5084: .4byte gUnk_02022F50
_080B5088: .4byte 0xFFFFF400
_080B508C:
	ldr r0, [r4, #0x40]
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B509E:
	str r0, [r4, #8]
_080B50A0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B50A8
sub_080B50A8: @ 0x080B50A8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080B50D8 @ =sub_080B5220
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
	beq _080B50DC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B50E4
	.align 2, 0
_080B50D8: .4byte sub_080B5220
_080B50DC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B50E4:
	adds r4, r0, #0
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
	ldr r0, _080B5164 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080B5134
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080B5134:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r2, _080B5168 @ =0x10000400
	str r2, [r4, #8]
	ldr r0, _080B516C @ =0x20000043
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080B5174
	ldr r0, [r4, #0x40]
	ldr r1, _080B5170 @ =0xFFFFF400
	adds r0, r0, r1
	str r0, [r4, #0x40]
	adds r0, r3, #0
	orrs r0, r2
	str r0, [r4, #8]
	b _080B5180
	.align 2, 0
_080B5164: .4byte gUnk_03000510
_080B5168: .4byte 0x10000400
_080B516C: .4byte 0x20000043
_080B5170: .4byte 0xFFFFF400
_080B5174:
	ldr r0, [r4, #0x40]
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0x40]
	str r2, [r4, #8]
_080B5180:
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #8
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x12
	bl sub_0803E2B0
	ldr r1, _080B5208 @ =gUnk_02020EE0
	ldr r0, _080B520C @ =gUnk_0203AD3C
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
	bne _080B5200
	ldrb r0, [r4]
	cmp r0, #0
	bne _080B51C0
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080B5200
_080B51C0:
	ldr r1, _080B5210 @ =gUnk_08D60FA4
	ldr r4, _080B5214 @ =gSongTable
	ldr r2, _080B5218 @ =0x00000A94
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080B51E6
	movs r1, #0xa9
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080B5200
_080B51E6:
	cmp r3, #0
	beq _080B51F8
	ldr r0, _080B521C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B5200
_080B51F8:
	movs r0, #0xa9
	lsls r0, r0, #1
	bl m4aSongNumStart
_080B5200:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B5208: .4byte gUnk_02020EE0
_080B520C: .4byte gUnk_0203AD3C
_080B5210: .4byte gUnk_08D60FA4
_080B5214: .4byte gSongTable
_080B5218: .4byte 0x00000A94
_080B521C: .4byte gUnk_0203AD10

	thumb_func_start sub_080B5220
sub_080B5220: @ 0x080B5220
	push {r4, r5, r6, lr}
	ldr r0, _080B523C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B5240
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B5248
	.align 2, 0
_080B523C: .4byte gCurTask
_080B5240:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B5248:
	adds r4, r0, #0
	ldr r6, [r4, #0x70]
	adds r3, r4, #0
	adds r3, #0x60
	ldrh r2, [r3]
	ldr r5, _080B52A4 @ =0x0000FFFF
	cmp r2, r5
	beq _080B526A
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080B526A
	adds r0, r5, #0
	orrs r0, r2
	strh r0, [r3]
_080B526A:
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r5, r4, #0
	adds r5, #0x56
	strb r0, [r5]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080B5354
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _080B52A8
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	b _080B5352
	.align 2, 0
_080B52A4: .4byte 0x0000FFFF
_080B52A8:
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080B531A
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080B531A
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _080B52E0
	ldr r2, _080B52D8 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080B52DC @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080B52E2
	.align 2, 0
_080B52D8: .4byte gCurLevelInfo
_080B52DC: .4byte 0x0000065E
_080B52E0:
	movs r1, #0xff
_080B52E2:
	cmp r1, #0xff
	beq _080B531A
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080B5334 @ =gUnk_02022EB0
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
	ldr r2, _080B5338 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080B531A:
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B5340
	ldr r0, [r4, #0x40]
	ldr r2, _080B533C @ =0xFFFFF400
	adds r0, r0, r2
	str r0, [r4, #0x40]
	ldr r0, [r4, #8]
	orrs r0, r1
	b _080B5352
	.align 2, 0
_080B5334: .4byte gUnk_02022EB0
_080B5338: .4byte gUnk_02022F50
_080B533C: .4byte 0xFFFFF400
_080B5340:
	ldr r0, [r4, #0x40]
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B5352:
	str r0, [r4, #8]
_080B5354:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B535C
sub_080B535C: @ 0x080B535C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080B538C @ =sub_080B54D8
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
	beq _080B5390
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B5398
	.align 2, 0
_080B538C: .4byte sub_080B54D8
_080B5390:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B5398:
	adds r4, r0, #0
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
	ldr r0, _080B5418 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080B53E8
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080B53E8:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r2, _080B541C @ =0x10000400
	str r2, [r4, #8]
	ldr r0, _080B5420 @ =0x20000043
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080B5428
	ldr r0, [r4, #0x40]
	ldr r1, _080B5424 @ =0xFFFFF400
	adds r0, r0, r1
	str r0, [r4, #0x40]
	adds r0, r3, #0
	orrs r0, r2
	str r0, [r4, #8]
	b _080B5434
	.align 2, 0
_080B5418: .4byte gUnk_03000510
_080B541C: .4byte 0x10000400
_080B5420: .4byte 0x20000043
_080B5424: .4byte 0xFFFFF400
_080B5428:
	ldr r0, [r4, #0x40]
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0x40]
	str r2, [r4, #8]
_080B5434:
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #0x12
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xa
	bl sub_0803E2B0
	ldr r1, _080B54B8 @ =gUnk_02020EE0
	ldr r0, _080B54BC @ =gUnk_0203AD3C
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
	bne _080B54B0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080B5474
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080B54B0
_080B5474:
	ldr r1, _080B54C0 @ =gUnk_08D60FA4
	ldr r4, _080B54C4 @ =gSongTable
	ldr r2, _080B54C8 @ =0x00000A9C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080B5498
	ldr r1, _080B54CC @ =0x00000A98
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080B54B0
_080B5498:
	cmp r3, #0
	beq _080B54AA
	ldr r0, _080B54D0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B54B0
_080B54AA:
	ldr r0, _080B54D4 @ =0x00000153
	bl m4aSongNumStart
_080B54B0:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B54B8: .4byte gUnk_02020EE0
_080B54BC: .4byte gUnk_0203AD3C
_080B54C0: .4byte gUnk_08D60FA4
_080B54C4: .4byte gSongTable
_080B54C8: .4byte 0x00000A9C
_080B54CC: .4byte 0x00000A98
_080B54D0: .4byte gUnk_0203AD10
_080B54D4: .4byte 0x00000153

	thumb_func_start sub_080B54D8
sub_080B54D8: @ 0x080B54D8
	push {r4, r5, r6, lr}
	ldr r0, _080B54F4 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B54F8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B5500
	.align 2, 0
_080B54F4: .4byte gCurTask
_080B54F8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B5500:
	adds r4, r0, #0
	ldr r6, [r4, #0x70]
	adds r3, r4, #0
	adds r3, #0x60
	ldrh r2, [r3]
	ldr r5, _080B555C @ =0x0000FFFF
	cmp r2, r5
	beq _080B5522
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080B5522
	adds r0, r5, #0
	orrs r0, r2
	strh r0, [r3]
_080B5522:
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r5, r4, #0
	adds r5, #0x56
	strb r0, [r5]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080B560C
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	ble _080B5560
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	b _080B560A
	.align 2, 0
_080B555C: .4byte 0x0000FFFF
_080B5560:
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080B55D2
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080B55D2
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _080B5598
	ldr r2, _080B5590 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080B5594 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080B559A
	.align 2, 0
_080B5590: .4byte gCurLevelInfo
_080B5594: .4byte 0x0000065E
_080B5598:
	movs r1, #0xff
_080B559A:
	cmp r1, #0xff
	beq _080B55D2
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080B55EC @ =gUnk_02022EB0
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
	ldr r2, _080B55F0 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080B55D2:
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B55F8
	ldr r0, [r4, #0x40]
	ldr r2, _080B55F4 @ =0xFFFFF400
	adds r0, r0, r2
	str r0, [r4, #0x40]
	ldr r0, [r4, #8]
	orrs r0, r1
	b _080B560A
	.align 2, 0
_080B55EC: .4byte gUnk_02022EB0
_080B55F0: .4byte gUnk_02022F50
_080B55F4: .4byte 0xFFFFF400
_080B55F8:
	ldr r0, [r4, #0x40]
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B560A:
	str r0, [r4, #8]
_080B560C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B5614
sub_080B5614: @ 0x080B5614
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080B5644 @ =sub_080B56F0
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
	beq _080B5648
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B5650
	.align 2, 0
_080B5644: .4byte sub_080B56F0
_080B5648:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B5650:
	adds r4, r0, #0
	bl sub_0803E380
	movs r6, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r6, [r4, #4]
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
	ldr r0, _080B56C8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080B56A0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080B56A0:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r2, _080B56CC @ =0x10010400
	str r2, [r4, #8]
	str r6, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080B56D0
	adds r0, r3, #0
	orrs r0, r2
	str r0, [r4, #8]
	b _080B56D2
	.align 2, 0
_080B56C8: .4byte gUnk_03000510
_080B56CC: .4byte 0x10010400
_080B56D0:
	str r2, [r4, #8]
_080B56D2:
	movs r2, #0x40
	rsbs r2, r2, #0
	movs r0, #0x14
	rsbs r0, r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x24
	movs r3, #0x48
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B56F0
sub_080B56F0: @ 0x080B56F0
	push {r4, r5, r6, lr}
	ldr r0, _080B570C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B5710
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B5718
	.align 2, 0
_080B570C: .4byte gCurTask
_080B5710:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B5718:
	adds r5, r0, #0
	ldr r6, [r5, #0x70]
	adds r3, r5, #0
	adds r3, #0x60
	ldrh r2, [r3]
	ldr r4, _080B576C @ =0x0000FFFF
	cmp r2, r4
	beq _080B573A
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080B573A
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r3]
_080B573A:
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
	bne _080B582A
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B5770
	ldr r0, [r5, #8]
	orrs r0, r1
	b _080B5778
	.align 2, 0
_080B576C: .4byte 0x0000FFFF
_080B5770:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B5778:
	str r0, [r5, #8]
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #2
	bhi _080B582A
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080B57B8
	ldr r0, _080B57B0 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r5, #8]
	ldr r2, _080B57B4 @ =sub_080B4C38
	adds r0, r6, #0
	movs r1, #3
	bl ObjectSetFunc
	adds r0, r6, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	b _080B582A
	.align 2, 0
_080B57B0: .4byte 0xFFFBFFFF
_080B57B4: .4byte sub_080B4C38
_080B57B8:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080B582A
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080B582A
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _080B57F0
	ldr r2, _080B57E8 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080B57EC @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080B57F2
	.align 2, 0
_080B57E8: .4byte gCurLevelInfo
_080B57EC: .4byte 0x0000065E
_080B57F0:
	movs r1, #0xff
_080B57F2:
	cmp r1, #0xff
	beq _080B582A
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080B5830 @ =gUnk_02022EB0
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
	ldr r2, _080B5834 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080B582A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B5830: .4byte gUnk_02022EB0
_080B5834: .4byte gUnk_02022F50

	thumb_func_start sub_080B5838
sub_080B5838: @ 0x080B5838
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #3
	bne _080B584E
	adds r0, r4, #0
	bl sub_080B5AC8
	b _080B5892
_080B584E:
	ldr r2, _080B5870 @ =sub_080B408C
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r2, [r4, #0x40]
	ldr r0, [r0, #0x40]
	adds r5, r1, #0
	cmp r2, r0
	ble _080B5874
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B587C
	.align 2, 0
_080B5870: .4byte sub_080B408C
_080B5874:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B587C:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r5]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	movs r0, #1
	strh r0, [r4, #4]
_080B5892:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080B5898
sub_080B5898: @ 0x080B5898
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B58BC @ =sub_080B58C0
	movs r1, #0xa
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r4, #0x52
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B58BC: .4byte sub_080B58C0

	thumb_func_start sub_080B58C0
sub_080B58C0: @ 0x080B58C0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080B58DA
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xc
	b _080B58E4
_080B58DA:
	cmp r1, #0x3f
	bgt _080B58E6
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xb
_080B58E4:
	strb r0, [r1]
_080B58E6:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B5906
	ldr r2, _080B590C @ =sub_080B5910
	adds r0, r4, #0
	movs r1, #0xd
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080B5906:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B590C: .4byte sub_080B5910

	thumb_func_start sub_080B5910
sub_080B5910: @ 0x080B5910
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080B5976
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #3
	bne _080B5932
	adds r0, r4, #0
	bl sub_080B5AC8
	b _080B5976
_080B5932:
	ldr r2, _080B5954 @ =sub_080B408C
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r2, [r4, #0x40]
	ldr r0, [r0, #0x40]
	adds r5, r1, #0
	cmp r2, r0
	ble _080B5958
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B5960
	.align 2, 0
_080B5954: .4byte sub_080B408C
_080B5958:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B5960:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r5]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	movs r0, #1
	strh r0, [r4, #4]
_080B5976:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080B597C
sub_080B597C: @ 0x080B597C
	push {lr}
	adds r3, r0, #0
	ldr r2, _080B59B8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080B59BC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B59C0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B59C4
	adds r0, r3, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080B59C4
	adds r0, r3, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	bne _080B59C4
	adds r0, r3, #0
	bl sub_080B5AA4
	b _080B5A0E
	.align 2, 0
_080B59B8: .4byte gRngVal
_080B59BC: .4byte 0x00196225
_080B59C0: .4byte 0x3C6EF35F
_080B59C4:
	ldr r1, [r2]
	ldr r0, _080B59F0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B59F4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _080B59F8
	cmp r1, #1
	blo _080B59E6
	cmp r1, #2
	beq _080B5A00
	cmp r1, #3
	beq _080B5A08
_080B59E6:
	adds r0, r3, #0
	bl sub_080B5A14
	b _080B5A0E
	.align 2, 0
_080B59F0: .4byte 0x00196225
_080B59F4: .4byte 0x3C6EF35F
_080B59F8:
	adds r0, r3, #0
	bl sub_080B5A38
	b _080B5A0E
_080B5A00:
	adds r0, r3, #0
	bl sub_080B5A5C
	b _080B5A0E
_080B5A08:
	adds r0, r3, #0
	bl sub_080B5A80
_080B5A0E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B5A14
sub_080B5A14: @ 0x080B5A14
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B5A34 @ =sub_080B4338
	movs r1, #3
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
_080B5A34: .4byte sub_080B4338

	thumb_func_start sub_080B5A38
sub_080B5A38: @ 0x080B5A38
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B5A58 @ =sub_080B4570
	movs r1, #3
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
_080B5A58: .4byte sub_080B4570

	thumb_func_start sub_080B5A5C
sub_080B5A5C: @ 0x080B5A5C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B5A7C @ =sub_080B479C
	movs r1, #3
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
_080B5A7C: .4byte sub_080B479C

	thumb_func_start sub_080B5A80
sub_080B5A80: @ 0x080B5A80
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B5AA0 @ =sub_080B49E8
	movs r1, #3
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
_080B5AA0: .4byte sub_080B49E8

	thumb_func_start sub_080B5AA4
sub_080B5AA4: @ 0x080B5AA4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B5AC4 @ =sub_080B4C38
	movs r1, #3
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
_080B5AC4: .4byte sub_080B4C38

	thumb_func_start sub_080B5AC8
sub_080B5AC8: @ 0x080B5AC8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B5AEC @ =sub_080B5B0C
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B5AF0
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B5AF8
	.align 2, 0
_080B5AEC: .4byte sub_080B5B0C
_080B5AF0:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B5AF8:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	movs r0, #1
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B5B0C
sub_080B5B0C: @ 0x080B5B0C
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0

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

	thumb_func_start sub_080B5F18
sub_080B5F18: @ 0x080B5F18
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

	thumb_func_start CreateWaddleDoo
CreateWaddleDoo: @ 0x080B6968
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080B699C @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080B69A0 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B69A4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B69AC
	.align 2, 0
_080B699C: .4byte ObjectMain
_080B69A0: .4byte ObjectDestroy
_080B69A4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B69AC:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	movs r1, #5
	rsbs r1, r1, #0
	movs r2, #3
	rsbs r2, r2, #0
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
	adds r0, #0x3f
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	ldr r0, [r4, #0x44]
	adds r0, r0, r2
	ldr r1, _080B6A30 @ =0xFFFFF000
	ands r0, r1
	subs r0, r0, r2
	subs r0, #1
	str r0, [r4, #0x44]
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B6A0E
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080B6A0E:
	adds r0, r4, #0
	bl ObjectInitSprite
	ldrb r0, [r6, #0xe]
	cmp r0, #1
	beq _080B6A34
	cmp r0, #1
	ble _080B6A26
	cmp r0, #2
	beq _080B6A3C
	cmp r0, #3
	beq _080B6A44
_080B6A26:
	adds r0, r4, #0
	bl sub_080B6AD8
	b _080B6A4A
	.align 2, 0
_080B6A30: .4byte 0xFFFFF000
_080B6A34:
	adds r0, r4, #0
	bl sub_080B7460
	b _080B6A4A
_080B6A3C:
	adds r0, r4, #0
	bl sub_080B7408
	b _080B6A4A
_080B6A44:
	adds r0, r4, #0
	bl sub_080B7428
_080B6A4A:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080B6A54
sub_080B6A54: @ 0x080B6A54
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	beq _080B6A7E
	cmp r0, #1
	ble _080B6AB8
	cmp r0, #2
	beq _080B6AC0
	cmp r0, #3
	beq _080B6AC8
	b _080B6AB8
_080B6A7E:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #2
	bne _080B6A90
	adds r0, r4, #0
	bl sub_080B73D8
	b _080B6ACE
_080B6A90:
	movs r1, #5
	rsbs r1, r1, #0
	movs r2, #3
	rsbs r2, r2, #0
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
_080B6AB8:
	adds r0, r4, #0
	bl sub_080B6AD8
	b _080B6ACE
_080B6AC0:
	adds r0, r4, #0
	bl sub_080B7408
	b _080B6ACE
_080B6AC8:
	adds r0, r4, #0
	bl sub_080B7428
_080B6ACE:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B6AD8
sub_080B6AD8: @ 0x080B6AD8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B6B10 @ =sub_080B6B68
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x84
	movs r0, #7
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B6AFA
	movs r0, #0x41
	strh r0, [r4, #4]
_080B6AFA:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r2, [r0]
	cmp r2, #1
	beq _080B6B2C
	cmp r2, #1
	bgt _080B6B14
	cmp r2, #0
	beq _080B6B1E
	b _080B6B4E
	.align 2, 0
_080B6B10: .4byte sub_080B6B68
_080B6B14:
	cmp r2, #2
	beq _080B6B34
	cmp r2, #3
	beq _080B6B3E
	b _080B6B4E
_080B6B1E:
	adds r0, r4, #0
	adds r0, #0x50
	movs r2, #0
	movs r1, #0x80
	strh r1, [r0]
	adds r0, #0x33
	b _080B6B4C
_080B6B2C:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	b _080B6B46
_080B6B34:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	b _080B6B46
_080B6B3E:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
_080B6B46:
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x83
_080B6B4C:
	strb r2, [r0]
_080B6B4E:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B6B62
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080B6B62:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B6B68
sub_080B6B68: @ 0x080B6B68
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r2, [r3, #8]
	movs r4, #4
	orrs r2, r4
	str r2, [r3, #8]
	movs r0, #0x62
	adds r0, r0, r3
	mov ip, r0
	ldrb r1, [r0]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080B6B94
	eors r2, r5
	str r2, [r3, #8]
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080B6B94:
	mov r0, ip
	ldrb r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080B6BF6
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x50
	ble _080B6BF6
	ldr r2, _080B6BCC @ =gRngVal
	ldr r0, [r2]
	ldr r4, _080B6BD0 @ =0x00196225
	muls r0, r4, r0
	ldr r1, _080B6BD4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	ands r1, r5
	cmp r1, #0
	beq _080B6BD8
	adds r0, r3, #0
	bl sub_080B6C78
	b _080B6BF6
	.align 2, 0
_080B6BCC: .4byte gRngVal
_080B6BD0: .4byte 0x00196225
_080B6BD4: .4byte 0x3C6EF35F
_080B6BD8:
	muls r0, r4, r0
	ldr r4, _080B6BEC @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r2]
	lsrs r0, r0, #0x10
	ands r0, r5
	cmp r0, #0
	beq _080B6BF0
	strh r1, [r3, #4]
	b _080B6BF6
	.align 2, 0
_080B6BEC: .4byte 0x3C6EF35F
_080B6BF0:
	adds r0, r3, #0
	bl sub_080B6BFC
_080B6BF6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080B6BFC
sub_080B6BFC: @ 0x080B6BFC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B6C2C @ =sub_080B7324
	movs r1, #4
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #1
	strb r0, [r1]
	subs r1, #0x33
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #1
	beq _080B6C42
	cmp r0, #1
	bgt _080B6C30
	cmp r0, #0
	beq _080B6C3A
	b _080B6C5E
	.align 2, 0
_080B6C2C: .4byte sub_080B7324
_080B6C30:
	cmp r0, #2
	beq _080B6C4A
	cmp r0, #3
	beq _080B6C54
	b _080B6C5E
_080B6C3A:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	b _080B6C5C
_080B6C42:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	b _080B6C5C
_080B6C4A:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	b _080B6C5C
_080B6C54:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
_080B6C5C:
	strh r0, [r1]
_080B6C5E:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B6C72
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080B6C72:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B6C78
sub_080B6C78: @ 0x080B6C78
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B6CA4 @ =sub_080B7360
	movs r1, #6
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x52
	movs r1, #0
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	adds r0, #0x37
	ldrb r0, [r0]
	cmp r0, #1
	beq _080B6CBA
	cmp r0, #1
	bgt _080B6CA8
	cmp r0, #0
	beq _080B6CB2
	b _080B6CD2
	.align 2, 0
_080B6CA4: .4byte sub_080B7360
_080B6CA8:
	cmp r0, #2
	beq _080B6CC2
	cmp r0, #3
	beq _080B6CCA
	b _080B6CD2
_080B6CB2:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0x10
	b _080B6CD0
_080B6CBA:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0xa
	b _080B6CD0
_080B6CC2:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #8
	b _080B6CD0
_080B6CCA:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #6
_080B6CD0:
	strb r0, [r1]
_080B6CD2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B6CD8
sub_080B6CD8: @ 0x080B6CD8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080B6CF6
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
_080B6CF6:
	ldrb r1, [r4, #1]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080B6D2A
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #1
	bhi _080B6D1C
	ldrh r1, [r4, #4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_080B6DDC
	b _080B6D24
_080B6D1C:
	ldrb r1, [r4, #4]
	adds r0, r4, #0
	bl sub_080B6DDC
_080B6D24:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_080B6D2A:
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	cmp r0, #0
	bne _080B6D52
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #3
	bne _080B6D4C
	adds r0, r4, #0
	bl sub_080B7428
	b _080B6D52
_080B6D4C:
	adds r0, r4, #0
	bl sub_080B6AD8
_080B6D52:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B6D58
sub_080B6D58: @ 0x080B6D58
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	adds r4, r2, #0
	adds r4, #0x62
	ldrb r0, [r4]
	ands r1, r0
	cmp r1, #0
	beq _080B6DBE
	adds r0, r2, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #1
	bne _080B6D82
	adds r0, r2, #0
	bl sub_080B6A54
	b _080B6DD6
_080B6D82:
	adds r1, r2, #0
	adds r1, #0x83
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r2, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	adds r3, r2, #0
	adds r3, #0x50
	movs r0, #0x80
	strh r0, [r3]
	ldrb r1, [r4]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080B6DAE
	ldr r0, [r2, #8]
	eors r0, r4
	str r0, [r2, #8]
_080B6DAE:
	ldr r0, [r2, #8]
	ands r0, r4
	cmp r0, #0
	beq _080B6DD6
	ldrh r0, [r3]
	rsbs r0, r0, #0
	strh r0, [r3]
	b _080B6DD6
_080B6DBE:
	adds r1, r2, #0
	adds r1, #0x83
	movs r0, #5
	strb r0, [r1]
	ldr r0, [r2, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x85
	movs r0, #1
	strb r0, [r1]
_080B6DD6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B6DDC
sub_080B6DDC: @ 0x080B6DDC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	ldr r0, _080B6E14 @ =sub_080B7068
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080B6E18 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B6E1C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B6E24
	.align 2, 0
_080B6E14: .4byte sub_080B7068
_080B6E18: .4byte sub_0803DCCC
_080B6E1C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B6E24:
	adds r4, r0, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x44]
	str r6, [r4, #0x70]
	strh r1, [r4, #4]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080B6EE4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r5, #1
	adds r0, r5, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080B6E74
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080B6E74:
	adds r0, r4, #0
	adds r0, #0x63
	strb r5, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, _080B6EE8 @ =0x20000043
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r2, _080B6EEC @ =gUnk_0835464C
	lsls r1, r7, #1
	lsls r0, r7, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r3, r4, #0
	adds r3, #0x50
	strh r0, [r3]
	adds r1, #1
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x52
	strh r0, [r1]
	ldr r0, [r4, #0x44]
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldr r0, [r6, #8]
	ands r0, r5
	cmp r0, #0
	beq _080B6EF4
	ldr r0, [r4, #0x40]
	ldr r2, _080B6EF0 @ =0xFFFFF800
	adds r0, r0, r2
	str r0, [r4, #0x40]
	ldr r0, [r4, #8]
	orrs r0, r5
	str r0, [r4, #8]
	ldrh r0, [r3]
	rsbs r0, r0, #0
	strh r0, [r3]
	b _080B6F08
	.align 2, 0
_080B6EE4: .4byte gUnk_03000510
_080B6EE8: .4byte 0x20000043
_080B6EEC: .4byte gUnk_0835464C
_080B6EF0: .4byte 0xFFFFF800
_080B6EF4:
	ldr r0, [r4, #0x40]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_080B6F08:
	movs r2, #2
	rsbs r2, r2, #0
	movs r0, #2
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #2
	bl sub_0803E2B0
	movs r2, #0
	mov r8, r2
	str r2, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0803E308
	adds r1, r4, #0
	adds r1, #0x10
	movs r3, #0xcc
	lsls r3, r3, #2
	movs r0, #0xa
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #8
	bl sub_080708DC
	adds r5, r4, #0
	adds r5, #0x2f
	mov r0, r8
	strb r0, [r5]
	ldr r3, [r6, #0xc]
	movs r0, #0x10
	ands r3, r0
	cmp r3, #0
	beq _080B6F92
	ldr r2, _080B6F80 @ =gUnk_02020EE0
	ldr r0, _080B6F84 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r1, [r7]
	cmp r0, r1
	bne _080B6F8C
	ldr r0, _080B6F88 @ =gUnk_08351648
	movs r2, #0x97
	lsls r2, r2, #3
	adds r0, r0, r2
	ldrh r6, [r0]
	b _080B6FB4
	.align 2, 0
_080B6F80: .4byte gUnk_02020EE0
_080B6F84: .4byte gUnk_0203AD3C
_080B6F88: .4byte gUnk_08351648
_080B6F8C:
	mov r0, r8
	strb r0, [r5]
	b _080B6FDA
_080B6F92:
	ldr r2, _080B6FD0 @ =gUnk_02020EE0
	ldr r0, _080B6FD4 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r1, [r7]
	cmp r0, r1
	bne _080B6FD8
	movs r6, #0xc2
	lsls r6, r6, #2
_080B6FB4:
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080B6FDA
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080B6FDA
	.align 2, 0
_080B6FD0: .4byte gUnk_02020EE0
_080B6FD4: .4byte gUnk_0203AD3C
_080B6FD8:
	strb r3, [r5]
_080B6FDA:
	ldr r1, _080B7050 @ =gUnk_02020EE0
	ldr r0, _080B7054 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	bne _080B7042
	ldrb r0, [r4]
	cmp r0, #0
	bne _080B7002
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080B7042
_080B7002:
	ldr r1, _080B7058 @ =gUnk_08D60FA4
	ldr r4, _080B705C @ =gSongTable
	ldr r2, _080B7060 @ =0x000009D4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080B7028
	movs r1, #0x9d
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080B7042
_080B7028:
	cmp r3, #0
	beq _080B703A
	ldr r0, _080B7064 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B7042
_080B703A:
	movs r0, #0x9d
	lsls r0, r0, #1
	bl m4aSongNumStart
_080B7042:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B7050: .4byte gUnk_02020EE0
_080B7054: .4byte gUnk_0203AD3C
_080B7058: .4byte gUnk_08D60FA4
_080B705C: .4byte gSongTable
_080B7060: .4byte 0x000009D4
_080B7064: .4byte gUnk_0203AD10

	thumb_func_start sub_080B7068
sub_080B7068: @ 0x080B7068
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r0, _080B7088 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B708C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B7094
	.align 2, 0
_080B7088: .4byte gCurTask
_080B708C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B7094:
	adds r5, r0, #0
	ldr r6, [r5, #0x70]
	ldr r2, _080B7100 @ =gUnk_02020EE0
	ldr r0, _080B7104 @ =gUnk_0203AD3C
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
	bne _080B7148
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080B7110
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080B716C
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #8
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080B7108 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080B710C @ =0x0400000A
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
	b _080B716C
	.align 2, 0
_080B7100: .4byte gUnk_02020EE0
_080B7104: .4byte gUnk_0203AD3C
_080B7108: .4byte 0xFFF7FFFF
_080B710C: .4byte 0x0400000A
_080B7110:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080B716C
	movs r0, #8
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080B7140 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080B7144 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080B716C
	.align 2, 0
_080B7140: .4byte 0xFFF7FFFF
_080B7144: .4byte 0x0400000A
_080B7148:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _080B7162
	ldr r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _080B7162
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0x10]
_080B7162:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_080B716C:
	ldr r3, [r6, #0xc]
	movs r0, #0x10
	ands r3, r0
	cmp r3, #0
	beq _080B71C2
	ldr r2, _080B71AC @ =gUnk_02020EE0
	ldr r0, _080B71B0 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r1, [r7]
	cmp r0, r1
	bne _080B71B8
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080B721A
	ldr r0, _080B71B4 @ =gUnk_08351648
	movs r2, #0x97
	lsls r2, r2, #3
	adds r0, r0, r2
	ldrh r6, [r0]
	b _080B71EE
	.align 2, 0
_080B71AC: .4byte gUnk_02020EE0
_080B71B0: .4byte gUnk_0203AD3C
_080B71B4: .4byte gUnk_08351648
_080B71B8:
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	b _080B721A
_080B71C2:
	ldr r2, _080B720C @ =gUnk_02020EE0
	ldr r0, _080B7210 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r1, [r7]
	cmp r0, r1
	bne _080B7214
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080B721A
	movs r6, #0xc2
	lsls r6, r6, #2
_080B71EE:
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080B721A
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080B721A
	.align 2, 0
_080B720C: .4byte gUnk_02020EE0
_080B7210: .4byte gUnk_0203AD3C
_080B7214:
	adds r0, r5, #0
	adds r0, #0x2f
	strb r3, [r0]
_080B721A:
	ldr r6, [r5, #0x70]
	ldrh r2, [r7]
	ldr r3, _080B726C @ =0x0000FFFF
	cmp r2, r3
	beq _080B7236
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080B7236
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r7]
_080B7236:
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080B7314
	ldr r1, [r5, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r5, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B7270
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _080B7270
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r5, #8]
	b _080B7314
	.align 2, 0
_080B726C: .4byte 0x0000FFFF
_080B7270:
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080B72E6
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080B72E6
	adds r1, r5, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080B72AC
	ldr r2, _080B72A4 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _080B72A8 @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _080B72AE
	.align 2, 0
_080B72A4: .4byte gCurLevelInfo
_080B72A8: .4byte 0x0000065E
_080B72AC:
	movs r1, #0xff
_080B72AE:
	cmp r1, #0xff
	beq _080B72E6
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080B731C @ =gUnk_02022EB0
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
	ldr r2, _080B7320 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080B72E6:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080B730E
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
_080B730E:
	adds r0, r5, #0
	bl sub_0806F8BC
_080B7314:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B731C: .4byte gUnk_02022EB0
_080B7320: .4byte gUnk_02022F50

	thumb_func_start sub_080B7324
sub_080B7324: @ 0x080B7324
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080B7348
	ldr r0, [r2, #8]
	eors r0, r4
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080B7348:
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B7358
	adds r0, r2, #0
	bl sub_080B6AD8
_080B7358:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B7360
sub_080B7360: @ 0x080B7360
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080B737E
	adds r1, r2, #0
	adds r1, #0x85
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
_080B737E:
	adds r0, r2, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B738E
	adds r0, r2, #0
	bl sub_080B7394
_080B738E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B7394
sub_080B7394: @ 0x080B7394
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B73C0 @ =sub_080B6CD8
	movs r1, #7
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x52
	movs r1, #0
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	adds r0, #0x37
	ldrb r0, [r0]
	cmp r0, #0
	blt _080B73D0
	cmp r0, #1
	bgt _080B73C4
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #8
	b _080B73CE
	.align 2, 0
_080B73C0: .4byte sub_080B6CD8
_080B73C4:
	cmp r0, #3
	bgt _080B73D0
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #4
_080B73CE:
	strb r0, [r1]
_080B73D0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B73D8
sub_080B73D8: @ 0x080B73D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B7404 @ =sub_080B6D58
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
	adds r1, #0x32
	movs r0, #5
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B7404: .4byte sub_080B6D58

	thumb_func_start sub_080B7408
sub_080B7408: @ 0x080B7408
	push {lr}
	ldr r2, _080B7418 @ =sub_080B741C
	movs r1, #0
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080B7418: .4byte sub_080B741C

	thumb_func_start sub_080B741C
sub_080B741C: @ 0x080B741C
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_080B7428
sub_080B7428: @ 0x080B7428
	push {lr}
	ldr r2, _080B7438 @ =sub_080B743C
	movs r1, #0
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080B7438: .4byte sub_080B743C

	thumb_func_start sub_080B743C
sub_080B743C: @ 0x080B743C
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3e
	ble _080B745C
	adds r0, r2, #0
	bl sub_080B6C78
_080B745C:
	pop {r0}
	bx r0

	thumb_func_start sub_080B7460
sub_080B7460: @ 0x080B7460
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _080B74B0 @ =sub_080B74B4
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
	movs r2, #5
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #5
	bl sub_0803E2B0
	adds r1, r4, #0
	adds r1, #0x84
	movs r0, #5
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B74B0: .4byte sub_080B74B4

	thumb_func_start sub_080B74B4
sub_080B74B4: @ 0x080B74B4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #0x10]
	adds r0, r4, #0
	bl sub_080C29C0
	ldr r0, [r4, #8]
	ldr r1, _080B74D8 @ =0xFFFFDFFF
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_080B73D8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B74D8: .4byte 0xFFFFDFFF

	thumb_func_start CreateFlamer
CreateFlamer: @ 0x080B74DC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080B7510 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080B7514 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B7518
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B7520
	.align 2, 0
_080B7510: .4byte ObjectMain
_080B7514: .4byte ObjectDestroy
_080B7518:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B7520:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #0x40]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bne _080B7546
	ldr r0, [r4, #0xc]
	orrs r0, r1
	str r0, [r4, #0xc]
_080B7546:
	movs r1, #5
	rsbs r1, r1, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #5
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
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B7580
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B7588
_080B7580:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B7588:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl ObjectInitSprite
	ldr r0, [r4, #0x68]
	ldr r1, _080B75BC @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x68]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	beq _080B75AC
	cmp r0, #1
	ble _080B75AC
	cmp r0, #2
	beq _080B75C0
_080B75AC:
	adds r0, r4, #0
	bl sub_0809D8C8
	adds r0, r4, #0
	bl sub_080B9048
	b _080B75C6
	.align 2, 0
_080B75BC: .4byte 0xFFFFFEFF
_080B75C0:
	adds r0, r4, #0
	bl sub_080BA5A4
_080B75C6:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080B75D0
sub_080B75D0: @ 0x080B75D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	movs r1, #0
	adds r0, #0x85
	ldrb r2, [r0]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	bne _080B75EE
	bl _080B7E5C
_080B75EE:
	movs r0, #0xc0
	ands r0, r2
	cmp r0, #0x40
	beq _080B75F8
	b _080B7848
_080B75F8:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B7604
	b _080B7728
_080B7604:
	ldr r0, _080B7720 @ =gUnk_082D88B8
	mov sb, r0
	movs r1, #0
	mov r8, r1
	ldr r0, [r4, #0x40]
	asrs r5, r0, #0xc
	ldr r0, _080B7724 @ =gCurLevelInfo
	mov ip, r0
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r7, [r1]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r7, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	adds r6, r1, #0
	cmp r5, r0
	bgt _080B7682
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	blt _080B7682
	adds r0, r4, #0
	adds r0, #0x3f
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #4
	lsls r1, r1, #8
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B7682
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B7682
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080B7682:
	mov r1, r8
	lsls r0, r1, #2
	add r0, sb
	ldr r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080B7696
	bl _080B7E5C
_080B7696:
	ldr r0, _080B7720 @ =gUnk_082D88B8
	mov r8, r0
	movs r7, #0
	adds r0, r4, #0
	adds r0, #0x3c
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, #1
	lsls r1, r1, #8
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	asrs r5, r0, #0xc
	ldr r1, _080B7724 @ =gCurLevelInfo
	mov ip, r1
	ldrb r6, [r6]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	bgt _080B7718
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	blt _080B7718
	adds r0, r4, #0
	adds r0, #0x3f
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #4
	lsls r1, r1, #8
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B7718
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B7718
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080B7718:
	lsls r0, r7, #2
	add r0, r8
	b _080B7E5A
	.align 2, 0
_080B7720: .4byte gUnk_082D88B8
_080B7724: .4byte gCurLevelInfo
_080B7728:
	ldr r0, _080B7840 @ =gUnk_082D88B8
	mov sb, r0
	movs r1, #0
	mov r8, r1
	ldr r0, [r4, #0x40]
	asrs r5, r0, #0xc
	ldr r0, _080B7844 @ =gCurLevelInfo
	mov ip, r0
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r7, [r1]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r7, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	adds r6, r1, #0
	cmp r5, r0
	bgt _080B77A6
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	blt _080B77A6
	adds r0, r4, #0
	adds r0, #0x3f
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #4
	lsls r1, r1, #8
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B77A6
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B77A6
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080B77A6:
	mov r1, r8
	lsls r0, r1, #2
	add r0, sb
	ldr r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080B77B8
	b _080B7E5C
_080B77B8:
	ldr r0, _080B7840 @ =gUnk_082D88B8
	mov r8, r0
	movs r7, #0
	adds r0, r4, #0
	adds r0, #0x3e
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #1
	lsls r1, r1, #8
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	asrs r5, r0, #0xc
	ldr r1, _080B7844 @ =gCurLevelInfo
	mov ip, r1
	ldrb r6, [r6]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	bgt _080B783A
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	blt _080B783A
	adds r0, r4, #0
	adds r0, #0x3f
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #4
	lsls r1, r1, #8
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B783A
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B783A
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080B783A:
	lsls r0, r7, #2
	add r0, r8
	b _080B7E5A
	.align 2, 0
_080B7840: .4byte gUnk_082D88B8
_080B7844: .4byte gCurLevelInfo
_080B7848:
	cmp r0, #0
	beq _080B784E
	b _080B7A9C
_080B784E:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B785A
	b _080B797C
_080B785A:
	ldr r0, _080B7974 @ =gUnk_082D88B8
	mov sb, r0
	movs r1, #0
	mov r8, r1
	ldr r0, [r4, #0x40]
	asrs r5, r0, #0xc
	ldr r0, _080B7978 @ =gCurLevelInfo
	mov ip, r0
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r7, [r1]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r7, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	adds r6, r1, #0
	cmp r5, r0
	bgt _080B78D8
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	blt _080B78D8
	adds r0, r4, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, #4
	lsls r1, r1, #8
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B78D8
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B78D8
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080B78D8:
	mov r1, r8
	lsls r0, r1, #2
	add r0, sb
	ldr r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080B78EA
	b _080B7E5C
_080B78EA:
	ldr r0, _080B7974 @ =gUnk_082D88B8
	mov r8, r0
	movs r7, #0
	adds r0, r4, #0
	adds r0, #0x3e
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #1
	lsls r1, r1, #8
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	asrs r5, r0, #0xc
	ldr r1, _080B7978 @ =gCurLevelInfo
	mov ip, r1
	ldrb r6, [r6]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	bgt _080B796C
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	blt _080B796C
	adds r0, r4, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, #4
	lsls r1, r1, #8
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B796C
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B796C
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080B796C:
	lsls r0, r7, #2
	add r0, r8
	b _080B7E5A
	.align 2, 0
_080B7974: .4byte gUnk_082D88B8
_080B7978: .4byte gCurLevelInfo
_080B797C:
	ldr r0, _080B7A94 @ =gUnk_082D88B8
	mov sb, r0
	movs r1, #0
	mov r8, r1
	ldr r0, [r4, #0x40]
	asrs r5, r0, #0xc
	ldr r0, _080B7A98 @ =gCurLevelInfo
	mov ip, r0
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r7, [r1]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r7, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	adds r6, r1, #0
	cmp r5, r0
	bgt _080B79FA
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	blt _080B79FA
	adds r0, r4, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, #4
	lsls r1, r1, #8
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B79FA
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B79FA
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080B79FA:
	mov r1, r8
	lsls r0, r1, #2
	add r0, sb
	ldr r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080B7A0C
	b _080B7E5C
_080B7A0C:
	ldr r0, _080B7A94 @ =gUnk_082D88B8
	mov r8, r0
	movs r7, #0
	adds r0, r4, #0
	adds r0, #0x3c
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, #1
	lsls r1, r1, #8
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	asrs r5, r0, #0xc
	ldr r1, _080B7A98 @ =gCurLevelInfo
	mov ip, r1
	ldrb r6, [r6]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	bgt _080B7A8E
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	blt _080B7A8E
	adds r0, r4, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, #4
	lsls r1, r1, #8
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B7A8E
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B7A8E
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080B7A8E:
	lsls r0, r7, #2
	add r0, r8
	b _080B7E5A
	.align 2, 0
_080B7A94: .4byte gUnk_082D88B8
_080B7A98: .4byte gCurLevelInfo
_080B7A9C:
	cmp r0, #0x80
	beq _080B7AA2
	b _080B7C84
_080B7AA2:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B7B98
	ldr r0, _080B7B90 @ =gUnk_082D88B8
	mov sl, r0
	movs r1, #0
	mov sb, r1
	adds r2, r4, #0
	adds r2, #0x3c
	movs r1, #0
	ldrsb r1, [r2, r1]
	subs r1, #4
	lsls r1, r1, #8
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	asrs r5, r0, #0xc
	ldr r0, _080B7B94 @ =gCurLevelInfo
	mov ip, r0
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	mov r8, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r3, r8
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	adds r6, r1, #0
	adds r7, r2, #0
	cmp r5, r0
	bgt _080B7B2E
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	blt _080B7B2E
	ldr r0, [r4, #0x44]
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B7B2E
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B7B2E
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, r8
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_080B7B2E:
	mov r1, sb
	lsls r0, r1, #2
	add r0, sl
	ldr r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080B7B40
	b _080B7E5C
_080B7B40:
	ldr r0, _080B7B90 @ =gUnk_082D88B8
	mov sb, r0
	movs r1, #0
	mov r8, r1
	movs r1, #0
	ldrsb r1, [r7, r1]
	subs r1, #4
	lsls r1, r1, #8
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	asrs r5, r0, #0xc
	ldr r0, _080B7B94 @ =gCurLevelInfo
	mov ip, r0
	ldrb r6, [r6]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	ble _080B7B74
	b _080B7E54
_080B7B74:
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	bge _080B7B84
	b _080B7E54
_080B7B84:
	adds r0, r4, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, #1
	b _080B7E1C
	.align 2, 0
_080B7B90: .4byte gUnk_082D88B8
_080B7B94: .4byte gCurLevelInfo
_080B7B98:
	ldr r0, _080B7C7C @ =gUnk_082D88B8
	mov sl, r0
	movs r1, #0
	mov sb, r1
	adds r2, r4, #0
	adds r2, #0x3e
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r1, #4
	lsls r1, r1, #8
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	asrs r5, r0, #0xc
	ldr r0, _080B7C80 @ =gCurLevelInfo
	mov ip, r0
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	mov r8, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r3, r8
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	adds r6, r1, #0
	adds r7, r2, #0
	cmp r5, r0
	bgt _080B7C1A
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	blt _080B7C1A
	ldr r0, [r4, #0x44]
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B7C1A
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B7C1A
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, r8
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_080B7C1A:
	mov r1, sb
	lsls r0, r1, #2
	add r0, sl
	ldr r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080B7C2C
	b _080B7E5C
_080B7C2C:
	ldr r0, _080B7C7C @ =gUnk_082D88B8
	mov sb, r0
	movs r1, #0
	mov r8, r1
	movs r1, #0
	ldrsb r1, [r7, r1]
	adds r1, #4
	lsls r1, r1, #8
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	asrs r5, r0, #0xc
	ldr r0, _080B7C80 @ =gCurLevelInfo
	mov ip, r0
	ldrb r6, [r6]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	ble _080B7C60
	b _080B7E54
_080B7C60:
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	bge _080B7C70
	b _080B7E54
_080B7C70:
	adds r0, r4, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, #1
	b _080B7E1C
	.align 2, 0
_080B7C7C: .4byte gUnk_082D88B8
_080B7C80: .4byte gCurLevelInfo
_080B7C84:
	cmp r0, #0xc0
	beq _080B7C8A
	b _080B7E5C
_080B7C8A:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B7D40
	ldr r0, _080B7D38 @ =gUnk_082D88B8
	mov sl, r0
	movs r1, #0
	mov sb, r1
	adds r2, r4, #0
	adds r2, #0x3e
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r1, #4
	lsls r1, r1, #8
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	asrs r5, r0, #0xc
	ldr r0, _080B7D3C @ =gCurLevelInfo
	mov ip, r0
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	mov r8, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r3, r8
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	adds r6, r1, #0
	adds r7, r2, #0
	cmp r5, r0
	bgt _080B7D16
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	blt _080B7D16
	ldr r0, [r4, #0x44]
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B7D16
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B7D16
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, r8
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_080B7D16:
	mov r1, sb
	lsls r0, r1, #2
	add r0, sl
	ldr r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080B7D28
	b _080B7E5C
_080B7D28:
	ldr r0, _080B7D38 @ =gUnk_082D88B8
	mov sb, r0
	movs r1, #0
	mov r8, r1
	movs r1, #0
	ldrsb r1, [r7, r1]
	adds r1, #4
	b _080B7DE0
	.align 2, 0
_080B7D38: .4byte gUnk_082D88B8
_080B7D3C: .4byte gCurLevelInfo
_080B7D40:
	ldr r0, _080B7E6C @ =gUnk_082D88B8
	mov sl, r0
	movs r1, #0
	mov sb, r1
	adds r2, r4, #0
	adds r2, #0x3c
	movs r1, #0
	ldrsb r1, [r2, r1]
	subs r1, #4
	lsls r1, r1, #8
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	asrs r5, r0, #0xc
	ldr r0, _080B7E70 @ =gCurLevelInfo
	mov ip, r0
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	mov r8, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r3, r8
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	adds r6, r1, #0
	adds r7, r2, #0
	cmp r5, r0
	bgt _080B7DC2
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	blt _080B7DC2
	ldr r0, [r4, #0x44]
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B7DC2
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B7DC2
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, r8
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_080B7DC2:
	mov r1, sb
	lsls r0, r1, #2
	add r0, sl
	ldr r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080B7E5C
	ldr r0, _080B7E6C @ =gUnk_082D88B8
	mov sb, r0
	movs r1, #0
	mov r8, r1
	movs r1, #0
	ldrsb r1, [r7, r1]
	subs r1, #4
_080B7DE0:
	lsls r1, r1, #8
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	asrs r5, r0, #0xc
	ldr r0, _080B7E70 @ =gCurLevelInfo
	mov ip, r0
	ldrb r6, [r6]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	bgt _080B7E54
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	blt _080B7E54
	adds r0, r4, #0
	adds r0, #0x3f
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #1
_080B7E1C:
	lsls r1, r1, #8
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B7E54
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B7E54
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080B7E54:
	mov r1, r8
	lsls r0, r1, #2
	add r0, sb
_080B7E5A:
	ldr r1, [r0]
_080B7E5C:
	adds r0, r1, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080B7E6C: .4byte gUnk_082D88B8
_080B7E70: .4byte gCurLevelInfo

	thumb_func_start sub_080B7E74
sub_080B7E74: @ 0x080B7E74
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	movs r1, #0
	adds r0, #0x85
	ldrb r3, [r0]
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	bne _080B7E88
	b _080B818C
_080B7E88:
	movs r0, #0xc0
	ands r0, r3
	cmp r0, #0x40
	beq _080B7E92
	b _080B7FA4
_080B7E92:
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B7F20
	ldr r6, _080B7F18 @ =gUnk_082D88B8
	movs r5, #0
	adds r0, r2, #0
	adds r0, #0x3c
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, #1
	lsls r1, r1, #8
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	asrs r1, r0, #0xc
	ldr r0, _080B7F1C @ =gCurLevelInfo
	mov ip, r0
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r4, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r4, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B7F12
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B7F12
	ldr r0, [r2, #0x44]
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B7F12
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B7F12
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080B7F12:
	lsls r0, r5, #2
	adds r0, r6, r0
	b _080B818A
	.align 2, 0
_080B7F18: .4byte gUnk_082D88B8
_080B7F1C: .4byte gCurLevelInfo
_080B7F20:
	ldr r6, _080B7F9C @ =gUnk_082D88B8
	movs r5, #0
	adds r0, r2, #0
	adds r0, #0x3e
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #1
	lsls r1, r1, #8
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	asrs r1, r0, #0xc
	ldr r0, _080B7FA0 @ =gCurLevelInfo
	mov ip, r0
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r4, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r4, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B7F96
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B7F96
	ldr r0, [r2, #0x44]
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B7F96
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B7F96
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080B7F96:
	lsls r0, r5, #2
	adds r0, r6, r0
	b _080B818A
	.align 2, 0
_080B7F9C: .4byte gUnk_082D88B8
_080B7FA0: .4byte gCurLevelInfo
_080B7FA4:
	cmp r0, #0
	beq _080B7FAA
	b _080B80BC
_080B7FAA:
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B8038
	ldr r6, _080B8030 @ =gUnk_082D88B8
	movs r5, #0
	adds r0, r2, #0
	adds r0, #0x3e
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #1
	lsls r1, r1, #8
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	asrs r1, r0, #0xc
	ldr r0, _080B8034 @ =gCurLevelInfo
	mov ip, r0
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r4, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r4, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B802A
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B802A
	ldr r0, [r2, #0x44]
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B802A
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B802A
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080B802A:
	lsls r0, r5, #2
	adds r0, r6, r0
	b _080B818A
	.align 2, 0
_080B8030: .4byte gUnk_082D88B8
_080B8034: .4byte gCurLevelInfo
_080B8038:
	ldr r6, _080B80B4 @ =gUnk_082D88B8
	movs r5, #0
	adds r0, r2, #0
	adds r0, #0x3c
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, #1
	lsls r1, r1, #8
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	asrs r1, r0, #0xc
	ldr r0, _080B80B8 @ =gCurLevelInfo
	mov ip, r0
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r4, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r4, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B80AE
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B80AE
	ldr r0, [r2, #0x44]
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B80AE
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B80AE
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080B80AE:
	lsls r0, r5, #2
	adds r0, r6, r0
	b _080B818A
	.align 2, 0
_080B80B4: .4byte gUnk_082D88B8
_080B80B8: .4byte gCurLevelInfo
_080B80BC:
	cmp r0, #0x80
	bne _080B810C
	ldr r7, _080B8104 @ =gUnk_082D88B8
	movs r6, #0
	ldr r0, [r2, #0x40]
	asrs r4, r0, #0xc
	ldr r0, _080B8108 @ =gCurLevelInfo
	mov ip, r0
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r5, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r5, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r4, r0
	bgt _080B8186
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r4, r0
	blt _080B8186
	adds r0, r2, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, #1
	b _080B8150
	.align 2, 0
_080B8104: .4byte gUnk_082D88B8
_080B8108: .4byte gCurLevelInfo
_080B810C:
	cmp r0, #0xc0
	bne _080B818C
	ldr r7, _080B8194 @ =gUnk_082D88B8
	movs r6, #0
	ldr r0, [r2, #0x40]
	asrs r4, r0, #0xc
	ldr r0, _080B8198 @ =gCurLevelInfo
	mov ip, r0
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r5, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r5, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r4, r0
	bgt _080B8186
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r4, r0
	blt _080B8186
	adds r0, r2, #0
	adds r0, #0x3f
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #1
_080B8150:
	lsls r1, r1, #8
	ldr r0, [r2, #0x44]
	adds r0, r0, r1
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B8186
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B8186
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080B8186:
	lsls r0, r6, #2
	adds r0, r7, r0
_080B818A:
	ldr r1, [r0]
_080B818C:
	adds r0, r1, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080B8194: .4byte gUnk_082D88B8
_080B8198: .4byte gCurLevelInfo

	thumb_func_start sub_080B819C
sub_080B819C: @ 0x080B819C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r4, r0, #0
	movs r2, #0
	adds r0, #0x85
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080B81BA
	b _080B8940
_080B81BA:
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0x40
	beq _080B81C4
	b _080B837E
_080B81C4:
	ldr r0, [r4, #0x40]
	lsls r0, r0, #4
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	adds r0, #0x3f
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #8
	ldr r2, [r4, #0x44]
	adds r0, r2, r0
	lsls r0, r0, #4
	lsrs r7, r0, #0x10
	adds r0, r1, #3
	lsls r0, r0, #8
	adds r0, r2, r0
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	mov sl, r0
	subs r1, #3
	lsls r1, r1, #8
	adds r2, r2, r1
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	lsls r1, r5, #0x10
	mov sb, r1
	asrs r2, r1, #0x10
	ldr r0, _080B836C @ =gCurLevelInfo
	mov ip, r0
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r6, [r1]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	mov r8, r1
	cmp r2, r0
	bgt _080B8260
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B8260
	lsls r2, r7, #0x10
	asrs r1, r2, #0x10
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B8260
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B8260
	mov r0, sb
	lsrs r1, r0, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
_080B8260:
	ldr r1, [sp, #8]
	lsls r0, r1, #2
	ldr r1, _080B8370 @ =gUnk_082D88B8
	adds r0, r1, r0
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	beq _080B8276
	b _080B8940
_080B8276:
	adds r0, r1, #0
	mov sb, r0
	movs r7, #0
	lsls r1, r5, #0x10
	asrs r2, r1, #0x10
	ldr r0, _080B836C @ =gCurLevelInfo
	mov ip, r0
	mov r0, r8
	ldrb r5, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r5, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	adds r6, r1, #0
	cmp r2, r0
	bgt _080B82DE
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B82DE
	mov r1, sl
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B82DE
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B82DE
	lsrs r1, r6, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080B82DE:
	lsls r0, r7, #2
	add r0, sb
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	bne _080B8374
	ldr r0, _080B8370 @ =gUnk_082D88B8
	mov sl, r0
	movs r1, #0
	mov sb, r1
	asrs r2, r6, #0x10
	ldr r3, _080B836C @ =gCurLevelInfo
	mov r0, r8
	ldrb r7, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r1, r7, #0
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x50
	adds r0, r1, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B8354
	adds r0, r3, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B8354
	ldr r0, [sp, #4]
	lsls r5, r0, #0x10
	asrs r2, r5, #0x10
	adds r0, r3, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B8354
	adds r0, r3, #0
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B8354
	lsrs r1, r6, #0x10
	lsrs r2, r5, #0x10
	adds r0, r7, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_080B8354:
	mov r1, sb
	lsls r0, r1, #2
	add r0, sl
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	bne _080B8368
	b _080B8940
_080B8368:
	ldr r1, [sp, #4]
	b _080B8376
	.align 2, 0
_080B836C: .4byte gCurLevelInfo
_080B8370: .4byte gUnk_082D88B8
_080B8374:
	mov r1, sl
_080B8376:
	lsls r0, r1, #0x10
	asrs r0, r0, #4
	str r0, [r4, #0x44]
	b _080B8940
_080B837E:
	cmp r0, #0
	beq _080B8384
	b _080B8544
_080B8384:
	ldr r0, [r4, #0x40]
	lsls r0, r0, #4
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #8
	ldr r2, [r4, #0x44]
	adds r0, r2, r0
	lsls r0, r0, #4
	lsrs r7, r0, #0x10
	adds r0, r1, #3
	lsls r0, r0, #8
	adds r0, r2, r0
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	mov sl, r0
	subs r1, #3
	lsls r1, r1, #8
	adds r2, r2, r1
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	movs r0, #0
	str r0, [sp, #0xc]
	lsls r1, r5, #0x10
	mov sb, r1
	asrs r2, r1, #0x10
	ldr r0, _080B852C @ =gCurLevelInfo
	mov ip, r0
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r6, [r1]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	mov r8, r1
	cmp r2, r0
	bgt _080B8420
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B8420
	lsls r2, r7, #0x10
	asrs r1, r2, #0x10
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B8420
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B8420
	mov r0, sb
	lsrs r1, r0, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
_080B8420:
	ldr r1, [sp, #0xc]
	lsls r0, r1, #2
	ldr r1, _080B8530 @ =gUnk_082D88B8
	adds r0, r1, r0
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	beq _080B8436
	b _080B8940
_080B8436:
	adds r0, r1, #0
	mov sb, r0
	movs r7, #0
	lsls r1, r5, #0x10
	asrs r2, r1, #0x10
	ldr r0, _080B852C @ =gCurLevelInfo
	mov ip, r0
	mov r0, r8
	ldrb r5, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r5, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	adds r6, r1, #0
	cmp r2, r0
	bgt _080B849E
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B849E
	mov r1, sl
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B849E
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B849E
	lsrs r1, r6, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080B849E:
	lsls r0, r7, #2
	add r0, sb
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	bne _080B8534
	ldr r0, _080B8530 @ =gUnk_082D88B8
	mov sl, r0
	movs r1, #0
	mov sb, r1
	asrs r2, r6, #0x10
	ldr r3, _080B852C @ =gCurLevelInfo
	mov r0, r8
	ldrb r7, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r1, r7, #0
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x50
	adds r0, r1, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B8514
	adds r0, r3, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B8514
	ldr r0, [sp, #4]
	lsls r5, r0, #0x10
	asrs r2, r5, #0x10
	adds r0, r3, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B8514
	adds r0, r3, #0
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B8514
	lsrs r1, r6, #0x10
	lsrs r2, r5, #0x10
	adds r0, r7, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_080B8514:
	mov r1, sb
	lsls r0, r1, #2
	add r0, sl
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	bne _080B8528
	b _080B8940
_080B8528:
	ldr r1, [sp, #4]
	b _080B8536
	.align 2, 0
_080B852C: .4byte gCurLevelInfo
_080B8530: .4byte gUnk_082D88B8
_080B8534:
	mov r1, sl
_080B8536:
	lsls r0, r1, #0x10
	asrs r0, r0, #4
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r4, #0x44]
	b _080B8940
_080B8544:
	cmp r0, #0x80
	beq _080B854A
	b _080B873E
_080B854A:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B855A
	adds r0, r4, #0
	adds r0, #0x3c
	b _080B855E
_080B855A:
	adds r0, r4, #0
	adds r0, #0x3e
_080B855E:
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #8
	ldr r2, [r4, #0x40]
	adds r0, r2, r0
	lsls r0, r0, #4
	lsrs r5, r0, #0x10
	ldr r0, [r4, #0x44]
	lsls r0, r0, #4
	lsrs r7, r0, #0x10
	adds r0, r1, #3
	lsls r0, r0, #8
	adds r0, r2, r0
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	mov sl, r0
	subs r1, #3
	lsls r1, r1, #8
	adds r2, r2, r1
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	str r2, [sp]
	movs r0, #0
	str r0, [sp, #0x10]
	lsls r5, r5, #0x10
	mov sb, r5
	asrs r5, r5, #0x10
	ldr r1, _080B871C @ =gCurLevelInfo
	mov ip, r1
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r6, [r1]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	mov r8, r1
	cmp r5, r0
	bgt _080B85F6
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	blt _080B85F6
	lsls r2, r7, #0x10
	asrs r1, r2, #0x10
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B85F6
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B85F6
	mov r0, sb
	lsrs r1, r0, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
_080B85F6:
	ldr r1, [sp, #0x10]
	lsls r0, r1, #2
	ldr r1, _080B8720 @ =gUnk_082D88B8
	adds r0, r1, r0
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	beq _080B860C
	b _080B8940
_080B860C:
	movs r0, #0
	mov sb, r0
	mov r0, sl
	lsls r1, r0, #0x10
	asrs r2, r1, #0x10
	ldr r0, _080B871C @ =gCurLevelInfo
	mov ip, r0
	mov r0, r8
	ldrb r6, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	adds r5, r1, #0
	cmp r2, r0
	bgt _080B8674
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B8674
	lsls r2, r7, #0x10
	asrs r1, r2, #0x10
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B8674
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B8674
	lsrs r1, r5, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_080B8674:
	mov r1, sb
	lsls r0, r1, #2
	ldr r1, _080B8720 @ =gUnk_082D88B8
	adds r0, r1, r0
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	bne _080B8728
	adds r0, r1, #0
	mov sl, r0
	movs r1, #0
	mov sb, r1
	ldr r0, [sp]
	lsls r1, r0, #0x10
	asrs r2, r1, #0x10
	ldr r0, _080B871C @ =gCurLevelInfo
	mov ip, r0
	mov r0, r8
	ldrb r6, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	adds r5, r1, #0
	cmp r2, r0
	bgt _080B86F4
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B86F4
	lsls r2, r7, #0x10
	asrs r1, r2, #0x10
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B86F4
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B86F4
	lsrs r1, r5, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_080B86F4:
	mov r1, sb
	lsls r0, r1, #2
	add r0, sl
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	bne _080B8708
	b _080B8940
_080B8708:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B8724
	asrs r0, r5, #4
	movs r1, #0x80
	lsls r1, r1, #5
	b _080B893C
	.align 2, 0
_080B871C: .4byte gCurLevelInfo
_080B8720: .4byte gUnk_082D88B8
_080B8724:
	asrs r0, r5, #4
	b _080B893E
_080B8728:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B873A
	asrs r0, r5, #4
	movs r1, #0x80
	lsls r1, r1, #5
	b _080B893C
_080B873A:
	asrs r0, r5, #4
	b _080B893E
_080B873E:
	cmp r0, #0xc0
	beq _080B8744
	b _080B8940
_080B8744:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B8754
	adds r0, r4, #0
	adds r0, #0x3e
	b _080B8758
_080B8754:
	adds r0, r4, #0
	adds r0, #0x3c
_080B8758:
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #8
	ldr r2, [r4, #0x40]
	adds r0, r2, r0
	lsls r0, r0, #4
	lsrs r5, r0, #0x10
	ldr r0, [r4, #0x44]
	lsls r0, r0, #4
	lsrs r7, r0, #0x10
	adds r0, r1, #3
	lsls r0, r0, #8
	adds r0, r2, r0
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	mov sl, r0
	subs r1, #3
	lsls r1, r1, #8
	adds r2, r2, r1
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	str r2, [sp]
	movs r0, #0
	str r0, [sp, #0x14]
	lsls r2, r5, #0x10
	asrs r5, r2, #0x10
	ldr r1, _080B8914 @ =gCurLevelInfo
	mov ip, r1
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	mov sb, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r3, sb
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	adds r6, r2, #0
	mov r8, r1
	cmp r5, r0
	bgt _080B87F0
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	blt _080B87F0
	lsls r2, r7, #0x10
	asrs r1, r2, #0x10
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B87F0
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B87F0
	lsrs r1, r6, #0x10
	lsrs r2, r2, #0x10
	mov r0, sb
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
_080B87F0:
	ldr r1, [sp, #0x14]
	lsls r0, r1, #2
	ldr r1, _080B8918 @ =gUnk_082D88B8
	adds r0, r1, r0
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	beq _080B8806
	b _080B8940
_080B8806:
	movs r0, #0
	str r0, [sp, #0x18]
	mov r1, sl
	lsls r1, r1, #0x10
	mov sb, r1
	asrs r2, r1, #0x10
	ldr r0, _080B8914 @ =gCurLevelInfo
	mov ip, r0
	mov r1, r8
	ldrb r5, [r1]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r5, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B8870
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B8870
	lsls r2, r7, #0x10
	asrs r1, r2, #0x10
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B8870
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B8870
	mov r0, sb
	lsrs r1, r0, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
_080B8870:
	ldr r1, [sp, #0x18]
	lsls r0, r1, #2
	ldr r1, _080B8918 @ =gUnk_082D88B8
	adds r0, r1, r0
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	bne _080B8924
	movs r0, #0
	mov sl, r0
	ldr r1, [sp]
	lsls r1, r1, #0x10
	mov sb, r1
	asrs r5, r1, #0x10
	ldr r0, _080B8914 @ =gCurLevelInfo
	mov ip, r0
	mov r1, r8
	ldrb r1, [r1]
	mov r8, r1
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r3, r8
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	bgt _080B88F0
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	blt _080B88F0
	lsls r2, r7, #0x10
	asrs r1, r2, #0x10
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B88F0
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B88F0
	mov r0, sb
	lsrs r1, r0, #0x10
	lsrs r2, r2, #0x10
	mov r0, r8
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
_080B88F0:
	mov r1, sl
	lsls r0, r1, #2
	ldr r1, _080B8918 @ =gUnk_082D88B8
	adds r0, r1, r0
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	beq _080B8940
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B8920
	asrs r0, r6, #4
	ldr r1, _080B891C @ =0xFFFFF000
	b _080B893C
	.align 2, 0
_080B8914: .4byte gCurLevelInfo
_080B8918: .4byte gUnk_082D88B8
_080B891C: .4byte 0xFFFFF000
_080B8920:
	asrs r0, r6, #4
	b _080B893E
_080B8924:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B8936
	asrs r0, r6, #4
	movs r1, #0x80
	lsls r1, r1, #5
	b _080B893C
_080B8936:
	asrs r0, r6, #4
	movs r1, #0x80
	lsls r1, r1, #6
_080B893C:
	adds r0, r0, r1
_080B893E:
	str r0, [r4, #0x40]
_080B8940:
	adds r0, r2, #0
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B8954
sub_080B8954: @ 0x080B8954
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B897C @ =sub_080B89DC
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r2, [r0]
	cmp r2, #1
	beq _080B8994
	cmp r2, #1
	bgt _080B8980
	cmp r2, #0
	beq _080B8986
	b _080B89AE
	.align 2, 0
_080B897C: .4byte sub_080B89DC
_080B8980:
	cmp r2, #2
	beq _080B899E
	b _080B89AE
_080B8986:
	adds r0, r4, #0
	adds r0, #0x50
	movs r2, #0
	movs r1, #0xcd
	strh r1, [r0]
	adds r0, #0x33
	b _080B89AC
_080B8994:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xa0
	lsls r0, r0, #1
	b _080B89A6
_080B899E:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #2
_080B89A6:
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x83
_080B89AC:
	strb r2, [r0]
_080B89AE:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B89C2
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080B89C2:
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0xc]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B89DC
sub_080B89DC: @ 0x080B89DC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldr r2, _080B8A38 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	adds r0, r2, #0
	adds r0, #0x50
	adds r0, r1, r0
	ldr r3, [r4, #0x40]
	ldr r0, [r0]
	cmp r3, r0
	bgt _080B8A3C
	adds r0, r2, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt _080B8A3C
	adds r0, r2, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r3, [r4, #0x44]
	ldr r0, [r0]
	cmp r3, r0
	bgt _080B8A3C
	adds r0, r2, #0
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt _080B8A3C
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r2, [r0]
	movs r1, #0x20
	orrs r1, r2
	b _080B8A46
	.align 2, 0
_080B8A38: .4byte gCurLevelInfo
_080B8A3C:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r2, [r0]
	movs r1, #0xdf
	ands r1, r2
_080B8A46:
	strb r1, [r0]
	adds r7, r0, #0
	adds r0, r4, #0
	bl sub_080B75D0
	adds r1, r0, #0
	cmp r1, #0
	bne _080B8A58
	b _080B9040
_080B8A58:
	movs r2, #1
	ands r1, r2
	cmp r1, #0
	beq _080B8B24
	ldrb r1, [r7]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0x40
	bne _080B8A90
	movs r0, #0x3f
	ands r0, r1
	movs r3, #0x40
	rsbs r3, r3, #0
	adds r1, r3, #0
	orrs r0, r1
	strb r0, [r7]
	ldr r0, [r4, #8]
	ands r0, r2
	cmp r0, #0
	bne _080B8ABC
	ldr r0, [r4, #0x40]
	ldr r1, _080B8A8C @ =0xFFFFF000
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #2
	b _080B8AC6
	.align 2, 0
_080B8A8C: .4byte 0xFFFFF000
_080B8A90:
	cmp r0, #0
	bne _080B8AD0
	movs r0, #0x3f
	ands r0, r1
	movs r3, #0x80
	rsbs r3, r3, #0
	adds r1, r3, #0
	orrs r0, r1
	strb r0, [r7]
	ldr r0, [r4, #8]
	ands r0, r2
	cmp r0, #0
	beq _080B8ABC
	ldr r0, [r4, #0x40]
	ldr r1, _080B8AB8 @ =0xFFFFF000
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #2
	b _080B8AC6
	.align 2, 0
_080B8AB8: .4byte 0xFFFFF000
_080B8ABC:
	ldr r0, [r4, #0x40]
	ldr r1, _080B8ACC @ =0xFFFFF000
	ands r0, r1
	movs r1, #0xd0
	lsls r1, r1, #4
_080B8AC6:
	adds r0, r0, r1
	str r0, [r4, #0x40]
	b _080B8B08
	.align 2, 0
_080B8ACC: .4byte 0xFFFFF000
_080B8AD0:
	cmp r0, #0x80
	bne _080B8AF0
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r7]
	ldr r0, [r4, #0x44]
	ldr r1, _080B8AEC @ =0xFFFFF000
	ands r0, r1
	movs r1, #0xb0
	lsls r1, r1, #4
	b _080B8B04
	.align 2, 0
_080B8AEC: .4byte 0xFFFFF000
_080B8AF0:
	cmp r0, #0xc0
	bne _080B8B08
	movs r0, #0x3f
	ands r0, r1
	strb r0, [r7]
	ldr r0, [r4, #0x44]
	ldr r1, _080B8B20 @ =0xFFFFF000
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #3
_080B8B04:
	adds r0, r0, r1
	str r0, [r4, #0x44]
_080B8B08:
	adds r0, r4, #0
	bl sub_080B75D0
	adds r1, r0, #0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080B8B24
	adds r0, r4, #0
	bl sub_080B9048
	b _080B9040
	.align 2, 0
_080B8B20: .4byte 0xFFFFF000
_080B8B24:
	adds r0, r4, #0
	bl sub_080B7E74
	adds r6, r0, #0
	adds r0, r4, #0
	bl sub_080B819C
	adds r5, r0, #0
	movs r1, #0xf0
	lsls r1, r1, #0x18
	ands r5, r1
	cmp r6, #0
	bne _080B8B40
	b _080B9040
_080B8B40:
	ldr r0, _080B8B94 @ =0xF0000001
	ands r0, r6
	cmp r0, #0
	beq _080B8B4A
	b _080B8C80
_080B8B4A:
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080B8B54
	b _080B8C80
_080B8B54:
	ldrb r1, [r7]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0x40
	bne _080B8BC4
	movs r0, #0x3f
	ands r0, r1
	movs r2, #0x80
	rsbs r2, r2, #0
	adds r1, r2, #0
	orrs r0, r1
	strb r0, [r7]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B8B9C
	adds r0, r4, #0
	adds r0, #0x3c
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, #1
	lsls r1, r1, #8
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, _080B8B98 @ =0xFFFFF000
	ands r0, r1
	movs r3, #0x98
	lsls r3, r3, #5
	adds r0, r0, r3
	str r0, [r4, #0x40]
	b _080B8C80
	.align 2, 0
_080B8B94: .4byte 0xF0000001
_080B8B98: .4byte 0xFFFFF000
_080B8B9C:
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #1
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	ldr r0, _080B8BBC @ =0xFFFFF000
	ands r1, r0
	ldr r0, _080B8BC0 @ =0xFFFFFD00
	adds r1, r1, r0
	str r1, [r4, #0x40]
	b _080B8C80
	.align 2, 0
_080B8BBC: .4byte 0xFFFFF000
_080B8BC0: .4byte 0xFFFFFD00
_080B8BC4:
	cmp r0, #0
	bne _080B8C2C
	movs r0, #0x3f
	ands r0, r1
	movs r2, #0x40
	rsbs r2, r2, #0
	adds r1, r2, #0
	orrs r0, r1
	strb r0, [r7]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B8C08
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #1
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	ldr r0, _080B8C00 @ =0xFFFFF000
	ands r1, r0
	ldr r3, _080B8C04 @ =0xFFFFFD00
	adds r1, r1, r3
	str r1, [r4, #0x40]
	b _080B8C80
	.align 2, 0
_080B8C00: .4byte 0xFFFFF000
_080B8C04: .4byte 0xFFFFFD00
_080B8C08:
	adds r0, r4, #0
	adds r0, #0x3c
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, #1
	lsls r1, r1, #8
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, _080B8C28 @ =0xFFFFF000
	ands r0, r1
	movs r1, #0x98
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r4, #0x40]
	b _080B8C80
	.align 2, 0
_080B8C28: .4byte 0xFFFFF000
_080B8C2C:
	cmp r0, #0x80
	bne _080B8C58
	movs r0, #0x3f
	ands r0, r1
	strb r0, [r7]
	adds r0, r4, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, #1
	lsls r1, r1, #8
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	ldr r1, _080B8C54 @ =0xFFFFF000
	ands r0, r1
	movs r2, #0x98
	lsls r2, r2, #5
	adds r0, r0, r2
	b _080B8C7E
	.align 2, 0
_080B8C54: .4byte 0xFFFFF000
_080B8C58:
	cmp r0, #0xc0
	bne _080B8C80
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r7]
	adds r0, r4, #0
	adds r0, #0x3f
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #1
	lsls r1, r1, #8
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	ldr r1, _080B8CA0 @ =0xFFFFF000
	ands r0, r1
	ldr r3, _080B8CA4 @ =0xFFFFFD00
	adds r0, r0, r3
_080B8C7E:
	str r0, [r4, #0x44]
_080B8C80:
	ldrb r0, [r7]
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0x40
	bne _080B8D1E
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #1
	beq _080B8CA8
	cmp r1, #2
	beq _080B8CAE
	movs r3, #0xcd
	b _080B8CB2
	.align 2, 0
_080B8CA0: .4byte 0xFFFFF000
_080B8CA4: .4byte 0xFFFFFD00
_080B8CA8:
	movs r3, #0xa0
	lsls r3, r3, #1
	b _080B8CB2
_080B8CAE:
	movs r3, #0xc0
	lsls r3, r3, #2
_080B8CB2:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r3, [r1]
	adds r3, r4, #0
	adds r3, #0x52
	strh r0, [r3]
	cmp r5, #0
	bne _080B8CC6
	b _080B8FA6
_080B8CC6:
	movs r0, #0xc0
	lsls r0, r0, #0x16
	cmp r5, r0
	bne _080B8CD0
	b _080B8E90
_080B8CD0:
	cmp r5, r0
	bhi _080B8CE6
	movs r0, #0x80
	lsls r0, r0, #0x15
	cmp r5, r0
	beq _080B8D02
	movs r0, #0x80
	lsls r0, r0, #0x16
	cmp r5, r0
	beq _080B8D02
	b _080B8EA6
_080B8CE6:
	movs r0, #0xa0
	lsls r0, r0, #0x17
	cmp r5, r0
	beq _080B8D02
	cmp r5, r0
	bhi _080B8CF8
	movs r0, #0x80
	lsls r0, r0, #0x17
	b _080B8E64
_080B8CF8:
	movs r0, #0xc0
	lsls r0, r0, #0x17
	cmp r5, r0
	beq _080B8D02
	b _080B8EA6
_080B8D02:
	ldrb r0, [r6]
	cmp r0, #1
	beq _080B8D10
	cmp r0, #2
	beq _080B8D18
	movs r0, #0xbc
	b _080B8EA4
_080B8D10:
	ldr r0, _080B8D14 @ =0x00000127
	b _080B8EA4
	.align 2, 0
_080B8D14: .4byte 0x00000127
_080B8D18:
	movs r0, #0xb1
	lsls r0, r0, #2
	b _080B8EA4
_080B8D1E:
	cmp r1, #0
	bne _080B8DD0
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #1
	beq _080B8D36
	cmp r1, #2
	beq _080B8D3C
	movs r0, #0xcd
	b _080B8D40
_080B8D36:
	movs r0, #0xa0
	lsls r0, r0, #1
	b _080B8D40
_080B8D3C:
	movs r0, #0xc0
	lsls r0, r0, #2
_080B8D40:
	rsbs r0, r0, #0
	adds r2, r4, #0
	adds r2, #0x50
	movs r1, #0
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x52
	strh r1, [r0]
	adds r1, r2, #0
	cmp r5, #0
	bne _080B8D58
	b _080B8FA6
_080B8D58:
	movs r0, #0x90
	lsls r0, r0, #0x18
	cmp r5, r0
	beq _080B8DB2
	cmp r5, r0
	bhi _080B8D76
	movs r0, #0xe0
	lsls r0, r0, #0x17
	cmp r5, r0
	beq _080B8D96
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r5, r0
	beq _080B8D96
	b _080B8EA6
_080B8D76:
	movs r0, #0xb0
	lsls r0, r0, #0x18
	cmp r5, r0
	beq _080B8D96
	cmp r5, r0
	bhi _080B8D8C
	movs r0, #0xa0
	lsls r0, r0, #0x18
	cmp r5, r0
	beq _080B8DB2
	b _080B8EA6
_080B8D8C:
	movs r0, #0xc0
	lsls r0, r0, #0x18
	cmp r5, r0
	beq _080B8D96
	b _080B8EA6
_080B8D96:
	ldrb r0, [r6]
	cmp r0, #1
	beq _080B8DA4
	cmp r0, #2
	beq _080B8DAC
	movs r0, #0xbc
	b _080B8DC6
_080B8DA4:
	ldr r0, _080B8DA8 @ =0x00000127
	b _080B8DC6
	.align 2, 0
_080B8DA8: .4byte 0x00000127
_080B8DAC:
	movs r0, #0xb1
	lsls r0, r0, #2
	b _080B8DC6
_080B8DB2:
	ldrb r0, [r6]
	cmp r0, #1
	beq _080B8DC0
	cmp r0, #2
	beq _080B8DC4
	movs r0, #0x90
	b _080B8DC6
_080B8DC0:
	movs r0, #0xe2
	b _080B8DC6
_080B8DC4:
	ldr r0, _080B8DCC @ =0x0000021F
_080B8DC6:
	rsbs r0, r0, #0
	b _080B8EA4
	.align 2, 0
_080B8DCC: .4byte 0x0000021F
_080B8DD0:
	cmp r1, #0x80
	bne _080B8EC0
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #0x37
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #1
	beq _080B8DEE
	cmp r1, #2
	beq _080B8DF4
	movs r1, #0xcd
	b _080B8DF8
_080B8DEE:
	movs r1, #0xa0
	lsls r1, r1, #1
	b _080B8DF8
_080B8DF4:
	movs r1, #0xc0
	lsls r1, r1, #2
_080B8DF8:
	adds r0, r4, #0
	adds r0, #0x52
	strh r1, [r0]
	adds r1, r0, #0
	cmp r5, #0
	bne _080B8E06
	b _080B8FA6
_080B8E06:
	movs r0, #0xc0
	lsls r0, r0, #0x17
	cmp r5, r0
	beq _080B8E78
	cmp r5, r0
	bhi _080B8E3A
	movs r0, #0xc0
	lsls r0, r0, #0x16
	cmp r5, r0
	beq _080B8E90
	cmp r5, r0
	bhi _080B8E2C
	movs r0, #0x80
	lsls r0, r0, #0x15
	cmp r5, r0
	beq _080B8E78
	movs r0, #0x80
	lsls r0, r0, #0x16
	b _080B8E6E
_080B8E2C:
	movs r0, #0x80
	lsls r0, r0, #0x17
	cmp r5, r0
	beq _080B8E90
	movs r0, #0xa0
	lsls r0, r0, #0x17
	b _080B8E6E
_080B8E3A:
	movs r0, #0x90
	lsls r0, r0, #0x18
	cmp r5, r0
	beq _080B8E90
	cmp r5, r0
	bhi _080B8E54
	movs r0, #0xe0
	lsls r0, r0, #0x17
	cmp r5, r0
	beq _080B8E78
	movs r0, #0x80
	lsls r0, r0, #0x18
	b _080B8E6E
_080B8E54:
	movs r0, #0xb0
	lsls r0, r0, #0x18
	cmp r5, r0
	beq _080B8E78
	cmp r5, r0
	bhi _080B8E6A
	movs r0, #0xa0
	lsls r0, r0, #0x18
_080B8E64:
	cmp r5, r0
	beq _080B8E90
	b _080B8EA6
_080B8E6A:
	movs r0, #0xc0
	lsls r0, r0, #0x18
_080B8E6E:
	cmp r5, r0
	beq _080B8E78
	b _080B8EA6
_080B8E74:
	movs r0, #0x74
	b _080B8EA4
_080B8E78:
	ldrb r0, [r6]
	cmp r0, #1
	beq _080B8E74
	cmp r0, #2
	beq _080B8E86
	movs r0, #0x4a
	b _080B8EA4
_080B8E86:
	ldr r0, _080B8E8C @ =0x00000117
	b _080B8EA4
	.align 2, 0
_080B8E8C: .4byte 0x00000117
_080B8E90:
	ldrb r0, [r6]
	cmp r0, #1
	beq _080B8E9E
	cmp r0, #2
	beq _080B8EA2
	movs r0, #0x90
	b _080B8EA4
_080B8E9E:
	movs r0, #0xe2
	b _080B8EA4
_080B8EA2:
	ldr r0, _080B8EB8 @ =0x0000021F
_080B8EA4:
	strh r0, [r1]
_080B8EA6:
	ldr r0, _080B8EBC @ =gUnk_083547AC
	lsrs r1, r5, #0x1a
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _080B8FA6
	.align 2, 0
_080B8EB8: .4byte 0x0000021F
_080B8EBC: .4byte gUnk_083547AC
_080B8EC0:
	cmp r1, #0xc0
	bne _080B8FA6
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #0x37
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #1
	beq _080B8EDE
	cmp r1, #2
	beq _080B8EE4
	movs r1, #0xcd
	b _080B8EE8
_080B8EDE:
	movs r1, #0xa0
	lsls r1, r1, #1
	b _080B8EE8
_080B8EE4:
	movs r1, #0xc0
	lsls r1, r1, #2
_080B8EE8:
	rsbs r1, r1, #0
	adds r0, r4, #0
	adds r0, #0x52
	strh r1, [r0]
	adds r1, r0, #0
	cmp r5, #0
	beq _080B8FA6
	movs r0, #0xc0
	lsls r0, r0, #0x17
	cmp r5, r0
	beq _080B8F68
	cmp r5, r0
	bhi _080B8F2A
	movs r0, #0xc0
	lsls r0, r0, #0x16
	cmp r5, r0
	beq _080B8F80
	cmp r5, r0
	bhi _080B8F1C
	movs r0, #0x80
	lsls r0, r0, #0x15
	cmp r5, r0
	beq _080B8F68
	movs r0, #0x80
	lsls r0, r0, #0x16
	b _080B8F5E
_080B8F1C:
	movs r0, #0x80
	lsls r0, r0, #0x17
	cmp r5, r0
	beq _080B8F80
	movs r0, #0xa0
	lsls r0, r0, #0x17
	b _080B8F5E
_080B8F2A:
	movs r0, #0x90
	lsls r0, r0, #0x18
	cmp r5, r0
	beq _080B8F80
	cmp r5, r0
	bhi _080B8F44
	movs r0, #0xe0
	lsls r0, r0, #0x17
	cmp r5, r0
	beq _080B8F68
	movs r0, #0x80
	lsls r0, r0, #0x18
	b _080B8F5E
_080B8F44:
	movs r0, #0xb0
	lsls r0, r0, #0x18
	cmp r5, r0
	beq _080B8F68
	cmp r5, r0
	bhi _080B8F5A
	movs r0, #0xa0
	lsls r0, r0, #0x18
	cmp r5, r0
	beq _080B8F80
	b _080B8F98
_080B8F5A:
	movs r0, #0xc0
	lsls r0, r0, #0x18
_080B8F5E:
	cmp r5, r0
	beq _080B8F68
	b _080B8F98
_080B8F64:
	movs r0, #0x74
	b _080B8F94
_080B8F68:
	ldrb r0, [r6]
	cmp r0, #1
	beq _080B8F64
	cmp r0, #2
	beq _080B8F76
	movs r0, #0x4a
	b _080B8F94
_080B8F76:
	ldr r0, _080B8F7C @ =0x00000117
	b _080B8F94
	.align 2, 0
_080B8F7C: .4byte 0x00000117
_080B8F80:
	ldrb r0, [r6]
	cmp r0, #1
	beq _080B8F8E
	cmp r0, #2
	beq _080B8F92
	movs r0, #0x90
	b _080B8F94
_080B8F8E:
	movs r0, #0xe2
	b _080B8F94
_080B8F92:
	ldr r0, _080B8FF4 @ =0x0000021F
_080B8F94:
	rsbs r0, r0, #0
	strh r0, [r1]
_080B8F98:
	ldr r0, _080B8FF8 @ =gUnk_083547AC
	lsrs r1, r5, #0x1a
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_080B8FA6:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B8FBA
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080B8FBA:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080B9040
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r1, #0
	cmp r0, #0x14
	bls _080B9040
	adds r1, #0xe
	ldr r0, [r1]
	ldr r3, [r0, #0x40]
	ldr r0, [r4, #0x40]
	subs r2, r3, r0
	adds r5, r1, #0
	cmp r2, #0
	blt _080B9000
	ldr r0, _080B8FFC @ =0x00003FFF
	cmp r2, r0
	ble _080B9008
	b _080B9034
	.align 2, 0
_080B8FF4: .4byte 0x0000021F
_080B8FF8: .4byte gUnk_083547AC
_080B8FFC: .4byte 0x00003FFF
_080B9000:
	subs r1, r0, r3
	ldr r0, _080B901C @ =0x00003FFF
	cmp r1, r0
	bgt _080B9034
_080B9008:
	ldr r0, [r5]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080B9020
	ldr r0, _080B901C @ =0x00003FFF
	cmp r2, r0
	ble _080B9028
	b _080B9034
	.align 2, 0
_080B901C: .4byte 0x00003FFF
_080B9020:
	subs r1, r1, r0
	ldr r0, _080B9030 @ =0x00003FFF
	cmp r1, r0
	bgt _080B9034
_080B9028:
	adds r0, r4, #0
	bl sub_080BA39C
	b _080B9040
	.align 2, 0
_080B9030: .4byte 0x00003FFF
_080B9034:
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r5]
	movs r0, #0
	strb r0, [r6]
_080B9040:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B9048
sub_080B9048: @ 0x080B9048
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	ldr r2, _080B9130 @ =sub_080BA36C
	movs r1, #3
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	ldr r1, _080B9134 @ =0xFFFFFEBF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r3, _080B9138 @ =gCurLevelInfo
	adds r0, #4
	ldrb r0, [r0]
	mov sb, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r2, sb
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x50
	adds r0, r2, r0
	ldr r1, [r4, #0x40]
	ldr r7, [r0]
	cmp r1, r7
	ble _080B909A
	b _080B936E
_080B909A:
	adds r0, r3, #0
	adds r0, #0x48
	adds r0, r2, r0
	ldr r6, [r0]
	cmp r1, r6
	bge _080B90A8
	b _080B936E
_080B90A8:
	adds r0, r3, #0
	adds r0, #0x54
	adds r0, r2, r0
	ldr r5, [r4, #0x44]
	ldr r0, [r0]
	mov ip, r0
	cmp r5, ip
	ble _080B90BA
	b _080B936E
_080B90BA:
	adds r0, r3, #0
	adds r0, #0x4c
	adds r0, r2, r0
	ldr r3, [r0]
	cmp r5, r3
	bge _080B90C8
	b _080B936E
_080B90C8:
	ldr r0, _080B913C @ =gUnk_082D88B8
	mov sl, r0
	movs r0, #0
	mov r8, r0
	asrs r1, r1, #0xc
	asrs r0, r7, #0xc
	cmp r1, r0
	bgt _080B9110
	asrs r0, r6, #0xc
	cmp r1, r0
	blt _080B9110
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	adds r0, r5, r0
	asrs r2, r0, #0xc
	mov r5, ip
	asrs r0, r5, #0xc
	cmp r2, r0
	bgt _080B9110
	asrs r0, r3, #0xc
	cmp r2, r0
	blt _080B9110
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, sb
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080B9110:
	mov r1, r8
	lsls r0, r1, #2
	add r0, sl
	ldr r0, [r0]
	ldr r1, _080B9140 @ =0xFFFFDEFC
	ands r0, r1
	cmp r0, #0
	beq _080B9144
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r0, [r2]
	movs r1, #0x3f
	ands r1, r0
	movs r0, #0x40
	b _080B92A0
	.align 2, 0
_080B9130: .4byte sub_080BA36C
_080B9134: .4byte 0xFFFFFEBF
_080B9138: .4byte gCurLevelInfo
_080B913C: .4byte gUnk_082D88B8
_080B9140: .4byte 0xFFFFDEFC
_080B9144:
	ldr r3, _080B91DC @ =gUnk_082D88B8
	mov sl, r3
	movs r5, #0
	mov r8, r5
	ldr r0, [r4, #0x40]
	asrs r6, r0, #0xc
	ldr r5, _080B91E0 @ =gCurLevelInfo
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r7, [r1]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r7, #0
	muls r3, r0, r3
	adds r0, r5, #0
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	mov sb, r1
	cmp r6, r0
	bgt _080B91BE
	adds r0, r5, #0
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r6, r0
	blt _080B91BE
	adds r0, r4, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	asrs r2, r0, #0xc
	adds r0, r5, #0
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B91BE
	adds r0, r5, #0
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B91BE
	lsls r1, r6, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080B91BE:
	mov r1, r8
	lsls r0, r1, #2
	add r0, sl
	ldr r0, [r0]
	ldr r1, _080B91E4 @ =0xFFFFDEFC
	ands r0, r1
	cmp r0, #0
	beq _080B91E8
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	strb r0, [r2]
	b _080B92A4
	.align 2, 0
_080B91DC: .4byte gUnk_082D88B8
_080B91E0: .4byte gCurLevelInfo
_080B91E4: .4byte 0xFFFFDEFC
_080B91E8:
	ldr r7, _080B9284 @ =gUnk_082D88B8
	movs r6, #0
	adds r0, r4, #0
	adds r0, #0x3c
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	asrs r1, r0, #0xc
	ldr r3, _080B9288 @ =gCurLevelInfo
	mov ip, r3
	mov r0, sb
	ldrb r5, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r5, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B925A
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B925A
	ldr r0, [r4, #0x44]
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B925A
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B925A
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080B925A:
	lsls r0, r6, #2
	adds r0, r7, r0
	ldr r0, [r0]
	ldr r1, _080B928C @ =0xFFFFDEFC
	ands r0, r1
	cmp r0, #0
	beq _080B92AC
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B9290
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r0, [r2]
	movs r1, #0x3f
	ands r1, r0
	movs r3, #0x80
	rsbs r3, r3, #0
	adds r0, r3, #0
	b _080B92A0
	.align 2, 0
_080B9284: .4byte gUnk_082D88B8
_080B9288: .4byte gCurLevelInfo
_080B928C: .4byte 0xFFFFDEFC
_080B9290:
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r0, [r2]
	movs r1, #0x3f
	ands r1, r0
	movs r5, #0x40
	rsbs r5, r5, #0
	adds r0, r5, #0
_080B92A0:
	orrs r1, r0
	strb r1, [r2]
_080B92A4:
	adds r0, r4, #0
	bl sub_080B8954
	b _080B936E
_080B92AC:
	ldr r7, _080B9348 @ =gUnk_082D88B8
	movs r6, #0
	adds r0, r4, #0
	adds r0, #0x3e
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	asrs r1, r0, #0xc
	ldr r0, _080B934C @ =gCurLevelInfo
	mov ip, r0
	mov r3, sb
	ldrb r5, [r3]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r5, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B931E
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B931E
	ldr r0, [r4, #0x44]
	asrs r2, r0, #0xc
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B931E
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B931E
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080B931E:
	lsls r0, r6, #2
	adds r0, r7, r0
	ldr r0, [r0]
	ldr r1, _080B9350 @ =0xFFFFDEFC
	ands r0, r1
	cmp r0, #0
	beq _080B936E
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B9354
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r0, [r2]
	movs r1, #0x3f
	ands r1, r0
	movs r5, #0x40
	rsbs r5, r5, #0
	adds r0, r5, #0
	b _080B9364
	.align 2, 0
_080B9348: .4byte gUnk_082D88B8
_080B934C: .4byte gCurLevelInfo
_080B9350: .4byte 0xFFFFDEFC
_080B9354:
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r0, [r2]
	movs r1, #0x3f
	ands r1, r0
	movs r3, #0x80
	rsbs r3, r3, #0
	adds r0, r3, #0
_080B9364:
	orrs r1, r0
	strb r1, [r2]
	adds r0, r4, #0
	bl sub_080B8954
_080B936E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080B937C
sub_080B937C: @ 0x080B937C
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	mov r2, ip
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #5
	bne _080B9396
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #4
	orrs r0, r1
	mov r5, ip
	str r0, [r5, #8]
_080B9396:
	mov r0, ip
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r7, r0, #0
	mov r3, ip
	adds r3, #0x9f
	ldr r6, _080B9450 @ =gUnk_083546A4
	mov r4, ip
	adds r4, #0x50
	mov r5, ip
	adds r5, #0x52
	cmp r1, #0
	bne _080B9480
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080B93CA
	subs r0, r1, #1
	strb r0, [r3]
_080B93CA:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r7]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080B93EC
	strb r1, [r2]
_080B93EC:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080B9454
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r1, [r1, r5]
	movs r5, #0
	ldrsh r0, [r0, r5]
	cmp r1, r0
	beq _080B9426
	strh r2, [r4]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B9426
	rsbs r0, r2, #0
	strh r0, [r4]
_080B9426:
	ldrb r2, [r3]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r1, #2]
	movs r5, #2
	ldrsh r1, [r1, r5]
	movs r5, #2
	ldrsh r0, [r0, r5]
	mov r5, ip
	adds r5, #0x52
	cmp r1, r0
	beq _080B9480
	strh r2, [r5]
	b _080B9480
	.align 2, 0
_080B9450: .4byte gUnk_083546A4
_080B9454:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	strh r0, [r5]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r0]
	strh r2, [r4]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B94A0
	rsbs r0, r2, #0
	strh r0, [r4]
_080B9480:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B94A0
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r4]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r4]
	b _080B94B2
_080B94A0:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
_080B94B2:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
	ldrb r0, [r7]
	subs r2, r0, #1
	strb r2, [r7]
	ldrb r1, [r3]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080B94EC
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080B94EC
	mov r0, ip
	bl sub_080BA3EC
_080B94EC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B94F4
sub_080B94F4: @ 0x080B94F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r0, [r7, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #8]
	adds r2, r7, #0
	adds r2, #0xac
	ldr r0, [r2]
	ldr r3, [r7, #0x40]
	ldr r0, [r0, #0x40]
	movs r4, #0xc0
	lsls r4, r4, #8
	cmp r3, r0
	ble _080B951A
	movs r4, #0x80
	lsls r4, r4, #7
_080B951A:
	ldrh r0, [r7, #4]
	subs r1, r0, #1
	strh r1, [r7, #4]
	lsls r0, r0, #0x10
	lsls r4, r4, #0x10
	mov r8, r4
	cmp r0, #0
	bgt _080B9592
	ldr r1, [r2]
	asrs r0, r4, #0x10
	ldr r4, [r1, #0x40]
	adds r4, r4, r0
	subs r4, r4, r3
	asrs r4, r4, #8
	ldr r5, [r7, #0x44]
	ldr r0, [r1, #0x44]
	subs r5, r5, r0
	asrs r5, r5, #8
	adds r0, r4, #0
	muls r0, r4, r0
	adds r1, r5, #0
	muls r1, r5, r1
	adds r0, r0, r1
	lsls r0, r0, #8
	bl Sqrt
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #8
	adds r0, r4, #0
	adds r1, r6, #0
	bl __divsi3
	adds r4, r0, #0
	lsls r5, r5, #8
	adds r0, r5, #0
	adds r1, r6, #0
	bl __divsi3
	lsls r4, r4, #4
	adds r1, r7, #0
	adds r1, #0x50
	strh r4, [r1]
	lsls r0, r0, #4
	adds r1, #2
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #1
	beq _080B958A
	cmp r0, #2
	beq _080B958E
	movs r0, #0xc
	b _080B9590
_080B958A:
	movs r0, #9
	b _080B9590
_080B958E:
	movs r0, #6
_080B9590:
	strh r0, [r7, #4]
_080B9592:
	adds r2, r7, #0
	adds r2, #0xac
	ldr r0, [r2]
	mov r3, r8
	asrs r1, r3, #0x10
	ldr r0, [r0, #0x40]
	adds r0, r0, r1
	ldr r1, [r7, #0x40]
	subs r3, r0, r1
	cmp r3, #0
	blt _080B95B4
	ldr r0, _080B95B0 @ =0x000009FF
	cmp r3, r0
	ble _080B95BC
	b _080B95E2
	.align 2, 0
_080B95B0: .4byte 0x000009FF
_080B95B4:
	subs r1, r1, r0
	ldr r0, _080B95D0 @ =0x000009FF
	cmp r1, r0
	bgt _080B95E2
_080B95BC:
	ldr r0, [r2]
	ldr r0, [r0, #0x44]
	ldr r1, [r7, #0x44]
	subs r3, r0, r1
	cmp r3, #0
	blt _080B95D4
	ldr r0, _080B95D0 @ =0x000009FF
	cmp r3, r0
	ble _080B95DC
	b _080B95E2
	.align 2, 0
_080B95D0: .4byte 0x000009FF
_080B95D4:
	subs r1, r1, r0
	ldr r0, _080B95EC @ =0x000009FF
	cmp r1, r0
	bgt _080B95E2
_080B95DC:
	adds r0, r7, #0
	bl sub_080BA400
_080B95E2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B95EC: .4byte 0x000009FF

	thumb_func_start sub_080B95F0
sub_080B95F0: @ 0x080B95F0
	push {r4, r5, r6, lr}
	mov ip, r0
	mov r3, ip
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r6, _080B96B4 @ =gUnk_08354710
	cmp r0, #0
	bne _080B96EC
	mov r1, ip
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	adds r4, r1, #0
	cmp r0, #0
	bne _080B9620
	subs r0, r2, #1
	strb r0, [r4]
_080B9620:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080B9646
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080B9646:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080B96B8
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080B9684
	mov r2, ip
	adds r2, #0x50
	strh r3, [r2]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B9684
	rsbs r0, r3, #0
	strh r0, [r2]
_080B9684:
	mov r0, ip
	adds r0, #0x9f
	ldrb r2, [r0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r1, #2]
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080B96EC
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	b _080B96EC
	.align 2, 0
_080B96B4: .4byte gUnk_08354710
_080B96B8:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r3, ip
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r5, [r0]
	mov r2, ip
	adds r2, #0x50
	strh r5, [r2]
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080B9716
	rsbs r0, r5, #0
	strh r0, [r2]
_080B96EC:
	mov r2, ip
	ldr r1, [r2, #8]
	movs r0, #1
	ands r1, r0
	mov r4, ip
	adds r4, #0x9f
	adds r2, #0x50
	mov r3, ip
	adds r3, #0x52
	cmp r1, #0
	beq _080B9716
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r2]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r2]
	b _080B9728
_080B9716:
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080B9728:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	mov r1, ip
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
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080B9766
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080B9766
	mov r0, ip
	bl sub_080BA450
_080B9766:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B976C
sub_080B976C: @ 0x080B976C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldrh r0, [r4, #4]
	movs r1, #4
	ldrsh r6, [r4, r1]
	cmp r6, #0
	beq _080B97AC
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc
	ble _080B9808
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B97A4
	adds r0, r4, #0
	bl sub_080BA4D0
	b _080B9808
_080B97A4:
	adds r0, r4, #0
	bl sub_080BA498
	b _080B9808
_080B97AC:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r2, r0, #1
	strb r2, [r5]
	movs r1, #0xff
	adds r0, r2, #0
	ands r0, r1
	movs r1, #3
	ands r0, r1
	cmp r0, #3
	bne _080B97DA
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x1a
	adds r0, r4, #0
	bl sub_080B9DF0
	ldrb r1, [r5]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080B97DA
	strb r6, [r5]
_080B97DA:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B97F4
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r4, #0x40]
	cmp r1, r0
	ble _080B9808
	b _080B9802
_080B97F4:
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r4, #0x40]
	cmp r1, r0
	bge _080B9808
_080B9802:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_080B9808:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B9810
sub_080B9810: @ 0x080B9810
	push {r4, r5, r6, lr}
	mov ip, r0
	mov r3, ip
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r6, _080B98D4 @ =gUnk_08354734
	cmp r0, #0
	bne _080B990C
	mov r1, ip
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	adds r4, r1, #0
	cmp r0, #0
	bne _080B9840
	subs r0, r2, #1
	strb r0, [r4]
_080B9840:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080B9866
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080B9866:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080B98D8
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080B98A4
	mov r2, ip
	adds r2, #0x50
	strh r3, [r2]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B98A4
	rsbs r0, r3, #0
	strh r0, [r2]
_080B98A4:
	mov r0, ip
	adds r0, #0x9f
	ldrb r2, [r0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r1, #2]
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080B990C
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	b _080B990C
	.align 2, 0
_080B98D4: .4byte gUnk_08354734
_080B98D8:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r3, ip
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r5, [r0]
	mov r2, ip
	adds r2, #0x50
	strh r5, [r2]
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080B9936
	rsbs r0, r5, #0
	strh r0, [r2]
_080B990C:
	mov r2, ip
	ldr r1, [r2, #8]
	movs r0, #1
	ands r1, r0
	mov r4, ip
	adds r4, #0x9f
	adds r2, #0x50
	mov r3, ip
	adds r3, #0x52
	cmp r1, #0
	beq _080B9936
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r2]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r2]
	b _080B9948
_080B9936:
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080B9948:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	mov r1, ip
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
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080B9986
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080B9986
	mov r0, ip
	bl sub_080BA4F0
_080B9986:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B998C
sub_080B998C: @ 0x080B998C
	push {r4, r5, r6, lr}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	mov r3, ip
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r6, _080B9A58 @ =gUnk_0835477C
	cmp r0, #0
	bne _080B9A90
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	adds r4, r1, #0
	cmp r0, #0
	bne _080B99C4
	subs r0, r2, #1
	strb r0, [r4]
_080B99C4:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080B99EA
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080B99EA:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080B9A5C
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080B9A28
	mov r2, ip
	adds r2, #0x50
	strh r3, [r2]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B9A28
	rsbs r0, r3, #0
	strh r0, [r2]
_080B9A28:
	mov r0, ip
	adds r0, #0x9f
	ldrb r2, [r0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r1, #2]
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080B9A90
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	b _080B9A90
	.align 2, 0
_080B9A58: .4byte gUnk_0835477C
_080B9A5C:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r3, ip
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r5, [r0]
	mov r2, ip
	adds r2, #0x50
	strh r5, [r2]
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080B9ABA
	rsbs r0, r5, #0
	strh r0, [r2]
_080B9A90:
	mov r2, ip
	ldr r1, [r2, #8]
	movs r0, #1
	ands r1, r0
	mov r4, ip
	adds r4, #0x9f
	adds r2, #0x50
	mov r3, ip
	adds r3, #0x52
	cmp r1, #0
	beq _080B9ABA
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r2]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r2]
	b _080B9ACC
_080B9ABA:
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080B9ACC:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B9AF0
sub_080B9AF0: @ 0x080B9AF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	movs r0, #1
	mov sb, r0
	ldr r0, [r7, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #8]
	adds r2, r7, #0
	adds r2, #0xac
	ldr r0, [r2]
	ldr r3, [r7, #0x40]
	ldr r0, [r0, #0x40]
	movs r4, #0xf0
	lsls r4, r4, #8
	cmp r3, r0
	ble _080B9B20
	movs r4, #0x80
	lsls r4, r4, #5
_080B9B20:
	ldrh r0, [r7, #4]
	subs r1, r0, #1
	strh r1, [r7, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080B9B96
	ldr r1, [r2]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldr r4, [r1, #0x40]
	adds r4, r4, r0
	subs r4, r4, r3
	asrs r4, r4, #8
	ldr r5, [r7, #0x44]
	ldr r0, [r1, #0x44]
	subs r5, r5, r0
	asrs r5, r5, #8
	adds r0, r4, #0
	muls r0, r4, r0
	adds r1, r5, #0
	muls r1, r5, r1
	adds r0, r0, r1
	lsls r0, r0, #8
	bl Sqrt
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #8
	adds r0, r4, #0
	adds r1, r6, #0
	bl __divsi3
	adds r4, r0, #0
	lsls r5, r5, #8
	adds r0, r5, #0
	adds r1, r6, #0
	bl __divsi3
	lsls r4, r4, #4
	adds r1, r7, #0
	adds r1, #0x50
	strh r4, [r1]
	lsls r0, r0, #4
	adds r1, #2
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #1
	beq _080B9B8E
	cmp r0, #2
	beq _080B9B92
	movs r0, #0xc
	b _080B9B94
_080B9B8E:
	movs r0, #9
	b _080B9B94
_080B9B92:
	movs r0, #6
_080B9B94:
	strh r0, [r7, #4]
_080B9B96:
	adds r2, r7, #0
	adds r2, #0x3e
	movs r1, #0
	ldrsb r1, [r2, r1]
	mov ip, r1
	lsls r0, r1, #8
	ldr r6, [r7, #0x40]
	adds r5, r6, r0
	ldr r4, _080B9DE8 @ =gCurLevelInfo
	adds r1, r7, #0
	adds r1, #0x56
	ldrb r0, [r1]
	mov r8, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r3, r8
	muls r3, r0, r3
	adds r0, r4, #0
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	str r2, [sp, #4]
	mov sl, r1
	cmp r5, r0
	bgt _080B9C20
	adds r0, r4, #0
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r5, r0
	blt _080B9C20
	adds r0, r7, #0
	adds r0, #0x3d
	movs r5, #0
	ldrsb r5, [r0, r5]
	lsls r0, r5, #8
	ldr r2, [r7, #0x44]
	adds r1, r2, r0
	adds r0, r4, #0
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r1, r0
	bgt _080B9C20
	adds r0, r4, #0
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r1, r0
	blt _080B9C20
	asrs r1, r6, #8
	add r1, ip
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x10
	asrs r2, r2, #8
	adds r2, r2, r5
	lsls r2, r2, #0xc
	lsrs r2, r2, #0x10
	mov r0, r8
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _080B9DEC @ =gUnk_082D88B8
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_080B9C20:
	adds r1, r7, #0
	adds r1, #0x3c
	movs r2, #0
	ldrsb r2, [r1, r2]
	mov ip, r2
	lsls r0, r2, #8
	ldr r6, [r7, #0x40]
	adds r2, r6, r0
	ldr r4, _080B9DE8 @ =gCurLevelInfo
	mov r0, sl
	ldrb r0, [r0]
	mov r8, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r3, r8
	muls r3, r0, r3
	adds r0, r4, #0
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	str r1, [sp]
	cmp r2, r0
	bgt _080B9CA6
	adds r0, r4, #0
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r2, r0
	blt _080B9CA6
	adds r0, r7, #0
	adds r0, #0x3d
	movs r5, #0
	ldrsb r5, [r0, r5]
	lsls r0, r5, #8
	ldr r2, [r7, #0x44]
	adds r1, r2, r0
	adds r0, r4, #0
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r1, r0
	bgt _080B9CA6
	adds r0, r4, #0
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r1, r0
	blt _080B9CA6
	asrs r1, r6, #8
	add r1, ip
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x10
	asrs r2, r2, #8
	adds r2, r2, r5
	lsls r2, r2, #0xc
	lsrs r2, r2, #0x10
	mov r0, r8
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _080B9DEC @ =gUnk_082D88B8
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_080B9CA6:
	ldr r2, [sp, #4]
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	mov ip, r2
	lsls r0, r2, #8
	ldr r1, [r7, #0x40]
	adds r5, r1, r0
	ldr r4, _080B9DE8 @ =gCurLevelInfo
	mov r0, sl
	ldrb r0, [r0]
	mov r8, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r3, r8
	muls r3, r0, r3
	adds r0, r4, #0
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r5, r0
	bgt _080B9D2A
	adds r0, r4, #0
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r5, r0
	blt _080B9D2A
	adds r0, r7, #0
	adds r0, #0x3f
	movs r6, #0
	ldrsb r6, [r0, r6]
	lsls r0, r6, #8
	ldr r2, [r7, #0x44]
	adds r5, r2, r0
	adds r0, r4, #0
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r5, r0
	bgt _080B9D2A
	adds r0, r4, #0
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r5, r0
	blt _080B9D2A
	asrs r1, r1, #8
	add r1, ip
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x10
	asrs r2, r2, #8
	adds r2, r2, r6
	lsls r2, r2, #0xc
	lsrs r2, r2, #0x10
	mov r0, r8
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _080B9DEC @ =gUnk_082D88B8
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_080B9D2A:
	ldr r2, [sp]
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	mov ip, r2
	lsls r0, r2, #8
	ldr r1, [r7, #0x40]
	adds r2, r1, r0
	ldr r4, _080B9DE8 @ =gCurLevelInfo
	mov r0, sl
	ldrb r0, [r0]
	mov r8, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r3, r8
	muls r3, r0, r3
	adds r0, r4, #0
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r2, r0
	bgt _080B9DAE
	adds r0, r4, #0
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r2, r0
	blt _080B9DAE
	adds r0, r7, #0
	adds r0, #0x3f
	movs r6, #0
	ldrsb r6, [r0, r6]
	lsls r0, r6, #8
	ldr r2, [r7, #0x44]
	adds r5, r2, r0
	adds r0, r4, #0
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r5, r0
	bgt _080B9DAE
	adds r0, r4, #0
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r5, r0
	blt _080B9DAE
	asrs r1, r1, #8
	add r1, ip
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x10
	asrs r2, r2, #8
	adds r2, r2, r6
	lsls r2, r2, #0xc
	lsrs r2, r2, #0x10
	mov r0, r8
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _080B9DEC @ =gUnk_082D88B8
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_080B9DAE:
	mov r2, sb
	cmp r2, #1
	bne _080B9DD6
	adds r2, r7, #0
	adds r2, #0x9e
	ldrb r0, [r2]
	cmp r0, #0
	beq _080B9DD0
	adds r0, r7, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
_080B9DD0:
	adds r0, r7, #0
	bl sub_080BA54C
_080B9DD6:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B9DE8: .4byte gCurLevelInfo
_080B9DEC: .4byte gUnk_082D88B8

	thumb_func_start sub_080B9DF0
sub_080B9DF0: @ 0x080B9DF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080B9E2C @ =sub_080BA004
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080B9E30 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B9E34
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B9E3C
	.align 2, 0
_080B9E2C: .4byte sub_080BA004
_080B9E30: .4byte sub_0803DCCC
_080B9E34:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B9E3C:
	adds r5, r0, #0
	bl sub_0803E3B0
	movs r1, #3
	strb r1, [r5]
	ldr r0, [r7, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r7, #0x44]
	str r0, [r5, #0x38]
	str r7, [r5, #0x44]
	adds r3, r7, #0
	adds r3, #0x60
	ldrh r0, [r3]
	adds r6, r5, #0
	adds r6, #0x42
	movs r2, #0
	mov sl, r2
	strh r0, [r6]
	ldr r0, _080B9F10 @ =gUnk_083547E0
	ands r1, r4
	adds r1, r1, r0
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #8
	ldr r0, [r5, #0x38]
	adds r0, r0, r1
	str r0, [r5, #0x38]
	ldr r0, _080B9F14 @ =gUnk_03000510
	ldrb r1, [r0, #4]
	adds r2, r7, #0
	adds r2, #0x56
	movs r0, #1
	ldrb r4, [r2]
	lsls r0, r4
	movs r4, #0x10
	mov sb, r4
	orrs r0, r4
	ands r1, r0
	str r3, [sp, #0xc]
	str r2, [sp, #8]
	cmp r1, #0
	beq _080B9E9E
	ldrh r0, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_080B9E9E:
	ldrh r0, [r5, #6]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r5, #6]
	adds r1, r5, #0
	adds r1, #0xc
	ldr r4, _080B9F18 @ =0x0000031E
	mov r8, r4
	movs r0, #0xc
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #6
	mov r3, r8
	bl sub_080709F8
	adds r4, r5, #0
	adds r4, #0x2b
	mov r0, sl
	strb r0, [r4]
	ldr r0, [r7, #0xc]
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _080B9F2E
	ldr r2, _080B9F1C @ =gUnk_02020EE0
	ldr r0, _080B9F20 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _080B9F28
	ldr r0, _080B9F24 @ =gUnk_08351648
	movs r2, #0x97
	lsls r2, r2, #3
	adds r0, r0, r2
	ldrh r6, [r0]
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080B9F6C
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	b _080B9F6A
	.align 2, 0
_080B9F10: .4byte gUnk_083547E0
_080B9F14: .4byte gUnk_03000510
_080B9F18: .4byte 0x0000031E
_080B9F1C: .4byte gUnk_02020EE0
_080B9F20: .4byte gUnk_0203AD3C
_080B9F24: .4byte gUnk_08351648
_080B9F28:
	mov r3, sl
	strb r3, [r4]
	b _080B9F6C
_080B9F2E:
	ldr r2, _080B9F60 @ =gUnk_02020EE0
	ldr r0, _080B9F64 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _080B9F68
	mov r0, r8
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080B9F6C
	mov r0, r8
	movs r1, #0
	bl sub_0803DFAC
	b _080B9F6A
	.align 2, 0
_080B9F60: .4byte gUnk_02020EE0
_080B9F64: .4byte gUnk_0203AD3C
_080B9F68:
	mov r0, sl
_080B9F6A:
	strb r0, [r4]
_080B9F6C:
	ldr r1, _080B9FE4 @ =gUnk_02020EE0
	ldr r0, _080B9FE8 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r1, [sp, #0xc]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080B9FD0
	ldrb r0, [r7]
	cmp r0, #0
	bne _080B9F94
	ldr r3, [sp, #8]
	ldrb r0, [r3]
	cmp r0, r2
	bne _080B9FD0
_080B9F94:
	ldr r1, _080B9FEC @ =gUnk_08D60FA4
	ldr r4, _080B9FF0 @ =gSongTable
	ldr r2, _080B9FF4 @ =0x000009DC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080B9FB8
	ldr r1, _080B9FF8 @ =0x000009D8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080B9FD0
_080B9FB8:
	cmp r3, #0
	beq _080B9FCA
	ldr r0, _080B9FFC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B9FD0
_080B9FCA:
	ldr r0, _080BA000 @ =0x0000013B
	bl m4aSongNumStart
_080B9FD0:
	adds r0, r5, #0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080B9FE4: .4byte gUnk_02020EE0
_080B9FE8: .4byte gUnk_0203AD3C
_080B9FEC: .4byte gUnk_08D60FA4
_080B9FF0: .4byte gSongTable
_080B9FF4: .4byte 0x000009DC
_080B9FF8: .4byte 0x000009D8
_080B9FFC: .4byte gUnk_0203AD10
_080BA000: .4byte 0x0000013B

	thumb_func_start sub_080BA004
sub_080BA004: @ 0x080BA004
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r2, _080BA024 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080BA028
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080BA030
	.align 2, 0
_080BA024: .4byte gCurTask
_080BA028:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080BA030:
	adds r5, r0, #0
	ldr r6, [r5, #0x44]
	ldrh r3, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _080BA048
	ldr r0, [r2]
	bl TaskDestroy
	b _080BA32C
_080BA048:
	ldr r2, _080BA0B0 @ =gUnk_02020EE0
	ldr r0, _080BA0B4 @ =gUnk_0203AD3C
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
	bne _080BA0F8
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080BA0C0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080BA11E
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #6
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080BA0B8 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080BA0BC @ =0x0400000A
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
	b _080BA11E
	.align 2, 0
_080BA0B0: .4byte gUnk_02020EE0
_080BA0B4: .4byte gUnk_0203AD3C
_080BA0B8: .4byte 0xFFF7FFFF
_080BA0BC: .4byte 0x0400000A
_080BA0C0:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080BA11E
	movs r0, #6
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080BA0F0 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080BA0F4 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080BA11E
	.align 2, 0
_080BA0F0: .4byte 0xFFF7FFFF
_080BA0F4: .4byte 0x0400000A
_080BA0F8:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _080BA114
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080BA114
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080BA114:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080BA11E:
	ldr r3, [r6, #0xc]
	movs r0, #0x10
	ands r3, r0
	cmp r3, #0
	beq _080BA172
	ldr r2, _080BA15C @ =gUnk_02020EE0
	ldr r0, _080BA160 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r1, [r7]
	cmp r0, r1
	bne _080BA168
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080BA1CA
	ldr r0, _080BA164 @ =gUnk_08351648
	movs r2, #0x97
	lsls r2, r2, #3
	adds r0, r0, r2
	ldrh r6, [r0]
	b _080BA19C
	.align 2, 0
_080BA15C: .4byte gUnk_02020EE0
_080BA160: .4byte gUnk_0203AD3C
_080BA164: .4byte gUnk_08351648
_080BA168:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
	b _080BA1CA
_080BA172:
	ldr r2, _080BA1B8 @ =gUnk_02020EE0
	ldr r0, _080BA1BC @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r6, [r7]
	cmp r0, r6
	bne _080BA1C4
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080BA1CA
	ldr r6, _080BA1C0 @ =0x0000031E
_080BA19C:
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080BA1CA
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080BA1CA
	.align 2, 0
_080BA1B8: .4byte gUnk_02020EE0
_080BA1BC: .4byte gUnk_0203AD3C
_080BA1C0: .4byte 0x0000031E
_080BA1C4:
	adds r0, r5, #0
	adds r0, #0x2b
	strb r3, [r0]
_080BA1CA:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _080BA21C
	ldrb r0, [r3]
	cmp r0, #0
	beq _080BA1E8
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080BA1E8
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080BA1E8:
	cmp r3, #0
	beq _080BA21C
	ldr r0, _080BA218 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080BA288
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080BA288
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080BA32C
	.align 2, 0
_080BA218: .4byte gUnk_03000510
_080BA21C:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080BA280 @ =gUnk_02020EE0
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	beq _080BA25A
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080BA25A
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080BA25A
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080BA25A
	movs r3, #4
_080BA25A:
	ldr r0, _080BA284 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080BA288
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080BA288
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080BA32C
	.align 2, 0
_080BA280: .4byte gUnk_02020EE0
_080BA284: .4byte gUnk_03000510
_080BA288:
	ldr r0, _080BA2F0 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _080BA2C8
	ldr r6, _080BA2F4 @ =gCurLevelInfo
	ldrh r3, [r7]
	ldr r4, _080BA2F8 @ =gUnk_02026D50
_080BA296:
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
	bne _080BA2C0
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080BA2DA
_080BA2C0:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080BA296
_080BA2C8:
	movs r0, #1
	cmp r0, #0
	beq _080BA2DA
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_080BA2DA:
	ldrh r1, [r5, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080BA2FC
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _080BA32C
	.align 2, 0
_080BA2F0: .4byte gUnk_0203AD44
_080BA2F4: .4byte gCurLevelInfo
_080BA2F8: .4byte gUnk_02026D50
_080BA2FC:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080BA326
	movs r6, #0x3c
	ldrsh r0, [r5, r6]
	ldr r1, [r5, #0x34]
	adds r1, r1, r0
	movs r7, #0x3e
	ldrsh r0, [r5, r7]
	ldr r2, [r5, #0x38]
	subs r2, r2, r0
	movs r3, #0x3c
	ldrsh r0, [r5, r3]
	adds r1, r1, r0
	str r1, [r5, #0x34]
	movs r6, #0x3e
	ldrsh r0, [r5, r6]
	subs r2, r2, r0
	str r2, [r5, #0x38]
_080BA326:
	adds r0, r5, #0
	bl sub_0806FAC8
_080BA32C:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080BA334
sub_080BA334: @ 0x080BA334
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x68]
	ldr r1, _080BA35C @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r2, #0x68]
	adds r0, r2, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	beq _080BA354
	cmp r0, #1
	ble _080BA354
	cmp r0, #2
	beq _080BA360
_080BA354:
	adds r0, r2, #0
	bl sub_080BA4F0
	b _080BA366
	.align 2, 0
_080BA35C: .4byte 0xFFFFFEFF
_080BA360:
	adds r0, r2, #0
	bl sub_080BA5A4
_080BA366:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BA36C
sub_080BA36C: @ 0x080BA36C
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	beq _080BA398
	adds r3, r2, #0
	adds r3, #0x85
	ldrb r0, [r3]
	movs r1, #0x3f
	ands r1, r0
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r3]
	adds r0, r2, #0
	bl sub_080B8954
_080BA398:
	pop {r0}
	bx r0

	thumb_func_start sub_080BA39C
sub_080BA39C: @ 0x080BA39C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BA3D8 @ =sub_080B937C
	movs r1, #4
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r2, [r4, #8]
	movs r0, #0xa0
	lsls r0, r0, #1
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r3, #1
	orrs r0, r3
	str r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BA3DC
	orrs r2, r3
	b _080BA3E2
	.align 2, 0
_080BA3D8: .4byte sub_080B937C
_080BA3DC:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080BA3E2:
	str r2, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BA3EC
sub_080BA3EC: @ 0x080BA3EC
	push {lr}
	ldr r2, _080BA3FC @ =sub_080B94F4
	movs r1, #6
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080BA3FC: .4byte sub_080B94F4

	thumb_func_start sub_080BA400
sub_080BA400: @ 0x080BA400
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BA43C @ =sub_080B95F0
	movs r1, #7
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r2, [r4, #8]
	movs r0, #0xa0
	lsls r0, r0, #1
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r3, #1
	orrs r0, r3
	str r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BA440
	orrs r2, r3
	b _080BA446
	.align 2, 0
_080BA43C: .4byte sub_080B95F0
_080BA440:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080BA446:
	str r2, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BA450
sub_080BA450: @ 0x080BA450
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BA494 @ =sub_080B976C
	movs r1, #8
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x52
	strh r1, [r0]
	ldr r0, [r4, #0x68]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #8]
	adds r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BA48E
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080BA48E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BA494: .4byte sub_080B976C

	thumb_func_start sub_080BA498
sub_080BA498: @ 0x080BA498
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BA4C8 @ =sub_080B9810
	movs r1, #9
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r4, #0x68]
	ldr r1, _080BA4CC @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BA4C8: .4byte sub_080B9810
_080BA4CC: .4byte 0xFFFFFEFF

	thumb_func_start sub_080BA4D0
sub_080BA4D0: @ 0x080BA4D0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BA4EC @ =sub_080B998C
	movs r1, #9
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BA4EC: .4byte sub_080B998C

	thumb_func_start sub_080BA4F0
sub_080BA4F0: @ 0x080BA4F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BA528 @ =sub_080B9AF0
	movs r1, #6
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #4
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BA52C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BA534
	.align 2, 0
_080BA528: .4byte sub_080B9AF0
_080BA52C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BA534:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080BA54C
sub_080BA54C: @ 0x080BA54C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BA578 @ =sub_080BA58C
	movs r1, #0xa
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x5a
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BA57C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BA584
	.align 2, 0
_080BA578: .4byte sub_080BA58C
_080BA57C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BA584:
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080BA58C
sub_080BA58C: @ 0x080BA58C
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080BA5A0
	adds r0, r2, #0
	bl sub_080B9048
_080BA5A0:
	pop {r0}
	bx r0

	thumb_func_start sub_080BA5A4
sub_080BA5A4: @ 0x080BA5A4
	push {lr}
	ldr r2, _080BA5B4 @ =sub_080BA5B8
	movs r1, #0
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080BA5B4: .4byte sub_080BA5B8

	thumb_func_start sub_080BA5B8
sub_080BA5B8: @ 0x080BA5B8
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start nullsub_125
nullsub_125: @ 0x080BA5C4
	bx lr
	.align 2, 0

	thumb_func_start sub_080BA5C8
sub_080BA5C8: @ 0x080BA5C8
	push {r4, lr}
	mov ip, r0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0x80
	beq _080BA5DC
	cmp r1, #0xc0
	bne _080BA608
_080BA5DC:
	mov r0, ip
	adds r0, #0x3e
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	mov r1, ip
	ldr r0, [r1, #0x40]
	adds r4, r0, r2
	ldr r3, [r1, #0x44]
	ldr r0, _080BA604 @ =0xFFFFF0FF
	ands r4, r0
	movs r1, #0xf0
	lsls r1, r1, #4
	adds r0, r4, r1
	ands r3, r1
	subs r0, r0, r3
	subs r0, r0, r2
	mov r1, ip
	str r0, [r1, #0x40]
	b _080BA62E
	.align 2, 0
_080BA604: .4byte 0xFFFFF0FF
_080BA608:
	mov r0, ip
	ldr r4, [r0, #0x40]
	adds r0, #0x3f
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	mov r1, ip
	ldr r0, [r1, #0x44]
	adds r3, r0, r2
	ldr r0, _080BA634 @ =0xFFFFF0FF
	ands r3, r0
	movs r1, #0xf0
	lsls r1, r1, #4
	adds r0, r3, r1
	ands r4, r1
	subs r0, r0, r4
	subs r0, r0, r2
	mov r1, ip
	str r0, [r1, #0x44]
_080BA62E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BA634: .4byte 0xFFFFF0FF

	thumb_func_start sub_080BA638
sub_080BA638: @ 0x080BA638
	push {lr}
	mov ip, r0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0x80
	beq _080BA64C
	cmp r1, #0xc0
	bne _080BA678
_080BA64C:
	mov r0, ip
	adds r0, #0x3c
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	mov r2, ip
	ldr r0, [r2, #0x40]
	adds r3, r0, r1
	ldr r2, [r2, #0x44]
	ldr r0, _080BA674 @ =0xFFFFF0FF
	ands r3, r0
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r2, r0
	adds r0, r3, r2
	subs r0, r0, r1
	mov r1, ip
	str r0, [r1, #0x40]
	b _080BA69C
	.align 2, 0
_080BA674: .4byte 0xFFFFF0FF
_080BA678:
	mov r2, ip
	ldr r3, [r2, #0x40]
	mov r0, ip
	adds r0, #0x3f
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r2, #0x44]
	adds r2, r0, r1
	ldr r0, _080BA6A0 @ =0xFFFFF0FF
	ands r2, r0
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r3, r0
	adds r0, r2, r3
	subs r0, r0, r1
	mov r1, ip
	str r0, [r1, #0x44]
_080BA69C:
	pop {r0}
	bx r0
	.align 2, 0
_080BA6A0: .4byte 0xFFFFF0FF

	thumb_func_start sub_080BA6A4
sub_080BA6A4: @ 0x080BA6A4
	push {r4, lr}
	mov ip, r0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0x80
	beq _080BA6B8
	cmp r1, #0xc0
	bne _080BA6E4
_080BA6B8:
	mov r0, ip
	adds r0, #0x3c
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	mov r1, ip
	ldr r0, [r1, #0x40]
	adds r4, r0, r2
	ldr r3, [r1, #0x44]
	ldr r0, _080BA6E0 @ =0xFFFFF0FF
	ands r4, r0
	movs r1, #0xf0
	lsls r1, r1, #4
	adds r0, r4, r1
	ands r3, r1
	subs r0, r0, r3
	subs r0, r0, r2
	mov r1, ip
	str r0, [r1, #0x40]
	b _080BA70A
	.align 2, 0
_080BA6E0: .4byte 0xFFFFF0FF
_080BA6E4:
	mov r0, ip
	ldr r4, [r0, #0x40]
	adds r0, #0x3d
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	mov r1, ip
	ldr r0, [r1, #0x44]
	adds r3, r0, r2
	ldr r0, _080BA710 @ =0xFFFFF0FF
	ands r3, r0
	movs r1, #0xf0
	lsls r1, r1, #4
	adds r0, r3, r1
	ands r4, r1
	subs r0, r0, r4
	subs r0, r0, r2
	mov r1, ip
	str r0, [r1, #0x44]
_080BA70A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BA710: .4byte 0xFFFFF0FF

	thumb_func_start sub_080BA714
sub_080BA714: @ 0x080BA714
	push {lr}
	mov ip, r0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0x80
	beq _080BA728
	cmp r1, #0xc0
	bne _080BA754
_080BA728:
	mov r0, ip
	adds r0, #0x3e
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	mov r2, ip
	ldr r0, [r2, #0x40]
	adds r3, r0, r1
	ldr r2, [r2, #0x44]
	ldr r0, _080BA750 @ =0xFFFFF0FF
	ands r3, r0
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r2, r0
	adds r0, r3, r2
	subs r0, r0, r1
	mov r1, ip
	str r0, [r1, #0x40]
	b _080BA778
	.align 2, 0
_080BA750: .4byte 0xFFFFF0FF
_080BA754:
	mov r2, ip
	ldr r3, [r2, #0x40]
	mov r0, ip
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r2, #0x44]
	adds r2, r0, r1
	ldr r0, _080BA77C @ =0xFFFFF0FF
	ands r2, r0
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r3, r0
	adds r0, r2, r3
	subs r0, r0, r1
	mov r1, ip
	str r0, [r1, #0x44]
_080BA778:
	pop {r0}
	bx r0
	.align 2, 0
_080BA77C: .4byte 0xFFFFF0FF

	thumb_func_start sub_080BA780
sub_080BA780: @ 0x080BA780
	push {r4, lr}
	mov ip, r0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0x80
	beq _080BA794
	cmp r1, #0xc0
	bne _080BA7CC
_080BA794:
	mov r0, ip
	adds r0, #0x3e
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	mov r1, ip
	ldr r0, [r1, #0x40]
	adds r4, r0, r2
	ldr r3, [r1, #0x44]
	ldr r0, _080BA7C0 @ =0xFFFFF000
	ands r4, r0
	ldr r0, _080BA7C4 @ =0x00000FFF
	adds r1, r4, r0
	ands r3, r0
	ldr r4, _080BA7C8 @ =0xFFFFF800
	adds r0, r3, r4
	lsls r0, r0, #1
	subs r1, r1, r0
	subs r1, r1, r2
	mov r0, ip
	str r1, [r0, #0x40]
	b _080BA7F6
	.align 2, 0
_080BA7C0: .4byte 0xFFFFF000
_080BA7C4: .4byte 0x00000FFF
_080BA7C8: .4byte 0xFFFFF800
_080BA7CC:
	mov r1, ip
	ldr r4, [r1, #0x40]
	mov r0, ip
	adds r0, #0x3f
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	ldr r0, [r1, #0x44]
	adds r3, r0, r2
	ldr r0, _080BA7FC @ =0xFFFFF0FF
	ands r3, r0
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r4, r1
	asrs r0, r4, #1
	subs r0, r1, r0
	ands r0, r1
	adds r0, r3, r0
	subs r0, r0, r2
	mov r4, ip
	str r0, [r4, #0x44]
_080BA7F6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BA7FC: .4byte 0xFFFFF0FF

	thumb_func_start sub_080BA800
sub_080BA800: @ 0x080BA800
	push {r4, r5, lr}
	mov ip, r0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0x80
	beq _080BA814
	cmp r1, #0xc0
	bne _080BA844
_080BA814:
	mov r0, ip
	adds r0, #0x3e
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	mov r1, ip
	ldr r0, [r1, #0x40]
	adds r4, r0, r2
	ldr r5, [r1, #0x44]
	ldr r0, _080BA83C @ =0xFFFFF000
	ands r4, r0
	ldr r1, _080BA840 @ =0x00000FFF
	adds r0, r4, r1
	ands r5, r1
	lsls r1, r5, #1
	subs r0, r0, r1
	subs r0, r0, r2
	mov r1, ip
	str r0, [r1, #0x40]
	b _080BA870
	.align 2, 0
_080BA83C: .4byte 0xFFFFF000
_080BA840: .4byte 0x00000FFF
_080BA844:
	mov r0, ip
	ldr r4, [r0, #0x40]
	adds r0, #0x3f
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	mov r1, ip
	ldr r0, [r1, #0x44]
	adds r5, r0, r2
	ldr r0, _080BA878 @ =0xFFFFF0FF
	ands r5, r0
	movs r3, #0xf0
	lsls r3, r3, #4
	ands r4, r3
	asrs r1, r4, #1
	ldr r0, _080BA87C @ =0x000007FF
	subs r0, r0, r1
	ands r0, r3
	adds r0, r5, r0
	subs r0, r0, r2
	mov r1, ip
	str r0, [r1, #0x44]
_080BA870:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BA878: .4byte 0xFFFFF0FF
_080BA87C: .4byte 0x000007FF

	thumb_func_start sub_080BA880
sub_080BA880: @ 0x080BA880
	push {r4, r5, lr}
	mov ip, r0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0x80
	beq _080BA894
	cmp r1, #0xc0
	bne _080BA8CC
_080BA894:
	mov r0, ip
	adds r0, #0x3c
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	mov r2, ip
	ldr r0, [r2, #0x40]
	adds r5, r0, r1
	ldr r4, [r2, #0x44]
	ldr r0, _080BA8C0 @ =0xFFFFF000
	ands r5, r0
	ldr r0, _080BA8C4 @ =0x00000FFF
	ands r4, r0
	ldr r2, _080BA8C8 @ =0xFFFFF800
	adds r0, r4, r2
	lsls r0, r0, #1
	adds r0, r5, r0
	subs r0, r0, r1
	mov r1, ip
	str r0, [r1, #0x40]
	b _080BA8FC
	.align 2, 0
_080BA8C0: .4byte 0xFFFFF000
_080BA8C4: .4byte 0x00000FFF
_080BA8C8: .4byte 0xFFFFF800
_080BA8CC:
	mov r2, ip
	ldr r5, [r2, #0x40]
	mov r0, ip
	adds r0, #0x3f
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	mov r1, ip
	ldr r0, [r1, #0x44]
	adds r4, r0, r2
	ldr r0, _080BA904 @ =0xFFFFF0FF
	ands r4, r0
	movs r3, #0xf0
	lsls r3, r3, #4
	ands r5, r3
	asrs r0, r5, #1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	ands r0, r3
	adds r0, r4, r0
	subs r0, r0, r2
	mov r2, ip
	str r0, [r2, #0x44]
_080BA8FC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BA904: .4byte 0xFFFFF0FF

	thumb_func_start sub_080BA908
sub_080BA908: @ 0x080BA908
	push {r4, lr}
	mov ip, r0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0x80
	beq _080BA91C
	cmp r1, #0xc0
	bne _080BA948
_080BA91C:
	mov r0, ip
	adds r0, #0x3c
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	mov r2, ip
	ldr r0, [r2, #0x40]
	adds r4, r0, r1
	ldr r3, [r2, #0x44]
	ldr r0, _080BA940 @ =0xFFFFF000
	ands r4, r0
	ldr r0, _080BA944 @ =0x00000FFF
	ands r3, r0
	lsls r0, r3, #1
	adds r0, r4, r0
	subs r0, r0, r1
	str r0, [r2, #0x40]
	b _080BA970
	.align 2, 0
_080BA940: .4byte 0xFFFFF000
_080BA944: .4byte 0x00000FFF
_080BA948:
	mov r0, ip
	ldr r4, [r0, #0x40]
	adds r0, #0x3f
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	mov r1, ip
	ldr r0, [r1, #0x44]
	adds r3, r0, r2
	ldr r0, _080BA978 @ =0xFFFFF0FF
	ands r3, r0
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r4, r1
	asrs r0, r4, #1
	ands r0, r1
	adds r0, r3, r0
	subs r0, r0, r2
	mov r2, ip
	str r0, [r2, #0x44]
_080BA970:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BA978: .4byte 0xFFFFF0FF

	thumb_func_start sub_080BA97C
sub_080BA97C: @ 0x080BA97C
	push {r4, lr}
	mov ip, r0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0x80
	beq _080BA990
	cmp r1, #0xc0
	bne _080BA9BC
_080BA990:
	mov r0, ip
	adds r0, #0x3e
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	mov r2, ip
	ldr r0, [r2, #0x40]
	adds r4, r0, r1
	ldr r3, [r2, #0x44]
	ldr r0, _080BA9B4 @ =0xFFFFF000
	ands r4, r0
	ldr r0, _080BA9B8 @ =0x00000FFF
	ands r3, r0
	lsls r0, r3, #1
	adds r0, r4, r0
	subs r0, r0, r1
	str r0, [r2, #0x40]
	b _080BA9E4
	.align 2, 0
_080BA9B4: .4byte 0xFFFFF000
_080BA9B8: .4byte 0x00000FFF
_080BA9BC:
	mov r0, ip
	ldr r4, [r0, #0x40]
	adds r0, #0x3d
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	mov r1, ip
	ldr r0, [r1, #0x44]
	adds r3, r0, r2
	ldr r0, _080BA9EC @ =0xFFFFF0FF
	ands r3, r0
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r4, r1
	asrs r0, r4, #1
	ands r0, r1
	adds r0, r3, r0
	subs r0, r0, r2
	mov r2, ip
	str r0, [r2, #0x44]
_080BA9E4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BA9EC: .4byte 0xFFFFF0FF

	thumb_func_start sub_080BA9F0
sub_080BA9F0: @ 0x080BA9F0
	push {r4, r5, lr}
	mov ip, r0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0x80
	beq _080BAA04
	cmp r1, #0xc0
	bne _080BAA3C
_080BAA04:
	mov r0, ip
	adds r0, #0x3e
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	mov r2, ip
	ldr r0, [r2, #0x40]
	adds r5, r0, r1
	ldr r4, [r2, #0x44]
	ldr r0, _080BAA30 @ =0xFFFFF000
	ands r5, r0
	ldr r0, _080BAA34 @ =0x00000FFF
	ands r4, r0
	ldr r2, _080BAA38 @ =0xFFFFF800
	adds r0, r4, r2
	lsls r0, r0, #1
	adds r0, r5, r0
	subs r0, r0, r1
	mov r1, ip
	str r0, [r1, #0x40]
	b _080BAA6C
	.align 2, 0
_080BAA30: .4byte 0xFFFFF000
_080BAA34: .4byte 0x00000FFF
_080BAA38: .4byte 0xFFFFF800
_080BAA3C:
	mov r2, ip
	ldr r5, [r2, #0x40]
	mov r0, ip
	adds r0, #0x3d
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	mov r1, ip
	ldr r0, [r1, #0x44]
	adds r4, r0, r2
	ldr r0, _080BAA74 @ =0xFFFFF0FF
	ands r4, r0
	movs r3, #0xf0
	lsls r3, r3, #4
	ands r5, r3
	asrs r0, r5, #1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	ands r0, r3
	adds r0, r4, r0
	subs r0, r0, r2
	mov r2, ip
	str r0, [r2, #0x44]
_080BAA6C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BAA74: .4byte 0xFFFFF0FF

	thumb_func_start sub_080BAA78
sub_080BAA78: @ 0x080BAA78
	push {r4, r5, lr}
	mov ip, r0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0x80
	beq _080BAA8C
	cmp r1, #0xc0
	bne _080BAABC
_080BAA8C:
	mov r0, ip
	adds r0, #0x3c
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	mov r1, ip
	ldr r0, [r1, #0x40]
	adds r4, r0, r2
	ldr r5, [r1, #0x44]
	ldr r0, _080BAAB4 @ =0xFFFFF000
	ands r4, r0
	ldr r1, _080BAAB8 @ =0x00000FFF
	adds r0, r4, r1
	ands r5, r1
	lsls r1, r5, #1
	subs r0, r0, r1
	subs r0, r0, r2
	mov r1, ip
	str r0, [r1, #0x40]
	b _080BAAE8
	.align 2, 0
_080BAAB4: .4byte 0xFFFFF000
_080BAAB8: .4byte 0x00000FFF
_080BAABC:
	mov r0, ip
	ldr r4, [r0, #0x40]
	adds r0, #0x3d
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	mov r1, ip
	ldr r0, [r1, #0x44]
	adds r5, r0, r2
	ldr r0, _080BAAF0 @ =0xFFFFF0FF
	ands r5, r0
	movs r3, #0xf0
	lsls r3, r3, #4
	ands r4, r3
	asrs r1, r4, #1
	ldr r0, _080BAAF4 @ =0x000007FF
	subs r0, r0, r1
	ands r0, r3
	adds r0, r5, r0
	subs r0, r0, r2
	mov r1, ip
	str r0, [r1, #0x44]
_080BAAE8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BAAF0: .4byte 0xFFFFF0FF
_080BAAF4: .4byte 0x000007FF

	thumb_func_start sub_080BAAF8
sub_080BAAF8: @ 0x080BAAF8
	push {r4, lr}
	mov ip, r0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0x80
	beq _080BAB0C
	cmp r1, #0xc0
	bne _080BAB44
_080BAB0C:
	mov r0, ip
	adds r0, #0x3c
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	mov r1, ip
	ldr r0, [r1, #0x40]
	adds r4, r0, r2
	ldr r3, [r1, #0x44]
	ldr r0, _080BAB38 @ =0xFFFFF000
	ands r4, r0
	ldr r0, _080BAB3C @ =0x00000FFF
	adds r1, r4, r0
	ands r3, r0
	ldr r4, _080BAB40 @ =0xFFFFF800
	adds r0, r3, r4
	lsls r0, r0, #1
	subs r1, r1, r0
	subs r1, r1, r2
	mov r0, ip
	str r1, [r0, #0x40]
	b _080BAB6E
	.align 2, 0
_080BAB38: .4byte 0xFFFFF000
_080BAB3C: .4byte 0x00000FFF
_080BAB40: .4byte 0xFFFFF800
_080BAB44:
	mov r1, ip
	ldr r4, [r1, #0x40]
	mov r0, ip
	adds r0, #0x3d
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	ldr r0, [r1, #0x44]
	adds r3, r0, r2
	ldr r0, _080BAB74 @ =0xFFFFF0FF
	ands r3, r0
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r4, r1
	asrs r0, r4, #1
	subs r0, r1, r0
	ands r0, r1
	adds r0, r3, r0
	subs r0, r0, r2
	mov r4, ip
	str r0, [r4, #0x44]
_080BAB6E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BAB74: .4byte 0xFFFFF0FF

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
	ldr r1, _080BB270 @ =gUnk_02020EE0
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
_080BB270: .4byte gUnk_02020EE0
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
	ldr r2, _080BB3F8 @ =gUnk_02020EE0
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
_080BB3F8: .4byte gUnk_02020EE0
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
	ldr r2, _080BB664 @ =gUnk_02020EE0
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
_080BB664: .4byte gUnk_02020EE0
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
	ldr r2, _080BB764 @ =gUnk_02020EE0
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
_080BB764: .4byte gUnk_02020EE0
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
	ldr r2, _080BB9F8 @ =gUnk_02020EE0
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
_080BB9F8: .4byte gUnk_02020EE0
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
	ldr r2, _080BBB58 @ =gUnk_02020EE0
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
_080BBB58: .4byte gUnk_02020EE0
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

