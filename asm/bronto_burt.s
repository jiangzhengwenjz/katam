	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

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
