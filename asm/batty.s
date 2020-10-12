	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateBatty
CreateBatty: @ 0x080BCBCC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080BCC00 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080BCC04 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080BCC08
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080BCC10
	.align 2, 0
_080BCC00: .4byte ObjectMain
_080BCC04: .4byte ObjectDestroy
_080BCC08:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080BCC10:
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
	ble _080BCC30
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BCC38
_080BCC30:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BCC38:
	str r0, [r4, #8]
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
	bl ObjectInitSprite
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #2
	bne _080BCC7C
	adds r0, r4, #0
	bl sub_080BD458
	b _080BCC96
_080BCC7C:
	ldr r2, _080BCCAC @ =gUnk_08351648
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
_080BCC96:
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
_080BCCAC: .4byte gUnk_08351648

	thumb_func_start sub_080BCCB0
sub_080BCCB0: @ 0x080BCCB0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldr r2, _080BCDC4 @ =gUnk_08354978
	adds r5, r4, #0
	adds r5, #0x9f
	ldrb r0, [r5]
	mov r8, r0
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
	bne _080BCD00
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r3, r5, #0
	mov sb, r0
	adds r6, r4, #0
	adds r6, #0x50
	movs r2, #0x52
	adds r2, r2, r4
	mov ip, r2
	cmp r1, #0
	bne _080BCDF4
	movs r0, #0xff
	strb r0, [r3]
_080BCD00:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r3, r5, #0
	mov sb, r0
	adds r6, r4, #0
	adds r6, #0x50
	movs r5, #0x52
	adds r5, r5, r4
	mov ip, r5
	cmp r1, #0
	bne _080BCDF4
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
	bne _080BCD32
	subs r0, r1, #1
	strb r0, [r3]
_080BCD32:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	mov r1, sb
	strb r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080BCD5A
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
_080BCD5A:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080BCDC8
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
	movs r5, #0
	ldrsh r0, [r0, r5]
	cmp r1, r0
	beq _080BCD92
	strh r2, [r6]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BCD92
	rsbs r0, r2, #0
	strh r0, [r6]
_080BCD92:
	adds r3, r4, #0
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
	movs r5, #2
	ldrsh r1, [r1, r5]
	movs r5, #2
	ldrsh r0, [r0, r5]
	movs r5, #0x52
	adds r5, r5, r4
	mov ip, r5
	cmp r1, r0
	beq _080BCDF4
	strh r2, [r5]
	b _080BCDF4
	.align 2, 0
_080BCDC4: .4byte gUnk_08354978
_080BCDC8:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	mov r1, ip
	strh r0, [r1]
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
	beq _080BCE12
	rsbs r0, r2, #0
	strh r0, [r6]
_080BCDF4:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BCE12
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r6]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r6]
	b _080BCE24
