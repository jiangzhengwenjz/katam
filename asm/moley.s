	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080EB9AC
sub_080EB9AC: @ 0x080EB9AC
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #3
	beq _080EBA58
	cmp r0, #3
	bgt _080EB9C4
	cmp r0, #2
	beq _080EB9D2
	b _080EBBC8
_080EB9C4:
	cmp r0, #4
	bne _080EB9CA
	b _080EBB6A
_080EB9CA:
	cmp r0, #6
	bne _080EB9D0
	b _080EBBB8
_080EB9D0:
	b _080EBBC8
_080EB9D2:
	ldr r1, [r4, #8]
	ands r0, r1
	cmp r0, #0
	bne _080EB9DC
	b _080EBBC8
_080EB9DC:
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r1, r0
	str r1, [r4, #8]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080EB9F8
	b _080EBBC8
_080EB9F8:
	ldr r2, _080EBA38 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EBA3C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EBA40 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080EBA44 @ =0x00005554
	cmp r2, r0
	bls _080EBA1C
	ldr r0, _080EBA48 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080EBA18
	movs r1, #1
_080EBA18:
	cmp r1, #0
	bne _080EBA26
_080EBA1C:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #2
	bls _080EBA50
_080EBA26:
	ldr r0, [r4, #8]
	ldr r1, _080EBA4C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #3
	b _080EBB10
	.align 2, 0
_080EBA38: .4byte gRngVal
_080EBA3C: .4byte 0x00196225
_080EBA40: .4byte 0x3C6EF35F
_080EBA44: .4byte 0x00005554
_080EBA48: .4byte 0x0000AAA9
_080EBA4C: .4byte 0xFFFFFBFF
_080EBA50:
	adds r0, r4, #0
	bl sub_080EBBD0
	b _080EBBC8
_080EBA58:
	ldrb r0, [r4, #1]
	cmp r0, #7
	bne _080EBAD2
	ldr r0, [r4, #8]
	ldr r1, _080EBB20 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _080EBB24 @ =gKirbys
	ldr r0, _080EBB28 @ =gUnk_0203AD3C
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
	bne _080EBAD2
	ldrb r0, [r4]
	cmp r0, #0
	bne _080EBA92
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080EBAD2
_080EBA92:
	ldr r1, _080EBB2C @ =gUnk_08D60FA4
	ldr r5, _080EBB30 @ =gSongTable
	ldr r2, _080EBB34 @ =0x00000C54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080EBAB8
	movs r1, #0xc5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080EBAD2
_080EBAB8:
	cmp r3, #0
	beq _080EBACA
	ldr r0, _080EBB38 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080EBAD2
_080EBACA:
	movs r0, #0xc5
	lsls r0, r0, #1
	bl m4aSongNumStart
_080EBAD2:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080EBBC8
	ldr r2, _080EBB3C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EBB40 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EBB44 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080EBB48 @ =0x00005554
	cmp r2, r0
	bls _080EBB00
	ldr r0, _080EBB4C @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080EBAFC
	movs r1, #1
_080EBAFC:
	cmp r1, #0
	bne _080EBB0A
_080EBB00:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #2
	bls _080EBB50
_080EBB0A:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #4
_080EBB10:
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080EBBC8
	.align 2, 0
_080EBB20: .4byte 0xFFFFFDFF
_080EBB24: .4byte gKirbys
_080EBB28: .4byte gUnk_0203AD3C
_080EBB2C: .4byte gUnk_08D60FA4
_080EBB30: .4byte gSongTable
_080EBB34: .4byte 0x00000C54
_080EBB38: .4byte gUnk_0203AD10
_080EBB3C: .4byte gRngVal
_080EBB40: .4byte 0x00196225
_080EBB44: .4byte 0x3C6EF35F
_080EBB48: .4byte 0x00005554
_080EBB4C: .4byte 0x0000AAA9
_080EBB50:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #6
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	b _080EBBC8
_080EBB6A:
	ldrb r0, [r4, #1]
	cmp r0, #5
	bne _080EBBA6
	ldr r0, [r4, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080EBB92
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r0, #0xa
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0803E2B0
	b _080EBBA6
_080EBB92:
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r0, #0x14
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0803E2B0
_080EBBA6:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080EBBC8
	adds r0, r4, #0
	bl sub_080EBF34
	b _080EBBC8
_080EBBB8:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080EBBC8
	adds r0, r4, #0
	bl sub_080EBBD0
_080EBBC8:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080EBBD0
sub_080EBBD0: @ 0x080EBBD0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r4, r5, #0
	ldr r2, _080EBC80 @ =sub_080ED5FC
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080EBC3C
	ldr r6, _080EBC84 @ =gRngVal
	ldr r0, [r6]
	ldr r1, _080EBC88 @ =0x00196225
	mov sb, r1
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r1, _080EBC8C @ =0x3C6EF35F
	mov r8, r1
	add r0, r8
	str r0, [r6]
	lsrs r0, r0, #0x10
	movs r7, #1
	ands r0, r7
	cmp r0, #0
	beq _080EBC22
	adds r0, r5, #0
	bl sub_080ED078
_080EBC22:
	ldr r0, [r6]
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	add r0, r8
	str r0, [r6]
	lsrs r0, r0, #0x10
	ands r0, r7
	cmp r0, #0
	beq _080EBC3C
	adds r0, r5, #0
	bl sub_080ED078
_080EBC3C:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r2, _080EBC84 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EBC88 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EBC8C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _080EBC94
	cmp r1, #1
	blo _080EBC90
	cmp r1, #2
	beq _080EBC98
	movs r0, #0xf
	b _080EBC9A
	.align 2, 0
_080EBC80: .4byte sub_080ED5FC
_080EBC84: .4byte gRngVal
_080EBC88: .4byte 0x00196225
_080EBC8C: .4byte 0x3C6EF35F
_080EBC90:
	movs r0, #0x5a
	b _080EBC9A
_080EBC94:
	movs r0, #0x3c
	b _080EBC9A
_080EBC98:
	movs r0, #0x1e
_080EBC9A:
	strh r0, [r4, #4]
	ldr r0, [r4, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	adds r6, r5, #0
	adds r6, #0xb4
	cmp r0, #0
	beq _080EBCC2
	ldrb r0, [r6]
	cmp r0, #0
	bne _080EBCC2
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r2, [r0, #0x10]
	adds r0, r4, #0
	movs r1, #1
	bl sub_080EC650
_080EBCC2:
	movs r0, #0
	strb r0, [r6]
	adds r1, r5, #0
	adds r1, #0xb6
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080EBCDC
sub_080EBCDC: @ 0x080EBCDC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EBD28 @ =sub_080EBD4C
	movs r1, #5
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	ldr r1, _080EBD2C @ =0xFFFFFBFF
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080EBD30 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EBD34 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EBD38 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080EBD3C
	strh r1, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	b _080EBD46
	.align 2, 0
_080EBD28: .4byte sub_080EBD4C
_080EBD2C: .4byte 0xFFFFFBFF
_080EBD30: .4byte gRngVal
_080EBD34: .4byte 0x00196225
_080EBD38: .4byte 0x3C6EF35F
_080EBD3C:
	movs r0, #0x18
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r1, [r0]
_080EBD46:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080EBD4C
sub_080EBD4C: @ 0x080EBD4C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #5
	beq _080EBD6C
	cmp r0, #5
	bgt _080EBD66
	cmp r0, #4
	bne _080EBD64
	b _080EBEE0
_080EBD64:
	b _080EBF2C
_080EBD66:
	cmp r0, #6
	beq _080EBE38
	b _080EBF2C
_080EBD6C:
	ldrb r0, [r4, #1]
	cmp r0, #5
	bne _080EBDA8
	ldr r0, [r4, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080EBD96
	movs r1, #0xa
	rsbs r1, r1, #0
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r0, #4
	rsbs r0, r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xa
	bl sub_0803E2B0
	b _080EBDA8
_080EBD96:
	movs r1, #0xa
	rsbs r1, r1, #0
	movs r0, #0x14
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #4
	movs r3, #0xa
	bl sub_0803E2B0
_080EBDA8:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080EBDB4
	b _080EBF2C
_080EBDB4:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080EBDC2
	b _080EBF2C
_080EBDC2:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #0
	beq _080EBDDC
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #6
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	b _080EBE2E
_080EBDDC:
	ldr r2, _080EBE10 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EBE14 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EBE18 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080EBDFE
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #2
	bls _080EBE1C
_080EBDFE:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #6
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	b _080EBE2E
	.align 2, 0
_080EBE10: .4byte gRngVal
_080EBE14: .4byte 0x00196225
_080EBE18: .4byte 0x3C6EF35F
_080EBE1C:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #4
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _080EBE34 @ =0xFFFFFDFF
_080EBE2E:
	ands r0, r1
	str r0, [r4, #8]
	b _080EBF2C
	.align 2, 0
_080EBE34: .4byte 0xFFFFFDFF
_080EBE38:
	ldrb r0, [r4, #1]
	cmp r0, #1
	bne _080EBEB4
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	ldr r1, _080EBEC8 @ =gKirbys
	ldr r0, _080EBECC @ =gUnk_0203AD3C
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
	bne _080EBEB4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080EBE74
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080EBEB4
_080EBE74:
	ldr r1, _080EBED0 @ =gUnk_08D60FA4
	ldr r5, _080EBED4 @ =gSongTable
	ldr r2, _080EBED8 @ =0x00000C54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080EBE9A
	movs r1, #0xc5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080EBEB4
_080EBE9A:
	cmp r3, #0
	beq _080EBEAC
	ldr r0, _080EBEDC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080EBEB4
_080EBEAC:
	movs r0, #0xc5
	lsls r0, r0, #1
	bl m4aSongNumStart
_080EBEB4:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080EBF2C
	adds r0, r4, #0
	bl sub_080EBBD0
	b _080EBF2C
	.align 2, 0
_080EBEC8: .4byte gKirbys
_080EBECC: .4byte gUnk_0203AD3C
_080EBED0: .4byte gUnk_08D60FA4
_080EBED4: .4byte gSongTable
_080EBED8: .4byte 0x00000C54
_080EBEDC: .4byte gUnk_0203AD10
_080EBEE0:
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _080EBF1C
	ldr r0, [r4, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080EBF08
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r0, #0xa
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0803E2B0
	b _080EBF1C
_080EBF08:
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r0, #0x14
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0803E2B0
_080EBF1C:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080EBF2C
	adds r0, r4, #0
	bl sub_080EBF34
_080EBF2C:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080EBF34
sub_080EBF34: @ 0x080EBF34
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r2, _080EBFA8 @ =sub_080ED67C
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r5, #8]
	ldr r1, _080EBFAC @ =0xFFFFFBFF
	ands r0, r1
	ldr r1, _080EBFB0 @ =0xFFFFFDFF
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080EBF8C
	adds r2, r5, #0
	adds r2, #0x80
	ldr r3, _080EBFB4 @ =gUnk_08351530
	ldr r4, _080EBFB8 @ =gUnk_0203AD30
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, r3, #0
	adds r1, #0x90
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r6, #0
	ldrsh r1, [r2, r6]
	asrs r0, r0, #0x11
	adds r6, r2, #0
	cmp r1, r0
	bge _080EBFE0
_080EBF8C:
	ldr r2, _080EBFBC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EBFC0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EBFC4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080EBFC8
	movs r0, #0x18
	b _080EBFCA
	.align 2, 0
_080EBFA8: .4byte sub_080ED67C
_080EBFAC: .4byte 0xFFFFFBFF
_080EBFB0: .4byte 0xFFFFFDFF
_080EBFB4: .4byte gUnk_08351530
_080EBFB8: .4byte gUnk_0203AD30
_080EBFBC: .4byte gRngVal
_080EBFC0: .4byte 0x00196225
_080EBFC4: .4byte 0x3C6EF35F
_080EBFC8:
	movs r0, #0x10
_080EBFCA:
	strh r0, [r5, #4]
	adds r6, r5, #0
	adds r6, #0x80
	ldr r3, _080EBFD8 @ =gUnk_08351530
	ldr r4, _080EBFDC @ =gUnk_0203AD30
	b _080EC00C
	.align 2, 0
_080EBFD8: .4byte gUnk_08351530
_080EBFDC: .4byte gUnk_0203AD30
_080EBFE0:
	ldr r2, _080EBFFC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EC000 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EC004 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080EC008
	movs r0, #0x24
	b _080EC00A
	.align 2, 0
_080EBFFC: .4byte gRngVal
_080EC000: .4byte 0x00196225
_080EC004: .4byte 0x3C6EF35F
_080EC008:
	movs r0, #0x18
_080EC00A:
	strh r0, [r5, #4]
_080EC00C:
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, r3, #0
	adds r1, #0x90
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r6, r2]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080EC02E
	ldrh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r5, #4]
_080EC02E:
	adds r1, r5, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080EC040
sub_080EC040: @ 0x080EC040
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #5
	adds r3, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080EC070
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080EC0BC @ =gUnk_08351530
	ldr r0, _080EC0C0 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x90
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r6, #0
	ldrsh r1, [r2, r6]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080EC072
_080EC070:
	movs r5, #3
_080EC072:
	adds r0, r3, #0
	adds r0, #0xb6
	ldrh r0, [r0]
	cmp r0, r5
	bhi _080EC07E
	b _080EC188
_080EC07E:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080EC10C
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080EC0BC @ =gUnk_08351530
	ldr r0, _080EC0C0 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x90
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080EC0D0
	ldr r2, _080EC0C4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EC0C8 @ =0x00196225
	muls r0, r1, r0
	ldr r6, _080EC0CC @ =0x3C6EF35F
	adds r0, r0, r6
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	b _080EC16E
	.align 2, 0
_080EC0BC: .4byte gUnk_08351530
_080EC0C0: .4byte gUnk_0203AD30
_080EC0C4: .4byte gRngVal
_080EC0C8: .4byte 0x00196225
_080EC0CC: .4byte 0x3C6EF35F
_080EC0D0:
	ldr r2, _080EC0EC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EC0F0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EC0F4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080EC0F8 @ =0x00005554
	cmp r2, r0
	bhi _080EC0FC
_080EC0E6:
	movs r1, #0
	b _080EC170
	.align 2, 0
_080EC0EC: .4byte gRngVal
_080EC0F0: .4byte 0x00196225
_080EC0F4: .4byte 0x3C6EF35F
_080EC0F8: .4byte 0x00005554
_080EC0FC:
	ldr r0, _080EC108 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080EC170
	movs r1, #1
	b _080EC170
	.align 2, 0
_080EC108: .4byte 0x0000AAA9
_080EC10C:
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080EC144 @ =gUnk_08351530
	ldr r0, _080EC148 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x90
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080EC15C
	ldr r2, _080EC14C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EC150 @ =0x00196225
	muls r0, r1, r0
	ldr r6, _080EC154 @ =0x3C6EF35F
	adds r0, r0, r6
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080EC158 @ =0x00005554
	cmp r2, r0
	bls _080EC0E6
	b _080EC0FC
	.align 2, 0
_080EC144: .4byte gUnk_08351530
_080EC148: .4byte gUnk_0203AD30
_080EC14C: .4byte gRngVal
_080EC150: .4byte 0x00196225
_080EC154: .4byte 0x3C6EF35F
_080EC158: .4byte 0x00005554
_080EC15C:
	ldr r2, _080EC17C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EC180 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EC184 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #3
_080EC16E:
	ands r1, r0
_080EC170:
	cmp r1, #0
	bne _080EC188
	adds r0, r4, #0
	bl sub_080ED704
	b _080EC1EC
	.align 2, 0
_080EC17C: .4byte gRngVal
_080EC180: .4byte 0x00196225
_080EC184: .4byte 0x3C6EF35F
_080EC188:
	ldr r2, _080EC1D4 @ =sub_080ED6D0
	adds r0, r4, #0
	movs r1, #7
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	ldr r1, _080EC1D8 @ =0xFFFFFBFF
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080EC1DC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EC1E0 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080EC1E4 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080EC1CE
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080EC1E8
_080EC1CE:
	strh r1, [r4, #4]
	b _080EC1EC
	.align 2, 0
_080EC1D4: .4byte sub_080ED6D0
_080EC1D8: .4byte 0xFFFFFBFF
_080EC1DC: .4byte gRngVal
_080EC1E0: .4byte 0x00196225
_080EC1E4: .4byte 0x3C6EF35F
_080EC1E8:
	movs r0, #2
	strh r0, [r4, #4]
_080EC1EC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080EC1F4
sub_080EC1F4: @ 0x080EC1F4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r2, _080EC220 @ =sub_080EC308
	movs r1, #8
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080EC224
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080EC22C
	.align 2, 0
_080EC220: .4byte sub_080EC308
_080EC224:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080EC22C:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	ldr r1, _080EC270 @ =0xFFFFFBFF
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080EC284
	ldr r2, _080EC274 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EC278 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EC27C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080EC280
	movs r0, #0xc
	b _080EC2AE
	.align 2, 0
_080EC270: .4byte 0xFFFFFBFF
_080EC274: .4byte gRngVal
_080EC278: .4byte 0x00196225
_080EC27C: .4byte 0x3C6EF35F
_080EC280:
	movs r0, #8
	b _080EC2AE
_080EC284:
	ldr r2, _080EC2A0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EC2A4 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080EC2A8 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080EC2AC
	movs r0, #0x24
	b _080EC2AE
	.align 2, 0
_080EC2A0: .4byte gRngVal
_080EC2A4: .4byte 0x00196225
_080EC2A8: .4byte 0x3C6EF35F
_080EC2AC:
	movs r0, #0x18
_080EC2AE:
	strh r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080EC300 @ =gUnk_08351530
	ldr r0, _080EC304 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x90
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080EC2D8
	ldrh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #4]
_080EC2D8:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r2, [r0, #0x10]
	adds r0, r4, #0
	movs r1, #0
	bl sub_080EC650
	adds r1, r5, #0
	adds r1, #0xb4
	movs r0, #1
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080EC300: .4byte gUnk_08351530
_080EC304: .4byte gUnk_0203AD30

	thumb_func_start sub_080EC308
sub_080EC308: @ 0x080EC308
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #8
	beq _080EC326
	cmp r0, #8
	bgt _080EC320
	cmp r0, #0
	beq _080EC34C
	b _080EC3B2
_080EC320:
	cmp r0, #9
	beq _080EC334
	b _080EC3B2
_080EC326:
	ldr r0, [r3, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080EC3B2
	movs r0, #9
	b _080EC340
_080EC334:
	ldr r0, [r3, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080EC3B2
	movs r0, #0
_080EC340:
	strb r0, [r2]
	ldr r0, [r3, #8]
	subs r1, #5
	ands r0, r1
	str r0, [r3, #8]
	b _080EC3B2
_080EC34C:
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080EC3B2
	ldr r2, _080EC398 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EC39C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EC3A0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	ldr r0, _080EC3A4 @ =0x00005554
	cmp r1, r0
	bls _080EC380
	ldr r0, _080EC3A8 @ =0x0000AAA9
	movs r4, #2
	cmp r1, r0
	bhi _080EC378
	movs r4, #1
_080EC378:
	adds r2, r3, #0
	adds r2, #0x85
	cmp r4, #0
	bne _080EC38C
_080EC380:
	adds r0, r3, #0
	adds r0, #0x85
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #2
	bls _080EC3AC
_080EC38C:
	movs r0, #0
	strb r0, [r2]
	adds r0, r3, #0
	bl sub_080EBCDC
	b _080EC3B2
	.align 2, 0
_080EC398: .4byte gRngVal
_080EC39C: .4byte 0x00196225
_080EC3A0: .4byte 0x3C6EF35F
_080EC3A4: .4byte 0x00005554
_080EC3A8: .4byte 0x0000AAA9
_080EC3AC:
	adds r0, r3, #0
	bl sub_080EC1F4
_080EC3B2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080EC3B8
sub_080EC3B8: @ 0x080EC3B8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r2, _080EC3E4 @ =sub_080EC44C
	movs r1, #8
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080EC3E8
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080EC3F0
	.align 2, 0
_080EC3E4: .4byte sub_080EC44C
_080EC3E8:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080EC3F0:
	str r0, [r4, #8]
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r5, #8]
	ldr r1, _080EC41C @ =0xFFFFFBFF
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080EC420
	movs r0, #0x1c
	b _080EC422
	.align 2, 0
_080EC41C: .4byte 0xFFFFFBFF
_080EC420:
	movs r0, #0x2a
_080EC422:
	strh r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r2, [r0, #0x10]
	adds r0, r5, #0
	movs r1, #2
	bl sub_080EC650
	adds r1, r4, #0
	adds r1, #0xb4
	movs r0, #1
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080EC44C
sub_080EC44C: @ 0x080EC44C
	push {r4, r5, lr}
	adds r3, r0, #0
	mov ip, r3
	adds r2, r3, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #8
	beq _080EC46C
	cmp r0, #8
	bgt _080EC466
	cmp r0, #0
	beq _080EC4E4
	b _080EC4FE
_080EC466:
	cmp r0, #9
	beq _080EC47C
	b _080EC4FE
_080EC46C:
	ldr r0, [r3, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080EC4FE
	movs r0, #9
	strb r0, [r2]
	b _080EC4D8
_080EC47C:
	ldr r0, [r3, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080EC4FE
	movs r4, #8
	adds r0, r3, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080EC4B4
	adds r2, r3, #0
	adds r2, #0x80
	ldr r1, _080EC4C8 @ =gUnk_08351530
	ldr r0, _080EC4CC @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x90
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r5, #0
	ldrsh r1, [r2, r5]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080EC4B4
	movs r4, #0xc
_080EC4B4:
	mov r0, ip
	adds r0, #0xb5
	ldrb r0, [r0]
	cmp r0, r4
	bhs _080EC4D0
	adds r0, r3, #0
	bl sub_080EC3B8
	b _080EC4FE
	.align 2, 0
_080EC4C8: .4byte gUnk_08351530
_080EC4CC: .4byte gUnk_0203AD30
_080EC4D0:
	adds r1, r3, #0
	adds r1, #0x83
	movs r0, #0
	strb r0, [r1]
_080EC4D8:
	ldr r0, [r3, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #8]
	b _080EC4FE
_080EC4E4:
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080EC4FE
	adds r1, r3, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	adds r0, r3, #0
	bl sub_080EBCDC
_080EC4FE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080EC504
sub_080EC504: @ 0x080EC504
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, _080EC560 @ =sub_080ED77C
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
	ldr r1, [r4, #0x40]
	movs r0, #0xa8
	lsls r0, r0, #0xa
	cmp r1, r0
	bne _080EC564
	ldr r1, [r4, #0x44]
	movs r0, #0xf8
	lsls r0, r0, #8
	cmp r1, r0
	bne _080EC564
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bhi _080EC556
	adds r0, r1, #0
	cmp r0, #4
	beq _080EC556
	cmp r0, #5
	bne _080EC564
_080EC556:
	adds r0, r4, #0
	bl sub_080ED87C
	b _080EC5AC
	.align 2, 0
_080EC560: .4byte sub_080ED77C
_080EC564:
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080EC578
	adds r0, r4, #0
	bl sub_080ED7D8
	b _080EC5AC
_080EC578:
	ldr r0, _080EC5A4 @ =0xFFFFFBFF
	ands r1, r0
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x83
	ldrb r0, [r1]
	adds r2, r1, #0
	cmp r0, #2
	blt _080EC59C
	cmp r0, #3
	ble _080EC5A8
	cmp r0, #6
	bgt _080EC59C
	cmp r0, #5
	bge _080EC5AC
_080EC59C:
	movs r0, #5
	strb r0, [r2]
	b _080EC5AC
	.align 2, 0
_080EC5A4: .4byte 0xFFFFFBFF
_080EC5A8:
	movs r0, #6
	strb r0, [r1]
_080EC5AC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080EC5B4
sub_080EC5B4: @ 0x080EC5B4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080EC638
	movs r5, #0
	ldr r0, _080EC640 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r5, r0
	bhs _080EC638
	movs r7, #0xf8
	lsls r7, r7, #5
	ldr r6, _080EC644 @ =gCurLevelInfo
_080EC5D0:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, _080EC648 @ =gKirbys
	adds r2, r1, r0
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080EC62A
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	beq _080EC62A
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r1, [r0]
	ldrh r0, [r1, #2]
	cmp r0, r7
	beq _080EC62A
	ldrb r1, [r1, #4]
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r6
	ldr r2, _080EC64C @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
	movs r0, #1
	strh r0, [r4, #4]
_080EC62A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _080EC640 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r5, r0
	blo _080EC5D0
_080EC638:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080EC640: .4byte gUnk_0203AD44
_080EC644: .4byte gCurLevelInfo
_080EC648: .4byte gKirbys
_080EC64C: .4byte 0x0000065E

	thumb_func_start sub_080EC650
sub_080EC650: @ 0x080EC650
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	ldr r2, _080EC6B4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EC6B8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EC6BC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	movs r1, #0
	ldr r0, _080EC6C0 @ =0x00002492
	ldr r7, _080EC6C4 @ =gUnk_020229D4
	cmp r2, r0
	blt _080EC698
	adds r3, r0, #0
_080EC686:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #5
	bhi _080EC698
	adds r0, r1, #1
	muls r0, r3, r0
	cmp r2, r0
	bge _080EC686
_080EC698:
	adds r0, r1, #0
	adds r0, #0xc1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080EC6C8
	ldr r1, [r4, #0x40]
	asrs r0, r1, #8
	subs r0, #0x14
	b _080EC6CE
	.align 2, 0
_080EC6B4: .4byte gRngVal
_080EC6B8: .4byte 0x00196225
_080EC6BC: .4byte 0x3C6EF35F
_080EC6C0: .4byte 0x00002492
_080EC6C4: .4byte gUnk_020229D4
_080EC6C8:
	ldr r1, [r4, #0x40]
	asrs r0, r1, #8
	adds r0, #0x14
_080EC6CE:
	str r0, [sp]
	adds r2, r1, #0
	ldr r0, [r4, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080EC6E8
	ldr r1, [r4, #0x44]
	asrs r0, r1, #8
	adds r5, r0, #0
	adds r5, #0x14
	b _080EC6F0
_080EC6E8:
	ldr r1, [r4, #0x44]
	asrs r0, r1, #8
	adds r5, r0, #0
	subs r5, #0x14
_080EC6F0:
	mov r3, r8
	cmp r3, #1
	bne _080EC6FC
	asrs r2, r2, #8
	str r2, [sp]
	asrs r5, r1, #8
_080EC6FC:
	movs r3, #0
	movs r2, #1
	ldr r1, [r7]
	adds r0, r1, #0
	ands r0, r2
	movs r6, #0x56
	adds r6, r6, r4
	mov ip, r6
	b _080EC722
_080EC70E:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x1f
	bhi _080EC72A
	movs r2, #1
	lsls r2, r3
	ldr r1, [r7]
	adds r0, r1, #0
	ands r0, r2
_080EC722:
	cmp r0, #0
	bne _080EC70E
	orrs r1, r2
	str r1, [r7]
_080EC72A:
	lsls r1, r3, #3
	adds r1, r1, r3
	lsls r1, r1, #2
	ldr r0, _080EC7A0 @ =gUnk_020229E0
	adds r1, r1, r0
	movs r2, #0
	movs r7, #1
	strb r7, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r6, sp
	ldrh r6, [r6]
	strh r6, [r1, #6]
	strh r5, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	mov r0, sb
	strb r0, [r1, #0xc]
	mov r6, r8
	strb r6, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r0, sl
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
	adds r1, r0, #0
	str r4, [r1, #0x70]
	ldr r0, [r4, #8]
	ands r0, r7
	cmp r0, #0
	beq _080EC78E
	ldr r0, [r1, #8]
	orrs r0, r7
	str r0, [r1, #8]
_080EC78E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080EC7A0: .4byte gUnk_020229E0

	thumb_func_start CreateMoleyItem
CreateMoleyItem: @ 0x080EC7A4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080EC7D8 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080EC7DC @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080EC7E0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080EC7E8
	.align 2, 0
_080EC7D8: .4byte ObjectMain
_080EC7DC: .4byte ObjectDestroy
_080EC7E0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080EC7E8:
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
	ldr r0, _080EC84C @ =sub_0809F840
	str r0, [r5, #0x7c]
	movs r1, #5
	rsbs r1, r1, #0
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
	adds r0, #0x82
	ldrb r0, [r0]
	subs r0, #0xc1
	cmp r0, #6
	bhi _080EC8B8
	lsls r0, r0, #2
	ldr r1, _080EC850 @ =_080EC854
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080EC84C: .4byte sub_0809F840
_080EC850: .4byte _080EC854
_080EC854: @ jump table
	.4byte _080EC884 @ case 0
	.4byte _080EC870 @ case 1
	.4byte _080EC870 @ case 2
	.4byte _080EC8A6 @ case 3
	.4byte _080EC898 @ case 4
	.4byte _080EC8A6 @ case 5
	.4byte _080EC8A6 @ case 6
_080EC870:
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #4
	bl sub_0803E2B0
	b _080EC8B8
_080EC884:
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #6
	bl sub_0803E2B0
	b _080EC8B8
_080EC898:
	ldr r0, [r5, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	str r0, [r5, #0x5c]
_080EC8A6:
	movs r2, #8
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #8
	bl sub_0803E2B0
_080EC8B8:
	adds r0, r5, #0
	bl ObjectInitSprite
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bne _080EC8D8
	adds r0, r5, #0
	bl sub_080EC8E8
	b _080EC8DE
_080EC8D8:
	adds r0, r5, #0
	bl sub_080ED8C4
_080EC8DE:
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080EC8E8
sub_080EC8E8: @ 0x080EC8E8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	movs r4, #0
	ldr r0, [r0, #0x70]
	mov sb, r0
	adds r0, #0xac
	ldr r5, [r0]
	ldr r2, _080EC938 @ =sub_080ECDE0
	mov r0, r8
	movs r1, #0
	bl ObjectSetFunc
	mov r0, r8
	adds r0, #0x50
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #0x5e
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bne _080EC91C
	b _080ECA94
_080EC91C:
	cmp r0, #0
	beq _080EC948
	ldr r2, _080EC93C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EC940 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EC944 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r4, r0, #0x10
	movs r0, #0xff
	ands r4, r0
	b _080EC966
	.align 2, 0
_080EC938: .4byte sub_080ECDE0
_080EC93C: .4byte gRngVal
_080EC940: .4byte 0x00196225
_080EC944: .4byte 0x3C6EF35F
_080EC948:
	ldr r2, [r5, #0x40]
	mov r0, sb
	ldr r1, [r0, #0x40]
	subs r0, r2, r1
	cmp r0, #0
	blt _080EC960
	asrs r4, r0, #8
	ldr r1, _080EC95C @ =gRngVal
	mov ip, r1
	b _080EC968
	.align 2, 0
_080EC95C: .4byte gRngVal
_080EC960:
	subs r0, r1, r2
	asrs r4, r0, #8
	ldr r2, _080EC974 @ =gRngVal
_080EC966:
	mov ip, r2
_080EC968:
	cmp r4, #0x1d
	bhi _080EC978
	mov r1, r8
	adds r1, #0x50
	movs r0, #0x80
	b _080EC9D2
	.align 2, 0
_080EC974: .4byte gRngVal
_080EC978:
	cmp r4, #0x3b
	bhi _080EC984
	mov r1, r8
	adds r1, #0x50
	movs r0, #0xd0
	b _080EC9D2
_080EC984:
	cmp r4, #0x59
	bhi _080EC992
	mov r1, r8
	adds r1, #0x50
	movs r0, #0x90
	lsls r0, r0, #1
	b _080EC9D2
_080EC992:
	cmp r4, #0x77
	bhi _080EC9A0
	mov r1, r8
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
	b _080EC9D2
_080EC9A0:
	cmp r4, #0x95
	bhi _080EC9AE
	mov r1, r8
	adds r1, #0x50
	movs r0, #0xe8
	lsls r0, r0, #1
	b _080EC9D2
_080EC9AE:
	cmp r4, #0xb3
	bhi _080EC9BC
	mov r1, r8
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #2
	b _080EC9D2
_080EC9BC:
	cmp r4, #0xd1
	bhi _080EC9CA
	mov r1, r8
	adds r1, #0x50
	movs r0, #0x90
	lsls r0, r0, #2
	b _080EC9D2
_080EC9CA:
	mov r1, r8
	adds r1, #0x50
	movs r0, #0xa0
	lsls r0, r0, #2
_080EC9D2:
	strh r0, [r1]
	adds r7, r1, #0
	mov r1, ip
	ldr r0, [r1]
	ldr r6, _080ECA38 @ =0x00196225
	adds r2, r0, #0
	muls r2, r6, r2
	ldr r5, _080ECA3C @ =0x3C6EF35F
	adds r2, r2, r5
	str r2, [r1]
	movs r0, #0
	ldrsh r1, [r7, r0]
	lsrs r0, r2, #0x10
	movs r4, #0x7f
	ands r0, r4
	adds r1, r1, r0
	strh r1, [r7]
	mov r3, r8
	adds r3, #0x52
	movs r1, #0xe8
	lsls r1, r1, #1
	strh r1, [r3]
	adds r0, r2, #0
	muls r0, r6, r0
	adds r0, r0, r5
	mov r2, ip
	str r0, [r2]
	lsrs r2, r0, #0x10
	ands r2, r4
	adds r1, r2, r1
	strh r1, [r3]
	mov r0, sb
	ldr r1, [r0, #0x44]
	ldr r0, _080ECA40 @ =0x0000F7FF
	cmp r1, r0
	ble _080ECA52
	mov r0, sb
	ldr r1, [r0, #0x40]
	movs r0, #0xfc
	lsls r0, r0, #9
	cmp r1, r0
	bne _080ECA44
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r2, r1
	strh r0, [r3]
	ldrh r0, [r7]
	adds r0, #0x80
	strh r0, [r7]
	b _080ECA66
	.align 2, 0
_080ECA38: .4byte 0x00196225
_080ECA3C: .4byte 0x3C6EF35F
_080ECA40: .4byte 0x0000F7FF
_080ECA44:
	movs r0, #0xa8
	lsls r0, r0, #0xa
	cmp r1, r0
	bne _080ECA66
	movs r1, #0x80
	lsls r1, r1, #1
	b _080ECA62
_080ECA52:
	mov r0, sb
	ldr r1, [r0, #0x40]
	movs r0, #0xfc
	lsls r0, r0, #9
	cmp r1, r0
	bne _080ECA66
	movs r1, #0xac
	lsls r1, r1, #2
_080ECA62:
	adds r0, r2, r1
	strh r0, [r3]
_080ECA66:
	mov r2, sb
	ldr r0, [r2, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080ECA82
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r3]
	ldrh r0, [r7]
	adds r0, #0x80
	strh r0, [r7]
_080ECA82:
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080ECA94
	ldrh r0, [r7]
	rsbs r0, r0, #0
	strh r0, [r7]
_080ECA94:
	mov r0, r8
	adds r0, #0x82
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0xc7
	bne _080ECAA8
	mov r1, r8
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
_080ECAA8:
	mov r2, r8
	ldr r0, [r2, #8]
	ldr r1, _080ECB34 @ =0xFFFFFDFF
	ands r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	ldr r1, _080ECB38 @ =gKirbys
	ldr r0, _080ECB3C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	mov r1, r8
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080ECB22
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _080ECAE6
	mov r0, r8
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080ECB22
_080ECAE6:
	ldr r1, _080ECB40 @ =gUnk_08D60FA4
	ldr r4, _080ECB44 @ =gSongTable
	ldr r2, _080ECB48 @ =0x00000C5C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080ECB0A
	ldr r1, _080ECB4C @ =0x00000C58
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080ECB22
_080ECB0A:
	cmp r3, #0
	beq _080ECB1C
	ldr r0, _080ECB50 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080ECB22
_080ECB1C:
	ldr r0, _080ECB54 @ =0x0000018B
	bl m4aSongNumStart
_080ECB22:
	ldrb r0, [r5]
	subs r0, #0xc1
	cmp r0, #6
	bhi _080ECB9C
	lsls r0, r0, #2
	ldr r1, _080ECB58 @ =_080ECB5C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080ECB34: .4byte 0xFFFFFDFF
_080ECB38: .4byte gKirbys
_080ECB3C: .4byte gUnk_0203AD3C
_080ECB40: .4byte gUnk_08D60FA4
_080ECB44: .4byte gSongTable
_080ECB48: .4byte 0x00000C5C
_080ECB4C: .4byte 0x00000C58
_080ECB50: .4byte gUnk_0203AD10
_080ECB54: .4byte 0x0000018B
_080ECB58: .4byte _080ECB5C
_080ECB5C: @ jump table
	.4byte _080ECB9C @ case 0
	.4byte _080ECB78 @ case 1
	.4byte _080ECB78 @ case 2
	.4byte _080ECB8A @ case 3
	.4byte _080ECB9C @ case 4
	.4byte _080ECB84 @ case 5
	.4byte _080ECB9C @ case 6
_080ECB78:
	ldr r0, _080ECB80 @ =sub_080ECCAC
	mov r2, r8
	b _080ECB9A
	.align 2, 0
_080ECB80: .4byte sub_080ECCAC
_080ECB84:
	movs r0, #0
	movs r1, #0x91
	b _080ECB8E
_080ECB8A:
	movs r0, #0
	movs r1, #0x5a
_080ECB8E:
	mov r2, r8
	strh r1, [r2, #4]
	mov r1, r8
	adds r1, #0x9e
	strb r0, [r1]
	ldr r0, _080ECBA8 @ =sub_080ECBAC
_080ECB9A:
	str r0, [r2, #0x78]
_080ECB9C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ECBA8: .4byte sub_080ECBAC

	thumb_func_start sub_080ECBAC
sub_080ECBAC: @ 0x080ECBAC
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x9e
	ldrb r0, [r2]
	cmp r0, #0
	bne _080ECBC2
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_080ECBC2:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080ECC46
	ldrb r0, [r2]
	cmp r0, #3
	beq _080ECC3A
	adds r1, r4, #0
	adds r1, #0x83
	ldrb r0, [r1]
	cmp r0, #0
	bne _080ECBE4
	movs r0, #1
	b _080ECBE6
_080ECBE4:
	movs r0, #0
_080ECBE6:
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #1
	beq _080ECC0E
	cmp r1, #1
	bgt _080ECBFE
	cmp r1, #0
	beq _080ECC04
	b _080ECC1E
_080ECBFE:
	cmp r1, #2
	beq _080ECC16
	b _080ECC1E
_080ECC04:
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x90
	lsls r0, r0, #1
	b _080ECC1C
_080ECC0E:
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xc0
	b _080ECC1C
_080ECC16:
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
_080ECC1C:
	strh r0, [r1]
_080ECC1E:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #8]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	b _080ECC46
_080ECC3A:
	adds r0, r4, #0
	adds r0, #0x52
	movs r1, #0
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
_080ECC46:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080ECC62
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_0809DA30
_080ECC62:
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0xc4
	bne _080ECC84
	ldrh r1, [r4, #4]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080ECCA6
	movs r2, #0xa
	rsbs r2, r2, #0
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_08097E9C
	b _080ECCA6
_080ECC84:
	ldrh r1, [r4, #4]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080ECCA6
	adds r0, r4, #0
	adds r0, #0x34
	ldrb r1, [r0]
	rsbs r1, r1, #0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, #1
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r4, #0
	bl sub_08097E9C
_080ECCA6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080ECCAC
sub_080ECCAC: @ 0x080ECCAC
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #0
	bne _080ECCC2
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
_080ECCC2:
	adds r0, r3, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080ECCD2
	b _080ECDDC
_080ECCD2:
	ldrb r0, [r2]
	cmp r0, #0
	bne _080ECCDC
	movs r0, #1
	b _080ECCDE
_080ECCDC:
	movs r0, #0
_080ECCDE:
	strb r0, [r2]
	adds r0, r3, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0xc2
	bne _080ECD8E
	ldr r2, _080ECD10 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080ECD14 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080ECD18 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r1, r0
	cmp r1, #1
	beq _080ECD30
	cmp r1, #1
	blo _080ECD1C
	cmp r1, #2
	beq _080ECD42
	cmp r1, #3
	beq _080ECD56
	b _080ECD6A
	.align 2, 0
_080ECD10: .4byte gRngVal
_080ECD14: .4byte 0x00196225
_080ECD18: .4byte 0x3C6EF35F
_080ECD1C:
	adds r0, r3, #0
	adds r0, #0x50
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	adds r1, r3, #0
	adds r1, #0x52
	movs r0, #0xe8
	lsls r0, r0, #1
	b _080ECD68
_080ECD30:
	adds r0, r3, #0
	adds r0, #0x50
	movs r1, #0x80
	strh r1, [r0]
	adds r1, r3, #0
	adds r1, #0x52
	movs r0, #0xb4
	lsls r0, r0, #2
	b _080ECD68
_080ECD42:
	adds r0, r3, #0
	adds r0, #0x50
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	adds r1, r3, #0
	adds r1, #0x52
	movs r0, #0xa0
	lsls r0, r0, #2
	b _080ECD68
_080ECD56:
	adds r0, r3, #0
	adds r0, #0x50
	movs r1, #0x98
	lsls r1, r1, #2
	strh r1, [r0]
	adds r1, r3, #0
	adds r1, #0x52
	movs r0, #0xa0
	lsls r0, r0, #1
_080ECD68:
	strh r0, [r1]
_080ECD6A:
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080ECD7E
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080ECD7E:
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _080ECDD4
	b _080ECDB8
_080ECD8E:
	adds r0, r3, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bne _080ECDAA
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _080ECDCA
	b _080ECDB8
_080ECDAA:
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _080ECDCA
_080ECDB8:
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r3, #8]
	adds r0, r3, #0
	bl sub_0809DA30
	b _080ECDDC
_080ECDCA:
	adds r1, r3, #0
	adds r1, #0x52
	movs r0, #0x88
	lsls r0, r0, #2
	strh r0, [r1]
_080ECDD4:
	ldr r0, [r3, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r3, #8]
_080ECDDC:
	pop {r0}
	bx r0

	thumb_func_start sub_080ECDE0
sub_080ECDE0: @ 0x080ECDE0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4, #8]
	movs r0, #4
	orrs r2, r0
	str r2, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0xc7
	bne _080ECE0E
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080ECE0E
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r2, r0
	str r2, [r4, #8]
	b _080ECE80
_080ECE0E:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080ECEB8
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0xc7
	beq _080ECE88
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080ECE6E
	movs r0, #1
	adds r1, r4, #0
	bl sub_0806FE64
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0xc1
	bne _080ECE4A
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
	b _080ECE52
_080ECE4A:
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x90
	lsls r0, r0, #1
_080ECE52:
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r1]
	movs r0, #1
	strh r0, [r4, #4]
	b _080ECEB8
_080ECE6E:
	movs r0, #1
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_080ECE80:
	adds r0, r4, #0
	bl sub_0809DA30
	b _080ECEB8
_080ECE88:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080ECE9C
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #2
	b _080ECEA4
_080ECE9C:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
_080ECEA4:
	strh r0, [r1]
	adds r2, r1, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080ECEB8
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080ECEB8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ECEC0
sub_080ECEC0: @ 0x080ECEC0
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080ECEF0 @ =sub_080ECF6C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080ECEF4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080ECEF8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080ECF00
	.align 2, 0
_080ECEF0: .4byte sub_080ECF6C
_080ECEF4: .4byte sub_0803DCCC
_080ECEF8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080ECF00:
	adds r0, r4, #0
	bl sub_0803E3B0
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
	strh r0, [r1]
	ldr r0, [r4, #0x38]
	ldr r1, _080ECF64 @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r4, #0x38]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080ECF38
	ldrh r0, [r4, #6]
	orrs r0, r1
	strh r0, [r4, #6]
_080ECF38:
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _080ECF68 @ =0x06012000
	movs r3, #0xd0
	lsls r3, r3, #2
	movs r0, #0
	str r0, [sp]
	movs r0, #0x17
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080ECF64: .4byte 0xFFFFF000
_080ECF68: .4byte 0x06012000

	thumb_func_start sub_080ECF6C
sub_080ECF6C: @ 0x080ECF6C
	push {r4, r5, r6, lr}
	ldr r2, _080ECF8C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _080ECF90
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080ECF98
	.align 2, 0
_080ECF8C: .4byte gCurTask
_080ECF90:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080ECF98:
	adds r3, r0, #0
	ldrh r4, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ands r0, r4
	cmp r0, #0
	beq _080ECFB0
	ldr r0, [r5]
	bl TaskDestroy
	b _080ED072
_080ECFB0:
	ldr r1, [r3, #0x44]
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	beq _080ECFC2
	adds r0, r2, #0
	orrs r0, r4
	strh r0, [r3, #6]
	b _080ED072
_080ECFC2:
	cmp r1, #0
	beq _080ECFF4
	ldr r0, _080ECFF0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080ED064
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r4
	cmp r0, #0
	bne _080ED064
	adds r0, r3, #0
	bl sub_0803DBC8
	b _080ED072
	.align 2, 0
_080ECFF0: .4byte gUnk_03000510
_080ECFF4:
	adds r5, r3, #0
	movs r4, #0
	ldr r2, _080ED05C @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _080ED036
	movs r4, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080ED036
	movs r4, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080ED036
	movs r4, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080ED036
	movs r4, #4
_080ED036:
	ldr r0, _080ED060 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080ED064
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080ED064
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080ED072
	.align 2, 0
_080ED05C: .4byte gKirbys
_080ED060: .4byte gUnk_03000510
_080ED064:
	ldrh r1, [r3, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r3, #6]
	adds r0, r3, #0
	bl sub_0806FAC8
_080ED072:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080ED078
sub_080ED078: @ 0x080ED078
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _080ED0A8 @ =sub_080ED270
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080ED0AC @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080ED0B0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080ED0B8
	.align 2, 0
_080ED0A8: .4byte sub_080ED270
_080ED0AC: .4byte sub_0803DCCC
_080ED0B0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080ED0B8:
	adds r5, r0, #0
	bl sub_0803E380
	movs r3, #0
	movs r0, #2
	strb r0, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x44]
	str r4, [r5, #0x70]
	strh r3, [r5, #4]
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
	ldr r0, _080ED130 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080ED106
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r5, #8]
_080ED106:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r4, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080ED13C
	ldr r0, [r5, #0x44]
	ldr r1, _080ED134 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r5, #0x44]
	adds r0, r5, #0
	adds r0, #0x52
	strh r3, [r0]
	ldr r7, _080ED138 @ =gRngVal
	b _080ED166
	.align 2, 0
_080ED130: .4byte gUnk_03000510
_080ED134: .4byte 0xFFFFF800
_080ED138: .4byte gRngVal
_080ED13C:
	ldr r0, [r5, #0x44]
	movs r1, #0xb0
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldr r2, _080ED1B4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080ED1B8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080ED1BC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsls r0, r0, #7
	lsrs r0, r0, #0x17
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x52
	strh r0, [r1]
	adds r7, r2, #0
_080ED166:
	ldr r0, [r7]
	ldr r4, _080ED1B8 @ =0x00196225
	adds r2, r0, #0
	muls r2, r4, r2
	ldr r3, _080ED1BC @ =0x3C6EF35F
	adds r2, r2, r3
	str r2, [r7]
	lsrs r0, r2, #0x10
	movs r1, #0x7f
	ands r0, r1
	adds r0, #0x20
	adds r6, r5, #0
	adds r6, #0x50
	strh r0, [r6]
	adds r0, r2, #0
	muls r0, r4, r0
	adds r0, r0, r3
	lsrs r2, r0, #0x10
	movs r1, #0xf
	ands r2, r1
	muls r0, r4, r0
	adds r0, r0, r3
	str r0, [r7]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080ED1C0
	ldr r0, [r5, #8]
	orrs r0, r1
	str r0, [r5, #8]
	lsls r1, r2, #8
	ldr r0, [r5, #0x40]
	subs r0, r0, r1
	str r0, [r5, #0x40]
	ldrh r0, [r6]
	rsbs r0, r0, #0
	strh r0, [r6]
	b _080ED1C8
	.align 2, 0
_080ED1B4: .4byte gRngVal
_080ED1B8: .4byte 0x00196225
_080ED1BC: .4byte 0x3C6EF35F
_080ED1C0:
	lsls r1, r2, #8
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
_080ED1C8:
	ldr r1, [r7]
	ldr r0, _080ED1F4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080ED1F8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r7]
	lsrs r0, r0, #0x10
	movs r4, #1
	ands r0, r4
	cmp r0, #0
	beq _080ED200
	adds r1, r5, #0
	adds r1, #0x10
	ldr r3, _080ED1FC @ =0x00000342
	movs r4, #0
	str r4, [sp]
	movs r0, #0x17
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #4
	b _080ED210
	.align 2, 0
_080ED1F4: .4byte 0x00196225
_080ED1F8: .4byte 0x3C6EF35F
_080ED1FC: .4byte 0x00000342
_080ED200:
	adds r1, r5, #0
	adds r1, #0x10
	ldr r3, _080ED258 @ =0x00000342
	str r4, [sp]
	movs r0, #0x17
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #1
_080ED210:
	bl sub_080708DC
	strh r4, [r5, #4]
	adds r4, r5, #0
	adds r4, #0x2f
	movs r3, #0
	strb r3, [r4]
	ldr r2, _080ED25C @ =gKirbys
	ldr r0, _080ED260 @ =gUnk_0203AD3C
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
	bne _080ED264
	ldr r5, _080ED258 @ =0x00000342
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080ED266
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080ED266
	.align 2, 0
_080ED258: .4byte 0x00000342
_080ED25C: .4byte gKirbys
_080ED260: .4byte gUnk_0203AD3C
_080ED264:
	strb r3, [r4]
_080ED266:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ED270
sub_080ED270: @ 0x080ED270
	push {r4, r5, r6, lr}
	sub sp, #0x28
	ldr r2, _080ED290 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080ED294
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080ED29C
	.align 2, 0
_080ED290: .4byte gCurTask
_080ED294:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080ED29C:
	adds r5, r0, #0
	ldr r3, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080ED2B4
	ldr r0, [r2]
	bl TaskDestroy
	b _080ED514
_080ED2B4:
	ldr r0, [r5, #0x70]
	ldr r0, [r0, #8]
	ands r0, r1
	cmp r0, #0
	beq _080ED2C4
	orrs r3, r1
	str r3, [r5, #8]
	b _080ED514
_080ED2C4:
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080ED31A
	ldr r2, _080ED308 @ =gKirbys
	ldr r0, _080ED30C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r6, r1, #0
	ldrh r1, [r6]
	cmp r0, r1
	bne _080ED3CC
	movs r0, #0x80
	lsls r0, r0, #7
	ands r3, r0
	cmp r3, #0
	beq _080ED310
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080ED3EC
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #1
	b _080ED352
	.align 2, 0
_080ED308: .4byte gKirbys
_080ED30C: .4byte gUnk_0203AD3C
_080ED310:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080ED3EC
	movs r0, #1
	b _080ED39C
_080ED31A:
	ldr r2, _080ED384 @ =gKirbys
	ldr r0, _080ED388 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r6, r1, #0
	ldrh r1, [r6]
	cmp r0, r1
	bne _080ED3CC
	movs r0, #0x80
	lsls r0, r0, #7
	ands r3, r0
	cmp r3, #0
	beq _080ED394
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080ED3EC
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #4
_080ED352:
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080ED38C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080ED390 @ =0x0400000A
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
	b _080ED3EC
	.align 2, 0
_080ED384: .4byte gKirbys
_080ED388: .4byte gUnk_0203AD3C
_080ED38C: .4byte 0xFFF7FFFF
_080ED390: .4byte 0x0400000A
_080ED394:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080ED3EC
	movs r0, #4
_080ED39C:
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080ED3C4 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080ED3C8 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080ED3EC
	.align 2, 0
_080ED3C4: .4byte 0xFFF7FFFF
_080ED3C8: .4byte 0x0400000A
_080ED3CC:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _080ED3E2
	movs r4, #0x80
	lsls r4, r4, #7
	ands r4, r3
	cmp r4, #0
	bne _080ED3E2
	bl sub_08157190
	str r4, [r5, #0x10]
_080ED3E2:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_080ED3EC:
	ldr r2, _080ED42C @ =gKirbys
	ldr r0, _080ED430 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _080ED438
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080ED440
	ldr r6, _080ED434 @ =0x00000342
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080ED440
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080ED440
	.align 2, 0
_080ED42C: .4byte gKirbys
_080ED430: .4byte gUnk_0203AD3C
_080ED434: .4byte 0x00000342
_080ED438:
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
_080ED440:
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080ED514
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x15
	strh r0, [r1]
	lsls r0, r0, #0x10
	movs r2, #0xfd
	lsls r2, r2, #0x18
	adds r4, r1, #0
	cmp r0, r2
	bge _080ED470
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r4]
_080ED470:
	ldr r3, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r3
	cmp r0, #0
	bne _080ED498
	ldr r1, [r5, #0x40]
	str r1, [r5, #0x48]
	ldr r2, [r5, #0x44]
	str r2, [r5, #0x4c]
	adds r0, r5, #0
	adds r0, #0x50
	movs r6, #0
	ldrsh r0, [r0, r6]
	adds r1, r1, r0
	str r1, [r5, #0x40]
	movs r1, #0
	ldrsh r0, [r4, r1]
	subs r2, r2, r0
	str r2, [r5, #0x44]
_080ED498:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r3, r0
	cmp r3, #0
	bne _080ED4EA
	ldr r2, _080ED51C @ =gCurLevelInfo
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	adds r0, r2, #0
	adds r0, #0x50
	adds r0, r1, r0
	ldr r3, [r5, #0x40]
	ldr r0, [r0]
	cmp r3, r0
	bgt _080ED4EA
	adds r0, r2, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt _080ED4EA
	adds r0, r2, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r3, [r5, #0x44]
	ldr r0, [r0]
	cmp r3, r0
	bgt _080ED4EA
	adds r0, r2, #0
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt _080ED4EA
	adds r0, r5, #0
	bl sub_0806FC70
_080ED4EA:
	adds r1, r5, #0
	adds r1, #0x62
	ldrb r0, [r1]
	cmp r0, #0
	beq _080ED50E
	movs r0, #0
	strb r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r4]
	subs r1, #0x12
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r1]
	ldr r0, [r5, #8]
	orrs r0, r2
	str r0, [r5, #8]
_080ED50E:
	adds r0, r5, #0
	bl sub_0806F8BC
_080ED514:
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080ED51C: .4byte gCurLevelInfo

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
