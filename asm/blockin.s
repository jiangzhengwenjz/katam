	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

    thumb_func_start sub_080A4728
sub_080A4728: @ 0x080A4728
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r2
	cmp r0, #0
	beq _080A474A
	ldr r0, [r4, #0x6c]
	ldr r0, [r0, #0x68]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A475C
	ldr r0, _080A4764 @ =0xFFFBFFFF
	ands r2, r0
	str r2, [r4, #8]
_080A474A:
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A4768
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r4, #0x6c]
_080A475C:
	adds r0, r4, #0
	bl sub_080A4A08
	b _080A47BA
	.align 2, 0
_080A4764: .4byte 0xFFFBFFFF
_080A4768:
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080A4790
	ldr r2, _080A4788 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080A478C @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	b _080A4792
	.align 2, 0
_080A4788: .4byte gCurLevelInfo
_080A478C: .4byte 0x0000065E
_080A4790:
	movs r0, #0xff
_080A4792:
	cmp r0, #0xff
	beq _080A47BA
	lsls r3, r0, #3
	ldr r1, _080A47C0 @ =gUnk_02022F40
	adds r1, r0, r1
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080A47C4 @ =gUnk_02022EC0
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080A47BA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A47C0: .4byte gUnk_02022F40
_080A47C4: .4byte gUnk_02022EC0

	thumb_func_start sub_080A47C8
sub_080A47C8: @ 0x080A47C8
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A47DE
	adds r0, r3, #0
	bl sub_080A4A7C
	b _080A4836
_080A47DE:
	movs r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #0x13
	bgt _080A4804
	ldr r1, _080A4800 @ =gUnk_08350BCC
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrb r2, [r0]
	adds r0, r3, #0
	adds r0, #0x54
	strb r2, [r0]
	movs r2, #4
	ldrsh r0, [r3, r2]
	lsls r0, r0, #1
	adds r1, #1
	adds r0, r0, r1
	b _080A4828
	.align 2, 0
_080A4800: .4byte gUnk_08350BCC
_080A4804:
	cmp r0, #0x21
	bgt _080A4830
	ldr r2, _080A483C @ =gUnk_08350BB0
	movs r1, #4
	ldrsh r0, [r3, r1]
	subs r0, #0x14
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x54
	strb r1, [r0]
	movs r1, #4
	ldrsh r0, [r3, r1]
	subs r0, #0x14
	lsls r0, r0, #1
	adds r2, #1
	adds r0, r0, r2
_080A4828:
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x55
	strb r0, [r1]
_080A4830:
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
_080A4836:
	pop {r0}
	bx r0
	.align 2, 0
_080A483C: .4byte gUnk_08350BB0

	thumb_func_start sub_080A4840
sub_080A4840: @ 0x080A4840
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
	cmp r0, #3
	bls _080A4884
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
_080A4884:
	ldr r3, [r4, #0x44]
	ldr r1, _080A48B4 @ =0xFFFFF000
	ands r3, r1
	adds r0, r4, #0
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r2, r0, #8
	ands r2, r1
	cmp r3, r2
	ble _080A48B8
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x38
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080A48FE
	strh r2, [r1]
	b _080A48FE
	.align 2, 0
_080A48B4: .4byte 0xFFFFF000
_080A48B8:
	cmp r3, r2
	bge _080A48D8
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x38
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080A48D4 @ =0xFFFFFE80
	cmp r0, r2
	bge _080A48FE
	strh r2, [r1]
	b _080A48FE
	.align 2, 0
_080A48D4: .4byte 0xFFFFFE80
_080A48D8:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080A48F2
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080A48FE
	b _080A48FC
_080A48F2:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080A48FE
_080A48FC:
	strh r6, [r1]
_080A48FE:
	ldr r3, [r4, #0x40]
	ldr r0, _080A4920 @ =0xFFFFF000
	ands r3, r0
	adds r1, r4, #0
	adds r1, #0xa0
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r2, r1, #8
	ands r2, r0
	cmp r3, r2
	bge _080A4924
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080A495C
	.align 2, 0
_080A4920: .4byte 0xFFFFF000
_080A4924:
	cmp r3, r2
	ble _080A4980
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080A495C
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x38
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080A4958 @ =0xFFFFFE80
	cmp r0, r2
	blt _080A4952
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080A49A8
_080A4952:
	strh r2, [r1]
	b _080A49A8
	.align 2, 0
_080A4958: .4byte 0xFFFFFE80
_080A495C:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x38
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080A4952
	ldr r2, _080A497C @ =0xFFFFFE80
	cmp r0, r2
	bge _080A49A8
	b _080A4952
	.align 2, 0
_080A497C: .4byte 0xFFFFFE80
_080A4980:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080A499A
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080A49A8
	b _080A49A4
_080A499A:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080A49A8
_080A49A4:
	movs r0, #0
	strh r0, [r1]
_080A49A8:
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x78
	bls _080A49CA
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_0809DA30
_080A49CA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080A49D0
sub_080A49D0: @ 0x080A49D0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A4A04 @ =sub_080A4728
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r2, #0
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #8]
	str r2, [r4, #0x68]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A4A04: .4byte sub_080A4728

	thumb_func_start sub_080A4A08
sub_080A4A08: @ 0x080A4A08
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0xac
	ldr r1, [r4, #0x6c]
	str r1, [r2]
	ldrb r0, [r1]
	cmp r0, #0
	beq _080A4A22
	ldr r0, [r1, #0x70]
	cmp r0, #0
	beq _080A4A22
	str r0, [r2]
_080A4A22:
	ldr r2, _080A4A44 @ =sub_080A47C8
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080A4A48
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080A4A50
	.align 2, 0
_080A4A44: .4byte sub_080A47C8
_080A4A48:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080A4A50:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, _080A4A78 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #0x68]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A4A78: .4byte 0xFFFF7FFF

	thumb_func_start sub_080A4A7C
sub_080A4A7C: @ 0x080A4A7C
	push {lr}
	ldr r2, _080A4A8C @ =sub_080A4840
	movs r1, #2
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080A4A8C: .4byte sub_080A4840