_080BCE12:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrh r0, [r1, #4]
	ldrh r2, [r6]
	adds r0, r0, r2
	strh r0, [r6]
_080BCE24:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #6]
	mov r3, ip
	ldrh r3, [r3]
	adds r0, r0, r3
	mov r5, ip
	strh r0, [r5]
	mov r1, sb
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bne _080BCE80
	adds r1, r4, #0
	adds r1, #0xb0
	ldr r0, [r1]
	ldrh r0, [r0, #0x14]
	cmp r0, #0
	beq _080BCE60
	cmp r0, #1
	bne _080BCE62
	ldrh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
_080BCE60:
	strh r0, [r6]
_080BCE62:
	ldr r0, [r1]
	ldrh r0, [r0, #0x12]
	cmp r0, #0
	beq _080BCE70
	cmp r0, #1
	beq _080BCE76
	b _080BCE80
_080BCE70:
	mov r2, ip
	strh r0, [r2]
	b _080BCE80
_080BCE76:
	mov r3, ip
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r3]
_080BCE80:
	ldr r1, _080BCED0 @ =gUnk_08354A14
	mov r5, sb
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r2, [r6]
	adds r0, r0, r2
	strh r0, [r6]
	ldrb r0, [r5]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	mov r3, ip
	ldrh r3, [r3]
	adds r0, r0, r3
	mov r5, ip
	strh r0, [r5]
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x14
	ble _080BCF18
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r3, [r0, #0x40]
	ldr r0, [r4, #0x40]
	subs r2, r3, r0
	adds r5, r1, #0
	cmp r2, #0
	blt _080BCED8
	ldr r0, _080BCED4 @ =0x00003BFF
	cmp r2, r0
	ble _080BCEE0
	b _080BCF0C
	.align 2, 0
_080BCED0: .4byte gUnk_08354A14
_080BCED4: .4byte 0x00003BFF
_080BCED8:
	subs r1, r0, r3
	ldr r0, _080BCEF4 @ =0x00003BFF
	cmp r1, r0
	bgt _080BCF0C
_080BCEE0:
	ldr r0, [r5]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080BCEF8
	ldr r0, _080BCEF4 @ =0x00003BFF
	cmp r2, r0
	ble _080BCF00
	b _080BCF0C
	.align 2, 0
_080BCEF4: .4byte 0x00003BFF
_080BCEF8:
	subs r1, r1, r0
	ldr r0, _080BCF08 @ =0x00003BFF
	cmp r1, r0
	bgt _080BCF0C
_080BCF00:
	adds r0, r4, #0
	bl sub_080BD418
	b _080BCF18
	.align 2, 0
_080BCF08: .4byte 0x00003BFF
_080BCF0C:
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r5]
	movs r0, #0
	strh r0, [r4, #4]
_080BCF18:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080BCF24
sub_080BCF24: @ 0x080BCF24
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #8]
	adds r0, r7, #0
	adds r0, #0x9f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080BCFE0
	movs r0, #0xac
	adds r0, r0, r7
	mov r8, r0
	ldr r1, [r0]
	ldr r4, [r1, #0x40]
	ldr r0, [r7, #0x40]
	subs r4, r4, r0
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
	lsls r2, r4, #8
	mov sb, r2
	lsls r5, r5, #8
	adds r0, r5, #0
	adds r1, r6, #0
	bl __divsi3
	adds r2, r0, #0
	lsls r3, r2, #8
	adds r0, r7, #0
	adds r0, #0x87
	ldrb r0, [r0]
	mov r5, r8
	cmp r0, #0
	beq _080BCFAE
	movs r2, #0x1a
	mov r0, sb
	muls r0, r2, r0
	asrs r0, r0, #8
	adds r1, r7, #0
	adds r1, #0x50
	strh r0, [r1]
	adds r0, r3, #0
	muls r0, r2, r0
	asrs r0, r0, #8
	b _080BCFC0
_080BCFAE:
	lsls r0, r4, #0xb
	add r0, sb
	lsrs r0, r0, #7
	adds r1, r7, #0
	adds r1, #0x50
	strh r0, [r1]
	lsls r0, r2, #0xb
	adds r0, r0, r3
	lsrs r0, r0, #7
_080BCFC0:
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r5]
	ldr r1, [r7, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BCFD6
	ldr r0, [r7, #8]
	movs r1, #1
	orrs r0, r1
	b _080BCFDE
_080BCFD6:
	ldr r0, [r7, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BCFDE:
	str r0, [r7, #8]
_080BCFE0:
	adds r1, r7, #0
	adds r1, #0x50
	ldr r2, _080BD034 @ =gUnk_08354A14
	adds r3, r7, #0
	adds r3, #0x9f
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	adds r1, #2
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r3]
	ldrh r0, [r7, #4]
	subs r0, #1
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080BD028
	adds r0, r7, #0
	bl sub_080BD48C
_080BD028:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BD034: .4byte gUnk_08354A14

	thumb_func_start sub_080BD038
sub_080BD038: @ 0x080BD038
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	movs r6, #0
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xfe
	bls _080BD07C
	adds r0, r4, #0
	bl sub_0803D368
	adds r2, r4, #0
	adds r2, #0xac
	str r0, [r2]
	strb r6, [r5]
	ldr r0, [r2]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xa0
	strh r0, [r1]
	ldr r0, [r2]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	adds r1, #2
	strh r0, [r1]
_080BD07C:
	ldr r3, [r4, #0x44]
	ldr r2, _080BD0B0 @ =0xFFFFFC00
	ands r3, r2
	adds r1, r4, #0
	adds r1, #0xa2
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r7, r1, #0
	cmp r3, r0
	ble _080BD0B4
	subs r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r5, r1, #0
	cmp r0, r2
	ble _080BD104
	strh r2, [r5]
	b _080BD104
	.align 2, 0
_080BD0B0: .4byte 0xFFFFFC00
_080BD0B4:
	cmp r3, r0
	bge _080BD0D8
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080BD0D4 @ =0xFFFFFE80
	adds r5, r1, #0
	cmp r0, r2
	bge _080BD104
	strh r2, [r5]
	b _080BD104
	.align 2, 0
_080BD0D4: .4byte 0xFFFFFE80
_080BD0D8:
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r5, r0, #0
	cmp r1, #0
	bge _080BD0F6
	adds r0, r2, #0
	adds r0, #0x80
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080BD104
	b _080BD102
_080BD0F6:
	adds r0, r2, #0
	subs r0, #0x80
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080BD104
_080BD102:
	strh r6, [r5]
_080BD104:
	ldr r3, [r4, #0x40]
	ldr r2, _080BD140 @ =0xFFFFFC00
	ands r3, r2
	adds r1, r4, #0
	adds r1, #0xa0
	movs r6, #0
	ldrsh r0, [r1, r6]
	lsls r0, r0, #8
	ands r0, r2
	adds r6, r1, #0
	cmp r3, r0
	bge _080BD144
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r3, r1, #0
	cmp r0, r2
	bgt _080BD194
	b _080BD198
	.align 2, 0
_080BD140: .4byte 0xFFFFFC00
_080BD144:
	cmp r3, r0
	ble _080BD1A8
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080BD17C
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080BD178 @ =0xFFFFFE80
	adds r3, r1, #0
	cmp r0, r2
	blt _080BD194
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080BD1D6
	strh r1, [r3]
	b _080BD1D6
	.align 2, 0
_080BD178: .4byte 0xFFFFFE80
_080BD17C:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r3, r1, #0
	cmp r0, r2
	ble _080BD198
_080BD194:
	strh r2, [r3]
	b _080BD1D6
_080BD198:
	ldr r1, _080BD1A4 @ =0xFFFFFE80
	cmp r0, r1
	bge _080BD1D6
	strh r1, [r3]
	b _080BD1D6
	.align 2, 0
_080BD1A4: .4byte 0xFFFFFE80
_080BD1A8:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r3, r0, #0
	cmp r1, #0
	bge _080BD1C6
	adds r0, r2, #0
	adds r0, #0x80
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080BD1D6
	b _080BD1D2
_080BD1C6:
	adds r0, r2, #0
	subs r0, #0x80
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080BD1D6
_080BD1D2:
	movs r0, #0
	strh r0, [r3]
_080BD1D6:
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	movs r1, #0
	ldrsh r0, [r6, r1]
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080BD1F8
	ldr r0, _080BD1F4 @ =0x000003FF
	cmp r2, r0
	ble _080BD200
	b _080BD278
	.align 2, 0
_080BD1F4: .4byte 0x000003FF
_080BD1F8:
	subs r1, r1, r0
	ldr r0, _080BD218 @ =0x000003FF
	cmp r1, r0
	bgt _080BD278
_080BD200:
	movs r6, #0
	ldrsh r0, [r7, r6]
	lsls r0, r0, #8
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080BD21C
	ldr r0, _080BD218 @ =0x000003FF
	cmp r2, r0
	ble _080BD224
	b _080BD278
	.align 2, 0
_080BD218: .4byte 0x000003FF
_080BD21C:
	subs r1, r1, r0
	ldr r0, _080BD238 @ =0x000003FF
	cmp r1, r0
	bgt _080BD278
_080BD224:
	adds r1, r4, #0
	adds r1, #0xb0
	ldr r0, [r1]
	ldrb r0, [r0, #0xe]
	cmp r0, #2
	bne _080BD23C
	adds r0, r4, #0
	bl sub_080BD4D4
	b _080BD2A8
	.align 2, 0
_080BD238: .4byte 0x000003FF
_080BD23C:
	movs r0, #0
	strh r0, [r3]
	strh r0, [r5]
	ldr r0, [r1]
	ldrb r0, [r0, #0xe]
	cmp r0, #2
	bgt _080BD256
	cmp r0, #1
	blt _080BD256
	adds r0, r4, #0
	bl sub_080BD418
	b _080BD2A8
_080BD256:
	ldr r2, _080BD274 @ =sub_080BCCB0
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	adds r1, #0xc0
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080BD2A8
	.align 2, 0
_080BD274: .4byte sub_080BCCB0
_080BD278:
	ldr r1, _080BD2B0 @ =gUnk_08354A14
	adds r2, r4, #0
	adds r2, #0x9f
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r4, [r3]
	adds r0, r0, r4
	strh r0, [r3]
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r6, [r5]
	adds r0, r0, r6
	strh r0, [r5]
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r2]
_080BD2A8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BD2B0: .4byte gUnk_08354A14

	thumb_func_start sub_080BD2B4
sub_080BD2B4: @ 0x080BD2B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r7, r0, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #2
	bne _080BD37C
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x14
	ble _080BD3BA
	adds r0, r7, #0
	adds r0, #0xb0
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r1, [r2, r3]
	adds r5, r0, #0
	cmp r1, #0
	bne _080BD2F0
	ldr r0, [r2, #0x1c]
	cmp r0, #0
	bne _080BD2F0
	ldrh r0, [r2, #0x20]
	cmp r0, #0
	beq _080BD31E
_080BD2F0:
	adds r6, r7, #0
	adds r6, #0xac
	ldr r0, [r6]
	ldr r1, [r7, #0x40]
	ldr r2, [r7, #0x44]
	ldr r5, [r5]
	movs r3, #0x1a
	ldrsh r4, [r5, r3]
	mov r8, r4
	movs r3, #0x1c
	ldrsh r4, [r5, r3]
	str r4, [sp]
	ldrh r4, [r5, #0x1e]
	str r4, [sp, #4]
	ldrh r4, [r5, #0x20]
	str r4, [sp, #8]
	mov r3, r8
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080BD36C
	b _080BD364
_080BD31E:
	adds r1, r7, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r3, [r0, #0x40]
	ldr r0, [r7, #0x40]
	subs r2, r3, r0
	adds r6, r1, #0
	cmp r2, #0
	blt _080BD33C
	ldr r0, _080BD338 @ =0x00003BFF
	cmp r2, r0
	ble _080BD344
	b _080BD36C
	.align 2, 0
_080BD338: .4byte 0x00003BFF
_080BD33C:
	subs r1, r0, r3
	ldr r0, _080BD358 @ =0x00003BFF
	cmp r1, r0
	bgt _080BD36C
_080BD344:
	ldr r0, [r6]
	ldr r0, [r0, #0x44]
	ldr r1, [r7, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080BD35C
	ldr r0, _080BD358 @ =0x00003BFF
	cmp r2, r0
	ble _080BD364
	b _080BD36C
	.align 2, 0
_080BD358: .4byte 0x00003BFF
_080BD35C:
	subs r1, r1, r0
	ldr r0, _080BD378 @ =0x00003BFF
	cmp r1, r0
	bgt _080BD36C
_080BD364:
	adds r1, r7, #0
	adds r1, #0x83
	movs r0, #3
	strb r0, [r1]
_080BD36C:
	adds r0, r7, #0
	bl sub_0803D368
	str r0, [r6]
	movs r0, #0
	b _080BD3B8
	.align 2, 0
_080BD378: .4byte 0x00003BFF
_080BD37C:
	ldr r0, [r7, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080BD3BA
	ldr r2, _080BD3C8 @ =sub_080BCF24
	adds r0, r7, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r7, #8]
	movs r1, #0x40
	orrs r0, r1
	adds r1, #0xc0
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #8]
	adds r1, r7, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	bne _080BD3B8
	movs r0, #0xf0
_080BD3B8:
	strh r0, [r7, #4]
_080BD3BA:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BD3C8: .4byte sub_080BCF24

	thumb_func_start sub_080BD3CC
sub_080BD3CC: @ 0x080BD3CC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x5e
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #2
	bgt _080BD3F0
	cmp r0, #1
	blt _080BD3F0
	adds r0, r4, #0
	bl sub_080BD418
	b _080BD40C
_080BD3F0:
	ldr r2, _080BD414 @ =sub_080BCCB0
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	adds r1, #0xc0
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_080BD40C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BD414: .4byte sub_080BCCB0

	thumb_func_start sub_080BD418
sub_080BD418: @ 0x080BD418
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BD454 @ =sub_080BCF24
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	adds r1, #0xc0
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	bne _080BD44C
	movs r0, #0xf0
_080BD44C:
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BD454: .4byte sub_080BCF24

	thumb_func_start sub_080BD458
sub_080BD458: @ 0x080BD458
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r2, _080BD488 @ =sub_080BD2B4
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BD488: .4byte sub_080BD2B4

	thumb_func_start sub_080BD48C
sub_080BD48C: @ 0x080BD48C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BD4D0 @ =sub_080BD038
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r1, [r0, #8]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BD4D0: .4byte sub_080BD038

	thumb_func_start sub_080BD4D4
sub_080BD4D4: @ 0x080BD4D4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r2, _080BD520 @ =sub_080BD524
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xa0
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	str r0, [r4, #0x40]
	adds r0, r4, #0
	adds r0, #0xa2
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	str r0, [r4, #0x44]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	adds r1, #0xc0
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	adds r1, #0x1e
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BD520: .4byte sub_080BD524

	thumb_func_start sub_080BD524
sub_080BD524: @ 0x080BD524
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080BD538
	adds r0, r2, #0
	bl sub_080BD458
_080BD538:
	pop {r0}
	bx r0
