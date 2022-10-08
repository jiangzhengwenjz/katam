	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080E25B4
sub_080E25B4: @ 0x080E25B4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _080E2618 @ =sub_080E261C
	movs r1, #0x16
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r0, [r0, #8]
	adds r1, r4, #0
	adds r1, #0xa2
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r4, #4]
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r2, #0x13
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x10
	bl sub_0803E2B0
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E2618: .4byte sub_080E261C

	thumb_func_start sub_080E261C
sub_080E261C: @ 0x080E261C
	push {r4, r5, lr}
	mov ip, r0
	ldrh r0, [r0, #4]
	mov r1, ip
	movs r2, #4
	ldrsh r4, [r1, r2]
	cmp r4, #0
	beq _080E262E
	b _080E27E6
_080E262E:
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	mov r5, ip
	ldr r3, [r5, #0x44]
	ldr r2, _080E2668 @ =0xFFFFFC00
	ands r3, r2
	adds r1, #4
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r5, r1, #0
	cmp r3, r0
	ble _080E266C
	subs r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E26B6
	strh r2, [r1]
	b _080E26B6
	.align 2, 0
_080E2668: .4byte 0xFFFFFC00
_080E266C:
	cmp r3, r0
	bge _080E268C
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E2688 @ =0xFFFFFE00
	cmp r0, r2
	bge _080E26B6
	strh r2, [r1]
	b _080E26B6
	.align 2, 0
_080E2688: .4byte 0xFFFFFE00
_080E268C:
	mov r1, ip
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E26A8
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E26B6
	b _080E26B4
_080E26A8:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E26B6
_080E26B4:
	strh r4, [r1]
_080E26B6:
	mov r4, ip
	ldr r3, [r4, #0x40]
	ldr r2, _080E26E0 @ =0xFFFFFC00
	ands r3, r2
	mov r1, ip
	adds r1, #0xa0
	movs r4, #0
	ldrsh r0, [r1, r4]
	lsls r0, r0, #8
	ands r0, r2
	adds r4, r1, #0
	cmp r3, r0
	bge _080E26E4
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	b _080E271C
	.align 2, 0
_080E26E0: .4byte 0xFFFFFC00
_080E26E4:
	cmp r3, r0
	ble _080E2740
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E271C
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E2718 @ =0xFFFFFE00
	cmp r0, r2
	blt _080E2714
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E276C
_080E2714:
	strh r2, [r1]
	b _080E276C
	.align 2, 0
_080E2718: .4byte 0xFFFFFE00
_080E271C:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080E2714
	ldr r2, _080E273C @ =0xFFFFFE00
	cmp r0, r2
	bge _080E276C
	b _080E2714
	.align 2, 0
_080E273C: .4byte 0xFFFFFE00
_080E2740:
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E275C
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E276C
	b _080E2768
_080E275C:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E276C
_080E2768:
	movs r0, #0
	strh r0, [r1]
_080E276C:
	mov r0, ip
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E2788
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	b _080E2792
_080E2788:
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
_080E2792:
	mov r0, ip
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E2822
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #4
	orrs r0, r1
	mov r2, ip
	str r0, [r2, #8]
	movs r3, #0
	ldrsh r1, [r4, r3]
	ldr r0, [r2, #0x40]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080E27BC
	cmp r2, #0xf
	ble _080E27C2
	b _080E2822
_080E27BC:
	subs r0, r0, r1
	cmp r0, #0xf
	bgt _080E2822
_080E27C2:
	movs r4, #0
	ldrsh r1, [r5, r4]
	mov r5, ip
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080E27D8
	cmp r2, #0xf
	ble _080E27DE
	b _080E2822
_080E27D8:
	subs r0, r0, r1
	cmp r0, #0xf
	bgt _080E2822
_080E27DE:
	mov r0, ip
	bl sub_080DF894
	b _080E2822
_080E27E6:
	subs r0, #1
	mov r1, ip
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E2822
	adds r1, #0x83
	movs r0, #0
	strb r0, [r1]
	movs r1, #0
	mov r0, ip
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E2818
	ldr r2, _080E2828 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E282C @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080E2830 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r1, r0
_080E2818:
	cmp r1, #0
	beq _080E2822
	mov r0, ip
	bl sub_080DF720
_080E2822:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E2828: .4byte gRngVal
_080E282C: .4byte 0x00196225
_080E2830: .4byte 0x3C6EF35F

	thumb_func_start sub_080E2834
sub_080E2834: @ 0x080E2834
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r0, #0xb4
	ldr r5, [r0]
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, #0
	bge _080E285A
	adds r0, r2, #0
	adds r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E286A
	b _080E2866
_080E285A:
	adds r0, r2, #0
	subs r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E286A
_080E2866:
	movs r0, #0
	strh r0, [r1]
_080E286A:
	adds r1, r3, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, #0
	bge _080E2886
	adds r0, r2, #0
	adds r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E2896
	b _080E2892
_080E2886:
	adds r0, r2, #0
	subs r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E2896
_080E2892:
	movs r0, #0
	strh r0, [r1]
_080E2896:
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r1, [r0]
	cmp r1, #0
	bne _080E28B4
	adds r0, #4
	strb r1, [r0]
	adds r0, r3, #0
	bl sub_080DF894
	b _080E28C4
_080E28B4:
	adds r0, r5, #0
	adds r0, #0xb8
	ldrb r0, [r0]
	cmp r0, #1
	bne _080E28C4
	adds r0, r3, #0
	bl sub_080E3D34
_080E28C4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E28CC
sub_080E28CC: @ 0x080E28CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov ip, r0
	adds r0, #0xb4
	ldr r6, [r0]
	cmp r6, #0
	bne _080E28EA
	mov r0, ip
	bl sub_080E3D90
	b _080E2BD8
_080E28EA:
	mov r1, ip
	adds r1, #0xac
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r2, ip
	adds r2, #0xa0
	movs r7, #0
	strh r0, [r2]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	mov r4, ip
	adds r4, #0xa2
	strh r0, [r4]
	mov r0, ip
	adds r0, #0x83
	ldrb r1, [r0]
	mov r8, r2
	mov sl, r0
	mov r5, ip
	adds r5, #0x9f
	cmp r1, #0x12
	beq _080E2922
	ldrb r0, [r5]
	cmp r0, #0
	bne _080E2922
	b _080E2BBA
_080E2922:
	mov r0, ip
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r1, [r1, #0xe]
	movs r2, #0x60
	mov sb, r2
	str r0, [sp]
	cmp r1, #0
	beq _080E2938
	movs r3, #0xa0
	mov sb, r3
_080E2938:
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	mov r0, ip
	ldr r3, [r0, #0x44]
	ldr r1, _080E2980 @ =0xFFFFFC00
	ands r3, r1
	movs r2, #0
	ldrsh r0, [r4, r2]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080E29A4
	mov r3, ip
	ldrh r2, [r3, #4]
	movs r7, #4
	ldrsh r0, [r3, r7]
	cmp r0, #0
	ble _080E2984
	mov r1, ip
	adds r1, #0x52
	ldrh r3, [r1]
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r4, r1, #0
	cmp r0, r2
	ble _080E2A20
	strh r2, [r4]
	b _080E2A20
	.align 2, 0
_080E2980: .4byte 0xFFFFFC00
_080E2984:
	mov r1, ip
	adds r1, #0x52
	ldrh r7, [r1]
	adds r0, r2, r7
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E29A0 @ =0xFFFFFE80
	adds r4, r1, #0
	cmp r0, r2
	bge _080E2A20
	strh r2, [r4]
	b _080E2A20
	.align 2, 0
_080E29A0: .4byte 0xFFFFFE80
_080E29A4:
	cmp r3, r0
	bge _080E29F4
	mov r1, ip
	movs r2, #4
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _080E29D2
	mov r0, ip
	adds r0, #0x52
	ldrh r1, [r0]
	mov r3, ip
	ldrh r2, [r3, #4]
	subs r1, r1, r2
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r4, r0, #0
	cmp r1, r2
	ble _080E2A20
	strh r2, [r4]
	b _080E2A20
_080E29D2:
	mov r0, ip
	adds r0, #0x52
	ldrh r1, [r0]
	mov r7, ip
	ldrh r2, [r7, #4]
	subs r1, r1, r2
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, _080E29F0 @ =0xFFFFFE80
	adds r4, r0, #0
	cmp r1, r2
	bge _080E2A20
	strh r2, [r4]
	b _080E2A20
	.align 2, 0
_080E29F0: .4byte 0xFFFFFE80
_080E29F4:
	mov r0, ip
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0
	bge _080E2A12
	adds r0, r2, #0
	adds r0, #0x10
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E2A20
	b _080E2A1E
_080E2A12:
	adds r0, r2, #0
	subs r0, #0x10
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E2A20
_080E2A1E:
	strh r7, [r4]
_080E2A20:
	mov r7, ip
	ldr r3, [r7, #0x40]
	ldr r2, _080E2A68 @ =0xFFFFFC00
	ands r3, r2
	mov r0, r8
	movs r7, #0
	ldrsh r1, [r0, r7]
	mov r7, sb
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	bge _080E2A6C
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r3, r1, #0
	cmp r0, r2
	bgt _080E2AC0
	b _080E2AC4
	.align 2, 0
_080E2A68: .4byte 0xFFFFFC00
_080E2A6C:
	cmp r3, r0
	ble _080E2AD4
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E2AA8
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E2AA4 @ =0xFFFFFE80
	adds r3, r1, #0
	cmp r0, r2
	blt _080E2AC0
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080E2B02
	strh r1, [r3]
	b _080E2B02
	.align 2, 0
_080E2AA4: .4byte 0xFFFFFE80
_080E2AA8:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r3, r1, #0
	cmp r0, r2
	ble _080E2AC4
_080E2AC0:
	strh r2, [r3]
	b _080E2B02
_080E2AC4:
	ldr r1, _080E2AD0 @ =0xFFFFFE80
	cmp r0, r1
	bge _080E2B02
	strh r1, [r3]
	b _080E2B02
	.align 2, 0
_080E2AD0: .4byte 0xFFFFFE80
_080E2AD4:
	mov r0, ip
	adds r0, #0x50
	ldrh r2, [r0]
	movs r7, #0
	ldrsh r1, [r0, r7]
	adds r3, r0, #0
	cmp r1, #0
	bge _080E2AF2
	adds r0, r2, #0
	adds r0, #0x18
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E2B02
	b _080E2AFE
_080E2AF2:
	adds r0, r2, #0
	subs r0, #0x18
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E2B02
_080E2AFE:
	movs r0, #0
	strh r0, [r3]
_080E2B02:
	ldr r1, [sp]
	ldr r0, [r1]
	ldrb r2, [r0, #0xe]
	cmp r2, #0
	beq _080E2B30
	mov r2, ip
	ldr r0, [r2, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	mov r0, ip
	adds r0, #0xa4
	movs r7, #0
	ldrsh r0, [r0, r7]
	adds r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r2, #0x40]
	cmp r1, r0
	bge _080E2B50
	movs r0, #0
	strh r0, [r3]
	b _080E2B50
_080E2B30:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	orrs r0, r1
	mov r7, ip
	str r0, [r7, #8]
	mov r0, ip
	adds r0, #0xa8
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r7, #0x40]
	cmp r1, r0
	ble _080E2B50
	strh r2, [r3]
_080E2B50:
	ldrb r0, [r5]
	cmp r0, #1
	bne _080E2BB0
	mov r2, ip
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x60
	ble _080E2B6A
	movs r0, #0x60
	strh r0, [r2, #4]
_080E2B6A:
	mov r7, ip
	ldr r0, [r7, #0x44]
	ldr r2, _080E2B90 @ =0xFFFFF800
	ands r0, r2
	ldr r1, [r6, #0x44]
	ands r1, r2
	cmp r0, r1
	bne _080E2BB4
	ldr r0, [r7, #0x40]
	ldr r1, [r6, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080E2B94
	movs r0, #0xc0
	lsls r0, r0, #7
	cmp r2, r0
	bgt _080E2B9E
	b _080E2BB4
	.align 2, 0
_080E2B90: .4byte 0xFFFFF800
_080E2B94:
	subs r1, r1, r0
	movs r0, #0xc0
	lsls r0, r0, #7
	cmp r1, r0
	ble _080E2BB4
_080E2B9E:
	movs r1, #0
	movs r0, #0
	strh r0, [r3]
	strh r0, [r4]
	movs r0, #0x13
	mov r2, sl
	strb r0, [r2]
	strb r1, [r5]
	b _080E2BB4
_080E2BB0:
	subs r0, #1
	strb r0, [r5]
_080E2BB4:
	ldrb r0, [r5]
	cmp r0, #0
	bne _080E2BD8
_080E2BBA:
	mov r3, sl
	ldrb r0, [r3]
	cmp r0, #0x13
	bne _080E2BD8
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0x13
	bne _080E2BD8
	mov r0, ip
	bl sub_080E2BE8
	adds r0, r6, #0
	bl sub_080E2BE8
_080E2BD8:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080E2BE8
sub_080E2BE8: @ 0x080E2BE8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0xb4
	ldr r5, [r0]
	ldr r2, _080E2C28 @ =sub_080E2C78
	adds r0, r4, #0
	movs r1, #0x14
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r1, #0
	ldr r0, _080E2C2C @ =0x0000FF80
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x52
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E2C1A
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080E2C1A:
	ldr r2, [r4, #0x40]
	ldr r0, [r5, #0x40]
	subs r1, r2, r0
	cmp r1, #0
	blt _080E2C30
	lsrs r0, r1, #8
	b _080E2C34
	.align 2, 0
_080E2C28: .4byte sub_080E2C78
_080E2C2C: .4byte 0x0000FF80
_080E2C30:
	subs r0, r0, r2
	lsrs r0, r0, #8
_080E2C34:
	adds r2, r4, #0
	adds r2, #0xa0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x11
	strh r1, [r2]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E2C52
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	adds r0, r1, r0
	b _080E2C58
_080E2C52:
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	subs r0, r0, r1
_080E2C58:
	strh r0, [r2]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x68]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080E2C78
sub_080E2C78: @ 0x080E2C78
	push {r4, r5, lr}
	mov ip, r0
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0xf
	bgt _080E2CCC
	cmp r0, #7
	ble _080E2CBC
	ldr r2, _080E2CC8 @ =gUnk_08356A04
	mov r3, ip
	movs r4, #4
	ldrsh r0, [r3, r4]
	subs r0, #8
	asrs r0, r0, #1
	adds r0, r0, r2
	ldrb r1, [r0]
	mov r0, ip
	adds r0, #0x54
	movs r3, #0
	strb r1, [r0]
	mov r5, ip
	movs r1, #4
	ldrsh r0, [r5, r1]
	subs r0, #8
	asrs r0, r0, #1
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #0x55
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x50
	strh r3, [r0]
_080E2CBC:
	mov r2, ip
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	b _080E2D7C
	.align 2, 0
_080E2CC8: .4byte gUnk_08356A04
_080E2CCC:
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E2CFC
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x68
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080E2CF8 @ =0xFFFFFB00
	adds r2, r1, #0
	cmp r0, r3
	blt _080E2D14
	movs r1, #0xa0
	lsls r1, r1, #3
	cmp r0, r1
	ble _080E2D20
	b _080E2D1E
	.align 2, 0
_080E2CF8: .4byte 0xFFFFFB00
_080E2CFC:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x68
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xa0
	lsls r3, r3, #3
	adds r2, r1, #0
	cmp r0, r3
	ble _080E2D18
_080E2D14:
	strh r3, [r2]
	b _080E2D20
_080E2D18:
	ldr r1, _080E2D54 @ =0xFFFFFB00
	cmp r0, r1
	bge _080E2D20
_080E2D1E:
	strh r1, [r2]
_080E2D20:
	mov r0, ip
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r4, [r0, #0xe]
	cmp r4, #0
	beq _080E2D58
	mov r0, ip
	adds r0, #0xa0
	movs r4, #0
	ldrsh r3, [r0, r4]
	movs r5, #0
	ldrsh r1, [r2, r5]
	mov r4, ip
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	asrs r0, r0, #8
	cmp r3, r0
	bge _080E2D7C
	lsls r0, r3, #8
	str r0, [r4, #0x40]
	movs r0, #0
	strh r0, [r2]
	mov r0, ip
	bl sub_080E2D84
	b _080E2D7C
	.align 2, 0
_080E2D54: .4byte 0xFFFFFB00
_080E2D58:
	mov r0, ip
	adds r0, #0xa0
	movs r5, #0
	ldrsh r3, [r0, r5]
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r5, ip
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	asrs r0, r0, #8
	cmp r3, r0
	ble _080E2D7C
	lsls r0, r3, #8
	str r0, [r5, #0x40]
	strh r4, [r2]
	mov r0, ip
	bl sub_080E2D84
_080E2D7C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E2D84
sub_080E2D84: @ 0x080E2D84
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r2, _080E2DB0 @ =sub_080E2E94
	movs r1, #0x14
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E2DB4
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0x14
	b _080E2DBA
	.align 2, 0
_080E2DB0: .4byte sub_080E2E94
_080E2DB4:
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0x20
_080E2DBA:
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	beq _080E2E72
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E2DE4
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #3
	bl sub_080A8D18
	b _080E2DF4
_080E2DE4:
	movs r2, #0x28
	rsbs r2, r2, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #2
	bl sub_080A8D18
_080E2DF4:
	movs r0, #3
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r1, _080E2E7C @ =gKirbys
	ldr r0, _080E2E80 @ =gUnk_0203AD3C
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
	bne _080E2E68
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E2E28
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E2E68
_080E2E28:
	ldr r1, _080E2E84 @ =gUnk_08D60FA4
	ldr r5, _080E2E88 @ =gSongTable
	ldr r2, _080E2E8C @ =0x00000CA4
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E2E4E
	movs r1, #0xca
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E2E68
_080E2E4E:
	cmp r3, #0
	beq _080E2E60
	ldr r0, _080E2E90 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E2E68
_080E2E60:
	movs r0, #0xca
	lsls r0, r0, #1
	bl m4aSongNumStart
_080E2E68:
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x68]
_080E2E72:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E2E7C: .4byte gKirbys
_080E2E80: .4byte gUnk_0203AD3C
_080E2E84: .4byte gUnk_08D60FA4
_080E2E88: .4byte gSongTable
_080E2E8C: .4byte 0x00000CA4
_080E2E90: .4byte gUnk_0203AD10

	thumb_func_start sub_080E2E94
sub_080E2E94: @ 0x080E2E94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r3, r7, #0
	adds r2, r7, #0
	adds r2, #0xb4
	ldr r0, [r2]
	mov sl, r0
	movs r1, #4
	ldrsh r0, [r7, r1]
	cmp r0, #7
	bgt _080E2ECC
	ldr r1, _080E2FC4 @ =gUnk_08356A14
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x54
	strb r1, [r0]
	ldr r0, [r2]
	cmp r0, #0
	beq _080E2ECC
	mov r0, sl
	adds r0, #0x54
	strb r1, [r0]
_080E2ECC:
	movs r1, #4
	ldrsh r0, [r7, r1]
	adds r1, r7, #0
	adds r1, #0x9e
	ldrb r1, [r1]
	cmp r0, r1
	bge _080E2EDC
	b _080E2FE0
_080E2EDC:
	adds r1, r3, #0
	adds r1, #0xba
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r3, #0
	adds r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	beq _080E2FD8
	mov r0, sl
	adds r0, #0xba
	strb r2, [r0]
	ldrb r0, [r1]
	cmp r0, #2
	bhi _080E2FD8
	ldr r2, _080E2FC8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E2FCC @ =0x00196225
	muls r0, r1, r0
	ldr r4, _080E2FD0 @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E2FD8
	adds r0, r7, #0
	adds r0, #0xb4
	ldr r4, [r0]
	adds r0, r7, #0
	movs r1, #0x12
	ldr r2, _080E2FD4 @ =sub_080E28CC
	bl ObjectSetFunc
	adds r0, r7, #0
	bl sub_0803D368
	adds r1, r7, #0
	adds r1, #0xac
	str r0, [r1]
	adds r4, #0xac
	str r0, [r4]
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r7, #8]
	movs r4, #0x9f
	adds r4, r4, r7
	mov sb, r4
	movs r0, #0x5a
	mov r8, r0
	mov r1, r8
	strb r1, [r4]
	movs r6, #8
	strh r6, [r7, #4]
	movs r5, #4
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #0x20
	rsbs r2, r2, #0
	movs r3, #4
	bl sub_0803E2B0
	mov r0, sl
	adds r0, #0xb4
	ldr r4, [r0]
	mov r0, sl
	movs r1, #0x12
	ldr r2, _080E2FD4 @ =sub_080E28CC
	bl ObjectSetFunc
	mov r0, sl
	bl sub_0803D368
	mov r1, sl
	adds r1, #0xac
	str r0, [r1]
	adds r4, #0xac
	str r0, [r4]
	mov r4, sl
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	adds r4, #0x9f
	mov r0, r8
	strb r0, [r4]
	mov r1, sl
	strh r6, [r1, #4]
	str r5, [sp]
	mov r0, sl
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #0x20
	rsbs r2, r2, #0
	movs r3, #4
	bl sub_0803E2B0
	adds r0, r7, #0
	adds r0, #0x83
	movs r2, #0x13
	strb r2, [r0]
	movs r1, #0x2d
	mov r0, sb
	strb r1, [r0]
	mov r0, sl
	adds r0, #0x83
	strb r2, [r0]
	strb r1, [r4]
	b _080E2FE6
	.align 2, 0
_080E2FC4: .4byte gUnk_08356A14
_080E2FC8: .4byte gRngVal
_080E2FCC: .4byte 0x00196225
_080E2FD0: .4byte 0x3C6EF35F
_080E2FD4: .4byte sub_080E28CC
_080E2FD8:
	adds r0, r7, #0
	bl sub_080E3D90
	b _080E2FE6
_080E2FE0:
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
_080E2FE6:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E2FF8
sub_080E2FF8: @ 0x080E2FF8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r5, #0
	strb r0, [r1]
	ldr r3, [r4, #0x44]
	ldr r1, _080E303C @ =0xFFFFFC00
	ands r3, r1
	adds r0, r4, #0
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080E3040
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E308A
	strh r2, [r1]
	b _080E308A
	.align 2, 0
_080E303C: .4byte 0xFFFFFC00
_080E3040:
	cmp r3, r0
	bge _080E3060
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E305C @ =0xFFFFFE00
	cmp r0, r2
	bge _080E308A
	strh r2, [r1]
	b _080E308A
	.align 2, 0
_080E305C: .4byte 0xFFFFFE00
_080E3060:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E307C
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E308A
	b _080E3088
_080E307C:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E308A
_080E3088:
	strh r5, [r1]
_080E308A:
	ldr r3, [r4, #0x40]
	ldr r2, _080E30B0 @ =0xFFFFFC00
	ands r3, r2
	adds r1, r4, #0
	adds r1, #0xa0
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r6, r1, #0
	cmp r3, r0
	bge _080E30B4
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080E30EC
	.align 2, 0
_080E30B0: .4byte 0xFFFFFC00
_080E30B4:
	cmp r3, r0
	ble _080E3110
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E30EC
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E30E8 @ =0xFFFFFE00
	cmp r0, r2
	blt _080E30E2
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E313C
_080E30E2:
	strh r2, [r1]
	b _080E313C
	.align 2, 0
_080E30E8: .4byte 0xFFFFFE00
_080E30EC:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080E30E2
	ldr r2, _080E310C @ =0xFFFFFE00
	cmp r0, r2
	bge _080E313C
	b _080E30E2
	.align 2, 0
_080E310C: .4byte 0xFFFFFE00
_080E3110:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E312C
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E313C
	b _080E3138
_080E312C:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E313C
_080E3138:
	movs r0, #0
	strh r0, [r1]
_080E313C:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E3152
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080E3158
_080E3152:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080E3158:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _080E31AC
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0
	ldrsh r1, [r6, r0]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080E3182
	cmp r2, #0xf
	ble _080E3188
	b _080E31AC
_080E3182:
	subs r0, r0, r1
	cmp r0, #0xf
	bgt _080E31AC
_080E3188:
	adds r0, r4, #0
	adds r0, #0xa2
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	subs r1, r2, r0
	cmp r1, #0
	blt _080E31A0
	cmp r1, #0xf
	ble _080E31A6
	b _080E31AC
_080E31A0:
	subs r0, r0, r2
	cmp r0, #0xf
	bgt _080E31AC
_080E31A6:
	adds r0, r4, #0
	bl sub_080DF894
_080E31AC:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E31CC
	movs r0, #0
	strb r0, [r5]
	subs r1, #0x12
	movs r2, #0x13
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x10
	bl sub_0803E2B0
_080E31CC:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080E31D4
sub_080E31D4: @ 0x080E31D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E31F8
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	subs r0, #0x20
	b _080E31FE
_080E31F8:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r0, #0x20
_080E31FE:
	mov sl, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	subs r0, #0x10
	mov ip, r0
	movs r4, #0
	ldr r1, _080E3220 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080E3224 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080E323C
	.align 2, 0
_080E3220: .4byte gUnk_020229D4
_080E3224: .4byte gUnk_020229E0
_080E3228:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080E3244
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080E323C:
	cmp r0, #0
	bne _080E3228
	orrs r2, r3
	str r2, [r1]
_080E3244:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r0, sl
	strh r0, [r1, #6]
	mov r7, ip
	strh r7, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xc8
	strb r0, [r1, #0xc]
	ldr r0, [r5, #8]
	ands r0, r4
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r0, sb
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
	mov r2, r8
	ldrb r0, [r2]
	bl CreateObject
	str r5, [r0, #0x70]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateMasterHandBullet
CreateMasterHandBullet: @ 0x080E32A8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080E32DC @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080E32E0 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E32E4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080E32EC
	.align 2, 0
_080E32DC: .4byte ObjectMain
_080E32E0: .4byte ObjectDestroy
_080E32E4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080E32EC:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r0, r2
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x68]
	orrs r0, r2
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080E336C @ =sub_0809F840
	str r0, [r4, #0x7c]
	movs r1, #4
	rsbs r1, r1, #0
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #8
	bl sub_0803E2B0
	adds r0, r4, #0
	bl ObjectInitSprite
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_080E3370
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080E336C: .4byte sub_0809F840

	thumb_func_start sub_080E3370
sub_080E3370: @ 0x080E3370
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E33A0 @ =sub_080E3DE4
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E3390
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080E3390:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r2, [r0]
	cmp r2, #0
	beq _080E33A4
	cmp r2, #1
	beq _080E33B0
	b _080E33C0
	.align 2, 0
_080E33A0: .4byte sub_080E3DE4
_080E33A4:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r1]
	b _080E33C0
_080E33B0:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xd0
	lsls r0, r0, #3
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x83
	strb r2, [r0]
_080E33C0:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E33D4
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080E33D4:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080E33E4
sub_080E33E4: @ 0x080E33E4
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080E3414 @ =sub_080E34C4
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
	beq _080E3418
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080E3420
	.align 2, 0
_080E3414: .4byte sub_080E34C4
_080E3418:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080E3420:
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
	ldr r0, _080E34BC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080E3470
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080E3470:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
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
	ldr r1, _080E34C0 @ =0x12010400
	str r1, [r4, #8]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080E349E
	orrs r1, r3
_080E349E:
	str r1, [r4, #8]
	movs r2, #0x18
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0x24
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E34BC: .4byte gUnk_03000510
_080E34C0: .4byte 0x12010400

	thumb_func_start sub_080E34C4
sub_080E34C4: @ 0x080E34C4
	push {r4, r5, lr}
	ldr r2, _080E34E0 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E34E4
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080E34EC
	.align 2, 0
_080E34E0: .4byte gCurTask
_080E34E4:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080E34EC:
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	ldr r1, [r4, #8]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080E3506
	ldr r0, [r2]
	bl TaskDestroy
	b _080E3602
_080E3506:
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080E3514
	orrs r1, r3
	str r1, [r4, #8]
	b _080E3602
_080E3514:
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x56
	strb r0, [r3]
	ldr r0, _080E3550 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080E3554
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080E3554
	adds r0, r4, #0
	bl sub_0803D9A8
	b _080E3602
	.align 2, 0
_080E3550: .4byte gUnk_03000510
_080E3554:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E3564
	ldr r0, [r4, #8]
	orrs r0, r1
	b _080E356C
_080E3564:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080E356C:
	str r0, [r4, #8]
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _080E3602
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080E3590
	ldr r0, _080E358C @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r4, #8]
	b _080E3602
	.align 2, 0
_080E358C: .4byte 0xFFFBFFFF
_080E3590:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080E3602
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080E3602
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _080E35C8
	ldr r2, _080E35C0 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _080E35C4 @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _080E35CA
	.align 2, 0
_080E35C0: .4byte gCurLevelInfo
_080E35C4: .4byte 0x0000065E
_080E35C8:
	movs r1, #0xff
_080E35CA:
	cmp r1, #0xff
	beq _080E3602
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080E3608 @ =gUnk_02022EB0
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
	ldr r2, _080E360C @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080E3602:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E3608: .4byte gUnk_02022EB0
_080E360C: .4byte gUnk_02022F50

	thumb_func_start sub_080E3610
sub_080E3610: @ 0x080E3610
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	adds r5, r6, #0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov ip, r0
	movs r4, #0
	ldr r1, _080E3638 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _080E363C @ =gUnk_020229E0
	b _080E3654
	.align 2, 0
_080E3638: .4byte gUnk_020229D4
_080E363C: .4byte gUnk_020229E0
_080E3640:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080E365C
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080E3654:
	cmp r0, #0
	bne _080E3640
	orrs r2, r3
	str r2, [r1]
_080E365C:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r7
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	movs r0, #0x40
	strh r0, [r1, #6]
	mov r0, ip
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0x4d
	strb r0, [r1, #0xc]
	strb r4, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r0, r8
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
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl CreateObject
	str r0, [r6, #0x70]
	str r5, [r0, #0x70]
	adds r1, r5, #0
	adds r1, #0xb4
	str r0, [r1]
	adds r0, #0xb4
	str r5, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080E36C4
sub_080E36C4: @ 0x080E36C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x47
	bne _080E370A
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	movs r1, #0xc8
	lsls r1, r1, #8
	cmp r0, r1
	bgt _080E372A
	str r1, [r4, #0x40]
	movs r0, #0
	strh r0, [r2]
	adds r0, r4, #0
	bl sub_080E3734
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #0x10]
	adds r0, r4, #0
	bl sub_080E3610
	b _080E372A
_080E370A:
	adds r2, r4, #0
	adds r2, #0x50
	movs r1, #0
	ldrsh r0, [r2, r1]
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	ldr r0, _080E3730 @ =0x00003FFF
	cmp r1, r0
	ble _080E372A
	adds r0, #1
	str r0, [r4, #0x40]
	movs r0, #0
	strh r0, [r2]
	adds r0, r4, #0
	bl sub_080E3734
_080E372A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3730: .4byte 0x00003FFF

	thumb_func_start sub_080E3734
sub_080E3734: @ 0x080E3734
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3754 @ =sub_080E3758
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x1e
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3754: .4byte sub_080E3758

	thumb_func_start sub_080E3758
sub_080E3758: @ 0x080E3758
	push {lr}
	adds r2, r0, #0
	ldr r3, [r2, #8]
	movs r0, #4
	orrs r3, r0
	str r3, [r2, #8]
	adds r0, r2, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x47
	bne _080E379C
	adds r0, r2, #0
	adds r0, #0xb4
	ldr r0, [r0]
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080E37BC
	ldr r0, _080E3798 @ =0xFFFFFDFF
	ands r3, r0
	str r3, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x85
	movs r0, #3
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_080DF894
	b _080E37BC
	.align 2, 0
_080E3798: .4byte 0xFFFFFDFF
_080E379C:
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E37BC
	ldr r0, _080E37C0 @ =0xFFFFFDFF
	ands r3, r0
	str r3, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_080DF894
_080E37BC:
	pop {r0}
	bx r0
	.align 2, 0
_080E37C0: .4byte 0xFFFFFDFF

	thumb_func_start sub_080E37C4
sub_080E37C4: @ 0x080E37C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E37EC @ =sub_080DF4C0
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
_080E37EC: .4byte sub_080DF4C0

	thumb_func_start sub_080E37F0
sub_080E37F0: @ 0x080E37F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3820 @ =sub_080DFC3C
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E3824
	movs r0, #0x14
	b _080E3826
	.align 2, 0
_080E3820: .4byte sub_080DFC3C
_080E3824:
	movs r0, #0x18
_080E3826:
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x68]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080E3844
sub_080E3844: @ 0x080E3844
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3888 @ =sub_080DFDE0
	movs r1, #3
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x26
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
	ldr r0, [r4, #0x68]
	subs r1, #5
	ands r0, r1
	str r0, [r4, #0x68]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3888: .4byte sub_080DFDE0

	thumb_func_start sub_080E388C
sub_080E388C: @ 0x080E388C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E38DC @ =sub_080DFE40
	movs r1, #4
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
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
_080E38DC: .4byte sub_080DFE40

	thumb_func_start sub_080E38E0
sub_080E38E0: @ 0x080E38E0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, _080E3914 @ =sub_080E0318
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x1a
	strb r0, [r1]
	movs r0, #8
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3914: .4byte sub_080E0318

	thumb_func_start sub_080E3918
sub_080E3918: @ 0x080E3918
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3968 @ =sub_080E0B44
	movs r1, #8
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
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
_080E3968: .4byte sub_080E0B44

	thumb_func_start sub_080E396C
sub_080E396C: @ 0x080E396C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E39C0 @ =sub_080E0D40
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r3, r4, #0
	adds r3, #0xac
	str r0, [r3]
	ldr r1, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r1, r2
	str r1, [r4, #8]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xa0
	movs r2, #0
	strh r0, [r1]
	ldr r0, [r3]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r2, [r0]
	movs r0, #8
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E39C0: .4byte sub_080E0D40

	thumb_func_start sub_080E39C4
sub_080E39C4: @ 0x080E39C4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, _080E39F4 @ =sub_080E0FC4
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	movs r0, #8
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E39F4: .4byte sub_080E0FC4

	thumb_func_start sub_080E39F8
sub_080E39F8: @ 0x080E39F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3A34 @ =sub_080E3A4C
	movs r1, #0xa
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r2, [r0]
	subs r0, #1
	strb r2, [r0]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E3A38
	movs r0, #0x18
	b _080E3A3A
	.align 2, 0
_080E3A34: .4byte sub_080E3A4C
_080E3A38:
	movs r0, #0x30
_080E3A3A:
	strh r0, [r4, #4]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x68]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080E3A4C
sub_080E3A4C: @ 0x080E3A4C
	push {lr}
	adds r3, r0, #0
	movs r0, #0x9e
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	lsls r2, r0, #0x18
	lsrs r0, r2, #0x18
	cmp r0, #7
	bhi _080E3A78
	ldr r1, _080E3A90 @ =gUnk_08356A04
	lsrs r0, r2, #0x19
	adds r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x55
	strb r0, [r1]
	mov r1, ip
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080E3A78:
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E3A8A
	adds r0, r3, #0
	bl sub_080E3A94
_080E3A8A:
	pop {r0}
	bx r0
	.align 2, 0
_080E3A90: .4byte gUnk_08356A04

	thumb_func_start sub_080E3A94
sub_080E3A94: @ 0x080E3A94
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3ADC @ =sub_080E1604
	movs r1, #0xb
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
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
_080E3ADC: .4byte sub_080E1604

	thumb_func_start sub_080E3AE0
sub_080E3AE0: @ 0x080E3AE0
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0xac
	ldr r3, [r0]
	ldr r1, [r2, #0xc]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080E3AFE
	movs r4, #0x88
	lsls r4, r4, #1
	adds r0, r3, r4
	ldr r0, [r0]
	cmp r0, #0
	bne _080E3B0E
_080E3AFE:
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r2, #0xc]
	adds r0, r2, #0
	bl sub_080E25B4
	b _080E3B26
_080E3B0E:
	adds r0, r2, #0
	adds r0, #0x80
	ldrh r0, [r0]
	strh r0, [r2, #4]
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E3B26
	adds r0, r2, #0
	bl sub_080E3B2C
_080E3B26:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080E3B2C
sub_080E3B2C: @ 0x080E3B2C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xac
	ldr r0, [r0]
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _080E3B90 @ =gUnk_083569DC
	str r1, [r0]
	ldr r2, _080E3B94 @ =sub_080E1CCC
	adds r0, r4, #0
	movs r1, #0xf
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _080E3B98 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xf0
	lsls r1, r1, #7
	adds r0, r0, r1
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xa0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3B90: .4byte gUnk_083569DC
_080E3B94: .4byte sub_080E1CCC
_080E3B98: .4byte gCurLevelInfo

	thumb_func_start sub_080E3B9C
sub_080E3B9C: @ 0x080E3B9C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3BCC @ =sub_080E1EC0
	movs r1, #0x10
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #8
	strh r0, [r4, #4]
	adds r4, #0x9e
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3BCC: .4byte sub_080E1EC0

	thumb_func_start sub_080E3BD0
sub_080E3BD0: @ 0x080E3BD0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3C08 @ =sub_080E2024
	movs r1, #0x10
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #8
	strh r0, [r4, #4]
	adds r4, #0x9e
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3C08: .4byte sub_080E2024

	thumb_func_start sub_080E3C0C
sub_080E3C0C: @ 0x080E3C0C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xac
	ldr r0, [r0]
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _080E3C64 @ =gUnk_083569EC
	str r1, [r0]
	ldr r2, _080E3C68 @ =sub_080E20B4
	adds r0, r4, #0
	movs r1, #0x11
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
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
_080E3C64: .4byte gUnk_083569EC
_080E3C68: .4byte sub_080E20B4

	thumb_func_start sub_080E3C6C
sub_080E3C6C: @ 0x080E3C6C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _080E3CC0 @ =sub_080E22EC
	movs r1, #0xe
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r0, [r0, #8]
	adds r1, r4, #0
	adds r1, #0xa2
	strh r0, [r1]
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r2, #0xc
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #8
	bl sub_0803E2B0
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3CC0: .4byte sub_080E22EC

	thumb_func_start sub_080E3CC4
sub_080E3CC4: @ 0x080E3CC4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3D0C @ =sub_080E23B8
	movs r1, #0x11
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
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
_080E3D0C: .4byte sub_080E23B8

	thumb_func_start sub_080E3D10
sub_080E3D10: @ 0x080E3D10
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3D30 @ =sub_080E2834
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0xb8
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	adds r4, #0xba
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3D30: .4byte sub_080E2834

	thumb_func_start sub_080E3D34
sub_080E3D34: @ 0x080E3D34
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0xb4
	ldr r5, [r0]
	ldr r2, _080E3D8C @ =sub_080E28CC
	adds r0, r4, #0
	movs r1, #0x12
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	adds r5, #0xac
	str r0, [r5]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0x5a
	strb r0, [r1]
	movs r0, #8
	strh r0, [r4, #4]
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #0x20
	rsbs r2, r2, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #4
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E3D8C: .4byte sub_080E28CC

	thumb_func_start sub_080E3D90
sub_080E3D90: @ 0x080E3D90
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3DE0 @ =sub_080E2FF8
	movs r1, #0x15
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb8
	strb r2, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
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
_080E3DE0: .4byte sub_080E2FF8

	thumb_func_start sub_080E3DE4
sub_080E3DE4: @ 0x080E3DE4
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #1]
	cmp r0, #8
	bne _080E3DF4
	adds r0, r1, #0
	bl sub_080E3DF8
_080E3DF4:
	pop {r0}
	bx r0

	thumb_func_start sub_080E3DF8
sub_080E3DF8: @ 0x080E3DF8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3E18 @ =sub_080E3E24
	movs r1, #1
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	ldr r1, _080E3E1C @ =0xFFFFF7FF
	ands r0, r1
	ldr r1, _080E3E20 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3E18: .4byte sub_080E3E24
_080E3E1C: .4byte 0xFFFFF7FF
_080E3E20: .4byte 0xFFFFFDFF

	thumb_func_start sub_080E3E24
sub_080E3E24: @ 0x080E3E24
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_080E3E30
sub_080E3E30: @ 0x080E3E30
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E3E4A
	ldrh r0, [r4, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080E3E52
_080E3E4A:
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080E3E52:
	adds r0, #0xb4
	ldr r2, [r0]
	cmp r2, #0
	beq _080E3E6C
	adds r3, r2, #0
	adds r3, #0x87
	movs r0, #0
	movs r1, #1
	strb r1, [r3]
	adds r1, r2, #0
	adds r1, #0xb4
	str r0, [r1]
	str r0, [r2, #0x70]
_080E3E6C:
	adds r0, r4, #0
	bl ObjectDestroy
	pop {r4}
	pop {r0}
	bx r0
