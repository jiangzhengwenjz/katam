	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080C2A6C
sub_080C2A6C: @ 0x080C2A6C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080C2AA0 @ =ObjectMain
	ldr r2, _080C2AA4 @ =0x00001001
	ldr r1, _080C2AA8 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C2AAC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080C2AB4
	.align 2, 0
_080C2AA0: .4byte ObjectMain
_080C2AA4: .4byte 0x00001001
_080C2AA8: .4byte ObjectDestroy
_080C2AAC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080C2AB4:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	movs r1, #0xd0
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	movs r5, #1
	orrs r0, r5
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0xc]
	subs r1, #9
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
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C2B12
	ldr r0, [r4, #8]
	orrs r0, r5
	str r0, [r4, #8]
_080C2B12:
	adds r0, r4, #0
	bl ObjectInitSprite
	adds r0, r4, #0
	bl sub_080C3058
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080C2B28
sub_080C2B28: @ 0x080C2B28
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #2
	bne _080C2B3E
	adds r0, r5, #0
	bl sub_080C3058
	b _080C2BA0
_080C2B3E:
	ldr r2, _080C2BA8 @ =sub_080C2FC8
	adds r0, r5, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r5, #8]
	ldr r1, _080C2BAC @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0xac
	ldr r2, [r0]
	ldr r4, [r2, #0x40]
	ldr r0, [r5, #0x40]
	subs r4, r4, r0
	asrs r4, r4, #8
	ldr r1, [r5, #0x44]
	ldr r0, [r2, #0x44]
	subs r1, r1, r0
	asrs r1, r1, #8
	adds r0, r4, #0
	muls r0, r4, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	lsls r0, r0, #8
	bl Sqrt
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r4, r4, #8
	adds r0, r4, #0
	bl __divsi3
	lsls r1, r0, #8
	lsls r0, r0, #9
	adds r0, r0, r1
	lsls r0, r0, #1
	asrs r0, r0, #8
	rsbs r0, r0, #0
	adds r1, r5, #0
	adds r1, #0x50
	strh r0, [r1]
	ldr r0, [r5, #8]
	ldr r1, _080C2BB0 @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r5, #8]
_080C2BA0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C2BA8: .4byte sub_080C2FC8
_080C2BAC: .4byte 0xFFFFFDFF
_080C2BB0: .4byte 0xFDFFFFFF

	thumb_func_start sub_080C2BB4
sub_080C2BB4: @ 0x080C2BB4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldrh r0, [r4, #4]
	adds r0, #1
	movs r1, #0
	mov r8, r1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xfe
	ble _080C2BD8
	b _080C2D38
_080C2BD8:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r7, r4, #0
	adds r7, #0xa0
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #0xe
	bls _080C2C12
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	movs r0, #0
	strb r0, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	strh r0, [r7]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080C2C12:
	ldr r2, [r4, #0x44]
	ldr r1, _080C2C3C @ =0xFFFFF000
	ands r2, r1
	movs r3, #0
	ldrsh r0, [r6, r3]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	ble _080C2C44
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x4d
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080C2C40 @ =0x00000181
	cmp r0, r2
	ble _080C2C90
	strh r2, [r1]
	b _080C2C90
	.align 2, 0
_080C2C3C: .4byte 0xFFFFF000
_080C2C40: .4byte 0x00000181
_080C2C44:
	cmp r2, r0
	bge _080C2C64
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x4d
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080C2C60 @ =0xFFFFFE7F
	cmp r0, r2
	bge _080C2C90
	strh r2, [r1]
	b _080C2C90
	.align 2, 0
_080C2C60: .4byte 0xFFFFFE7F
_080C2C64:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080C2C82
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C2C90
	mov r0, r8
	strh r0, [r1]
	b _080C2C90
_080C2C82:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C2C90
	mov r3, r8
	strh r3, [r1]
_080C2C90:
	ldr r2, [r4, #0x40]
	ldr r1, _080C2CB0 @ =0xFFFFF000
	ands r2, r1
	movs r3, #0
	ldrsh r0, [r7, r3]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	bge _080C2CB4
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080C2CEC
	.align 2, 0
_080C2CB0: .4byte 0xFFFFF000
_080C2CB4:
	cmp r2, r0
	ble _080C2D10
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080C2CEC
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x4d
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080C2CE4 @ =0xFFFFFE7F
	cmp r0, r2
	blt _080C2CE0
	ldr r2, _080C2CE8 @ =0x00000181
	cmp r0, r2
	ble _080C2D38
_080C2CE0:
	strh r2, [r1]
	b _080C2D38
	.align 2, 0
_080C2CE4: .4byte 0xFFFFFE7F
_080C2CE8: .4byte 0x00000181
_080C2CEC:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x4d
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080C2D08 @ =0x00000181
	cmp r0, r2
	bgt _080C2CE0
	ldr r2, _080C2D0C @ =0xFFFFFE7F
	cmp r0, r2
	bge _080C2D38
	b _080C2CE0
	.align 2, 0
_080C2D08: .4byte 0x00000181
_080C2D0C: .4byte 0xFFFFFE7F
_080C2D10:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080C2D2A
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C2D38
	b _080C2D34
_080C2D2A:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C2D38
_080C2D34:
	movs r0, #0
	strh r0, [r1]
_080C2D38:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C2D44
sub_080C2D44: @ 0x080C2D44
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	ldr r1, _080C2D70 @ =0xFFFFDFFF
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	ldr r5, [r3, #0x70]
	mov ip, r5
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080C2D74
	ldr r0, [r3, #0x18]
	orrs r0, r1
	b _080C2D7A
	.align 2, 0
_080C2D70: .4byte 0xFFFFDFFF
_080C2D74:
	ldr r0, [r3, #0x18]
	ldr r1, _080C2E34 @ =0xFFFFF7FF
	ands r0, r1
_080C2D7A:
	str r0, [r3, #0x18]
	mov r0, ip
	adds r0, #0x54
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x54
	strb r1, [r0]
	mov r0, ip
	adds r0, #0x55
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x55
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0x35
	bne _080C2DAC
	ldr r0, [r5, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r5, #8]
_080C2DAC:
	mov r2, ip
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	bne _080C2E44
	adds r0, r3, #0
	adds r0, #0x85
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _080C2E2C
	adds r4, r5, #0
	adds r4, #0x83
	ldr r2, _080C2E38 @ =gUnk_08351648
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r1, [r4]
	ldrb r0, [r0]
	cmp r1, r0
	bhs _080C2E0C
	mov r1, ip
	adds r1, #0x52
	ldr r0, _080C2E3C @ =0x0000FF80
	strh r0, [r1]
	ldr r1, _080C2E40 @ =gUnk_08355478
	ldrh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0]
	mov r4, ip
	adds r4, #0x50
	strh r2, [r4]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C2E0C
	rsbs r0, r2, #0
	strh r0, [r4]
_080C2E0C:
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x5f
	ble _080C2E1E
	movs r0, #0
	strh r0, [r3, #4]
_080C2E1E:
	ldrb r1, [r7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C2E2C
	movs r0, #0x18
	strh r0, [r3, #4]
_080C2E2C:
	movs r0, #1
	mov r2, r8
	strb r0, [r2]
	b _080C2E50
	.align 2, 0
_080C2E34: .4byte 0xFFFFF7FF
_080C2E38: .4byte gUnk_08351648
_080C2E3C: .4byte 0x0000FF80
_080C2E40: .4byte gUnk_08355478
_080C2E44:
	adds r0, r3, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C2E50
	b _080C2FA4
_080C2E50:
	mov r0, ip
	ldrh r1, [r0, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #2
	cmp r1, r0
	bne _080C2EBC
	mov r0, ip
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C2EA0
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C2E7A
	mov r2, ip
	ldr r0, [r2, #0x40]
	adds r1, #0xff
	b _080C2E80
_080C2E7A:
	mov r2, ip
	ldr r0, [r2, #0x40]
	ldr r1, _080C2E98 @ =0xFFFFFF00
_080C2E80:
	adds r0, r0, r1
	str r0, [r3, #0x40]
	ldr r1, _080C2E9C @ =gUnk_08355490
	mov r2, ip
	ldrb r0, [r2, #1]
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r2, #0x44]
	b _080C2F68
	.align 2, 0
_080C2E98: .4byte 0xFFFFFF00
_080C2E9C: .4byte gUnk_08355490
_080C2EA0:
	mov r1, ip
	ldr r0, [r1, #0x40]
	str r0, [r3, #0x40]
	ldr r0, [r3, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080C2F62
	mov r2, ip
	ldr r0, [r2, #0x44]
	movs r1, #0x90
	lsls r1, r1, #5
	b _080C2F68
_080C2EBC:
	movs r0, #0xc2
	lsls r0, r0, #2
	cmp r1, r0
	bne _080C2F48
	mov r0, ip
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C2F04
	mov r2, ip
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C2EE0
	ldr r0, [r2, #0x40]
	adds r1, #0xff
	b _080C2EE6
_080C2EE0:
	mov r2, ip
	ldr r0, [r2, #0x40]
	ldr r1, _080C2EFC @ =0xFFFFFF00
_080C2EE6:
	adds r0, r0, r1
	str r0, [r3, #0x40]
	ldr r1, _080C2F00 @ =gUnk_083554CF
	mov r2, ip
	ldrb r0, [r2, #1]
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r2, #0x44]
	b _080C2F68
	.align 2, 0
_080C2EFC: .4byte 0xFFFFFF00
_080C2F00: .4byte gUnk_083554CF
_080C2F04:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C2F18
	mov r2, ip
	ldr r0, [r2, #0x40]
	adds r1, #0xff
	b _080C2F1E
_080C2F18:
	mov r2, ip
	ldr r0, [r2, #0x40]
	ldr r1, _080C2F38 @ =0xFFFFFF00
_080C2F1E:
	adds r0, r0, r1
	str r0, [r3, #0x40]
	ldr r0, [r3, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080C2F3C
	mov r2, ip
	ldr r0, [r2, #0x44]
	movs r1, #0x88
	lsls r1, r1, #5
	b _080C2F68
	.align 2, 0
_080C2F38: .4byte 0xFFFFFF00
_080C2F3C:
	mov r2, ip
	ldr r0, [r2, #0x44]
	ldr r1, _080C2F44 @ =0xFFFFEF00
	b _080C2F68
	.align 2, 0
_080C2F44: .4byte 0xFFFFEF00
_080C2F48:
	mov r2, ip
	ldr r0, [r2, #0x40]
	str r0, [r3, #0x40]
	ldr r0, [r3, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080C2F62
	ldr r0, [r2, #0x44]
	movs r1, #0x90
	lsls r1, r1, #5
	b _080C2F68
_080C2F62:
	mov r2, ip
	ldr r0, [r2, #0x44]
	ldr r1, _080C2F88 @ =0xFFFFEE00
_080C2F68:
	adds r0, r0, r1
	str r0, [r3, #0x44]
	mov r2, ip
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	beq _080C2FBE
	ldrb r0, [r6]
	cmp r0, #0x12
	bne _080C2F8C
	adds r1, r5, #0
	adds r1, #0x84
	movs r0, #7
	b _080C2FA2
	.align 2, 0
_080C2F88: .4byte 0xFFFFEE00
_080C2F8C:
	cmp r0, #0
	bne _080C2F9C
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #4
	beq _080C2FA4
_080C2F9C:
	adds r1, r5, #0
	adds r1, #0x84
	movs r0, #0
_080C2FA2:
	strb r0, [r1]
_080C2FA4:
	movs r0, #0
	str r0, [r3, #0x7c]
	adds r0, r3, #0
	bl sub_080C2B28
	ldrb r0, [r6]
	cmp r0, #0x35
	bne _080C2FBE
	ldr r0, [r5, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
_080C2FBE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080C2FC8
sub_080C2FC8: @ 0x080C2FC8
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C2FF0
	adds r0, r2, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080C2FEA
	adds r0, r2, #0
	bl sub_080C302C
	b _080C2FF0
_080C2FEA:
	adds r0, r2, #0
	bl sub_080C2FF4
_080C2FF0:
	pop {r0}
	bx r0

	thumb_func_start sub_080C2FF4
sub_080C2FF4: @ 0x080C2FF4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C3018 @ =sub_080C3020
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r0, [r4, #8]
	ldr r1, _080C301C @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C3018: .4byte sub_080C3020
_080C301C: .4byte 0xFDFFFFFF

	thumb_func_start sub_080C3020
sub_080C3020: @ 0x080C3020
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_080C302C
sub_080C302C: @ 0x080C302C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C3050 @ =sub_080C2BB4
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r0, [r4, #8]
	ldr r1, _080C3054 @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C3050: .4byte sub_080C2BB4
_080C3054: .4byte 0xFDFFFFFF

	thumb_func_start sub_080C3058
sub_080C3058: @ 0x080C3058
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C3094 @ =sub_080C2D44
	movs r1, #1
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x85
	movs r1, #0
	strb r1, [r0]
	subs r0, #0x35
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, _080C3098 @ =sub_080C309C
	str r0, [r4, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C3094: .4byte sub_080C2D44
_080C3098: .4byte sub_080C309C

	thumb_func_start sub_080C309C
sub_080C309C: @ 0x080C309C
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x70]
	ldr r0, [r0, #8]
	movs r3, #0x80
	lsls r3, r3, #5
	ands r0, r3
	cmp r0, #0
	beq _080C30BC
	adds r1, r2, #0
	adds r1, #0x80
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r2, #8]
	orrs r0, r3
	str r0, [r2, #8]
_080C30BC:
	pop {r0}
	bx r0
