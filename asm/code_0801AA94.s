	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0801AA94
sub_0801AA94: @ 0x0801AA94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _0801AAD0 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _0801AAD4 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xc8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801AAD8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0801AAE0
	.align 2, 0
_0801AAD0: .4byte ObjectMain
_0801AAD4: .4byte ObjectDestroy
_0801AAD8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0801AAE0:
	adds r7, r0, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl InitObject
	movs r0, #0xb4
	adds r0, r0, r7
	mov sl, r0
	ldrb r0, [r4, #0xe]
	mov r1, sl
	str r0, [r1]
	movs r2, #0xb8
	adds r2, r2, r7
	mov sb, r2
	ldrb r0, [r4, #0x10]
	str r0, [r2]
	adds r1, r7, #0
	adds r1, #0xc4
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r7, #8]
	ldr r1, _0801ABEC @ =0x10008141
	orrs r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x68]
	ldr r4, _0801ABF0 @ =gUnk_082DE41C
	mov r3, sl
	ldr r0, [r3]
	lsls r0, r0, #2
	adds r1, r0, r4
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r6, r4, #1
	adds r2, r0, r6
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r5, r4, #2
	adds r3, r0, r5
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	mov ip, r3
	adds r3, r4, #3
	mov r8, r3
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp]
	adds r0, r7, #0
	mov r3, ip
	bl sub_0803E2B0
	mov r1, sl
	ldr r0, [r1]
	lsls r0, r0, #2
	adds r4, r0, r4
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r6, r0, r6
	movs r2, #0
	ldrsb r2, [r6, r2]
	adds r5, r0, r5
	movs r3, #0
	ldrsb r3, [r5, r3]
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp]
	adds r0, r7, #0
	bl sub_0803E308
	ldr r1, _0801ABF4 @ =gUnk_082DE474
	mov r2, sl
	ldr r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x83
	strb r0, [r1]
	mov r3, sb
	ldr r0, [r3]
	cmp r0, #0
	beq _0801ABA2
	ldr r0, [r2]
	cmp r0, #2
	bhi _0801ABA2
	movs r0, #4
	strb r0, [r1]
_0801ABA2:
	adds r0, r7, #0
	bl ObjectInitSprite
	adds r0, r7, #0
	adds r0, #0xb4
	ldr r0, [r0]
	subs r0, #0xa
	cmp r0, #9
	bhi _0801ABBE
	ldrh r0, [r7, #0x24]
	lsrs r0, r0, #6
	subs r0, #1
	lsls r0, r0, #6
	strh r0, [r7, #0x24]
_0801ABBE:
	ldr r2, _0801ABF8 @ =gUnk_08351648
	adds r0, r7, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r7, #0
	bl _call_via_r1
	adds r0, r7, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801ABEC: .4byte 0x10008141
_0801ABF0: .4byte gUnk_082DE41C
_0801ABF4: .4byte gUnk_082DE474
_0801ABF8: .4byte gUnk_08351648

	thumb_func_start sub_0801ABFC
sub_0801ABFC: @ 0x0801ABFC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	ldr r2, _0801AC84 @ =gUnk_082DE4F8
	adds r3, r4, #0
	adds r3, #0xb4
	ldr r0, [r3]
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	ldr r0, [r3]
	lsls r0, r0, #3
	adds r2, #4
	adds r0, r0, r2
	ldrh r0, [r0]
	rsbs r0, r0, #0
	adds r1, r4, #0
	adds r1, #0x52
	strh r0, [r1]
	ldr r0, [r3]
	subs r0, #0xa
	cmp r0, #9
	bhi _0801AC6E
	ldr r5, _0801AC88 @ =0x000002E5
	adds r0, r5, #0
	bl sub_0803DF24
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r2, _0801AC8C @ =gUnk_02020EE0
	ldr r0, _0801AC90 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0801AC6E
	cmp r3, #0xff
	bne _0801AC68
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0801AC68:
	adds r0, r4, #0
	adds r0, #0x2f
	strb r3, [r0]
_0801AC6E:
	ldr r1, _0801AC94 @ =gUnk_082DE4A0
	adds r0, r6, #0
	adds r0, #0xb4
	ldr r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x78]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801AC84: .4byte gUnk_082DE4F8
_0801AC88: .4byte 0x000002E5
_0801AC8C: .4byte gUnk_02020EE0
_0801AC90: .4byte gUnk_0203AD3C
_0801AC94: .4byte gUnk_082DE4A0

	thumb_func_start sub_0801AC98
sub_0801AC98: @ 0x0801AC98
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x6c]
	adds r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0x13
	bls _0801ACA8
	b _0801B386
_0801ACA8:
	lsls r0, r0, #2
	ldr r1, _0801ACB4 @ =_0801ACB8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801ACB4: .4byte _0801ACB8
_0801ACB8: @ jump table
	.4byte _0801AD08 @ case 0
	.4byte _0801AE64 @ case 1
	.4byte _0801AFC0 @ case 2
	.4byte _0801B11C @ case 3
	.4byte _0801B11C @ case 4
	.4byte _0801B1C4 @ case 5
	.4byte _0801B1C4 @ case 6
	.4byte _0801B1C4 @ case 7
	.4byte _0801B1C4 @ case 8
	.4byte _0801B26C @ case 9
	.4byte _0801B370 @ case 10
	.4byte _0801B370 @ case 11
	.4byte _0801B370 @ case 12
	.4byte _0801B370 @ case 13
	.4byte _0801B370 @ case 14
	.4byte _0801B370 @ case 15
	.4byte _0801B370 @ case 16
	.4byte _0801B370 @ case 17
	.4byte _0801B370 @ case 18
	.4byte _0801B370 @ case 19
_0801AD08:
	ldr r1, _0801AD90 @ =gUnk_02020EE0
	ldr r0, _0801AD94 @ =gUnk_0203AD3C
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
	bne _0801AD74
	ldrb r0, [r4]
	cmp r0, #0
	bne _0801AD34
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0801AD74
_0801AD34:
	ldr r1, _0801AD98 @ =gUnk_08D60FA4
	ldr r6, _0801AD9C @ =gSongTable
	ldr r2, _0801ADA0 @ =0x00000FA4
	adds r0, r6, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0801AD5A
	movs r1, #0xfa
	lsls r1, r1, #4
	adds r0, r6, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0801AD74
_0801AD5A:
	cmp r3, #0
	beq _0801AD6C
	ldr r0, _0801ADA4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801AD74
_0801AD6C:
	movs r0, #0xfa
	lsls r0, r0, #1
	bl m4aSongNumStart
_0801AD74:
	adds r0, r4, #0
	adds r0, #0xb8
	ldr r0, [r0]
	cmp r0, #0
	beq _0801AE40
	movs r2, #0x81
	lsls r2, r2, #1
	adds r1, r5, r2
	ldrb r0, [r1]
	cmp r0, #0xfe
	bls _0801ADA8
	movs r0, #0xff
	strb r0, [r1]
	b _0801B382
	.align 2, 0
_0801AD90: .4byte gUnk_02020EE0
_0801AD94: .4byte gUnk_0203AD3C
_0801AD98: .4byte gUnk_08D60FA4
_0801AD9C: .4byte gSongTable
_0801ADA0: .4byte 0x00000FA4
_0801ADA4: .4byte gUnk_0203AD10
_0801ADA8:
	adds r0, #1
	strb r0, [r1]
	ldr r1, _0801AE20 @ =gUnk_02020EE0
	ldr r0, _0801AE24 @ =gUnk_0203AD3C
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
	beq _0801ADCA
	b _0801B382
_0801ADCA:
	ldrb r0, [r5]
	cmp r0, #0
	bne _0801ADDC
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	beq _0801ADDC
	b _0801B382
_0801ADDC:
	ldr r1, _0801AE28 @ =gUnk_08D60FA4
	ldr r5, _0801AE2C @ =gSongTable
	ldr r2, _0801AE30 @ =0x00000FAC
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0801AE02
	ldr r1, _0801AE34 @ =0x00000FA8
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bls _0801AE02
	b _0801B382
_0801AE02:
	cmp r3, #0
	beq _0801AE16
	ldr r0, _0801AE38 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801AE16
	b _0801B382
_0801AE16:
	ldr r0, _0801AE3C @ =0x000001F5
	bl m4aSongNumStart
	b _0801B382
	.align 2, 0
_0801AE20: .4byte gUnk_02020EE0
_0801AE24: .4byte gUnk_0203AD3C
_0801AE28: .4byte gUnk_08D60FA4
_0801AE2C: .4byte gSongTable
_0801AE30: .4byte 0x00000FAC
_0801AE34: .4byte 0x00000FA8
_0801AE38: .4byte gUnk_0203AD10
_0801AE3C: .4byte 0x000001F5
_0801AE40:
	adds r0, r4, #0
	adds r0, #0xbc
	str r5, [r0]
	ldr r0, _0801AE58 @ =gUnk_08351648
	ldr r2, _0801AE5C @ =0x000008D4
	adds r0, r0, r2
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0xc0
	strh r1, [r0]
	ldr r0, _0801AE60 @ =sub_0801B834
	b _0801B384
	.align 2, 0
_0801AE58: .4byte gUnk_08351648
_0801AE5C: .4byte 0x000008D4
_0801AE60: .4byte sub_0801B834
_0801AE64:
	ldr r1, _0801AEEC @ =gUnk_02020EE0
	ldr r0, _0801AEF0 @ =gUnk_0203AD3C
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
	bne _0801AED0
	ldrb r0, [r4]
	cmp r0, #0
	bne _0801AE90
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0801AED0
_0801AE90:
	ldr r1, _0801AEF4 @ =gUnk_08D60FA4
	ldr r6, _0801AEF8 @ =gSongTable
	ldr r2, _0801AEFC @ =0x00000FA4
	adds r0, r6, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0801AEB6
	movs r1, #0xfa
	lsls r1, r1, #4
	adds r0, r6, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0801AED0
_0801AEB6:
	cmp r3, #0
	beq _0801AEC8
	ldr r0, _0801AF00 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801AED0
_0801AEC8:
	movs r0, #0xfa
	lsls r0, r0, #1
	bl m4aSongNumStart
_0801AED0:
	adds r0, r4, #0
	adds r0, #0xb8
	ldr r0, [r0]
	cmp r0, #0
	beq _0801AF9C
	movs r2, #0x81
	lsls r2, r2, #1
	adds r1, r5, r2
	ldrb r0, [r1]
	cmp r0, #0xfe
	bls _0801AF04
	movs r0, #0xff
	strb r0, [r1]
	b _0801B382
	.align 2, 0
_0801AEEC: .4byte gUnk_02020EE0
_0801AEF0: .4byte gUnk_0203AD3C
_0801AEF4: .4byte gUnk_08D60FA4
_0801AEF8: .4byte gSongTable
_0801AEFC: .4byte 0x00000FA4
_0801AF00: .4byte gUnk_0203AD10
_0801AF04:
	adds r0, #1
	strb r0, [r1]
	ldr r1, _0801AF7C @ =gUnk_02020EE0
	ldr r0, _0801AF80 @ =gUnk_0203AD3C
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
	beq _0801AF26
	b _0801B382
_0801AF26:
	ldrb r0, [r5]
	cmp r0, #0
	bne _0801AF38
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	beq _0801AF38
	b _0801B382
_0801AF38:
	ldr r1, _0801AF84 @ =gUnk_08D60FA4
	ldr r5, _0801AF88 @ =gSongTable
	ldr r2, _0801AF8C @ =0x00000FAC
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0801AF5E
	ldr r1, _0801AF90 @ =0x00000FA8
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bls _0801AF5E
	b _0801B382
_0801AF5E:
	cmp r3, #0
	beq _0801AF72
	ldr r0, _0801AF94 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801AF72
	b _0801B382
_0801AF72:
	ldr r0, _0801AF98 @ =0x000001F5
	bl m4aSongNumStart
	b _0801B382
	.align 2, 0
_0801AF7C: .4byte gUnk_02020EE0
_0801AF80: .4byte gUnk_0203AD3C
_0801AF84: .4byte gUnk_08D60FA4
_0801AF88: .4byte gSongTable
_0801AF8C: .4byte 0x00000FAC
_0801AF90: .4byte 0x00000FA8
_0801AF94: .4byte gUnk_0203AD10
_0801AF98: .4byte 0x000001F5
_0801AF9C:
	adds r0, r4, #0
	adds r0, #0xbc
	str r5, [r0]
	ldr r0, _0801AFB4 @ =gUnk_08351648
	ldr r2, _0801AFB8 @ =0x000008EC
	adds r0, r0, r2
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0xc0
	strh r1, [r0]
	ldr r0, _0801AFBC @ =sub_0801B834
	b _0801B384
	.align 2, 0
_0801AFB4: .4byte gUnk_08351648
_0801AFB8: .4byte 0x000008EC
_0801AFBC: .4byte sub_0801B834
_0801AFC0:
	ldr r1, _0801B048 @ =gUnk_02020EE0
	ldr r0, _0801B04C @ =gUnk_0203AD3C
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
	bne _0801B02C
	ldrb r0, [r4]
	cmp r0, #0
	bne _0801AFEC
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0801B02C
_0801AFEC:
	ldr r1, _0801B050 @ =gUnk_08D60FA4
	ldr r6, _0801B054 @ =gSongTable
	ldr r2, _0801B058 @ =0x00000FA4
	adds r0, r6, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0801B012
	movs r1, #0xfa
	lsls r1, r1, #4
	adds r0, r6, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0801B02C
_0801B012:
	cmp r3, #0
	beq _0801B024
	ldr r0, _0801B05C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801B02C
_0801B024:
	movs r0, #0xfa
	lsls r0, r0, #1
	bl m4aSongNumStart
_0801B02C:
	adds r0, r4, #0
	adds r0, #0xb8
	ldr r0, [r0]
	cmp r0, #0
	beq _0801B0F8
	movs r2, #0x81
	lsls r2, r2, #1
	adds r1, r5, r2
	ldrb r0, [r1]
	cmp r0, #0xfe
	bls _0801B060
	movs r0, #0xff
	strb r0, [r1]
	b _0801B382
	.align 2, 0
_0801B048: .4byte gUnk_02020EE0
_0801B04C: .4byte gUnk_0203AD3C
_0801B050: .4byte gUnk_08D60FA4
_0801B054: .4byte gSongTable
_0801B058: .4byte 0x00000FA4
_0801B05C: .4byte gUnk_0203AD10
_0801B060:
	adds r0, #1
	strb r0, [r1]
	ldr r1, _0801B0D8 @ =gUnk_02020EE0
	ldr r0, _0801B0DC @ =gUnk_0203AD3C
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
	beq _0801B082
	b _0801B382
_0801B082:
	ldrb r0, [r5]
	cmp r0, #0
	bne _0801B094
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	beq _0801B094
	b _0801B382
_0801B094:
	ldr r1, _0801B0E0 @ =gUnk_08D60FA4
	ldr r5, _0801B0E4 @ =gSongTable
	ldr r2, _0801B0E8 @ =0x00000FAC
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0801B0BA
	ldr r1, _0801B0EC @ =0x00000FA8
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bls _0801B0BA
	b _0801B382
_0801B0BA:
	cmp r3, #0
	beq _0801B0CE
	ldr r0, _0801B0F0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801B0CE
	b _0801B382
_0801B0CE:
	ldr r0, _0801B0F4 @ =0x000001F5
	bl m4aSongNumStart
	b _0801B382
	.align 2, 0
_0801B0D8: .4byte gUnk_02020EE0
_0801B0DC: .4byte gUnk_0203AD3C
_0801B0E0: .4byte gUnk_08D60FA4
_0801B0E4: .4byte gSongTable
_0801B0E8: .4byte 0x00000FAC
_0801B0EC: .4byte 0x00000FA8
_0801B0F0: .4byte gUnk_0203AD10
_0801B0F4: .4byte 0x000001F5
_0801B0F8:
	adds r0, r4, #0
	adds r0, #0xbc
	str r5, [r0]
	ldr r0, _0801B110 @ =gUnk_08351648
	ldr r2, _0801B114 @ =0x00000904
	adds r0, r0, r2
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0xc0
	strh r1, [r0]
	ldr r0, _0801B118 @ =sub_0801B834
	b _0801B384
	.align 2, 0
_0801B110: .4byte gUnk_08351648
_0801B114: .4byte 0x00000904
_0801B118: .4byte sub_0801B834
_0801B11C:
	ldr r1, _0801B1A0 @ =gUnk_02020EE0
	ldr r0, _0801B1A4 @ =gUnk_0203AD3C
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
	bne _0801B188
	ldrb r0, [r4]
	cmp r0, #0
	bne _0801B148
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0801B188
_0801B148:
	ldr r1, _0801B1A8 @ =gUnk_08D60FA4
	ldr r6, _0801B1AC @ =gSongTable
	ldr r2, _0801B1B0 @ =0x00000FA4
	adds r0, r6, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0801B16E
	movs r1, #0xfa
	lsls r1, r1, #4
	adds r0, r6, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0801B188
_0801B16E:
	cmp r3, #0
	beq _0801B180
	ldr r0, _0801B1B4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801B188
_0801B180:
	movs r0, #0xfa
	lsls r0, r0, #1
	bl m4aSongNumStart
_0801B188:
	adds r0, r4, #0
	adds r0, #0xbc
	str r5, [r0]
	ldr r0, _0801B1B8 @ =gUnk_08351648
	ldr r2, _0801B1BC @ =0x0000091C
	adds r0, r0, r2
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0xc0
	strh r1, [r0]
	ldr r0, _0801B1C0 @ =sub_0801B834
	b _0801B384
	.align 2, 0
_0801B1A0: .4byte gUnk_02020EE0
_0801B1A4: .4byte gUnk_0203AD3C
_0801B1A8: .4byte gUnk_08D60FA4
_0801B1AC: .4byte gSongTable
_0801B1B0: .4byte 0x00000FA4
_0801B1B4: .4byte gUnk_0203AD10
_0801B1B8: .4byte gUnk_08351648
_0801B1BC: .4byte 0x0000091C
_0801B1C0: .4byte sub_0801B834
_0801B1C4:
	movs r0, #0x81
	lsls r0, r0, #1
	adds r1, r5, r0
	ldrb r0, [r1]
	cmp r0, #0xfe
	bls _0801B1D6
	movs r0, #0xff
	strb r0, [r1]
	b _0801B382
_0801B1D6:
	adds r0, #1
	strb r0, [r1]
	ldr r1, _0801B24C @ =gUnk_02020EE0
	ldr r0, _0801B250 @ =gUnk_0203AD3C
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
	beq _0801B1F8
	b _0801B382
_0801B1F8:
	ldrb r0, [r5]
	cmp r0, #0
	bne _0801B20A
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	beq _0801B20A
	b _0801B382
