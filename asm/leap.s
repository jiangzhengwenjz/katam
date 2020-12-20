	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateLeap
CreateLeap: @ 0x080B0158
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080B018C @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080B0190 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B0194
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B019C
	.align 2, 0
_080B018C: .4byte ObjectMain
_080B0190: .4byte ObjectDestroy
_080B0194:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B019C:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #0xc]
	movs r3, #1
	orrs r0, r3
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r2, [r4, #8]
	movs r0, #0x40
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x10
	orrs r2, r0
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	subs r1, #0xc
	ands r0, r1
	str r0, [r4, #0x68]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B01E0
	orrs r2, r3
	b _080B01E6
_080B01E0:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080B01E6:
	str r2, [r4, #8]
	movs r2, #5
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	ldr r2, _080B0248 @ =gUnk_08351648
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
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	bl sub_080B0860
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080B0248: .4byte gUnk_08351648

	thumb_func_start sub_080B024C
sub_080B024C: @ 0x080B024C
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #8
	bne _080B026A
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r0, [r1]
	lsls r0, r0, #1
	strh r0, [r1]
_080B026A:
	movs r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #0x10
	ble _080B0284
	movs r0, #0
	strh r0, [r2, #4]
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	rsbs r0, r0, #0
	strh r0, [r1]
_080B0284:
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B0290
sub_080B0290: @ 0x080B0290
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
	ldr r2, _080B03A0 @ =gUnk_08353D20
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
	bne _080B02E0
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
	bne _080B03D0
	movs r0, #0xff
	strb r0, [r3]
_080B02E0:
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
	bne _080B03D0
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
	bne _080B0310
	subs r0, r1, #1
	strb r0, [r3]
_080B0310:
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
	beq _080B0338
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080B0338:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080B03A4
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
	beq _080B0372
	strh r2, [r5]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B0372
	rsbs r0, r2, #0
	strh r0, [r5]
_080B0372:
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
	beq _080B03D0
	strh r2, [r6]
	b _080B03D0
	.align 2, 0
_080B03A0: .4byte gUnk_08353D20
_080B03A4:
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
	beq _080B03F0
	rsbs r0, r2, #0
	strh r0, [r5]
_080B03D0:
	mov r4, ip
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B03F0
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r5]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r5]
	b _080B0402
_080B03F0:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrh r0, [r1, #4]
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
_080B0402:
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
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080B0428
sub_080B0428: @ 0x080B0428
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
	ldr r2, _080B0538 @ =gUnk_08353DBC
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
	bne _080B0478
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
	bne _080B0568
	movs r0, #0xff
	strb r0, [r3]
_080B0478:
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
	bne _080B0568
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
	bne _080B04A8
	subs r0, r1, #1
	strb r0, [r3]
_080B04A8:
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
	beq _080B04D0
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080B04D0:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080B053C
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
	beq _080B050A
	strh r2, [r5]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B050A
	rsbs r0, r2, #0
	strh r0, [r5]
_080B050A:
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
	beq _080B0568
	strh r2, [r6]
	b _080B0568
	.align 2, 0
_080B0538: .4byte gUnk_08353DBC
_080B053C:
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
	beq _080B0588
	rsbs r0, r2, #0
	strh r0, [r5]
_080B0568:
	mov r4, ip
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B0588
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r5]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r5]
	b _080B059A
_080B0588:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrh r0, [r1, #4]
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
_080B059A:
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
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080B05C0
sub_080B05C0: @ 0x080B05C0
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
	ldr r2, _080B06D0 @ =gUnk_08353E58
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
	bne _080B0610
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
	bne _080B0700
	movs r0, #0xff
	strb r0, [r3]
_080B0610:
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
	bne _080B0700
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
	bne _080B0640
	subs r0, r1, #1
	strb r0, [r3]
_080B0640:
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
	beq _080B0668
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080B0668:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080B06D4
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
	beq _080B06A2
	strh r2, [r5]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B06A2
	rsbs r0, r2, #0
	strh r0, [r5]
_080B06A2:
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
	beq _080B0700
	strh r2, [r6]
	b _080B0700
	.align 2, 0
_080B06D0: .4byte gUnk_08353E58
_080B06D4:
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
	beq _080B0720
	rsbs r0, r2, #0
	strh r0, [r5]
_080B0700:
	mov r4, ip
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B0720
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r5]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r5]
	b _080B0732
