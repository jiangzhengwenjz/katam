	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateScarfy
CreateScarfy: @ 0x080A74D0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080A7504 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080A7508 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A750C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080A7514
	.align 2, 0
_080A7504: .4byte ObjectMain
_080A7508: .4byte ObjectDestroy
_080A750C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080A7514:
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
	ble _080A7534
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080A753C
_080A7534:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080A753C:
	str r0, [r4, #8]
	ldr r0, [r4, #0x5c]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
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
	cmp r0, #0
	beq _080A7592
	adds r0, r4, #0
	bl sub_080A81A4
	b _080A75AC
_080A7592:
	ldr r2, _080A75C0 @ =gUnk_08351648
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
_080A75AC:
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
_080A75C0: .4byte gUnk_08351648

	thumb_func_start sub_080A75C4
sub_080A75C4: @ 0x080A75C4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldr r2, _080A7708 @ =gUnk_08353510
	adds r3, r4, #0
	adds r3, #0x9f
	ldrb r1, [r3]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #8]
	adds r6, r2, #0
	cmp r0, #0
	bne _080A762A
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	cmp r0, #0
	bne _080A760A
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
_080A760A:
	ldrb r2, [r3]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrb r0, [r1, #8]
	cmp r0, #0
	bne _080A762A
	ldrb r0, [r5]
	cmp r0, #0
	bne _080A762A
	movs r0, #0xff
	strb r0, [r3]
_080A762A:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A7636
	b _080A7748
_080A7636:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r3, r4, #0
	adds r3, #0x9f
	adds r7, r0, #0
	adds r5, r4, #0
	adds r5, #0x50
	movs r0, #0x52
	adds r0, r0, r4
	mov ip, r0
	cmp r1, #0
	bne _080A773A
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
	bne _080A766A
	subs r0, r1, #1
	strb r0, [r3]
_080A766A:
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
	beq _080A7690
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
_080A7690:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080A770C
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
	mov ip, r0
	ldrh r2, [r1]
	mov sb, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r8, r0
	mov r0, ip
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov ip, r0
	cmp r8, ip
	beq _080A76D6
	mov r2, sb
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A76D6
	mov r1, sb
	rsbs r0, r1, #0
	strh r0, [r5]
_080A76D6:
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
	mov r8, r2
	movs r2, #2
	ldrsh r1, [r1, r2]
	movs r2, #2
	ldrsh r0, [r0, r2]
	movs r2, #0x52
	adds r2, r2, r4
	mov ip, r2
	cmp r1, r0
	beq _080A773A
	mov r0, r8
	strh r0, [r2]
	b _080A773A
	.align 2, 0
_080A7708: .4byte gUnk_08353510
_080A770C:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r1, ip
	strh r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r0]
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080A7736
	b _080A786A
_080A7736:
	rsbs r0, r2, #0
	strh r0, [r5]
_080A773A:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A7746
	b _080A7856
_080A7746:
	b _080A786A
_080A7748:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r3, r4, #0
	adds r3, #0x9f
	adds r7, r0, #0
	adds r5, r4, #0
	adds r5, #0x50
	movs r0, #0x52
	adds r0, r0, r4
	mov ip, r0
	ldr r6, _080A781C @ =gUnk_08353588
	cmp r1, #0
	bne _080A784C
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
	bne _080A777E
	subs r0, r1, #1
	strb r0, [r3]
_080A777E:
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
	beq _080A77A4
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
_080A77A4:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080A7820
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
	mov r8, r0
	ldrh r2, [r1]
	mov sb, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov ip, r0
	mov r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r8, r0
	cmp ip, r8
	beq _080A77EA
	mov r2, sb
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A77EA
	mov r1, sb
	rsbs r0, r1, #0
	strh r0, [r5]
_080A77EA:
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
	mov r8, r2
	movs r2, #2
	ldrsh r1, [r1, r2]
	movs r2, #2
	ldrsh r0, [r0, r2]
	movs r2, #0x52
	adds r2, r2, r4
	mov ip, r2
	cmp r1, r0
	beq _080A784C
	mov r0, r8
	strh r0, [r2]
	b _080A784C
	.align 2, 0
_080A781C: .4byte gUnk_08353588
_080A7820:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r1, ip
	strh r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r0]
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A786A
	rsbs r0, r2, #0
	strh r0, [r5]
_080A784C:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A786A
_080A7856:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r5]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r5]
	b _080A787C