_0801B20A:
	ldr r1, _0801B254 @ =gUnk_08D60FA4
	ldr r5, _0801B258 @ =gSongTable
	ldr r2, _0801B25C @ =0x00000FAC
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0801B230
	ldr r1, _0801B260 @ =0x00000FA8
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bls _0801B230
	b _0801B382
_0801B230:
	cmp r3, #0
	beq _0801B244
	ldr r0, _0801B264 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801B244
	b _0801B382
_0801B244:
	ldr r0, _0801B268 @ =0x000001F5
	bl m4aSongNumStart
	b _0801B382
	.align 2, 0
_0801B24C: .4byte gUnk_02020EE0
_0801B250: .4byte gUnk_0203AD3C
_0801B254: .4byte gUnk_08D60FA4
_0801B258: .4byte gSongTable
_0801B25C: .4byte 0x00000FAC
_0801B260: .4byte 0x00000FA8
_0801B264: .4byte gUnk_0203AD10
_0801B268: .4byte 0x000001F5
_0801B26C:
	ldr r1, _0801B354 @ =gUnk_02020EE0
	ldr r0, _0801B358 @ =gUnk_0203AD3C
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
	bne _0801B2D8
	ldrb r0, [r4]
	cmp r0, #0
	bne _0801B298
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0801B2D8
_0801B298:
	ldr r1, _0801B35C @ =gUnk_08D60FA4
	ldr r6, _0801B360 @ =gSongTable
	ldr r2, _0801B364 @ =0x00000FA4
	adds r0, r6, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0801B2BE
	movs r1, #0xfa
	lsls r1, r1, #4
	adds r0, r6, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0801B2D8
_0801B2BE:
	cmp r3, #0
	beq _0801B2D0
	ldr r0, _0801B368 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801B2D8
_0801B2D0:
	movs r0, #0xfa
	lsls r0, r0, #1
	bl m4aSongNumStart
_0801B2D8:
	adds r1, r5, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	cmp r0, #2
	bhi _0801B382
	adds r0, #1
	strb r0, [r1]
	ldr r1, _0801B354 @ =gUnk_02020EE0
	ldr r0, _0801B358 @ =gUnk_0203AD3C
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
	bne _0801B382
	ldrb r0, [r5]
	cmp r0, #0
	bne _0801B312
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0801B382
_0801B312:
	ldr r1, _0801B35C @ =gUnk_08D60FA4
	ldr r5, _0801B360 @ =gSongTable
	ldr r2, _0801B36C @ =0x00000FB4
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0801B338
	movs r1, #0xfb
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0801B382
_0801B338:
	cmp r3, #0
	beq _0801B34A
	ldr r0, _0801B368 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801B382
_0801B34A:
	movs r0, #0xfb
	lsls r0, r0, #1
	bl m4aSongNumStart
	b _0801B382
	.align 2, 0
_0801B354: .4byte gUnk_02020EE0
_0801B358: .4byte gUnk_0203AD3C
_0801B35C: .4byte gUnk_08D60FA4
_0801B360: .4byte gSongTable
_0801B364: .4byte 0x00000FA4
_0801B368: .4byte gUnk_0203AD10
_0801B36C: .4byte 0x00000FB4
_0801B370:
	ldr r2, _0801B38C @ =0x0000029B
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	adds r0, r5, #0
	bl sub_08052E2C
_0801B382:
	ldr r0, _0801B390 @ =sub_0801B85C
