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
