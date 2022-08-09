	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080F4484
sub_080F4484: @ 0x080F4484
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	ldr r0, [r3, #0x40]
	asrs r7, r0, #8
	ldr r0, [r3, #0x44]
	asrs r0, r0, #8
	mov ip, r0
	movs r4, #0
	ldr r1, _080F44C0 @ =gUnk_020229D4
	movs r5, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r5
	ldr r6, _080F44C4 @ =gUnk_020229E0
	adds r3, #0x56
	mov r8, r3
	cmp r0, #0
	bne _080F44C8
	orrs r2, r5
	b _080F44E2
	.align 2, 0
_080F44C0: .4byte gUnk_020229D4
_080F44C4: .4byte gUnk_020229E0
_080F44C8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080F44E4
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	bne _080F44C8
	orrs r2, r3
_080F44E2:
	str r2, [r1]
_080F44E4:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	strh r7, [r1, #6]
	mov r0, ip
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0x4c
	strb r0, [r1, #0xc]
	strb r3, [r1, #0xe]
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
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start CreateTitanHead
CreateTitanHead: @ 0x080F453C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080F4570 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080F4574 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xc8
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080F4578
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080F4580
	.align 2, 0
_080F4570: .4byte ObjectMain
_080F4574: .4byte ObjectDestroy
_080F4578:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080F4580:
	adds r5, r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r5, #0xc]
	movs r3, #1
	orrs r0, r3
	str r0, [r5, #0xc]
	ldr r2, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	movs r0, #0x40
	orrs r2, r0
	subs r0, #0x61
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #1
	orrs r2, r0
	str r2, [r5, #8]
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080F45C2
	orrs r2, r3
	b _080F45C8
_080F45C2:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080F45C8:
	str r2, [r5, #8]
	ldr r0, [r5, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	ldr r1, _080F4628 @ =0x001080A0
	orrs r0, r1
	str r0, [r5, #0x5c]
	movs r4, #0xa
	rsbs r4, r4, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #0xa
	bl sub_0803E2B0
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0xa
	bl sub_0803E308
	adds r0, r5, #0
	bl ObjectInitSprite
	adds r1, r5, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	str r0, [r5, #0x7c]
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_080F462C
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080F4628: .4byte 0x001080A0

	thumb_func_start sub_080F462C
sub_080F462C: @ 0x080F462C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080F46B8 @ =sub_080F5778
	movs r1, #1
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x52
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x85
	strb r1, [r0]
	ldr r1, _080F46BC @ =gKirbys
	ldr r0, _080F46C0 @ =gUnk_0203AD3C
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
	bne _080F46B2
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F4676
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F46B2
_080F4676:
	ldr r1, _080F46C4 @ =gUnk_08D60FA4
	ldr r4, _080F46C8 @ =gSongTable
	ldr r2, _080F46CC @ =0x00000C6C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F469A
	ldr r1, _080F46D0 @ =0x00000C68
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F46B2
_080F469A:
	cmp r3, #0
	beq _080F46AC
	ldr r0, _080F46D4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F46B2
_080F46AC:
	ldr r0, _080F46D8 @ =0x0000018D
	bl m4aSongNumStart
_080F46B2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F46B8: .4byte sub_080F5778
_080F46BC: .4byte gKirbys
_080F46C0: .4byte gUnk_0203AD3C
_080F46C4: .4byte gUnk_08D60FA4
_080F46C8: .4byte gSongTable
_080F46CC: .4byte 0x00000C6C
_080F46D0: .4byte 0x00000C68
_080F46D4: .4byte gUnk_0203AD10
_080F46D8: .4byte 0x0000018D

	thumb_func_start sub_080F46DC
sub_080F46DC: @ 0x080F46DC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r2, _080F4708 @ =sub_080F4818
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080F470C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080F4714
	.align 2, 0
_080F4708: .4byte sub_080F4818
_080F470C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080F4714:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x85
	movs r5, #0
	strb r5, [r0]
	adds r0, r4, #0
	bl sub_08034E14
	cmp r0, #0
	beq _080F472A
	strb r5, [r0, #9]
_080F472A:
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r6, [r0]
	adds r3, r6, #0
	subs r3, #0x38
	ldr r2, _080F4800 @ =gCurLevelInfo
	subs r0, #0x2c
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080F4804 @ =0x0000065E
	adds r0, r0, r1
	ldrb r5, [r0]
	lsls r3, r3, #0x10
	asrs r1, r3, #0x10
	cmp r1, #0
	blt _080F47F8
	ldr r0, _080F4808 @ =gUnk_08352D80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080F47F8
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080F47F8
	adds r0, r6, #0
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r3, #0
	adds r7, r4, #0
	adds r7, #0x60
	cmp r0, #0xf
	bls _080F47B8
	movs r4, #1
_080F4780:
	subs r1, r4, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl sub_08002A2C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08002A44
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _080F4780
	adds r0, r5, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_08002A44
_080F47B8:
	ldr r1, _080F4808 @ =gUnk_08352D80
	asrs r0, r6, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_08002A1C
	ldr r2, _080F480C @ =gKirbys
	ldr r0, _080F4810 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	bne _080F47F8
	ldr r0, _080F4814 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080F47F8
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080F47F8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F4800: .4byte gCurLevelInfo
_080F4804: .4byte 0x0000065E
_080F4808: .4byte gUnk_08352D80
_080F480C: .4byte gKirbys
_080F4810: .4byte gUnk_0203AD3C
_080F4814: .4byte gUnk_0203AD20

	thumb_func_start sub_080F4818
sub_080F4818: @ 0x080F4818
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	adds r3, r2, #0
	adds r3, #0x52
	ldrh r0, [r3]
	subs r0, #0x40
	strh r0, [r3]
	lsls r0, r0, #0x10
	ldr r1, _080F485C @ =0xFE400000
	cmp r0, r1
	bge _080F483A
	ldr r0, _080F4860 @ =0x0000FE40
	strh r0, [r3]
_080F483A:
	ldr r1, [r2, #0x44]
	movs r0, #0xb0
	lsls r0, r0, #7
	cmp r1, r0
	ble _080F4856
	ldr r0, [r2, #8]
	ldr r1, _080F4864 @ =0xFFFFFDFF
	ands r0, r1
	ldr r1, _080F4868 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r2, #8]
	adds r0, r2, #0
	bl sub_080F486C
_080F4856:
	pop {r0}
	bx r0
	.align 2, 0
_080F485C: .4byte 0xFE400000
_080F4860: .4byte 0x0000FE40
_080F4864: .4byte 0xFFFFFDFF
_080F4868: .4byte 0xFFFFFEFF

	thumb_func_start sub_080F486C
sub_080F486C: @ 0x080F486C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r7, r4, #0
	adds r7, #0x9f
	ldrb r0, [r7]
	mov r8, r0
	adds r6, r4, #0
	adds r6, #0x9e
	ldrb r5, [r6]
	adds r0, r4, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _080F4896
	adds r0, r4, #0
	bl sub_080F521C
	b _080F491A
_080F4896:
	ldr r2, _080F48EC @ =sub_080F4924
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	movs r3, #0x40
	orrs r0, r3
	ldr r1, _080F48F0 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r4, #8]
	mov r0, r8
	strb r0, [r7]
	strb r5, [r6]
	cmp r5, #0
	bne _080F48C4
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #1
	strb r0, [r1]
_080F48C4:
	ldr r2, _080F48F4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080F48F8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080F48FC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _080F4906
	cmp r1, #1
	blo _080F4900
	cmp r1, #2
	beq _080F490C
	movs r0, #0x58
	strh r0, [r4, #4]
	b _080F490E
	.align 2, 0
_080F48EC: .4byte sub_080F4924
_080F48F0: .4byte 0xFFFFFDFF
_080F48F4: .4byte gRngVal
_080F48F8: .4byte 0x00196225
_080F48FC: .4byte 0x3C6EF35F
_080F4900:
	movs r0, #0x20
	strh r0, [r4, #4]
	b _080F490E
_080F4906:
	movs r0, #0x30
	strh r0, [r4, #4]
	b _080F490E
_080F490C:
	strh r3, [r4, #4]
_080F490E:
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
_080F491A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080F4924
sub_080F4924: @ 0x080F4924
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r1, [r4, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x9f
	ldrb r0, [r0]
	cmp r0, #1
	beq _080F4990
	cmp r0, #1
	bgt _080F4944
	cmp r0, #0
	beq _080F494A
	b _080F4A1C
_080F4944:
	cmp r0, #3
	beq _080F49D0
	b _080F4A1C
_080F494A:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080F4972
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	rsbs r2, r2, #0
	cmp r0, r2
	bge _080F496A
	b _080F4A70
_080F496A:
	cmp r0, #0xc0
	bgt _080F4970
	b _080F4A72
_080F4970:
	b _080F4984
_080F4972:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc0
	ble _080F498A
_080F4984:
	movs r0, #0xc0
	strh r0, [r1]
	b _080F4A72
_080F498A:
	movs r2, #0xc0
	rsbs r2, r2, #0
	b _080F4A6C
_080F4990:
	ands r1, r0
	cmp r1, #0
	beq _080F49B2
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	rsbs r2, r2, #0
	cmp r0, r2
	blt _080F4A70
	cmp r0, #0xe0
	ble _080F4A72
	b _080F49C4
_080F49B2:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe0
	ble _080F49CA
_080F49C4:
	movs r0, #0xe0
	strh r0, [r1]
	b _080F4A72
_080F49CA:
	movs r2, #0xe0
	rsbs r2, r2, #0
	b _080F4A6C
_080F49D0:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080F49FC
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F49F8 @ =0xFFFFFEE0
	cmp r0, r2
	blt _080F4A70
	movs r2, #0x90
	lsls r2, r2, #1
	cmp r0, r2
	ble _080F4A72
	b _080F4A70
	.align 2, 0
_080F49F8: .4byte 0xFFFFFEE0
_080F49FC:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x90
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080F4A70
	ldr r2, _080F4A18 @ =0xFFFFFEE0
	b _080F4A6C
	.align 2, 0
_080F4A18: .4byte 0xFFFFFEE0
_080F4A1C:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F4A54
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _080F4A44 @ =0xFFFFFF00
	cmp r2, r0
	bge _080F4A48
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	b _080F4A72
	.align 2, 0
_080F4A44: .4byte 0xFFFFFF00
_080F4A48:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	ble _080F4A72
	strh r0, [r1]
	b _080F4A72
_080F4A54:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080F4A70
	ldr r2, _080F4AB8 @ =0xFFFFFF00
_080F4A6C:
	cmp r0, r2
	bge _080F4A72
_080F4A70:
	strh r2, [r1]
_080F4A72:
	ldr r2, [r4, #0x40]
	ldr r0, _080F4ABC @ =0x00003BFF
	cmp r2, r0
	bgt _080F4A84
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_080F4A84:
	movs r0, #0xc8
	lsls r0, r0, #8
	cmp r2, r0
	ble _080F4A94
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080F4A94:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	beq _080F4AC4
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F4AC0 @ =0xFFFFFE40
	cmp r0, r2
	bge _080F4ADC
	b _080F4ADA
	.align 2, 0
_080F4AB8: .4byte 0xFFFFFF00
_080F4ABC: .4byte 0x00003BFF
_080F4AC0: .4byte 0xFFFFFE40
_080F4AC4:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x15
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080F4ADC
_080F4ADA:
	strh r2, [r1]
_080F4ADC:
	ldr r1, [r4, #0x44]
	ldr r0, _080F4B3C @ =0x00003BFF
	cmp r1, r0
	bgt _080F4AFE
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r1, [r2]
	cmp r1, #1
	bne _080F4AFE
	movs r0, #0
	strb r1, [r7]
	strb r0, [r2]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_080F4AFE:
	ldr r1, [r4, #0x44]
	movs r0, #0xf0
	lsls r0, r0, #7
	cmp r1, r0
	bgt _080F4B0A
	b _080F4C66
_080F4B0A:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	beq _080F4B18
	b _080F4C66
_080F4B18:
	adds r0, #4
	ldrb r5, [r0]
	cmp r5, #0
	beq _080F4B4C
	ldr r2, _080F4B40 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080F4B44 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080F4B48 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x9f
	strb r0, [r1]
	b _080F4BBE
	.align 2, 0
_080F4B3C: .4byte 0x00003BFF
_080F4B40: .4byte gRngVal
_080F4B44: .4byte 0x00196225
_080F4B48: .4byte 0x3C6EF35F
_080F4B4C:
	ldr r1, _080F4B7C @ =gRngVal
	ldr r2, [r1]
	ldr r0, _080F4B80 @ =0x00196225
	muls r0, r2, r0
	ldr r2, _080F4B84 @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r1]
	lsrs r3, r0, #0x10
	ldr r0, _080F4B88 @ =0x00005554
	adds r2, r1, #0
	cmp r3, r0
	bls _080F4B90
	ldr r0, _080F4B8C @ =0x0000AAA9
	movs r1, #2
	cmp r3, r0
	bhi _080F4B6E
	movs r1, #1
_080F4B6E:
	cmp r1, #0
	beq _080F4B90
	adds r0, r4, #0
	adds r0, #0x9f
	strb r5, [r0]
	b _080F4BBE
	.align 2, 0
_080F4B7C: .4byte gRngVal
_080F4B80: .4byte 0x00196225
_080F4B84: .4byte 0x3C6EF35F
_080F4B88: .4byte 0x00005554
_080F4B8C: .4byte 0x0000AAA9
_080F4B90:
	ldr r1, [r2]
	ldr r0, _080F4BB0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080F4BB4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F4BB8
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	b _080F4BBE
	.align 2, 0
_080F4BB0: .4byte 0x00196225
_080F4BB4: .4byte 0x3C6EF35F
_080F4BB8:
	adds r0, r4, #0
	adds r0, #0x9f
	strb r1, [r0]
_080F4BBE:
	ldr r1, [r2]
	ldr r0, _080F4C80 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080F4C84 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080F4C88 @ =0x00005554
	cmp r2, r0
	bls _080F4BE0
	ldr r0, _080F4C8C @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080F4BDC
	movs r1, #1
_080F4BDC:
	cmp r1, #0
	bne _080F4BE8
_080F4BE0:
	ldr r0, [r4, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
_080F4BE8:
	movs r0, #0
	strb r0, [r7]
	movs r0, #1
	strb r0, [r6]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _080F4C90 @ =gKirbys
	ldr r0, _080F4C94 @ =gUnk_0203AD3C
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
	bne _080F4C66
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F4C26
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F4C66
_080F4C26:
	ldr r1, _080F4C98 @ =gUnk_08D60FA4
	ldr r5, _080F4C9C @ =gSongTable
	ldr r2, _080F4CA0 @ =0x00000C64
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F4C4C
	movs r1, #0xc6
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F4C66
_080F4C4C:
	cmp r3, #0
	beq _080F4C5E
	ldr r0, _080F4CA4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F4C66
_080F4C5E:
	movs r0, #0xc6
	lsls r0, r0, #1
	bl m4aSongNumStart
_080F4C66:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080F4C78
	adds r0, r4, #0
	bl sub_080F4CA8
_080F4C78:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F4C80: .4byte 0x00196225
_080F4C84: .4byte 0x3C6EF35F
_080F4C88: .4byte 0x00005554
_080F4C8C: .4byte 0x0000AAA9
_080F4C90: .4byte gKirbys
_080F4C94: .4byte gUnk_0203AD3C
_080F4C98: .4byte gUnk_08D60FA4
_080F4C9C: .4byte gSongTable
_080F4CA0: .4byte 0x00000C64
_080F4CA4: .4byte gUnk_0203AD10

	thumb_func_start sub_080F4CA8
sub_080F4CA8: @ 0x080F4CA8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r7, r4, #0
	adds r7, #0x9f
	ldrb r0, [r7]
	mov r8, r0
	adds r6, r4, #0
	adds r6, #0x9e
	ldrb r0, [r6]
	adds r5, r0, #0
	cmp r5, #0
	bne _080F4CCC
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #1
	strb r0, [r1]
_080F4CCC:
	ldr r2, _080F4D20 @ =sub_080F4DC4
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	ldr r1, _080F4D24 @ =0xFFFFFDFF
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	mov r1, r8
	strb r1, [r7]
	strb r5, [r6]
	movs r0, #0x14
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r5, #1
	ands r0, r5
	adds r1, r4, #0
	adds r1, #0x85
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080F4D28
	ldr r0, [r4, #8]
	orrs r0, r5
	b _080F4D30
	.align 2, 0
_080F4D20: .4byte sub_080F4DC4
_080F4D24: .4byte 0xFFFFFDFF
_080F4D28:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080F4D30:
	str r0, [r4, #8]
	ldr r1, _080F4DA4 @ =gKirbys
	ldr r0, _080F4DA8 @ =gUnk_0203AD3C
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
	bne _080F4D9A
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F4D5E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F4D9A
_080F4D5E:
	ldr r1, _080F4DAC @ =gUnk_08D60FA4
	ldr r4, _080F4DB0 @ =gSongTable
	ldr r2, _080F4DB4 @ =0x00000B3C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F4D82
	ldr r1, _080F4DB8 @ =0x00000B38
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F4D9A
_080F4D82:
	cmp r3, #0
	beq _080F4D94
	ldr r0, _080F4DBC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F4D9A
_080F4D94:
	ldr r0, _080F4DC0 @ =0x00000167
	bl m4aSongNumStart
_080F4D9A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F4DA4: .4byte gKirbys
_080F4DA8: .4byte gUnk_0203AD3C
_080F4DAC: .4byte gUnk_08D60FA4
_080F4DB0: .4byte gSongTable
_080F4DB4: .4byte 0x00000B3C
_080F4DB8: .4byte 0x00000B38
_080F4DBC: .4byte gUnk_0203AD10
_080F4DC0: .4byte 0x00000167

	thumb_func_start sub_080F4DC4
sub_080F4DC4: @ 0x080F4DC4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, [r4, #8]
	movs r2, #1
	adds r3, r1, #0
	ands r3, r2
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r1, [r1]
	orrs r1, r0
	str r1, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x9f
	ldrb r0, [r0]
	cmp r0, #1
	beq _080F4E40
	cmp r0, #1
	bgt _080F4DF6
	cmp r0, #0
	beq _080F4DFC
	b _080F4EC8
_080F4DF6:
	cmp r0, #3
	beq _080F4E80
	b _080F4EC8
_080F4DFC:
	ands r1, r2
	cmp r1, #0
	beq _080F4E22
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	rsbs r2, r2, #0
	cmp r0, r2
	bge _080F4E1A
	b _080F4F1C
_080F4E1A:
	cmp r0, #0xc0
	bgt _080F4E20
	b _080F4F1E
_080F4E20:
	b _080F4E34
_080F4E22:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc0
	ble _080F4E3A
_080F4E34:
	movs r0, #0xc0
	strh r0, [r1]
	b _080F4F1E
_080F4E3A:
	movs r2, #0xc0
	rsbs r2, r2, #0
	b _080F4F18
_080F4E40:
	ands r1, r2
	cmp r1, #0
	beq _080F4E62
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	rsbs r2, r2, #0
	cmp r0, r2
	blt _080F4F1C
	cmp r0, #0xe0
	ble _080F4F1E
	b _080F4E74
_080F4E62:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe0
	ble _080F4E7A
_080F4E74:
	movs r0, #0xe0
	strh r0, [r1]
	b _080F4F1E
_080F4E7A:
	movs r2, #0xe0
	rsbs r2, r2, #0
	b _080F4F18
_080F4E80:
	ands r1, r2
	cmp r1, #0
	beq _080F4EA8
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F4EA4 @ =0xFFFFFEE0
	cmp r0, r2
	blt _080F4F1C
	movs r2, #0x90
	lsls r2, r2, #1
	cmp r0, r2
	ble _080F4F1E
	b _080F4F1C
	.align 2, 0
_080F4EA4: .4byte 0xFFFFFEE0
_080F4EA8:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x90
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080F4F1C
	ldr r2, _080F4EC4 @ =0xFFFFFEE0
	b _080F4F18
	.align 2, 0
_080F4EC4: .4byte 0xFFFFFEE0
_080F4EC8:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F4F00
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _080F4EF0 @ =0xFFFFFF00
	cmp r2, r0
	bge _080F4EF4
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	b _080F4F1E
	.align 2, 0
_080F4EF0: .4byte 0xFFFFFF00
_080F4EF4:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	ble _080F4F1E
	strh r0, [r1]
	b _080F4F1E
_080F4F00:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080F4F1C
	ldr r2, _080F4F78 @ =0xFFFFFF00
_080F4F18:
	cmp r0, r2
	bge _080F4F1E
_080F4F1C:
	strh r2, [r1]
_080F4F1E:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	orrs r0, r3
	str r0, [r4, #8]
	ldr r1, [r4, #0x40]
	ldr r0, _080F4F7C @ =0x00003BFF
	cmp r1, r0
	bgt _080F4F3E
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
_080F4F3E:
	ldr r1, [r4, #0x40]
	movs r0, #0xc8
	lsls r0, r0, #8
	cmp r1, r0
	ble _080F4F54
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
_080F4F54:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	beq _080F4F84
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F4F80 @ =0xFFFFFE40
	cmp r0, r2
	bge _080F4F9C
	b _080F4F9A
	.align 2, 0
_080F4F78: .4byte 0xFFFFFF00
_080F4F7C: .4byte 0x00003BFF
_080F4F80: .4byte 0xFFFFFE40
_080F4F84:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x15
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080F4F9C
_080F4F9A:
	strh r2, [r1]
_080F4F9C:
	ldr r1, [r4, #0x44]
	ldr r0, _080F5008 @ =0x00003BFF
	cmp r1, r0
	bgt _080F4FAE
	ldrb r0, [r5]
	cmp r0, #0
	bne _080F4FAE
	movs r0, #1
	strb r0, [r5]
_080F4FAE:
	ldr r1, [r4, #0x44]
	movs r0, #0xf0
	lsls r0, r0, #7
	cmp r1, r0
	bgt _080F4FBA
	b _080F50C4
_080F4FBA:
	ldrb r0, [r5]
	cmp r0, #0
	bne _080F4FC2
	b _080F50C4
_080F4FC2:
	ldr r1, _080F500C @ =gRngVal
	ldr r2, [r1]
	ldr r0, _080F5010 @ =0x00196225
	muls r0, r2, r0
	ldr r2, _080F5014 @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r1]
	lsrs r2, r0, #0x10
	ldr r0, _080F5018 @ =0x00005554
	adds r3, r1, #0
	cmp r2, r0
	bls _080F4FE8
	ldr r0, _080F501C @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080F4FE4
	movs r1, #1
_080F4FE4:
	cmp r1, #0
	bne _080F4FFE
_080F4FE8:
	ldr r1, [r3]
	ldr r0, _080F5010 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080F5014 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F5020
_080F4FFE:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	b _080F5026
	.align 2, 0
_080F5008: .4byte 0x00003BFF
_080F500C: .4byte gRngVal
_080F5010: .4byte 0x00196225
_080F5014: .4byte 0x3C6EF35F
_080F5018: .4byte 0x00005554
_080F501C: .4byte 0x0000AAA9
_080F5020:
	adds r0, r4, #0
	adds r0, #0x9f
	strb r1, [r0]
_080F5026:
	ldr r1, [r3]
	ldr r0, _080F50DC @ =0x00196225
	muls r0, r1, r0
	ldr r2, _080F50E0 @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r3]
	lsrs r2, r0, #0x10
	ldr r0, _080F50E4 @ =0x00005554
	cmp r2, r0
	bls _080F5048
	ldr r0, _080F50E8 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080F5044
	movs r1, #1
_080F5044:
	cmp r1, #0
	bne _080F5054
_080F5048:
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
_080F5054:
	movs r0, #0
	strb r0, [r5]
	ldr r1, _080F50EC @ =gKirbys
	ldr r0, _080F50F0 @ =gUnk_0203AD3C
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
	bne _080F50C4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F5084
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F50C4
_080F5084:
	ldr r1, _080F50F4 @ =gUnk_08D60FA4
	ldr r5, _080F50F8 @ =gSongTable
	ldr r2, _080F50FC @ =0x00000C64
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F50AA
	movs r1, #0xc6
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F50C4
_080F50AA:
	cmp r3, #0
	beq _080F50BC
	ldr r0, _080F5100 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F50C4
_080F50BC:
	movs r0, #0xc6
	lsls r0, r0, #1
	bl m4aSongNumStart
_080F50C4:
	adds r5, r4, #0
	adds r5, #0x83
	ldrb r0, [r5]
	adds r6, r5, #0
	cmp r0, #3
	beq _080F51B0
	cmp r0, #3
	bgt _080F5104
	cmp r0, #2
	beq _080F510C
	b _080F5214
	.align 2, 0
_080F50DC: .4byte 0x00196225
_080F50E0: .4byte 0x3C6EF35F
_080F50E4: .4byte 0x00005554
_080F50E8: .4byte 0x0000AAA9
_080F50EC: .4byte gKirbys
_080F50F0: .4byte gUnk_0203AD3C
_080F50F4: .4byte gUnk_08D60FA4
_080F50F8: .4byte gSongTable
_080F50FC: .4byte 0x00000C64
_080F5100: .4byte gUnk_0203AD10
_080F5104:
	cmp r0, #4
	bne _080F510A
	b _080F5204
_080F510A:
	b _080F5214
_080F510C:
	ldrb r0, [r4, #1]
	cmp r0, #0x20
	bne _080F517E
	ldr r1, _080F5198 @ =gKirbys
	ldr r0, _080F519C @ =gUnk_0203AD3C
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
	bne _080F517E
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F513E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F517E
_080F513E:
	ldr r1, _080F51A0 @ =gUnk_08D60FA4
	ldr r5, _080F51A4 @ =gSongTable
	ldr r2, _080F51A8 @ =0x00000B44
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F5164
	movs r1, #0xb4
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F517E
_080F5164:
	cmp r3, #0
	beq _080F5176
	ldr r0, _080F51AC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F517E
_080F5176:
	movs r0, #0xb4
	lsls r0, r0, #1
	bl m4aSongNumStart
_080F517E:
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080F5214
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	movs r0, #3
	strb r0, [r6]
	b _080F5214
	.align 2, 0
_080F5198: .4byte gKirbys
_080F519C: .4byte gUnk_0203AD3C
_080F51A0: .4byte gUnk_08D60FA4
_080F51A4: .4byte gSongTable
_080F51A8: .4byte 0x00000B44
_080F51AC: .4byte gUnk_0203AD10
_080F51B0:
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0xa
	bne _080F51C6
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #0x10]
	adds r0, r4, #0
	bl sub_080F53A0
_080F51C6:
	ldrh r0, [r4, #4]
	subs r0, #0xa
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bhi _080F51E4
	ldr r1, _080F5200 @ =gUnk_08357038
	movs r2, #4
	ldrsh r0, [r4, r2]
	subs r0, #0xa
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x54
	strb r1, [r0]
_080F51E4:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080F5214
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #4
	strb r0, [r5]
	b _080F5214
	.align 2, 0
_080F5200: .4byte gUnk_08357038
_080F5204:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080F5214
	adds r0, r4, #0
	bl sub_080F486C
_080F5214:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080F521C
sub_080F521C: @ 0x080F521C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080F527C @ =sub_080F5284
	movs r1, #5
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	subs r1, #2
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0xa0
	ble _080F523E
	movs r0, #0xa0
	strh r0, [r1]
_080F523E:
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r2, #0xa0
	rsbs r2, r2, #0
	cmp r0, r2
	bge _080F524C
	strh r2, [r1]
_080F524C:
	ldr r0, [r4, #8]
	movs r1, #0x20
	orrs r0, r1
	adds r1, #0xe0
	orrs r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	ldr r1, _080F5280 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	subs r1, #1
	movs r0, #0xc
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F527C: .4byte sub_080F5284
_080F5280: .4byte 0xFFFFF7FF

	thumb_func_start sub_080F5284
sub_080F5284: @ 0x080F5284
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldrh r0, [r6, #4]
	adds r2, r0, #1
	strh r2, [r6, #4]
	movs r1, #7
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080F5316
	ldr r7, _080F5368 @ =gRngVal
	ldr r0, [r7]
	ldr r1, _080F536C @ =0x00196225
	mov sb, r1
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r1, _080F5370 @ =0x3C6EF35F
	mov r8, r1
	add r0, r8
	str r0, [r7]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F52CA
	adds r0, r2, #1
	strh r0, [r6, #4]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080F5316
_080F52CA:
	ldr r2, _080F5374 @ =0x00000292
	ldr r0, [r7]
	mov r3, sb
	muls r3, r0, r3
	add r3, r8
	str r3, [r7]
	lsrs r3, r3, #0x10
	movs r0, #3
	ands r3, r0
	adds r0, r6, #0
	movs r1, #0
	bl sub_0808AE30
	ldr r1, [r7]
	mov r3, sb
	muls r3, r1, r3
	add r3, r8
	str r3, [r7]
	lsrs r2, r3, #0x10
	movs r5, #0x1f
	ands r2, r5
	movs r4, #0x10
	subs r2, r4, r2
	lsls r2, r2, #8
	ldr r1, [r0, #0x34]
	adds r1, r1, r2
	str r1, [r0, #0x34]
	mov r1, sb
	muls r1, r3, r1
	add r1, r8
	str r1, [r7]
	lsrs r1, r1, #0x10
	ands r1, r5
	subs r4, r4, r1
	lsls r4, r4, #8
	ldr r1, [r0, #0x38]
	adds r1, r1, r4
	str r1, [r0, #0x38]
_080F5316:
	adds r1, r6, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r1, #0xff
	ands r0, r1
	movs r1, #0x1f
	ands r0, r1
	adds r3, r6, #0
	adds r3, #0x9f
	cmp r0, #0
	bne _080F5334
	movs r0, #0x10
	strb r0, [r3]
_080F5334:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080F5378
	ldr r0, [r6, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #8]
	adds r1, r6, #0
	adds r1, #0x83
	movs r0, #1
	strb r0, [r1]
	subs r1, #0x31
	ldrh r0, [r1]
	adds r0, #0x25
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080F5360
	strh r2, [r1]
_080F5360:
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
	b _080F5380
	.align 2, 0
_080F5368: .4byte gRngVal
_080F536C: .4byte 0x00196225
_080F5370: .4byte 0x3C6EF35F
_080F5374: .4byte 0x00000292
_080F5378:
	adds r1, r6, #0
	adds r1, #0x83
	movs r0, #5
	strb r0, [r1]
_080F5380:
	ldr r1, [r6, #0x44]
	movs r0, #0x80
	lsls r0, r0, #9
	cmp r1, r0
	ble _080F5394
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r6, #8]
_080F5394:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080F53A0
sub_080F53A0: @ 0x080F53A0
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
	beq _080F53C4
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	subs r0, #0x10
	b _080F53CA
_080F53C4:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r0, #0x10
_080F53CA:
	mov sl, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	subs r0, #6
	mov ip, r0
	movs r4, #0
	ldr r1, _080F53EC @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080F53F0 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080F5408
	.align 2, 0
_080F53EC: .4byte gUnk_020229D4
_080F53F0: .4byte gUnk_020229E0
_080F53F4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080F5410
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080F5408:
	cmp r0, #0
	bne _080F53F4
	orrs r2, r3
	str r2, [r1]
_080F5410:
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
	movs r0, #0xc0
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

	thumb_func_start CreateTitanHeadMissile
CreateTitanHeadMissile: @ 0x080F5474
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080F54A8 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080F54AC @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080F54B0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080F54B8
	.align 2, 0
_080F54A8: .4byte ObjectMain
_080F54AC: .4byte ObjectDestroy
_080F54B0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080F54B8:
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
	ldr r0, _080F5584 @ =sub_0809F840
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
	bl ObjectInitSprite
	adds r0, r5, #0
	bl sub_080F55A8
	ldr r1, _080F5588 @ =gKirbys
	ldr r0, _080F558C @ =gUnk_0203AD3C
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
	bne _080F557A
	ldrb r0, [r5]
	cmp r0, #0
	bne _080F553E
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F557A
_080F553E:
	ldr r1, _080F5590 @ =gUnk_08D60FA4
	ldr r4, _080F5594 @ =gSongTable
	ldr r2, _080F5598 @ =0x00000C6C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F5562
	ldr r1, _080F559C @ =0x00000C68
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F557A
_080F5562:
	cmp r3, #0
	beq _080F5574
	ldr r0, _080F55A0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F557A
_080F5574:
	ldr r0, _080F55A4 @ =0x0000018D
	bl m4aSongNumStart
_080F557A:
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080F5584: .4byte sub_0809F840
_080F5588: .4byte gKirbys
_080F558C: .4byte gUnk_0203AD3C
_080F5590: .4byte gUnk_08D60FA4
_080F5594: .4byte gSongTable
_080F5598: .4byte 0x00000C6C
_080F559C: .4byte 0x00000C68
_080F55A0: .4byte gUnk_0203AD10
_080F55A4: .4byte 0x0000018D

	thumb_func_start sub_080F55A8
sub_080F55A8: @ 0x080F55A8
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r2, _080F55DC @ =sub_080F57B4
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080F55CA
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080F55CA:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080F55E0
	cmp r0, #1
	beq _080F55EA
	b _080F55F4
	.align 2, 0
_080F55DC: .4byte sub_080F57B4
_080F55E0:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xe0
	lsls r0, r0, #1
	b _080F55F2
_080F55EA:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #2
_080F55F2:
	strh r0, [r1]
_080F55F4:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F5608
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080F5608:
	ldr r2, _080F5634 @ =0x000002A1
	ldr r0, _080F5638 @ =sub_08072B98
	str r0, [sp]
	ldr r0, _080F563C @ =sub_08084AA0
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #1
	bl sub_080706A0
	movs r2, #0xad
	lsls r2, r2, #2
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F5634: .4byte 0x000002A1
_080F5638: .4byte sub_08072B98
_080F563C: .4byte sub_08084AA0

	thumb_func_start sub_080F5640
sub_080F5640: @ 0x080F5640
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080F5668 @ =sub_080EDAD0
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
_080F5668: .4byte sub_080EDAD0

	thumb_func_start sub_080F566C
sub_080F566C: @ 0x080F566C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x9f
	ldrb r5, [r6]
	ldr r2, _080F569C @ =sub_080EE76C
	movs r1, #5
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x20
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	ldr r1, _080F56A0 @ =0xFFFF7FFF
	ands r0, r1
	ldr r1, _080F56A4 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r4, #8]
	strb r5, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080F569C: .4byte sub_080EE76C
_080F56A0: .4byte 0xFFFF7FFF
_080F56A4: .4byte 0xFEFFFFFF

	thumb_func_start sub_080F56A8
sub_080F56A8: @ 0x080F56A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080F56E4 @ =sub_080F56E8
	movs r1, #8
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #3
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F56E4: .4byte sub_080F56E8

	thumb_func_start sub_080F56E8
sub_080F56E8: @ 0x080F56E8
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	movs r2, #0
	ldr r0, _080F572C @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r2, r0
	bhs _080F573E
	adds r5, r3, #0
	adds r5, #0x60
	adds r4, r0, #0
	ldr r6, _080F5730 @ =gKirbys
_080F56FE:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r1, r0, r6
	adds r0, r1, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r5]
	cmp r0, r7
	bne _080F5734
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	beq _080F573E
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r3, #8]
	b _080F573E
	.align 2, 0
_080F572C: .4byte gUnk_0203AD44
_080F5730: .4byte gKirbys
_080F5734:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r4
	blo _080F56FE
_080F573E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080F5744
sub_080F5744: @ 0x080F5744
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x70]
	ldr r0, [r0, #8]
	movs r3, #0x80
	lsls r3, r3, #5
	ands r0, r3
	cmp r0, #0
	beq _080F5774
	ldr r1, [r2, #0xc]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	cmp r1, #0
	bne _080F5774
	adds r0, r2, #0
	adds r0, #0x80
	strh r1, [r0]
	ldr r0, [r2, #8]
	orrs r0, r3
	str r0, [r2, #8]
	adds r0, r2, #0
	bl sub_0809DA30
_080F5774:
	pop {r0}
	bx r0

	thumb_func_start sub_080F5778
sub_080F5778: @ 0x080F5778
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #0x44]
	ldr r3, _080F57B0 @ =0xFFFFF000
	cmp r0, r3
	bgt _080F57AA
	adds r1, r2, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x60
	ble _080F57AA
	str r3, [r2, #0x44]
	adds r0, r2, #0
	bl sub_080F46DC
_080F57AA:
	pop {r0}
	bx r0
	.align 2, 0
_080F57B0: .4byte 0xFFFFF000

	thumb_func_start sub_080F57B4
sub_080F57B4: @ 0x080F57B4
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r2, #8]
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	beq _080F57D8
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r2, #8]
	adds r0, r2, #0
	bl sub_0809DA30
_080F57D8:
	pop {r0}
	bx r0