_0801B384:
	str r0, [r4, #0x78]
_0801B386:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801B38C: .4byte 0x0000029B
_0801B390: .4byte sub_0801B85C

	thumb_func_start sub_0801B394
sub_0801B394: @ 0x0801B394
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r3, r5, #0
	adds r3, #0x50
	ldr r2, _0801B3E4 @ =gUnk_082DE4F8
	adds r4, r5, #0
	adds r4, #0xb4
	ldr r0, [r4]
	lsls r0, r0, #3
	adds r1, r2, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	adds r3, #2
	ldr r1, [r4]
	lsls r1, r1, #3
	adds r2, #6
	adds r1, r1, r2
	ldrh r0, [r3]
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r3]
	ldr r0, [r5, #8]
	movs r1, #0x82
	lsls r1, r1, #0xb
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xb
	cmp r0, r1
	bne _0801B3E8
	ldr r0, [r5, #0x6c]
	ldrb r0, [r0]
	movs r1, #1
	cmp r0, #0
	beq _0801B3EA
	b _0801B3F4
	.align 2, 0
_0801B3E4: .4byte gUnk_082DE4F8
_0801B3E8:
	movs r1, #0
_0801B3EA:
	cmp r1, #0
	beq _0801B3F4
	adds r0, r6, #0
	bl sub_0801AC98
_0801B3F4:
	movs r2, #0
	ldr r1, [r6, #0x44]
	movs r0, #0xd0
	lsls r0, r0, #0xa
	cmp r1, r0
	bgt _0801B416
	ldr r1, [r6, #0x40]
	ldr r0, _0801B420 @ =0xFFFFE000
	cmp r1, r0
	blt _0801B416
	movs r0, #0x90
	lsls r0, r0, #9
	cmp r1, r0
	ble _0801B412
	movs r2, #1
_0801B412:
	cmp r2, #0
	beq _0801B41A
_0801B416:
	ldr r0, _0801B424 @ =sub_0801B85C
	str r0, [r5, #0x78]
_0801B41A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801B420: .4byte 0xFFFFE000
_0801B424: .4byte sub_0801B85C

	thumb_func_start sub_0801B428
sub_0801B428: @ 0x0801B428
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r3, r5, #0
	adds r3, #0x50
	ldr r2, _0801B478 @ =gUnk_082DE4F8
	adds r4, r5, #0
	adds r4, #0xb4
	ldr r1, [r4]
	lsls r1, r1, #3
	adds r0, r2, #2
	adds r1, r1, r0
	ldrh r0, [r3]
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r3]
	adds r3, #2
	ldr r1, [r4]
	lsls r1, r1, #3
	adds r2, #6
	adds r1, r1, r2
	ldrh r0, [r3]
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r3]
	ldr r0, [r5, #8]
	movs r1, #0x82
	lsls r1, r1, #0xb
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xb
	cmp r0, r1
	bne _0801B47C
	ldr r0, [r5, #0x6c]
	ldrb r0, [r0]
	movs r1, #1
	cmp r0, #0
	beq _0801B47E
	b _0801B488
	.align 2, 0
_0801B478: .4byte gUnk_082DE4F8
_0801B47C:
	movs r1, #0
_0801B47E:
	cmp r1, #0
	beq _0801B488
	adds r0, r6, #0
	bl sub_0801AC98
_0801B488:
	movs r2, #0
	ldr r1, [r6, #0x44]
	movs r0, #0xd0
	lsls r0, r0, #0xa
	cmp r1, r0
	bgt _0801B4AA
	ldr r1, [r6, #0x40]
	ldr r0, _0801B4B4 @ =0xFFFFE000
	cmp r1, r0
	blt _0801B4AA
	movs r0, #0x90
	lsls r0, r0, #9
	cmp r1, r0
	ble _0801B4A6
	movs r2, #1
_0801B4A6:
	cmp r2, #0
	beq _0801B4AE
_0801B4AA:
	ldr r0, _0801B4B8 @ =sub_0801B85C
	str r0, [r5, #0x78]
_0801B4AE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801B4B4: .4byte 0xFFFFE000
_0801B4B8: .4byte sub_0801B85C

	thumb_func_start sub_0801B4BC
sub_0801B4BC: @ 0x0801B4BC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r3, r5, #0
	adds r3, #0x50
	ldr r2, _0801B50C @ =gUnk_082DE4F8
	adds r4, r5, #0
	adds r4, #0xb4
	ldr r0, [r4]
	lsls r0, r0, #3
	adds r1, r2, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	adds r3, #2
	ldr r1, [r4]
	lsls r1, r1, #3
	adds r2, #6
	adds r1, r1, r2
	ldrh r0, [r3]
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r3]
	ldr r0, [r5, #8]
	movs r1, #0x82
	lsls r1, r1, #0xb
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xb
	cmp r0, r1
	bne _0801B510
	ldr r0, [r5, #0x6c]
	ldrb r0, [r0]
	movs r1, #1
	cmp r0, #0
	beq _0801B512
	b _0801B51C
	.align 2, 0
_0801B50C: .4byte gUnk_082DE4F8
_0801B510:
	movs r1, #0
_0801B512:
	cmp r1, #0
	beq _0801B51C
	adds r0, r6, #0
	bl sub_0801AC98
_0801B51C:
	movs r2, #0
	ldr r1, [r6, #0x44]
	movs r0, #0xd0
	lsls r0, r0, #0xa
	cmp r1, r0
	bgt _0801B53E
	ldr r1, [r6, #0x40]
	ldr r0, _0801B548 @ =0xFFFFE000
	cmp r1, r0
	blt _0801B53E
	movs r0, #0x90
	lsls r0, r0, #9
	cmp r1, r0
	ble _0801B53A
	movs r2, #1
_0801B53A:
	cmp r2, #0
	beq _0801B542
_0801B53E:
	ldr r0, _0801B54C @ =sub_0801B85C
	str r0, [r5, #0x78]
_0801B542:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801B548: .4byte 0xFFFFE000
_0801B54C: .4byte sub_0801B85C

	thumb_func_start sub_0801B550
sub_0801B550: @ 0x0801B550
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r3, r5, #0
	adds r3, #0x50
	ldr r2, _0801B5A0 @ =gUnk_082DE4F8
	adds r4, r5, #0
	adds r4, #0xb4
	ldr r0, [r4]
	lsls r0, r0, #3
	adds r1, r2, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	adds r3, #2
	ldr r1, [r4]
	lsls r1, r1, #3
	adds r2, #6
	adds r1, r1, r2
	ldrh r0, [r3]
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r3]
	ldr r0, [r5, #8]
	movs r1, #0x82
	lsls r1, r1, #0xb
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xb
	cmp r0, r1
	bne _0801B5A4
	ldr r0, [r5, #0x6c]
	ldrb r0, [r0]
	movs r1, #1
	cmp r0, #0
	beq _0801B5A6
	b _0801B5B0
	.align 2, 0
_0801B5A0: .4byte gUnk_082DE4F8
_0801B5A4:
	movs r1, #0
_0801B5A6:
	cmp r1, #0
	beq _0801B5B0
	adds r0, r6, #0
	bl sub_0801AC98
_0801B5B0:
	movs r2, #0
	ldr r1, [r6, #0x44]
	movs r0, #0xd0
	lsls r0, r0, #0xa
	cmp r1, r0
	bgt _0801B5D2
	ldr r1, [r6, #0x40]
	ldr r0, _0801B5DC @ =0xFFFFE000
	cmp r1, r0
	blt _0801B5D2
	movs r0, #0x90
	lsls r0, r0, #9
	cmp r1, r0
	ble _0801B5CE
	movs r2, #1
_0801B5CE:
	cmp r2, #0
	beq _0801B5D6
_0801B5D2:
	ldr r0, _0801B5E0 @ =sub_0801B85C
	str r0, [r5, #0x78]
_0801B5D6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801B5DC: .4byte 0xFFFFE000
_0801B5E0: .4byte sub_0801B85C

	thumb_func_start sub_0801B5E4
sub_0801B5E4: @ 0x0801B5E4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r3, r5, #0
	adds r3, #0x50
	ldr r2, _0801B634 @ =gUnk_082DE4F8
	adds r4, r5, #0
	adds r4, #0xb4
	ldr r1, [r4]
	lsls r1, r1, #3
	adds r0, r2, #2
	adds r1, r1, r0
	ldrh r0, [r3]
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r3]
	adds r3, #2
	ldr r1, [r4]
	lsls r1, r1, #3
	adds r2, #6
	adds r1, r1, r2
	ldrh r0, [r3]
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r3]
	ldr r0, [r5, #8]
	movs r1, #0x82
	lsls r1, r1, #0xb
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xb
	cmp r0, r1
	bne _0801B638
	ldr r0, [r5, #0x6c]
	ldrb r0, [r0]
	movs r1, #1
	cmp r0, #0
	beq _0801B63A
	b _0801B644
	.align 2, 0
_0801B634: .4byte gUnk_082DE4F8
_0801B638:
	movs r1, #0
_0801B63A:
	cmp r1, #0
	beq _0801B644
	adds r0, r6, #0
	bl sub_0801AC98
_0801B644:
	movs r2, #0
	ldr r1, [r6, #0x44]
	movs r0, #0xd0
	lsls r0, r0, #0xa
	cmp r1, r0
	bgt _0801B666
	ldr r1, [r6, #0x40]
	ldr r0, _0801B670 @ =0xFFFFE000
	cmp r1, r0
	blt _0801B666
	movs r0, #0x90
	lsls r0, r0, #9
	cmp r1, r0
	ble _0801B662
	movs r2, #1
_0801B662:
	cmp r2, #0
	beq _0801B66A
_0801B666:
	ldr r0, _0801B674 @ =sub_0801B85C
	str r0, [r5, #0x78]
_0801B66A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801B670: .4byte 0xFFFFE000
_0801B674: .4byte sub_0801B85C

	thumb_func_start sub_0801B678
sub_0801B678: @ 0x0801B678
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r6, r7, #0
	adds r2, r7, #0
	adds r2, #0xc2
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bls _0801B770
	adds r5, r7, #0
	adds r5, #0xbc
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #1
	mov ip, r1
	adds r2, r0, r1
	adds r1, #1
	adds r0, r0, r1
	ldrb r4, [r2]
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldrb r3, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	blt _0801B6C0
	movs r0, #0
	mov r8, r0
	strb r3, [r2]
	b _0801B734
_0801B6C0:
	movs r1, #1
	mov r8, r1
	adds r0, r4, #1
	strb r0, [r2]
	ldr r1, _0801B748 @ =gUnk_02020EE0
	ldr r0, _0801B74C @ =gUnk_0203AD3C
	ldrb r3, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r3, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldr r2, [r5]
	adds r1, r2, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0801B734
	ldrb r0, [r2]
	cmp r0, #0
	bne _0801B6F6
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r3
	bne _0801B734
_0801B6F6:
	ldr r1, _0801B750 @ =gUnk_08D60FA4
	ldr r4, _0801B754 @ =gSongTable
	ldr r2, _0801B758 @ =0x00000FB4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0801B71C
	movs r1, #0xfb
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0801B734
_0801B71C:
	cmp r3, #0
	beq _0801B72C
	ldr r0, _0801B75C @ =gUnk_0203AD10
	ldr r0, [r0]
	mov r2, ip
	ands r0, r2
	cmp r0, #0
	bne _0801B734
_0801B72C:
	movs r0, #0xfb
	lsls r0, r0, #1
	bl m4aSongNumStart
_0801B734:
	mov r0, r8
	cmp r0, #0
	beq _0801B760
	adds r1, r6, #0
	adds r1, #0xc0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	b _0801B768
	.align 2, 0
_0801B748: .4byte gUnk_02020EE0
_0801B74C: .4byte gUnk_0203AD3C
_0801B750: .4byte gUnk_08D60FA4
_0801B754: .4byte gSongTable
_0801B758: .4byte 0x00000FB4
_0801B75C: .4byte gUnk_0203AD10
_0801B760:
	adds r0, r6, #0
	adds r0, #0xc0
	mov r1, r8
	strh r1, [r0]
_0801B768:
	adds r1, r6, #0
	adds r1, #0xc2
	movs r0, #0
	strh r0, [r1]
_0801B770:
	adds r0, r6, #0
	adds r0, #0xc0
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801B77E
	ldr r0, _0801B788 @ =sub_0801B85C
	str r0, [r7, #0x78]
_0801B77E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B788: .4byte sub_0801B85C

	thumb_func_start sub_0801B78C
sub_0801B78C: @ 0x0801B78C
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x40]
	movs r0, #0x88
	lsls r0, r0, #8
	cmp r1, r0
	ble _0801B7BC
	ldr r1, _0801B7B4 @ =gUnk_082DE4F8
	adds r0, r2, #0
	adds r0, #0xb4
	ldr r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	rsbs r0, r0, #0
	adds r1, r2, #0
	adds r1, #0x50
	strh r0, [r1]
	ldr r0, _0801B7B8 @ =sub_0801B428
	b _0801B7D2
	.align 2, 0
_0801B7B4: .4byte gUnk_082DE4F8
_0801B7B8: .4byte sub_0801B428
_0801B7BC:
	ldr r1, _0801B7D8 @ =gUnk_082DE4F8
	adds r0, r2, #0
	adds r0, #0xb4
	ldr r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x50
	strh r1, [r0]
	ldr r0, _0801B7DC @ =sub_0801B4BC
_0801B7D2:
	str r0, [r2, #0x78]
	pop {r0}
	bx r0
	.align 2, 0
_0801B7D8: .4byte gUnk_082DE4F8
_0801B7DC: .4byte sub_0801B4BC

	thumb_func_start sub_0801B7E0
sub_0801B7E0: @ 0x0801B7E0
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x40]
	movs r0, #0x88
	lsls r0, r0, #8
	cmp r1, r0
	ble _0801B810
	ldr r1, _0801B808 @ =gUnk_082DE4F8
	adds r0, r2, #0
	adds r0, #0xb4
	ldr r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	rsbs r0, r0, #0
	adds r1, r2, #0
	adds r1, #0x50
	strh r0, [r1]
	ldr r0, _0801B80C @ =sub_0801B550
	b _0801B826
	.align 2, 0
_0801B808: .4byte gUnk_082DE4F8
_0801B80C: .4byte sub_0801B550
_0801B810:
	ldr r1, _0801B82C @ =gUnk_082DE4F8
	adds r0, r2, #0
	adds r0, #0xb4
	ldr r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x50
	strh r1, [r0]
	ldr r0, _0801B830 @ =sub_0801B5E4
_0801B826:
	str r0, [r2, #0x78]
	pop {r0}
	bx r0
	.align 2, 0
_0801B82C: .4byte gUnk_082DE4F8
_0801B830: .4byte sub_0801B5E4

	thumb_func_start sub_0801B834
sub_0801B834: @ 0x0801B834
	adds r3, r0, #0
	adds r0, #0x50
	movs r2, #0
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	ldr r0, [r3, #8]
	movs r1, #0x83
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r3, #8]
	adds r0, r3, #0
	adds r0, #0xc2
	strh r2, [r0]
	ldr r0, _0801B858 @ =sub_0801B678
	str r0, [r3, #0x78]
	bx lr
	.align 2, 0
_0801B858: .4byte sub_0801B678

	thumb_func_start sub_0801B85C
sub_0801B85C: @ 0x0801B85C
	adds r2, r0, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r2, #8]
	movs r1, #0x83
	lsls r1, r1, #9
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2, #8]
	bx lr
	.align 2, 0

	thumb_func_start CreateShard
CreateShard: @ 0x0801B87C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _0801B8B8 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _0801B8BC @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xe4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801B8C0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0801B8C8
	.align 2, 0
_0801B8B8: .4byte ObjectMain
_0801B8BC: .4byte ObjectDestroy
_0801B8C0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0801B8C8:
	adds r7, r0, #0
	mov r1, r8
	adds r2, r4, #0
	bl InitObject
	mov r0, r8
	ldrb r1, [r0, #0xe]
	adds r0, r7, #0
	adds r0, #0xd4
	movs r2, #0
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
	mov r0, r8
	ldrh r1, [r0, #6]
	adds r0, r7, #0
	adds r0, #0xd8
	strh r1, [r0]
	mov r1, r8
	ldrh r0, [r1, #8]
	adds r1, r7, #0
	adds r1, #0xda
	strh r0, [r1]
	movs r1, #0
	adds r2, r7, #0
	adds r2, #0xb4
	movs r3, #0
_0801B8FE:
	lsls r0, r1, #2
	adds r0, r2, r0
	str r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #7
	bls _0801B8FE
	ldr r0, [r7, #8]
	ldr r1, _0801B968 @ =0x12218141
	orrs r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #0xc]
	movs r1, #1
	mov sl, r1
	orrs r0, r1
	str r0, [r7, #0xc]
	ldr r0, [r7, #0x68]
	movs r5, #8
	rsbs r5, r5, #0
	ands r0, r5
	str r0, [r7, #0x68]
	ldr r0, [r7, #0x5c]
	orrs r0, r5
	subs r1, #0x82
	ands r0, r1
	str r0, [r7, #0x5c]
	adds r0, r7, #0
	adds r0, #0xd4
	ldrh r1, [r0]
	mov sb, r0
	cmp r1, #7
	bhi _0801B96C
	movs r4, #8
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r5, #0
	movs r3, #8
	bl sub_0803E2B0
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r5, #0
	movs r3, #8
	bl sub_0803E308
	mov r1, sb
	ldrh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x83
	b _0801B9CA
	.align 2, 0
_0801B968: .4byte 0x12218141
_0801B96C:
	movs r5, #0x10
	rsbs r5, r5, #0
	movs r6, #0x12
	rsbs r6, r6, #0
	movs r4, #0x12
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0x10
	bl sub_0803E2B0
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0x10
	bl sub_0803E308
	mov r0, r8
	ldrh r1, [r0, #0x22]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _0801B9B0
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r7, #8]
	adds r1, r7, #0
	adds r1, #0x83
	movs r0, #0xd
	b _0801B9CA
_0801B9B0:
	bl sub_08019D5C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bhi _0801B9C4
	adds r1, r7, #0
	adds r1, #0x83
	movs r0, #8
	b _0801B9CA
_0801B9C4:
	adds r1, r7, #0
	adds r1, #0x83
	movs r0, #0xa
_0801B9CA:
	strb r0, [r1]
	adds r0, r7, #0
	bl ObjectInitSprite
	mov r1, sb
	ldrh r0, [r1]
	cmp r0, #7
	bhi _0801B9E0
	movs r0, #0xf0
	lsls r0, r0, #3
	b _0801B9E4
_0801B9E0:
	movs r0, #0xf8
	lsls r0, r0, #3
_0801B9E4:
	strh r0, [r7, #0x24]
	ldr r2, _0801BA14 @ =gUnk_08351648
	adds r0, r7, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r7, #0
	bl _call_via_r1
	adds r0, r7, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801BA14: .4byte gUnk_08351648

	thumb_func_start sub_0801BA18
sub_0801BA18: @ 0x0801BA18
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	mov sb, r1
	movs r7, #0
	ldr r0, [r0, #0x40]
	ldr r1, _0801BA38 @ =0xFFFF8800
	adds r4, r0, r1
	mov r2, r8
	ldr r0, [r2, #0x44]
	ldr r1, _0801BA3C @ =0xFFFFB000
	adds r5, r0, r1
	b _0801BAF4
	.align 2, 0
_0801BA38: .4byte 0xFFFF8800
_0801BA3C: .4byte 0xFFFFB000
_0801BA40:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r7, #0
	muls r1, r0, r1
	ldr r0, _0801BAA0 @ =gUnk_02020EE0
	adds r6, r1, r0
	mov r2, sb
	cmp r2, #0
	bne _0801BAA4
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _0801BAC0
	adds r0, r6, #0
	adds r0, #0x60
	mov r1, r8
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0801BAC0
	adds r0, r6, #0
	bl sub_0805BEC4
	cmp r0, #0
	bne _0801BAC0
	ldr r1, [r6, #0x40]
	cmp r4, r1
	bgt _0801BAC0
	movs r2, #0xf0
	lsls r2, r2, #8
	adds r0, r4, r2
	cmp r0, r1
	blt _0801BAC0
	ldr r1, [r6, #0x44]
	cmp r5, r1
	bgt _0801BAC0
	movs r2, #0xa0
	lsls r2, r2, #8
	adds r0, r5, r2
	cmp r0, r1
	bge _0801BAEE
	b _0801BAC0
	.align 2, 0
_0801BAA0: .4byte gUnk_02020EE0
_0801BAA4:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bgt _0801BAC4
	movs r2, #0x81
	lsls r2, r2, #1
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801BAEE
_0801BAC0:
	movs r0, #0
	b _0801BAFE
_0801BAC4:
	adds r0, r6, #0
	bl sub_0805BEC4
	cmp r0, #0
	bne _0801BAC0
	ldr r1, [r6, #0x40]
	cmp r4, r1
	bgt _0801BAC0
	movs r2, #0xf0
	lsls r2, r2, #8
	adds r0, r4, r2
	cmp r0, r1
	blt _0801BAC0
	ldr r1, [r6, #0x44]
	cmp r5, r1
	bgt _0801BAC0
	movs r2, #0xa0
	lsls r2, r2, #8
	adds r0, r5, r2
	cmp r0, r1
	blt _0801BAC0
_0801BAEE:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0801BAF4:
	ldr r0, _0801BB0C @ =gUnk_0203AD30
	ldrb r0, [r0]
	cmp r7, r0
	blo _0801BA40
	movs r0, #1
_0801BAFE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801BB0C: .4byte gUnk_0203AD30

	thumb_func_start sub_0801BB10
sub_0801BB10: @ 0x0801BB10
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	ldr r0, _0801BB80 @ =gUnk_02023530
	adds r1, r1, r0
	movs r4, #0
	ldr r0, _0801BB84 @ =gUnk_0203AD30
	ldrb r0, [r0]
	cmp r4, r0
	bhs _0801BB9A
	movs r6, #0xbf
	lsls r6, r6, #3
	adds r7, r1, r6
_0801BB32:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, _0801BB88 @ =gUnk_02020EE0
	adds r2, r1, r0
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801BB5E
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _0801BB7C
_0801BB5E:
	ldr r1, _0801BB80 @ =gUnk_02023530
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r4, r0
	adds r0, r0, r1
	adds r0, r0, r6
	ldrh r1, [r7]
	ldrh r0, [r0]
	cmp r1, r0
	bne _0801BB7C
	adds r0, r2, #0
	bl sub_0805BEC4
	cmp r0, #0
	beq _0801BB8C
_0801BB7C:
	movs r0, #0
	b _0801BB9C
	.align 2, 0
_0801BB80: .4byte gUnk_02023530
_0801BB84: .4byte gUnk_0203AD30
_0801BB88: .4byte gUnk_02020EE0
_0801BB8C:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _0801BBA4 @ =gUnk_0203AD30
	ldrb r0, [r0]
	cmp r4, r0
	blo _0801BB32
_0801BB9A:
	movs r0, #1
_0801BB9C:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801BBA4: .4byte gUnk_0203AD30

	thumb_func_start sub_0801BBA8
sub_0801BBA8: @ 0x0801BBA8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl sub_08019D5C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bne _0801BBE8
	movs r5, #0
	adds r1, r6, #0
	adds r1, #0xb4
	movs r0, #0x80
	lsls r0, r0, #5
	adds r6, r0, #0
	movs r7, #0
	movs r4, #0
_0801BBC8:
	lsls r0, r5, #2
	adds r3, r1, r0
	ldr r2, [r3]
	cmp r2, #0
	beq _0801BBD8
	ldrh r0, [r2, #6]
	orrs r0, r6
	strh r0, [r2, #6]
_0801BBD8:
	str r4, [r3]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #7
	bls _0801BBC8
	movs r0, #1
	b _0801BC20
_0801BBE8:
	movs r5, #0
_0801BBEA:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_08019DA8
	cmp r0, #0
	beq _0801BC14
	lsls r0, r5, #2
	adds r1, r6, #0
	adds r1, #0xb4
	adds r4, r1, r0
	ldr r0, [r4]
	cmp r0, #0
	bne _0801BC14
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0801C0A8
	str r0, [r4]
	movs r1, #0xf0
	lsls r1, r1, #3
	strh r1, [r0, #0x20]
_0801BC14:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #7
	bls _0801BBEA
	movs r0, #0
_0801BC20:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801BC28
sub_0801BC28: @ 0x0801BC28
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r7, #0
	ldr r0, [r7, #8]
	movs r1, #0x82
	lsls r1, r1, #0xb
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xb
	cmp r0, r1
	bne _0801BC5C
	ldr r1, [r7, #0x6c]
	ldrb r0, [r1]
	cmp r0, #0
	bne _0801BCEA
	adds r0, r1, #0
	adds r0, #0x56
	ldr r1, _0801BC58 @ =gUnk_0203AD30
	ldrb r0, [r0]
	movs r2, #1
	ldrb r1, [r1]
	cmp r0, r1
	blo _0801BC5E
	b _0801BCEA
	.align 2, 0
_0801BC58: .4byte gUnk_0203AD30
_0801BC5C:
	movs r2, #0
_0801BC5E:
	cmp r2, #0
	beq _0801BCEA
	ldr r2, _0801BD40 @ =0x0000028E
	adds r0, r6, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r1, _0801BD44 @ =gUnk_02020EE0
	ldr r0, _0801BD48 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0801BCDC
	ldrb r0, [r6]
	cmp r0, #0
	bne _0801BC9A
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0801BCDC
_0801BC9A:
	ldr r1, _0801BD4C @ =gUnk_08D60FA4
	ldr r0, _0801BD50 @ =gSongTable
	mov ip, r0
	ldr r0, _0801BD54 @ =0x00000FA4
	add r0, ip
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0801BCC2
	movs r0, #0xfa
	lsls r0, r0, #4
	add r0, ip
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0801BCDC
_0801BCC2:
	cmp r3, #0
	beq _0801BCD4
	ldr r0, _0801BD58 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801BCDC
_0801BCD4:
	movs r0, #0xfa
	lsls r0, r0, #1
	bl m4aSongNumStart
_0801BCDC:
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r6, #8]
	ldr r0, _0801BD5C @ =sub_0801C4F0
	str r0, [r6, #0x78]
_0801BCEA:
	adds r2, r7, #0
	adds r2, #0xd6
	ldrh r0, [r2]
	adds r0, #8
	ldr r3, _0801BD60 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2]
	adds r0, r7, #0
	adds r0, #0xd8
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r4, r0, #8
	adds r0, r7, #0
	adds r0, #0xda
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r5, r0, #8
	ldr r1, _0801BD64 @ =gUnk_08D5FE14
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #3
	adds r5, r5, r0
	ldr r0, [r6, #0x40]
	subs r0, r4, r0
	adds r1, r6, #0
	adds r1, #0x50
	strh r0, [r1]
	ldr r0, [r6, #0x44]
	adds r1, #2
	subs r0, r0, r5
	strh r0, [r1]
	ldr r0, [r7, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801BD40: .4byte 0x0000028E
_0801BD44: .4byte gUnk_02020EE0
_0801BD48: .4byte gUnk_0203AD3C
_0801BD4C: .4byte gUnk_08D60FA4
_0801BD50: .4byte gSongTable
_0801BD54: .4byte 0x00000FA4
_0801BD58: .4byte gUnk_0203AD10
_0801BD5C: .4byte sub_0801C4F0
_0801BD60: .4byte 0x000003FF
_0801BD64: .4byte gUnk_08D5FE14

	thumb_func_start sub_0801BD68
sub_0801BD68: @ 0x0801BD68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #0xc]
	mov sl, r0
	movs r0, #0
	mov r8, r0
	ldr r0, [sp, #0xc]
	adds r0, #0x60
	ldrh r0, [r0]
	mov sb, r0
	movs r4, #0
	movs r2, #0xd4
	lsls r2, r2, #1
	ldr r1, _0801BE40 @ =gUnk_02020EE0
_0801BD8C:
	adds r0, r4, #0
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	cmp sb, r0
	bne _0801BDAE
	mov r0, sp
	adds r0, r0, r4
	adds r0, #8
	mov r3, r8
	strb r3, [r0]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_0801BDAE:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _0801BD8C
	movs r4, #0
_0801BDBA:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, _0801BE40 @ =gUnk_02020EE0
	adds r6, r1, r0
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r0, [r0]
	cmp sb, r0
	bne _0801BE26
	mov r5, sl
	adds r5, #0xe0
	ldrh r0, [r5]
	asrs r0, r4
	movs r7, #1
	ands r0, r7
	cmp r0, #0
	bne _0801BE26
	mov r0, sp
	adds r0, r0, r4
	adds r0, #8
	ldrb r1, [r0]
	mov r0, sl
	adds r0, #0xdc
	ldrb r3, [r0]
	ldr r0, [sp, #0xc]
	adds r0, #0xb0
	ldr r2, [r0]
	ldrb r0, [r2, #0xe]
	lsls r0, r0, #1
	ldr r7, _0801BE44 @ =gUnk_08352DBE
	adds r0, r0, r7
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp]
	ldrb r0, [r2, #0xe]
	lsls r0, r0, #1
	ldr r2, _0801BE48 @ =gUnk_08352DBF
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #4]
	adds r0, r6, #0
	mov r2, r8
	bl sub_0804BD98
	movs r0, #1
	lsls r0, r4
	ldrh r1, [r5]
	orrs r0, r1
	strh r0, [r5]
_0801BE26:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _0801BDBA
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801BE40: .4byte gUnk_02020EE0
_0801BE44: .4byte gUnk_08352DBE
_0801BE48: .4byte gUnk_08352DBF

	thumb_func_start sub_0801BE4C
sub_0801BE4C: @ 0x0801BE4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov r8, r0
	mov r1, r8
	adds r0, r1, #0
	str r0, [sp]
	mov r0, r8
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	lsrs r1, r1, #1
	movs r0, #1
	ands r1, r0
	mov r0, r8
	bl sub_0801BA18
	cmp r0, #0
	bne _0801BE84
	ldr r0, _0801BE80 @ =sub_0801C3C4
	mov r2, r8
	str r0, [r2, #0x78]
	b _0801BFF4
	.align 2, 0
_0801BE80: .4byte sub_0801C3C4
_0801BE84:
	mov r4, r8
	adds r4, #0x56
	ldrb r1, [r4]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	ldr r7, _0801BFD4 @ =gUnk_02023530
	mov sl, r7
	add r0, sl
	mov ip, r0
	mov r0, r8
	adds r0, #0x3c
	movs r3, #0
	ldrsb r3, [r0, r3]
	lsls r1, r3, #8
	mov r2, r8
	ldr r0, [r2, #0x40]
	adds r5, r0, r1
	mov r0, r8
	adds r0, #0x3d
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r1, r2, #8
	mov r7, r8
	ldr r0, [r7, #0x44]
	adds r6, r0, r1
	mov r0, r8
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	lsls r0, r0, #8
	str r0, [sp, #4]
	mov r0, r8
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	lsls r0, r0, #8
	str r0, [sp, #8]
	movs r0, #0
	mov sb, r0
	movs r7, #0
	ldr r0, _0801BFD8 @ =gUnk_0203AD30
	ldrb r1, [r0]
	str r4, [sp, #0xc]
	cmp r7, r1
	bhs _0801BF56
	movs r3, #0xbf
	lsls r3, r3, #3
	mov r2, ip
	adds r0, r2, r3
	ldrh r0, [r0]
	mov ip, r0
	str r1, [sp, #0x10]
_0801BEF6:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r7, #0
	muls r1, r0, r1
	ldr r0, _0801BFDC @ =gUnk_02020EE0
	adds r2, r1, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r7, r0
	add r0, sl
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp ip, r0
	bne _0801BF4A
	movs r4, #0x8c
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801BF4A
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0801BF4A
	ldr r1, [r2, #0x40]
	cmp r5, r1
	bgt _0801BF4A
	ldr r4, [sp, #4]
	adds r0, r5, r4
	cmp r0, r1
	blt _0801BF4A
	ldr r1, [r2, #0x44]
	cmp r6, r1
	bgt _0801BF4A
	ldr r2, [sp, #8]
	adds r0, r6, r2
	cmp r0, r1
	bge _0801BF5C
_0801BF4A:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r4, [sp, #0x10]
	cmp r7, r4
	blo _0801BEF6
_0801BF56:
	mov r7, sb
	cmp r7, #0
	beq _0801BFE8
_0801BF5C:
	ldr r0, [sp]
	bl sub_0801BB10
	cmp r0, #0
	beq _0801BFE8
	movs r7, #0
	ldr r0, _0801BFE0 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r7, r0
	bhs _0801BFCA
	ldr r6, _0801BFD4 @ =gUnk_02023530
_0801BF72:
	ldr r1, _0801BFDC @ =gUnk_02020EE0
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r7, r0
	adds r5, r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _0801BFBC
	ldr r2, [sp, #0xc]
	ldrb r1, [r2]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r6
	movs r4, #0xbf
	lsls r4, r4, #3
	adds r0, r0, r4
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0801BFBC
	mov r0, r8
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x1e]
	ldrb r2, [r0, #0x1a]
	ldrb r3, [r0, #0x1c]
	adds r0, r5, #0
	bl sub_0805BDF4
_0801BFBC:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, _0801BFE0 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r7, r0
	blo _0801BF72
_0801BFCA:
	ldr r0, _0801BFE4 @ =sub_0801C3B0
	mov r7, r8
	str r0, [r7, #0x78]
	b _0801BFF4
	.align 2, 0
_0801BFD4: .4byte gUnk_02023530
_0801BFD8: .4byte gUnk_0203AD30
_0801BFDC: .4byte gUnk_02020EE0
_0801BFE0: .4byte gUnk_0203AD44
_0801BFE4: .4byte sub_0801C3B0
_0801BFE8:
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #4
	orrs r0, r1
	mov r2, r8
	str r0, [r2, #8]
_0801BFF4:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801C004
sub_0801C004: @ 0x0801C004
	push {r4, r5, lr}
	sub sp, #0x28
	mov ip, r0
	ldr r4, _0801C09C @ =gUnk_02023530
	adds r0, #0x56
	ldrb r0, [r0]
	movs r3, #0xcd
	lsls r3, r3, #3
	adds r1, r0, #0
	muls r1, r3, r1
	adds r1, r1, r4
	movs r2, #0xbf
	lsls r2, r2, #3
	adds r1, r1, r2
	ldr r0, _0801C0A0 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	muls r0, r3, r0
	adds r0, r0, r4
	adds r0, r0, r2
	ldrh r1, [r1]
	ldrh r0, [r0]
	cmp r1, r0
	bne _0801C092
	mov r0, ip
	adds r0, #0x2f
	ldrb r5, [r0]
	cmp r5, #0
	beq _0801C092
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp]
	mov r1, sp
	ldr r4, _0801C0A4 @ =gUnk_082DE5A8
	mov r3, ip
	adds r3, #0x83
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r0, [r0]
	movs r2, #0
	strh r0, [r1, #0xc]
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r0, [r0, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	strh r2, [r0, #0x14]
	strh r2, [r0, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	movs r0, #0xf
	ands r0, r5
	strb r0, [r1, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
_0801C092:
	add sp, #0x28
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801C09C: .4byte gUnk_02023530
_0801C0A0: .4byte gUnk_0203AD3C
_0801C0A4: .4byte gUnk_082DE5A8

	thumb_func_start sub_0801C0A8
sub_0801C0A8: @ 0x0801C0A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	ldr r0, _0801C0E4 @ =sub_0801C194
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0801C0E8 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801C0EC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r6, r0, r1
	b _0801C0F4
	.align 2, 0
_0801C0E4: .4byte sub_0801C194
_0801C0E8: .4byte sub_0803DCCC
_0801C0EC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
_0801C0F4:
	adds r0, r6, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r6]
	ldr r0, [r7, #0x40]
	str r0, [r6, #0x34]
	ldr r0, [r7, #0x44]
	str r0, [r6, #0x38]
	str r7, [r6, #0x44]
	adds r0, r7, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r6, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r7, #0x40]
	str r0, [r6, #0x34]
	ldr r0, [r7, #0x44]
	str r0, [r6, #0x38]
	ldr r0, _0801C18C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r7, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0801C140
	ldrh r0, [r6, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r6, #6]
_0801C140:
	ldr r5, _0801C190 @ =gUnk_082DE5E0
	mov r0, r8
	lsls r4, r0, #1
	add r4, r8
	lsls r4, r4, #1
	adds r0, r5, #4
	adds r0, r4, r0
	ldrh r0, [r0]
	bl sub_081570B0
	adds r2, r0, #0
	adds r1, r6, #0
	adds r1, #0xc
	adds r0, r4, r5
	ldrh r3, [r0]
	adds r5, #2
	adds r4, r4, r5
	ldrb r0, [r4]
	str r0, [sp]
	movs r0, #0x19
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_080709F8
	adds r0, r7, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x2b
	strb r0, [r1]
	adds r0, r6, #0
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801C18C: .4byte gUnk_03000510
_0801C190: .4byte gUnk_082DE5E0

	thumb_func_start sub_0801C194
sub_0801C194: @ 0x0801C194
	push {r4, r5, r6, r7, lr}
	ldr r2, _0801C1B4 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _0801C1B8
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0801C1C0
	.align 2, 0
_0801C1B4: .4byte gCurTask
_0801C1B8:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0801C1C0:
	adds r3, r0, #0
	ldrh r1, [r3, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0801C1DC
	ldr r0, [r5]
	bl TaskDestroy
	b _0801C2F4
_0801C1DC:
	ldr r1, [r3, #0x44]
	cmp r1, #0
	beq _0801C228
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801C1F4
	ldr r0, [r1, #8]
	ands r0, r4
	cmp r0, #0
	beq _0801C1F4
	str r2, [r3, #0x44]
	movs r1, #0
_0801C1F4:
	cmp r1, #0
	beq _0801C228
	ldr r0, _0801C224 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0801C298
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0801C298
	adds r0, r3, #0
	bl sub_0803DBC8
	b _0801C2F4
	.align 2, 0
_0801C224: .4byte gUnk_03000510
_0801C228:
	adds r5, r3, #0
	movs r4, #0
	ldr r2, _0801C290 @ =gUnk_02020EE0
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0801C26A
	movs r4, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0801C26A
	movs r4, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _0801C26A
	movs r4, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0801C26A
	movs r4, #4
_0801C26A:
	ldr r0, _0801C294 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0801C298
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0801C298
	adds r0, r5, #0
	bl sub_0803DBC8
	b _0801C2F4
	.align 2, 0
_0801C290: .4byte gUnk_02020EE0
_0801C294: .4byte gUnk_03000510
_0801C298:
	ldr r0, _0801C2FC @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801C2DC
	ldr r6, _0801C300 @ =gUnk_02023530
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r4, [r1]
	ldr r5, _0801C304 @ =gUnk_02026D50
_0801C2AA:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _0801C2D4
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0801C2EE
_0801C2D4:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0801C2AA
_0801C2DC:
	movs r0, #1
	cmp r0, #0
	beq _0801C2EE
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
_0801C2EE:
	adds r0, r3, #0
	bl sub_0806FAC8
_0801C2F4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C2FC: .4byte gUnk_0203AD44
_0801C300: .4byte gUnk_02023530
_0801C304: .4byte gUnk_02026D50

	thumb_func_start sub_0801C308
sub_0801C308: @ 0x0801C308
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #7
	bhi _0801C320
	ldr r0, _0801C31C @ =sub_0801C364
	str r0, [r4, #0x78]
	b _0801C354
	.align 2, 0
_0801C31C: .4byte sub_0801C364
_0801C320:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801C338
	ldr r0, _0801C334 @ =sub_0801C3E0
	b _0801C34E
	.align 2, 0
_0801C334: .4byte sub_0801C3E0
_0801C338:
	adds r0, r4, #0
	bl sub_0801BBA8
	cmp r0, #0
	beq _0801C34C
	ldr r0, _0801C348 @ =sub_0801C39C
	b _0801C34E
	.align 2, 0
_0801C348: .4byte sub_0801C39C
_0801C34C:
	ldr r0, _0801C35C @ =sub_0801C388
_0801C34E:
	str r0, [r4, #0x78]
	ldr r0, _0801C360 @ =sub_0801C004
	str r0, [r4, #0x7c]
_0801C354:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801C35C: .4byte sub_0801C388
_0801C360: .4byte sub_0801C004

	thumb_func_start sub_0801C364
sub_0801C364: @ 0x0801C364
	adds r2, r0, #0
	adds r2, #0xd6
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0801C384 @ =sub_0801C3F4
	str r1, [r0, #0x78]
	ldr r1, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #2
	orrs r1, r2
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0
_0801C384: .4byte sub_0801C3F4

	thumb_func_start sub_0801C388
sub_0801C388: @ 0x0801C388
	adds r2, r0, #0
	adds r2, #0x83
	movs r1, #8
	strb r1, [r2]
	ldr r1, _0801C398 @ =sub_0801C5CC
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_0801C398: .4byte sub_0801C5CC

	thumb_func_start sub_0801C39C
sub_0801C39C: @ 0x0801C39C
	adds r2, r0, #0
	adds r2, #0x83
	movs r1, #0xa
	strb r1, [r2]
	ldr r1, _0801C3AC @ =sub_0801C618
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_0801C3AC: .4byte sub_0801C618

	thumb_func_start sub_0801C3B0
sub_0801C3B0: @ 0x0801C3B0
	adds r2, r0, #0
	adds r2, #0x83
	movs r1, #9
	strb r1, [r2]
	ldr r1, _0801C3C0 @ =nullsub_27
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_0801C3C0: .4byte nullsub_27

	thumb_func_start sub_0801C3C4
sub_0801C3C4: @ 0x0801C3C4
	adds r2, r0, #0
	adds r2, #0x83
	movs r1, #0xc
	strb r1, [r2]
	ldr r1, [r0, #8]
	movs r2, #7
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0, #8]
	ldr r1, _0801C3DC @ =sub_0801C650
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_0801C3DC: .4byte sub_0801C650

	thumb_func_start sub_0801C3E0
sub_0801C3E0: @ 0x0801C3E0
	adds r2, r0, #0
	adds r2, #0x83
	movs r1, #0xd
	strb r1, [r2]
	ldr r1, _0801C3F0 @ =sub_0801C66C
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_0801C3F0: .4byte sub_0801C66C

	thumb_func_start sub_0801C3F4
sub_0801C3F4: @ 0x0801C3F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	mov ip, r4
	movs r2, #0
	ldr r0, _0801C468 @ =gUnk_0203AD44
	ldrb r1, [r0]
	cmp r2, r1
	bhs _0801C442
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r5, [r0]
	adds r3, r1, #0
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r8, r0
	ldr r6, _0801C46C @ =gUnk_02020EE0
_0801C418:
	mov r0, r8
	muls r0, r2, r0
	adds r1, r0, r6
	adds r0, r1, #0
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r5, r0
	bne _0801C438
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _0801C45C
_0801C438:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r3
	blo _0801C418
_0801C442:
	ldr r0, [r4, #8]
	ldr r1, _0801C470 @ =0xFFFFFDFF
	ands r0, r1
	ldr r1, _0801C474 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	mov r0, ip
	movs r1, #0
	movs r2, #0
	bl sub_080953D4
	ldr r0, _0801C478 @ =sub_0801C47C
	str r0, [r4, #0x78]
_0801C45C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C468: .4byte gUnk_0203AD44
_0801C46C: .4byte gUnk_02020EE0
_0801C470: .4byte 0xFFFFFDFF
_0801C474: .4byte 0xFFFFFBFF
_0801C478: .4byte sub_0801C47C

	thumb_func_start sub_0801C47C
sub_0801C47C: @ 0x0801C47C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0xdc
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0801C4A0 @ =0x00000292
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, _0801C4A4 @ =sub_0801C4A8
	str r0, [r4, #0x78]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801C4A0: .4byte 0x00000292
_0801C4A4: .4byte sub_0801C4A8

	thumb_func_start sub_0801C4A8
sub_0801C4A8: @ 0x0801C4A8
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r0, #0xdc
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x3c
	bls _0801C4C2
	ldr r0, _0801C4D0 @ =sub_0801C4D4
	str r0, [r3, #0x78]
_0801C4C2:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801C4D0: .4byte sub_0801C4D4

	thumb_func_start sub_0801C4D4
sub_0801C4D4: @ 0x0801C4D4
	adds r2, r0, #0
	adds r2, #0xd6
	movs r1, #0
	strh r1, [r2]
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	ldr r1, _0801C4EC @ =sub_0801BC28
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_0801C4EC: .4byte sub_0801BC28

	thumb_func_start sub_0801C4F0
sub_0801C4F0: @ 0x0801C4F0
	adds r2, r0, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x8a
	strh r1, [r0]
	ldr r0, _0801C508 @ =sub_0801C50C
	str r0, [r2, #0x78]
	bx lr
	.align 2, 0
_0801C508: .4byte sub_0801C50C

	thumb_func_start sub_0801C50C
sub_0801C50C: @ 0x0801C50C
	push {lr}
	adds r3, r0, #0
	adds r0, #0xdc
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xa
	bls _0801C524
	ldr r0, _0801C528 @ =sub_0801C52C
	str r0, [r3, #0x78]
_0801C524:
	pop {r0}
	bx r0
	.align 2, 0
_0801C528: .4byte sub_0801C52C

	thumb_func_start sub_0801C52C
sub_0801C52C: @ 0x0801C52C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080395D4
	cmp r0, #0
	beq _0801C54C
	adds r0, r4, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08039600
	ldr r0, _0801C554 @ =sub_0801C558
	str r0, [r4, #0x78]
_0801C54C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801C554: .4byte sub_0801C558

	thumb_func_start sub_0801C558
sub_0801C558: @ 0x0801C558
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	adds r6, r3, #0
	adds r0, #0x60
	ldrh r2, [r0]
	movs r1, #0
	ldr r7, _0801C5B8 @ =gRngVal
	ldr r0, _0801C5BC @ =sub_0801BD68
	mov ip, r0
	movs r5, #0xd4
	lsls r5, r5, #1
	ldr r4, _0801C5C0 @ =gUnk_02020EE0
_0801C570:
	adds r0, r1, #0
	muls r0, r5, r0
	adds r0, r0, r4
	adds r0, #0x60
	ldrh r0, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #3
	bls _0801C570
	ldr r1, [r7]
	ldr r0, _0801C5C4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0801C5C8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r7]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	adds r0, #2
	adds r1, r6, #0
	adds r1, #0xdc
	movs r2, #0
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0xe0
	strh r2, [r0]
	mov r0, ip
	str r0, [r3, #0x78]
	adds r0, r3, #0
	bl _call_via_ip
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C5B8: .4byte gRngVal
_0801C5BC: .4byte sub_0801BD68
_0801C5C0: .4byte gUnk_02020EE0
_0801C5C4: .4byte 0x00196225
_0801C5C8: .4byte 0x3C6EF35F

	thumb_func_start sub_0801C5CC
sub_0801C5CC: @ 0x0801C5CC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0801BBA8
	cmp r0, #0
	beq _0801C5E4
	ldr r0, _0801C5E0 @ =sub_0801C6AC
	str r0, [r4, #0x78]
	b _0801C610
	.align 2, 0
_0801C5E0: .4byte sub_0801C6AC
_0801C5E4:
	movs r2, #0
	adds r5, r4, #0
	adds r5, #0xb4
	adds r3, r4, #0
	adds r3, #0x2f
_0801C5EE:
	lsls r0, r2, #2
	adds r0, r5, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _0801C5FE
	ldrb r1, [r3]
	adds r0, #0x2b
	strb r1, [r0]
_0801C5FE:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #7
	bls _0801C5EE
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_0801C610:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801C618
sub_0801C618: @ 0x0801C618
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	lsrs r1, r1, #1
	movs r0, #1
	ands r1, r0
	adds r0, r4, #0
	bl sub_0801BA18
	cmp r0, #0
	beq _0801C63C
	ldr r0, _0801C638 @ =sub_0801C6C0
	str r0, [r4, #0x78]
	b _0801C644
	.align 2, 0
_0801C638: .4byte sub_0801C6C0
_0801C63C:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_0801C644:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start nullsub_27
nullsub_27: @ 0x0801C64C
	bx lr
	.align 2, 0

	thumb_func_start sub_0801C650
sub_0801C650: @ 0x0801C650
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0801C662
	ldr r0, _0801C668 @ =sub_0801C39C
	str r0, [r2, #0x78]
_0801C662:
	pop {r0}
	bx r0
	.align 2, 0
_0801C668: .4byte sub_0801C39C

	thumb_func_start sub_0801C66C
sub_0801C66C: @ 0x0801C66C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	movs r1, #9
	movs r2, #0xff
	bl sub_08002888
	ldr r0, [r0]
	movs r1, #0xf0
	lsls r1, r1, #0xc
	ands r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #0xc
	bne _0801C69C
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xa
	strb r0, [r1]
	ldr r0, [r4, #8]
	ldr r1, _0801C6A4 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, _0801C6A8 @ =sub_0801C39C
	str r0, [r4, #0x78]
_0801C69C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801C6A4: .4byte 0xFFFFFBFF
_0801C6A8: .4byte sub_0801C39C

	thumb_func_start sub_0801C6AC
sub_0801C6AC: @ 0x0801C6AC
	adds r2, r0, #0
	adds r2, #0x83
	movs r1, #9
	strb r1, [r2]
	ldr r1, _0801C6BC @ =sub_0801BE4C
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_0801C6BC: .4byte sub_0801BE4C

	thumb_func_start sub_0801C6C0
sub_0801C6C0: @ 0x0801C6C0
	adds r2, r0, #0
	adds r2, #0x83
	movs r1, #0xb
	strb r1, [r2]
	ldr r1, [r0, #8]
	movs r2, #7
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0, #8]
	ldr r1, _0801C6D8 @ =sub_0801C6DC
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_0801C6D8: .4byte sub_0801C6DC

	thumb_func_start sub_0801C6DC
sub_0801C6DC: @ 0x0801C6DC
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0801C6EE
	ldr r0, _0801C6F4 @ =sub_0801C6AC
	str r0, [r2, #0x78]
_0801C6EE:
	pop {r0}
	bx r0
	.align 2, 0
_0801C6F4: .4byte sub_0801C6AC

	thumb_func_start sub_0801C6F8
sub_0801C6F8: @ 0x0801C6F8
	push {r4, r5, lr}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _0801C73C @ =sub_0801C79C
	movs r1, #0x88
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r3, _0801C740 @ =nullsub_107
	str r3, [sp]
	movs r3, #4
	bl TaskCreate
	adds r4, r0, #0
	ldr r1, _0801C744 @ =0x00007FFF
	add r0, sp, #4
	strh r1, [r0]
	movs r1, #0
	movs r2, #1
	bl sub_0803D21C
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801C748
	ldrh r0, [r4, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _0801C750
	.align 2, 0
_0801C73C: .4byte sub_0801C79C
_0801C740: .4byte nullsub_107
_0801C744: .4byte 0x00007FFF
_0801C748:
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_0801C750:
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r0, _0801C794 @ =sub_0801D530
	str r0, [r1]
	movs r3, #0x83
	lsls r3, r3, #2
	adds r1, r2, r3
	movs r0, #0x80
	lsls r0, r0, #0x16
	str r0, [r1]
	movs r0, #0x84
	lsls r0, r0, #2
	adds r1, r2, r0
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r1]
	adds r3, #8
	adds r1, r2, r3
	ldr r0, _0801C798 @ =0xFFFFE000
	str r0, [r1]
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r2, r1
	movs r1, #0
	strh r5, [r0]
	adds r3, #6
	adds r0, r2, r3
	strh r1, [r0]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801C794: .4byte sub_0801D530
_0801C798: .4byte 0xFFFFE000

	thumb_func_start sub_0801C79C
sub_0801C79C: @ 0x0801C79C
	push {r4, r5, r6, r7, lr}
	ldr r0, _0801C7B8 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801C7BC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0801C7C4
	.align 2, 0
_0801C7B8: .4byte gCurTask
_0801C7BC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0801C7C4:
	adds r6, r0, #0
	movs r1, #0x83
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801C7F0
	adds r4, r6, #0
	adds r4, #0x40
	adds r0, r4, #0
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0801C7F0
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_0801C7F0:
	movs r1, #0x83
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	subs r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _0801C884
	adds r1, #0x1a
	adds r0, r6, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801C87A
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r4, r6, r0
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0801C822
	movs r0, #0x80
_0801C822:
	strh r0, [r4, #0x14]
	movs r1, #0x86
	lsls r1, r1, #2
	adds r3, r6, r1
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r6, r0
	adds r0, #0x78
	ldr r2, _0801C8D4 @ =gUnk_082DE610
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldrh r0, [r3]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r6, r1
	adds r1, #0x7a
	lsls r0, r0, #1
	adds r2, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0801C87A
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_0801C87A:
	ldr r0, _0801C8D8 @ =0x0000021A
	adds r1, r6, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_0801C884:
	movs r5, #0
	movs r1, #0x83
	lsls r1, r1, #2
	adds r7, r6, r1
_0801C88C:
	movs r1, #1
	lsls r1, r5
	ldr r0, [r7]
	ands r0, r1
	cmp r0, #0
	beq _0801C8B6
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x68
	adds r4, r6, r0
	adds r0, r4, #0
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0801C8B6
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_0801C8B6:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #7
	bls _0801C88C
	movs r1, #0x82
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C8D4: .4byte gUnk_082DE610
_0801C8D8: .4byte 0x0000021A

	thumb_func_start sub_0801C8DC
sub_0801C8DC: @ 0x0801C8DC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0801C964 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0801C968 @ =gBgScrollRegs
	movs r3, #0
	movs r1, #0
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	ldr r2, _0801C96C @ =gBgCntRegs
	ldr r0, _0801C970 @ =0x00001E0A
	strh r0, [r2]
	ldr r0, _0801C974 @ =0x06008000
	str r0, [r4, #4]
	strh r1, [r4, #0xa]
	ldr r0, _0801C978 @ =0x0600F000
	str r0, [r4, #0xc]
	strh r1, [r4, #0x18]
	strh r1, [r4, #0x1a]
	ldr r0, _0801C97C @ =0x00000306
	strh r0, [r4, #0x1c]
	strh r1, [r4, #0x1e]
	strh r1, [r4, #0x20]
	strh r1, [r4, #0x22]
	strh r1, [r4, #0x24]
	movs r0, #0x1e
	strh r0, [r4, #0x26]
	movs r0, #0x14
	strh r0, [r4, #0x28]
	adds r0, r4, #0
	adds r0, #0x2a
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	movs r0, #0x1b
	strh r0, [r4, #0x2e]
	strh r1, [r4, #0x30]
	strh r1, [r4, #0x32]
	ldr r0, _0801C980 @ =0x00007FFF
	strh r0, [r4, #0x34]
	strh r0, [r4, #0x36]
	ldr r0, _0801C984 @ =gUnk_082D7850
	ldr r1, _0801C988 @ =0x00000C18
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #8]
	ldr r1, [r4, #4]
	bl LZ77UnCompVram
	adds r0, r4, #0
	bl sub_08153060
	movs r3, #0x82
	lsls r3, r3, #2
	adds r1, r4, r3
	ldr r0, _0801C98C @ =sub_0801C990
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801C964: .4byte gDispCnt
_0801C968: .4byte gBgScrollRegs
_0801C96C: .4byte gBgCntRegs
_0801C970: .4byte 0x00001E0A
_0801C974: .4byte 0x06008000
_0801C978: .4byte 0x0600F000
_0801C97C: .4byte 0x00000306
_0801C980: .4byte 0x00007FFF
_0801C984: .4byte gUnk_082D7850
_0801C988: .4byte 0x00000C18
_0801C98C: .4byte sub_0801C990

	thumb_func_start sub_0801C990
sub_0801C990: @ 0x0801C990
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r2, _0801CA0C @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0801CA10 @ =gUnk_08D64A24
	ldr r0, _0801CA14 @ =gUnk_089331AC
	ldr r2, _0801CA18 @ =0x00007D46
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r7, [r0]
	ldr r1, _0801CA1C @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	ldr r1, _0801CA20 @ =gBgCntRegs
	ldr r0, _0801CA24 @ =0x00001F03
	strh r0, [r1]
	ldr r0, [r7, #8]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	ldr r4, [r7, #0x18]
	ldr r6, _0801CA28 @ =0x0600F800
	ldrh r0, [r7]
	lsls r0, r0, #4
	adds r4, r4, r0
	movs r5, #0
_0801C9DA:
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0x1e
	bl CpuSet
	ldrh r0, [r7]
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r6, #0x40
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x13
	bls _0801C9DA
	movs r1, #0x82
	lsls r1, r1, #2
	add r1, r8
	ldr r0, _0801CA2C @ =sub_0801CA30
	str r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801CA0C: .4byte gDispCnt
_0801CA10: .4byte gUnk_08D64A24
_0801CA14: .4byte gUnk_089331AC
_0801CA18: .4byte 0x00007D46
_0801CA1C: .4byte gBgScrollRegs
_0801CA20: .4byte gBgCntRegs
_0801CA24: .4byte 0x00001F03
_0801CA28: .4byte 0x0600F800
_0801CA2C: .4byte sub_0801CA30

	thumb_func_start sub_0801CA30
sub_0801CA30: @ 0x0801CA30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r2, _0801CAD0 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r5, _0801CAD4 @ =0x06012000
	mov r8, r5
	adds r0, r6, #0
	adds r0, #0x40
	str r5, [r6, #0x40]
	movs r3, #0
	movs r2, #0
	movs r4, #0x80
	lsls r4, r4, #1
	strh r4, [r0, #0x14]
	ldr r1, _0801CAD8 @ =0x000002D3
	strh r1, [r0, #0xc]
	strb r3, [r0, #0x1a]
	strh r2, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r3, [r0, #0x1f]
	movs r1, #0x78
	strh r1, [r0, #0x10]
	movs r1, #0x50
	strh r1, [r0, #0x12]
	movs r1, #0x80
	lsls r1, r1, #0xb
	str r1, [r0, #8]
	bl sub_08155128
	movs r0, #0x83
	lsls r0, r0, #2
	adds r1, r6, r0
	ldr r0, [r1]
	orrs r0, r4
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #3
	add r8, r0
	movs r5, #0
	mov r7, sp
	ldr r1, _0801CADC @ =gUnk_082DE620
	mov sl, r1
_0801CA9E:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x68
	adds r2, r6, r0
	movs r3, #0x86
	lsls r3, r3, #2
	adds r0, r6, r3
	ldrh r0, [r0]
	cmp r5, r0
	bne _0801CAE0
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r7]
	subs r3, #4
	adds r0, r6, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r7, #2]
	movs r0, #0x40
	b _0801CAEA
	.align 2, 0
_0801CAD0: .4byte gDispCnt
_0801CAD4: .4byte 0x06012000
_0801CAD8: .4byte 0x000002D3
_0801CADC: .4byte gUnk_082DE620
_0801CAE0:
	movs r0, #0x78
	strh r0, [r7]
	movs r0, #0x50
	strh r0, [r7, #2]
	movs r0, #0xc0
_0801CAEA:
	mov r1, r8
	str r1, [r2]
	strh r0, [r2, #0x14]
	lsls r4, r5, #1
	adds r1, r4, r5
	lsls r1, r1, #1
	mov r3, sl
	adds r0, r1, r3
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	ldr r0, _0801CC20 @ =gUnk_082DE622
	adds r1, r1, r0
	ldrh r0, [r1]
	strb r0, [r2, #0x1a]
	movs r1, #0
	strh r1, [r2, #0x16]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	movs r3, #1
	mov sb, r3
	mov r0, sb
	strb r0, [r2, #0x1f]
	ldrh r0, [r7]
	strh r0, [r2, #0x10]
	ldrh r0, [r7, #2]
	strh r0, [r2, #0x12]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r2, #8]
	adds r0, r2, #0
	bl sub_08155128
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_08019DA8
	cmp r0, #0
	bne _0801CB46
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrh r0, [r0]
	cmp r5, r0
	bne _0801CB56
_0801CB46:
	movs r3, #0x83
	lsls r3, r3, #2
	adds r2, r6, r3
	mov r1, sb
	lsls r1, r5
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
_0801CB56:
	adds r0, r4, r5
	lsls r0, r0, #1
	ldr r1, _0801CC24 @ =gUnk_082DE624
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	add r8, r0
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #7
	bls _0801CA9E
	movs r3, #0xd4
	lsls r3, r3, #1
	adds r0, r6, r3
	mov r5, r8
	str r5, [r0]
	movs r2, #0
	movs r3, #0
	movs r1, #0x80
	strh r1, [r0, #0x14]
	ldr r1, _0801CC28 @ =0x000002B3
	strh r1, [r0, #0xc]
	strb r2, [r0, #0x1a]
	strh r3, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	movs r1, #2
	strb r1, [r0, #0x1f]
	movs r1, #0x78
	strh r1, [r0, #0x10]
	movs r1, #0x50
	strh r1, [r0, #0x12]
	movs r1, #0x80
	lsls r1, r1, #0xb
	str r1, [r0, #8]
	bl sub_08155128
	movs r0, #0x83
	lsls r0, r0, #2
	adds r2, r6, r0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r2]
	add r8, r1
	subs r1, #0x30
	adds r0, r6, r1
	mov r3, r8
	str r3, [r0]
	movs r5, #0x90
	lsls r5, r5, #3
	add r8, r5
	movs r1, #0
	movs r0, #0xea
	lsls r0, r0, #1
	adds r2, r6, r0
_0801CBCE:
	lsls r0, r1, #2
	adds r0, r2, r0
	mov r3, r8
	str r3, [r0]
	movs r5, #0x20
	add r8, r5
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #7
	bls _0801CBCE
	movs r1, #0
	ldr r4, _0801CC2C @ =sub_0801D54C
	movs r0, #0xfa
	lsls r0, r0, #1
	adds r2, r6, r0
	movs r3, #0x80
	lsls r3, r3, #2
_0801CBF2:
	lsls r0, r1, #2
	adds r0, r2, r0
	mov r5, r8
	str r5, [r0]
	add r8, r3
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #3
	bls _0801CBF2
	movs r1, #0x82
	lsls r1, r1, #2
	adds r0, r6, r1
	str r4, [r0]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801CC20: .4byte gUnk_082DE622
_0801CC24: .4byte gUnk_082DE624
_0801CC28: .4byte 0x000002B3
_0801CC2C: .4byte sub_0801D54C

	thumb_func_start sub_0801CC30
sub_0801CC30: @ 0x0801CC30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov sl, r0
	ldr r0, _0801CD74 @ =gUnk_082D7850
	ldr r1, _0801CD78 @ =0x00000C18
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r1, _0801CD7C @ =gUnk_08D64A24
	ldr r0, _0801CD80 @ =gUnk_089331AC
	ldr r3, _0801CD84 @ =0x00007D46
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r0, [r2, #0x10]
	movs r1, #0
	movs r2, #0x60
	bl sub_0803D21C
	ldr r0, [r4, #0x10]
	ldrb r1, [r4, #0x14]
	ldrh r2, [r4, #0x16]
	bl sub_0803D21C
	movs r0, #7
	bl sub_0803C95C
	ldrh r2, [r0, #8]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r3, #0
	movs r3, #0
	mov sb, r3
	movs r4, #0
	orrs r1, r2
	strh r1, [r0, #8]
	ldr r1, _0801CD88 @ =0x0000FFFF
	strh r1, [r0, #4]
	movs r1, #1
	rsbs r1, r1, #0
	strh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	mov r8, r0
	str r0, [sp]
	mov r1, sp
	ldr r0, _0801CD8C @ =0x000002D3
	strh r0, [r1, #0xc]
	mov r0, sp
	mov r1, sb
	strb r1, [r0, #0x1a]
	mov r1, sp
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0x16]
	movs r5, #0x10
	strb r5, [r0, #0x1c]
	mov r2, sb
	strb r2, [r0, #0x1f]
	movs r6, #0x80
	lsls r6, r6, #0xc
	str r6, [sp, #8]
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	mov r3, r8
	str r3, [sp]
	mov r1, sp
	ldr r2, _0801CD90 @ =gUnk_082DE620
	ldrh r0, [r2]
	strh r0, [r1, #0xc]
	ldrh r0, [r2, #2]
	strb r0, [r1, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0x16]
	strb r5, [r0, #0x1c]
	movs r7, #1
	strb r7, [r0, #0x1f]
	str r6, [sp, #8]
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	mov r0, r8
	str r0, [sp]
	mov r1, sp
	ldr r0, _0801CD94 @ =0x000002B3
	strh r0, [r1, #0xc]
	mov r0, sp
	mov r1, sb
	strb r1, [r0, #0x1a]
	mov r1, sp
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0x16]
	strb r5, [r0, #0x1c]
	movs r0, #2
	strb r0, [r1, #0x1f]
	str r6, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	add r0, sp, #0x28
	ldr r2, _0801CD98 @ =0x00007FFF
	adds r1, r2, #0
	strh r1, [r0]
	ldr r4, _0801CD9C @ =gBgPalette
	ldr r2, _0801CDA0 @ =0x01000001
	adds r1, r4, #0
	bl CpuSet
	ldr r3, _0801CDA4 @ =gUnk_03002440
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _0801CDA8
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_08158334
	b _0801CDB8
	.align 2, 0
_0801CD74: .4byte gUnk_082D7850
_0801CD78: .4byte 0x00000C18
_0801CD7C: .4byte gUnk_08D64A24
_0801CD80: .4byte gUnk_089331AC
_0801CD84: .4byte 0x00007D46
_0801CD88: .4byte 0x0000FFFF
_0801CD8C: .4byte 0x000002D3
_0801CD90: .4byte gUnk_082DE620
_0801CD94: .4byte 0x000002B3
_0801CD98: .4byte 0x00007FFF
_0801CD9C: .4byte gBgPalette
_0801CDA0: .4byte 0x01000001
_0801CDA4: .4byte gUnk_03002440
_0801CDA8:
	ldr r0, _0801CDDC @ =0x040000D4
	str r4, [r0]
	str r4, [r0, #4]
	ldr r1, _0801CDE0 @ =0x80000001
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	orrs r2, r7
	str r2, [r3]
_0801CDB8:
	movs r1, #0x87
	lsls r1, r1, #2
	add r1, sl
	movs r0, #0
	strh r0, [r1]
	movs r1, #0x82
	lsls r1, r1, #2
	add r1, sl
	ldr r0, _0801CDE4 @ =sub_0801D6A4
	str r0, [r1]
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801CDDC: .4byte 0x040000D4
_0801CDE0: .4byte 0x80000001
_0801CDE4: .4byte sub_0801D6A4

	thumb_func_start sub_0801CDE8
sub_0801CDE8: @ 0x0801CDE8
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r1, [r0]
	movs r0, #0xa0
	lsls r0, r0, #7
	subs r0, r0, r1
	lsls r0, r0, #0xc
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	bgt _0801CE08
	movs r1, #0x20
	b _0801CE12
_0801CE08:
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	ble _0801CE12
	adds r1, r2, #0
_0801CE12:
	movs r5, #0x85
	lsls r5, r5, #2
	adds r4, r3, r5
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r4]
	adds r1, r1, r0
	str r1, [r4]
	ldr r0, _0801CE6C @ =0x00004FFF
	cmp r1, r0
	ble _0801CE36
	adds r0, #1
	str r0, [r4]
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, _0801CE70 @ =sub_0801D568
	str r0, [r1]
_0801CE36:
	movs r1, #0x86
	lsls r1, r1, #2
	adds r2, r3, r1
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r3, r0
	movs r5, #0x84
	lsls r5, r5, #2
	adds r1, r3, r5
	ldr r1, [r1]
	asrs r1, r1, #8
	adds r0, #0x78
	strh r1, [r0]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r3, r0
	ldr r1, [r4]
	asrs r1, r1, #8
	adds r0, #0x7a
	strh r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801CE6C: .4byte 0x00004FFF
_0801CE70: .4byte sub_0801D568

	thumb_func_start sub_0801CE74
sub_0801CE74: @ 0x0801CE74
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_08019D5C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #6
	bls _0801CE90
	ldr r0, _0801CE8C @ =0x00000213
	bl m4aSongNumStart
	b _0801CE96
	.align 2, 0
_0801CE8C: .4byte 0x00000213
_0801CE90:
	ldr r0, _0801CEF4 @ =0x00000212
	bl m4aSongNumStart
_0801CE96:
	movs r0, #7
	bl sub_0803CA20
	adds r4, r0, #0
	ldrh r1, [r4, #8]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r0, r2, #0
	movs r6, #0
	movs r7, #0
	orrs r0, r1
	strh r0, [r4, #8]
	strh r7, [r4, #6]
	movs r0, #6
	strh r0, [r4, #4]
	bl sub_08019D5C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #6
	bls _0801CEC8
	ldrh r0, [r4, #4]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #4]
_0801CEC8:
	movs r0, #0x83
	lsls r0, r0, #2
	adds r2, r5, r0
	ldr r0, [r2]
	ldr r1, _0801CEF8 @ =0xFFFFFDFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r2]
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r5, r1
	strh r7, [r0]
	movs r2, #0x82
	lsls r2, r2, #2
	adds r1, r5, r2
	ldr r0, _0801CEFC @ =sub_0801D70C
	str r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801CEF4: .4byte 0x00000212
_0801CEF8: .4byte 0xFFFFFDFF
_0801CEFC: .4byte sub_0801D70C

	thumb_func_start sub_0801CF00
sub_0801CF00: @ 0x0801CF00
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08019D5C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #6
	bls _0801CF52
	movs r0, #0x83
	lsls r0, r0, #2
	adds r2, r4, r0
	ldr r0, [r2]
	ldr r1, _0801CF6C @ =0xFFFFFF00
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r2]
	adds r1, r4, #0
	adds r1, #0x4c
	ldr r0, _0801CF70 @ =0x000002D3
	strh r0, [r1]
	adds r1, #0xe
	movs r0, #1
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r4, #0x48]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x48]
	adds r0, r4, #0
	adds r0, #0x40
	bl sub_08155128
	ldr r0, [r4, #0x48]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r4, #0x48]
_0801CF52:
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r4, r0
	ldr r0, _0801CF74 @ =sub_0801D748
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801CF6C: .4byte 0xFFFFFF00
_0801CF70: .4byte 0x000002D3
_0801CF74: .4byte sub_0801D748

	thumb_func_start sub_0801CF78
sub_0801CF78: @ 0x0801CF78
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r0, #0
	movs r0, #7
	bl sub_0803C95C
	adds r4, r0, #0
	ldrh r1, [r4, #8]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r0, r2, #0
	movs r6, #0
	movs r5, #0
	orrs r0, r1
	strh r0, [r4, #8]
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r4, #0xa]
	strh r5, [r4, #6]
	movs r0, #6
	strh r0, [r4, #4]
	bl sub_08019D5C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #6
	bls _0801CFB8
	ldrh r0, [r4, #4]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #4]
_0801CFB8:
	bl sub_08019D5C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #6
	bls _0801D00C
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp]
	mov r1, sp
	ldr r0, _0801D008 @ =0x000002D3
	strh r0, [r1, #0xc]
	movs r0, #1
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	strh r5, [r0, #0x14]
	strh r5, [r0, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r0, sp
	strb r6, [r0, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	b _0801D04C
	.align 2, 0
_0801D008: .4byte 0x000002D3
_0801D00C:
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp]
	mov r1, sp
	ldr r0, _0801D078 @ =0x000002D3
	strh r0, [r1, #0xc]
	mov r0, sp
	strb r6, [r0, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	strh r5, [r0, #0x14]
	strh r5, [r0, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r0, sp
	strb r6, [r0, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
_0801D04C:
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x83
	lsls r0, r0, #2
	adds r2, r7, r0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r2]
	movs r2, #0x82
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, _0801D07C @ =sub_0801D774
	str r0, [r1]
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801D078: .4byte 0x000002D3
_0801D07C: .4byte sub_0801D774

	thumb_func_start sub_0801D080
sub_0801D080: @ 0x0801D080
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r5, r0, #0
	bl sub_08019D5C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #6
	bls _0801D140
	movs r1, #0xea
	lsls r1, r1, #2
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r3, [r0]
	movs r7, #0x84
	lsls r7, r7, #2
	adds r0, r5, r7
	ldr r0, [r0]
	str r0, [sp]
	adds r2, #0x44
	adds r0, r5, r2
	ldr r0, [r0]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	adds r0, r5, #0
	movs r2, #0
	bl sub_0801D398
	movs r6, #0
	adds r7, r7, r5
	mov sb, r7
	ldr r0, _0801D13C @ =gUnk_082DE670
	adds r0, #2
	mov sl, r0
	movs r1, #0x85
	lsls r1, r1, #2
	adds r1, r1, r5
	mov r8, r1
_0801D0DE:
	lsls r2, r6, #2
	movs r7, #0xea
	lsls r7, r7, #1
	adds r0, r5, r7
	adds r0, r0, r2
	ldr r3, [r0]
	ldr r0, _0801D13C @ =gUnk_082DE670
	adds r4, r2, r0
	movs r7, #0
	ldrsh r1, [r4, r7]
	mov r7, sb
	ldr r0, [r7]
	adds r0, r0, r1
	str r0, [sp]
	add r2, sl
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r7, r8
	ldr r0, [r7]
	adds r0, r0, r1
	str r0, [sp, #4]
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x15
	str r0, [sp, #8]
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x15
	str r0, [sp, #0xc]
	movs r0, #8
	str r0, [sp, #0x10]
	adds r0, r5, #0
	movs r1, #0xea
	lsls r1, r1, #2
	movs r2, #1
	bl sub_0801D220
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #7
	bls _0801D0DE
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0
	b _0801D148
	.align 2, 0
_0801D13C: .4byte gUnk_082DE670
_0801D140:
	movs r2, #0x87
	lsls r2, r2, #2
	adds r1, r5, r2
	ldr r0, _0801D164 @ =0x00002710
_0801D148:
	strh r0, [r1]
	movs r7, #0x82
	lsls r7, r7, #2
	adds r1, r5, r7
	ldr r0, _0801D168 @ =sub_0801D7B0
	str r0, [r1]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801D164: .4byte 0x00002710
_0801D168: .4byte sub_0801D7B0

	thumb_func_start sub_0801D16C
sub_0801D16C: @ 0x0801D16C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	movs r0, #0x87
	lsls r0, r0, #2
	adds r0, r0, r7
	mov r8, r0
	ldrh r2, [r0]
	movs r1, #0xf
	mov ip, r1
	mov r3, ip
	ands r3, r2
	mov ip, r3
	cmp r3, #0
	bne _0801D1EA
	lsrs r2, r2, #4
	movs r0, #7
	adds r4, r2, #0
	ands r4, r0
	ldr r1, _0801D214 @ =0x000003A2
	movs r0, #3
	ands r2, r0
	lsls r2, r2, #2
	movs r5, #0xfa
	lsls r5, r5, #1
	adds r0, r7, r5
	adds r0, r0, r2
	ldr r3, [r0]
	movs r6, #0x84
	lsls r6, r6, #2
	adds r6, r6, r7
	mov sb, r6
	ldr r2, _0801D218 @ =gUnk_082DE650
	lsls r4, r4, #2
	adds r0, r4, r2
	movs r6, #0
	ldrsh r5, [r0, r6]
	mov r6, sb
	ldr r0, [r6]
	adds r0, r0, r5
	str r0, [sp]
	movs r5, #0x85
	lsls r5, r5, #2
	adds r0, r7, r5
	adds r2, #2
	adds r4, r4, r2
	movs r6, #0
	ldrsh r2, [r4, r6]
	ldr r0, [r0]
	adds r0, r0, r2
	str r0, [sp, #4]
	mov r0, ip
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	adds r0, r7, #0
	movs r2, #0
	bl sub_0801D398
_0801D1EA:
	mov r1, r8
	ldrh r0, [r1]
	adds r1, r0, #1
	mov r2, r8
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x78
	bls _0801D206
	movs r3, #0x82
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r0, _0801D21C @ =sub_0801D584
	str r0, [r1]
_0801D206:
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801D214: .4byte 0x000003A2
_0801D218: .4byte gUnk_082DE650
_0801D21C: .4byte sub_0801D584

	thumb_func_start sub_0801D220
sub_0801D220: @ 0x0801D220
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	str r3, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x34]
	ldr r4, [sp, #0x38]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	ldr r0, _0801D278 @ =sub_0801D2E0
	ldr r2, _0801D27C @ =0x00001001
	movs r1, #0
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #4
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801D280
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0801D288
	.align 2, 0
_0801D278: .4byte sub_0801D2E0
_0801D27C: .4byte 0x00001001
_0801D280:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0801D288:
	mov r0, sl
	str r0, [r4, #0x28]
	ldr r2, [sp, #0x28]
	str r2, [r4, #0x2c]
	ldr r0, [sp, #0x2c]
	str r0, [r4, #0x30]
	movs r1, #0
	strh r7, [r4, #0x34]
	strh r6, [r4, #0x36]
	strh r5, [r4, #0x38]
	ldr r2, [sp, #4]
	str r2, [r4]
	strh r1, [r4, #0x14]
	mov r0, sb
	strh r0, [r4, #0xc]
	mov r2, r8
	strb r2, [r4, #0x1a]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r0, #0xf
	strb r0, [r4, #0x1f]
	ldr r2, [sp, #0x28]
	asrs r0, r2, #8
	strh r0, [r4, #0x10]
	ldr r2, [sp, #0x2c]
	asrs r0, r2, #8
	strh r0, [r4, #0x12]
	str r1, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801D2E0
sub_0801D2E0: @ 0x0801D2E0
	push {r4, r5, lr}
	ldr r0, _0801D2FC @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801D300
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0801D308
	.align 2, 0
_0801D2FC: .4byte gCurTask
_0801D300:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0801D308:
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r0, [r4, #0x2c]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0801D326
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_0801D326:
	adds r0, r4, #0
	bl sub_0815604C
	movs r0, #0x34
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x2c]
	adds r0, r0, r1
	str r0, [r4, #0x2c]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x30]
	adds r0, r0, r1
	str r0, [r4, #0x30]
	ldrh r0, [r4, #0x38]
	cmp r0, #0
	beq _0801D350
	subs r0, #1
	strh r0, [r4, #0x38]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0801D382
_0801D350:
	ldrh r0, [r5, #0x10]
	adds r0, #0x40
	lsls r0, r0, #0x10
	movs r1, #0xb8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0801D382
	movs r0, #0x12
	ldrsh r1, [r5, r0]
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r1, r0
	blt _0801D382
	cmp r1, #0xe0
	bgt _0801D382
	ldr r0, [r4, #0x28]
	movs r1, #0x83
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x14
	ands r0, r1
	cmp r0, #0
	beq _0801D38A
_0801D382:
	ldr r0, _0801D390 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801D394 @ =sub_0801D5F0
	str r0, [r1, #8]
_0801D38A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D390: .4byte gCurTask
_0801D394: .4byte sub_0801D5F0

	thumb_func_start sub_0801D398
sub_0801D398: @ 0x0801D398
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	str r3, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x34]
	ldr r4, [sp, #0x38]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	ldr r0, _0801D3F0 @ =sub_0801D458
	ldr r2, _0801D3F4 @ =0x00001001
	movs r1, #0
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #4
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801D3F8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0801D400
	.align 2, 0
_0801D3F0: .4byte sub_0801D458
_0801D3F4: .4byte 0x00001001
_0801D3F8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0801D400:
	mov r0, sl
	str r0, [r4, #0x28]
	ldr r2, [sp, #0x28]
	str r2, [r4, #0x2c]
	ldr r0, [sp, #0x2c]
	str r0, [r4, #0x30]
	movs r1, #0
	strh r7, [r4, #0x34]
	strh r6, [r4, #0x36]
	strh r5, [r4, #0x38]
	ldr r2, [sp, #4]
	str r2, [r4]
	strh r1, [r4, #0x14]
	mov r0, sb
	strh r0, [r4, #0xc]
	mov r2, r8
	strb r2, [r4, #0x1a]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r0, #0xf
	strb r0, [r4, #0x1f]
	ldr r2, [sp, #0x28]
	asrs r0, r2, #8
	strh r0, [r4, #0x10]
	ldr r2, [sp, #0x2c]
	asrs r0, r2, #8
	strh r0, [r4, #0x12]
	str r1, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801D458
sub_0801D458: @ 0x0801D458
	push {r4, r5, lr}
	ldr r0, _0801D474 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801D478
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0801D480
	.align 2, 0
_0801D474: .4byte gCurTask
_0801D478:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0801D480:
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r0, [r4, #0x2c]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0801D4C0
	ldrh r0, [r4, #0x38]
	cmp r0, #0
	beq _0801D4BC
	subs r0, #1
	strh r0, [r4, #0x38]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801D4BC
	ldr r0, _0801D4B4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801D4B8 @ =sub_0801D604
	str r0, [r1, #8]
	b _0801D4C0
	.align 2, 0
_0801D4B4: .4byte gCurTask
_0801D4B8: .4byte sub_0801D604
_0801D4BC:
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_0801D4C0:
	adds r0, r5, #0
	bl sub_0815604C
	movs r0, #0x34
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x2c]
	adds r0, r0, r1
	str r0, [r4, #0x2c]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x30]
	adds r0, r0, r1
	str r0, [r4, #0x30]
	ldrh r0, [r5, #0x10]
	adds r0, #0x40
	lsls r0, r0, #0x10
	movs r1, #0xb8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0801D4F8
	movs r0, #0x12
	ldrsh r1, [r5, r0]
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r1, r0
	blt _0801D4F8
	cmp r1, #0xe0
	ble _0801D500
_0801D4F8:
	ldr r0, _0801D524 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801D528 @ =sub_0801D604
	str r0, [r1, #8]
_0801D500:
	ldr r0, [r4, #0x28]
	movs r1, #0x83
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x14
	ands r0, r1
	cmp r0, #0
	beq _0801D51C
	ldr r0, _0801D524 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801D528 @ =sub_0801D604
	str r0, [r1, #8]
_0801D51C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D524: .4byte gCurTask
_0801D528: .4byte sub_0801D604

	thumb_func_start nullsub_107
nullsub_107: @ 0x0801D52C
	bx lr
	.align 2, 0

	thumb_func_start sub_0801D530
sub_0801D530: @ 0x0801D530
	ldr r2, _0801D544 @ =gDispCnt
	movs r1, #0x40
	strh r1, [r2]
	movs r1, #0x82
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, _0801D548 @ =sub_0801C8DC
	str r1, [r0]
	bx lr
	.align 2, 0
_0801D544: .4byte gDispCnt
_0801D548: .4byte sub_0801C8DC

	thumb_func_start sub_0801D54C
sub_0801D54C: @ 0x0801D54C
	adds r2, r0, #0
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r0, _0801D564 @ =sub_0801D678
	str r0, [r1]
	bx lr
	.align 2, 0
_0801D564: .4byte sub_0801D678

	thumb_func_start sub_0801D568
sub_0801D568: @ 0x0801D568
	adds r2, r0, #0
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r0, _0801D580 @ =sub_0801D6E0
	str r0, [r1]
	bx lr
	.align 2, 0
_0801D580: .4byte sub_0801D6E0

	thumb_func_start sub_0801D584
sub_0801D584: @ 0x0801D584
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0801D5E4 @ =0x00007FFF
	mov r0, sp
	strh r1, [r0]
	movs r0, #7
	bl sub_0803CA20
	ldrh r2, [r0, #8]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r3, #0
	movs r4, #0
	orrs r1, r2
	strh r1, [r0, #8]
	ldr r1, _0801D5E8 @ =0x0000FFFF
	strh r1, [r0, #4]
	movs r1, #1
	rsbs r1, r1, #0
	strh r1, [r0, #6]
	mov r0, sp
	movs r1, #0
	movs r2, #1
	bl sub_0803D21C
	movs r0, #0x83
	lsls r0, r0, #2
	adds r2, r5, r0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r2]
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r5, r1
	strh r4, [r0]
	movs r3, #0x82
	lsls r3, r3, #2
	adds r1, r5, r3
	ldr r0, _0801D5EC @ =sub_0801D8C8
	str r0, [r1]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D5E4: .4byte 0x00007FFF
_0801D5E8: .4byte 0x0000FFFF
_0801D5EC: .4byte sub_0801D8C8

	thumb_func_start sub_0801D5F0
sub_0801D5F0: @ 0x0801D5F0
	push {lr}
	ldr r0, _0801D600 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_0801D600: .4byte gCurTask

	thumb_func_start sub_0801D604
sub_0801D604: @ 0x0801D604
	push {lr}
	ldr r0, _0801D614 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_0801D614: .4byte gCurTask

	thumb_func_start sub_0801D618
sub_0801D618: @ 0x0801D618
	push {lr}
	movs r0, #0
	bl sub_0801C6F8
	pop {r0}
	bx r0

	thumb_func_start sub_0801D624
sub_0801D624: @ 0x0801D624
	push {lr}
	movs r0, #1
	bl sub_0801C6F8
	pop {r0}
	bx r0

	thumb_func_start sub_0801D630
sub_0801D630: @ 0x0801D630
	push {lr}
	movs r0, #2
	bl sub_0801C6F8
	pop {r0}
	bx r0

	thumb_func_start sub_0801D63C
sub_0801D63C: @ 0x0801D63C
	push {lr}
	movs r0, #3
	bl sub_0801C6F8
	pop {r0}
	bx r0

	thumb_func_start sub_0801D648
sub_0801D648: @ 0x0801D648
	push {lr}
	movs r0, #4
	bl sub_0801C6F8
	pop {r0}
	bx r0

	thumb_func_start sub_0801D654
sub_0801D654: @ 0x0801D654
	push {lr}
	movs r0, #5
	bl sub_0801C6F8
	pop {r0}
	bx r0

	thumb_func_start sub_0801D660
sub_0801D660: @ 0x0801D660
	push {lr}
	movs r0, #6
	bl sub_0801C6F8
	pop {r0}
	bx r0

	thumb_func_start sub_0801D66C
sub_0801D66C: @ 0x0801D66C
	push {lr}
	movs r0, #7
	bl sub_0801C6F8
	pop {r0}
	bx r0

	thumb_func_start sub_0801D678
sub_0801D678: @ 0x0801D678
	push {lr}
	adds r3, r0, #0
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #1
	bls _0801D69A
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, _0801D6A0 @ =sub_0801CC30
	str r0, [r1]
_0801D69A:
	pop {r0}
	bx r0
	.align 2, 0
_0801D6A0: .4byte sub_0801CC30

	thumb_func_start sub_0801D6A4
sub_0801D6A4: @ 0x0801D6A4
	push {lr}
	adds r3, r0, #0
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x20
	bls _0801D6D4
	movs r0, #0x83
	lsls r0, r0, #2
	adds r2, r3, r0
	ldr r0, [r2]
	ldr r1, _0801D6D8 @ =0xDFFFFFFF
	ands r0, r1
	str r0, [r2]
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, _0801D6DC @ =sub_0801D8F4
	str r0, [r1]
_0801D6D4:
	pop {r0}
	bx r0
	.align 2, 0
_0801D6D8: .4byte 0xDFFFFFFF
_0801D6DC: .4byte sub_0801D8F4

	thumb_func_start sub_0801D6E0
sub_0801D6E0: @ 0x0801D6E0
	push {lr}
	adds r3, r0, #0
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #1
	bls _0801D702
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, _0801D708 @ =sub_0801CE74
	str r0, [r1]
_0801D702:
	pop {r0}
	bx r0
	.align 2, 0
_0801D708: .4byte sub_0801CE74

	thumb_func_start sub_0801D70C
sub_0801D70C: @ 0x0801D70C
	push {lr}
	adds r3, r0, #0
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r3, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bls _0801D73C
	movs r0, #0x83
	lsls r0, r0, #2
	adds r2, r3, r0
	ldr r0, [r2]
	ldr r1, _0801D740 @ =0xDFFFFFFF
	ands r0, r1
	str r0, [r2]
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, _0801D744 @ =sub_0801CF00
	str r0, [r1]
_0801D73C:
	pop {r0}
	bx r0
	.align 2, 0
_0801D740: .4byte 0xDFFFFFFF
_0801D744: .4byte sub_0801CF00

	thumb_func_start sub_0801D748
sub_0801D748: @ 0x0801D748
	push {lr}
	adds r3, r0, #0
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x2d
	bls _0801D76A
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, _0801D770 @ =sub_0801CF78
	str r0, [r1]
_0801D76A:
	pop {r0}
	bx r0
	.align 2, 0
_0801D770: .4byte sub_0801CF78

	thumb_func_start sub_0801D774
sub_0801D774: @ 0x0801D774
	push {lr}
	adds r3, r0, #0
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r3, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3f
	bls _0801D7A4
	movs r0, #0x83
	lsls r0, r0, #2
	adds r2, r3, r0
	ldr r0, [r2]
	ldr r1, _0801D7A8 @ =0xDFFFFFFF
	ands r0, r1
	str r0, [r2]
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, _0801D7AC @ =sub_0801D910
	str r0, [r1]
_0801D7A4:
	pop {r0}
	bx r0
	.align 2, 0
_0801D7A8: .4byte 0xDFFFFFFF
_0801D7AC: .4byte sub_0801D910

	thumb_func_start sub_0801D7B0
sub_0801D7B0: @ 0x0801D7B0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x28
	bls _0801D7EE
	bl sub_08019D5C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #6
	bls _0801D7E4
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r4, r0
	ldr r0, _0801D7E0 @ =sub_0801D870
	b _0801D7EC
	.align 2, 0
_0801D7E0: .4byte sub_0801D870
_0801D7E4:
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r4, r0
	ldr r0, _0801D7F4 @ =sub_0801D7F8
_0801D7EC:
	str r0, [r1]
_0801D7EE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801D7F4: .4byte sub_0801D7F8

	thumb_func_start sub_0801D7F8
sub_0801D7F8: @ 0x0801D7F8
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0x84
	lsls r0, r0, #2
	adds r3, r5, r0
	ldr r2, _0801D864 @ =gUnk_082DE610
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrh r1, [r0]
	lsls r1, r1, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r4, [r3]
	subs r4, r4, r0
	movs r0, #0x85
	lsls r0, r0, #2
	adds r3, r5, r0
	adds r2, #1
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #8
	ldr r2, [r3]
	adds r2, r2, r0
	ldr r1, _0801D868 @ =0x000003A2
	movs r3, #0xfa
	lsls r3, r3, #1
	adds r0, r5, r3
	ldr r3, [r0]
	str r4, [sp]
	str r2, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	adds r0, r5, #0
	movs r2, #0
	bl sub_0801D398
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, _0801D86C @ =sub_0801D92C
	str r0, [r1]
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D864: .4byte gUnk_082DE610
_0801D868: .4byte 0x000003A2
_0801D86C: .4byte sub_0801D92C

	thumb_func_start sub_0801D870
sub_0801D870: @ 0x0801D870
	adds r2, r0, #0
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r0, _0801D888 @ =sub_0801D88C
	str r0, [r1]
	bx lr
	.align 2, 0
_0801D888: .4byte sub_0801D88C

	thumb_func_start sub_0801D88C
sub_0801D88C: @ 0x0801D88C
	push {lr}
	adds r3, r0, #0
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xa
	bls _0801D8AE
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, _0801D8B4 @ =sub_0801D8B8
	str r0, [r1]
_0801D8AE:
	pop {r0}
	bx r0
	.align 2, 0
_0801D8B4: .4byte sub_0801D8B8

	thumb_func_start sub_0801D8B8
sub_0801D8B8: @ 0x0801D8B8
	movs r1, #0x82
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, _0801D8C4 @ =sub_0801D16C
	str r1, [r0]
	bx lr
	.align 2, 0
_0801D8C4: .4byte sub_0801D16C

	thumb_func_start sub_0801D8C8
sub_0801D8C8: @ 0x0801D8C8
	push {lr}
	adds r3, r0, #0
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x20
	bls _0801D8EA
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, _0801D8F0 @ =sub_0801D948
	str r0, [r1]
_0801D8EA:
	pop {r0}
	bx r0
	.align 2, 0
_0801D8F0: .4byte sub_0801D948

	thumb_func_start sub_0801D8F4
sub_0801D8F4: @ 0x0801D8F4
	adds r2, r0, #0
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r0, _0801D90C @ =sub_0801D9D4
	str r0, [r1]
	bx lr
	.align 2, 0
_0801D90C: .4byte sub_0801D9D4

	thumb_func_start sub_0801D910
sub_0801D910: @ 0x0801D910
	adds r2, r0, #0
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r0, _0801D928 @ =sub_0801DA00
	str r0, [r1]
	bx lr
	.align 2, 0
_0801D928: .4byte sub_0801DA00

	thumb_func_start sub_0801D92C
sub_0801D92C: @ 0x0801D92C
	adds r2, r0, #0
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r0, _0801D944 @ =sub_0801DA2C
	str r0, [r1]
	bx lr
	.align 2, 0
_0801D944: .4byte sub_0801DA2C

	thumb_func_start sub_0801D948
sub_0801D948: @ 0x0801D948
	push {lr}
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_08019D90
	ldr r0, _0801D98C @ =gUnk_0203AD10
	ldr r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0801D9B6
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _0801D9A4
	ldr r0, _0801D990 @ =gUnk_0203AD3C
	ldr r1, _0801D994 @ =gUnk_0203AD24
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0801D99C
	ldr r2, _0801D998 @ =gUnk_0203AD48
	ldrh r0, [r2]
	movs r1, #0
	cmp r0, #2
	bhi _0801D982
	adds r1, r0, #0
_0801D982:
	movs r0, #1
	bl sub_0800ACD4
	b _0801D9B6
	.align 2, 0
_0801D98C: .4byte gUnk_0203AD10
_0801D990: .4byte gUnk_0203AD3C
_0801D994: .4byte gUnk_0203AD24
_0801D998: .4byte gUnk_0203AD48
_0801D99C:
	movs r0, #8
	bl sub_08031CE4
	b _0801D9B6
_0801D9A4:
	ldr r2, _0801D9CC @ =gUnk_0203AD48
	ldrh r0, [r2]
	movs r1, #0
	cmp r0, #2
	bhi _0801D9B0
	adds r1, r0, #0
_0801D9B0:
	movs r0, #1
	bl sub_0800ACD4
_0801D9B6:
	bl sub_080027A8
	bl sub_08039670
	ldr r0, _0801D9D0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_0801D9CC: .4byte gUnk_0203AD48
_0801D9D0: .4byte gCurTask

	thumb_func_start sub_0801D9D4
sub_0801D9D4: @ 0x0801D9D4
	push {lr}
	adds r3, r0, #0
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xa
	bls _0801D9F6
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, _0801D9FC @ =sub_0801CDE8
	str r0, [r1]
_0801D9F6:
	pop {r0}
	bx r0
	.align 2, 0
_0801D9FC: .4byte sub_0801CDE8

	thumb_func_start sub_0801DA00
sub_0801DA00: @ 0x0801DA00
	push {lr}
	adds r3, r0, #0
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xa
	bls _0801DA22
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, _0801DA28 @ =sub_0801D080
	str r0, [r1]
_0801DA22:
	pop {r0}
	bx r0
	.align 2, 0
_0801DA28: .4byte sub_0801D080

	thumb_func_start sub_0801DA2C
sub_0801DA2C: @ 0x0801DA2C
	push {lr}
	adds r3, r0, #0
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x78
	bls _0801DA4E
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, _0801DA54 @ =sub_0801D584
	str r0, [r1]
_0801DA4E:
	pop {r0}
	bx r0
	.align 2, 0
_0801DA54: .4byte sub_0801D584

	thumb_func_start sub_0801DA58
sub_0801DA58: @ 0x0801DA58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _0801DAA8 @ =sub_0801DFF4
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _0801DAAC @ =nullsub_28
	str r1, [sp]
	movs r1, #0xe4
	movs r3, #4
	bl TaskCreate
	adds r4, r0, #0
	ldr r1, _0801DAB0 @ =0x00007FFF
	add r0, sp, #4
	strh r1, [r0]
	movs r1, #0
	movs r2, #1
	bl sub_0803D21C
	ldr r1, _0801DAB4 @ =gDispCnt
	movs r0, #0xca
	lsls r0, r0, #5
	strh r0, [r1]
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801DAB8
	ldrh r0, [r4, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r7, r0, r1
	b _0801DAC0
	.align 2, 0
_0801DAA8: .4byte sub_0801DFF4
_0801DAAC: .4byte nullsub_28
_0801DAB0: .4byte 0x00007FFF
_0801DAB4: .4byte gDispCnt
_0801DAB8:
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
_0801DAC0:
	adds r1, r7, #0
	adds r1, #0xd8
	ldr r0, _0801DC24 @ =sub_0801E030
	str r0, [r1]
	movs r0, #0xdc
	adds r0, r0, r7
	mov r8, r0
	movs r4, #0
	strh r5, [r0]
	adds r0, r7, #0
	adds r0, #0xe2
	strh r4, [r0]
	subs r0, #0x12
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	ldr r6, _0801DC28 @ =0x06012000
	subs r1, #0x58
	str r6, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r1, #0x14]
	ldr r0, _0801DC2C @ =0x000002B9
	strh r0, [r1, #0xc]
	movs r2, #0
	strb r2, [r1, #0x1a]
	strh r4, [r1, #0x16]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	mov sl, r0
	mov r2, sl
	strb r2, [r1, #0x1c]
	movs r0, #0
	strb r0, [r1, #0x1f]
	ldr r5, _0801DC30 @ =0x0000FFC0
	strh r5, [r1, #0x10]
	strh r5, [r1, #0x12]
	movs r2, #0x80
	lsls r2, r2, #0xb
	mov sb, r2
	str r2, [r1, #8]
	adds r0, r1, #0
	bl sub_08155128
	movs r0, #0xf0
	lsls r0, r0, #2
	adds r6, r6, r0
	adds r1, r7, #0
	adds r1, #0xa8
	str r6, [r1]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #0x14]
	ldr r2, _0801DC2C @ =0x000002B9
	strh r2, [r1, #0xc]
	movs r0, #0
	strb r0, [r1, #0x1a]
	strh r4, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	mov r2, sl
	strb r2, [r1, #0x1c]
	movs r0, #0
	strb r0, [r1, #0x1f]
	strh r5, [r1, #0x10]
	strh r5, [r1, #0x12]
	mov r2, sb
	str r2, [r1, #8]
	adds r0, r1, #0
	bl sub_08155128
	ldr r5, _0801DC34 @ =gBgScrollRegs
	strh r4, [r5, #0xc]
	strh r4, [r5, #0xe]
	ldr r6, _0801DC38 @ =gBgCntRegs
	ldr r0, _0801DC3C @ =0x00001E0A
	strh r0, [r6, #6]
	ldr r0, _0801DC40 @ =0x06008000
	str r0, [r7, #4]
	strh r4, [r7, #0xa]
	ldr r0, _0801DC44 @ =0x0600F000
	str r0, [r7, #0xc]
	strh r4, [r7, #0x18]
	strh r4, [r7, #0x1a]
	ldr r0, _0801DC48 @ =0x00000307
	strh r0, [r7, #0x1c]
	strh r4, [r7, #0x1e]
	strh r4, [r7, #0x20]
	strh r4, [r7, #0x22]
	strh r4, [r7, #0x24]
	movs r0, #0x1e
	strh r0, [r7, #0x26]
	movs r0, #0x14
	strh r0, [r7, #0x28]
	adds r0, r7, #0
	adds r0, #0x2a
	movs r1, #0
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	movs r0, #0x1b
	strh r0, [r7, #0x2e]
	ldr r1, _0801DC4C @ =gUnk_082DE694
	mov r2, r8
	ldrh r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0x30]
	ldrh r0, [r2]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0x32]
	ldr r0, _0801DC50 @ =0x00007FFF
	strh r0, [r7, #0x34]
	strh r0, [r7, #0x36]
	ldr r0, _0801DC54 @ =gUnk_082D7850
	ldr r1, _0801DC58 @ =0x00000C1C
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #8]
	ldr r1, [r7, #4]
	bl LZ77UnCompVram
	adds r0, r7, #0
	bl sub_08153060
	ldr r1, _0801DC5C @ =gUnk_08D64A24
	ldr r0, _0801DC60 @ =gUnk_089331AC
	ldr r2, _0801DC64 @ =0x00007D46
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r7, [r0]
	strh r4, [r5]
	strh r4, [r5, #2]
	ldr r0, _0801DC68 @ =0x00001F03
	strh r0, [r6]
	ldr r0, [r7, #8]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	ldr r4, [r7, #0x18]
	ldr r6, _0801DC6C @ =0x0600F800
	ldrh r0, [r7]
	lsls r0, r0, #4
	adds r4, r4, r0
	movs r5, #0
_0801DBF8:
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0x1e
	bl CpuSet
	ldrh r0, [r7]
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r6, #0x40
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x13
	bls _0801DBF8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801DC24: .4byte sub_0801E030
_0801DC28: .4byte 0x06012000
_0801DC2C: .4byte 0x000002B9
_0801DC30: .4byte 0x0000FFC0
_0801DC34: .4byte gBgScrollRegs
_0801DC38: .4byte gBgCntRegs
_0801DC3C: .4byte 0x00001E0A
_0801DC40: .4byte 0x06008000
_0801DC44: .4byte 0x0600F000
_0801DC48: .4byte 0x00000307
_0801DC4C: .4byte gUnk_082DE694
_0801DC50: .4byte 0x00007FFF
_0801DC54: .4byte gUnk_082D7850
_0801DC58: .4byte 0x00000C1C
_0801DC5C: .4byte gUnk_08D64A24
_0801DC60: .4byte gUnk_089331AC
_0801DC64: .4byte 0x00007D46
_0801DC68: .4byte 0x00001F03
_0801DC6C: .4byte 0x0600F800

	thumb_func_start sub_0801DC70
sub_0801DC70: @ 0x0801DC70
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, [sp, #0x18]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r2, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov ip, r4
	ldr r4, _0801DD14 @ =gUnk_082D7850
	ldr r5, _0801DD18 @ =0x00000C1C
	adds r4, r4, r5
	ldr r7, [r4]
	ldrh r5, [r7]
	ldr r4, _0801DD1C @ =gUnk_082DE690
	mov r8, r4
	lsrs r2, r2, #0xe
	adds r4, #2
	adds r4, r2, r4
	ldrh r6, [r4]
	subs r4, r6, #1
	muls r4, r5, r4
	lsls r4, r4, #1
	ldr r5, [r7, #0x18]
	adds r5, r5, r4
	add r2, r8
	ldrh r2, [r2]
	lsls r4, r2, #1
	adds r5, r5, r4
	subs r5, #2
	mov r8, r5
	adds r5, r3, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, #1
	subs r6, r6, r1
	add r6, ip
	subs r2, #1
	subs r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r6, r6, #0x10
	lsrs r0, r6, #0x10
	cmp r0, #0x14
	bhi _0801DD08
	movs r3, #0
	asrs r6, r6, #0xb
_0801DCD0:
	lsls r4, r2, #0x10
	lsrs r0, r4, #0x10
	lsls r3, r3, #0x10
	cmp r0, #0x1e
	bhi _0801DCF6
	asrs r2, r4, #0x10
	adds r2, r6, r2
	lsls r2, r2, #1
	adds r2, r2, r5
	ldrh r0, [r7]
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	asrs r1, r3, #0x10
	adds r0, r0, r1
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r2]
_0801DCF6:
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r3, r2
	adds r0, r4, r2
	lsrs r2, r0, #0x10
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #3
	ble _0801DCD0
_0801DD08:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801DD14: .4byte gUnk_082D7850
_0801DD18: .4byte 0x00000C1C
_0801DD1C: .4byte gUnk_082DE690

	thumb_func_start sub_0801DD20
sub_0801DD20: @ 0x0801DD20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	mov sb, r3
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r2, _0801DDF0 @ =gUnk_082D7850
	ldr r1, _0801DDF4 @ =gUnk_082DE698
	lsls r0, r5, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	mov r8, r0
	ldr r0, [r0, #8]
	ldr r2, [sp, #0x20]
	lsls r1, r2, #5
	ldr r2, _0801DDF8 @ =0x06008000
	adds r1, r1, r2
	bl LZ77UnCompVram
	mov r0, r8
	ldr r0, [r0, #0x18]
	mov ip, r0
	ldr r1, _0801DDFC @ =gUnk_082DE690
	lsls r5, r5, #2
	adds r0, r1, #2
	adds r0, r5, r0
	mvns r4, r4
	ldrh r0, [r0]
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	movs r3, #0
	adds r5, r5, r1
	mvns r6, r6
	ldrh r5, [r5]
	adds r6, r6, r5
	lsls r6, r6, #0x10
	mov sl, r6
_0801DD84:
	mov r1, sl
	lsrs r2, r1, #0x10
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r8, r0
	lsls r6, r3, #0x10
	cmp r1, #0x14
	bhi _0801DDCE
	movs r5, #0
	asrs r7, r0, #0xb
	asrs r4, r6, #0xe
_0801DD9A:
	lsls r3, r2, #0x10
	lsrs r0, r3, #0x10
	lsls r2, r5, #0x10
	cmp r0, #0x1e
	bhi _0801DDBC
	asrs r0, r3, #0x10
	adds r0, r7, r0
	lsls r0, r0, #1
	add r0, sb
	asrs r1, r2, #0x10
	adds r1, r4, r1
	lsls r1, r1, #1
	add r1, ip
	ldrh r1, [r1]
	ldr r5, [sp, #0x20]
	adds r1, r1, r5
	strh r1, [r0]
_0801DDBC:
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r2, r0
	adds r0, r3, r0
	lsrs r2, r0, #0x10
	lsrs r5, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #3
	ble _0801DD9A
_0801DDCE:
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r6, r2
	adds r0, r2, #0
	add r0, r8
	lsrs r0, r0, #0x10
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #4
	ble _0801DD84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801DDF0: .4byte gUnk_082D7850
_0801DDF4: .4byte gUnk_082DE698
_0801DDF8: .4byte 0x06008000
_0801DDFC: .4byte gUnk_082DE690

	thumb_func_start sub_0801DE00
sub_0801DE00: @ 0x0801DE00
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #2
	mov r8, r0
	ldrh r0, [r5, #0x24]
	lsls r0, r0, #5
	ldrh r1, [r5, #0x22]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, [r5, #0xc]
	adds r1, r1, r0
	mov sl, r1
	ldrh r1, [r5, #0x30]
	lsrs r1, r1, #3
	ldrh r0, [r5, #0x32]
	lsrs r0, r0, #3
	movs r4, #0
	ldr r2, _0801DEBC @ =gUnk_082DE690
	mov sb, r2
	lsls r7, r1, #0x10
	lsls r6, r0, #0x10
_0801DE36:
	adds r0, r5, #0
	adds r0, #0xdc
	ldrh r0, [r0]
	cmp r4, r0
	beq _0801DE8A
	ldr r1, _0801DEC0 @ =gUnk_082DE69A
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #2
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _0801DEA0
	lsls r0, r4, #2
	mov r2, sb
	adds r1, r0, r2
	ldr r2, _0801DEC4 @ =gUnk_082DE692
	adds r0, r0, r2
	ldrh r3, [r0]
	movs r0, #0
	ldrsh r2, [r1, r0]
	adds r0, r2, #3
	asrs r1, r7, #0x10
	cmp r0, r1
	ble _0801DEA0
	adds r1, #0x1e
	subs r0, r2, #1
	cmp r1, r0
	ble _0801DEA0
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #4
	asrs r1, r6, #0x10
	cmp r0, r1
	ble _0801DEA0
	adds r1, #0x14
	subs r0, r2, #1
	cmp r1, r0
	ble _0801DEA0
_0801DE8A:
	movs r1, #0x14
	rsbs r1, r1, #0
	add r8, r1
	mov r2, r8
	str r2, [sp]
	asrs r0, r7, #0x10
	asrs r1, r6, #0x10
	adds r2, r4, #0
	mov r3, sl
	bl sub_0801DD20
_0801DEA0:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0801DE36
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801DEBC: .4byte gUnk_082DE690
_0801DEC0: .4byte gUnk_082DE69A
_0801DEC4: .4byte gUnk_082DE692

	thumb_func_start sub_0801DEC8
sub_0801DEC8: @ 0x0801DEC8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xd0
	ldr r0, [r5]
	cmp r0, #0
	beq _0801DEDE
	adds r0, r4, #0
	adds r0, #0x80
	bl sub_0815604C
_0801DEDE:
	adds r0, r4, #0
	adds r0, #0x80
	bl sub_08155128
	cmp r0, #0
	bne _0801DEF8
	str r0, [r5]
	adds r0, r4, #0
	adds r0, #0x90
	ldr r1, _0801DF2C @ =0x0000FFC0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
_0801DEF8:
	adds r6, r4, #0
	adds r6, #0xd4
	ldr r0, [r6]
	adds r5, r4, #0
	adds r5, #0xa8
	cmp r0, #0
	beq _0801DF0C
	adds r0, r5, #0
	bl sub_0815604C
_0801DF0C:
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0801DF24
	str r0, [r6]
	adds r0, r4, #0
	adds r0, #0xb8
	ldr r1, _0801DF2C @ =0x0000FFC0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
_0801DF24:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801DF2C: .4byte 0x0000FFC0

	thumb_func_start sub_0801DF30
sub_0801DF30: @ 0x0801DF30
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r4, r7, #0
	adds r4, #0xe2
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x80
	adds r0, r7, r0
	adds r2, r7, #0
	adds r2, #0x88
	ldr r1, [r2]
	ldr r3, _0801DFD4 @ =0xFFFBFFFF
	ands r1, r3
	str r1, [r2]
	adds r2, #0x28
	ldr r1, [r2]
	ands r1, r3
	str r1, [r2]
	ldrh r1, [r4]
	lsls r1, r1, #2
	adds r2, #0x20
	adds r2, r2, r1
	movs r1, #1
	str r1, [r2]
	movs r6, #0
	strb r6, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r3, _0801DFD8 @ =gUnk_082DE690
	adds r5, r7, #0
	adds r5, #0xdc
	ldrh r2, [r5]
	lsls r2, r2, #2
	adds r1, r2, r3
	ldrh r1, [r1]
	lsls r1, r1, #3
	ldr r4, _0801DFDC @ =gUnk_082DE694
	adds r2, r2, r4
	ldrh r2, [r2]
	subs r1, r1, r2
	adds r1, #8
	strh r1, [r0, #0x10]
	ldrh r1, [r5]
	lsls r1, r1, #2
	adds r3, #2
	adds r3, r1, r3
	ldrh r2, [r3]
	lsls r2, r2, #3
	adds r4, #2
	adds r1, r1, r4
	ldrh r1, [r1]
	subs r2, r2, r1
	adds r3, r7, #0
	adds r3, #0xe0
	ldr r4, _0801DFE0 @ =0x0000FFFF
	adds r1, r4, #0
	ldrh r3, [r3]
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r2, r2, r1
	strh r2, [r0, #0x12]
	bl sub_08155128
	movs r0, #0xff
	lsls r0, r0, #1
	bl m4aSongNumStart
	adds r0, r7, #0
	adds r0, #0xde
	strh r6, [r0]
	adds r1, r7, #0
	adds r1, #0xd8
	ldr r0, _0801DFE4 @ =sub_0801E0D8
	str r0, [r1]
	adds r0, r7, #0
	bl sub_0801DEC8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801DFD4: .4byte 0xFFFBFFFF
_0801DFD8: .4byte gUnk_082DE690
_0801DFDC: .4byte gUnk_082DE694
_0801DFE0: .4byte 0x0000FFFF
_0801DFE4: .4byte sub_0801E0D8

	thumb_func_start sub_0801DFE8
sub_0801DFE8: @ 0x0801DFE8
	push {lr}
	movs r0, #0
	bl sub_0801DA58
	pop {r0}
	bx r0

	thumb_func_start sub_0801DFF4
sub_0801DFF4: @ 0x0801DFF4
	push {lr}
	ldr r0, _0801E010 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801E014
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _0801E01C
	.align 2, 0
_0801E010: .4byte gCurTask
_0801E014:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_0801E01C:
	adds r0, r2, #0
	adds r0, #0xd8
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
	pop {r0}
	bx r0

	thumb_func_start nullsub_28
nullsub_28: @ 0x0801E02C
	bx lr
	.align 2, 0

	thumb_func_start sub_0801E030
sub_0801E030: @ 0x0801E030
	adds r0, #0xd8
	ldr r1, _0801E038 @ =sub_0801E03C
	str r1, [r0]
	bx lr
	.align 2, 0
_0801E038: .4byte sub_0801E03C

	thumb_func_start sub_0801E03C
sub_0801E03C: @ 0x0801E03C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0801E098 @ =gUnk_082D7850
	ldr r1, _0801E09C @ =0x00000C1C
	adds r0, r0, r1
	ldr r6, [r0]
	ldr r1, _0801E0A0 @ =gUnk_08D64A24
	ldr r0, _0801E0A4 @ =gUnk_089331AC
	ldr r2, _0801E0A8 @ =0x00007D46
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r1, r5, #0
	adds r1, #0xde
	movs r0, #0
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_0801DE00
	ldr r0, [r6, #0x10]
	movs r1, #0
	movs r2, #0x60
	bl sub_0803D21C
	ldr r0, [r4, #0x10]
	ldrb r1, [r4, #0x14]
	ldrh r2, [r4, #0x16]
	bl sub_0803D21C
	movs r0, #7
	bl sub_0803C95C
	ldrh r2, [r0, #8]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r1, r2
	strh r1, [r0, #8]
	adds r5, #0xd8
	ldr r0, _0801E0AC @ =sub_0801E0B0
	str r0, [r5]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801E098: .4byte gUnk_082D7850
_0801E09C: .4byte 0x00000C1C
_0801E0A0: .4byte gUnk_08D64A24
_0801E0A4: .4byte gUnk_089331AC
_0801E0A8: .4byte 0x00007D46
_0801E0AC: .4byte sub_0801E0B0

	thumb_func_start sub_0801E0B0
sub_0801E0B0: @ 0x0801E0B0
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xde
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bls _0801E0CE
	adds r1, r3, #0
	adds r1, #0xd8
	ldr r0, _0801E0D4 @ =sub_0801E1A0
	str r0, [r1]
_0801E0CE:
	pop {r0}
	bx r0
	.align 2, 0
_0801E0D4: .4byte sub_0801E1A0

	thumb_func_start sub_0801E0D8
sub_0801E0D8: @ 0x0801E0D8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0xde
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _0801E11E
	ldrh r0, [r5, #0x30]
	lsrs r0, r0, #3
	ldrh r1, [r5, #0x32]
	lsrs r1, r1, #3
	subs r2, #2
	ldrh r2, [r2]
	ldrh r4, [r5, #0x24]
	lsls r4, r4, #5
	ldrh r3, [r5, #0x22]
	adds r4, r4, r3
	lsls r4, r4, #1
	ldr r3, [r5, #0xc]
	adds r3, r3, r4
	adds r4, r5, #0
	adds r4, #0xe0
	ldrh r4, [r4]
	str r4, [sp]
	bl sub_0801DC70
	adds r1, r5, #0
	adds r1, #0xd8
	ldr r0, _0801E12C @ =sub_0801E130
	str r0, [r1]
_0801E11E:
	adds r0, r5, #0
	bl sub_0801DEC8
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E12C: .4byte sub_0801E130

	thumb_func_start sub_0801E130
sub_0801E130: @ 0x0801E130
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xde
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #6
	bls _0801E14E
	adds r1, r3, #0
	adds r1, #0xd8
	ldr r0, _0801E158 @ =sub_0801E15C
	str r0, [r1]
_0801E14E:
	adds r0, r3, #0
	bl sub_0801DEC8
	pop {r0}
	bx r0
	.align 2, 0
_0801E158: .4byte sub_0801E15C

	thumb_func_start sub_0801E15C
sub_0801E15C: @ 0x0801E15C
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xe2
	ldrh r0, [r2]
	movs r1, #1
	eors r0, r1
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0xe0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	beq _0801E188
	subs r1, #8
	ldr r0, _0801E184 @ =sub_0801DF30
	b _0801E18E
	.align 2, 0
_0801E184: .4byte sub_0801DF30
_0801E188:
	adds r1, r3, #0
	adds r1, #0xd8
	ldr r0, _0801E19C @ =sub_0801E1B4
_0801E18E:
	str r0, [r1]
	adds r0, r3, #0
	bl sub_0801DEC8
	pop {r0}
	bx r0
	.align 2, 0
_0801E19C: .4byte sub_0801E1B4

	thumb_func_start sub_0801E1A0
sub_0801E1A0: @ 0x0801E1A0
	adds r2, r0, #0
	adds r2, #0xde
	movs r1, #0
	strh r1, [r2]
	adds r0, #0xd8
	ldr r1, _0801E1B0 @ =sub_0801E1D0
	str r1, [r0]
	bx lr
	.align 2, 0
_0801E1B0: .4byte sub_0801E1D0

	thumb_func_start sub_0801E1B4
sub_0801E1B4: @ 0x0801E1B4
	push {lr}
	adds r2, r0, #0
	adds r2, #0xde
	movs r1, #0
	strh r1, [r2]
	subs r2, #6
	ldr r1, _0801E1CC @ =sub_0801E1F8
	str r1, [r2]
	bl sub_0801DEC8
	pop {r0}
	bx r0
	.align 2, 0
_0801E1CC: .4byte sub_0801E1F8

	thumb_func_start sub_0801E1D0
sub_0801E1D0: @ 0x0801E1D0
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xde
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _0801E1EE
	adds r1, r3, #0
	adds r1, #0xd8
	ldr r0, _0801E1F4 @ =sub_0801E224
	str r0, [r1]
_0801E1EE:
	pop {r0}
	bx r0
	.align 2, 0
_0801E1F4: .4byte sub_0801E224

	thumb_func_start sub_0801E1F8
sub_0801E1F8: @ 0x0801E1F8
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xde
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _0801E216
	adds r1, r3, #0
	adds r1, #0xd8
	ldr r0, _0801E220 @ =sub_0801E238
	str r0, [r1]
_0801E216:
	adds r0, r3, #0
	bl sub_0801DEC8
	pop {r0}
	bx r0
	.align 2, 0
_0801E220: .4byte sub_0801E238

	thumb_func_start sub_0801E224
sub_0801E224: @ 0x0801E224
	adds r2, r0, #0
	adds r2, #0xe0
	movs r1, #0
	strh r1, [r2]
	adds r0, #0xd8
	ldr r1, _0801E234 @ =sub_0801DF30
	str r1, [r0]
	bx lr
	.align 2, 0
_0801E234: .4byte sub_0801DF30

	thumb_func_start sub_0801E238
sub_0801E238: @ 0x0801E238
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _0801E280 @ =0x00007FFF
	mov r0, sp
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0xde
	movs r0, #0
	strh r0, [r1]
	movs r0, #7
	bl sub_0803CA20
	ldrh r2, [r0, #8]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r1, r2
	strh r1, [r0, #8]
	ldr r1, _0801E284 @ =0x0000FFFF
	strh r1, [r0, #4]
	movs r1, #1
	rsbs r1, r1, #0
	strh r1, [r0, #6]
	mov r0, sp
	movs r1, #0
	movs r2, #1
	bl sub_0803D21C
	adds r4, #0xd8
	ldr r0, _0801E288 @ =sub_0801E28C
	str r0, [r4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801E280: .4byte 0x00007FFF
_0801E284: .4byte 0x0000FFFF
_0801E288: .4byte sub_0801E28C

	thumb_func_start sub_0801E28C
sub_0801E28C: @ 0x0801E28C
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xde
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bls _0801E2AA
	adds r1, r3, #0
	adds r1, #0xd8
	ldr r0, _0801E2B0 @ =sub_0801E2B4
	str r0, [r1]
_0801E2AA:
	pop {r0}
	bx r0
	.align 2, 0
_0801E2B0: .4byte sub_0801E2B4

	thumb_func_start sub_0801E2B4
sub_0801E2B4: @ 0x0801E2B4
	push {lr}
	bl sub_08039670
	ldr r0, _0801E2C8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_0801E2C8: .4byte gCurTask

	thumb_func_start CreateSpecialHubMirror
CreateSpecialHubMirror: @ 0x0801E2CC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _0801E300 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _0801E304 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xc0
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801E308
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r6, r0, r1
	b _0801E310
	.align 2, 0
_0801E300: .4byte ObjectMain
_0801E304: .4byte ObjectDestroy
_0801E308:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
_0801E310:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	adds r1, r6, #0
	adds r1, #0xb4
	movs r0, #0
	str r0, [r1]
	adds r1, #4
	ldr r0, _0801E374 @ =0x0000FFFF
	strh r0, [r1]
	ldr r0, [r6, #8]
	ldr r1, _0801E378 @ =0x00018F40
	orrs r0, r1
	str r0, [r6, #8]
	ldr r0, [r6, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x68]
	ldr r0, [r6, #0x5c]
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #0x5c]
	movs r4, #0x10
	rsbs r4, r4, #0
	movs r5, #0x10
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #0x10
	bl sub_0803E2B0
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #0x10
	bl sub_0803E308
	ldr r0, _0801E37C @ =sub_0801E590
	str r0, [r6, #0x78]
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0801E374: .4byte 0x0000FFFF
_0801E378: .4byte 0x00018F40
_0801E37C: .4byte sub_0801E590

	thumb_func_start sub_0801E380
sub_0801E380: @ 0x0801E380
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xb8
	ldrh r1, [r5]
	ldr r0, _0801E420 @ =0x0000FFFF
	cmp r1, r0
	bne _0801E3C6
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	ldr r1, [r4, #0x40]
	asrs r1, r1, #0xc
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, [r4, #0x44]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r2, r2, r3
	asrs r2, r2, #0xc
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_080025AC
	ldrh r1, [r0, #8]
	strh r1, [r5]
	ldrb r1, [r0, #0xa]
	adds r2, r4, #0
	adds r2, #0xba
	strh r1, [r2]
	ldrb r1, [r0, #0xb]
	adds r0, r4, #0
	adds r0, #0xbc
	strh r1, [r0]
_0801E3C6:
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r5]
	adds r2, r4, #0
	adds r2, #0xba
	ldrb r2, [r2]
	adds r3, r4, #0
	adds r3, #0xbc
	ldrb r3, [r3]
	bl sub_08002BA8
	cmp r0, #0
	bne _0801E42C
	adds r5, r4, #0
	adds r5, #0xb4
	ldr r0, [r5]
	cmp r0, #0
	bne _0801E41C
	ldr r2, _0801E424 @ =0x000002CF
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808B62C
	str r0, [r5]
	ldrh r2, [r0, #6]
	movs r1, #1
	orrs r1, r2
	strh r1, [r0, #6]
	ldr r1, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x34]
	ldr r1, [r5]
	ldr r0, [r4, #0x44]
	ldr r2, _0801E428 @ =0xFFFFF000
	adds r0, r0, r2
	str r0, [r1, #0x38]
	ldr r1, [r5]
	movs r0, #0xf0
	lsls r0, r0, #3
	strh r0, [r1, #0x20]
_0801E41C:
	movs r0, #1
	b _0801E446
	.align 2, 0
_0801E420: .4byte 0x0000FFFF
_0801E424: .4byte 0x000002CF
_0801E428: .4byte 0xFFFFF000
_0801E42C:
	adds r4, #0xb4
	ldr r3, [r4]
	cmp r3, #0
	beq _0801E444
	ldrh r0, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	movs r2, #0
	orrs r1, r0
	strh r1, [r3, #6]
	str r2, [r4]
_0801E444:
	movs r0, #0
_0801E446:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801E450
sub_0801E450: @ 0x0801E450
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	ldr r6, [r0, #0x40]
	asrs r6, r6, #0xc
	lsls r6, r6, #0x18
	ldr r4, [r0, #0x44]
	asrs r4, r4, #0xc
	lsls r4, r4, #0x18
	movs r0, #0x56
	add sb, r0
	mov r0, sb
	ldrb r5, [r0]
	lsrs r7, r6, #0x18
	movs r0, #0xff
	lsls r0, r0, #0x18
	adds r6, r6, r0
	lsrs r6, r6, #0x18
	lsrs r0, r4, #0x18
	mov r8, r0
	movs r0, #0xff
	lsls r0, r0, #0x18
	adds r4, r4, r0
	lsrs r4, r4, #0x18
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	mov r0, sb
	ldrb r5, [r0]
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	mov r0, sb
	ldrb r5, [r0]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	adds r0, r5, #0
	mov r1, sl
	adds r2, r4, #0
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	mov r0, sb
	ldrb r4, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	mov r2, r8
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	mov r0, sb
	ldrb r4, [r0]
	adds r0, r4, #0
	adds r1, r7, #0
	mov r2, r8
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	mov r0, sb
	ldrb r4, [r0]
	adds r0, r4, #0
	mov r1, sl
	mov r2, r8
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	mov r0, sb
	ldrb r4, [r0]
	movs r0, #1
	add r8, r0
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	adds r0, r4, #0
	adds r1, r6, #0
	mov r2, r8
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	mov r0, sb
	ldrb r4, [r0]
	adds r0, r4, #0
	adds r1, r7, #0
	mov r2, r8
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	mov r0, sb
	ldrb r4, [r0]
	adds r0, r4, #0
	mov r1, sl
	mov r2, r8
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801E590
sub_0801E590: @ 0x0801E590
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #4]
	ldr r3, _0801E5FC @ =gUnk_02023530
	adds r5, r4, #0
	adds r5, #0x56
	ldrb r2, [r5]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _0801E600 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #2
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	beq _0801E5F6
	ldrb r0, [r5]
	ldr r1, [r4, #0x40]
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	ldr r2, [r4, #0x44]
	asrs r2, r2, #0xc
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	ldr r1, _0801E604 @ =gUnk_082D88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0801E5EC
	adds r0, r4, #0
	bl sub_0801E450
_0801E5EC:
	adds r0, r4, #0
	bl sub_0801E380
	ldr r0, _0801E608 @ =sub_0801E60C
	str r0, [r4, #0x78]
_0801E5F6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E5FC: .4byte gUnk_02023530
_0801E600: .4byte 0x0000065E
_0801E604: .4byte gUnk_082D88B8
_0801E608: .4byte sub_0801E60C

	thumb_func_start sub_0801E60C
sub_0801E60C: @ 0x0801E60C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E380
	cmp r0, #0
	bne _0801E61C
	ldr r0, _0801E624 @ =nullsub_108
	str r0, [r4, #0x78]
_0801E61C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801E624: .4byte nullsub_108

	thumb_func_start nullsub_108
nullsub_108: @ 0x0801E628
	bx lr
	.align 2, 0

	thumb_func_start nullsub_109
nullsub_109: @ 0x0801E62C
	bx lr
	.align 2, 0
