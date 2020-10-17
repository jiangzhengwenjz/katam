	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	@ TODO: define file boundaries

	thumb_func_start CreateLargeStarStoneBlock
CreateLargeStarStoneBlock: @ 0x081201A8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _081201DC @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _081201E0 @ =sub_08120608
	str r1, [sp]
	movs r1, #0xec
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081201E4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081201EC
	.align 2, 0
_081201DC: .4byte ObjectMain
_081201E0: .4byte sub_08120608
_081201E4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081201EC:
	adds r6, r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r6, #8]
	ldr r1, _08120240 @ =0x82408040
	orrs r0, r1
	str r0, [r6, #8]
	ldr r1, [r6, #0x68]
	movs r2, #8
	rsbs r2, r2, #0
	ands r1, r2
	ldr r0, [r6, #0x5c]
	ands r0, r2
	movs r2, #4
	orrs r0, r2
	str r0, [r6, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r1, r0
	str r1, [r6, #0x68]
	ldr r0, [r6, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r6, #0xc]
	adds r0, r6, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #0x22]
	ands r1, r0
	cmp r1, #0
	beq _08120244
	adds r1, r6, #0
	adds r1, #0xe1
	movs r0, #5
	strb r0, [r1]
	subs r1, #0x5e
	movs r0, #1
	strb r0, [r1]
	b _0812024E
	.align 2, 0
_08120240: .4byte 0x82408040
_08120244:
	adds r0, r6, #0
	adds r0, #0xe1
	strb r2, [r0]
	subs r0, #0x5e
	strb r1, [r0]
_0812024E:
	movs r4, #0x10
	rsbs r4, r4, #0
	movs r5, #0x10
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #0x10
	bl sub_0803E308
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #0x10
	bl sub_0803E2B0
	adds r0, r6, #0
	bl ObjectInitSprite
	ldr r2, _0812029C @ =gUnk_08351648
	adds r0, r6, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0812029C: .4byte gUnk_08351648

	thumb_func_start sub_081202A0
sub_081202A0: @ 0x081202A0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	bl sub_0811EC80
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	movs r1, #6
	ldrsh r0, [r0, r1]
	lsls r3, r0, #8
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r2, [r4, #0x40]
	asrs r1, r2, #0xc
	ldr r0, [r0]
	cmp r0, r1
	bge _081202C6
	b _081203F4
_081202C6:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _081202E4
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r2, r5
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _081202F4
	b _081202F0
_081202E4:
	ldr r3, _081203E4 @ =0xFFFFFE00
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _081202F4
_081202F0:
	movs r0, #0
	strh r0, [r1]
_081202F4:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #4]
	ldr r3, _081203E8 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r5, _081203EC @ =0x0000065E
	adds r0, r0, r5
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	movs r1, #0
	str r1, [r0]
	adds r5, r4, #0
	adds r5, #0x56
	ldrb r0, [r5]
	ldr r1, [r4, #0x40]
	asrs r1, r1, #0xc
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, [r4, #0x44]
	asrs r2, r2, #0xc
	subs r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_081205CC
	ldrb r0, [r5]
	ldr r1, [r4, #0x40]
	asrs r1, r1, #0xc
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, [r4, #0x44]
	asrs r2, r2, #0xc
	subs r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_081205CC
	ldrb r0, [r5]
	ldr r1, [r4, #0x40]
	asrs r1, r1, #0xc
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, [r4, #0x44]
	asrs r2, r2, #0xc
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_081205CC
	ldrb r0, [r5]
	ldr r1, [r4, #0x40]
	asrs r1, r1, #0xc
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, [r4, #0x44]
	asrs r2, r2, #0xc
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_081205CC
	ldrb r0, [r5]
	ldr r1, [r4, #0x40]
	asrs r1, r1, #0xc
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, [r4, #0x44]
	asrs r2, r2, #0xc
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_081205CC
	ldrb r0, [r5]
	ldr r1, [r4, #0x40]
	asrs r1, r1, #0xc
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, [r4, #0x44]
	asrs r2, r2, #0xc
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_081205CC
	adds r1, r6, #0
	adds r1, #0xe8
	ldr r0, [r4, #0x44]
	asrs r0, r0, #0xc
	adds r0, #5
	str r0, [r1]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #0xc
	adds r0, #2
	subs r1, #1
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, _081203F0 @ =sub_08120438
	str r0, [r4, #0x78]
	b _08120428
	.align 2, 0
_081203E4: .4byte 0xFFFFFE00
_081203E8: .4byte gCurLevelInfo
_081203EC: .4byte 0x0000065E
_081203F0: .4byte sub_08120438
_081203F4:
	cmp r3, r2
	bge _08120428
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _08120416
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r2, r5
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08120426
	b _08120422
_08120416:
	ldr r5, _08120434 @ =0xFFFFFE00
	adds r0, r2, r5
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08120426
_08120422:
	movs r0, #0
	strh r0, [r1]
_08120426:
	str r3, [r4, #0x40]
_08120428:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08120434: .4byte 0xFFFFFE00

	thumb_func_start sub_08120438
sub_08120438: @ 0x08120438
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	mov sl, r7
	adds r0, #0xe8
	ldr r1, [r7, #0x44]
	asrs r1, r1, #0xc
	ldr r0, [r0]
	cmp r0, r1
	blt _081204CC
	movs r0, #0xe7
	adds r0, r0, r7
	mov r8, r0
	ldrb r6, [r0]
	cmp r6, r1
	bne _081204CC
	movs r1, #0x56
	adds r1, r1, r7
	mov sb, r1
	ldrb r5, [r1]
	ldr r4, [r7, #0x40]
	asrs r4, r4, #0xc
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_080023E4
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	mov r0, sb
	ldrb r6, [r0]
	ldr r5, [r7, #0x40]
	asrs r5, r5, #0xc
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r4, [r7, #0x44]
	asrs r4, r4, #0xc
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080023E4
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	mov r1, r8
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_081204CC:
	mov r1, sl
	adds r1, #0xe4
	ldrb r2, [r1]
	movs r0, #1
	ands r0, r2
	adds r3, r1, #0
	cmp r0, #0
	beq _081204E2
	movs r0, #4
	orrs r0, r2
	b _081204E6
_081204E2:
	movs r0, #0xfb
	ands r0, r2
_081204E6:
	strb r0, [r3]
	ldr r0, [r7, #0x44]
	asrs r0, r0, #8
	cmp r0, #0x50
	ble _08120506
	ldr r0, [r7, #0x18]
	ldr r1, _08120520 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r7, #0x18]
	ldrb r1, [r3]
	movs r0, #1
	orrs r0, r1
	strb r0, [r3]
_08120506:
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08120524
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08120524
	movs r0, #2
	orrs r0, r1
	b _0812052A
	.align 2, 0
_08120520: .4byte 0xFFFFCFFF
_08120524:
	ldrb r1, [r3]
	movs r0, #0xfd
	ands r0, r1
_0812052A:
	strb r0, [r3]
	ldrb r1, [r3]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08120552
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #5
	movs r3, #0
	bl sub_08089864
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #5
	movs r3, #1
	bl sub_08089864
_08120552:
	ldr r2, [r7, #0x44]
	asrs r2, r2, #8
	ldr r3, _08120590 @ =gCurLevelInfo
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r3
	adds r0, #0xbe
	ldrh r0, [r0]
	adds r0, #0x10
	cmp r2, r0
	blt _0812057A
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r7, #8]
_0812057A:
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08120590: .4byte gCurLevelInfo

	thumb_func_start sub_08120594
sub_08120594: @ 0x08120594
	adds r3, r0, #0
	movs r1, #0
	movs r0, #0
	strh r0, [r3, #4]
	adds r0, r3, #0
	adds r0, #0xe2
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #3
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r2, r3, #0
	adds r2, #0xe8
	ldr r0, [r3, #0x40]
	asrs r0, r0, #0xc
	subs r0, #3
	str r0, [r2]
	adds r0, r3, #0
	adds r0, #0xe4
	strb r1, [r0]
	ldr r0, _081205C8 @ =sub_081202A0
	str r0, [r3, #0x78]
	bx lr
	.align 2, 0
_081205C8: .4byte sub_081202A0

	thumb_func_start sub_081205CC
sub_081205CC: @ 0x081205CC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_080023E4
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08120608
sub_08120608: @ 0x08120608
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08120622
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0812062A
_08120622:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0812062A:
	adds r1, r0, #0
	adds r1, #0x56
	ldrb r6, [r1]
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r5, [r0, #2]
	ldrb r7, [r0, #3]
	ldr r1, _08120668 @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r6, r0
	adds r0, r0, r1
	ldr r1, _0812066C @ =0x0000065E
	adds r0, r0, r1
	ldrb r4, [r0]
	adds r0, r2, #0
	bl ObjectDestroy
	cmp r5, #0
	bne _08120656
	cmp r6, #0xff
	beq _08120662
_08120656:
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_08001678
_08120662:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08120668: .4byte gCurLevelInfo
_0812066C: .4byte 0x0000065E

	thumb_func_start sub_08120670
sub_08120670: @ 0x08120670
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r4, r0, #0
	ldr r7, _08120780 @ =gCurLevelInfo
	adds r0, #0x56
	ldrb r0, [r0]
	movs r5, #0xcd
	lsls r5, r5, #3
	muls r0, r5, r0
	adds r0, r0, r7
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	mov sb, r0
	adds r0, r4, #0
	bl sub_08039490
	adds r6, r0, #0
	mov r3, sp
	ldr r0, [r4, #0x40]
	adds r1, r4, #0
	adds r1, #0xb0
	ldr r2, [r1]
	asrs r0, r0, #8
	ldrh r1, [r2, #0x1a]
	adds r0, r0, r1
	strh r0, [r3]
	mov r1, sp
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	ldrh r3, [r2, #0x1c]
	adds r0, r0, r3
	strh r0, [r1, #2]
	mov r3, sp
	ldrh r0, [r2, #0x1e]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r3, #4]
	mov r0, sp
	ldrh r0, [r0, #2]
	ldrh r1, [r2, #0x20]
	adds r0, r0, r1
	strh r0, [r3, #6]
	ldr r0, [r6]
	cmp r0, #0
	beq _0812076C
	mov r8, r7
	adds r7, r5, #0
	mov r5, sp
_081206DA:
	ldr r1, [r6]
	adds r0, r1, #0
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r7, r0
	add r0, r8
	movs r2, #0xbf
	lsls r2, r2, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp sb, r0
	bne _08120764
	adds r0, r1, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x79
	beq _08120700
	cmp r0, #0x7d
	bne _08120764
_08120700:
	ldr r0, [r1, #0x40]
	lsls r0, r0, #8
	ldr r1, [r1, #0x44]
	lsls r1, r1, #8
	lsrs r3, r1, #0x10
	movs r2, #0
	ldrsh r1, [r5, r2]
	asrs r2, r0, #0x10
	cmp r1, r2
	bgt _08120764
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, r2
	blt _08120764
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsls r1, r3, #0x10
	asrs r2, r1, #0x10
	cmp r0, r1
	bgt _08120764
	movs r3, #6
	ldrsh r0, [r5, r3]
	cmp r0, r2
	blt _08120764
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r7, r0
	add r0, r8
	ldr r1, _08120784 @ =0x0000065E
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r0, #0
	movs r1, #0xf
	bl sub_08002888
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #0x11]
	ldr r0, [r2]
	cmp r0, r1
	bhs _0812075A
	str r1, [r2]
_0812075A:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_08120764:
	adds r6, #4
	ldr r0, [r6]
	cmp r0, #0
	bne _081206DA
_0812076C:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08120780: .4byte gCurLevelInfo
_08120784: .4byte 0x0000065E

	thumb_func_start sub_08120788
sub_08120788: @ 0x08120788
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	mov r3, sp
	ldr r0, [r4, #0x40]
	adds r1, r4, #0
	adds r1, #0xb0
	ldr r2, [r1]
	asrs r0, r0, #8
	ldrh r1, [r2, #0x1a]
	adds r0, r0, r1
	strh r0, [r3]
	mov r1, sp
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	ldrh r3, [r2, #0x1c]
	adds r0, r0, r3
	strh r0, [r1, #2]
	mov r3, sp
	ldrh r0, [r2, #0x1e]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r3, #4]
	mov r0, sp
	ldrh r0, [r0, #2]
	ldrh r1, [r2, #0x20]
	adds r0, r0, r1
	strh r0, [r3, #6]
	ldr r2, _081208E0 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	movs r1, #0xcd
	lsls r1, r1, #3
	muls r0, r1, r0
	adds r0, r0, r2
	movs r3, #0xbf
	lsls r3, r3, #3
	adds r0, r0, r3
	ldrh r0, [r0]
	str r0, [sp, #8]
	movs r5, #0
	ldr r0, _081208E4 @ =gUnk_0203AD44
	mov sl, r0
	ldrb r0, [r0]
	cmp r5, r0
	bhs _081208C8
	mov sb, r2
	mov r8, r1
	mov r6, sp
_081207F4:
	mov r0, r8
	muls r0, r5, r0
	add r0, sb
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r2, [sp, #8]
	ldrh r0, [r0]
	cmp r2, r0
	bne _081208BA
	adds r7, r4, #0
	adds r7, #0xb0
	ldr r0, [r7]
	ldrh r1, [r0, #0x22]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08120820
	ldr r0, _081208E8 @ =gUnk_0203AD30
	ldrb r0, [r0]
	cmp r5, r0
	blo _081208BA
_08120820:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08120830
	ldr r0, _081208E8 @ =gUnk_0203AD30
	ldrb r0, [r0]
	cmp r5, r0
	bhs _081208BA
_08120830:
	movs r3, #0
	ldrsh r2, [r6, r3]
	ldr r0, _081208EC @ =gUnk_02020EE0
	mov ip, r0
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r3, r5, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x40
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r1, r0, #8
	cmp r2, r1
	bgt _081208BA
	movs r2, #4
	ldrsh r0, [r6, r2]
	cmp r0, r1
	blt _081208BA
	movs r0, #2
	ldrsh r2, [r6, r0]
	mov r0, ip
	adds r0, #0x44
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r1, r0, #8
	cmp r2, r1
	bgt _081208BA
	movs r2, #6
	ldrsh r0, [r6, r2]
	cmp r0, r1
	blt _081208BA
	mov r0, ip
	adds r0, #0xc
	adds r0, r3, r0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _081208BA
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	add r0, sb
	ldr r1, _081208F0 @ =0x0000065E
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r0, #0
	movs r1, #0xf
	bl sub_08002888
	adds r2, r0, #0
	ldr r0, [r7]
	ldrb r1, [r0, #0x11]
	ldr r0, [r2]
	cmp r0, r1
	bhs _081208AC
	str r1, [r2]
_081208AC:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	ldr r2, _081208E4 @ =gUnk_0203AD44
	mov sl, r2
_081208BA:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	mov r3, sl
	ldrb r3, [r3]
	cmp r5, r3
	blo _081207F4
_081208C8:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081208E0: .4byte gCurLevelInfo
_081208E4: .4byte gUnk_0203AD44
_081208E8: .4byte gUnk_0203AD30
_081208EC: .4byte gUnk_02020EE0
_081208F0: .4byte 0x0000065E

	thumb_func_start sub_081208F4
sub_081208F4: @ 0x081208F4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _08120928 @ =ObjectMain
	ldr r2, _0812092C @ =0x00001001
	ldr r1, _08120930 @ =sub_081209D8
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08120934
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0812093C
	.align 2, 0
_08120928: .4byte ObjectMain
_0812092C: .4byte 0x00001001
_08120930: .4byte sub_081209D8
_08120934:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0812093C:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	ldr r1, _08120984 @ =gUnk_02018F40
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x5c]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r2, _08120988 @ =gUnk_08351648
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
_08120984: .4byte gUnk_02018F40
_08120988: .4byte gUnk_08351648

	thumb_func_start sub_0812098C
sub_0812098C: @ 0x0812098C
	push {lr}
	adds r3, r0, #0
	movs r0, #0
	strh r0, [r3, #4]
	ldr r1, [r3, #0x40]
	ldr r2, _081209C4 @ =0xFFFFF800
	adds r1, r1, r2
	str r1, [r3, #0x40]
	ldr r0, [r3, #0x44]
	adds r0, r0, r2
	str r0, [r3, #0x44]
	str r1, [r3, #0x48]
	str r0, [r3, #0x4c]
	adds r0, r3, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _081209CC
	movs r0, #6
	ands r0, r1
	cmp r0, #0
	beq _081209CC
	ldr r0, _081209C8 @ =sub_08120788
	b _081209CE
	.align 2, 0
_081209C4: .4byte 0xFFFFF800
_081209C8: .4byte sub_08120788
_081209CC:
	ldr r0, _081209D4 @ =sub_08120670
_081209CE:
	str r0, [r3, #0x78]
	pop {r0}
	bx r0
	.align 2, 0
_081209D4: .4byte sub_08120670

	thumb_func_start sub_081209D8
sub_081209D8: @ 0x081209D8
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081209F2
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081209FA
_081209F2:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081209FA:
	adds r1, r0, #0
	adds r1, #0x56
	ldrb r6, [r1]
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r5, [r0, #2]
	ldrb r7, [r0, #3]
	ldr r1, _08120A38 @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r6, r0
	adds r0, r0, r1
	ldr r1, _08120A3C @ =0x0000065E
	adds r0, r0, r1
	ldrb r4, [r0]
	adds r0, r2, #0
	bl ObjectDestroy
	cmp r5, #0
	bne _08120A26
	cmp r6, #0xff
	beq _08120A32
_08120A26:
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_08001678
_08120A32:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08120A38: .4byte gCurLevelInfo
_08120A3C: .4byte 0x0000065E

	thumb_func_start sub_08120A40
sub_08120A40: @ 0x08120A40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	mov sb, r0
	mov r1, sb
	adds r0, r1, #0
	str r0, [sp]
	movs r2, #0
	strh r2, [r1, #4]
	ldr r1, _08120B84 @ =gUnk_08357D20
	mov r3, sb
	adds r3, #0xb0
	ldr r0, [r3]
	ldrh r0, [r0, #0x14]
	adds r0, r0, r1
	ldrb r0, [r0]
	mov r4, sb
	adds r4, #0xb4
	strh r0, [r4]
	ldr r0, [r3]
	ldrh r0, [r0, #0x14]
	mov r1, sb
	adds r1, #0xb6
	strh r0, [r1]
	mov r0, sb
	adds r0, #0xb8
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	ldrh r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	bl EwramMalloc
	adds r1, r0, #0
	mov r0, sb
	adds r0, #0x8c
	str r1, [r0]
	subs r0, #0x36
	ldrb r0, [r0]
	str r0, [sp, #4]
	mov r2, sb
	ldr r0, [r2, #0x40]
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [r2, #0x44]
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	mov sl, r0
	ldrh r4, [r4]
	cmp r0, r4
	bhs _08120B6E
	ldr r2, [sp, #8]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x14]
	adds r7, r1, #0
	adds r0, r7, #0
	adds r0, #8
	str r0, [sp, #0x1c]
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x18]
_08120AD0:
	ldr r0, [sp]
	adds r0, #0xb6
	ldrh r0, [r0]
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #1
	mov r2, sl
	adds r0, r2, r1
	ldr r2, _08120B88 @ =gUnk_08357D30
	adds r0, r0, r2
	movs r5, #0
	ldrsb r5, [r0, r5]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #1
	add sl, r0
	add r1, sl
	adds r1, r1, r2
	movs r4, #0
	ldrsb r4, [r1, r4]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	add sl, r0
	ldr r1, [sp, #8]
	adds r1, r1, r5
	mov r8, r1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, [sp, #0xc]
	adds r6, r2, r4
	lsls r2, r6, #0x18
	lsrs r2, r2, #0x18
	ldr r0, [sp, #4]
	bl sub_080025AC
	str r0, [r7, #0x14]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	ldr r0, [sp, #0x14]
	adds r5, r0, r5
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r1, [sp, #0x18]
	adds r4, r1, r4
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [sp, #4]
	adds r1, r5, #0
	adds r2, r4, #0
	ldr r3, [sp, #0x1c]
	bl sub_080015A8
	ldr r0, [sp, #4]
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080023E4
	strb r0, [r7, #0x10]
	movs r0, #1
	strb r0, [r7]
	mov r2, r8
	strb r2, [r7, #2]
	strb r6, [r7, #3]
	movs r0, #0x14
	strh r0, [r7, #4]
	adds r7, #0x18
	ldr r0, [sp, #0x1c]
	adds r0, #0x18
	str r0, [sp, #0x1c]
	ldr r1, [sp, #0x10]
	adds r1, #1
	str r1, [sp, #0x10]
	ldr r0, [sp]
	adds r0, #0xb4
	ldrh r0, [r0]
	cmp r1, r0
	blo _08120AD0
_08120B6E:
	ldr r0, _08120B8C @ =sub_08120B90
	mov r2, sb
	str r0, [r2, #0x78]
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08120B84: .4byte gUnk_08357D20
_08120B88: .4byte gUnk_08357D30
_08120B8C: .4byte sub_08120B90

	thumb_func_start sub_08120B90
sub_08120B90: @ 0x08120B90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r6, r7, #0
	adds r0, #0x8c
	ldr r0, [r0]
	str r0, [sp]
	adds r5, r7, #0
	adds r5, #0x56
	ldrb r0, [r5]
	mov r8, r0
	adds r4, r7, #0
	adds r4, #0xb0
	ldr r0, [r4]
	ldrb r1, [r0, #4]
	ldr r2, _08120C2C @ =gCurLevelInfo
	mov sl, r2
	movs r3, #0xcd
	lsls r3, r3, #3
	mov sb, r3
	mov r0, r8
	muls r0, r3, r0
	add r0, sl
	ldr r2, _08120C30 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	beq _08120C14
	ldr r0, [r4]
	ldrb r1, [r0, #4]
	ldrb r0, [r5]
	mov r3, sb
	muls r3, r0, r3
	adds r0, r3, #0
	add r0, sl
	ldr r2, _08120C30 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	movs r1, #0
	str r1, [r0]
	ldr r0, [r4]
	ldrh r0, [r0, #0x12]
	adds r1, r7, #0
	adds r1, #0xba
	strh r0, [r1]
	adds r2, r7, #0
	adds r2, #0xb8
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08120C14
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r2]
_08120C14:
	adds r2, r6, #0
	adds r2, #0xba
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	ble _08120C34
	subs r0, r1, #1
	strh r0, [r2]
	adds r4, r6, #0
	adds r4, #0xb8
	b _08120C4E
	.align 2, 0
_08120C2C: .4byte gCurLevelInfo
_08120C30: .4byte 0x0000065E
_08120C34:
	adds r1, r6, #0
	adds r1, #0xb8
	ldrh r3, [r1]
	movs r0, #1
	ands r0, r3
	adds r4, r1, #0
	cmp r0, #0
	beq _08120C4A
	movs r0, #0x10
	orrs r0, r3
	strh r0, [r4]
_08120C4A:
	movs r0, #0
	strh r0, [r2]
_08120C4E:
	adds r2, r4, #0
	ldrh r3, [r2]
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0
	beq _08120CCE
	ldr r1, _08120C98 @ =0x0000FFEF
	ands r1, r3
	strh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08120CA0
	ldr r0, _08120C9C @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	movs r5, #0
	adds r0, r6, #0
	adds r0, #0xb4
	adds r6, r0, #0
	ldrh r0, [r6]
	cmp r5, r0
	bhs _08120CCE
	ldr r4, [sp]
_08120C7E:
	mov r0, r8
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	adds r4, #0x18
	adds r5, #1
	ldrh r2, [r6]
	cmp r5, r2
	blo _08120C7E
	b _08120CCE
	.align 2, 0
_08120C98: .4byte 0x0000FFEF
_08120C9C: .4byte 0x0000FFFE
_08120CA0:
	adds r0, r1, #0
	movs r1, #1
	orrs r0, r1
	strh r0, [r4]
	movs r5, #0
	adds r0, r6, #0
	adds r0, #0xb4
	adds r6, r0, #0
	ldrh r3, [r6]
	cmp r5, r3
	bhs _08120CCE
	ldr r4, [sp]
_08120CB8:
	ldr r1, [r4, #0x14]
	mov r0, r8
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	adds r4, #0x18
	adds r5, #1
	ldrh r0, [r6]
	cmp r5, r0
	blo _08120CB8
_08120CCE:
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08120CE4
sub_08120CE4: @ 0x08120CE4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _08120D18 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _08120D1C @ =sub_08120D78
	str r1, [sp]
	movs r1, #0xbc
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08120D20
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08120D28
	.align 2, 0
_08120D18: .4byte ObjectMain
_08120D1C: .4byte sub_08120D78
_08120D20:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08120D28:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	ldr r1, _08120D70 @ =gUnk_02018F40
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x5c]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r2, _08120D74 @ =gUnk_08351648
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
_08120D70: .4byte gUnk_02018F40
_08120D74: .4byte gUnk_08351648

	thumb_func_start sub_08120D78
sub_08120D78: @ 0x08120D78
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08120D92
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08120D9A
_08120D92:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08120D9A:
	adds r1, r0, #0
	adds r1, #0x56
	ldrb r6, [r1]
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r5, [r0, #2]
	ldrb r7, [r0, #3]
	ldr r1, _08120DD8 @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r6, r0
	adds r0, r0, r1
	ldr r1, _08120DDC @ =0x0000065E
	adds r0, r0, r1
	ldrb r4, [r0]
	adds r0, r2, #0
	bl ObjectDestroy
	cmp r5, #0
	bne _08120DC6
	cmp r6, #0xff
	beq _08120DD2
_08120DC6:
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_08001678
_08120DD2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08120DD8: .4byte gCurLevelInfo
_08120DDC: .4byte 0x0000065E

	thumb_func_start sub_08120DE0
sub_08120DE0: @ 0x08120DE0
	push {r4, lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xba
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bgt _08120E10
	adds r0, r2, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #0x1a]
	strh r0, [r1]
	subs r1, #2
	ldrh r0, [r1]
	cmp r0, #0
	beq _08120E08
	movs r0, #0
	b _08120E0A
_08120E08:
	movs r0, #1
_08120E0A:
	strh r0, [r1]
	movs r0, #1
	b _08120E16
_08120E10:
	subs r0, r3, #1
	strh r0, [r1]
	movs r0, #0
_08120E16:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08120E1C
sub_08120E1C: @ 0x08120E1C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_08120DE0
	cmp r0, #0
	beq _08120E5C
	adds r1, r4, #0
	adds r1, #0xb6
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	movs r4, #0
	orrs r2, r0
	strh r2, [r1]
	movs r0, #1
	ands r0, r2
	adds r3, r1, #0
	cmp r0, #0
	beq _08120E50
	ldr r0, _08120E4C @ =0x0000FFFD
	ands r2, r0
	b _08120E54
	.align 2, 0
_08120E4C: .4byte 0x0000FFFD
_08120E50:
	movs r0, #2
	orrs r2, r0
_08120E54:
	strh r2, [r3]
	ldrh r1, [r3]
	movs r0, #1
	b _08120EAC
_08120E5C:
	adds r0, r4, #0
	adds r0, #0xb6
	ldrh r1, [r0]
	ldr r5, _08120E98 @ =0x0000FEFF
	ands r5, r1
	movs r6, #0
	strh r5, [r0]
	adds r1, r4, #0
	adds r1, #0xb4
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r3, r0, #0
	adds r4, r1, #0
	cmp r2, #0
	bge _08120EB2
	ldr r1, _08120E9C @ =0x0000FFFE
	ands r1, r5
	ldr r0, _08120EA0 @ =0x0000FFDF
	ands r1, r0
	adds r0, #0x10
	ands r1, r0
	strh r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08120EA8
	ldr r0, _08120EA4 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r3]
	b _08120EDA
	.align 2, 0
_08120E98: .4byte 0x0000FEFF
_08120E9C: .4byte 0x0000FFFE
_08120EA0: .4byte 0x0000FFDF
_08120EA4: .4byte 0x0000FFFB
_08120EA8:
	adds r0, r1, #0
	movs r1, #4
_08120EAC:
	orrs r0, r1
	strh r0, [r3]
	b _08120EDA
_08120EB2:
	movs r0, #0x10
	ands r0, r5
	cmp r0, #0
	beq _08120EC4
	ldr r0, _08120EC0 @ =0x0000FFDF
	ands r0, r5
	b _08120ECA
	.align 2, 0
_08120EC0: .4byte 0x0000FFDF
_08120EC4:
	movs r1, #0x20
	adds r0, r5, #0
	orrs r0, r1
_08120ECA:
	strh r0, [r3]
	ldrh r0, [r3]
	movs r1, #0x10
	orrs r1, r0
	strh r1, [r3]
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
_08120EDA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08120EE0
sub_08120EE0: @ 0x08120EE0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0xb0
	ldr r0, [r4]
	ldrb r1, [r0, #4]
	ldr r3, _08120F38 @ =gCurLevelInfo
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _08120F3C @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	adds r3, r0, #0
	adds r0, r5, #0
	adds r0, #0xb6
	ldrh r0, [r0]
	movs r6, #1
	ands r6, r0
	cmp r6, #0
	beq _08120F5A
	adds r0, r5, #0
	adds r0, #0xb8
	ldrh r1, [r0]
	cmp r1, #0
	beq _08120F40
	ldr r0, [r4]
	ldrh r0, [r0, #0x14]
	lsrs r0, r0, #8
	movs r1, #0
	strb r0, [r3]
	ldr r0, [r4]
	ldrh r0, [r0, #0x14]
	strb r0, [r3, #1]
	ldr r0, [r4]
	ldrh r0, [r0, #0x12]
	b _08120F52
	.align 2, 0
_08120F38: .4byte gCurLevelInfo
_08120F3C: .4byte 0x0000065E
_08120F40:
	ldr r0, [r4]
	ldrh r0, [r0, #0x18]
	lsrs r0, r0, #8
	strb r0, [r3]
	ldr r0, [r4]
	ldrh r0, [r0, #0x18]
	strb r0, [r3, #1]
	ldr r0, [r4]
	ldrh r0, [r0, #0x16]
_08120F52:
	lsrs r0, r0, #8
	strb r0, [r3, #2]
	strb r1, [r3, #3]
	b _08120F8A
_08120F5A:
	ldr r1, [r4]
	ldrh r0, [r1, #0x14]
	lsrs r2, r0, #8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrh r0, [r1, #0x12]
	lsrs r1, r0, #8
	ldrb r0, [r3]
	cmp r0, r2
	bne _08120F8A
	ldrb r0, [r3, #1]
	cmp r0, r4
	bne _08120F8A
	ldrb r0, [r3, #2]
	movs r2, #1
	cmp r0, r1
	beq _08120F7E
	movs r2, #0
_08120F7E:
	cmp r2, #0
	beq _08120F8A
	strb r6, [r3]
	strb r6, [r3, #1]
	strb r6, [r3, #2]
	strb r6, [r3, #3]
_08120F8A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08120F90
sub_08120F90: @ 0x08120F90
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _08120FC4 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _08120FC8 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xbc
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08120FCC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08120FD4
	.align 2, 0
_08120FC4: .4byte ObjectMain
_08120FC8: .4byte ObjectDestroy
_08120FCC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08120FD4:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	ldr r1, _08121024 @ =gUnk_02008300
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r2, _08121028 @ =gUnk_08351648
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
_08121024: .4byte gUnk_02008300
_08121028: .4byte gUnk_08351648

	thumb_func_start sub_0812102C
sub_0812102C: @ 0x0812102C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08121074 @ =sub_08121080
	str r0, [r4, #0x78]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #4]
	ldr r3, _08121078 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _0812107C @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	movs r1, #0
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0xb4
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08121074: .4byte sub_08121080
_08121078: .4byte gCurLevelInfo
_0812107C: .4byte 0x0000065E

	thumb_func_start sub_08121080
sub_08121080: @ 0x08121080
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08120E1C
	adds r0, r4, #0
	bl sub_08120EE0
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0812109C
sub_0812109C: @ 0x0812109C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _081210D0 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _081210D4 @ =sub_081214F4
	str r1, [sp]
	movs r1, #0xec
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081210D8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081210E0
	.align 2, 0
_081210D0: .4byte ObjectMain
_081210D4: .4byte sub_081214F4
_081210D8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081210E0:
	adds r6, r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r6, #8]
	ldr r1, _08121134 @ =0x82408040
	orrs r0, r1
	str r0, [r6, #8]
	ldr r1, [r6, #0x68]
	movs r2, #8
	rsbs r2, r2, #0
	ands r1, r2
	ldr r0, [r6, #0x5c]
	ands r0, r2
	movs r2, #4
	orrs r0, r2
	str r0, [r6, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r1, r0
	str r1, [r6, #0x68]
	ldr r0, [r6, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r6, #0xc]
	adds r0, r6, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #0x22]
	ands r1, r0
	cmp r1, #0
	beq _08121138
	adds r1, r6, #0
	adds r1, #0xe1
	movs r0, #5
	strb r0, [r1]
	subs r1, #0x5e
	movs r0, #1
	strb r0, [r1]
	b _08121142
	.align 2, 0
_08121134: .4byte 0x82408040
_08121138:
	adds r0, r6, #0
	adds r0, #0xe1
	strb r2, [r0]
	subs r0, #0x5e
	strb r1, [r0]
_08121142:
	movs r4, #0x10
	rsbs r4, r4, #0
	movs r5, #0x10
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #0x10
	bl sub_0803E308
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #0x10
	bl sub_0803E2B0
	adds r0, r6, #0
	bl ObjectInitSprite
	ldr r2, _08121190 @ =gUnk_08351648
	adds r0, r6, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08121190: .4byte gUnk_08351648

	thumb_func_start sub_08121194
sub_08121194: @ 0x08121194
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	bl sub_0811EC80
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	movs r1, #6
	ldrsh r0, [r0, r1]
	lsls r3, r0, #8
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r2, [r4, #0x40]
	asrs r1, r2, #0xc
	ldr r0, [r0]
	cmp r0, r1
	ble _081211BA
	b _081212E0
_081211BA:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _081211D8
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r2, r5
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _081211E8
	b _081211E4
_081211D8:
	ldr r3, _081212D0 @ =0xFFFFFE00
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _081211E8
_081211E4:
	movs r0, #0
	strh r0, [r1]
_081211E8:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #4]
	ldr r3, _081212D4 @ =gCurLevelInfo
	adds r5, r4, #0
	adds r5, #0x56
	ldrb r2, [r5]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _081212D8 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	movs r1, #0
	str r1, [r0]
	ldrb r0, [r5]
	ldr r1, [r4, #0x40]
	asrs r1, r1, #0xc
	subs r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, [r4, #0x44]
	asrs r2, r2, #0xc
	subs r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_081214B8
	ldrb r0, [r5]
	ldr r1, [r4, #0x40]
	asrs r1, r1, #0xc
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, [r4, #0x44]
	asrs r2, r2, #0xc
	subs r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_081214B8
	ldrb r0, [r5]
	ldr r1, [r4, #0x40]
	asrs r1, r1, #0xc
	subs r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, [r4, #0x44]
	asrs r2, r2, #0xc
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_081214B8
	ldrb r0, [r5]
	ldr r1, [r4, #0x40]
	asrs r1, r1, #0xc
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, [r4, #0x44]
	asrs r2, r2, #0xc
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_081214B8
	ldrb r0, [r5]
	ldr r1, [r4, #0x40]
	asrs r1, r1, #0xc
	subs r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, [r4, #0x44]
	asrs r2, r2, #0xc
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_081214B8
	ldrb r0, [r5]
	ldr r1, [r4, #0x40]
	asrs r1, r1, #0xc
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, [r4, #0x44]
	asrs r2, r2, #0xc
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_081214B8
	adds r1, r6, #0
	adds r1, #0xe8
	ldr r0, [r4, #0x44]
	asrs r0, r0, #0xc
	adds r0, #7
	str r0, [r1]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #0xc
	adds r0, #2
	subs r1, #1
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, _081212DC @ =sub_08121324
	str r0, [r4, #0x78]
	b _08121314
	.align 2, 0
_081212D0: .4byte 0xFFFFFE00
_081212D4: .4byte gCurLevelInfo
_081212D8: .4byte 0x0000065E
_081212DC: .4byte sub_08121324
_081212E0:
	cmp r3, r2
	ble _08121314
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _08121302
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r2, r5
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08121312
	b _0812130E
_08121302:
	ldr r5, _08121320 @ =0xFFFFFE00
	adds r0, r2, r5
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08121312
_0812130E:
	movs r0, #0
	strh r0, [r1]
_08121312:
	str r3, [r4, #0x40]
_08121314:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08121320: .4byte 0xFFFFFE00

	thumb_func_start sub_08121324
sub_08121324: @ 0x08121324
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	mov sl, r7
	adds r0, #0xe8
	ldr r1, [r7, #0x44]
	asrs r1, r1, #0xc
	ldr r0, [r0]
	cmp r0, r1
	blt _081213B8
	movs r0, #0xe7
	adds r0, r0, r7
	mov r8, r0
	ldrb r6, [r0]
	cmp r6, r1
	bne _081213B8
	movs r1, #0x56
	adds r1, r1, r7
	mov sb, r1
	ldrb r5, [r1]
	ldr r4, [r7, #0x40]
	asrs r4, r4, #0xc
	subs r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_080023E4
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	mov r0, sb
	ldrb r6, [r0]
	ldr r5, [r7, #0x40]
	asrs r5, r5, #0xc
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r4, [r7, #0x44]
	asrs r4, r4, #0xc
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080023E4
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	mov r1, r8
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_081213B8:
	mov r1, sl
	adds r1, #0xe4
	ldrb r2, [r1]
	movs r0, #1
	ands r0, r2
	adds r3, r1, #0
	cmp r0, #0
	beq _081213CE
	movs r0, #4
	orrs r0, r2
	b _081213D2
_081213CE:
	movs r0, #0xfb
	ands r0, r2
_081213D2:
	strb r0, [r3]
	ldr r0, [r7, #0x44]
	asrs r0, r0, #8
	cmp r0, #0x70
	ble _081213F2
	ldr r0, [r7, #0x18]
	ldr r1, _0812140C @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r7, #0x18]
	ldrb r1, [r3]
	movs r0, #1
	orrs r0, r1
	strb r0, [r3]
_081213F2:
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08121410
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08121410
	movs r0, #2
	orrs r0, r1
	b _08121416
	.align 2, 0
_0812140C: .4byte 0xFFFFCFFF
_08121410:
	ldrb r1, [r3]
	movs r0, #0xfd
	ands r0, r1
_08121416:
	strb r0, [r3]
	ldrb r1, [r3]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0812143E
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #5
	movs r3, #0
	bl sub_08089864
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #5
	movs r3, #1
	bl sub_08089864
_0812143E:
	ldr r2, [r7, #0x44]
	asrs r2, r2, #8
	ldr r3, _0812147C @ =gCurLevelInfo
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r3
	adds r0, #0xbe
	ldrh r0, [r0]
	adds r0, #0x10
	cmp r2, r0
	blt _08121466
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r7, #8]
_08121466:
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0812147C: .4byte gCurLevelInfo

	thumb_func_start sub_08121480
sub_08121480: @ 0x08121480
	adds r3, r0, #0
	movs r1, #0
	movs r0, #0
	strh r0, [r3, #4]
	adds r0, r3, #0
	adds r0, #0xe2
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #3
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r2, r3, #0
	adds r2, #0xe8
	ldr r0, [r3, #0x40]
	asrs r0, r0, #0xc
	adds r0, #2
	str r0, [r2]
	adds r0, r3, #0
	adds r0, #0xe4
	strb r1, [r0]
	ldr r0, _081214B4 @ =sub_08121194
	str r0, [r3, #0x78]
	bx lr
	.align 2, 0
_081214B4: .4byte sub_08121194

	thumb_func_start sub_081214B8
sub_081214B8: @ 0x081214B8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_080023E4
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_081214F4
sub_081214F4: @ 0x081214F4
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0812150E
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08121516
_0812150E:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08121516:
	adds r1, r0, #0
	adds r1, #0x56
	ldrb r6, [r1]
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r5, [r0, #2]
	ldrb r7, [r0, #3]
	ldr r1, _08121554 @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r6, r0
	adds r0, r0, r1
	ldr r1, _08121558 @ =0x0000065E
	adds r0, r0, r1
	ldrb r4, [r0]
	adds r0, r2, #0
	bl ObjectDestroy
	cmp r5, #0
	bne _08121542
	cmp r6, #0xff
	beq _0812154E
_08121542:
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_08001678
_0812154E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08121554: .4byte gCurLevelInfo
_08121558: .4byte 0x0000065E

	thumb_func_start sub_0812155C
sub_0812155C: @ 0x0812155C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _08121590 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _08121594 @ =sub_081219B4
	str r1, [sp]
	movs r1, #0xec
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08121598
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081215A0
	.align 2, 0
_08121590: .4byte ObjectMain
_08121594: .4byte sub_081219B4
_08121598:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081215A0:
	adds r6, r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r6, #8]
	ldr r1, _081215F4 @ =0x82408040
	orrs r0, r1
	str r0, [r6, #8]
	ldr r1, [r6, #0x68]
	movs r2, #8
	rsbs r2, r2, #0
	ands r1, r2
	ldr r0, [r6, #0x5c]
	ands r0, r2
	movs r2, #4
	orrs r0, r2
	str r0, [r6, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r1, r0
	str r1, [r6, #0x68]
	ldr r0, [r6, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r6, #0xc]
	adds r0, r6, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #0x22]
	ands r1, r0
	cmp r1, #0
	beq _081215F8
	adds r1, r6, #0
	adds r1, #0xe1
	movs r0, #5
	strb r0, [r1]
	subs r1, #0x5e
	movs r0, #1
	strb r0, [r1]
	b _08121602
	.align 2, 0
_081215F4: .4byte 0x82408040
_081215F8:
	adds r0, r6, #0
	adds r0, #0xe1
	strb r2, [r0]
	subs r0, #0x5e
	strb r1, [r0]
_08121602:
	movs r4, #0x10
	rsbs r4, r4, #0
	movs r5, #0x10
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #0x10
	bl sub_0803E308
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #0x10
	bl sub_0803E2B0
	adds r0, r6, #0
	bl ObjectInitSprite
	ldr r2, _08121650 @ =gUnk_08351648
	adds r0, r6, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08121650: .4byte gUnk_08351648

	thumb_func_start sub_08121654
sub_08121654: @ 0x08121654
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	bl sub_0811EC80
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	movs r1, #6
	ldrsh r0, [r0, r1]
	lsls r3, r0, #8
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r2, [r4, #0x40]
	asrs r1, r2, #0xc
	ldr r0, [r0]
	cmp r0, r1
	bge _0812167A
	b _081217A0
_0812167A:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _08121698
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r2, r5
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _081216A8
	b _081216A4
_08121698:
	ldr r3, _08121790 @ =0xFFFFFE00
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _081216A8
_081216A4:
	movs r0, #0
	strh r0, [r1]
_081216A8:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #4]
	ldr r3, _08121794 @ =gCurLevelInfo
	adds r5, r4, #0
	adds r5, #0x56
	ldrb r2, [r5]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _08121798 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	movs r1, #0
	str r1, [r0]
	ldrb r0, [r5]
	ldr r1, [r4, #0x40]
	asrs r1, r1, #0xc
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, [r4, #0x44]
	asrs r2, r2, #0xc
	subs r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_08121978
	ldrb r0, [r5]
	ldr r1, [r4, #0x40]
	asrs r1, r1, #0xc
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, [r4, #0x44]
	asrs r2, r2, #0xc
	subs r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_08121978
	ldrb r0, [r5]
	ldr r1, [r4, #0x40]
	asrs r1, r1, #0xc
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, [r4, #0x44]
	asrs r2, r2, #0xc
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_08121978
	ldrb r0, [r5]
	ldr r1, [r4, #0x40]
	asrs r1, r1, #0xc
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, [r4, #0x44]
	asrs r2, r2, #0xc
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_08121978
	ldrb r0, [r5]
	ldr r1, [r4, #0x40]
	asrs r1, r1, #0xc
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, [r4, #0x44]
	asrs r2, r2, #0xc
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_08121978
	ldrb r0, [r5]
	ldr r1, [r4, #0x40]
	asrs r1, r1, #0xc
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, [r4, #0x44]
	asrs r2, r2, #0xc
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_08121978
	adds r1, r6, #0
	adds r1, #0xe8
	ldr r0, [r4, #0x44]
	asrs r0, r0, #0xc
	adds r0, #7
	str r0, [r1]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #0xc
	adds r0, #2
	subs r1, #1
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, _0812179C @ =sub_081217E4
	str r0, [r4, #0x78]
	b _081217D4
	.align 2, 0
_08121790: .4byte 0xFFFFFE00
_08121794: .4byte gCurLevelInfo
_08121798: .4byte 0x0000065E
_0812179C: .4byte sub_081217E4
_081217A0:
	cmp r3, r2
	bge _081217D4
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _081217C2
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r2, r5
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _081217D2
	b _081217CE
_081217C2:
	ldr r5, _081217E0 @ =0xFFFFFE00
	adds r0, r2, r5
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _081217D2
_081217CE:
	movs r0, #0
	strh r0, [r1]
_081217D2:
	str r3, [r4, #0x40]
_081217D4:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081217E0: .4byte 0xFFFFFE00

	thumb_func_start sub_081217E4
sub_081217E4: @ 0x081217E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	mov sl, r7
	adds r0, #0xe8
	ldr r1, [r7, #0x44]
	asrs r1, r1, #0xc
	ldr r0, [r0]
	cmp r0, r1
	blt _08121878
	movs r0, #0xe7
	adds r0, r0, r7
	mov r8, r0
	ldrb r6, [r0]
	cmp r6, r1
	bne _08121878
	movs r1, #0x56
	adds r1, r1, r7
	mov sb, r1
	ldrb r5, [r1]
	ldr r4, [r7, #0x40]
	asrs r4, r4, #0xc
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_080023E4
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	mov r0, sb
	ldrb r6, [r0]
	ldr r5, [r7, #0x40]
	asrs r5, r5, #0xc
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r4, [r7, #0x44]
	asrs r4, r4, #0xc
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080023E4
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	mov r1, r8
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08121878:
	mov r1, sl
	adds r1, #0xe4
	ldrb r2, [r1]
	movs r0, #1
	ands r0, r2
	adds r3, r1, #0
	cmp r0, #0
	beq _0812188E
	movs r0, #4
	orrs r0, r2
	b _08121892
_0812188E:
	movs r0, #0xfb
	ands r0, r2
_08121892:
	strb r0, [r3]
	ldr r0, [r7, #0x44]
	asrs r0, r0, #8
	cmp r0, #0x70
	ble _081218B2
	ldr r0, [r7, #0x18]
	ldr r1, _081218CC @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r7, #0x18]
	ldrb r1, [r3]
	movs r0, #1
	orrs r0, r1
	strb r0, [r3]
_081218B2:
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _081218D0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _081218D0
	movs r0, #2
	orrs r0, r1
	b _081218D6
	.align 2, 0
_081218CC: .4byte 0xFFFFCFFF
_081218D0:
	ldrb r1, [r3]
	movs r0, #0xfd
	ands r0, r1
_081218D6:
	strb r0, [r3]
	ldrb r1, [r3]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _081218FE
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #5
	movs r3, #0
	bl sub_08089864
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #5
	movs r3, #1
	bl sub_08089864
_081218FE:
	ldr r2, [r7, #0x44]
	asrs r2, r2, #8
	ldr r3, _0812193C @ =gCurLevelInfo
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r3
	adds r0, #0xbe
	ldrh r0, [r0]
	adds r0, #0x10
	cmp r2, r0
	blt _08121926
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r7, #8]
_08121926:
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0812193C: .4byte gCurLevelInfo

	thumb_func_start sub_08121940
sub_08121940: @ 0x08121940
	adds r3, r0, #0
	movs r1, #0
	movs r0, #0
	strh r0, [r3, #4]
	adds r0, r3, #0
	adds r0, #0xe2
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #3
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r2, r3, #0
	adds r2, #0xe8
	ldr r0, [r3, #0x40]
	asrs r0, r0, #0xc
	subs r0, #3
	str r0, [r2]
	adds r0, r3, #0
	adds r0, #0xe4
	strb r1, [r0]
	ldr r0, _08121974 @ =sub_08121654
	str r0, [r3, #0x78]
	bx lr
	.align 2, 0
_08121974: .4byte sub_08121654

	thumb_func_start sub_08121978
sub_08121978: @ 0x08121978
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_080023E4
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_081219B4
sub_081219B4: @ 0x081219B4
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081219CE
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081219D6
_081219CE:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081219D6:
	adds r1, r0, #0
	adds r1, #0x56
	ldrb r6, [r1]
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r5, [r0, #2]
	ldrb r7, [r0, #3]
	ldr r1, _08121A14 @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r6, r0
	adds r0, r0, r1
	ldr r1, _08121A18 @ =0x0000065E
	adds r0, r0, r1
	ldrb r4, [r0]
	adds r0, r2, #0
	bl ObjectDestroy
	cmp r5, #0
	bne _08121A02
	cmp r6, #0xff
	beq _08121A0E
_08121A02:
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_08001678
_08121A0E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08121A14: .4byte gCurLevelInfo
_08121A18: .4byte 0x0000065E