_080A786A:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
_080A787C:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	mov r1, ip
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r2, ip
	strh r0, [r2]
	ldrb r0, [r7]
	subs r0, #1
	strb r0, [r7]
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A78C8
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080A78BE
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080A78C6
_080A78BE:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080A78C6:
	str r0, [r4, #8]
_080A78C8:
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A78D8
	adds r0, r4, #0
	bl sub_080A8100
_080A78D8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080A78E4
sub_080A78E4: @ 0x080A78E4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	ldr r2, _080A79EC @ =gUnk_08353600
	mov r4, ip
	adds r4, #0x9f
	ldrb r0, [r4]
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
	bne _080A792A
	mov r0, ip
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r3, r4, #0
	mov sb, r0
	mov r5, ip
	adds r5, #0x50
	mov r6, ip
	adds r6, #0x52
	cmp r1, #0
	bne _080A7A1C
	movs r0, #0xff
	strb r0, [r3]
_080A792A:
	mov r0, ip
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r3, r4, #0
	mov sb, r0
	mov r5, ip
	adds r5, #0x50
	mov r6, ip
	adds r6, #0x52
	cmp r1, #0
	bne _080A7A1C
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
	bne _080A795A
	subs r0, r1, #1
	strb r0, [r3]
_080A795A:
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
	beq _080A7982
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080A7982:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080A79F0
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
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	beq _080A79BC
	strh r2, [r5]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A79BC
	rsbs r0, r2, #0
	strh r0, [r5]
_080A79BC:
	mov r3, ip
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
	movs r4, #2
	ldrsh r1, [r1, r4]
	movs r4, #2
	ldrsh r0, [r0, r4]
	mov r6, ip
	adds r6, #0x52
	cmp r1, r0
	beq _080A7A1C
	strh r2, [r6]
	b _080A7A1C
	.align 2, 0
_080A79EC: .4byte gUnk_08353600
_080A79F0:
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
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A7A3C
	rsbs r0, r2, #0
	strh r0, [r5]
_080A7A1C:
	mov r4, ip
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A7A3C
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r5]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r5]
	b _080A7A4E
