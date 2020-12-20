	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateBlipper
CreateBlipper: @ 0x080A50C0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080A50F4 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080A50F8 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A50FC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080A5104
	.align 2, 0
_080A50F4: .4byte ObjectMain
_080A50F8: .4byte ObjectDestroy
_080A50FC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080A5104:
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
	ble _080A5124
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080A512C
_080A5124:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080A512C:
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0xc]
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
	ldr r2, _080A5184 @ =gUnk_08351648
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
_080A5184: .4byte gUnk_08351648

	thumb_func_start sub_080A5188
sub_080A5188: @ 0x080A5188
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A51B2
	movs r6, #0x18
	movs r0, #0x90
	lsls r0, r0, #1
	mov sb, r0
	b _080A51B8
_080A51B2:
	movs r6, #0xc
	movs r1, #0xc0
	mov sb, r1
_080A51B8:
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r1, [r0]
	str r0, [sp]
	cmp r1, #6
	bls _080A51CA
	lsls r0, r6, #0x10
	rsbs r0, r0, #0
	lsrs r6, r0, #0x10
_080A51CA:
	adds r4, r5, #0
	adds r4, #0x9e
	ldrb r0, [r4]
	adds r0, #1
	movs r2, #0
	mov sl, r2
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r3, r5, #0
	adds r3, #0xa0
	str r3, [sp, #4]
	adds r7, r5, #0
	adds r7, #0xa2
	cmp r0, #0xf
	bls _080A520C
	adds r0, r5, #0
	bl sub_0803D368
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	mov r0, sl
	strb r0, [r4]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	ldr r2, [sp, #4]
	strh r0, [r2]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r7]
_080A520C:
	ldr r2, [r5, #0x44]
	ldr r1, _080A5244 @ =0xFFFFF000
	ands r2, r1
	movs r3, #0
	ldrsh r0, [r7, r3]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	ble _080A5258
	lsls r0, r6, #0x10
	asrs r2, r0, #0x10
	adds r3, r0, #0
	cmp r2, #0
	ble _080A5248
	adds r0, r5, #0
	adds r0, #0x52
	ldrh r1, [r0]
	adds r1, r2, r1
	strh r1, [r0]
	lsls r1, r1, #0x10
	mov r4, sb
	lsls r2, r4, #0x10
	mov r8, r0
	adds r7, r2, #0
	cmp r1, r7
	ble _080A52E6
	strh r4, [r0]
	b _080A52E6
	.align 2, 0
_080A5244: .4byte 0xFFFFF000
_080A5248:
	adds r0, r5, #0
	adds r0, #0x52
	ldrh r1, [r0]
	adds r1, r2, r1
	strh r1, [r0]
	movs r6, #0
	ldrsh r1, [r0, r6]
	b _080A5290
_080A5258:
	cmp r2, r0
	bge _080A52A0
	lsls r0, r6, #0x10
	asrs r2, r0, #0x10
	adds r3, r0, #0
	cmp r2, #0
	bge _080A5282
	adds r0, r5, #0
	adds r0, #0x52
	ldrh r1, [r0]
	subs r1, r1, r2
	strh r1, [r0]
	lsls r1, r1, #0x10
	mov r6, sb
	lsls r2, r6, #0x10
	mov r8, r0
	adds r7, r2, #0
	cmp r1, r7
	ble _080A52E6
	strh r6, [r0]
	b _080A52E6
_080A5282:
	adds r0, r5, #0
	adds r0, #0x52
	ldrh r1, [r0]
	subs r1, r1, r2
	strh r1, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
_080A5290:
	mov r4, sb
	rsbs r2, r4, #0
	mov r8, r0
	lsls r7, r4, #0x10
	cmp r1, r2
	bge _080A52E6
	strh r2, [r0]
	b _080A52E6
_080A52A0:
	adds r0, r5, #0
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	mov r8, r0
	cmp r1, #0
	bge _080A52CC
	lsls r1, r6, #0x10
	asrs r0, r1, #0x11
	adds r0, r2, r0
	mov r4, r8
	strh r0, [r4]
	lsls r0, r0, #0x10
	adds r3, r1, #0
	mov r6, sb
	lsls r7, r6, #0x10
	cmp r0, #0
	ble _080A52E6
	mov r0, sl
	strh r0, [r4]
	b _080A52E6
_080A52CC:
	lsls r1, r6, #0x10
	asrs r0, r1, #0x11
	subs r0, r2, r0
	mov r2, r8
	strh r0, [r2]
	lsls r0, r0, #0x10
	adds r3, r1, #0
	mov r4, sb
	lsls r7, r4, #0x10
	cmp r0, #0
	bge _080A52E6
	mov r6, sl
	strh r6, [r2]
_080A52E6:
	ldr r2, [r5, #0x40]
	ldr r1, _080A531C @ =0xFFFFF000
	ands r2, r1
	ldr r4, [sp, #4]
	movs r6, #0
	ldrsh r0, [r4, r6]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	bge _080A5320
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x50
	asrs r0, r3, #0x10
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r7, #0x10
	adds r6, r1, #0
	cmp r0, r7
	bgt _080A5372
	b _080A5378
	.align 2, 0
_080A531C: .4byte 0xFFFFF000
_080A5320:
	cmp r2, r0
	ble _080A5386
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	beq _080A535C
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r2, [r1]
	asrs r0, r3, #0x10
	subs r2, r2, r0
	strh r2, [r1]
	movs r6, #0
	ldrsh r0, [r1, r6]
	asrs r4, r7, #0x10
	rsbs r3, r4, #0
	adds r6, r1, #0
	cmp r0, r3
	bge _080A5350
	strh r3, [r6]
	b _080A53B4
_080A5350:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, r4
	ble _080A53B4
	mov r0, sb
	b _080A53B2
_080A535C:
	adds r1, r5, #0
	adds r1, #0x50
	asrs r0, r3, #0x10
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r7, #0x10
	adds r6, r1, #0
	cmp r0, r7
	ble _080A5378
_080A5372:
	mov r3, sb
	strh r3, [r6]
	b _080A53B4
_080A5378:
	movs r4, #0
	ldrsh r0, [r6, r4]
	rsbs r1, r2, #0
	cmp r0, r1
	bge _080A53B4
	strh r1, [r6]
	b _080A53B4
_080A5386:
	adds r0, r5, #0
	adds r0, #0x50
	ldrh r2, [r0]
	movs r6, #0
	ldrsh r1, [r0, r6]
	adds r6, r0, #0
	cmp r1, #0
	bge _080A53A4
	asrs r0, r3, #0x11
	subs r0, r2, r0
	strh r0, [r6]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080A53B4
	b _080A53B0
_080A53A4:
	asrs r0, r3, #0x11
	adds r0, r2, r0
	strh r0, [r6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080A53B4
_080A53B0:
	movs r0, #0
_080A53B2:
	strh r0, [r6]
_080A53B4:
	asrs r2, r7, #0x10
	movs r1, #0
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bge _080A53C0
	rsbs r0, r0, #0
_080A53C0:
	cmp r2, r0
	beq _080A53CC
	movs r3, #0
	ldrsh r0, [r6, r3]
	cmp r0, #0
	bne _080A53EE
_080A53CC:
	mov r4, r8
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080A53D8
	rsbs r0, r0, #0
_080A53D8:
	cmp r2, r0
	beq _080A53E6
	mov r2, r8
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bne _080A53EE
_080A53E6:
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #2
	b _080A5404
_080A53EE:
	ldr r4, [sp]
	ldrb r0, [r4]
	cmp r0, #6
	bls _080A53FE
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #1
	b _080A5404
_080A53FE:
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #0
_080A5404:
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080A541A
	ldrh r0, [r6]
	rsbs r0, r0, #0
	strh r0, [r6]
_080A541A:
	ldrb r1, [r2]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _080A542C
	ldrh r0, [r5, #4]
	rsbs r0, r0, #0
	mov r1, r8
	strh r0, [r1]
_080A542C:
	movs r7, #2
	mov r2, r8
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	ble _080A5474
	ldr r4, _080A546C @ =gCurLevelInfo
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	mov sb, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r3, sb
	muls r3, r0, r3
	adds r0, r4, #0
	adds r0, #0x50
	adds r0, r3, r0
	ldr r1, [r5, #0x40]
	ldr r0, [r0]
	cmp r1, r0
	bgt _080A54DC
	adds r0, r4, #0
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r1, r0
	blt _080A54DC
	ldr r2, [r5, #0x44]
	ldr r0, _080A5470 @ =0xFFFFF800
	b _080A54AA
	.align 2, 0
_080A546C: .4byte gCurLevelInfo
_080A5470: .4byte 0xFFFFF800
_080A5474:
	cmp r0, #0
	bge _080A54DC
	ldr r4, _080A5550 @ =gCurLevelInfo
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	mov sb, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r3, sb
	muls r3, r0, r3
	adds r0, r4, #0
	adds r0, #0x50
	adds r0, r3, r0
	ldr r1, [r5, #0x40]
	ldr r0, [r0]
	cmp r1, r0
	bgt _080A54DC
	adds r0, r4, #0
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r1, r0
	blt _080A54DC
	ldr r2, [r5, #0x44]
	movs r0, #0x80
	lsls r0, r0, #4
_080A54AA:
	adds r2, r2, r0
	adds r0, r4, #0
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r2, r0
	bgt _080A54DC
	adds r0, r4, #0
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r2, r0
	blt _080A54DC
	ldr r4, _080A5554 @ =gUnk_082D88B8
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	mov r0, sb
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r7, [r0]
_080A54DC:
	movs r0, #2
	ands r7, r0
	cmp r7, #0
	bne _080A54EC
	mov r1, r8
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080A54EC:
	movs r7, #2
	movs r2, #0
	ldrsh r0, [r6, r2]
	cmp r0, #0
	ble _080A5558
	ldr r0, [r5, #0x40]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r0, r3
	ldr r4, _080A5550 @ =gCurLevelInfo
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r6, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	adds r0, r4, #0
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r1, r0
	bgt _080A55CC
	adds r0, r4, #0
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r1, r0
	blt _080A55CC
	adds r0, r4, #0
	adds r0, #0x54
	adds r0, r3, r0
	ldr r2, [r5, #0x44]
	ldr r0, [r0]
	cmp r2, r0
	bgt _080A55CC
	adds r0, r4, #0
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r2, r0
	blt _080A55CC
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	b _080A55CC
	.align 2, 0
_080A5550: .4byte gCurLevelInfo
_080A5554: .4byte gUnk_082D88B8
_080A5558:
	cmp r0, #0
	bge _080A55CC
	ldr r0, [r5, #0x40]
	ldr r4, _080A5610 @ =0xFFFFF800
	adds r1, r0, r4
	ldr r4, _080A5614 @ =gCurLevelInfo
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	mov sb, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r3, sb
	muls r3, r0, r3
	adds r0, r4, #0
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r1, r0
	bgt _080A55BE
	adds r0, r4, #0
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r1, r0
	blt _080A55BE
	adds r0, r4, #0
	adds r0, #0x54
	adds r0, r3, r0
	ldr r2, [r5, #0x44]
	ldr r0, [r0]
	cmp r2, r0
	bgt _080A55BE
	adds r0, r4, #0
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r2, r0
	blt _080A55BE
	ldr r4, _080A5618 @ =gUnk_082D88B8
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	mov r0, sb
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r7, [r0]
_080A55BE:
	movs r0, #2
	ands r7, r0
	cmp r7, #0
	bne _080A55CC
	ldrh r0, [r6]
	rsbs r0, r0, #0
	strh r0, [r6]
_080A55CC:
	adds r1, r5, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080A55EA
	ldr r6, [sp]
	ldrb r0, [r6]
	cmp r0, #6
	bhi _080A55EA
	adds r0, #1
	strb r0, [r6]
_080A55EA:
	mov r1, r8
	ldrh r0, [r1]
	strh r0, [r5, #4]
	ldr r0, [r5, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080A5600
	adds r0, r5, #0
	bl sub_080A72D8
_080A5600:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A5610: .4byte 0xFFFFF800
_080A5614: .4byte gCurLevelInfo
_080A5618: .4byte gUnk_082D88B8

	thumb_func_start sub_080A561C
sub_080A561C: @ 0x080A561C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #2
	mov sl, r0
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	adds r3, r5, #0
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r7, _080A56F4 @ =gUnk_08353480
	cmp r0, #0
	bne _080A572C
	adds r1, r5, #0
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
	adds r4, r1, #0
	cmp r0, #0
	bne _080A5662
	subs r0, r2, #1
	strb r0, [r4]
_080A5662:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	strb r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080A5688
	adds r0, r5, #0
	adds r0, #0x83
	strb r1, [r0]
_080A5688:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080A56F8
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
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	beq _080A56C4
	adds r2, r5, #0
	adds r2, #0x50
	strh r3, [r2]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A56C4
	rsbs r0, r3, #0
	strh r0, [r2]
_080A56C4:
	adds r0, r5, #0
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
	movs r4, #2
	ldrsh r0, [r0, r4]
	cmp r1, r0
	beq _080A572C
	adds r0, r5, #0
	adds r0, #0x52
	strh r2, [r0]
	b _080A572C
	.align 2, 0
_080A56F4: .4byte gUnk_08353480
_080A56F8:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	adds r3, r5, #0
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r6, [r0]
	adds r2, r5, #0
	adds r2, #0x50
	strh r6, [r2]
	ldr r1, [r5, #8]
	movs r0, #1
	ands r1, r0
	mov r8, r2
	cmp r1, #0
	beq _080A575A
	rsbs r0, r6, #0
	strh r0, [r2]
_080A572C:
	ldr r1, [r5, #8]
	movs r0, #1
	ands r1, r0
	adds r4, r5, #0
	adds r4, #0x9f
	movs r0, #0x50
	adds r0, r0, r5
	mov r8, r0
	adds r3, r5, #0
	adds r3, #0x52
	cmp r1, #0
	beq _080A575A
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	mov r2, r8
	ldrh r1, [r2]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r2]
	b _080A5770
_080A575A:
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrh r0, [r1, #4]
	mov r1, r8
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r2, r8
	strh r0, [r2]
_080A5770:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #6]
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	ldrb r3, [r4]
	adds r1, r3, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080A57AE
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080A57AE
	movs r0, #0xff
	orrs r0, r3
	strb r0, [r4]
_080A57AE:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080A57CC
	mov r3, r8
	ldrh r0, [r3]
	rsbs r0, r0, #0
	strh r0, [r3]
	ldr r0, [r5, #8]
	eors r0, r2
	str r0, [r5, #8]
_080A57CC:
	ldr r3, _080A582C @ =gCurLevelInfo
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	mov sb, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r1, sb
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x50
	adds r0, r1, r0
	ldr r4, [r5, #0x40]
	ldr r6, [r0]
	cmp r4, r6
	bgt _080A5896
	adds r0, r3, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [sp]
	cmp r4, r0
	blt _080A5896
	adds r0, r3, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r2, [r5, #0x44]
	ldr r0, [r0]
	mov ip, r0
	cmp r2, ip
	bgt _080A5896
	adds r0, r3, #0
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r3, [r0]
	cmp r2, r3
	blt _080A5896
	mov r7, r8
	movs r1, #0
	ldrsh r0, [r7, r1]
	cmp r0, #0
	ble _080A5830
	movs r7, #0
	mov sl, r7
	movs r1, #0x80
	lsls r1, r1, #4
	b _080A583A
	.align 2, 0
_080A582C: .4byte gCurLevelInfo
_080A5830:
	cmp r0, #0
	bge _080A587C
	movs r7, #0
	mov sl, r7
	ldr r1, _080A58B8 @ =0xFFFFF800
_080A583A:
	adds r0, r4, r1
	asrs r1, r0, #0xc
	asrs r0, r6, #0xc
	cmp r1, r0
	bgt _080A5870
	ldr r4, [sp]
	asrs r0, r4, #0xc
	cmp r1, r0
	blt _080A5870
	asrs r2, r2, #0xc
	mov r7, ip
	asrs r0, r7, #0xc
	cmp r2, r0
	bgt _080A5870
	asrs r0, r3, #0xc
	cmp r2, r0
	blt _080A5870
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, sb
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
_080A5870:
	mov r1, sl
	lsls r0, r1, #2
	ldr r2, _080A58BC @ =gUnk_082D88B8
	adds r0, r2, r0
	ldr r0, [r0]
	mov sl, r0
_080A587C:
	movs r0, #2
	mov r3, sl
	ands r3, r0
	cmp r3, #0
	bne _080A5896
	ldr r0, [r5, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r5, #8]
	mov r4, r8
	ldrh r0, [r4]
	rsbs r0, r0, #0
	strh r0, [r4]
_080A5896:
	ldr r0, [r5, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080A58A6
	adds r0, r5, #0
	bl sub_080A72D8
_080A58A6:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A58B8: .4byte 0xFFFFF800
_080A58BC: .4byte gUnk_082D88B8

	thumb_func_start sub_080A58C0
sub_080A58C0: @ 0x080A58C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	movs r1, #2
	ldr r0, [r5, #0x58]
	ands r0, r1
	cmp r0, #0
	bne _080A58DE
	adds r0, r5, #0
	bl sub_080A72D8
	b _080A5B02
_080A58DE:
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	mov r8, r0
	adds r3, r5, #0
	adds r3, #0x9f
	ldr r7, _080A59A4 @ =gUnk_083534BC
	adds r4, r5, #0
	adds r4, #0x50
	adds r6, r5, #0
	adds r6, #0x52
	cmp r1, #0
	bne _080A59D2
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
	bne _080A591A
	subs r0, r1, #1
	strb r0, [r3]
_080A591A:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	mov r1, r8
	strb r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080A5942
	adds r0, r5, #0
	adds r0, #0x83
	strb r1, [r0]
_080A5942:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080A59A8
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
	beq _080A597A
	strh r2, [r4]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A597A
	rsbs r0, r2, #0
	strh r0, [r4]
_080A597A:
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
	adds r6, r5, #0
	adds r6, #0x52
	cmp r1, r0
	beq _080A59D2
	strh r2, [r6]
	b _080A59D2
	.align 2, 0
_080A59A4: .4byte gUnk_083534BC
_080A59A8:
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
	strh r2, [r4]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A59F0
	rsbs r0, r2, #0
	strh r0, [r4]
_080A59D2:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A59F0
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r4]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r4]
	b _080A5A02
_080A59F0:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrh r0, [r1, #4]
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
_080A5A02:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #6]
	ldrh r2, [r6]
	adds r0, r0, r2
	strh r0, [r6]
	mov r6, r8
	ldrb r0, [r6]
	subs r2, r0, #1
	strb r2, [r6]
	movs r6, #0xff
	ldrb r4, [r3]
	adds r1, r4, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080A5A50
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080A5A50
	adds r0, r4, #0
	orrs r0, r6
	strb r0, [r3]
	adds r1, r5, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ands r0, r6
	cmp r0, #2
	bhi _080A5A5E
_080A5A50:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A5A66
_080A5A5E:
	adds r0, r5, #0
	bl sub_080A7238
	b _080A5B02
_080A5A66:
	ldr r3, _080A5B10 @ =gCurLevelInfo
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	mov sb, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r2, sb
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x50
	adds r0, r2, r0
	ldr r1, [r5, #0x40]
	ldr r0, [r0]
	mov ip, r0
	cmp r1, ip
	bgt _080A5B02
	adds r0, r3, #0
	adds r0, #0x48
	adds r0, r2, r0
	ldr r6, [r0]
	cmp r1, r6
	blt _080A5B02
	adds r0, r3, #0
	adds r0, #0x54
	adds r0, r2, r0
	ldr r4, [r5, #0x44]
	ldr r7, [r0]
	cmp r4, r7
	bgt _080A5B02
	adds r0, r3, #0
	adds r0, #0x4c
	adds r0, r2, r0
	ldr r3, [r0]
	cmp r4, r3
	blt _080A5B02
	ldr r0, _080A5B14 @ =gUnk_082D88B8
	mov sl, r0
	movs r2, #0
	mov r8, r2
	asrs r1, r1, #0xc
	mov r2, ip
	asrs r0, r2, #0xc
	cmp r1, r0
	bgt _080A5AEC
	asrs r0, r6, #0xc
	cmp r1, r0
	blt _080A5AEC
	ldr r6, _080A5B18 @ =0xFFFFF800
	adds r0, r4, r6
	asrs r2, r0, #0xc
	asrs r0, r7, #0xc
	cmp r2, r0
	bgt _080A5AEC
	asrs r0, r3, #0xc
	cmp r2, r0
	blt _080A5AEC
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, sb
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080A5AEC:
	mov r1, r8
	lsls r0, r1, #2
	add r0, sl
	ldr r1, [r0]
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _080A5B02
	adds r0, r5, #0
	bl sub_080A7238
_080A5B02:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A5B10: .4byte gCurLevelInfo
_080A5B14: .4byte gUnk_082D88B8
_080A5B18: .4byte 0xFFFFF800

	thumb_func_start sub_080A5B1C
sub_080A5B1C: @ 0x080A5B1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	movs r1, #2
	ldr r0, [r4, #0x58]
	ands r0, r1
	cmp r0, #0
	bne _080A5B3A
	adds r0, r4, #0
	bl sub_080A72D8
	b _080A5C2A
_080A5B3A:
	ldr r5, [r4, #8]
	ands r5, r1
	cmp r5, #0
	beq _080A5B68
	ldr r2, _080A5B64 @ =sub_080A58C0
	adds r0, r4, #0
	movs r1, #3
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	b _080A5C2A
	.align 2, 0
_080A5B64: .4byte sub_080A58C0
_080A5B68:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080A5C0E
	ldr r3, _080A5C38 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	mov sb, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r2, sb
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x50
	adds r0, r2, r0
	ldr r1, [r4, #0x40]
	ldr r0, [r0]
	mov ip, r0
	cmp r1, ip
	bgt _080A5C2A
	adds r0, r3, #0
	adds r0, #0x48
	adds r0, r2, r0
	ldr r6, [r0]
	cmp r1, r6
	blt _080A5C2A
	adds r0, r3, #0
	adds r0, #0x54
	adds r0, r2, r0
	ldr r5, [r4, #0x44]
	ldr r7, [r0]
	cmp r5, r7
	bgt _080A5C2A
	adds r0, r3, #0
	adds r0, #0x4c
	adds r0, r2, r0
	ldr r3, [r0]
	cmp r5, r3
	blt _080A5C2A
	ldr r0, _080A5C3C @ =gUnk_082D88B8
	mov sl, r0
	movs r2, #0
	mov r8, r2
	asrs r1, r1, #0xc
	mov r2, ip
	asrs r0, r2, #0xc
	cmp r1, r0
	bgt _080A5BFE
	asrs r0, r6, #0xc
	cmp r1, r0
	blt _080A5BFE
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r5, r2
	asrs r2, r0, #0xc
	asrs r0, r7, #0xc
	cmp r2, r0
	bgt _080A5BFE
	asrs r0, r3, #0xc
	cmp r2, r0
	blt _080A5BFE
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, sb
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080A5BFE:
	mov r1, r8
	lsls r0, r1, #2
	add r0, sl
	ldr r5, [r0]
	movs r0, #2
	ands r5, r0
	cmp r5, #0
	bne _080A5C2A
_080A5C0E:
	ldr r2, _080A5C40 @ =sub_080A58C0
	adds r0, r4, #0
	movs r1, #3
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x85
	strb r5, [r0]
_080A5C2A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A5C38: .4byte gCurLevelInfo
_080A5C3C: .4byte gUnk_082D88B8
_080A5C40: .4byte sub_080A58C0

	thumb_func_start sub_080A5C44
sub_080A5C44: @ 0x080A5C44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r3, #4
	orrs r0, r3
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x33
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #2
	cmp r0, r2
	ble _080A5C72
	strh r2, [r1]
_080A5C72:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080A5C92
	ldr r0, [r5, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080A5C92:
	ldr r3, _080A5D3C @ =gCurLevelInfo
	adds r1, r5, #0
	adds r1, #0x56
	ldrb r0, [r1]
	mov sl, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r2, sl
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x50
	adds r0, r2, r0
	ldr r6, [r5, #0x40]
	ldr r0, [r0]
	mov r8, r0
	str r1, [sp]
	cmp r6, r8
	ble _080A5CB8
	b _080A5E04
_080A5CB8:
	adds r0, r3, #0
	adds r0, #0x48
	adds r0, r2, r0
	ldr r7, [r0]
	cmp r6, r7
	bge _080A5CC6
	b _080A5E04
_080A5CC6:
	adds r0, r3, #0
	adds r0, #0x54
	adds r0, r2, r0
	ldr r4, [r5, #0x44]
	ldr r0, [r0]
	mov ip, r0
	cmp r4, ip
	ble _080A5CD8
	b _080A5E04
_080A5CD8:
	adds r0, r3, #0
	adds r0, #0x4c
	adds r0, r2, r0
	ldr r3, [r0]
	cmp r4, r3
	bge _080A5CE6
	b _080A5E04
_080A5CE6:
	movs r1, #0
	mov sb, r1
	asrs r1, r6, #0xc
	mov r2, r8
	asrs r0, r2, #0xc
	cmp r1, r0
	bgt _080A5D22
	asrs r0, r7, #0xc
	cmp r1, r0
	blt _080A5D22
	ldr r2, _080A5D40 @ =0xFFFFF800
	adds r0, r4, r2
	asrs r2, r0, #0xc
	mov r4, ip
	asrs r0, r4, #0xc
	cmp r2, r0
	bgt _080A5D22
	asrs r0, r3, #0xc
	cmp r2, r0
	blt _080A5D22
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, sl
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_080A5D22:
	mov r1, sb
	lsls r0, r1, #2
	ldr r2, _080A5D44 @ =gUnk_082D88B8
	adds r0, r2, r0
	ldr r1, [r0]
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _080A5D48
	adds r0, r5, #0
	bl sub_080A72AC
	b _080A5E14
	.align 2, 0
_080A5D3C: .4byte gCurLevelInfo
_080A5D40: .4byte 0xFFFFF800
_080A5D44: .4byte gUnk_082D88B8
_080A5D48:
	movs r1, #2
	adds r0, r5, #0
	adds r0, #0x50
	movs r3, #0
	ldrsh r2, [r0, r3]
	mov r8, r0
	cmp r2, #0
	ble _080A5D78
	ldr r4, _080A5D70 @ =gUnk_082D88B8
	mov sb, r4
	movs r7, #0
	ldr r0, [r5, #0x40]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	asrs r1, r0, #0xc
	ldr r4, _080A5D74 @ =gCurLevelInfo
	ldr r2, [sp]
	ldrb r6, [r2]
	b _080A5D90
	.align 2, 0
_080A5D70: .4byte gUnk_082D88B8
_080A5D74: .4byte gCurLevelInfo
_080A5D78:
	cmp r2, #0
	bge _080A5DEC
	ldr r3, _080A5E24 @ =gUnk_082D88B8
	mov sb, r3
	movs r7, #0
	ldr r0, [r5, #0x40]
	ldr r4, _080A5E28 @ =0xFFFFF800
	adds r0, r0, r4
	asrs r1, r0, #0xc
	ldr r4, _080A5E2C @ =gCurLevelInfo
	ldr r0, [sp]
	ldrb r6, [r0]
_080A5D90:
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	adds r0, r4, #0
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080A5DE6
	adds r0, r4, #0
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080A5DE6
	ldr r0, [r5, #0x44]
	asrs r2, r0, #0xc
	adds r0, r4, #0
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080A5DE6
	adds r0, r4, #0
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080A5DE6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080A5DE6:
	lsls r0, r7, #2
	add r0, sb
	ldr r1, [r0]
_080A5DEC:
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _080A5E04
	ldr r0, [r5, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r5, #8]
	mov r1, r8
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080A5E04:
	ldr r0, [r5, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080A5E14
	adds r0, r5, #0
	bl sub_080A72D8
_080A5E14:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A5E24: .4byte gUnk_082D88B8
_080A5E28: .4byte 0xFFFFF800
_080A5E2C: .4byte gCurLevelInfo

	thumb_func_start sub_080A5E30
sub_080A5E30: @ 0x080A5E30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	movs r0, #2
	mov sl, r0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r3, r4, #0
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r1, _080A5F08 @ =gUnk_08353480
	mov r8, r1
	cmp r0, #0
	bne _080A5F40
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0, #8]
	adds r5, r1, #0
	cmp r0, #0
	bne _080A5E76
	subs r0, r2, #1
	strb r0, [r5]
_080A5E76:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0, #8]
	strb r0, [r3]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080A5E9C
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
_080A5E9C:
	ldrb r0, [r5]
	cmp r0, #0
	beq _080A5F0C
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	add r1, r8
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	add r0, r8
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r5, #0
	ldrsh r0, [r0, r5]
	cmp r1, r0
	beq _080A5ED8
	adds r2, r4, #0
	adds r2, #0x50
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A5ED8
	rsbs r0, r3, #0
	strh r0, [r2]
_080A5ED8:
	adds r0, r4, #0
	adds r0, #0x9f
	ldrb r2, [r0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	add r1, r8
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	add r0, r8
	ldrh r2, [r1, #2]
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r5, #2
	ldrsh r0, [r0, r5]
	cmp r1, r0
	beq _080A5F40
	adds r0, r4, #0
	adds r0, #0x52
	strh r2, [r0]
	b _080A5F40
	.align 2, 0
_080A5F08: .4byte gUnk_08353480
_080A5F0C:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0, #2]
	adds r3, r4, #0
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldrh r6, [r0]
	adds r2, r4, #0
	adds r2, #0x50
	strh r6, [r2]
	ldr r1, [r4, #8]
	movs r0, #1
	ands r1, r0
	adds r7, r2, #0
	cmp r1, #0
	beq _080A5F6A
	rsbs r0, r6, #0
	strh r0, [r7]
_080A5F40:
	ldr r1, [r4, #8]
	movs r0, #1
	ands r1, r0
	adds r5, r4, #0
	adds r5, #0x9f
	adds r7, r4, #0
	adds r7, #0x50
	adds r3, r4, #0
	adds r3, #0x52
	cmp r1, #0
	beq _080A5F6A
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldrh r1, [r7]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r7]
	b _080A5F7C
_080A5F6A:
	ldrb r0, [r5]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	add r1, r8
	ldrh r0, [r1, #4]
	ldrh r1, [r7]
	adds r0, r0, r1
	strh r0, [r7]
_080A5F7C:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0, #6]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	ldrb r3, [r5]
	adds r1, r3, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080A5FBA
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080A5FBA
	movs r0, #0xff
	orrs r0, r3
	strb r0, [r5]
_080A5FBA:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080A5FDA
	ldrh r0, [r7]
	rsbs r0, r0, #0
	movs r1, #0
	strh r0, [r7]
	ldr r0, [r4, #8]
	eors r0, r2
	str r0, [r4, #8]
	strh r1, [r4, #4]
_080A5FDA:
	ldr r3, _080A6038 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	mov sb, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r1, sb
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x50
	adds r0, r1, r0
	ldr r5, [r4, #0x40]
	ldr r6, [r0]
	cmp r5, r6
	bgt _080A60A2
	adds r0, r3, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	mov ip, r0
	cmp r5, ip
	blt _080A60A2
	adds r0, r3, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r2, [r4, #0x44]
	ldr r0, [r0]
	mov r8, r0
	cmp r2, r8
	bgt _080A60A2
	adds r0, r3, #0
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r3, [r0]
	cmp r2, r3
	blt _080A60A2
	movs r1, #0
	ldrsh r0, [r7, r1]
	cmp r0, #0
	ble _080A603C
	movs r0, #0
	mov sl, r0
	movs r1, #0x80
	lsls r1, r1, #4
	b _080A6046
	.align 2, 0
_080A6038: .4byte gCurLevelInfo
_080A603C:
	cmp r0, #0
	bge _080A6088
	movs r0, #0
	mov sl, r0
	ldr r1, _080A60F4 @ =0xFFFFF800
_080A6046:
	adds r0, r5, r1
	asrs r1, r0, #0xc
	asrs r0, r6, #0xc
	cmp r1, r0
	bgt _080A607C
	mov r5, ip
	asrs r0, r5, #0xc
	cmp r1, r0
	blt _080A607C
	asrs r2, r2, #0xc
	mov r5, r8
	asrs r0, r5, #0xc
	cmp r2, r0
	bgt _080A607C
	asrs r0, r3, #0xc
	cmp r2, r0
	blt _080A607C
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, sb
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
_080A607C:
	mov r1, sl
	lsls r0, r1, #2
	ldr r2, _080A60F8 @ =gUnk_082D88B8
	adds r0, r2, r0
	ldr r0, [r0]
	mov sl, r0
_080A6088:
	movs r2, #2
	mov r3, sl
	ands r2, r3
	cmp r2, #0
	bne _080A60A2
	ldr r0, [r4, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
	ldrh r0, [r7]
	rsbs r0, r0, #0
	strh r0, [r7]
	strh r2, [r4, #4]
_080A60A2:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc0
	ble _080A60C2
	ldr r0, [r4, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
	ldrh r0, [r7]
	rsbs r0, r0, #0
	strh r0, [r7]
	movs r0, #0
	strh r0, [r4, #4]
_080A60C2:
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A614C
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r0, [r0, #0x40]
	ldr r1, [r4, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080A6100
	ldr r0, _080A60FC @ =0x00003FFF
	cmp r2, r0
	ble _080A6108
	b _080A614C
	.align 2, 0
_080A60F4: .4byte 0xFFFFF800
_080A60F8: .4byte gUnk_082D88B8
_080A60FC: .4byte 0x00003FFF
_080A6100:
	subs r1, r1, r0
	ldr r0, _080A6134 @ =0x00003FFF
	cmp r1, r0
	bgt _080A614C
_080A6108:
	ldr r2, _080A6138 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080A613C @ =0x00196225
	muls r0, r1, r0
	ldr r5, _080A6140 @ =0x3C6EF35F
	adds r0, r0, r5
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080A6144 @ =0x00005554
	cmp r2, r0
	bls _080A614C
	ldr r0, _080A6148 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080A6128
	movs r1, #1
_080A6128:
	cmp r1, #0
	beq _080A614C
	adds r0, r4, #0
	bl sub_080A616C
	b _080A615C
	.align 2, 0
_080A6134: .4byte 0x00003FFF
_080A6138: .4byte gRngVal
_080A613C: .4byte 0x00196225
_080A6140: .4byte 0x3C6EF35F
_080A6144: .4byte 0x00005554
_080A6148: .4byte 0x0000AAA9
_080A614C:
	ldr r0, [r4, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080A615C
	adds r0, r4, #0
	bl sub_080A72D8
_080A615C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A616C
sub_080A616C: @ 0x080A616C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A6190 @ =sub_080A6210
	movs r1, #5
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080A6194
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080A619C
	.align 2, 0
_080A6190: .4byte sub_080A6210
_080A6194:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080A619C:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #3
	bne _080A61B4
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080A61B4:
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	ldr r1, [r4, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080A61D0
	ldr r0, _080A61CC @ =0x00001FFF
	cmp r2, r0
	ble _080A61D8
	b _080A61E4
	.align 2, 0
_080A61CC: .4byte 0x00001FFF
_080A61D0:
	subs r1, r1, r0
	ldr r0, _080A61E0 @ =0x00001FFF
	cmp r1, r0
	bgt _080A61E4
_080A61D8:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	b _080A61EC
	.align 2, 0
_080A61E0: .4byte 0x00001FFF
_080A61E4:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
_080A61EC:
	strh r0, [r1]
	adds r2, r1, #0
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A620A
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080A620A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080A6210
sub_080A6210: @ 0x080A6210
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080A623A
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r1, [r0]
	rsbs r1, r1, #0
	strh r1, [r0]
	ldr r0, [r4, #8]
	eors r0, r2
	str r0, [r4, #8]
_080A623A:
	adds r0, r4, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r8, r0
	cmp r1, #0
	blt _080A624A
	b _080A6354
_080A624A:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #6
	strb r0, [r1]
	ldr r0, [r4, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A626A
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	ldrh r0, [r4, #4]
	mov r1, r8
	strh r0, [r1]
_080A626A:
	mov r2, r8
	ldrh r0, [r2]
	strh r0, [r4, #4]
	ldr r3, _080A6340 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	mov sl, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r2, sl
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x50
	adds r0, r2, r0
	ldr r1, [r4, #0x40]
	ldr r0, [r0]
	mov ip, r0
	cmp r1, ip
	bgt _080A635C
	adds r0, r3, #0
	adds r0, #0x48
	adds r0, r2, r0
	ldr r6, [r0]
	cmp r1, r6
	blt _080A635C
	adds r0, r3, #0
	adds r0, #0x54
	adds r0, r2, r0
	ldr r5, [r4, #0x44]
	ldr r7, [r0]
	cmp r5, r7
	bgt _080A635C
	adds r0, r3, #0
	adds r0, #0x4c
	adds r0, r2, r0
	ldr r3, [r0]
	cmp r5, r3
	blt _080A635C
	movs r0, #0
	mov sb, r0
	asrs r1, r1, #0xc
	mov r2, ip
	asrs r0, r2, #0xc
	cmp r1, r0
	bgt _080A62F2
	asrs r0, r6, #0xc
	cmp r1, r0
	blt _080A62F2
	ldr r2, _080A6344 @ =0xFFFFF800
	adds r0, r5, r2
	asrs r2, r0, #0xc
	asrs r0, r7, #0xc
	cmp r2, r0
	bgt _080A62F2
	asrs r0, r3, #0xc
	cmp r2, r0
	blt _080A62F2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, sl
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_080A62F2:
	mov r1, sb
	lsls r0, r1, #2
	ldr r2, _080A6348 @ =gUnk_082D88B8
	adds r0, r2, r0
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A635C
	mov r1, r8
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r1]
	ldr r2, _080A634C @ =sub_080A5C44
	adds r0, r4, #0
	movs r1, #3
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	ldr r1, _080A6350 @ =0xFFFFFEFF
	ands r0, r1
	adds r1, #0xe0
	ands r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0x80
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A6392
	rsbs r0, r3, #0
	strh r0, [r2]
	b _080A6392
	.align 2, 0
_080A6340: .4byte gCurLevelInfo
_080A6344: .4byte 0xFFFFF800
_080A6348: .4byte gUnk_082D88B8
_080A634C: .4byte sub_080A5C44
_080A6350: .4byte 0xFFFFFEFF
_080A6354:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_080A635C:
	ldr r0, [r4, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080A636E
	ldr r0, [r4, #8]
	subs r1, #0x43
	ands r0, r1
	str r0, [r4, #8]
_080A636E:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A6384
	adds r0, r4, #0
	bl sub_080A72D8
	b _080A6392
_080A6384:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080A6392
	adds r0, r4, #0
	bl sub_080A7340
_080A6392:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080A63A0
sub_080A63A0: @ 0x080A63A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x10
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080A63C6
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r2]
_080A63C6:
	ldr r3, _080A6488 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	mov sb, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r2, sb
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x50
	adds r0, r2, r0
	ldr r1, [r4, #0x40]
	ldr r0, [r0]
	mov ip, r0
	cmp r1, ip
	bgt _080A64CC
	adds r0, r3, #0
	adds r0, #0x48
	adds r0, r2, r0
	ldr r6, [r0]
	cmp r1, r6
	blt _080A64CC
	adds r0, r3, #0
	adds r0, #0x54
	adds r0, r2, r0
	ldr r5, [r4, #0x44]
	ldr r7, [r0]
	cmp r5, r7
	bgt _080A64CC
	adds r0, r3, #0
	adds r0, #0x4c
	adds r0, r2, r0
	ldr r3, [r0]
	cmp r5, r3
	blt _080A64CC
	ldr r0, _080A648C @ =gUnk_082D88B8
	mov sl, r0
	movs r2, #0
	mov r8, r2
	asrs r1, r1, #0xc
	mov r2, ip
	asrs r0, r2, #0xc
	cmp r1, r0
	bgt _080A644C
	asrs r0, r6, #0xc
	cmp r1, r0
	blt _080A644C
	ldr r2, _080A6490 @ =0xFFFFF800
	adds r0, r5, r2
	asrs r2, r0, #0xc
	asrs r0, r7, #0xc
	cmp r2, r0
	bgt _080A644C
	asrs r0, r3, #0xc
	cmp r2, r0
	blt _080A644C
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, sb
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080A644C:
	mov r1, r8
	lsls r0, r1, #2
	add r0, sl
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A64CC
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #4
	bhi _080A64AC
	lsls r0, r0, #2
	ldr r1, _080A6494 @ =_080A6498
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A6488: .4byte gCurLevelInfo
_080A648C: .4byte gUnk_082D88B8
_080A6490: .4byte 0xFFFFF800
_080A6494: .4byte _080A6498
_080A6498: @ jump table
	.4byte _080A64AC @ case 0
	.4byte _080A64B4 @ case 1
	.4byte _080A64BC @ case 2
	.4byte _080A64C4 @ case 3
	.4byte _080A64C4 @ case 4
_080A64AC:
	adds r0, r4, #0
	bl sub_080A7188
	b _080A64E0
_080A64B4:
	adds r0, r4, #0
	bl sub_080A71B4
	b _080A64E0
_080A64BC:
	adds r0, r4, #0
	bl sub_080A71E4
	b _080A64E0
_080A64C4:
	adds r0, r4, #0
	bl sub_080A726C
	b _080A64E0
_080A64CC:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080A64E0
	adds r0, r4, #0
	bl sub_080A7340
_080A64E0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A64F0
sub_080A64F0: @ 0x080A64F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x2b
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080A6516
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r2]
_080A6516:
	ldr r3, _080A65D8 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	mov sb, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r2, sb
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x50
	adds r0, r2, r0
	ldr r1, [r4, #0x40]
	ldr r0, [r0]
	mov ip, r0
	cmp r1, ip
	bgt _080A661C
	adds r0, r3, #0
	adds r0, #0x48
	adds r0, r2, r0
	ldr r6, [r0]
	cmp r1, r6
	blt _080A661C
	adds r0, r3, #0
	adds r0, #0x54
	adds r0, r2, r0
	ldr r5, [r4, #0x44]
	ldr r7, [r0]
	cmp r5, r7
	bgt _080A661C
	adds r0, r3, #0
	adds r0, #0x4c
	adds r0, r2, r0
	ldr r3, [r0]
	cmp r5, r3
	blt _080A661C
	ldr r0, _080A65DC @ =gUnk_082D88B8
	mov sl, r0
	movs r2, #0
	mov r8, r2
	asrs r1, r1, #0xc
	mov r2, ip
	asrs r0, r2, #0xc
	cmp r1, r0
	bgt _080A659C
	asrs r0, r6, #0xc
	cmp r1, r0
	blt _080A659C
	ldr r2, _080A65E0 @ =0xFFFFF800
	adds r0, r5, r2
	asrs r2, r0, #0xc
	asrs r0, r7, #0xc
	cmp r2, r0
	bgt _080A659C
	asrs r0, r3, #0xc
	cmp r2, r0
	blt _080A659C
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, sb
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080A659C:
	mov r1, r8
	lsls r0, r1, #2
	add r0, sl
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A661C
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #4
	bhi _080A65FC
	lsls r0, r0, #2
	ldr r1, _080A65E4 @ =_080A65E8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A65D8: .4byte gCurLevelInfo
_080A65DC: .4byte gUnk_082D88B8
_080A65E0: .4byte 0xFFFFF800
_080A65E4: .4byte _080A65E8
_080A65E8: @ jump table
	.4byte _080A65FC @ case 0
	.4byte _080A6604 @ case 1
	.4byte _080A660C @ case 2
	.4byte _080A6614 @ case 3
	.4byte _080A6614 @ case 4
_080A65FC:
	adds r0, r4, #0
	bl sub_080A7188
	b _080A66F6
_080A6604:
	adds r0, r4, #0
	bl sub_080A71B4
	b _080A66F6
_080A660C:
	adds r0, r4, #0
	bl sub_080A71E4
	b _080A66F6
_080A6614:
	adds r0, r4, #0
	bl sub_080A726C
	b _080A66F6
_080A661C:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080A66B8
	ldr r2, _080A6668 @ =gRngVal
	ldr r0, [r2]
	ldr r5, _080A666C @ =0x00196225
	muls r0, r5, r0
	ldr r1, _080A6670 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r3, #7
	ands r0, r3
	cmp r0, #0
	bne _080A664A
	ldr r0, [r4, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
_080A664A:
	ldr r0, [r2]
	muls r0, r5, r0
	ldr r1, _080A6670 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	ands r0, r3
	cmp r0, #7
	bhi _080A6698
	lsls r0, r0, #2
	ldr r1, _080A6674 @ =_080A6678
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A6668: .4byte gRngVal
_080A666C: .4byte 0x00196225
_080A6670: .4byte 0x3C6EF35F
_080A6674: .4byte _080A6678
_080A6678: @ jump table
	.4byte _080A6698 @ case 0
	.4byte _080A66A0 @ case 1
	.4byte _080A66A0 @ case 2
	.4byte _080A66A0 @ case 3
	.4byte _080A66A8 @ case 4
	.4byte _080A66A8 @ case 5
	.4byte _080A66B0 @ case 6
	.4byte _080A66B0 @ case 7
_080A6698:
	adds r0, r4, #0
	bl sub_080A73D4
	b _080A66F6
_080A66A0:
	adds r0, r4, #0
	bl sub_080A742C
	b _080A66F6
_080A66A8:
	adds r0, r4, #0
	bl sub_080A7460
	b _080A66F6
_080A66B0:
	adds r0, r4, #0
	bl sub_080A7498
	b _080A66F6
_080A66B8:
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0xc
	beq _080A66D4
	cmp r0, #0xc
	bgt _080A66CA
	cmp r0, #6
	beq _080A66DE
	b _080A66F0
_080A66CA:
	cmp r0, #0x10
	beq _080A66DE
	cmp r0, #0x14
	beq _080A66E8
	b _080A66F0
_080A66D4:
	adds r0, r4, #0
	movs r1, #3
	bl sub_080A6CBC
	b _080A66F0
_080A66DE:
	adds r0, r4, #0
	movs r1, #2
	bl sub_080A6CBC
	b _080A66F0
_080A66E8:
	adds r0, r4, #0
	movs r1, #3
	bl sub_080A6CBC
_080A66F0:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_080A66F6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080A6704
sub_080A6704: @ 0x080A6704
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x2b
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080A672A
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r2]
_080A672A:
	ldr r3, _080A67EC @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	mov sb, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r2, sb
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x50
	adds r0, r2, r0
	ldr r1, [r4, #0x40]
	ldr r0, [r0]
	mov ip, r0
	cmp r1, ip
	bgt _080A6830
	adds r0, r3, #0
	adds r0, #0x48
	adds r0, r2, r0
	ldr r6, [r0]
	cmp r1, r6
	blt _080A6830
	adds r0, r3, #0
	adds r0, #0x54
	adds r0, r2, r0
	ldr r5, [r4, #0x44]
	ldr r7, [r0]
	cmp r5, r7
	bgt _080A6830
	adds r0, r3, #0
	adds r0, #0x4c
	adds r0, r2, r0
	ldr r3, [r0]
	cmp r5, r3
	blt _080A6830
	ldr r0, _080A67F0 @ =gUnk_082D88B8
	mov sl, r0
	movs r2, #0
	mov r8, r2
	asrs r1, r1, #0xc
	mov r2, ip
	asrs r0, r2, #0xc
	cmp r1, r0
	bgt _080A67B0
	asrs r0, r6, #0xc
	cmp r1, r0
	blt _080A67B0
	ldr r2, _080A67F4 @ =0xFFFFF800
	adds r0, r5, r2
	asrs r2, r0, #0xc
	asrs r0, r7, #0xc
	cmp r2, r0
	bgt _080A67B0
	asrs r0, r3, #0xc
	cmp r2, r0
	blt _080A67B0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, sb
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080A67B0:
	mov r1, r8
	lsls r0, r1, #2
	add r0, sl
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A6830
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #4
	bhi _080A6810
	lsls r0, r0, #2
	ldr r1, _080A67F8 @ =_080A67FC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A67EC: .4byte gCurLevelInfo
_080A67F0: .4byte gUnk_082D88B8
_080A67F4: .4byte 0xFFFFF800
_080A67F8: .4byte _080A67FC
_080A67FC: @ jump table
	.4byte _080A6810 @ case 0
	.4byte _080A6818 @ case 1
	.4byte _080A6820 @ case 2
	.4byte _080A6828 @ case 3
	.4byte _080A6828 @ case 4
_080A6810:
	adds r0, r4, #0
	bl sub_080A7188
	b _080A6906
_080A6818:
	adds r0, r4, #0
	bl sub_080A71B4
	b _080A6906
_080A6820:
	adds r0, r4, #0
	bl sub_080A71E4
	b _080A6906
_080A6828:
	adds r0, r4, #0
	bl sub_080A726C
	b _080A6906
_080A6830:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080A68CC
	ldr r2, _080A687C @ =gRngVal
	ldr r0, [r2]
	ldr r5, _080A6880 @ =0x00196225
	muls r0, r5, r0
	ldr r1, _080A6884 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r3, #7
	ands r0, r3
	cmp r0, #0
	bne _080A685E
	ldr r0, [r4, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
_080A685E:
	ldr r0, [r2]
	muls r0, r5, r0
	ldr r1, _080A6884 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	ands r0, r3
	cmp r0, #7
	bhi _080A68AC
	lsls r0, r0, #2
	ldr r1, _080A6888 @ =_080A688C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A687C: .4byte gRngVal
_080A6880: .4byte 0x00196225
_080A6884: .4byte 0x3C6EF35F
_080A6888: .4byte _080A688C
_080A688C: @ jump table
	.4byte _080A68AC @ case 0
	.4byte _080A68B4 @ case 1
	.4byte _080A68B4 @ case 2
	.4byte _080A68B4 @ case 3
	.4byte _080A68BC @ case 4
	.4byte _080A68BC @ case 5
	.4byte _080A68C4 @ case 6
	.4byte _080A68C4 @ case 7
_080A68AC:
	adds r0, r4, #0
	bl sub_080A73D4
	b _080A6906
_080A68B4:
	adds r0, r4, #0
	bl sub_080A742C
	b _080A6906
_080A68BC:
	adds r0, r4, #0
	bl sub_080A7460
	b _080A6906
_080A68C4:
	adds r0, r4, #0
	bl sub_080A7498
	b _080A6906
_080A68CC:
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #4
	beq _080A68EE
	cmp r0, #4
	bgt _080A68DE
	cmp r0, #0
	beq _080A68E4
	b _080A6900
_080A68DE:
	cmp r0, #0x10
	beq _080A68F8
	b _080A6900
_080A68E4:
	adds r0, r4, #0
	movs r1, #0
	bl sub_080A6CBC
	b _080A6900
_080A68EE:
	adds r0, r4, #0
	movs r1, #1
	bl sub_080A6CBC
	b _080A6900
_080A68F8:
	adds r0, r4, #0
	movs r1, #0
	bl sub_080A6CBC
_080A6900:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_080A6906:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080A6914
sub_080A6914: @ 0x080A6914
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x2b
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080A693A
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r2]
_080A693A:
	ldr r3, _080A69FC @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	mov sb, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r2, sb
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x50
	adds r0, r2, r0
	ldr r1, [r4, #0x40]
	ldr r0, [r0]
	mov ip, r0
	cmp r1, ip
	bgt _080A6A40
	adds r0, r3, #0
	adds r0, #0x48
	adds r0, r2, r0
	ldr r6, [r0]
	cmp r1, r6
	blt _080A6A40
	adds r0, r3, #0
	adds r0, #0x54
	adds r0, r2, r0
	ldr r5, [r4, #0x44]
	ldr r7, [r0]
	cmp r5, r7
	bgt _080A6A40
	adds r0, r3, #0
	adds r0, #0x4c
	adds r0, r2, r0
	ldr r3, [r0]
	cmp r5, r3
	blt _080A6A40
	ldr r0, _080A6A00 @ =gUnk_082D88B8
	mov sl, r0
	movs r2, #0
	mov r8, r2
	asrs r1, r1, #0xc
	mov r2, ip
	asrs r0, r2, #0xc
	cmp r1, r0
	bgt _080A69C0
	asrs r0, r6, #0xc
	cmp r1, r0
	blt _080A69C0
	ldr r2, _080A6A04 @ =0xFFFFF800
	adds r0, r5, r2
	asrs r2, r0, #0xc
	asrs r0, r7, #0xc
	cmp r2, r0
	bgt _080A69C0
	asrs r0, r3, #0xc
	cmp r2, r0
	blt _080A69C0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, sb
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080A69C0:
	mov r1, r8
	lsls r0, r1, #2
	add r0, sl
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A6A40
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #4
	bhi _080A6A20
	lsls r0, r0, #2
	ldr r1, _080A6A08 @ =_080A6A0C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A69FC: .4byte gCurLevelInfo
_080A6A00: .4byte gUnk_082D88B8
_080A6A04: .4byte 0xFFFFF800
_080A6A08: .4byte _080A6A0C
_080A6A0C: @ jump table
	.4byte _080A6A20 @ case 0
	.4byte _080A6A28 @ case 1
	.4byte _080A6A30 @ case 2
	.4byte _080A6A38 @ case 3
	.4byte _080A6A38 @ case 4
_080A6A20:
	adds r0, r4, #0
	bl sub_080A7188
	b _080A6ADA
_080A6A28:
	adds r0, r4, #0
	bl sub_080A71B4
	b _080A6ADA
_080A6A30:
	adds r0, r4, #0
	bl sub_080A71E4
	b _080A6ADA
_080A6A38:
	adds r0, r4, #0
	bl sub_080A726C
	b _080A6ADA
_080A6A40:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080A6ADA
	ldr r2, _080A6A8C @ =gRngVal
	ldr r0, [r2]
	ldr r5, _080A6A90 @ =0x00196225
	muls r0, r5, r0
	ldr r1, _080A6A94 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r3, #7
	ands r0, r3
	cmp r0, #0
	bne _080A6A6E
	ldr r0, [r4, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
_080A6A6E:
	ldr r0, [r2]
	muls r0, r5, r0
	ldr r1, _080A6A94 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	ands r0, r3
	cmp r0, #7
	bhi _080A6ABC
	lsls r0, r0, #2
	ldr r1, _080A6A98 @ =_080A6A9C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A6A8C: .4byte gRngVal
_080A6A90: .4byte 0x00196225
_080A6A94: .4byte 0x3C6EF35F
_080A6A98: .4byte _080A6A9C
_080A6A9C: @ jump table
	.4byte _080A6ABC @ case 0
	.4byte _080A6AC4 @ case 1
	.4byte _080A6AC4 @ case 2
	.4byte _080A6AC4 @ case 3
	.4byte _080A6ACC @ case 4
	.4byte _080A6ACC @ case 5
	.4byte _080A6AD4 @ case 6
	.4byte _080A6AD4 @ case 7
_080A6ABC:
	adds r0, r4, #0
	bl sub_080A73D4
	b _080A6ADA
_080A6AC4:
	adds r0, r4, #0
	bl sub_080A742C
	b _080A6ADA
_080A6ACC:
	adds r0, r4, #0
	bl sub_080A7460
	b _080A6ADA
_080A6AD4:
	adds r0, r4, #0
	bl sub_080A7498
_080A6ADA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080A6AE8
sub_080A6AE8: @ 0x080A6AE8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x2b
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080A6B0E
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r2]
_080A6B0E:
	ldr r3, _080A6BD0 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	mov sb, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r2, sb
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x50
	adds r0, r2, r0
	ldr r1, [r4, #0x40]
	ldr r0, [r0]
	mov ip, r0
	cmp r1, ip
	bgt _080A6C14
	adds r0, r3, #0
	adds r0, #0x48
	adds r0, r2, r0
	ldr r6, [r0]
	cmp r1, r6
	blt _080A6C14
	adds r0, r3, #0
	adds r0, #0x54
	adds r0, r2, r0
	ldr r5, [r4, #0x44]
	ldr r7, [r0]
	cmp r5, r7
	bgt _080A6C14
	adds r0, r3, #0
	adds r0, #0x4c
	adds r0, r2, r0
	ldr r3, [r0]
	cmp r5, r3
	blt _080A6C14
	ldr r0, _080A6BD4 @ =gUnk_082D88B8
	mov sl, r0
	movs r2, #0
	mov r8, r2
	asrs r1, r1, #0xc
	mov r2, ip
	asrs r0, r2, #0xc
	cmp r1, r0
	bgt _080A6B94
	asrs r0, r6, #0xc
	cmp r1, r0
	blt _080A6B94
	ldr r2, _080A6BD8 @ =0xFFFFF800
	adds r0, r5, r2
	asrs r2, r0, #0xc
	asrs r0, r7, #0xc
	cmp r2, r0
	bgt _080A6B94
	asrs r0, r3, #0xc
	cmp r2, r0
	blt _080A6B94
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, sb
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080A6B94:
	mov r1, r8
	lsls r0, r1, #2
	add r0, sl
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A6C14
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #4
	bhi _080A6BF4
	lsls r0, r0, #2
	ldr r1, _080A6BDC @ =_080A6BE0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A6BD0: .4byte gCurLevelInfo
_080A6BD4: .4byte gUnk_082D88B8
_080A6BD8: .4byte 0xFFFFF800
_080A6BDC: .4byte _080A6BE0
_080A6BE0: @ jump table
	.4byte _080A6BF4 @ case 0
	.4byte _080A6BFC @ case 1
	.4byte _080A6C04 @ case 2
	.4byte _080A6C0C @ case 3
	.4byte _080A6C0C @ case 4
_080A6BF4:
	adds r0, r4, #0
	bl sub_080A7188
	b _080A6CAE
_080A6BFC:
	adds r0, r4, #0
	bl sub_080A71B4
	b _080A6CAE
_080A6C04:
	adds r0, r4, #0
	bl sub_080A71E4
	b _080A6CAE
_080A6C0C:
	adds r0, r4, #0
	bl sub_080A726C
	b _080A6CAE
_080A6C14:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080A6CAE
	ldr r2, _080A6C60 @ =gRngVal
	ldr r0, [r2]
	ldr r5, _080A6C64 @ =0x00196225
	muls r0, r5, r0
	ldr r1, _080A6C68 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r3, #7
	ands r0, r3
	cmp r0, #0
	bne _080A6C42
	ldr r0, [r4, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
_080A6C42:
	ldr r0, [r2]
	muls r0, r5, r0
	ldr r1, _080A6C68 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	ands r0, r3
	cmp r0, #7
	bhi _080A6C90
	lsls r0, r0, #2
	ldr r1, _080A6C6C @ =_080A6C70
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A6C60: .4byte gRngVal
_080A6C64: .4byte 0x00196225
_080A6C68: .4byte 0x3C6EF35F
_080A6C6C: .4byte _080A6C70
_080A6C70: @ jump table
	.4byte _080A6C90 @ case 0
	.4byte _080A6C98 @ case 1
	.4byte _080A6C98 @ case 2
	.4byte _080A6C98 @ case 3
	.4byte _080A6CA0 @ case 4
	.4byte _080A6CA0 @ case 5
	.4byte _080A6CA8 @ case 6
	.4byte _080A6CA8 @ case 7
_080A6C90:
	adds r0, r4, #0
	bl sub_080A73D4
	b _080A6CAE
_080A6C98:
	adds r0, r4, #0
	bl sub_080A742C
	b _080A6CAE
_080A6CA0:
	adds r0, r4, #0
	bl sub_080A7460
	b _080A6CAE
_080A6CA8:
	adds r0, r4, #0
	bl sub_080A7498
_080A6CAE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080A6CBC
sub_080A6CBC: @ 0x080A6CBC
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080A6CF0 @ =sub_080A6E44
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080A6CF4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A6CF8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080A6D00
	.align 2, 0
_080A6CF0: .4byte sub_080A6E44
_080A6CF4: .4byte sub_0803DCCC
_080A6CF8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080A6D00:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x38]
	str r6, [r4, #0x44]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	cmp r5, #1
	beq _080A6D54
	cmp r5, #1
	ble _080A6D3C
	cmp r5, #2
	beq _080A6D64
	cmp r5, #3
	beq _080A6D88
_080A6D3C:
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r4, #0x3c]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x3e]
	ldr r0, [r4, #0x34]
	ldr r1, _080A6D50 @ =0xFFFFF400
	adds r0, r0, r1
	b _080A6DA2
	.align 2, 0
_080A6D50: .4byte 0xFFFFF400
_080A6D54:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x3c]
	strh r0, [r4, #0x3e]
	ldr r0, [r4, #0x34]
	movs r2, #0xc0
	lsls r2, r2, #4
	b _080A6DA0
_080A6D64:
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r4, #0x3c]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x3e]
	ldr r0, [r4, #0x38]
	ldr r1, _080A6D80 @ =0xFFFFF400
	adds r0, r0, r1
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x34]
	ldr r2, _080A6D84 @ =0xFFFFF800
	b _080A6DA0
	.align 2, 0
_080A6D80: .4byte 0xFFFFF400
_080A6D84: .4byte 0xFFFFF800
_080A6D88:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x3c]
	adds r0, #0x80
	strh r0, [r4, #0x3e]
	ldr r0, [r4, #0x38]
	ldr r1, _080A6E20 @ =0xFFFFF400
	adds r0, r0, r1
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x34]
	movs r2, #0x80
	lsls r2, r2, #4
_080A6DA0:
	adds r0, r0, r2
_080A6DA2:
	str r0, [r4, #0x34]
	ldr r0, _080A6E24 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r6, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080A6DC8
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_080A6DC8:
	adds r1, r4, #0
	adds r1, #0xc
	ldr r3, _080A6E28 @ =0x00000329
	movs r0, #2
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #6
	bl sub_080709F8
	adds r5, r4, #0
	adds r5, #0x2b
	movs r3, #0
	strb r3, [r5]
	ldr r2, _080A6E2C @ =gKirbys
	ldr r0, _080A6E30 @ =gUnk_0203AD3C
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
	bne _080A6E38
	ldr r4, _080A6E34 @ =0x00000327
	adds r0, r4, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080A6E3A
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080A6E3A
	.align 2, 0
_080A6E20: .4byte 0xFFFFF400
_080A6E24: .4byte gUnk_03000510
_080A6E28: .4byte 0x00000329
_080A6E2C: .4byte gKirbys
_080A6E30: .4byte gUnk_0203AD3C
_080A6E34: .4byte 0x00000327
_080A6E38:
	strb r3, [r5]
_080A6E3A:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A6E44
sub_080A6E44: @ 0x080A6E44
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x28
	ldr r2, _080A6E68 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A6E6C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080A6E74
	.align 2, 0
_080A6E68: .4byte gCurTask
_080A6E6C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080A6E74:
	adds r5, r0, #0
	ldrh r3, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _080A6E8A
	ldr r0, [r2]
	bl TaskDestroy
	b _080A711C
_080A6E8A:
	ldr r2, _080A6EF0 @ =gKirbys
	ldr r0, _080A6EF4 @ =gUnk_0203AD3C
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
	bne _080A6F38
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080A6F00
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080A6F5E
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #6
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080A6EF8 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080A6EFC @ =0x0400000A
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
	b _080A6F5E
	.align 2, 0
_080A6EF0: .4byte gKirbys
_080A6EF4: .4byte gUnk_0203AD3C
_080A6EF8: .4byte 0xFFF7FFFF
_080A6EFC: .4byte 0x0400000A
_080A6F00:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080A6F5E
	movs r0, #6
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080A6F30 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080A6F34 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080A6F5E
	.align 2, 0
_080A6F30: .4byte 0xFFF7FFFF
_080A6F34: .4byte 0x0400000A
_080A6F38:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _080A6F54
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080A6F54
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080A6F54:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080A6F5E:
	ldr r2, _080A6FA4 @ =gKirbys
	ldr r0, _080A6FA8 @ =gUnk_0203AD3C
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
	bne _080A6FB0
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A6FB8
	ldr r6, _080A6FAC @ =0x00000327
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080A6FB8
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080A6FB8
	.align 2, 0
_080A6FA4: .4byte gKirbys
_080A6FA8: .4byte gUnk_0203AD3C
_080A6FAC: .4byte 0x00000327
_080A6FB0:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_080A6FB8:
	ldr r0, _080A7064 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldr r2, [r5, #0x44]
	mov ip, r2
	ldr r6, _080A7068 @ =gUnk_03000510
	mov r8, r6
	cmp r0, #0
	beq _080A7004
	ldr r1, _080A706C @ =gCurLevelInfo
	mov sb, r1
	ldrh r3, [r7]
	ldr r4, _080A7070 @ =gUnk_02026D50
_080A6FD0:
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
	bne _080A6FFC
	adds r6, #0x66
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A7016
_080A6FFC:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080A6FD0
_080A7004:
	movs r0, #1
	cmp r0, #0
	beq _080A7016
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_080A7016:
	mov r3, ip
	cmp r3, #0
	beq _080A7074
	ldrb r0, [r3]
	cmp r0, #0
	beq _080A7034
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080A7034
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080A7034:
	cmp r3, #0
	beq _080A7074
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
	beq _080A70DC
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080A70DC
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080A711C
	.align 2, 0
_080A7064: .4byte gUnk_0203AD44
_080A7068: .4byte gUnk_03000510
_080A706C: .4byte gCurLevelInfo
_080A7070: .4byte gUnk_02026D50
_080A7074:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080A70D8 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	beq _080A70B2
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080A70B2
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080A70B2
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080A70B2
	movs r3, #4
_080A70B2:
	mov r1, r8
	ldrb r0, [r1, #4]
	movs r1, #1
	lsls r1, r3
	movs r2, #0x10
	orrs r1, r2
	ands r0, r1
	cmp r0, #0
	beq _080A70DC
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080A70DC
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080A711C
	.align 2, 0
_080A70D8: .4byte gKirbys
_080A70DC:
	ldrh r0, [r5, #0x3e]
	subs r0, #0x80
	strh r0, [r5, #0x3e]
	ldrh r1, [r5, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080A70F8
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _080A711C
_080A70F8:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080A7116
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
_080A7116:
	adds r0, r5, #0
	bl sub_0806FAC8
_080A711C:
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A712C
sub_080A712C: @ 0x080A712C
	push {lr}
	adds r2, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #4
	bhi _080A715C
	lsls r0, r0, #2
	ldr r1, _080A7144 @ =_080A7148
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A7144: .4byte _080A7148
_080A7148: @ jump table
	.4byte _080A715C @ case 0
	.4byte _080A7164 @ case 1
	.4byte _080A716C @ case 2
	.4byte _080A7174 @ case 3
	.4byte _080A717C @ case 4
_080A715C:
	adds r0, r2, #0
	bl sub_080A7188
	b _080A7182
_080A7164:
	adds r0, r2, #0
	bl sub_080A71B4
	b _080A7182
_080A716C:
	adds r0, r2, #0
	bl sub_080A71E4
	b _080A7182
_080A7174:
	adds r0, r2, #0
	bl sub_080A726C
	b _080A7182
_080A717C:
	adds r0, r2, #0
	bl sub_080A726C
_080A7182:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A7188
sub_080A7188: @ 0x080A7188
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A71B0 @ =sub_080A5188
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A71B0: .4byte sub_080A5188

	thumb_func_start sub_080A71B4
sub_080A71B4: @ 0x080A71B4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A71E0 @ =sub_080A561C
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r4, #8]
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
_080A71E0: .4byte sub_080A561C

	thumb_func_start sub_080A71E4
sub_080A71E4: @ 0x080A71E4
	push {lr}
	adds r2, r0, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x5a
	ldr r0, [r0]
	ldr r1, [r2, #0x44]
	ldr r0, [r0, #0x44]
	cmp r1, r0
	ble _080A7206
	adds r0, r2, #0
	bl sub_080A7210
	b _080A720C
_080A7206:
	adds r0, r2, #0
	bl sub_080A7238
_080A720C:
	pop {r0}
	bx r0

	thumb_func_start sub_080A7210
sub_080A7210: @ 0x080A7210
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A7234 @ =sub_080A58C0
	movs r1, #3
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r4, #8]
	adds r4, #0x85
	movs r0, #0
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A7234: .4byte sub_080A58C0

	thumb_func_start sub_080A7238
sub_080A7238: @ 0x080A7238
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A7264 @ =sub_080A5B1C
	movs r1, #4
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r4, #0x52
	ldr r0, _080A7268 @ =0x0000FF80
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A7264: .4byte sub_080A5B1C
_080A7268: .4byte 0x0000FF80

	thumb_func_start sub_080A726C
sub_080A726C: @ 0x080A726C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A72A4 @ =sub_080A5C44
	movs r1, #3
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	ldr r1, _080A72A8 @ =0xFFFFFEFF
	ands r0, r1
	adds r1, #0xe0
	ands r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0x80
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A729E
	rsbs r0, r3, #0
	strh r0, [r2]
_080A729E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A72A4: .4byte sub_080A5C44
_080A72A8: .4byte 0xFFFFFEFF

	thumb_func_start sub_080A72AC
sub_080A72AC: @ 0x080A72AC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A72D4 @ =sub_080A5E30
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	adds r4, #0x85
	movs r0, #0x5a
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A72D4: .4byte sub_080A5E30

	thumb_func_start sub_080A72D8
sub_080A72D8: @ 0x080A72D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A72FC @ =sub_080A63A0
	movs r1, #7
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080A7300
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080A7308
	.align 2, 0
_080A72FC: .4byte sub_080A63A0
_080A7300:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080A7308:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0xc0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x5e
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #3
	bne _080A7338
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080A7338:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A7340
sub_080A7340: @ 0x080A7340
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r3, _080A7380 @ =gRngVal
	ldr r0, [r3]
	ldr r6, _080A7384 @ =0x00196225
	muls r0, r6, r0
	ldr r5, _080A7388 @ =0x3C6EF35F
	adds r0, r0, r5
	str r0, [r3]
	lsrs r0, r0, #0x10
	movs r4, #7
	ands r0, r4
	cmp r0, #0
	bne _080A7364
	ldr r0, [r2, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r2, #8]
_080A7364:
	ldr r0, [r3]
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r3]
	lsrs r0, r0, #0x10
	ands r0, r4
	cmp r0, #7
	bhi _080A73B0
	lsls r0, r0, #2
	ldr r1, _080A738C @ =_080A7390
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A7380: .4byte gRngVal
_080A7384: .4byte 0x00196225
_080A7388: .4byte 0x3C6EF35F
_080A738C: .4byte _080A7390
_080A7390: @ jump table
	.4byte _080A73B0 @ case 0
	.4byte _080A73B8 @ case 1
	.4byte _080A73B8 @ case 2
	.4byte _080A73B8 @ case 3
	.4byte _080A73C0 @ case 4
	.4byte _080A73C0 @ case 5
	.4byte _080A73C8 @ case 6
	.4byte _080A73C8 @ case 7
_080A73B0:
	adds r0, r2, #0
	bl sub_080A73D4
	b _080A73CE
_080A73B8:
	adds r0, r2, #0
	bl sub_080A742C
	b _080A73CE
_080A73C0:
	adds r0, r2, #0
	bl sub_080A7460
	b _080A73CE
_080A73C8:
	adds r0, r2, #0
	bl sub_080A7498
_080A73CE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080A73D4
sub_080A73D4: @ 0x080A73D4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A73F8 @ =sub_080A64F0
	movs r1, #8
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080A73FC
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080A7404
	.align 2, 0
_080A73F8: .4byte sub_080A64F0
_080A73FC:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080A7404:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0xc0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A742C
sub_080A742C: @ 0x080A742C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A745C @ =sub_080A6704
	movs r1, #9
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0xc0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r4, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A745C: .4byte sub_080A6704

	thumb_func_start sub_080A7460
sub_080A7460: @ 0x080A7460
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A7494 @ =sub_080A6914
	movs r1, #0xa
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0xc0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	adds r4, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A7494: .4byte sub_080A6914

	thumb_func_start sub_080A7498
sub_080A7498: @ 0x080A7498
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A74CC @ =sub_080A6AE8
	movs r1, #0xb
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0xc0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	adds r4, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A74CC: .4byte sub_080A6AE8