_080B0720:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrh r0, [r1, #4]
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
_080B0732:
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
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080B0758
sub_080B0758: @ 0x080B0758
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B07A0
	ldrb r0, [r6]
	cmp r0, #0
	bne _080B07A0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080B07A0
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x27
	beq _080B07A0
	cmp r0, #0x7a
	bhi _080B07A0
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _080B07A0
	ldr r4, [r6, #8]
	ldr r0, _080B07A4 @ =0x03800B00
	ands r4, r0
	cmp r4, #0
	beq _080B07A8
_080B07A0:
	movs r0, #0
	b _080B07D4
	.align 2, 0
_080B07A4: .4byte 0x03800B00
_080B07A8:
	ldr r0, _080B07DC @ =gUnk_08353EF4
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xac
	str r6, [r0]
	ldr r2, _080B07E0 @ =sub_080B07E4
	adds r0, r5, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r5, #0
	adds r0, #0x50
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	str r6, [r5, #0x6c]
	movs r0, #1
_080B07D4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080B07DC: .4byte gUnk_08353EF4
_080B07E0: .4byte sub_080B07E4

	thumb_func_start sub_080B07E4
sub_080B07E4: @ 0x080B07E4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0x14
	bne _080B07F4
	adds r0, r4, #0
	bl sub_080B0A64
_080B07F4:
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B0856
	movs r0, #0x40
	orrs r1, r0
	subs r0, #0x61
	ands r1, r0
	str r1, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080B0844
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #1
	beq _080B082C
	cmp r0, #2
	beq _080B0834
	ldr r2, _080B0828 @ =sub_080B0290
	b _080B0836
	.align 2, 0
_080B0828: .4byte sub_080B0290
_080B082C:
	ldr r2, _080B0830 @ =sub_080B0428
	b _080B0836
	.align 2, 0
_080B0830: .4byte sub_080B0428
_080B0834:
	ldr r2, _080B0840 @ =sub_080B05C0
_080B0836:
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	b _080B0856
	.align 2, 0
_080B0840: .4byte sub_080B05C0
_080B0844:
	ldr r2, _080B085C @ =sub_080B024C
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	strh r0, [r1]
_080B0856:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B085C: .4byte sub_080B024C

	thumb_func_start sub_080B0860
sub_080B0860: @ 0x080B0860
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080B0890 @ =sub_080B0938
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
	beq _080B0894
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080B089C
	.align 2, 0
_080B0890: .4byte sub_080B0938
_080B0894:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080B089C:
	adds r0, r4, #0
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
	ldr r0, _080B0930 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080B08EA
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080B08EA:
	ldr r0, [r4, #8]
	ldr r1, _080B0934 @ =0x10010000
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	movs r1, #0x20
	orrs r0, r1
	subs r1, #0x28
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	movs r1, #5
	rsbs r1, r1, #0
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B0930: .4byte gUnk_03000510
_080B0934: .4byte 0x10010000

	thumb_func_start sub_080B0938
sub_080B0938: @ 0x080B0938
	push {r4, r5, r6, lr}
	ldr r0, _080B0954 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B0958
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B0960
	.align 2, 0
_080B0954: .4byte gCurTask
_080B0958:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B0960:
	adds r5, r0, #0
	ldr r6, [r5, #0x70]
	adds r3, r5, #0
	adds r3, #0x60
	ldrh r2, [r3]
	ldr r4, _080B09B4 @ =0x0000FFFF
	cmp r2, r4
	beq _080B0982
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080B0982
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r3]
_080B0982:
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r4, r5, #0
	adds r4, #0x56
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080B0A56
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B09B8
	ldr r0, [r5, #8]
	orrs r0, r1
	b _080B09C0
	.align 2, 0
_080B09B4: .4byte 0x0000FFFF
_080B09B8:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B09C0:
	str r0, [r5, #8]
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	bhi _080B0A56
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080B09E4
	ldr r0, _080B09E0 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r5, #8]
	b _080B0A56
	.align 2, 0
_080B09E0: .4byte 0xFFFBFFFF
_080B09E4:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080B0A56
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080B0A56
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _080B0A1C
	ldr r2, _080B0A14 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080B0A18 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080B0A1E
	.align 2, 0
_080B0A14: .4byte gCurLevelInfo
_080B0A18: .4byte 0x0000065E
_080B0A1C:
	movs r1, #0xff
_080B0A1E:
	cmp r1, #0xff
	beq _080B0A56
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080B0A5C @ =gUnk_02022EB0
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
	ldr r2, _080B0A60 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080B0A56:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B0A5C: .4byte gUnk_02022EB0
_080B0A60: .4byte gUnk_02022F50

	thumb_func_start sub_080B0A64
sub_080B0A64: @ 0x080B0A64
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _080B0A9C @ =sub_080B0C40
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080B0AA0 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B0AA4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B0AAC
	.align 2, 0
_080B0A9C: .4byte sub_080B0C40
_080B0AA0: .4byte sub_0803DCCC
_080B0AA4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B0AAC:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x38]
	str r6, [r4, #0x44]
	adds r2, r6, #0
	adds r2, #0x60
	ldrh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x42
	movs r5, #0
	strh r0, [r1]
	movs r7, #0x20
	strh r7, [r4, #0x3c]
	movs r0, #0x40
	strh r0, [r4, #0x3e]
	ldr r0, [r4, #0x38]
	ldr r1, _080B0B08 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4, #0x38]
	ldrh r1, [r4, #6]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r3, #0
	adds r3, r1, #0
	orrs r3, r0
	orrs r3, r5
	strh r3, [r4, #6]
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	mov sb, r2
	cmp r0, #0
	beq _080B0B10
	ldr r0, [r4, #0x34]
	ldr r1, _080B0B0C @ =0xFFFFF400
	adds r0, r0, r1
	str r0, [r4, #0x34]
	rsbs r0, r7, #0
	strh r0, [r4, #0x3c]
	b _080B0B20
	.align 2, 0
_080B0B08: .4byte 0xFFFFF800
_080B0B0C: .4byte 0xFFFFF400
_080B0B10:
	movs r0, #1
	orrs r3, r0
	strh r3, [r4, #6]
	ldr r0, [r4, #0x34]
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r4, #0x34]
_080B0B20:
	ldr r0, _080B0B9C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r3, r6, #0
	adds r3, #0x56
	movs r0, #1
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	mov r8, r3
	cmp r2, #0
	beq _080B0B46
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_080B0B46:
	adds r1, r4, #0
	adds r1, #0xc
	ldr r3, _080B0BA0 @ =0x00000313
	movs r7, #0
	str r7, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0xc
	bl sub_080709F8
	adds r5, r4, #0
	adds r5, #0x2b
	strb r7, [r5]
	ldr r2, _080B0BA4 @ =gKirbys
	ldr r0, _080B0BA8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080B0BB0
	ldr r4, _080B0BAC @ =0x00000312
	adds r0, r4, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080B0BB2
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080B0BB2
	.align 2, 0
_080B0B9C: .4byte gUnk_03000510
_080B0BA0: .4byte 0x00000313
_080B0BA4: .4byte gKirbys
_080B0BA8: .4byte gUnk_0203AD3C
_080B0BAC: .4byte 0x00000312
_080B0BB0:
	strb r7, [r5]
_080B0BB2:
	ldr r1, _080B0C28 @ =gKirbys
	ldr r0, _080B0C2C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	mov r3, sb
	ldrh r3, [r3]
	cmp r0, r3
	bne _080B0C1A
	ldrb r0, [r6]
	cmp r0, #0
	bne _080B0BDA
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, r2
	bne _080B0C1A
_080B0BDA:
	ldr r1, _080B0C30 @ =gUnk_08D60FA4
	ldr r4, _080B0C34 @ =gSongTable
	ldr r2, _080B0C38 @ =0x00000AE4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080B0C00
	movs r1, #0xae
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080B0C1A
_080B0C00:
	cmp r3, #0
	beq _080B0C12
	ldr r0, _080B0C3C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B0C1A
_080B0C12:
	movs r0, #0xae
	lsls r0, r0, #1
	bl m4aSongNumStart
_080B0C1A:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B0C28: .4byte gKirbys
_080B0C2C: .4byte gUnk_0203AD3C
_080B0C30: .4byte gUnk_08D60FA4
_080B0C34: .4byte gSongTable
_080B0C38: .4byte 0x00000AE4
_080B0C3C: .4byte gUnk_0203AD10

	thumb_func_start sub_080B0C40
sub_080B0C40: @ 0x080B0C40
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x28
	ldr r2, _080B0C64 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B0C68
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B0C70
	.align 2, 0
_080B0C64: .4byte gCurTask
_080B0C68:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B0C70:
	adds r5, r0, #0
	ldrh r3, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _080B0C86
	ldr r0, [r2]
	bl TaskDestroy
	b _080B0F1A
_080B0C86:
	ldr r2, _080B0CEC @ =gKirbys
	ldr r0, _080B0CF0 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080B0D34
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080B0CFC
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080B0D5A
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0xc
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080B0CF4 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080B0CF8 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _080B0D5A
	.align 2, 0
_080B0CEC: .4byte gKirbys
_080B0CF0: .4byte gUnk_0203AD3C
_080B0CF4: .4byte 0xFFF7FFFF
_080B0CF8: .4byte 0x0400000A
_080B0CFC:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080B0D5A
	movs r0, #0xc
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080B0D2C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080B0D30 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080B0D5A
	.align 2, 0
_080B0D2C: .4byte 0xFFF7FFFF
_080B0D30: .4byte 0x0400000A
_080B0D34:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _080B0D50
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080B0D50
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080B0D50:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080B0D5A:
	ldr r2, _080B0DA0 @ =gKirbys
	ldr r0, _080B0DA4 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r1, [r7]
	cmp r0, r1
	bne _080B0DAC
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080B0DB4
	ldr r6, _080B0DA8 @ =0x00000312
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080B0DB4
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080B0DB4
	.align 2, 0
_080B0DA0: .4byte gKirbys
_080B0DA4: .4byte gUnk_0203AD3C
_080B0DA8: .4byte 0x00000312
_080B0DAC:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_080B0DB4:
	ldr r0, _080B0E60 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldr r2, [r5, #0x44]
	mov ip, r2
	ldr r6, _080B0E64 @ =gUnk_03000510
	mov r8, r6
	cmp r0, #0
	beq _080B0E00
	ldr r1, _080B0E68 @ =gCurLevelInfo
	mov sb, r1
	ldrh r3, [r7]
	ldr r4, _080B0E6C @ =gUnk_02026D50
_080B0DCC:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r6, sb
	adds r1, r0, r6
	movs r6, #0xbf
	lsls r6, r6, #3
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r3
	bne _080B0DF8
	adds r6, #0x66
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080B0E12
_080B0DF8:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080B0DCC
_080B0E00:
	movs r0, #1
	cmp r0, #0
	beq _080B0E12
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_080B0E12:
	mov r3, ip
	cmp r3, #0
	beq _080B0E70
	ldrb r0, [r3]
	cmp r0, #0
	beq _080B0E30
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080B0E30
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080B0E30:
	cmp r3, #0
	beq _080B0E70
	mov r6, r8
	ldrb r2, [r6, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080B0ED8
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080B0ED8
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080B0F1A
	.align 2, 0
_080B0E60: .4byte gUnk_0203AD44
_080B0E64: .4byte gUnk_03000510
_080B0E68: .4byte gCurLevelInfo
_080B0E6C: .4byte gUnk_02026D50
_080B0E70:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080B0ED4 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	beq _080B0EAE
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080B0EAE
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080B0EAE
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080B0EAE
	movs r3, #4
_080B0EAE:
	mov r1, r8
	ldrb r0, [r1, #4]
	movs r1, #1
	lsls r1, r3
	movs r2, #0x10
	orrs r1, r2
	ands r0, r1
	cmp r0, #0
	beq _080B0ED8
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080B0ED8
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080B0F1A
	.align 2, 0
_080B0ED4: .4byte gKirbys
_080B0ED8:
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x30
	ble _080B0EF4
	ldrh r0, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _080B0F1A
_080B0EF4:
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080B0F14
	movs r6, #0x3c
	ldrsh r1, [r5, r6]
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
	str r0, [r5, #0x34]
	movs r0, #0x3e
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x38]
	subs r0, r0, r1
	str r0, [r5, #0x38]
_080B0F14:
	adds r0, r5, #0
	bl sub_0806FAC8
_080B0F1A:
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080B0F28
sub_080B0F28: @ 0x080B0F28
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080B0F74
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #1
	beq _080B0F5C
	cmp r0, #2
	beq _080B0F64
	ldr r2, _080B0F58 @ =sub_080B0290
	b _080B0F66
	.align 2, 0
_080B0F58: .4byte sub_080B0290
_080B0F5C:
	ldr r2, _080B0F60 @ =sub_080B0428
	b _080B0F66
	.align 2, 0
_080B0F60: .4byte sub_080B0428
_080B0F64:
	ldr r2, _080B0F70 @ =sub_080B05C0
_080B0F66:
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	b _080B0F86
	.align 2, 0
_080B0F70: .4byte sub_080B05C0
_080B0F74:
	ldr r2, _080B0F8C @ =sub_080B024C
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	strh r0, [r1]
_080B0F86:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B0F8C: .4byte sub_080B024C
