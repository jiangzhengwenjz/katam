	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateMrFrosty
CreateMrFrosty: @ 0x080CB6FC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080CB730 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080CB734 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080CB738
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080CB740
	.align 2, 0
_080CB730: .4byte ObjectMain
_080CB734: .4byte ObjectDestroy
_080CB738:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080CB740:
	adds r6, r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r6, #0xc]
	movs r3, #1
	orrs r0, r3
	str r0, [r6, #0xc]
	ldr r2, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r2, r1
	movs r0, #0x80
	lsls r0, r0, #0xe
	orrs r2, r0
	str r2, [r6, #8]
	ldr r0, [r6, #0x44]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	adds r0, r6, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r6, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080CB780
	orrs r2, r3
	b _080CB786
_080CB780:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080CB786:
	str r2, [r6, #8]
	ldr r0, [r6, #0x5c]
	movs r4, #8
	rsbs r4, r4, #0
	ands r0, r4
	movs r1, #3
	orrs r0, r1
	movs r1, #0xa0
	orrs r0, r1
	str r0, [r6, #0x5c]
	subs r1, #0xaa
	movs r5, #0x15
	str r5, [sp]
	adds r0, r6, #0
	adds r2, r4, #0
	movs r3, #0xa
	bl sub_0803E2B0
	movs r1, #0xc
	rsbs r1, r1, #0
	str r5, [sp]
	adds r0, r6, #0
	adds r2, r4, #0
	movs r3, #0xc
	bl sub_0803E308
	adds r0, r6, #0
	bl ObjectInitSprite
	movs r4, #0
	movs r5, #0
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r6, #0x24]
	adds r0, r6, #0
	bl sub_080CD2FC
	adds r0, r6, #0
	bl sub_080CD050
	adds r0, r6, #0
	adds r0, #0x9e
	strb r4, [r0]
	str r5, [r6, #0x7c]
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080CB7E8
sub_080CB7E8: @ 0x080CB7E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	bl sub_0803D368
	adds r3, r0, #0
	adds r0, r6, #0
	adds r0, #0xac
	str r3, [r0]
	ldr r0, [r3, #0xc]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080CB810
	b _080CB9C6
_080CB810:
	adds r0, r6, #0
	adds r0, #0x60
	adds r2, r3, #0
	adds r2, #0x60
	ldrh r1, [r0]
	mov sb, r0
	ldrh r2, [r2]
	cmp r1, r2
	beq _080CB824
	b _080CB9C6
_080CB824:
	ldr r1, [r6, #0x40]
	ldr r0, [r3, #0x40]
	cmp r1, r0
	ble _080CB834
	ldr r0, [r6, #8]
	movs r1, #1
	orrs r0, r1
	b _080CB83C
_080CB834:
	ldr r0, [r6, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080CB83C:
	str r0, [r6, #8]
	adds r7, r6, #0
	adds r7, #0xac
	ldr r0, [r7]
	movs r1, #0xb0
	adds r1, r1, r6
	mov r8, r1
	ldr r5, [r1]
	movs r2, #6
	ldrsh r1, [r5, r2]
	lsls r1, r1, #8
	movs r3, #8
	ldrsh r2, [r5, r3]
	lsls r2, r2, #8
	movs r3, #0x1a
	ldrsh r4, [r5, r3]
	mov sl, r4
	movs r3, #0x1c
	ldrsh r4, [r5, r3]
	str r4, [sp]
	ldrh r4, [r5, #0x1e]
	str r4, [sp, #4]
	ldrh r4, [r5, #0x20]
	str r4, [sp, #8]
	mov r3, sl
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080CB87A
	b _080CB9C6
_080CB87A:
	ldr r4, _080CB9D8 @ =gCurLevelInfo
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	movs r5, #0xcd
	lsls r5, r5, #3
	muls r0, r5, r0
	adds r1, r4, #0
	adds r1, #0xa0
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0xa4
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r5, r0
	adds r1, r4, #0
	adds r1, #0xa4
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0xa6
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r5, r0
	adds r1, r4, #0
	adds r1, #0xa8
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0xa8
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r5, r0
	adds r1, r4, #0
	adds r1, #0xac
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0xaa
	strh r0, [r1]
	ldr r0, [r6, #8]
	ldr r1, _080CB9DC @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_080CD2A0
	movs r0, #0x5a
	strh r0, [r6, #4]
	adds r0, r6, #0
	bl sub_08034E14
	adds r1, r0, #0
	cmp r1, #0
	beq _080CB902
	movs r0, #0
	strb r0, [r1, #9]
_080CB902:
	adds r0, r6, #0
	adds r0, #0x82
	ldrb r3, [r0]
	adds r1, r3, #0
	subs r1, #0x38
	subs r0, #0x2c
	ldrb r0, [r0]
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r4, _080CB9E0 @ =0x0000065E
	adds r0, r0, r4
	ldrb r5, [r0]
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	cmp r1, #0
	blt _080CB9C6
	ldr r0, _080CB9E4 @ =gUnk_08352D80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080CB9C6
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080CB9C6
	adds r0, r3, #0
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r2, #0
	cmp r0, #0xf
	bls _080CB984
	movs r4, #1
_080CB94C:
	subs r1, r4, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl sub_08002A2C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08002A44
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _080CB94C
	adds r0, r5, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_08002A44
_080CB984:
	ldr r1, _080CB9E4 @ =gUnk_08352D80
	asrs r0, r6, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_08002A1C
	ldr r2, _080CB9E8 @ =gUnk_02020EE0
	ldr r0, _080CB9EC @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r2, sb
	ldrh r2, [r2]
	cmp r0, r2
	bne _080CB9C6
	ldr r0, _080CB9F0 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080CB9C6
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080CB9C6:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080CB9D8: .4byte gCurLevelInfo
_080CB9DC: .4byte 0xFFFFFDFF
_080CB9E0: .4byte 0x0000065E
_080CB9E4: .4byte gUnk_08352D80
_080CB9E8: .4byte gUnk_02020EE0
_080CB9EC: .4byte gUnk_0203AD3C
_080CB9F0: .4byte gUnk_0203AD20

	thumb_func_start sub_080CB9F4
sub_080CB9F4: @ 0x080CB9F4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, [r4, #8]
	movs r0, #4
	orrs r2, r0
	str r2, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080CBA14
	movs r0, #1
	orrs r2, r0
	b _080CBA1A
_080CBA14:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080CBA1A:
	str r2, [r4, #8]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080CBAFE
	ldr r2, _080CBA64 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080CBA68 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080CBA6C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r3, r0, #0x10
	movs r1, #0
	ldr r0, _080CBA70 @ =0x00002492
	adds r6, r2, #0
	adds r2, r4, #0
	adds r2, #0x85
	cmp r3, r0
	blt _080CBA5A
	adds r5, r0, #0
_080CBA48:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #5
	bhi _080CBA5A
	adds r0, r1, #1
	muls r0, r5, r0
	cmp r3, r0
	bge _080CBA48
_080CBA5A:
	cmp r1, #0
	bne _080CBA74
	movs r0, #2
	strb r0, [r2]
	b _080CBAE0
	.align 2, 0
_080CBA64: .4byte gRngVal
_080CBA68: .4byte 0x00196225
_080CBA6C: .4byte 0x3C6EF35F
_080CBA70: .4byte 0x00002492
_080CBA74:
	ldr r1, [r6]
	ldr r0, _080CBAA8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080CBAAC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r6]
	lsrs r3, r0, #0x10
	movs r1, #0
	ldr r0, _080CBAB0 @ =0x00002492
	cmp r3, r0
	blt _080CBA9E
	adds r5, r0, #0
_080CBA8C:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #5
	bhi _080CBA9E
	adds r0, r1, #1
	muls r0, r5, r0
	cmp r3, r0
	bge _080CBA8C
_080CBA9E:
	cmp r1, #0
	bne _080CBAB4
	movs r0, #2
	strb r0, [r2]
	b _080CBAF0
	.align 2, 0
_080CBAA8: .4byte 0x00196225
_080CBAAC: .4byte 0x3C6EF35F
_080CBAB0: .4byte 0x00002492
_080CBAB4:
	adds r1, r2, #0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080CBAC6
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080CBAF8
_080CBAC6:
	movs r0, #2
	strb r0, [r2]
	ldr r1, [r6]
	ldr r0, _080CBAE8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080CBAEC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r6]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CBAF0
_080CBAE0:
	adds r0, r4, #0
	bl sub_080CD320
	b _080CBAFE
	.align 2, 0
_080CBAE8: .4byte 0x00196225
_080CBAEC: .4byte 0x3C6EF35F
_080CBAF0:
	adds r0, r4, #0
	bl sub_080CC0C0
	b _080CBAFE
_080CBAF8:
	adds r0, r4, #0
	bl sub_080CD3B8
_080CBAFE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080CBB04
sub_080CBB04: @ 0x080CBB04
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CBB22
	subs r1, #0x33
	movs r0, #0x80
	lsls r0, r0, #2
	b _080CBB2A
_080CBB22:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc8
	lsls r0, r0, #1
_080CBB2A:
	strh r0, [r1]
	adds r2, r1, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CBB3E
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080CBB3E:
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080CBBE0 @ =sub_080CBC14
	str r0, [r4, #0x78]
	ldr r3, [r4, #8]
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0x10
	bl sub_08089864
	ldr r1, _080CBBE4 @ =gUnk_02020EE0
	ldr r0, _080CBBE8 @ =gUnk_0203AD3C
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
	bne _080CBBBE
	ldrb r0, [r4]
	cmp r0, #0
	bne _080CBB82
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CBBBE
_080CBB82:
	ldr r1, _080CBBEC @ =gUnk_08D60FA4
	ldr r5, _080CBBF0 @ =gSongTable
	ldr r2, _080CBBF4 @ =0x00000B1C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CBBA6
	ldr r1, _080CBBF8 @ =0x00000B18
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CBBBE
_080CBBA6:
	cmp r3, #0
	beq _080CBBB8
	ldr r0, _080CBBFC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CBBBE
_080CBBB8:
	ldr r0, _080CBC00 @ =0x00000163
	bl m4aSongNumStart
_080CBBBE:
	ldr r2, _080CBC04 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080CBC08 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080CBC0C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CBBDA
	ldr r0, _080CBC10 @ =0x00000107
	strh r0, [r4, #4]
_080CBBDA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080CBBE0: .4byte sub_080CBC14
_080CBBE4: .4byte gUnk_02020EE0
_080CBBE8: .4byte gUnk_0203AD3C
_080CBBEC: .4byte gUnk_08D60FA4
_080CBBF0: .4byte gSongTable
_080CBBF4: .4byte 0x00000B1C
_080CBBF8: .4byte 0x00000B18
_080CBBFC: .4byte gUnk_0203AD10
_080CBC00: .4byte 0x00000163
_080CBC04: .4byte gRngVal
_080CBC08: .4byte 0x00196225
_080CBC0C: .4byte 0x3C6EF35F
_080CBC10: .4byte 0x00000107

	thumb_func_start sub_080CBC14
sub_080CBC14: @ 0x080CBC14
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CBCB0
	adds r5, r4, #0
	adds r5, #0x3e
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r4, #0x40]
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	ldr r6, _080CBC68 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080CBC6C
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	b _080CBD2C
	.align 2, 0
_080CBC68: .4byte 0xFFFFF800
_080CBC6C:
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	cmp r1, r0
	bgt _080CBD30
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r6, #0
	ldrsh r1, [r3, r6]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r2, _080CBCAC @ =0xFFFFF800
	adds r0, r0, r2
	b _080CBD2C
	.align 2, 0
_080CBCAC: .4byte 0xFFFFF800
_080CBCB0:
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r4, #0x40]
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	cmp r1, r0
	bgt _080CBCF4
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r2, _080CBCF0 @ =0xFFFFF800
	adds r0, r0, r2
	b _080CBD2C
	.align 2, 0
_080CBCF0: .4byte 0xFFFFF800
_080CBCF4:
	adds r5, r4, #0
	adds r5, #0x3e
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	ldr r2, _080CBD94 @ =0xFFFFF800
	adds r0, r0, r2
	cmp r1, r0
	blt _080CBD30
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080CBD2C:
	subs r1, r1, r0
	str r1, [r4, #0x40]
_080CBD30:
	ldr r3, [r4, #8]
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _080CBD44
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0x10
	bl sub_08089864
_080CBD44:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r5, [r0]
	cmp r5, #0
	beq _080CBDA8
	movs r1, #4
	ldrsh r0, [r4, r1]
	ldrh r3, [r4, #4]
	cmp r0, #0x30
	beq _080CBD5C
	cmp r0, #0x73
	bne _080CBDFC
_080CBD5C:
	ldr r2, _080CBD98 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080CBD9C @ =0x00196225
	muls r0, r1, r0
	ldr r6, _080CBDA0 @ =0x3C6EF35F
	adds r0, r0, r6
	str r0, [r2]
	lsrs r5, r0, #0x10
	movs r0, #3
	ands r5, r0
	cmp r5, #0
	bne _080CBDFC
	ldr r2, _080CBDA4 @ =sub_080CB9F4
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x50
	strh r5, [r0]
	movs r0, #0x1e
	b _080CBE14
	.align 2, 0
_080CBD94: .4byte 0xFFFFF800
_080CBD98: .4byte gRngVal
_080CBD9C: .4byte 0x00196225
_080CBDA0: .4byte 0x3C6EF35F
_080CBDA4: .4byte sub_080CB9F4
_080CBDA8:
	movs r1, #4
	ldrsh r0, [r4, r1]
	ldrh r3, [r4, #4]
	cmp r0, #0x64
	bne _080CBDFC
	ldr r2, _080CBDEC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080CBDF0 @ =0x00196225
	muls r0, r1, r0
	ldr r6, _080CBDF4 @ =0x3C6EF35F
	adds r0, r0, r6
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CBDFC
	ldr r2, _080CBDF8 @ =sub_080CB9F4
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x50
	strh r5, [r0]
	movs r0, #0x1e
	b _080CBE14
	.align 2, 0
_080CBDEC: .4byte gRngVal
_080CBDF0: .4byte 0x00196225
_080CBDF4: .4byte 0x3C6EF35F
_080CBDF8: .4byte sub_080CB9F4
_080CBDFC:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080CBE12
	adds r0, r4, #0
	bl sub_080CBE1C
	b _080CBE16
_080CBE12:
	adds r0, r3, #1
_080CBE14:
	strh r0, [r4, #4]
_080CBE16:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080CBE1C
sub_080CBE1C: @ 0x080CBE1C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CBEE0 @ =sub_080CBF00
	movs r1, #3
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	ldr r0, _080CBEE4 @ =0x0000FF40
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CBE4A
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080CBE4A:
	movs r0, #0
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #4
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #1
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r1, _080CBEE8 @ =gUnk_02020EE0
	ldr r0, _080CBEEC @ =gUnk_0203AD3C
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
	bne _080CBED8
	ldrb r0, [r4]
	cmp r0, #0
	bne _080CBE98
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CBED8
_080CBE98:
	ldr r1, _080CBEF0 @ =gUnk_08D60FA4
	ldr r4, _080CBEF4 @ =gSongTable
	ldr r2, _080CBEF8 @ =0x00000B24
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CBEBE
	movs r1, #0xb2
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CBED8
_080CBEBE:
	cmp r3, #0
	beq _080CBED0
	ldr r0, _080CBEFC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CBED8
_080CBED0:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080CBED8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CBEE0: .4byte sub_080CBF00
_080CBEE4: .4byte 0x0000FF40
_080CBEE8: .4byte gUnk_02020EE0
_080CBEEC: .4byte gUnk_0203AD3C
_080CBEF0: .4byte gUnk_08D60FA4
_080CBEF4: .4byte gSongTable
_080CBEF8: .4byte 0x00000B24
_080CBEFC: .4byte gUnk_0203AD10

	thumb_func_start sub_080CBF00
sub_080CBF00: @ 0x080CBF00
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	cmp r0, #0
	beq _080CBF2E
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080CBF2E
	ldr r0, [r4, #8]
	ldr r1, _080CC000 @ =0xFFFFF7FF
	ands r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_080CBF2E:
	adds r5, r4, #0
	adds r5, #0x83
	ldrb r0, [r5]
	adds r7, r5, #0
	cmp r0, #3
	bne _080CC020
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	subs r1, #0x10
	strh r1, [r0]
	lsls r1, r1, #0x10
	movs r2, #0xfd
	lsls r2, r2, #0x18
	adds r6, r0, #0
	cmp r1, r2
	bge _080CBF56
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r6]
_080CBF56:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080CBF66
	b _080CC0B4
_080CBF66:
	ldr r1, _080CC004 @ =gUnk_02020EE0
	ldr r0, _080CC008 @ =gUnk_0203AD3C
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
	bne _080CBFD2
	ldrb r0, [r4]
	cmp r0, #0
	bne _080CBF92
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CBFD2
_080CBF92:
	ldr r1, _080CC00C @ =gUnk_08D60FA4
	ldr r5, _080CC010 @ =gSongTable
	ldr r2, _080CC014 @ =0x00000B24
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CBFB8
	movs r1, #0xb2
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CBFD2
_080CBFB8:
	cmp r3, #0
	beq _080CBFCA
	ldr r0, _080CC018 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CBFD2
_080CBFCA:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080CBFD2:
	movs r0, #4
	strb r0, [r7]
	adds r2, r4, #0
	adds r2, #0x50
	ldr r0, _080CC01C @ =0x0000FF80
	strh r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CBFF4
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080CBFF4:
	movs r0, #1
	adds r1, r4, #0
	bl sub_0806FE64
	b _080CC0B4
	.align 2, 0
_080CC000: .4byte 0xFFFFF7FF
_080CC004: .4byte gUnk_02020EE0
_080CC008: .4byte gUnk_0203AD3C
_080CC00C: .4byte gUnk_08D60FA4
_080CC010: .4byte gSongTable
_080CC014: .4byte 0x00000B24
_080CC018: .4byte gUnk_0203AD10
_080CC01C: .4byte 0x0000FF80
_080CC020:
	cmp r0, #4
	bne _080CC060
	ldrh r1, [r4, #4]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080CC03C
	ldr r3, [r4, #8]
	mvns r3, r3
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0x10
	bl sub_08089864
_080CC03C:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _080CC0B4
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #5
	strb r0, [r5]
	b _080CC0B4
_080CC060:
	cmp r0, #5
	bne _080CC0B4
	ldrb r1, [r4, #1]
	movs r0, #3
	ands r0, r1
	cmp r0, #1
	bhi _080CC078
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #1
	b _080CC080
_080CC078:
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xff
	lsls r0, r0, #8
_080CC080:
	strh r0, [r1]
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080CC0B4
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	ldr r2, _080CC0BC @ =sub_080CB9F4
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	subs r1, #0x5c
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x1e
	strh r0, [r4, #4]
_080CC0B4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080CC0BC: .4byte sub_080CB9F4

	thumb_func_start sub_080CC0C0
sub_080CC0C0: @ 0x080CC0C0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CC0E4 @ =sub_080CC138
	movs r1, #6
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080CC0E8
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080CC0F0
	.align 2, 0
_080CC0E4: .4byte sub_080CC138
_080CC0E8:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080CC0F0:
	str r0, [r4, #8]
	ldr r2, _080CC110 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080CC114 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080CC118 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CC11C
	movs r0, #3
	strh r0, [r4, #4]
	b _080CC11E
	.align 2, 0
_080CC110: .4byte gRngVal
_080CC114: .4byte 0x00196225
_080CC118: .4byte 0x3C6EF35F
_080CC11C:
	strh r1, [r4, #4]
_080CC11E:
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CC138
sub_080CC138: @ 0x080CC138
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r3, #4
	orrs r0, r3
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x70
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080CC218 @ =0xF8800000
	cmp r0, r1
	bge _080CC15A
	ldr r0, _080CC21C @ =0x0000F880
	strh r0, [r2]
_080CC15A:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _080CC16A
	b _080CC266
_080CC16A:
	movs r0, #1
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r1, _080CC220 @ =gUnk_02020EE0
	ldr r0, _080CC224 @ =gUnk_0203AD3C
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
	bne _080CC1DE
	ldrb r0, [r4]
	cmp r0, #0
	bne _080CC19E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CC1DE
_080CC19E:
	ldr r1, _080CC228 @ =gUnk_08D60FA4
	ldr r5, _080CC22C @ =gSongTable
	ldr r2, _080CC230 @ =0x00000B24
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CC1C4
	movs r1, #0xb2
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CC1DE
_080CC1C4:
	cmp r3, #0
	beq _080CC1D6
	ldr r0, _080CC234 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CC1DE
_080CC1D6:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080CC1DE:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bne _080CC23C
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080CC238 @ =sub_080CB9F4
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x50
	strh r5, [r0]
	movs r0, #0x1e
	strh r0, [r4, #4]
	b _080CC266
	.align 2, 0
_080CC218: .4byte 0xF8800000
_080CC21C: .4byte 0x0000F880
_080CC220: .4byte gUnk_02020EE0
_080CC224: .4byte gUnk_0203AD3C
_080CC228: .4byte gUnk_08D60FA4
_080CC22C: .4byte gSongTable
_080CC230: .4byte 0x00000B24
_080CC234: .4byte gUnk_0203AD10
_080CC238: .4byte sub_080CB9F4
_080CC23C:
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080CC252
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080CC25A
_080CC252:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080CC25A:
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r1]
_080CC266:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080CC26C
sub_080CC26C: @ 0x080CC26C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080CC2D4
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	adds r1, r4, #0
	adds r1, #0xac
	ldr r2, [r1]
	movs r0, #0
	str r0, [r4, #0x7c]
	adds r5, r1, #0
	cmp r2, #0
	beq _080CC2C4
	ldr r0, [r2, #0x40]
	ldr r1, [r4, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080CC2A8
	ldr r0, _080CC2A4 @ =0x000017FF
	cmp r2, r0
	ble _080CC2B0
	b _080CC2C4
	.align 2, 0
_080CC2A4: .4byte 0x000017FF
_080CC2A8:
	subs r1, r1, r0
	ldr r0, _080CC2C0 @ =0x000017FF
	cmp r1, r0
	bgt _080CC2C4
_080CC2B0:
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r5]
	adds r0, r4, #0
	bl sub_080CC408
	b _080CC2EA
	.align 2, 0
_080CC2C0: .4byte 0x000017FF
_080CC2C4:
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r5]
	adds r0, r4, #0
	bl sub_080CD56C
	b _080CC2EA
_080CC2D4:
	adds r2, r4, #0
	adds r2, #0x52
	ldr r0, _080CC2F0 @ =gUnk_08355D50
	ldrb r1, [r4, #1]
	lsrs r1, r1, #3
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080CC2EA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080CC2F0: .4byte gUnk_08355D50

	thumb_func_start sub_080CC2F4
sub_080CC2F4: @ 0x080CC2F4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080CC35C
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	adds r1, r4, #0
	adds r1, #0xac
	ldr r2, [r1]
	movs r0, #0
	str r0, [r4, #0x7c]
	adds r5, r1, #0
	cmp r2, #0
	beq _080CC34C
	ldr r0, [r2, #0x40]
	ldr r1, [r4, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080CC330
	ldr r0, _080CC32C @ =0x000017FF
	cmp r2, r0
	ble _080CC338
	b _080CC34C
	.align 2, 0
_080CC32C: .4byte 0x000017FF
_080CC330:
	subs r1, r1, r0
	ldr r0, _080CC348 @ =0x000017FF
	cmp r1, r0
	bgt _080CC34C
_080CC338:
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r5]
	adds r0, r4, #0
	bl sub_080CC408
	b _080CC372
	.align 2, 0
_080CC348: .4byte 0x000017FF
_080CC34C:
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r5]
	adds r0, r4, #0
	bl sub_080CD56C
	b _080CC372
_080CC35C:
	adds r2, r4, #0
	adds r2, #0x52
	ldr r0, _080CC378 @ =gUnk_08355D50
	ldrb r1, [r4, #1]
	lsrs r1, r1, #3
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080CC372:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080CC378: .4byte gUnk_08355D50

	thumb_func_start sub_080CC37C
sub_080CC37C: @ 0x080CC37C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080CC402
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _080CC402
	adds r1, #0xe
	ldr r2, [r1]
	movs r0, #0
	str r0, [r4, #0x7c]
	adds r5, r1, #0
	cmp r2, #0
	bne _080CC3C0
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r5]
	adds r0, r4, #0
	bl sub_080CD56C
	b _080CC402
_080CC3C0:
	ldr r0, [r2, #0x40]
	ldr r1, [r4, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080CC3D8
	ldr r0, _080CC3D4 @ =0x000017FF
	cmp r2, r0
	ble _080CC3E0
	b _080CC3F4
	.align 2, 0
_080CC3D4: .4byte 0x000017FF
_080CC3D8:
	subs r1, r1, r0
	ldr r0, _080CC3F0 @ =0x000017FF
	cmp r1, r0
	bgt _080CC3F4
_080CC3E0:
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r5]
	adds r0, r4, #0
	bl sub_080CC408
	b _080CC402
	.align 2, 0
_080CC3F0: .4byte 0x000017FF
_080CC3F4:
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r5]
	adds r0, r4, #0
	bl sub_080CD56C
_080CC402:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080CC408
sub_080CC408: @ 0x080CC408
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, _080CC4AC @ =sub_080CC4C8
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x52
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CC438
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080CC438:
	ldr r1, _080CC4B0 @ =gUnk_02020EE0
	ldr r0, _080CC4B4 @ =gUnk_0203AD3C
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
	bne _080CC4A4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080CC464
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CC4A4
_080CC464:
	ldr r1, _080CC4B8 @ =gUnk_08D60FA4
	ldr r4, _080CC4BC @ =gSongTable
	ldr r2, _080CC4C0 @ =0x00000B44
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CC48A
	movs r1, #0xb4
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CC4A4
_080CC48A:
	cmp r3, #0
	beq _080CC49C
	ldr r0, _080CC4C4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CC4A4
_080CC49C:
	movs r0, #0xb4
	lsls r0, r0, #1
	bl m4aSongNumStart
_080CC4A4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CC4AC: .4byte sub_080CC4C8
_080CC4B0: .4byte gUnk_02020EE0
_080CC4B4: .4byte gUnk_0203AD3C
_080CC4B8: .4byte gUnk_08D60FA4
_080CC4BC: .4byte gSongTable
_080CC4C0: .4byte 0x00000B44
_080CC4C4: .4byte gUnk_0203AD10

	thumb_func_start sub_080CC4C8
sub_080CC4C8: @ 0x080CC4C8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0xb
	bne _080CC504
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080CC504
	ldr r2, _080CC500 @ =sub_080CB9F4
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	subs r1, #0x5c
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x1e
	strh r0, [r4, #4]
	b _080CC59C
	.align 2, 0
_080CC500: .4byte sub_080CB9F4
_080CC504:
	ldrh r2, [r4, #4]
	adds r0, r2, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #2
	bne _080CC534
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0xc0
	lsls r3, r3, #2
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CC52A
	rsbs r0, r3, #0
	strh r0, [r2]
_080CC52A:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xb
	strb r0, [r1]
	b _080CC59C
_080CC534:
	subs r0, r2, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bhi _080CC570
	ldr r0, [r4, #8]
	movs r1, #8
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	ldr r2, _080CC56C @ =gUnk_08352DD0
	movs r0, #4
	ldrsh r1, [r4, r0]
	movs r0, #3
	subs r0, r0, r1
	asrs r0, r0, #1
	adds r0, #4
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x54
	strb r1, [r0]
	b _080CC59C
	.align 2, 0
_080CC56C: .4byte gUnk_08352DD0
_080CC570:
	cmp r1, #7
	bne _080CC590
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _080CC58C @ =0xFFFFF7FF
	ands r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080CC59C
	.align 2, 0
_080CC58C: .4byte 0xFFFFF7FF
_080CC590:
	cmp r1, #0xb
	bne _080CC59C
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080CC59C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CC5A4
sub_080CC5A4: @ 0x080CC5A4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #4
	bhi _080CC5B8
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #2
	b _080CC5CC
_080CC5B8:
	cmp r0, #0x1e
	bhi _080CC5C6
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	b _080CC5CC
_080CC5C6:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
_080CC5CC:
	strh r0, [r1]
	adds r5, r1, #0
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080CC672
	ldrh r1, [r4, #4]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080CC5F6
	ldr r3, [r4, #8]
	mvns r3, r3
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0x10
	bl sub_08089864
_080CC5F6:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080CC672
	movs r0, #1
	strh r0, [r4, #4]
	ldr r1, _080CC6A4 @ =gUnk_02020EE0
	ldr r0, _080CC6A8 @ =gUnk_0203AD3C
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
	bne _080CC66A
	ldrb r0, [r4]
	cmp r0, #0
	bne _080CC62E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CC66A
_080CC62E:
	ldr r1, _080CC6AC @ =gUnk_08D60FA4
	ldr r6, _080CC6B0 @ =gSongTable
	ldr r2, _080CC6B4 @ =0x00000B2C
	adds r0, r6, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CC652
	ldr r1, _080CC6B8 @ =0x00000B28
	adds r0, r6, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CC66A
_080CC652:
	cmp r3, #0
	beq _080CC664
	ldr r0, _080CC6BC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CC66A
_080CC664:
	ldr r0, _080CC6C0 @ =0x00000165
	bl m4aSongNumStart
_080CC66A:
	movs r0, #1
	adds r1, r4, #0
	bl sub_0806FE64
_080CC672:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CC682
	ldrh r0, [r5]
	rsbs r0, r0, #0
	strh r0, [r5]
_080CC682:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080CC6E4
	ldr r2, _080CC6C4 @ =sub_080CD370
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CC6CC
	ldr r0, _080CC6C8 @ =0x0000FF80
	b _080CC6CE
	.align 2, 0
_080CC6A4: .4byte gUnk_02020EE0
_080CC6A8: .4byte gUnk_0203AD3C
_080CC6AC: .4byte gUnk_08D60FA4
_080CC6B0: .4byte gSongTable
_080CC6B4: .4byte 0x00000B2C
_080CC6B8: .4byte 0x00000B28
_080CC6BC: .4byte gUnk_0203AD10
_080CC6C0: .4byte 0x00000165
_080CC6C4: .4byte sub_080CD370
_080CC6C8: .4byte 0x0000FF80
_080CC6CC:
	ldr r0, _080CC6EC @ =0x0000FFA0
_080CC6CE:
	strh r0, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CC6E0
	ldrh r0, [r5]
	rsbs r0, r0, #0
	strh r0, [r5]
_080CC6E0:
	movs r0, #0
	strh r0, [r4, #4]
_080CC6E4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080CC6EC: .4byte 0x0000FFA0

	thumb_func_start sub_080CC6F0
sub_080CC6F0: @ 0x080CC6F0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #2
	bne _080CC73E
	ldrb r0, [r6]
	cmp r0, #0
	bne _080CC73E
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	adds r0, r6, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080CC73E
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x27
	beq _080CC73E
	cmp r0, #0x7a
	bhi _080CC73E
	movs r1, #0x88
	lsls r1, r1, #1
	adds r7, r6, r1
	ldr r0, [r7]
	cmp r0, #0
	bne _080CC73E
	ldr r4, [r6, #8]
	ldr r0, _080CC744 @ =0x03800B00
	ands r4, r0
	cmp r4, #0
	beq _080CC748
_080CC73E:
	movs r0, #0
	b _080CC7E4
	.align 2, 0
_080CC744: .4byte 0x03800B00
_080CC748:
	ldr r2, _080CC7F0 @ =sub_080CC818
	adds r0, r5, #0
	movs r1, #0xd
	bl ObjectSetFunc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #0x4d
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	ldr r0, _080CC7F4 @ =gUnk_08355DB4
	str r0, [r7]
	adds r0, r5, #0
	adds r0, #0xac
	str r6, [r0]
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	str r6, [r5, #0x6c]
	ldr r1, _080CC7F8 @ =gUnk_02020EE0
	ldr r0, _080CC7FC @ =gUnk_0203AD3C
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
	bne _080CC7E2
	ldrb r0, [r5]
	cmp r0, #0
	bne _080CC7A8
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CC7E2
_080CC7A8:
	ldr r1, _080CC800 @ =gUnk_08D60FA4
	ldr r4, _080CC804 @ =gSongTable
	ldr r2, _080CC808 @ =0x00000B6C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CC7CC
	ldr r1, _080CC80C @ =0x00000B68
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CC7E2
_080CC7CC:
	cmp r3, #0
	beq _080CC7DC
	ldr r0, _080CC810 @ =gUnk_0203AD10
	ldr r0, [r0]
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	bne _080CC7E2
_080CC7DC:
	ldr r0, _080CC814 @ =0x0000016D
	bl m4aSongNumStart
_080CC7E2:
	movs r0, #1
_080CC7E4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080CC7F0: .4byte sub_080CC818
_080CC7F4: .4byte gUnk_08355DB4
_080CC7F8: .4byte gUnk_02020EE0
_080CC7FC: .4byte gUnk_0203AD3C
_080CC800: .4byte gUnk_08D60FA4
_080CC804: .4byte gSongTable
_080CC808: .4byte 0x00000B6C
_080CC80C: .4byte 0x00000B68
_080CC810: .4byte gUnk_0203AD10
_080CC814: .4byte 0x0000016D

	thumb_func_start sub_080CC818
sub_080CC818: @ 0x080CC818
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xac
	ldr r0, [r5]
	mov ip, r0
	ldr r1, [r4, #0xc]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080CC844
	movs r0, #0x88
	lsls r0, r0, #1
	add r0, ip
	ldr r0, [r0]
	adds r6, r4, #0
	adds r6, #0x83
	cmp r0, #0
	bne _080CC874
	ldrb r0, [r6]
	cmp r0, #0x10
	beq _080CC874
_080CC844:
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #0xc]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080CC870 @ =sub_080CB9F4
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r5]
	adds r1, r4, #0
	adds r1, #0x50
	b _080CCB22
	.align 2, 0
_080CC870: .4byte sub_080CB9F4
_080CC874:
	ldrb r0, [r6]
	cmp r0, #0xe
	beq _080CC91C
	cmp r0, #0xe
	bgt _080CC884
	cmp r0, #0xd
	beq _080CC892
	b _080CCB2A
_080CC884:
	cmp r0, #0xf
	bne _080CC88A
	b _080CC9D4
_080CC88A:
	cmp r0, #0x10
	bne _080CC890
	b _080CCAE4
_080CC890:
	b _080CCB2A
_080CC892:
	ldrh r0, [r4, #4]
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	cmp r0, #7
	bgt _080CC8AC
	ldr r1, _080CC8C0 @ =gUnk_08352DD0
	asrs r0, r2, #0x11
	adds r0, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x54
	strb r1, [r0]
_080CC8AC:
	movs r1, #4
	ldrsh r0, [r4, r1]
	ldrh r2, [r4, #4]
	cmp r0, #1
	bne _080CC8C4
	ldr r0, [r4, #8]
	movs r1, #8
	orrs r0, r1
	b _080CC8D0
	.align 2, 0
_080CC8C0: .4byte gUnk_08352DD0
_080CC8C4:
	cmp r0, #0x10
	bne _080CC8D2
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
_080CC8D0:
	str r0, [r4, #8]
_080CC8D2:
	adds r0, r2, #1
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080CC8E2
	b _080CCB2A
_080CC8E2:
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc
	bhi _080CC8F6
	b _080CCB2A
_080CC8F6:
	movs r0, #0
	strb r0, [r1]
	movs r0, #0xe
	strb r0, [r6]
	movs r1, #0x88
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080CC918 @ =gUnk_08355DF4
	str r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0
	b _080CCB28
	.align 2, 0
_080CC918: .4byte gUnk_08355DF4
_080CC91C:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x14
	bgt _080CC92C
	b _080CCB2A
_080CC92C:
	movs r0, #0xf
	strb r0, [r6]
	movs r1, #0x88
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080CC9B0 @ =gUnk_08355E4C
	str r0, [r1]
	movs r0, #0
	strh r0, [r4, #4]
	ldr r1, _080CC9B4 @ =gUnk_02020EE0
	ldr r0, _080CC9B8 @ =gUnk_0203AD3C
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
	beq _080CC95C
	b _080CCB2A
_080CC95C:
	ldrb r0, [r4]
	cmp r0, #0
	bne _080CC96E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	beq _080CC96E
	b _080CCB2A
_080CC96E:
	ldr r1, _080CC9BC @ =gUnk_08D60FA4
	ldr r4, _080CC9C0 @ =gSongTable
	ldr r2, _080CC9C4 @ =0x00000ACC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CC994
	ldr r1, _080CC9C8 @ =0x00000AC8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bls _080CC994
	b _080CCB2A
_080CC994:
	cmp r3, #0
	beq _080CC9A8
	ldr r0, _080CC9CC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CC9A8
	b _080CCB2A
_080CC9A8:
	ldr r0, _080CC9D0 @ =0x00000159
	bl m4aSongNumStart
	b _080CCB2A
	.align 2, 0
_080CC9B0: .4byte gUnk_08355E4C
_080CC9B4: .4byte gUnk_02020EE0
_080CC9B8: .4byte gUnk_0203AD3C
_080CC9BC: .4byte gUnk_08D60FA4
_080CC9C0: .4byte gSongTable
_080CC9C4: .4byte 0x00000ACC
_080CC9C8: .4byte 0x00000AC8
_080CC9CC: .4byte gUnk_0203AD10
_080CC9D0: .4byte 0x00000159
_080CC9D4:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x30
	bgt _080CC9E4
	b _080CCB2A
_080CC9E4:
	ldr r1, _080CCA20 @ =gCurLevelInfo
	adds r3, r4, #0
	adds r3, #0x56
	ldrb r2, [r3]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r1, [r4, #0x40]
	ldr r0, [r0]
	subs r1, r1, r0
	ldr r0, _080CCA24 @ =0x000077FF
	cmp r1, r0
	bgt _080CCA2C
	ldr r1, [r4, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080CCA4C
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	movs r1, #0x88
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080CCA28 @ =gUnk_08355E74
	b _080CCA54
	.align 2, 0
_080CCA20: .4byte gCurLevelInfo
_080CCA24: .4byte 0x000077FF
_080CCA28: .4byte gUnk_08355E74
_080CCA2C:
	ldr r1, [r4, #8]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _080CCA4C
	orrs r1, r2
	str r1, [r4, #8]
	movs r1, #0x88
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080CCA48 @ =gUnk_08355E74
	b _080CCA54
	.align 2, 0
_080CCA48: .4byte gUnk_08355E74
_080CCA4C:
	movs r1, #0x88
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080CCAC8 @ =gUnk_08355E64
_080CCA54:
	str r0, [r1]
	movs r1, #0
	movs r0, #0x10
	strb r0, [r6]
	strh r1, [r4, #4]
	ldr r1, _080CCACC @ =gUnk_02020EE0
	ldr r0, _080CCAD0 @ =gUnk_0203AD3C
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
	bne _080CCB2A
	ldrb r0, [r4]
	cmp r0, #0
	bne _080CCA86
	ldrb r0, [r3]
	cmp r0, r2
	bne _080CCB2A
_080CCA86:
	ldr r1, _080CCAD4 @ =gUnk_08D60FA4
	ldr r4, _080CCAD8 @ =gSongTable
	ldr r2, _080CCADC @ =0x00000AD4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CCAAC
	movs r1, #0xad
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CCB2A
_080CCAAC:
	cmp r3, #0
	beq _080CCABE
	ldr r0, _080CCAE0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CCB2A
_080CCABE:
	movs r0, #0xad
	lsls r0, r0, #1
	bl m4aSongNumStart
	b _080CCB2A
	.align 2, 0
_080CCAC8: .4byte gUnk_08355E64
_080CCACC: .4byte gUnk_02020EE0
_080CCAD0: .4byte gUnk_0203AD3C
_080CCAD4: .4byte gUnk_08D60FA4
_080CCAD8: .4byte gSongTable
_080CCADC: .4byte 0x00000AD4
_080CCAE0: .4byte gUnk_0203AD10
_080CCAE4:
	ldrh r0, [r4, #4]
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	cmp r0, #0xb
	bgt _080CCAFC
	ldr r1, _080CCB30 @ =gUnk_08352DD0
	asrs r0, r2, #0x11
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x54
	strb r1, [r0]
_080CCAFC:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1e
	ble _080CCB2A
	ldr r2, _080CCB34 @ =sub_080CB9F4
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	subs r1, #0x5c
_080CCB22:
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x1e
_080CCB28:
	strh r0, [r4, #4]
_080CCB2A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080CCB30: .4byte gUnk_08352DD0
_080CCB34: .4byte sub_080CB9F4

	thumb_func_start sub_080CCB38
sub_080CCB38: @ 0x080CCB38
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080CCB6C @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080CCB70 @ =sub_080CD588
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080CCB74
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080CCB7C
	.align 2, 0
_080CCB6C: .4byte ObjectMain
_080CCB70: .4byte sub_080CD588
_080CCB74:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080CCB7C:
	adds r5, r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r5, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r5, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080CCC84 @ =sub_0809F840
	str r0, [r5, #0x7c]
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
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0xa7
	bne _080CCC06
	ldr r0, [r5, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	str r0, [r5, #0x5c]
	subs r4, #5
	movs r0, #0xc
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #0xa
	bl sub_0803E2B0
	movs r1, #0xe
	rsbs r1, r1, #0
	movs r0, #0x10
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0xe
	bl sub_0803E308
_080CCC06:
	adds r0, r5, #0
	bl ObjectInitSprite
	adds r0, r5, #0
	bl sub_080CD2CC
	ldr r1, _080CCC88 @ =gUnk_02020EE0
	ldr r0, _080CCC8C @ =gUnk_0203AD3C
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
	bne _080CCC7A
	ldrb r0, [r5]
	cmp r0, #0
	bne _080CCC3E
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CCC7A
_080CCC3E:
	ldr r1, _080CCC90 @ =gUnk_08D60FA4
	ldr r4, _080CCC94 @ =gSongTable
	ldr r2, _080CCC98 @ =0x00000B3C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CCC62
	ldr r1, _080CCC9C @ =0x00000B38
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CCC7A
_080CCC62:
	cmp r3, #0
	beq _080CCC74
	ldr r0, _080CCCA0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CCC7A
_080CCC74:
	ldr r0, _080CCCA4 @ =0x00000167
	bl m4aSongNumStart
_080CCC7A:
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080CCC84: .4byte sub_0809F840
_080CCC88: .4byte gUnk_02020EE0
_080CCC8C: .4byte gUnk_0203AD3C
_080CCC90: .4byte gUnk_08D60FA4
_080CCC94: .4byte gSongTable
_080CCC98: .4byte 0x00000B3C
_080CCC9C: .4byte 0x00000B38
_080CCCA0: .4byte gUnk_0203AD10
_080CCCA4: .4byte 0x00000167

	thumb_func_start sub_080CCCA8
sub_080CCCA8: @ 0x080CCCA8
	push {r4, lr}
	adds r2, r0, #0
	ldr r4, [r2, #0x70]
	ldr r1, _080CCD04 @ =gUnk_08355D5E
	ldrh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0x52
	strh r0, [r1]
	ldrh r1, [r2, #4]
	movs r3, #4
	ldrsh r0, [r2, r3]
	cmp r0, #0x2d
	bgt _080CCCD0
	adds r0, r1, #1
	strh r0, [r2, #4]
_080CCCD0:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r3, [r0]
	cmp r3, #0x10
	bhi _080CCCF0
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080CCCF0
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080CCD08
_080CCCF0:
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2, #8]
	adds r0, r2, #0
	bl sub_0809DA30
	b _080CCD1A
	.align 2, 0
_080CCD04: .4byte gUnk_08355D5E
_080CCD08:
	ldr r1, [r4, #0x78]
	ldr r0, _080CCD20 @ =sub_080CC4C8
	cmp r1, r0
	bne _080CCD1A
	cmp r3, #0xb
	bne _080CCD1A
	adds r0, r2, #0
	bl sub_080CCD24
_080CCD1A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CCD20: .4byte sub_080CC4C8

	thumb_func_start sub_080CCD24
sub_080CCD24: @ 0x080CCD24
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0xa7
	bne _080CCD40
	ldr r2, _080CCD3C @ =sub_080CCDF8
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	b _080CCD4A
	.align 2, 0
_080CCD3C: .4byte sub_080CCDF8
_080CCD40:
	ldr r2, _080CCD68 @ =sub_080CCDF8
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
_080CCD4A:
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080CCD70
	ldr r0, _080CCD6C @ =0x000027FF
	cmp r2, r0
	ble _080CCD78
	b _080CCD84
	.align 2, 0
_080CCD68: .4byte sub_080CCDF8
_080CCD6C: .4byte 0x000027FF
_080CCD70:
	subs r1, r1, r0
	ldr r0, _080CCD80 @ =0x000027FF
	cmp r1, r0
	bgt _080CCD84
_080CCD78:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	b _080CCD8A
	.align 2, 0
_080CCD80: .4byte 0x000027FF
_080CCD84:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #1
_080CCD8A:
	strb r0, [r1]
	ldrb r0, [r1]
	cmp r0, #0
	beq _080CCDA6
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0x52
	movs r1, #0xc0
	lsls r1, r1, #2
	b _080CCDB8
_080CCDA6:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0x52
	movs r1, #0x80
	lsls r1, r1, #1
_080CCDB8:
	strh r1, [r2]
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0xa7
	bne _080CCDD0
	ldrh r1, [r2]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x12
	subs r1, r1, r0
	strh r1, [r2]
_080CCDD0:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CCDE0
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080CCDE0:
	movs r0, #4
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080CCDF8
sub_080CCDF8: @ 0x080CCDF8
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x70]
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0x10
	bhi _080CCE16
	movs r0, #0x62
	adds r0, r0, r3
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080CCE28
_080CCE16:
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r3, #8]
	adds r0, r3, #0
	bl sub_0809DA30
	b _080CCEDA
_080CCE28:
	ldrh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080CCE50
	ldr r2, _080CCE4C @ =gUnk_08352DD0
	asrs r1, r0, #0x11
	movs r0, #6
	subs r0, r0, r1
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x54
	strb r1, [r0]
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	b _080CCEDA
	.align 2, 0
_080CCE4C: .4byte gUnk_08352DD0
_080CCE50:
	ldr r0, [r3, #8]
	ldr r1, _080CCE9C @ =0xFFFFF7FF
	ands r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #8]
	adds r2, r3, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x1e
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080CCEA0 @ =0xFFFFF900
	cmp r0, r1
	bge _080CCE74
	strh r1, [r2]
_080CCE74:
	mov r0, ip
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080CCEDA
	adds r0, r3, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CCEA4
	adds r0, r3, #0
	adds r0, #0x50
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #2
	b _080CCEB2
	.align 2, 0
_080CCE9C: .4byte 0xFFFFF7FF
_080CCEA0: .4byte 0xFFFFF900
_080CCEA4:
	adds r0, r3, #0
	adds r0, #0x50
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
_080CCEB2:
	strh r1, [r2]
	adds r2, r0, #0
	adds r0, r3, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0xa7
	bne _080CCECA
	ldrh r1, [r2]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x12
	subs r1, r1, r0
	strh r1, [r2]
_080CCECA:
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CCEDA
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080CCEDA:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CCEE0
sub_080CCEE0: @ 0x080CCEE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov sl, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	adds r6, r0, #0
	adds r6, #8
	ldr r2, _080CCF3C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080CCF40 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080CCF44 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080CCF48 @ =0x00005554
	cmp r2, r0
	bls _080CCF9C
	ldr r0, _080CCF4C @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080CCF1A
	movs r1, #1
_080CCF1A:
	cmp r1, #0
	beq _080CCF9C
	movs r4, #0
	ldr r1, _080CCF50 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _080CCF54 @ =gUnk_020229E0
	mov r8, r7
	movs r7, #0x56
	adds r7, r7, r5
	mov ip, r7
	movs r7, #0xac
	adds r7, r7, r5
	mov sb, r7
	b _080CCF6C
	.align 2, 0
_080CCF3C: .4byte gRngVal
_080CCF40: .4byte 0x00196225
_080CCF44: .4byte 0x3C6EF35F
_080CCF48: .4byte 0x00005554
_080CCF4C: .4byte 0x0000AAA9
_080CCF50: .4byte gUnk_020229D4
_080CCF54: .4byte gUnk_020229E0
_080CCF58:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080CCF74
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080CCF6C:
	cmp r0, #0
	bne _080CCF58
	orrs r2, r3
	str r2, [r1]
_080CCF74:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	add r1, r8
	movs r3, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r2, #0
	mov r0, sl
	strh r0, [r1, #6]
	strh r6, [r1, #8]
	strb r2, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #0xa6
	b _080CD006
_080CCF9C:
	movs r4, #0
	ldr r1, _080CCFBC @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _080CCFC0 @ =gUnk_020229E0
	mov r8, r7
	movs r7, #0x56
	adds r7, r7, r5
	mov ip, r7
	movs r7, #0xac
	adds r7, r7, r5
	mov sb, r7
	b _080CCFD8
	.align 2, 0
_080CCFBC: .4byte gUnk_020229D4
_080CCFC0: .4byte gUnk_020229E0
_080CCFC4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080CCFE0
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080CCFD8:
	cmp r0, #0
	bne _080CCFC4
	orrs r2, r3
	str r2, [r1]
_080CCFE0:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	add r1, r8
	movs r3, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r2, #0
	mov r0, sl
	strh r0, [r1, #6]
	strh r6, [r1, #8]
	strb r2, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #0xa7
_080CD006:
	strb r0, [r1, #0xc]
	strb r2, [r1, #0xe]
	strb r2, [r1, #0xf]
	strb r2, [r1, #0x10]
	strh r3, [r1, #0x22]
	strh r3, [r1, #0x1a]
	strh r3, [r1, #0x1c]
	strh r3, [r1, #0x1e]
	strh r3, [r1, #0x20]
	strb r2, [r1, #0x11]
	strh r3, [r1, #0x12]
	strh r3, [r1, #0x14]
	strh r3, [r1, #0x16]
	strh r3, [r1, #0x18]
	mov r2, ip
	ldrb r0, [r2]
	bl CreateObject
	adds r1, r0, #0
	str r5, [r1, #0x70]
	mov r7, sb
	str r1, [r7]
	ldr r0, [r5, #8]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _080CD042
	ldr r0, [r1, #8]
	orrs r0, r2
	str r0, [r1, #8]
_080CD042:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080CD050
sub_080CD050: @ 0x080CD050
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080CD080 @ =sub_080CD128
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
	beq _080CD084
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080CD08C
	.align 2, 0
_080CD080: .4byte sub_080CD128
_080CD084:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080CD08C:
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
	ldr r0, _080CD120 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080CD0DC
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080CD0DC:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r2, _080CD124 @ =0x12010400
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	movs r1, #0x20
	orrs r0, r1
	subs r1, #0x28
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080CD100
	orrs r2, r3
_080CD100:
	str r2, [r4, #8]
	movs r1, #0xe
	rsbs r1, r1, #0
	movs r2, #0xc
	rsbs r2, r2, #0
	movs r0, #0x15
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xe
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080CD120: .4byte gUnk_03000510
_080CD124: .4byte 0x12010400

	thumb_func_start sub_080CD128
sub_080CD128: @ 0x080CD128
	push {r4, lr}
	ldr r2, _080CD144 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080CD148
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080CD150
	.align 2, 0
_080CD144: .4byte gCurTask
_080CD148:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080CD150:
	adds r4, r0, #0
	ldr r0, [r4, #0x70]
	mov ip, r0
	ldr r1, [r4, #8]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080CD16C
	ldr r0, [r2]
	bl TaskDestroy
	b _080CD29A
_080CD16C:
	mov r2, ip
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	beq _080CD17C
	orrs r1, r3
	str r1, [r4, #8]
	b _080CD29A
_080CD17C:
	mov r1, ip
	ldr r0, [r1, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r1, #0x44]
	str r0, [r4, #0x44]
	mov r0, ip
	adds r0, #0x56
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x56
	strb r0, [r3]
	ldr r0, _080CD1BC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080CD1C0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080CD1C0
	adds r0, r4, #0
	bl sub_0803D9A8
	b _080CD29A
	.align 2, 0
_080CD1BC: .4byte gUnk_03000510
_080CD1C0:
	mov r2, ip
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CD1D2
	ldr r0, [r4, #8]
	orrs r0, r1
	b _080CD1DA
_080CD1D2:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080CD1DA:
	str r0, [r4, #8]
	mov r0, ip
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #2
	bne _080CD288
	mov r1, ip
	ldr r0, [r1, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #0x68]
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080CD20C
	ldr r0, _080CD208 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r4, #8]
	b _080CD29A
	.align 2, 0
_080CD208: .4byte 0xFFFBFFFF
_080CD20C:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080CD29A
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080CD29A
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _080CD244
	ldr r2, _080CD23C @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080CD240 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080CD246
	.align 2, 0
_080CD23C: .4byte gCurLevelInfo
_080CD240: .4byte 0x0000065E
_080CD244:
	movs r1, #0xff
_080CD246:
	cmp r1, #0xff
	beq _080CD29A
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080CD280 @ =gUnk_02022EB0
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
	ldr r2, _080CD284 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
	b _080CD29A
	.align 2, 0
_080CD280: .4byte gUnk_02022EB0
_080CD284: .4byte gUnk_02022F50
_080CD288:
	mov r1, ip
	ldr r0, [r1, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	mov r2, ip
	str r0, [r2, #0x68]
_080CD29A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080CD2A0
sub_080CD2A0: @ 0x080CD2A0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CD2C8 @ =sub_080CB9F4
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	subs r1, #0x5c
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x1e
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CD2C8: .4byte sub_080CB9F4

	thumb_func_start sub_080CD2CC
sub_080CD2CC: @ 0x080CD2CC
	push {lr}
	adds r1, r0, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0xa7
	bne _080CD2E8
	ldr r2, _080CD2E4 @ =sub_080CCCA8
	adds r0, r1, #0
	movs r1, #1
	bl ObjectSetFunc
	b _080CD2F2
	.align 2, 0
_080CD2E4: .4byte sub_080CCCA8
_080CD2E8:
	ldr r2, _080CD2F8 @ =sub_080CCCA8
	adds r0, r1, #0
	movs r1, #0
	bl ObjectSetFunc
_080CD2F2:
	pop {r0}
	bx r0
	.align 2, 0
_080CD2F8: .4byte sub_080CCCA8

	thumb_func_start sub_080CD2FC
sub_080CD2FC: @ 0x080CD2FC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CD31C @ =sub_080CB7E8
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
_080CD31C: .4byte sub_080CB7E8

	thumb_func_start sub_080CD320
sub_080CD320: @ 0x080CD320
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CD340 @ =sub_080CD370
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CD348
	adds r1, r4, #0
	adds r1, #0x50
	ldr r0, _080CD344 @ =0x0000FF80
	b _080CD34E
	.align 2, 0
_080CD340: .4byte sub_080CD370
_080CD344: .4byte 0x0000FF80
_080CD348:
	adds r1, r4, #0
	adds r1, #0x50
	ldr r0, _080CD36C @ =0x0000FFA0
_080CD34E:
	strh r0, [r1]
	adds r2, r1, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CD362
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080CD362:
	movs r0, #0
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CD36C: .4byte 0x0000FFA0

	thumb_func_start sub_080CD370
sub_080CD370: @ 0x080CD370
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080CD396
	adds r1, r2, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bhi _080CD3A4
_080CD396:
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080CD3AC
_080CD3A4:
	adds r0, r2, #0
	bl sub_080CBB04
	b _080CD3B2
_080CD3AC:
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
_080CD3B2:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CD3B8
sub_080CD3B8: @ 0x080CD3B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CD3DC @ =sub_080CD3FC
	movs r1, #7
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080CD3E0
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080CD3E8
	.align 2, 0
_080CD3DC: .4byte sub_080CD3FC
_080CD3E0:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080CD3E8:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080CD3FC
sub_080CD3FC: @ 0x080CD3FC
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x2b
	ble _080CD478
	ldr r2, _080CD430 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080CD434 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080CD438 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080CD43C @ =0x00005554
	cmp r2, r0
	bhi _080CD440
	movs r1, #0
	b _080CD44A
	.align 2, 0
_080CD430: .4byte gRngVal
_080CD434: .4byte 0x00196225
_080CD438: .4byte 0x3C6EF35F
_080CD43C: .4byte 0x00005554
_080CD440:
	ldr r0, _080CD458 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080CD44A
	movs r1, #1
_080CD44A:
	cmp r1, #1
	beq _080CD46A
	cmp r1, #1
	bgt _080CD45C
	cmp r1, #0
	beq _080CD462
	b _080CD478
	.align 2, 0
_080CD458: .4byte 0x0000AAA9
_080CD45C:
	cmp r1, #2
	beq _080CD472
	b _080CD478
_080CD462:
	adds r0, r3, #0
	bl sub_080CD47C
	b _080CD478
_080CD46A:
	adds r0, r3, #0
	bl sub_080CD4D0
	b _080CD478
_080CD472:
	adds r0, r3, #0
	bl sub_080CD524
_080CD478:
	pop {r0}
	bx r0

	thumb_func_start sub_080CD47C
sub_080CD47C: @ 0x080CD47C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CD4C4 @ =sub_080CC26C
	movs r1, #8
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	ldr r0, _080CD4C8 @ =0x0000FF80
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CD4AA
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080CD4AA:
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_080CCEE0
	ldr r0, _080CD4CC @ =sub_080CD594
	str r0, [r4, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CD4C4: .4byte sub_080CC26C
_080CD4C8: .4byte 0x0000FF80
_080CD4CC: .4byte sub_080CD594

	thumb_func_start sub_080CD4D0
sub_080CD4D0: @ 0x080CD4D0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CD518 @ =sub_080CC2F4
	movs r1, #9
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	ldr r0, _080CD51C @ =0x0000FF80
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CD4FE
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080CD4FE:
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_080CCEE0
	ldr r0, _080CD520 @ =sub_080CD594
	str r0, [r4, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CD518: .4byte sub_080CC2F4
_080CD51C: .4byte 0x0000FF80
_080CD520: .4byte sub_080CD594

	thumb_func_start sub_080CD524
sub_080CD524: @ 0x080CD524
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CD560 @ =sub_080CC37C
	movs r1, #0xa
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r1, #0
	ldr r0, _080CD564 @ =0x0000FF80
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x52
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CD550
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080CD550:
	adds r0, r4, #0
	bl sub_080CCEE0
	ldr r0, _080CD568 @ =sub_080CD594
	str r0, [r4, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CD560: .4byte sub_080CC37C
_080CD564: .4byte 0x0000FF80
_080CD568: .4byte sub_080CD594

	thumb_func_start sub_080CD56C
sub_080CD56C: @ 0x080CD56C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CD584 @ =sub_080CC5A4
	movs r1, #0xc
	bl ObjectSetFunc
	adds r4, #0x50
	movs r0, #0
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CD584: .4byte sub_080CC5A4

	thumb_func_start sub_080CD588
sub_080CD588: @ 0x080CD588
	push {lr}
	bl ObjectDestroy
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CD594
sub_080CD594: @ 0x080CD594
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xac
	ldr r1, [r2]
	ldrb r0, [r1]
	cmp r0, #1
	bne _080CD5C6
	adds r0, r1, #0
	adds r0, #0x82
	ldrb r0, [r0]
	adds r0, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080CD5C6
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080CD5C6
	movs r0, #0
	str r0, [r2]
	str r0, [r3, #0x7c]
_080CD5C6:
	pop {r0}
	bx r0
	.align 2, 0