_080A7A3C:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrh r0, [r1, #4]
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
_080A7A4E:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #6]
	ldrh r3, [r6]
	adds r0, r0, r3
	strh r0, [r6]
	mov r4, sb
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A7A7A
	mov r0, ip
	bl sub_080A8148
_080A7A7A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A7A88
sub_080A7A88: @ 0x080A7A88
	push {r4, r5, r6, lr}
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
	cmp r0, #7
	bls _080A7ACC
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
_080A7ACC:
	ldr r3, [r4, #0x44]
	ldr r1, _080A7AFC @ =0xFFFFF000
	ands r3, r1
	adds r0, r4, #0
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r2, r0, #8
	ands r2, r1
	cmp r3, r2
	ble _080A7B00
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xb0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080A7B46
	strh r2, [r1]
	b _080A7B46
	.align 2, 0
_080A7AFC: .4byte 0xFFFFF000
_080A7B00:
	cmp r3, r2
	bge _080A7B20
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080A7B1C @ =0xFFFFFEA0
	cmp r0, r2
	bge _080A7B46
	strh r2, [r1]
	b _080A7B46
	.align 2, 0
_080A7B1C: .4byte 0xFFFFFEA0
_080A7B20:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080A7B3A
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080A7B46
	b _080A7B44
_080A7B3A:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080A7B46
_080A7B44:
	strh r6, [r1]
_080A7B46:
	ldr r3, [r4, #0x40]
	ldr r0, _080A7B68 @ =0xFFFFF000
	ands r3, r0
	adds r1, r4, #0
	adds r1, #0xa0
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r2, r1, #8
	ands r2, r0
	cmp r3, r2
	bge _080A7B6C
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080A7BA4
	.align 2, 0
_080A7B68: .4byte 0xFFFFF000
_080A7B6C:
	cmp r3, r2
	ble _080A7BC8
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080A7BA4
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080A7BA0 @ =0xFFFFFEA0
	cmp r0, r2
	blt _080A7B9A
	movs r2, #0xb0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080A7BF0
_080A7B9A:
	strh r2, [r1]
	b _080A7BF0
	.align 2, 0
_080A7BA0: .4byte 0xFFFFFEA0
_080A7BA4:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xb0
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080A7B9A
	ldr r2, _080A7BC4 @ =0xFFFFFEA0
	cmp r0, r2
	bge _080A7BF0
	b _080A7B9A
	.align 2, 0
_080A7BC4: .4byte 0xFFFFFEA0
_080A7BC8:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080A7BE2
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080A7BF0
	b _080A7BEC
_080A7BE2:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080A7BF0
_080A7BEC:
	movs r0, #0
	strh r0, [r1]
_080A7BF0:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x79
	ble _080A7C04
	adds r0, r4, #0
	bl sub_080A8180
_080A7C04:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A7C0C
sub_080A7C0C: @ 0x080A7C0C
	push {r4, r5, r6, lr}
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
	cmp r0, #7
	bls _080A7C50
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
_080A7C50:
	ldr r3, [r4, #0x44]
	ldr r1, _080A7C80 @ =0xFFFFF000
	ands r3, r1
	adds r0, r4, #0
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r2, r0, #8
	ands r2, r1
	cmp r3, r2
	ble _080A7C84
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080A7CCA
	strh r2, [r1]
	b _080A7CCA
	.align 2, 0
_080A7C80: .4byte 0xFFFFF000
_080A7C84:
	cmp r3, r2
	bge _080A7CA4
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080A7CA0 @ =0xFFFFFE40
	cmp r0, r2
	bge _080A7CCA
	strh r2, [r1]
	b _080A7CCA
	.align 2, 0
_080A7CA0: .4byte 0xFFFFFE40
_080A7CA4:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080A7CBE
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080A7CCA
	b _080A7CC8
_080A7CBE:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080A7CCA
_080A7CC8:
	strh r6, [r1]
_080A7CCA:
	ldr r3, [r4, #0x40]
	ldr r0, _080A7CEC @ =0xFFFFF000
	ands r3, r0
	adds r1, r4, #0
	adds r1, #0xa0
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r2, r1, #8
	ands r2, r0
	cmp r3, r2
	bge _080A7CF0
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080A7D28
	.align 2, 0
_080A7CEC: .4byte 0xFFFFF000
_080A7CF0:
	cmp r3, r2
	ble _080A7D4C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080A7D28
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080A7D24 @ =0xFFFFFE40
	cmp r0, r2
	blt _080A7D1E
	movs r2, #0xe0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080A7D74
_080A7D1E:
	strh r2, [r1]
	b _080A7D74
	.align 2, 0
_080A7D24: .4byte 0xFFFFFE40
_080A7D28:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080A7D1E
	ldr r2, _080A7D48 @ =0xFFFFFE40
	cmp r0, r2
	bge _080A7D74
	b _080A7D1E
	.align 2, 0
_080A7D48: .4byte 0xFFFFFE40
_080A7D4C:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080A7D66
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080A7D74
	b _080A7D70
_080A7D66:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080A7D74
_080A7D70:
	movs r0, #0
	strh r0, [r1]
_080A7D74:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb5
	ble _080A7D88
	adds r0, r4, #0
	bl sub_080A8180
_080A7D88:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A7D90
sub_080A7D90: @ 0x080A7D90
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	ldr r2, _080A7EA0 @ =gUnk_08353624
	mov r4, ip
	adds r4, #0x9f
	ldrb r3, [r4]
	mov r8, r3
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
	bne _080A7DE0
	mov r0, ip
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r3, r4, #0
	mov sb, r0
	mov r5, ip
	adds r5, #0x50
	mov r6, ip
	adds r6, #0x52
	cmp r1, #0
	bne _080A7ED0
	movs r0, #0xff
	strb r0, [r3]
_080A7DE0:
	mov r0, ip
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r3, r4, #0
	mov sb, r0
	mov r5, ip
	adds r5, #0x50
	mov r6, ip
	adds r6, #0x52
	cmp r1, #0
	bne _080A7ED0
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
	bne _080A7E10
	subs r0, r1, #1
	strb r0, [r3]
_080A7E10:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	mov r4, sb
	strb r0, [r4]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080A7E38
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080A7E38:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080A7EA4
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
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	beq _080A7E72
	strh r2, [r5]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A7E72
	rsbs r0, r2, #0
	strh r0, [r5]
_080A7E72:
	mov r3, ip
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
	movs r4, #2
	ldrsh r1, [r1, r4]
	movs r4, #2
	ldrsh r0, [r0, r4]
	mov r6, ip
	adds r6, #0x52
	cmp r1, r0
	beq _080A7ED0
	strh r2, [r6]
	b _080A7ED0
	.align 2, 0
_080A7EA0: .4byte gUnk_08353624
_080A7EA4:
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
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A7EF0
	rsbs r0, r2, #0
	strh r0, [r5]
_080A7ED0:
	mov r4, ip
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A7EF0
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r5]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r5]
	b _080A7F02
_080A7EF0:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrh r0, [r1, #4]
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
_080A7F02:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #6]
	ldrh r4, [r6]
	adds r0, r0, r4
	strh r0, [r6]
	mov r1, sb
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
	bne _080A7F58
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080A7F58
	mov r3, ip
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _080A7F58
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r3, #8]
	mov r0, ip
	bl sub_08073D2C
_080A7F58:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080A7F64
sub_080A7F64: @ 0x080A7F64
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A7FAC @ =sub_080A8048
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #2
	beq _080A7FB8
	cmp r0, #2
	ble _080A7F88
	cmp r0, #3
	beq _080A7FE0
	cmp r0, #4
	beq _080A7FF0
_080A7F88:
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	ldr r2, _080A7FB0 @ =0xFFFFD000
	adds r0, r0, r2
	str r0, [r4, #0x40]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	ldr r2, _080A7FB4 @ =0xFFFF5000
	adds r0, r0, r2
	str r0, [r4, #0x44]
	adds r2, r4, #0
	adds r2, #0x52
	movs r0, #0xfd
	lsls r0, r0, #8
	b _080A8014
	.align 2, 0
_080A7FAC: .4byte sub_080A8048
_080A7FB0: .4byte 0xFFFFD000
_080A7FB4: .4byte 0xFFFF5000
_080A7FB8:
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r0, r0, r2
	str r0, [r4, #0x40]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	ldr r2, _080A7FDC @ =0xFFFF5000
	adds r0, r0, r2
	str r0, [r4, #0x44]
	adds r2, r4, #0
	adds r2, #0x52
	movs r0, #0xfd
	lsls r0, r0, #8
	b _080A8014
	.align 2, 0
_080A7FDC: .4byte 0xFFFF5000
_080A7FE0:
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	ldr r2, _080A7FEC @ =0xFFFFD000
	b _080A7FFC
	.align 2, 0
_080A7FEC: .4byte 0xFFFFD000
_080A7FF0:
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	movs r2, #0xa0
	lsls r2, r2, #7
_080A7FFC:
	adds r0, r0, r2
	str r0, [r4, #0x40]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	movs r2, #0xb0
	lsls r2, r2, #8
	adds r0, r0, r2
	str r0, [r4, #0x44]
	adds r2, r4, #0
	adds r2, #0x52
	movs r0, #0xc0
	lsls r0, r0, #2
_080A8014:
	strh r0, [r2]
	ldr r2, [r4, #8]
	ldr r0, _080A8034 @ =0xFFFFF9FF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080A8038
	movs r0, #1
	orrs r2, r0
	b _080A803E
	.align 2, 0
_080A8034: .4byte 0xFFFFF9FF
_080A8038:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080A803E:
	str r2, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A8048
sub_080A8048: @ 0x080A8048
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x44]
	ldr r1, [r5, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080A8068
	ldr r0, _080A8064 @ =0x000003FF
	cmp r2, r0
	ble _080A8070
	b _080A8090
	.align 2, 0
_080A8064: .4byte 0x000003FF
_080A8068:
	subs r1, r1, r0
	ldr r0, _080A8084 @ =0x000003FF
	cmp r1, r0
	bgt _080A8090
_080A8070:
	ldr r0, [r5, #8]
	ldr r1, _080A8088 @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r5, #8]
	ldr r2, _080A808C @ =sub_080A75C4
	adds r0, r5, #0
	movs r1, #0
	bl ObjectSetFunc
	b _080A80E6
	.align 2, 0
_080A8084: .4byte 0x000003FF
_080A8088: .4byte 0xFDFFFFFF
_080A808C: .4byte sub_080A75C4
_080A8090:
	adds r0, r5, #0
	adds r0, #0x90
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A80E6
	ldr r0, [r5, #8]
	ldr r1, _080A80CC @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_0803D368
	adds r4, r5, #0
	adds r4, #0xac
	str r0, [r4]
	ldr r2, _080A80D0 @ =sub_080A78E4
	adds r0, r5, #0
	movs r1, #1
	bl ObjectSetFunc
	ldr r0, [r4]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080A80D4
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	b _080A80DC
	.align 2, 0
_080A80CC: .4byte 0xFDFFFFFF
_080A80D0: .4byte sub_080A78E4
_080A80D4:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080A80DC:
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x82
	movs r0, #0x24
	strb r0, [r1]
_080A80E6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A80EC
sub_080A80EC: @ 0x080A80EC
	push {lr}
	ldr r2, _080A80FC @ =sub_080A75C4
	movs r1, #0
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080A80FC: .4byte sub_080A75C4

	thumb_func_start sub_080A8100
sub_080A8100: @ 0x080A8100
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_0803D368
	adds r4, r5, #0
	adds r4, #0xac
	str r0, [r4]
	ldr r2, _080A812C @ =sub_080A78E4
	adds r0, r5, #0
	movs r1, #1
	bl ObjectSetFunc
	ldr r0, [r4]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080A8130
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	b _080A8138
	.align 2, 0
_080A812C: .4byte sub_080A78E4
_080A8130:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080A8138:
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x82
	movs r0, #0x24
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A8148
sub_080A8148: @ 0x080A8148
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A8164
	ldr r2, _080A8160 @ =sub_080A7C0C
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	b _080A816E
	.align 2, 0
_080A8160: .4byte sub_080A7C0C
_080A8164:
	ldr r2, _080A817C @ =sub_080A7A88
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
_080A816E:
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A817C: .4byte sub_080A7A88

	thumb_func_start sub_080A8180
sub_080A8180: @ 0x080A8180
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A81A0 @ =sub_080A7D90
	movs r1, #2
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
_080A81A0: .4byte sub_080A7D90

	thumb_func_start sub_080A81A4
sub_080A81A4: @ 0x080A81A4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A81C0 @ =sub_080A81C4
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0xc0
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A81C0: .4byte sub_080A81C4

	thumb_func_start sub_080A81C4
sub_080A81C4: @ 0x080A81C4
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _080A81E6
	movs r0, #0
	strh r0, [r4, #4]
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
_080A81E6:
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	ldr r1, [r4, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080A8204
	ldr r0, _080A8200 @ =0x000009FF
	cmp r2, r0
	ble _080A820C
	b _080A8212
	.align 2, 0
_080A8200: .4byte 0x000009FF
_080A8204:
	subs r1, r1, r0
	ldr r0, _080A8218 @ =0x000009FF
	cmp r1, r0
	bgt _080A8212
_080A820C:
	adds r0, r4, #0
	bl sub_080A7F64
_080A8212:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A8218: .4byte 0x000009FF
