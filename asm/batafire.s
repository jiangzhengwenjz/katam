	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateBatafire
CreateBatafire: @ 0x080C92B8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080C92EC @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080C92F0 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C92F4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080C92FC
	.align 2, 0
_080C92EC: .4byte ObjectMain
_080C92F0: .4byte ObjectDestroy
_080C92F4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080C92FC:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r0, r2
	str r0, [r4, #8]
	ldr r0, [r4, #0x5c]
	subs r1, #0x48
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	movs r1, #0xa0
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0x68]
	orrs r0, r2
	str r0, [r4, #0x68]
	subs r1, #0xb6
	movs r2, #0xe
	rsbs r2, r2, #0
	movs r0, #0x10
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xe
	bl sub_0803E2B0
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #0xa
	rsbs r2, r2, #0
	movs r0, #0x14
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	movs r1, #0
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r1, [r0]
	ldr r0, _080C9398 @ =sub_080CB3DC
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	bl sub_080CB4F4
	adds r0, r4, #0
	bl sub_080CAF60
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080C9398: .4byte sub_080CB3DC

	thumb_func_start sub_080C939C
sub_080C939C: @ 0x080C939C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	ldr r0, [r6, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_0803D368
	adds r1, r6, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r6, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C93CC
	ldr r0, [r6, #8]
	movs r1, #1
	orrs r0, r1
	b _080C93D4
_080C93CC:
	ldr r0, [r6, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C93D4:
	str r0, [r6, #8]
	movs r0, #0xac
	adds r0, r0, r6
	mov r8, r0
	ldr r7, [r0]
	ldr r0, [r7, #0xc]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080C93EC
	b _080C95A4
_080C93EC:
	adds r0, r6, #0
	adds r0, #0x60
	adds r2, r7, #0
	adds r2, #0x60
	ldrh r1, [r0]
	mov sb, r0
	ldrh r2, [r2]
	cmp r1, r2
	beq _080C9400
	b _080C95A4
_080C9400:
	ldr r1, [r6, #0x40]
	ldr r2, [r6, #0x44]
	adds r5, r6, #0
	adds r5, #0xb0
	ldr r4, [r5]
	movs r0, #0x1a
	ldrsh r3, [r4, r0]
	mov ip, r3
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	str r0, [sp]
	ldrh r0, [r4, #0x1e]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #8]
	adds r0, r7, #0
	mov r3, ip
	bl sub_08039430
	lsls r0, r0, #0x18
	adds r7, r5, #0
	cmp r0, #0
	bne _080C9430
	b _080C95A4
_080C9430:
	ldr r3, _080C94B4 @ =gCurLevelInfo
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x56
	ldrb r0, [r0]
	movs r2, #0xcd
	lsls r2, r2, #3
	muls r0, r2, r0
	adds r1, r3, #0
	adds r1, #0xa0
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0xa4
	strh r0, [r1]
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r2, r0
	adds r1, r3, #0
	adds r1, #0xa4
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0xa6
	strh r0, [r1]
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r2, r0
	adds r1, r3, #0
	adds r1, #0xa8
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0xa8
	strh r0, [r1]
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r2, r0
	adds r1, r3, #0
	adds r1, #0xac
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r6, #0
	adds r2, #0xaa
	strh r0, [r2]
	mov r2, r8
	ldr r0, [r2]
	ldr r1, [r0, #0x40]
	ldr r0, [r6, #0x40]
	cmp r1, r0
	ble _080C94B8
	adds r1, r6, #0
	adds r1, #0x9e
	movs r0, #1
	b _080C94BE
	.align 2, 0
_080C94B4: .4byte gCurLevelInfo
_080C94B8:
	adds r1, r6, #0
	adds r1, #0x9e
	movs r0, #0
_080C94BE:
	strb r0, [r1]
	ldr r0, [r6, #8]
	ldr r1, _080C95B4 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_08034E14
	adds r1, r0, #0
	cmp r1, #0
	beq _080C94D8
	movs r0, #0
	strb r0, [r1, #9]
_080C94D8:
	adds r0, r6, #0
	adds r0, #0x82
	ldrb r4, [r0]
	adds r3, r4, #0
	subs r3, #0x38
	ldr r2, _080C95B8 @ =gCurLevelInfo
	subs r0, #0x2c
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080C95BC @ =0x0000065E
	adds r0, r0, r1
	ldrb r5, [r0]
	lsls r3, r3, #0x10
	asrs r1, r3, #0x10
	cmp r1, #0
	blt _080C95A0
	ldr r0, _080C95C0 @ =gUnk_08352D80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080C95A0
	ldr r0, [r7]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080C95A0
	adds r0, r4, #0
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r7, r3, #0
	cmp r0, #0xf
	bls _080C955E
	movs r4, #1
_080C9526:
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
	bls _080C9526
	adds r0, r5, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_08002A44
_080C955E:
	ldr r1, _080C95C0 @ =gUnk_08352D80
	asrs r0, r7, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_08002A1C
	ldr r2, _080C95C4 @ =gUnk_02020EE0
	ldr r0, _080C95C8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r2, sb
	ldrh r2, [r2]
	cmp r0, r2
	bne _080C95A0
	ldr r0, _080C95CC @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080C95A0
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080C95A0:
	ldr r0, _080C95D0 @ =sub_080CB518
	str r0, [r6, #0x78]
_080C95A4:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C95B4: .4byte 0xFFFFFDFF
_080C95B8: .4byte gCurLevelInfo
_080C95BC: .4byte 0x0000065E
_080C95C0: .4byte gUnk_08352D80
_080C95C4: .4byte gUnk_02020EE0
_080C95C8: .4byte gUnk_0203AD3C
_080C95CC: .4byte gUnk_0203AD20
_080C95D0: .4byte sub_080CB518

	thumb_func_start sub_080C95D4
sub_080C95D4: @ 0x080C95D4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _080C95F8 @ =sub_080C96EC
	movs r1, #0
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080C9600
	ldr r0, _080C95FC @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x40]
	b _080C9606
	.align 2, 0
_080C95F8: .4byte sub_080C96EC
_080C95FC: .4byte 0xFFFFFF00
_080C9600:
	ldr r0, _080C9620 @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x40]
_080C9606:
	ldr r1, [r4, #0x44]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080C9624
	ldr r0, _080C9620 @ =0xFFFFFF00
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r1, r3
	str r0, [r4, #0x44]
	b _080C962A
	.align 2, 0
_080C9620: .4byte 0xFFFFFF00
_080C9624:
	ldr r0, _080C965C @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x44]
_080C962A:
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r2, [r0]
	ldr r2, [r4, #8]
	movs r0, #3
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C9660
	movs r0, #1
	orrs r2, r0
	b _080C9666
	.align 2, 0
_080C965C: .4byte 0xFFFFFF00
_080C9660:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080C9666:
	str r2, [r4, #8]
	ldr r1, _080C96C4 @ =gRngVal
	ldr r2, [r1]
	ldr r0, _080C96C8 @ =0x00196225
	muls r0, r2, r0
	ldr r2, _080C96CC @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r1]
	lsrs r3, r0, #0x10
	ldr r0, _080C96D0 @ =0x00005554
	cmp r3, r0
	bls _080C968C
	ldr r0, _080C96D4 @ =0x0000AAA9
	movs r2, #2
	cmp r3, r0
	bhi _080C9688
	movs r2, #1
_080C9688:
	cmp r2, #0
	bne _080C96E6
_080C968C:
	ldr r0, [r1]
	ldr r5, _080C96C8 @ =0x00196225
	muls r0, r5, r0
	ldr r3, _080C96CC @ =0x3C6EF35F
	adds r2, r0, r3
	str r2, [r1]
	lsrs r0, r2, #0x10
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _080C96E0
	ldr r0, [r4, #8]
	orrs r0, r3
	str r0, [r4, #8]
	adds r0, r2, #0
	muls r0, r5, r0
	ldr r2, _080C96CC @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r1]
	lsrs r0, r0, #0x10
	ands r0, r3
	cmp r0, #0
	beq _080C96D8
	adds r0, r4, #0
	bl sub_080C9D1C
	b _080C96E6
	.align 2, 0
_080C96C4: .4byte gRngVal
_080C96C8: .4byte 0x00196225
_080C96CC: .4byte 0x3C6EF35F
_080C96D0: .4byte 0x00005554
_080C96D4: .4byte 0x0000AAA9
_080C96D8:
	adds r0, r4, #0
	bl sub_080CB628
	b _080C96E6
_080C96E0:
	adds r0, r4, #0
	bl sub_080CB550
_080C96E6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080C96EC
sub_080C96EC: @ 0x080C96EC
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r2, [r3, #8]
	movs r0, #4
	orrs r2, r0
	str r2, [r3, #8]
	adds r0, r3, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r3, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C970C
	movs r0, #1
	orrs r2, r0
	b _080C9712
_080C970C:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080C9712:
	str r2, [r3, #8]
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	ldr r0, [r3, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C97EA
	movs r0, #0
	strh r0, [r3, #4]
	adds r1, r3, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r4, r0, #1
	strb r4, [r1]
	ldr r2, _080C97C0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C97C4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C97C8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	bne _080C977E
	adds r0, r3, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C977E
	adds r2, r3, #0
	adds r2, #0x80
	ldr r1, _080C97CC @ =gUnk_08351530
	ldr r0, _080C97D0 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x18
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r6, #0
	ldrsh r1, [r2, r6]
	asrs r0, r0, #0x11
	cmp r1, r0
	ble _080C977E
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080C97EA
_080C977E:
	adds r0, r3, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #3
	bhi _080C97D4
	ldr r0, [r5]
	ldr r4, _080C97C4 @ =0x00196225
	muls r0, r4, r0
	ldr r2, _080C97C8 @ =0x3C6EF35F
	adds r1, r0, r2
	str r1, [r5]
	lsrs r0, r1, #0x10
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _080C97E4
	ldr r0, [r3, #8]
	orrs r0, r2
	str r0, [r3, #8]
	adds r0, r1, #0
	muls r0, r4, r0
	ldr r6, _080C97C8 @ =0x3C6EF35F
	adds r0, r0, r6
	str r0, [r5]
	lsrs r0, r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _080C97DC
	adds r0, r3, #0
	bl sub_080C9D1C
	b _080C97EA
	.align 2, 0
_080C97C0: .4byte gRngVal
_080C97C4: .4byte 0x00196225
_080C97C8: .4byte 0x3C6EF35F
_080C97CC: .4byte gUnk_08351530
_080C97D0: .4byte gUnk_0203AD30
_080C97D4:
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
_080C97DC:
	adds r0, r3, #0
	bl sub_080CB628
	b _080C97EA
_080C97E4:
	adds r0, r3, #0
	bl sub_080CB550
_080C97EA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080C97F0
sub_080C97F0: @ 0x080C97F0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, _080C9814 @ =sub_080C9900
	movs r1, #1
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080C981C
	ldr r0, _080C9818 @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x40]
	b _080C9822
	.align 2, 0
_080C9814: .4byte sub_080C9900
_080C9818: .4byte 0xFFFFFF00
_080C981C:
	ldr r0, _080C983C @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x40]
_080C9822:
	ldr r1, [r4, #0x44]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080C9840
	ldr r0, _080C983C @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x44]
	b _080C9846
	.align 2, 0
_080C983C: .4byte 0xFFFFFF00
_080C9840:
	ldr r0, _080C9868 @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x44]
_080C9846:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x5a
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C986C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C9874
	.align 2, 0
_080C9868: .4byte 0xFFFFFF00
_080C986C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C9874:
	str r0, [r4, #8]
	ldr r1, _080C98D8 @ =gRngVal
	ldr r2, [r1]
	ldr r0, _080C98DC @ =0x00196225
	muls r0, r2, r0
	ldr r2, _080C98E0 @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r1]
	lsrs r2, r0, #0x10
	ldr r0, _080C98E4 @ =0x00005554
	adds r3, r1, #0
	cmp r2, r0
	bls _080C989C
	ldr r0, _080C98E8 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080C9898
	movs r1, #1
_080C9898:
	cmp r1, #0
	bne _080C98FA
_080C989C:
	ldr r0, [r3]
	ldr r6, _080C98DC @ =0x00196225
	muls r0, r6, r0
	ldr r1, _080C98E0 @ =0x3C6EF35F
	adds r2, r0, r1
	str r2, [r3]
	lsrs r0, r2, #0x10
	movs r5, #1
	ands r0, r5
	cmp r0, #0
	beq _080C98F4
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r2, #0
	muls r0, r6, r0
	ldr r2, _080C98E0 @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r3]
	lsrs r0, r0, #0x10
	ands r0, r5
	cmp r0, #0
	beq _080C98EC
	adds r0, r4, #0
	bl sub_080C9D1C
	b _080C98FA
	.align 2, 0
_080C98D8: .4byte gRngVal
_080C98DC: .4byte 0x00196225
_080C98E0: .4byte 0x3C6EF35F
_080C98E4: .4byte 0x00005554
_080C98E8: .4byte 0x0000AAA9
_080C98EC:
	adds r0, r4, #0
	bl sub_080CB628
	b _080C98FA
_080C98F4:
	adds r0, r4, #0
	bl sub_080CB5BC
_080C98FA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080C9900
sub_080C9900: @ 0x080C9900
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r2, [r3, #8]
	movs r0, #4
	orrs r2, r0
	str r2, [r3, #8]
	adds r0, r3, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r3, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C9920
	movs r0, #1
	orrs r2, r0
	b _080C9926
_080C9920:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080C9926:
	str r2, [r3, #8]
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x31
	ble _080C9A00
	movs r0, #0
	strh r0, [r3, #4]
	adds r1, r3, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r4, r0, #1
	strb r4, [r1]
	ldr r2, _080C99D4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C99D8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C99DC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	bne _080C9990
	adds r0, r3, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C9990
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080C9990
	adds r2, r3, #0
	adds r2, #0x80
	ldr r1, _080C99E0 @ =gUnk_08351530
	ldr r0, _080C99E4 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x18
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r4, #0
	ldrsh r1, [r2, r4]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080C9A00
_080C9990:
	adds r0, r3, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #3
	bhi _080C99E8
	ldr r0, [r6]
	ldr r5, _080C99D8 @ =0x00196225
	muls r0, r5, r0
	ldr r1, _080C99DC @ =0x3C6EF35F
	adds r2, r0, r1
	str r2, [r6]
	lsrs r0, r2, #0x10
	movs r4, #1
	ands r0, r4
	cmp r0, #0
	beq _080C99FA
	ldr r0, [r3, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #8]
	adds r0, r2, #0
	muls r0, r5, r0
	ldr r1, _080C99DC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r6]
	lsrs r0, r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _080C99F2
	adds r0, r3, #0
	bl sub_080C9D1C
	b _080C9A00
	.align 2, 0
_080C99D4: .4byte gRngVal
_080C99D8: .4byte 0x00196225
_080C99DC: .4byte 0x3C6EF35F
_080C99E0: .4byte gUnk_08351530
_080C99E4: .4byte gUnk_0203AD30
_080C99E8:
	ldr r0, [r3, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #8]
_080C99F2:
	adds r0, r3, #0
	bl sub_080CB628
	b _080C9A00
_080C99FA:
	adds r0, r3, #0
	bl sub_080CB5BC
_080C9A00:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C9A08
sub_080C9A08: @ 0x080C9A08
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	movs r1, #1
	mov ip, r1
	orrs r0, r1
	str r0, [r3, #8]
	adds r4, r3, #0
	adds r4, #0x9e
	ldrb r0, [r4]
	ldr r7, _080C9AD8 @ =gUnk_08355BF0
	cmp r0, #0
	bne _080C9B10
	adds r1, r3, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	adds r5, r1, #0
	cmp r0, #0
	bne _080C9A46
	subs r0, r2, #1
	strb r0, [r5]
_080C9A46:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	strb r0, [r4]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080C9A6C
	adds r0, r3, #0
	adds r0, #0x83
	strb r1, [r0]
_080C9A6C:
	ldrb r0, [r5]
	cmp r0, #0
	beq _080C9ADC
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
	movs r4, #0
	ldrsh r1, [r1, r4]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	beq _080C9AA8
	adds r1, r3, #0
	adds r1, #0x50
	strh r2, [r1]
	ldr r0, [r3, #8]
	mov r4, ip
	ands r0, r4
	cmp r0, #0
	beq _080C9AA8
	rsbs r0, r2, #0
	strh r0, [r1]
_080C9AA8:
	adds r0, r3, #0
	adds r0, #0x9f
	ldrb r2, [r0]
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
	cmp r1, r0
	beq _080C9B10
	adds r0, r3, #0
	adds r0, #0x52
	strh r2, [r0]
	b _080C9B10
	.align 2, 0
_080C9AD8: .4byte gUnk_08355BF0
_080C9ADC:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	adds r2, r3, #0
	adds r2, #0x52
	strh r0, [r2]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r6, [r0]
	adds r1, r3, #0
	adds r1, #0x50
	strh r6, [r1]
	ldr r0, [r3, #8]
	mov r4, ip
	ands r0, r4
	adds r4, r1, #0
	cmp r0, #0
	beq _080C9B3A
	rsbs r0, r6, #0
	strh r0, [r4]
_080C9B10:
	ldr r1, [r3, #8]
	movs r0, #1
	ands r1, r0
	adds r5, r3, #0
	adds r5, #0x9f
	adds r4, r3, #0
	adds r4, #0x50
	adds r2, r3, #0
	adds r2, #0x52
	cmp r1, #0
	beq _080C9B3A
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r4]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r4]
	b _080C9B4C
_080C9B3A:
	ldrb r0, [r5]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrh r0, [r1, #4]
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
_080C9B4C:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #6]
	ldrh r4, [r2]
	adds r0, r0, r4
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	ldrb r1, [r5]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080C9B8C
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080C9B8C
	adds r0, r3, #0
	bl sub_080C97F0
	b _080C9BAC
_080C9B8C:
	adds r0, r3, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r3, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C9BA2
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	b _080C9BAA
_080C9BA2:
	ldr r0, [r3, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C9BAA:
	str r0, [r3, #8]
_080C9BAC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C9BB4
sub_080C9BB4: @ 0x080C9BB4
	push {r4, r5, lr}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	mov r2, ip
	adds r2, #0x9e
	ldrb r0, [r2]
	ldr r4, _080C9C6C @ =gUnk_08355BF0
	cmp r0, #0
	bne _080C9C94
	mov r3, ip
	adds r3, #0x9f
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080C9BEC
	subs r0, r1, #1
	strb r0, [r3]
_080C9BEC:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r0, [r0, #8]
	strb r0, [r2]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080C9C12
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080C9C12:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080C9C70
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r4
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r1, [r1, r5]
	movs r5, #0
	ldrsh r0, [r0, r5]
	cmp r1, r0
	beq _080C9C40
	mov r0, ip
	adds r0, #0x50
	strh r2, [r0]
_080C9C40:
	ldrb r2, [r3]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r4
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r2, [r1, #2]
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r5, #2
	ldrsh r0, [r0, r5]
	cmp r1, r0
	beq _080C9C94
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	b _080C9C94
	.align 2, 0
_080C9C6C: .4byte gUnk_08355BF0
_080C9C70:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r0, [r0, #2]
	mov r1, ip
	adds r1, #0x52
	strh r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r1, [r0]
	mov r0, ip
	adds r0, #0x50
	strh r1, [r0]
_080C9C94:
	mov r2, ip
	adds r2, #0x50
	mov r3, ip
	adds r3, #0x9f
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r0, [r0, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r0, [r0, #6]
	ldrh r5, [r2]
	adds r0, r0, r5
	strh r0, [r2]
	mov r1, ip
	adds r1, #0x9e
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
	adds r0, r0, r4
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080C9CF0
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080C9CF0
	mov r0, ip
	bl sub_080C95D4
	b _080C9D16
_080C9CF0:
	mov r0, ip
	adds r0, #0xac
	ldr r0, [r0]
	mov r2, ip
	ldr r1, [r2, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C9D0A
	ldr r0, [r2, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #8]
	b _080C9D16
_080C9D0A:
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #8]
_080C9D16:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080C9D1C
sub_080C9D1C: @ 0x080C9D1C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r6, #0
	ldr r5, _080C9D90 @ =gRngVal
	ldr r0, [r5]
	ldr r7, _080C9D94 @ =0x00196225
	muls r0, r7, r0
	ldr r1, _080C9D98 @ =0x3C6EF35F
	mov r8, r1
	add r0, r8
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r2, #1
	mov sb, r2
	ands r0, r2
	cmp r0, #0
	beq _080C9DAC
	ldr r2, _080C9D9C @ =sub_080C9E70
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080C9DA0 @ =gUnk_08351530
	ldr r0, _080C9DA4 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x18
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080C9D7C
	ldr r0, [r5]
	muls r0, r7, r0
	add r0, r8
	str r0, [r5]
	lsrs r6, r0, #0x10
	mov r0, sb
	ands r6, r0
_080C9D7C:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C9D8A
	cmp r6, #0
	beq _080C9E00
_080C9D8A:
	ldr r0, _080C9DA8 @ =sub_080CA0A4
	b _080C9DFE
	.align 2, 0
_080C9D90: .4byte gRngVal
_080C9D94: .4byte 0x00196225
_080C9D98: .4byte 0x3C6EF35F
_080C9D9C: .4byte sub_080C9E70
_080C9DA0: .4byte gUnk_08351530
_080C9DA4: .4byte gUnk_0203AD30
_080C9DA8: .4byte sub_080CA0A4
_080C9DAC:
	ldr r2, _080C9E18 @ =sub_080CA2D8
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080C9E1C @ =gUnk_08351530
	ldr r0, _080C9E20 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x18
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080C9DEE
	ldr r0, [r5]
	muls r0, r7, r0
	add r0, r8
	str r0, [r5]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080C9DEC
	movs r2, #1
_080C9DEC:
	adds r6, r2, #0
_080C9DEE:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C9DFC
	cmp r6, #0
	beq _080C9E00
_080C9DFC:
	ldr r0, _080C9E24 @ =sub_080CA50C
_080C9DFE:
	str r0, [r4, #0x78]
_080C9E00:
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080C9E2C
	ldr r0, _080C9E28 @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x40]
	b _080C9E32
	.align 2, 0
_080C9E18: .4byte sub_080CA2D8
_080C9E1C: .4byte gUnk_08351530
_080C9E20: .4byte gUnk_0203AD30
_080C9E24: .4byte sub_080CA50C
_080C9E28: .4byte 0xFFFFFF00
_080C9E2C:
	ldr r0, _080C9E4C @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x40]
_080C9E32:
	ldr r1, [r4, #0x44]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080C9E50
	ldr r0, _080C9E4C @ =0xFFFFFF00
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r1, r3
	str r0, [r4, #0x44]
	b _080C9E56
	.align 2, 0
_080C9E4C: .4byte 0xFFFFFF00
_080C9E50:
	ldr r0, _080C9E6C @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x44]
_080C9E56:
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C9E6C: .4byte 0xFFFFFF00

	thumb_func_start sub_080C9E70
sub_080C9E70: @ 0x080C9E70
	push {r4, r5, r6, lr}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	mov r3, ip
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r6, _080C9F3C @ =gUnk_08355998
	cmp r0, #0
	bne _080C9F74
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	adds r4, r1, #0
	cmp r0, #0
	bne _080C9EA8
	subs r0, r2, #1
	strb r0, [r4]
_080C9EA8:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080C9ECE
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080C9ECE:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080C9F40
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
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080C9F0C
	mov r2, ip
	adds r2, #0x50
	strh r3, [r2]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C9F0C
	rsbs r0, r3, #0
	strh r0, [r2]
_080C9F0C:
	mov r0, ip
	adds r0, #0x9f
	ldrb r2, [r0]
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
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080C9F74
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	b _080C9F74
	.align 2, 0
_080C9F3C: .4byte gUnk_08355998
_080C9F40:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r3, ip
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r5, [r0]
	mov r2, ip
	adds r2, #0x50
	strh r5, [r2]
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080C9F9E
	rsbs r0, r5, #0
	strh r0, [r2]
_080C9F74:
	mov r2, ip
	ldr r1, [r2, #8]
	movs r0, #1
	ands r1, r0
	mov r4, ip
	adds r4, #0x9f
	adds r2, #0x50
	mov r3, ip
	adds r3, #0x52
	cmp r1, #0
	beq _080C9F9E
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r2]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r2]
	b _080C9FB0
_080C9F9E:
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080C9FB0:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	ldrb r1, [r4]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080CA004
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080CA004
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C9FFC
	mov r0, ip
	bl sub_080C97F0
	b _080CA07E
_080C9FFC:
	mov r0, ip
	bl sub_080C95D4
	b _080CA07E
_080CA004:
	mov r1, ip
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x74
	bne _080CA07E
	ldr r1, _080CA084 @ =gUnk_02020EE0
	ldr r0, _080CA088 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	mov r1, ip
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080CA07E
	mov r3, ip
	ldrb r0, [r3]
	cmp r0, #0
	bne _080CA042
	mov r0, ip
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CA07E
_080CA042:
	ldr r1, _080CA08C @ =gUnk_08D60FA4
	ldr r4, _080CA090 @ =gSongTable
	ldr r2, _080CA094 @ =0x00000B8C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CA066
	ldr r1, _080CA098 @ =0x00000B88
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CA07E
_080CA066:
	cmp r3, #0
	beq _080CA078
	ldr r0, _080CA09C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CA07E
_080CA078:
	ldr r0, _080CA0A0 @ =0x00000171
	bl m4aSongNumStart
_080CA07E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080CA084: .4byte gUnk_02020EE0
_080CA088: .4byte gUnk_0203AD3C
_080CA08C: .4byte gUnk_08D60FA4
_080CA090: .4byte gSongTable
_080CA094: .4byte 0x00000B8C
_080CA098: .4byte 0x00000B88
_080CA09C: .4byte gUnk_0203AD10
_080CA0A0: .4byte 0x00000171

	thumb_func_start sub_080CA0A4
sub_080CA0A4: @ 0x080CA0A4
	push {r4, r5, r6, lr}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	mov r3, ip
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r6, _080CA170 @ =gUnk_08355920
	cmp r0, #0
	bne _080CA1A8
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	adds r4, r1, #0
	cmp r0, #0
	bne _080CA0DC
	subs r0, r2, #1
	strb r0, [r4]
_080CA0DC:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080CA102
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080CA102:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080CA174
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
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080CA140
	mov r2, ip
	adds r2, #0x50
	strh r3, [r2]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CA140
	rsbs r0, r3, #0
	strh r0, [r2]
_080CA140:
	mov r0, ip
	adds r0, #0x9f
	ldrb r2, [r0]
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
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080CA1A8
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	b _080CA1A8
	.align 2, 0
_080CA170: .4byte gUnk_08355920
_080CA174:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r3, ip
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r5, [r0]
	mov r2, ip
	adds r2, #0x50
	strh r5, [r2]
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080CA1D2
	rsbs r0, r5, #0
	strh r0, [r2]
_080CA1A8:
	mov r2, ip
	ldr r1, [r2, #8]
	movs r0, #1
	ands r1, r0
	mov r4, ip
	adds r4, #0x9f
	adds r2, #0x50
	mov r3, ip
	adds r3, #0x52
	cmp r1, #0
	beq _080CA1D2
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r2]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r2]
	b _080CA1E4
_080CA1D2:
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080CA1E4:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	ldrb r1, [r4]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080CA238
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080CA238
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CA230
	mov r0, ip
	bl sub_080C97F0
	b _080CA2B2
_080CA230:
	mov r0, ip
	bl sub_080C95D4
	b _080CA2B2
_080CA238:
	mov r1, ip
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x42
	bne _080CA2B2
	ldr r1, _080CA2B8 @ =gUnk_02020EE0
	ldr r0, _080CA2BC @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	mov r1, ip
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080CA2B2
	mov r3, ip
	ldrb r0, [r3]
	cmp r0, #0
	bne _080CA276
	mov r0, ip
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CA2B2
_080CA276:
	ldr r1, _080CA2C0 @ =gUnk_08D60FA4
	ldr r4, _080CA2C4 @ =gSongTable
	ldr r2, _080CA2C8 @ =0x00000B8C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CA29A
	ldr r1, _080CA2CC @ =0x00000B88
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CA2B2
_080CA29A:
	cmp r3, #0
	beq _080CA2AC
	ldr r0, _080CA2D0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CA2B2
_080CA2AC:
	ldr r0, _080CA2D4 @ =0x00000171
	bl m4aSongNumStart
_080CA2B2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080CA2B8: .4byte gUnk_02020EE0
_080CA2BC: .4byte gUnk_0203AD3C
_080CA2C0: .4byte gUnk_08D60FA4
_080CA2C4: .4byte gSongTable
_080CA2C8: .4byte 0x00000B8C
_080CA2CC: .4byte 0x00000B88
_080CA2D0: .4byte gUnk_0203AD10
_080CA2D4: .4byte 0x00000171

	thumb_func_start sub_080CA2D8
sub_080CA2D8: @ 0x080CA2D8
	push {r4, r5, r6, lr}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	mov r3, ip
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r6, _080CA3A4 @ =gUnk_08355AB8
	cmp r0, #0
	bne _080CA3DC
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	adds r4, r1, #0
	cmp r0, #0
	bne _080CA310
	subs r0, r2, #1
	strb r0, [r4]
_080CA310:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080CA336
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080CA336:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080CA3A8
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
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080CA374
	mov r2, ip
	adds r2, #0x50
	strh r3, [r2]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CA374
	rsbs r0, r3, #0
	strh r0, [r2]
_080CA374:
	mov r0, ip
	adds r0, #0x9f
	ldrb r2, [r0]
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
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080CA3DC
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	b _080CA3DC
	.align 2, 0
_080CA3A4: .4byte gUnk_08355AB8
_080CA3A8:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r3, ip
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r5, [r0]
	mov r2, ip
	adds r2, #0x50
	strh r5, [r2]
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080CA406
	rsbs r0, r5, #0
	strh r0, [r2]
_080CA3DC:
	mov r2, ip
	ldr r1, [r2, #8]
	movs r0, #1
	ands r1, r0
	mov r4, ip
	adds r4, #0x9f
	adds r2, #0x50
	mov r3, ip
	adds r3, #0x52
	cmp r1, #0
	beq _080CA406
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r2]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r2]
	b _080CA418
_080CA406:
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080CA418:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	ldrb r1, [r4]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080CA46C
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080CA46C
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CA464
	mov r0, ip
	bl sub_080C97F0
	b _080CA4E6
_080CA464:
	mov r0, ip
	bl sub_080C95D4
	b _080CA4E6
_080CA46C:
	mov r1, ip
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x74
	bne _080CA4E6
	ldr r1, _080CA4EC @ =gUnk_02020EE0
	ldr r0, _080CA4F0 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	mov r1, ip
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080CA4E6
	mov r3, ip
	ldrb r0, [r3]
	cmp r0, #0
	bne _080CA4AA
	mov r0, ip
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CA4E6
_080CA4AA:
	ldr r1, _080CA4F4 @ =gUnk_08D60FA4
	ldr r4, _080CA4F8 @ =gSongTable
	ldr r2, _080CA4FC @ =0x00000B8C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CA4CE
	ldr r1, _080CA500 @ =0x00000B88
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CA4E6
_080CA4CE:
	cmp r3, #0
	beq _080CA4E0
	ldr r0, _080CA504 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CA4E6
_080CA4E0:
	ldr r0, _080CA508 @ =0x00000171
	bl m4aSongNumStart
_080CA4E6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080CA4EC: .4byte gUnk_02020EE0
_080CA4F0: .4byte gUnk_0203AD3C
_080CA4F4: .4byte gUnk_08D60FA4
_080CA4F8: .4byte gSongTable
_080CA4FC: .4byte 0x00000B8C
_080CA500: .4byte 0x00000B88
_080CA504: .4byte gUnk_0203AD10
_080CA508: .4byte 0x00000171

	thumb_func_start sub_080CA50C
sub_080CA50C: @ 0x080CA50C
	push {r4, r5, r6, lr}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	mov r3, ip
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r6, _080CA5D8 @ =gUnk_08355A4C
	cmp r0, #0
	bne _080CA610
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	adds r4, r1, #0
	cmp r0, #0
	bne _080CA544
	subs r0, r2, #1
	strb r0, [r4]
_080CA544:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080CA56A
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080CA56A:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080CA5DC
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
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080CA5A8
	mov r2, ip
	adds r2, #0x50
	strh r3, [r2]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CA5A8
	rsbs r0, r3, #0
	strh r0, [r2]
_080CA5A8:
	mov r0, ip
	adds r0, #0x9f
	ldrb r2, [r0]
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
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080CA610
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	b _080CA610
	.align 2, 0
_080CA5D8: .4byte gUnk_08355A4C
_080CA5DC:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r3, ip
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r5, [r0]
	mov r2, ip
	adds r2, #0x50
	strh r5, [r2]
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080CA63A
	rsbs r0, r5, #0
	strh r0, [r2]
_080CA610:
	mov r2, ip
	ldr r1, [r2, #8]
	movs r0, #1
	ands r1, r0
	mov r4, ip
	adds r4, #0x9f
	adds r2, #0x50
	mov r3, ip
	adds r3, #0x52
	cmp r1, #0
	beq _080CA63A
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r2]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r2]
	b _080CA64C
_080CA63A:
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080CA64C:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	ldrb r1, [r4]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080CA6A0
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080CA6A0
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CA698
	mov r0, ip
	bl sub_080C97F0
	b _080CA71A
_080CA698:
	mov r0, ip
	bl sub_080C95D4
	b _080CA71A
_080CA6A0:
	mov r1, ip
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x42
	bne _080CA71A
	ldr r1, _080CA720 @ =gUnk_02020EE0
	ldr r0, _080CA724 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	mov r1, ip
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080CA71A
	mov r3, ip
	ldrb r0, [r3]
	cmp r0, #0
	bne _080CA6DE
	mov r0, ip
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CA71A
_080CA6DE:
	ldr r1, _080CA728 @ =gUnk_08D60FA4
	ldr r4, _080CA72C @ =gSongTable
	ldr r2, _080CA730 @ =0x00000B8C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CA702
	ldr r1, _080CA734 @ =0x00000B88
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CA71A
_080CA702:
	cmp r3, #0
	beq _080CA714
	ldr r0, _080CA738 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CA71A
_080CA714:
	ldr r0, _080CA73C @ =0x00000171
	bl m4aSongNumStart
_080CA71A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080CA720: .4byte gUnk_02020EE0
_080CA724: .4byte gUnk_0203AD3C
_080CA728: .4byte gUnk_08D60FA4
_080CA72C: .4byte gSongTable
_080CA730: .4byte 0x00000B8C
_080CA734: .4byte 0x00000B88
_080CA738: .4byte gUnk_0203AD10
_080CA73C: .4byte 0x00000171

	thumb_func_start sub_080CA740
sub_080CA740: @ 0x080CA740
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r3, r4, #0
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r7, _080CA810 @ =gUnk_08355B48
	cmp r0, #0
	bne _080CA846
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	adds r5, r1, #0
	cmp r0, #0
	bne _080CA77C
	subs r0, r2, #1
	strb r0, [r5]
_080CA77C:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	strb r0, [r3]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	movs r2, #0x83
	adds r2, r2, r4
	mov r8, r2
	cmp r0, #0xff
	beq _080CA7A4
	strb r1, [r2]
_080CA7A4:
	ldrb r0, [r5]
	cmp r0, #0
	beq _080CA814
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
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080CA7E0
	adds r2, r4, #0
	adds r2, #0x50
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CA7E0
	rsbs r0, r3, #0
	strh r0, [r2]
_080CA7E0:
	adds r0, r4, #0
	adds r0, #0x9f
	ldrb r2, [r0]
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
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080CA846
	adds r0, r4, #0
	adds r0, #0x52
	strh r2, [r0]
	b _080CA846
	.align 2, 0
_080CA810: .4byte gUnk_08355B48
_080CA814:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	adds r3, r4, #0
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r6, [r0]
	adds r2, r4, #0
	adds r2, #0x50
	strh r6, [r2]
	ldr r1, [r4, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080CA876
	rsbs r0, r6, #0
	strh r0, [r2]
_080CA846:
	ldr r1, [r4, #8]
	movs r0, #1
	ands r1, r0
	adds r5, r4, #0
	adds r5, #0x9f
	movs r0, #0x83
	adds r0, r0, r4
	mov r8, r0
	adds r2, r4, #0
	adds r2, #0x50
	adds r3, r4, #0
	adds r3, #0x52
	cmp r1, #0
	beq _080CA876
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r2]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r2]
	b _080CA888
_080CA876:
	ldrb r0, [r5]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrh r0, [r1, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080CA888:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #6]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	ldrb r1, [r5]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080CA8CE
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080CA8CE
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080CA8FC
_080CA8CE:
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, #9
	bne _080CA8F2
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080CA8EE
	adds r0, r4, #0
	movs r1, #4
	bl sub_080CAEB8
	adds r0, r4, #0
	movs r1, #9
	bl sub_080CAEB8
_080CA8EE:
	movs r0, #1
	strh r0, [r4, #4]
_080CA8F2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080CA8FC
sub_080CA8FC: @ 0x080CA8FC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r2, _080CA920 @ =sub_080CAA68
	movs r1, #0xa
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080CA928
	ldr r0, _080CA924 @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x40]
	b _080CA92E
	.align 2, 0
_080CA920: .4byte sub_080CAA68
_080CA924: .4byte 0xFFFFFF00
_080CA928:
	ldr r0, _080CA948 @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x40]
_080CA92E:
	ldr r1, [r4, #0x44]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080CA94C
	ldr r0, _080CA948 @ =0xFFFFFF00
	ands r1, r0
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r1, r7
	str r0, [r4, #0x44]
	b _080CA952
	.align 2, 0
_080CA948: .4byte 0xFFFFFF00
_080CA94C:
	ldr r0, _080CA9BC @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x44]
_080CA952:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0x10
	strb r0, [r1]
	ldr r5, _080CA9C0 @ =gRngVal
	ldr r0, [r5]
	ldr r1, _080CA9C4 @ =0x00196225
	mov ip, r1
	mov r2, ip
	muls r2, r0, r2
	adds r0, r2, #0
	ldr r6, _080CA9C8 @ =0x3C6EF35F
	adds r3, r0, r6
	str r3, [r5]
	lsrs r0, r3, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x9e
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080CA9B6
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080CA9CC @ =gUnk_08351530
	ldr r0, _080CA9D0 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x18
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r7, #0
	ldrsh r1, [r2, r7]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080CA9D4
	mov r0, ip
	muls r0, r3, r0
	adds r0, r0, r6
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CA9D4
_080CA9B6:
	movs r0, #0x8c
	b _080CA9D6
	.align 2, 0
_080CA9BC: .4byte 0xFFFFFF00
_080CA9C0: .4byte gRngVal
_080CA9C4: .4byte 0x00196225
_080CA9C8: .4byte 0x3C6EF35F
_080CA9CC: .4byte gUnk_08351530
_080CA9D0: .4byte gUnk_0203AD30
_080CA9D4:
	movs r0, #0x5a
_080CA9D6:
	strh r0, [r4, #4]
	ldr r1, _080CAA48 @ =gUnk_02020EE0
	ldr r0, _080CAA4C @ =gUnk_0203AD3C
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
	bne _080CAA40
	ldrb r0, [r4]
	cmp r0, #0
	bne _080CAA04
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CAA40
_080CAA04:
	ldr r1, _080CAA50 @ =gUnk_08D60FA4
	ldr r4, _080CAA54 @ =gSongTable
	ldr r2, _080CAA58 @ =0x00000B8C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CAA28
	ldr r7, _080CAA5C @ =0x00000B88
	adds r0, r4, r7
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CAA40
_080CAA28:
	cmp r3, #0
	beq _080CAA3A
	ldr r0, _080CAA60 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CAA40
_080CAA3A:
	ldr r0, _080CAA64 @ =0x00000171
	bl m4aSongNumStart
_080CAA40:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080CAA48: .4byte gUnk_02020EE0
_080CAA4C: .4byte gUnk_0203AD3C
_080CAA50: .4byte gUnk_08D60FA4
_080CAA54: .4byte gSongTable
_080CAA58: .4byte 0x00000B8C
_080CAA5C: .4byte 0x00000B88
_080CAA60: .4byte gUnk_0203AD10
_080CAA64: .4byte 0x00000171

	thumb_func_start sub_080CAA68
sub_080CAA68: @ 0x080CAA68
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0x10
	ble _080CAAE8
	adds r6, r5, #0
	adds r6, #0x85
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080CAAE8
	ldr r1, _080CAB00 @ =gUnk_08355C76
	adds r4, r5, #0
	adds r4, #0x9e
	ldrb r0, [r4]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	bl sub_080CAEB8
	ldrb r0, [r4]
	adds r2, r0, #1
	strb r2, [r4]
	ldr r3, _080CAB04 @ =gRngVal
	ldr r0, [r3]
	ldr r1, _080CAB08 @ =0x00196225
	mov ip, r1
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r7, _080CAB0C @ =0x3C6EF35F
	adds r0, r0, r7
	str r0, [r3]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #3
	bne _080CAAC6
	adds r0, r2, #1
	strb r0, [r4]
_080CAAC6:
	ldrb r1, [r4]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r4]
	ldr r2, _080CAB10 @ =gUnk_08355C6E
	ldr r0, [r3]
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r0, r7
	str r0, [r3]
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r6]
_080CAAE8:
	ldrh r0, [r5, #4]
	subs r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080CAAFA
	adds r0, r5, #0
	bl sub_080CB694
_080CAAFA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080CAB00: .4byte gUnk_08355C76
_080CAB04: .4byte gRngVal
_080CAB08: .4byte 0x00196225
_080CAB0C: .4byte 0x3C6EF35F
_080CAB10: .4byte gUnk_08355C6E

	thumb_func_start sub_080CAB14
sub_080CAB14: @ 0x080CAB14
	push {r4, r5, r6, lr}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	mov r3, ip
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r6, _080CABE0 @ =gUnk_08355BA8
	cmp r0, #0
	bne _080CAC18
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	adds r4, r1, #0
	cmp r0, #0
	bne _080CAB4C
	subs r0, r2, #1
	strb r0, [r4]
_080CAB4C:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080CAB72
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080CAB72:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080CABE4
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
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080CABB0
	mov r2, ip
	adds r2, #0x50
	strh r3, [r2]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CABB0
	rsbs r0, r3, #0
	strh r0, [r2]
_080CABB0:
	mov r0, ip
	adds r0, #0x9f
	ldrb r2, [r0]
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
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080CAC18
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	b _080CAC18
	.align 2, 0
_080CABE0: .4byte gUnk_08355BA8
_080CABE4:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r3, ip
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r5, [r0]
	mov r2, ip
	adds r2, #0x50
	strh r5, [r2]
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080CAC42
	rsbs r0, r5, #0
	strh r0, [r2]
_080CAC18:
	mov r2, ip
	ldr r1, [r2, #8]
	movs r0, #1
	ands r1, r0
	mov r4, ip
	adds r4, #0x9f
	adds r2, #0x50
	mov r3, ip
	adds r3, #0x52
	cmp r1, #0
	beq _080CAC42
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r2]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r2]
	b _080CAC54
_080CAC42:
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080CAC54:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	ldrb r1, [r4]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080CACAE
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080CACAE
	mov r1, ip
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CACA8
	mov r0, ip
	bl sub_080C97F0
	b _080CACAE
_080CACA8:
	mov r0, ip
	bl sub_080C95D4
_080CACAE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080CACB4
sub_080CACB4: @ 0x080CACB4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080CACE8 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080CACEC @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080CACF0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080CACF8
	.align 2, 0
_080CACE8: .4byte ObjectMain
_080CACEC: .4byte ObjectDestroy
_080CACF0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080CACF8:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldrb r0, [r6, #0xe]
	adds r2, r4, #0
	adds r2, #0x85
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _080CAD52
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ldrb r0, [r2]
	subs r0, #5
	strb r0, [r2]
_080CAD52:
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080CADB0 @ =sub_0809F840
	str r0, [r4, #0x7c]
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
	ldr r2, _080CADB4 @ =gUnk_08351648
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
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080CADB0: .4byte sub_0809F840
_080CADB4: .4byte gUnk_08351648

	thumb_func_start sub_080CADB8
sub_080CADB8: @ 0x080CADB8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CAE14
	adds r4, r5, #0
	adds r4, #0x50
	ldr r2, _080CAE00 @ =gUnk_08355C86
	adds r3, r5, #0
	adds r3, #0x85
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, #2
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r4]
	ldrh r0, [r0]
	subs r1, r1, r0
	strh r1, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, _080CAE04 @ =0xFFFFFB00
	adds r6, r2, #0
	adds r2, r3, #0
	cmp r1, r0
	bge _080CAE08
	movs r0, #0xfb
	lsls r0, r0, #8
	strh r0, [r4]
	b _080CAE46
	.align 2, 0
_080CAE00: .4byte gUnk_08355C86
_080CAE04: .4byte 0xFFFFFB00
_080CAE08:
	movs r0, #0xa0
	lsls r0, r0, #3
	cmp r1, r0
	ble _080CAE46
	strh r0, [r4]
	b _080CAE46
_080CAE14:
	adds r3, r5, #0
	adds r3, #0x50
	ldr r1, _080CAE74 @ =gUnk_08355C86
	adds r2, r5, #0
	adds r2, #0x85
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, #2
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r4, [r3]
	adds r0, r0, r4
	strh r0, [r3]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	movs r0, #0xa0
	lsls r0, r0, #3
	adds r6, r1, #0
	cmp r4, r0
	bgt _080CAE44
	ldr r0, _080CAE78 @ =0xFFFFFB00
	cmp r4, r0
	bge _080CAE46
_080CAE44:
	strh r0, [r3]
_080CAE46:
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, #3
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r2, [r0]
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _080CAE7C
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r3, [r1]
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #3
	cmp r0, r2
	ble _080CAE92
	b _080CAE90
	.align 2, 0
_080CAE74: .4byte gUnk_08355C86
_080CAE78: .4byte 0xFFFFFB00
_080CAE7C:
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r4, [r1]
	adds r0, r2, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080CAEB4 @ =0xFFFFFB00
	cmp r0, r2
	bge _080CAE92
_080CAE90:
	strh r2, [r1]
_080CAE92:
	ldr r0, [r5, #0x58]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080CAEAE
	adds r0, r5, #0
	bl sub_0809DA30
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
_080CAEAE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080CAEB4: .4byte 0xFFFFFB00

	thumb_func_start sub_080CAEB8
sub_080CAEB8: @ 0x080CAEB8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov ip, r0
	ldr r0, [r5, #0x44]
	asrs r7, r0, #8
	movs r4, #0
	ldr r1, _080CAEE0 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080CAEE4 @ =gUnk_020229E0
	b _080CAEFC
	.align 2, 0
_080CAEE0: .4byte gUnk_020229D4
_080CAEE4: .4byte gUnk_020229E0
_080CAEE8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080CAF04
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080CAEFC:
	cmp r0, #0
	bne _080CAEE8
	orrs r2, r3
	str r2, [r1]
_080CAF04:
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
	mov r0, ip
	strh r0, [r1, #6]
	strh r7, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xa1
	strb r0, [r1, #0xc]
	mov r0, r8
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	strb r3, [r1, #0x10]
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
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl CreateObject
	str r5, [r0, #0x70]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CAF60
sub_080CAF60: @ 0x080CAF60
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080CAF90 @ =sub_080CB02C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080CAF94 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080CAF98
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080CAFA0
	.align 2, 0
_080CAF90: .4byte sub_080CB02C
_080CAF94: .4byte sub_0803DCCC
_080CAF98:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080CAFA0:
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
	adds r5, r4, #0
	adds r5, #0x42
	movs r7, #0
	strh r0, [r5]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r6, _080CB014 @ =0x000002E7
	movs r0, #0xe
	str r0, [sp]
	movs r0, #0x19
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #8
	adds r3, r6, #0
	bl sub_080709F8
	adds r4, #0x2b
	strb r7, [r4]
	ldr r2, _080CB018 @ =gUnk_02020EE0
	ldr r0, _080CB01C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r5, [r5]
	cmp r0, r5
	bne _080CB020
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080CB022
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080CB022
	.align 2, 0
_080CB014: .4byte 0x000002E7
_080CB018: .4byte gUnk_02020EE0
_080CB01C: .4byte gUnk_0203AD3C
_080CB020:
	strb r7, [r4]
_080CB022:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CB02C
sub_080CB02C: @ 0x080CB02C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r2, _080CB054 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080CB058
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080CB060
	.align 2, 0
_080CB054: .4byte gCurTask
_080CB058:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080CB060:
	adds r5, r0, #0
	ldr r7, [r5, #0x44]
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080CB07A
	ldr r0, [r2]
	bl TaskDestroy
	b _080CB3CC
_080CB07A:
	ldr r0, [r7, #8]
	ands r0, r1
	cmp r0, #0
	beq _080CB08A
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r5, #6]
	b _080CB3CC
_080CB08A:
	ldr r2, _080CB0F4 @ =gUnk_02020EE0
	ldr r0, _080CB0F8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	mov r8, r1
	ldrh r1, [r1]
	cmp r0, r1
	bne _080CB13C
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080CB104
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080CB162
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #8
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080CB0FC @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080CB100 @ =0x0400000A
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
	b _080CB162
	.align 2, 0
_080CB0F4: .4byte gUnk_02020EE0
_080CB0F8: .4byte gUnk_0203AD3C
_080CB0FC: .4byte 0xFFF7FFFF
_080CB100: .4byte 0x0400000A
_080CB104:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080CB162
	movs r0, #8
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080CB134 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080CB138 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080CB162
	.align 2, 0
_080CB134: .4byte 0xFFF7FFFF
_080CB138: .4byte 0x0400000A
_080CB13C:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _080CB158
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080CB158
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080CB158:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080CB162:
	ldr r2, _080CB1A4 @ =gUnk_02020EE0
	ldr r0, _080CB1A8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r2, r8
	ldrh r2, [r2]
	cmp r0, r2
	bne _080CB1B0
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080CB1B8
	ldr r6, _080CB1AC @ =0x000002E7
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080CB1B8
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080CB1B8
	.align 2, 0
_080CB1A4: .4byte gUnk_02020EE0
_080CB1A8: .4byte gUnk_0203AD3C
_080CB1AC: .4byte 0x000002E7
_080CB1B0:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_080CB1B8:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _080CB20C
	ldrb r0, [r3]
	cmp r0, #0
	beq _080CB1D6
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080CB1D6
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080CB1D6:
	cmp r3, #0
	beq _080CB20C
	ldr r0, _080CB208 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080CB27C
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080CB27C
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080CB3CC
	.align 2, 0
_080CB208: .4byte gUnk_03000510
_080CB20C:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080CB274 @ =gUnk_02020EE0
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	mov r6, r8
	ldrh r1, [r6]
	cmp r0, r1
	beq _080CB24C
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080CB24C
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080CB24C
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080CB24C
	movs r3, #4
_080CB24C:
	ldr r0, _080CB278 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080CB27C
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080CB27C
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080CB3CC
	.align 2, 0
_080CB274: .4byte gUnk_02020EE0
_080CB278: .4byte gUnk_03000510
_080CB27C:
	ldr r0, _080CB314 @ =gUnk_0203AD44
	ldrb r0, [r0]
	movs r1, #0x26
	adds r1, r1, r5
	mov sb, r1
	movs r2, #0x83
	adds r2, r2, r7
	mov sl, r2
	ldr r6, _080CB318 @ =gUnk_08355C68
	mov ip, r6
	cmp r0, #0
	beq _080CB2CE
	mov r1, r8
	ldrh r3, [r1]
	ldr r4, _080CB31C @ =gUnk_02026D50
_080CB29A:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	ldr r6, _080CB320 @ =gCurLevelInfo
	adds r1, r0, r6
	movs r6, #0xbf
	lsls r6, r6, #3
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r3
	bne _080CB2C6
	adds r6, #0x66
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080CB2E0
_080CB2C6:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080CB29A
_080CB2CE:
	movs r0, #1
	cmp r0, #0
	beq _080CB2E0
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_080CB2E0:
	ldrh r2, [r5, #6]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080CB302
	ldrh r1, [r5, #4]
	adds r1, #1
	strh r1, [r5, #4]
	movs r0, #4
	orrs r0, r2
	strh r0, [r5, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #2
	ble _080CB302
	movs r0, #0
	strh r0, [r5, #4]
_080CB302:
	ldr r0, [r7, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CB328
	ldrh r1, [r5, #6]
	ldr r0, _080CB324 @ =0x0000FFFE
	ands r0, r1
	b _080CB32E
	.align 2, 0
_080CB314: .4byte gUnk_0203AD44
_080CB318: .4byte gUnk_08355C68
_080CB31C: .4byte gUnk_02026D50
_080CB320: .4byte gCurLevelInfo
_080CB324: .4byte 0x0000FFFE
_080CB328:
	ldrh r1, [r5, #6]
	movs r0, #1
	orrs r0, r1
_080CB32E:
	strh r0, [r5, #6]
	mov r6, sl
	ldrb r0, [r6]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _080CB350
	ldr r0, _080CB34C @ =0x000002E7
	strh r0, [r5, #0x18]
	movs r0, #0xf
	mov r1, sb
	strb r0, [r1]
	b _080CB35A
	.align 2, 0
_080CB34C: .4byte 0x000002E7
_080CB350:
	ldr r0, _080CB378 @ =0x000002E7
	strh r0, [r5, #0x18]
	movs r0, #0xe
	mov r2, sb
	strb r0, [r2]
_080CB35A:
	ldr r0, [r7, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CB37C
	movs r6, #4
	ldrsh r0, [r5, r6]
	lsls r0, r0, #1
	add r0, ip
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r7, #0x40]
	adds r0, r0, r1
	b _080CB38E
	.align 2, 0
_080CB378: .4byte 0x000002E7
_080CB37C:
	movs r1, #4
	ldrsh r0, [r5, r1]
	lsls r0, r0, #1
	add r0, ip
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r7, #0x40]
	subs r0, r0, r1
_080CB38E:
	str r0, [r5, #0x34]
	movs r2, #4
	ldrsh r0, [r5, r2]
	lsls r0, r0, #1
	adds r0, #1
	add r0, ip
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r7, #0x44]
	adds r2, r1, r0
	str r2, [r5, #0x38]
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080CB3C6
	movs r6, #0x3c
	ldrsh r0, [r5, r6]
	ldr r1, [r5, #0x34]
	adds r1, r1, r0
	str r1, [r5, #0x34]
	movs r1, #0x3e
	ldrsh r0, [r5, r1]
	subs r0, r2, r0
	str r0, [r5, #0x38]
_080CB3C6:
	adds r0, r5, #0
	bl sub_0806FAC8
_080CB3CC:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080CB3DC
sub_080CB3DC: @ 0x080CB3DC
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _080CB47C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r0, r3, #0
	adds r0, #0x56
	ldrb r4, [r0]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	bne _080CB476
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080CB476
	adds r0, r3, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	bhi _080CB476
	ldrb r0, [r3, #1]
	cmp r0, #5
	bne _080CB476
	ldr r1, _080CB480 @ =gUnk_02020EE0
	ldr r0, _080CB484 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080CB476
	ldrb r0, [r3]
	cmp r0, #0
	bne _080CB43A
	cmp r4, r2
	bne _080CB476
_080CB43A:
	ldr r1, _080CB488 @ =gUnk_08D60FA4
	ldr r4, _080CB48C @ =gSongTable
	ldr r2, _080CB490 @ =0x00000CFC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CB45E
	ldr r1, _080CB494 @ =0x00000CF8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CB476
_080CB45E:
	cmp r3, #0
	beq _080CB470
	ldr r0, _080CB498 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CB476
_080CB470:
	ldr r0, _080CB49C @ =0x0000019F
	bl m4aSongNumStart
_080CB476:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CB47C: .4byte gUnk_03000510
_080CB480: .4byte gUnk_02020EE0
_080CB484: .4byte gUnk_0203AD3C
_080CB488: .4byte gUnk_08D60FA4
_080CB48C: .4byte gSongTable
_080CB490: .4byte 0x00000CFC
_080CB494: .4byte 0x00000CF8
_080CB498: .4byte gUnk_0203AD10
_080CB49C: .4byte 0x0000019F

	thumb_func_start sub_080CB4A0
sub_080CB4A0: @ 0x080CB4A0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _080CB4EC @ =sub_080CADB8
	movs r1, #0
	bl ObjectSetFunc
	ldr r5, _080CB4F0 @ =gUnk_08355C86
	movs r0, #0x85
	adds r0, r0, r4
	mov ip, r0
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldrh r2, [r0]
	adds r3, r4, #0
	adds r3, #0x50
	strh r2, [r3]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CB4D0
	rsbs r0, r2, #0
	strh r0, [r3]
_080CB4D0:
	mov r1, ip
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x52
	strh r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080CB4EC: .4byte sub_080CADB8
_080CB4F0: .4byte gUnk_08355C86

	thumb_func_start sub_080CB4F4
sub_080CB4F4: @ 0x080CB4F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CB514 @ =sub_080C939C
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CB514: .4byte sub_080C939C

	thumb_func_start sub_080CB518
sub_080CB518: @ 0x080CB518
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _080CB54A
	adds r0, r2, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CB544
	adds r0, r2, #0
	bl sub_080C97F0
	b _080CB54A
_080CB544:
	adds r0, r2, #0
	bl sub_080C95D4
_080CB54A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CB550
sub_080CB550: @ 0x080CB550
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CB574 @ =sub_080C9A08
	movs r1, #5
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080CB57C
	ldr r0, _080CB578 @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x40]
	b _080CB582
	.align 2, 0
_080CB574: .4byte sub_080C9A08
_080CB578: .4byte 0xFFFFFF00
_080CB57C:
	ldr r0, _080CB59C @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x40]
_080CB582:
	ldr r1, [r4, #0x44]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080CB5A0
	ldr r0, _080CB59C @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x44]
	b _080CB5A6
	.align 2, 0
_080CB59C: .4byte 0xFFFFFF00
_080CB5A0:
	ldr r0, _080CB5B8 @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x44]
_080CB5A6:
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CB5B8: .4byte 0xFFFFFF00

	thumb_func_start sub_080CB5BC
sub_080CB5BC: @ 0x080CB5BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CB5E0 @ =sub_080C9BB4
	movs r1, #5
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080CB5E8
	ldr r0, _080CB5E4 @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x40]
	b _080CB5EE
	.align 2, 0
_080CB5E0: .4byte sub_080C9BB4
_080CB5E4: .4byte 0xFFFFFF00
_080CB5E8:
	ldr r0, _080CB608 @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x40]
_080CB5EE:
	ldr r1, [r4, #0x44]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080CB60C
	ldr r0, _080CB608 @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x44]
	b _080CB612
	.align 2, 0
_080CB608: .4byte 0xFFFFFF00
_080CB60C:
	ldr r0, _080CB624 @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x44]
_080CB612:
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CB624: .4byte 0xFFFFFF00

	thumb_func_start sub_080CB628
sub_080CB628: @ 0x080CB628
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CB64C @ =sub_080CA740
	movs r1, #0
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080CB654
	ldr r0, _080CB650 @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x40]
	b _080CB65A
	.align 2, 0
_080CB64C: .4byte sub_080CA740
_080CB650: .4byte 0xFFFFFF00
_080CB654:
	ldr r0, _080CB674 @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x40]
_080CB65A:
	ldr r1, [r4, #0x44]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080CB678
	ldr r0, _080CB674 @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x44]
	b _080CB67E
	.align 2, 0
_080CB674: .4byte 0xFFFFFF00
_080CB678:
	ldr r0, _080CB690 @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x44]
_080CB67E:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CB690: .4byte 0xFFFFFF00

	thumb_func_start sub_080CB694
sub_080CB694: @ 0x080CB694
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CB6B8 @ =sub_080CAB14
	movs r1, #0
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080CB6C0
	ldr r0, _080CB6BC @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x40]
	b _080CB6C6
	.align 2, 0
_080CB6B8: .4byte sub_080CAB14
_080CB6BC: .4byte 0xFFFFFF00
_080CB6C0:
	ldr r0, _080CB6E0 @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x40]
_080CB6C6:
	ldr r1, [r4, #0x44]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080CB6E4
	ldr r0, _080CB6E0 @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x44]
	b _080CB6EA
	.align 2, 0
_080CB6E0: .4byte 0xFFFFFF00
_080CB6E4:
	ldr r0, _080CB6F8 @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x44]
_080CB6EA:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CB6F8: .4byte 0xFFFFFF00
