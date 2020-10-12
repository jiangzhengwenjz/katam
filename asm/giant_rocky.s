	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateGiantRocky
CreateGiantRocky: @ 0x080BFDA4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080BFDD8 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080BFDDC @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080BFDE0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080BFDE8
	.align 2, 0
_080BFDD8: .4byte ObjectMain
_080BFDDC: .4byte ObjectDestroy
_080BFDE0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080BFDE8:
	adds r6, r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r6, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	str r0, [r6, #0x5c]
	adds r0, r6, #0
	adds r0, #0x64
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r6, #0x5c]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r6, #0x5c]
	ldr r2, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #0xe
	orrs r2, r0
	str r2, [r6, #8]
	adds r0, r6, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r6, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BFE32
	movs r0, #1
	orrs r2, r0
	b _080BFE38
_080BFE32:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080BFE38:
	str r2, [r6, #8]
	movs r4, #8
	rsbs r4, r4, #0
	movs r2, #2
	rsbs r2, r2, #0
	movs r5, #0xa
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r3, #8
	bl sub_0803E2B0
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #8
	bl sub_0803E308
	adds r0, r6, #0
	bl ObjectInitSprite
	movs r4, #0
	movs r5, #0
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r6, #0x24]
	ldr r2, _080BFE9C @ =gUnk_08351648
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
	adds r0, #0x9e
	strb r4, [r0]
	str r5, [r6, #0x7c]
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080BFE9C: .4byte gUnk_08351648

	thumb_func_start sub_080BFEA0
sub_080BFEA0: @ 0x080BFEA0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldrb r1, [r4, #1]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0xf
	bne _080BFF58
	adds r0, r4, #0
	adds r0, #0xac
	ldr r1, [r0]
	ldr r3, [r1, #0x40]
	ldr r1, [r4, #0x40]
	subs r2, r3, r1
	adds r5, r0, #0
	adds r6, r1, #0
	cmp r2, #0
	blt _080BFED8
	ldr r0, _080BFED4 @ =0x00004FFF
	cmp r2, r0
	ble _080BFEE0
	b _080BFF50
	.align 2, 0
_080BFED4: .4byte 0x00004FFF
_080BFED8:
	subs r1, r6, r3
	ldr r0, _080BFEF4 @ =0x00004FFF
	cmp r1, r0
	bgt _080BFF50
_080BFEE0:
	ldr r0, [r5]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080BFEF8
	ldr r0, _080BFEF4 @ =0x00004FFF
	cmp r2, r0
	ble _080BFF00
	b _080BFF50
	.align 2, 0
_080BFEF4: .4byte 0x00004FFF
_080BFEF8:
	subs r1, r1, r0
	ldr r0, _080BFF14 @ =0x00004FFF
	cmp r1, r0
	bgt _080BFF50
_080BFF00:
	ldr r0, [r5]
	ldr r0, [r0, #0x40]
	cmp r6, r0
	ble _080BFF18
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	b _080BFF22
	.align 2, 0
_080BFF14: .4byte 0x00004FFF
_080BFF18:
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
_080BFF22:
	strb r0, [r2]
	ldr r2, _080BFF44 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080BFF48 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080BFF4C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080BFF50
	adds r0, r4, #0
	bl sub_080C046C
	b _080BFF6C
	.align 2, 0
_080BFF44: .4byte gRngVal
_080BFF48: .4byte 0x00196225
_080BFF4C: .4byte 0x3C6EF35F
_080BFF50:
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r5]
_080BFF58:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080BFF6C
	adds r0, r4, #0
	bl sub_080C0514
_080BFF6C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BFF74
sub_080BFF74: @ 0x080BFF74
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BFFCC @ =sub_080C0088
	movs r1, #2
	bl ObjectSetFunc
	ldr r2, _080BFFD0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080BFFD4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080BFFD8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _080BFFA2
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
_080BFFA2:
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r2, [r4, #8]
	movs r0, #3
	rsbs r0, r0, #0
	ands r2, r0
	movs r0, #0x40
	orrs r2, r0
	str r2, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080BFFDC
	orrs r2, r3
	b _080BFFE2
	.align 2, 0
_080BFFCC: .4byte sub_080C0088
_080BFFD0: .4byte gRngVal
_080BFFD4: .4byte 0x00196225
_080BFFD8: .4byte 0x3C6EF35F
_080BFFDC:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080BFFE2:
	str r2, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BFFF8
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080BFFF8:
	ldr r1, _080C0068 @ =gUnk_02020EE0
	ldr r0, _080C006C @ =gUnk_0203AD3C
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
	bne _080C0060
	ldrb r0, [r4]
	cmp r0, #0
	bne _080C0024
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C0060
_080C0024:
	ldr r1, _080C0070 @ =gUnk_08D60FA4
	ldr r4, _080C0074 @ =gSongTable
	ldr r2, _080C0078 @ =0x00000A2C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C0048
	ldr r1, _080C007C @ =0x00000A28
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C0060
_080C0048:
	cmp r3, #0
	beq _080C005A
	ldr r0, _080C0080 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C0060
_080C005A:
	ldr r0, _080C0084 @ =0x00000145
	bl m4aSongNumStart
_080C0060:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C0068: .4byte gUnk_02020EE0
_080C006C: .4byte gUnk_0203AD3C
_080C0070: .4byte gUnk_08D60FA4
_080C0074: .4byte gSongTable
_080C0078: .4byte 0x00000A2C
_080C007C: .4byte 0x00000A28
_080C0080: .4byte gUnk_0203AD10
_080C0084: .4byte 0x00000145

	thumb_func_start sub_080C0088
sub_080C0088: @ 0x080C0088
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C00A8
	adds r3, r2, #0
	adds r3, #0x52
	movs r1, #0
	ldrsh r0, [r3, r1]
	movs r1, #0x82
	lsls r1, r1, #2
	cmp r0, r1
	ble _080C00A8
	strh r1, [r3]
_080C00A8:
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x17
	bgt _080C00D4
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x20
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080C00CC @ =0xF0010000
	cmp r0, r1
	bge _080C00DA
	ldr r0, _080C00D0 @ =0x0000F001
	strh r0, [r2]
	b _080C00DA
	.align 2, 0
_080C00CC: .4byte 0xF0010000
_080C00D0: .4byte 0x0000F001
_080C00D4:
	adds r0, r2, #0
	bl sub_080C04D4
_080C00DA:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C00E0
sub_080C00E0: @ 0x080C00E0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C0102
	adds r2, r5, #0
	adds r2, #0x52
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, _080C0134 @ =0xFFFFFC00
	cmp r1, r0
	bge _080C0102
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r2]
_080C0102:
	movs r1, #4
	ldrsh r4, [r5, r1]
	cmp r4, #0
	beq _080C013C
	ldr r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C01F8
	ldr r2, _080C0138 @ =sub_080BFEA0
	adds r0, r5, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #0x14
	strh r1, [r0]
	ldr r0, [r5, #8]
	subs r1, #0x41
	ands r0, r1
	str r0, [r5, #8]
	b _080C01F8
	.align 2, 0
_080C0134: .4byte 0xFFFFFC00
_080C0138: .4byte sub_080BFEA0
_080C013C:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080C01F8
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #5
	strb r0, [r1]
	movs r0, #1
	adds r1, r5, #0
	bl sub_0806FE64
	ldr r0, [r5, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x52
	strh r4, [r0]
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xc
	movs r3, #1
	bl sub_08089864
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_08089864
	ldr r1, _080C0200 @ =gUnk_02020EE0
	ldr r0, _080C0204 @ =gUnk_0203AD3C
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
	bne _080C01F2
	ldrb r0, [r5]
	cmp r0, #0
	bne _080C01B2
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C01F2
_080C01B2:
	ldr r1, _080C0208 @ =gUnk_08D60FA4
	ldr r4, _080C020C @ =gSongTable
	ldr r2, _080C0210 @ =0x00000AB4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C01D8
	movs r1, #0xab
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C01F2
_080C01D8:
	cmp r3, #0
	beq _080C01EA
	ldr r0, _080C0214 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C01F2
_080C01EA:
	movs r0, #0xab
	lsls r0, r0, #1
	bl m4aSongNumStart
_080C01F2:
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
_080C01F8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C0200: .4byte gUnk_02020EE0
_080C0204: .4byte gUnk_0203AD3C
_080C0208: .4byte gUnk_08D60FA4
_080C020C: .4byte gSongTable
_080C0210: .4byte 0x00000AB4
_080C0214: .4byte gUnk_0203AD10

	thumb_func_start sub_080C0218
sub_080C0218: @ 0x080C0218
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080C0248 @ =sub_080C0320
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
	beq _080C024C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C0254
	.align 2, 0
_080C0248: .4byte sub_080C0320
_080C024C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C0254:
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
	ldr r0, _080C02E4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080C02A4
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080C02A4:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, _080C02E8 @ =0x20000043
	str r0, [r4, #0x68]
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x66
	strh r6, [r0]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080C02EC
	ldr r0, [r4, #8]
	orrs r0, r3
	b _080C02F4
	.align 2, 0
_080C02E4: .4byte gUnk_03000510
_080C02E8: .4byte 0x20000043
_080C02EC:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C02F4:
	str r0, [r4, #8]
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #8
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0803E2B0
	ldr r0, [r5, #8]
	ldr r1, _080C031C @ =0xEFFFFFFF
	ands r0, r1
	str r0, [r5, #8]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C031C: .4byte 0xEFFFFFFF

	thumb_func_start sub_080C0320
sub_080C0320: @ 0x080C0320
	push {r4, r5, r6, r7, lr}
	ldr r0, _080C033C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C0340
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C0348
	.align 2, 0
_080C033C: .4byte gCurTask
_080C0340:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C0348:
	adds r5, r0, #0
	ldr r4, [r5, #0x70]
	ldr r0, [r4, #8]
	movs r7, #0x80
	lsls r7, r7, #5
	ands r0, r7
	cmp r0, #0
	beq _080C035E
	ldr r0, [r5, #8]
	orrs r0, r7
	str r0, [r5, #8]
_080C035E:
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r6, r5, #0
	adds r6, #0x56
	strb r0, [r6]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x44]
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C0402
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #4
	beq _080C039A
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r5, #8]
	orrs r0, r7
	str r0, [r5, #8]
	b _080C0402
_080C039A:
	ldr r0, [r5, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _080C0402
	ldrb r0, [r6]
	cmp r0, #0xff
	beq _080C03C8
	ldr r2, _080C03C0 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080C03C4 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080C03CA
	.align 2, 0
_080C03C0: .4byte gCurLevelInfo
_080C03C4: .4byte 0x0000065E
_080C03C8:
	movs r1, #0xff
_080C03CA:
	cmp r1, #0xff
	beq _080C0402
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080C0408 @ =gUnk_02022EB0
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
	ldr r2, _080C040C @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080C0402:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C0408: .4byte gUnk_02022EB0
_080C040C: .4byte gUnk_02022F50

	thumb_func_start sub_080C0410
sub_080C0410: @ 0x080C0410
	push {lr}
	adds r1, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	beq _080C042E
	cmp r0, #1
	ble _080C0426
	cmp r0, #2
	beq _080C0436
_080C0426:
	adds r0, r1, #0
	bl sub_080C0440
	b _080C043C
_080C042E:
	adds r0, r1, #0
	bl sub_080C0548
	b _080C043C
_080C0436:
	adds r0, r1, #0
	bl sub_080C0578
_080C043C:
	pop {r0}
	bx r0

	thumb_func_start sub_080C0440
sub_080C0440: @ 0x080C0440
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C0468 @ =sub_080BFEA0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #0x14
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #0x41
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C0468: .4byte sub_080BFEA0

	thumb_func_start sub_080C046C
sub_080C046C: @ 0x080C046C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C04A4 @ =sub_080C04B8
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r2, [r4, #8]
	movs r0, #3
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080C04A8
	orrs r2, r3
	b _080C04AE
	.align 2, 0
_080C04A4: .4byte sub_080C04B8
_080C04A8:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080C04AE:
	str r2, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C04B8
sub_080C04B8: @ 0x080C04B8
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _080C04D0
	adds r0, r1, #0
	bl sub_080BFF74
_080C04D0:
	pop {r0}
	bx r0

	thumb_func_start sub_080C04D4
sub_080C04D4: @ 0x080C04D4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C04F4 @ =sub_080C04F8
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
_080C04F4: .4byte sub_080C04F8

	thumb_func_start sub_080C04F8
sub_080C04F8: @ 0x080C04F8
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	ble _080C0510
	adds r0, r1, #0
	bl sub_080C0514
_080C0510:
	pop {r0}
	bx r0

	thumb_func_start sub_080C0514
sub_080C0514: @ 0x080C0514
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C0544 @ =sub_080C00E0
	movs r1, #4
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xf8
	lsls r0, r0, #8
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_080C0218
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C0544: .4byte sub_080C00E0

	thumb_func_start sub_080C0548
sub_080C0548: @ 0x080C0548
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C0568 @ =sub_080C056C
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
_080C0568: .4byte sub_080C056C

	thumb_func_start sub_080C056C
sub_080C056C: @ 0x080C056C
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_080C0578
sub_080C0578: @ 0x080C0578
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C0598 @ =sub_080C059C
	movs r1, #4
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
_080C0598: .4byte sub_080C059C

	thumb_func_start sub_080C059C
sub_080C059C: @ 0x080C059C
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0
