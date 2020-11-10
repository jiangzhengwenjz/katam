	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

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
