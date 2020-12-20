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

	@ Are the following functions really called? 

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
	ldr r1, _080AD048 @ =gKirbys
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
_080AD048: .4byte gKirbys
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
