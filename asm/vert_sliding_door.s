	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	@ TODO: define file boundaries (see pointers at 0x8351248)

	thumb_func_start CreateVertSlidingDoor
CreateVertSlidingDoor: @ 0x0811B4F0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _0811B524 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _0811B528 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811B52C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r7, r0, r1
	b _0811B534
	.align 2, 0
_0811B524: .4byte ObjectMain
_0811B528: .4byte ObjectDestroy
_0811B52C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
_0811B534:
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r7, #8]
	ldr r1, _0811B5B0 @ =0x02408940
	orrs r0, r1
	str r0, [r7, #8]
	ldr r2, [r7, #0x5c]
	movs r0, #0x20
	orrs r2, r0
	ldr r0, [r7, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0xc]
	ldr r0, [r7, #0x68]
	movs r4, #8
	rsbs r4, r4, #0
	ands r0, r4
	str r0, [r7, #0x68]
	ands r2, r4
	str r2, [r7, #0x5c]
	movs r6, #0x20
	rsbs r6, r6, #0
	movs r5, #0
	str r5, [sp]
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	movs r3, #8
	bl sub_0803E308
	str r5, [sp]
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	movs r3, #8
	bl sub_0803E2B0
	adds r0, r7, #0
	bl ObjectInitSprite
	ldr r2, _0811B5B4 @ =gUnk_08351648
	adds r0, r7, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r7, #0
	bl _call_via_r1
	adds r0, r7, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0811B5B0: .4byte 0x02408940
_0811B5B4: .4byte gUnk_08351648

	thumb_func_start sub_0811B5B8
sub_0811B5B8: @ 0x0811B5B8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r7, #0
	movs r0, #0
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #4]
	ldr r3, _0811B684 @ =gCurLevelInfo
	adds r6, r4, #0
	adds r6, #0x56
	ldrb r2, [r6]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _0811B688 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	ldr r3, [r0]
	adds r2, r4, #0
	adds r2, #0xb4
	ldrh r1, [r2]
	movs r5, #1
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0811B5FA
	b _0811B72E
_0811B5FA:
	cmp r3, #0
	beq _0811B6B0
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0811B608
	b _0811B72E
_0811B608:
	ldr r0, _0811B68C @ =sub_0811B7B0
	str r0, [r4, #0x78]
	adds r0, r4, #0
	adds r0, #0x83
	strb r5, [r0]
	adds r0, #0x34
	strb r7, [r0]
	ldrh r0, [r2]
	orrs r0, r5
	strh r0, [r2]
	ldr r1, _0811B690 @ =gUnk_02020EE0
	ldr r0, _0811B694 @ =gUnk_0203AD3C
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
	bne _0811B72E
	ldrb r0, [r4]
	cmp r0, #0
	bne _0811B644
	ldrb r0, [r6]
	cmp r0, r2
	bne _0811B72E
_0811B644:
	ldr r1, _0811B698 @ =gUnk_08D60FA4
	ldr r5, _0811B69C @ =gSongTable
	ldr r2, _0811B6A0 @ =0x000010AC
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0811B668
	ldr r1, _0811B6A4 @ =0x000010A8
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0811B72E
_0811B668:
	cmp r3, #0
	beq _0811B67A
	ldr r0, _0811B6A8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0811B72E
_0811B67A:
	ldr r0, _0811B6AC @ =0x00000215
	bl m4aSongNumStart
	b _0811B72E
	.align 2, 0
_0811B684: .4byte gCurLevelInfo
_0811B688: .4byte 0x0000065E
_0811B68C: .4byte sub_0811B7B0
_0811B690: .4byte gUnk_02020EE0
_0811B694: .4byte gUnk_0203AD3C
_0811B698: .4byte gUnk_08D60FA4
_0811B69C: .4byte gSongTable
_0811B6A0: .4byte 0x000010AC
_0811B6A4: .4byte 0x000010A8
_0811B6A8: .4byte gUnk_0203AD10
_0811B6AC: .4byte 0x00000215
_0811B6B0:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0811B72E
	ldr r0, _0811B74C @ =sub_0811B8E4
	str r0, [r4, #0x78]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #2
	strb r0, [r1]
	ldrh r0, [r2]
	orrs r0, r5
	strh r0, [r2]
	ldr r1, _0811B750 @ =gUnk_02020EE0
	ldr r0, _0811B754 @ =gUnk_0203AD3C
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
	bne _0811B72E
	ldrb r0, [r4]
	cmp r0, #0
	bne _0811B6F2
	ldrb r0, [r6]
	cmp r0, r2
	bne _0811B72E
_0811B6F2:
	ldr r1, _0811B758 @ =gUnk_08D60FA4
	ldr r5, _0811B75C @ =gSongTable
	ldr r2, _0811B760 @ =0x000010AC
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0811B716
	ldr r1, _0811B764 @ =0x000010A8
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0811B72E
_0811B716:
	cmp r3, #0
	beq _0811B728
	ldr r0, _0811B768 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0811B72E
_0811B728:
	ldr r0, _0811B76C @ =0x00000215
	bl m4aSongNumStart
_0811B72E:
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0811B778
	ldr r2, _0811B770 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _0811B774 @ =0x0000065E
	adds r0, r0, r2
	ldrb r0, [r0]
	b _0811B77A
	.align 2, 0
_0811B74C: .4byte sub_0811B8E4
_0811B750: .4byte gUnk_02020EE0
_0811B754: .4byte gUnk_0203AD3C
_0811B758: .4byte gUnk_08D60FA4
_0811B75C: .4byte gSongTable
_0811B760: .4byte 0x000010AC
_0811B764: .4byte 0x000010A8
_0811B768: .4byte gUnk_0203AD10
_0811B76C: .4byte 0x00000215
_0811B770: .4byte gCurLevelInfo
_0811B774: .4byte 0x0000065E
_0811B778:
	movs r0, #0xff
_0811B77A:
	cmp r0, #0xff
	beq _0811B7A2
	lsls r3, r0, #3
	ldr r1, _0811B7A8 @ =gUnk_02022F40
	adds r1, r0, r1
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0811B7AC @ =gUnk_02022EC0
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_0811B7A2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811B7A8: .4byte gUnk_02022F40
_0811B7AC: .4byte gUnk_02022EC0

	thumb_func_start sub_0811B7B0
sub_0811B7B0: @ 0x0811B7B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	mov r8, r7
	adds r1, r7, #0
	adds r1, #0xb6
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #6
	ble _0811B816
	movs r0, #0
	strb r0, [r1]
	adds r6, r7, #0
	adds r6, #0xb7
	ldrb r1, [r6]
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #7
	bgt _0811B816
	adds r0, r1, #1
	strb r0, [r6]
	movs r4, #8
	rsbs r4, r4, #0
	movs r5, #0x20
	rsbs r5, r5, #0
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0x1a
	rsbs r0, r0, #0
	asrs r0, r0, #0x18
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #8
	bl sub_0803E308
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0x1a
	rsbs r0, r0, #0
	asrs r0, r0, #0x18
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #8
	bl sub_0803E2B0
_0811B816:
	mov r1, r8
	adds r1, #0xb6
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r7, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0811B876
	mov r6, r8
	adds r6, #0xb7
	movs r0, #7
	strb r0, [r6]
	movs r4, #8
	rsbs r4, r4, #0
	movs r5, #0x20
	rsbs r5, r5, #0
	subs r0, #0x23
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #8
	bl sub_0803E308
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0x1a
	rsbs r0, r0, #0
	asrs r0, r0, #0x18
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #8
	bl sub_0803E2B0
	ldr r0, _0811B894 @ =sub_0811B5B8
	str r0, [r7, #0x78]
	mov r2, r8
	adds r2, #0xb4
	ldrh r1, [r2]
	ldr r0, _0811B898 @ =0x0000FFFE
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
_0811B876:
	adds r1, r7, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0811B8A4
	ldr r2, _0811B89C @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _0811B8A0 @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	b _0811B8A6
	.align 2, 0
_0811B894: .4byte sub_0811B5B8
_0811B898: .4byte 0x0000FFFE
_0811B89C: .4byte gCurLevelInfo
_0811B8A0: .4byte 0x0000065E
_0811B8A4:
	movs r0, #0xff
_0811B8A6:
	cmp r0, #0xff
	beq _0811B8CE
	lsls r3, r0, #3
	ldr r1, _0811B8DC @ =gUnk_02022F40
	adds r1, r0, r1
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0811B8E0 @ =gUnk_02022EC0
	lsls r1, r0, #2
	adds r1, r1, r2
	str r7, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_0811B8CE:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811B8DC: .4byte gUnk_02022F40
_0811B8E0: .4byte gUnk_02022EC0

	thumb_func_start sub_0811B8E4
sub_0811B8E4: @ 0x0811B8E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	mov r8, r7
	adds r1, r7, #0
	adds r1, #0xb6
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #6
	ble _0811B94A
	movs r0, #0
	strb r0, [r1]
	adds r6, r7, #0
	adds r6, #0xb7
	ldrb r1, [r6]
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	blt _0811B94A
	subs r0, r1, #1
	strb r0, [r6]
	movs r4, #8
	rsbs r4, r4, #0
	movs r5, #0x20
	rsbs r5, r5, #0
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0x1a
	rsbs r0, r0, #0
	asrs r0, r0, #0x18
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #8
	bl sub_0803E308
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0x1a
	rsbs r0, r0, #0
	asrs r0, r0, #0x18
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #8
	bl sub_0803E2B0
_0811B94A:
	mov r1, r8
	adds r1, #0xb6
	ldrb r0, [r1]
	adds r0, #1
	movs r6, #0
	strb r0, [r1]
	ldr r0, [r7, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0811B99E
	mov r0, r8
	adds r0, #0xb7
	strb r6, [r0]
	movs r4, #8
	rsbs r4, r4, #0
	movs r5, #0x20
	rsbs r5, r5, #0
	str r6, [sp]
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #8
	bl sub_0803E308
	str r6, [sp]
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #8
	bl sub_0803E2B0
	ldr r0, _0811B9BC @ =sub_0811B5B8
	str r0, [r7, #0x78]
	mov r2, r8
	adds r2, #0xb4
	ldrh r1, [r2]
	ldr r0, _0811B9C0 @ =0x0000FFFE
	ands r0, r1
	ldr r1, _0811B9C4 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
_0811B99E:
	adds r1, r7, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0811B9D0
	ldr r2, _0811B9C8 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _0811B9CC @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	b _0811B9D2
	.align 2, 0
_0811B9BC: .4byte sub_0811B5B8
_0811B9C0: .4byte 0x0000FFFE
_0811B9C4: .4byte 0x0000FFFD
_0811B9C8: .4byte gCurLevelInfo
_0811B9CC: .4byte 0x0000065E
_0811B9D0:
	movs r0, #0xff
_0811B9D2:
	cmp r0, #0xff
	beq _0811B9FA
	lsls r3, r0, #3
	ldr r1, _0811BA08 @ =gUnk_02022F40
	adds r1, r0, r1
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0811BA0C @ =gUnk_02022EC0
	lsls r1, r0, #2
	adds r1, r1, r2
	str r7, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_0811B9FA:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811BA08: .4byte gUnk_02022F40
_0811BA0C: .4byte gUnk_02022EC0

	thumb_func_start sub_0811BA10
sub_0811BA10: @ 0x0811BA10
	adds r3, r0, #0
	movs r2, #0
	movs r1, #0
	strh r1, [r3, #4]
	ldr r0, _0811BA2C @ =sub_0811B5B8
	str r0, [r3, #0x78]
	adds r0, r3, #0
	adds r0, #0xb4
	strh r1, [r0]
	adds r0, #2
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	bx lr
	.align 2, 0
_0811BA2C: .4byte sub_0811B5B8

	thumb_func_start sub_0811BA30
sub_0811BA30: @ 0x0811BA30
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r4, #0
	movs r0, #0
	mov r8, r0
	movs r7, #0
	movs r0, #0x46
	strh r0, [r4, #4]
	adds r5, r4, #0
	adds r5, #0xb0
	ldr r0, [r5]
	ldrb r0, [r0, #0x14]
	subs r0, #0x38
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1a
	bhi _0811BA5A
	strh r7, [r4, #4]
_0811BA5A:
	ldr r0, [r5]
	ldrh r0, [r0, #0x14]
	lsrs r0, r0, #8
	lsls r0, r0, #3
	bl EwramMalloc
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x8c
	str r1, [r0]
	str r7, [sp]
	ldr r0, [r5]
	ldrh r0, [r0, #0x14]
	lsrs r0, r0, #8
	lsls r0, r0, #2
	lsrs r2, r0, #2
	movs r0, #0xa0
	lsls r0, r0, #0x13
	orrs r2, r0
	mov r0, sp
	bl CpuSet
	ldr r0, _0811BAA8 @ =sub_0811BAAC
	str r0, [r6, #0x78]
	adds r0, r6, #0
	adds r0, #0xde
	mov r1, r8
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	subs r0, #3
	strh r7, [r0]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811BAA8: .4byte sub_0811BAAC

	thumb_func_start sub_0811BAAC
sub_0811BAAC: @ 0x0811BAAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	adds r5, r0, #0
	mov r8, r5
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0811BAF4
	ldr r2, _0811BAEC @ =gCurLevelInfo
	adds r4, r5, #0
	adds r4, #0xac
	ldr r0, [r4]
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _0811BAF0 @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_080029E4
	b _0811BB12
	.align 2, 0
_0811BAEC: .4byte gCurLevelInfo
_0811BAF0: .4byte 0x0000065E
_0811BAF4:
	ldr r2, _0811BBF4 @ =gCurLevelInfo
	adds r4, r5, #0
	adds r4, #0xac
	ldr r0, [r4]
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _0811BBF8 @ =0x0000065E
	adds r0, r0, r2
	ldrb r0, [r0]
	bl sub_080029BC
_0811BB12:
	adds r1, r5, #0
	adds r1, #0xdc
	strh r0, [r1]
	str r4, [sp, #0x28]
	mov r1, r8
	adds r1, #0xdc
	adds r2, r5, #0
	adds r2, #0xb0
	ldr r4, [r2]
	ldrh r0, [r4, #0x18]
	movs r3, #0xff
	lsls r3, r3, #8
	ldrh r1, [r1]
	lsrs r0, r0, #8
	adds r6, r2, #0
	cmp r1, r0
	bhs _0811BB36
	b _0811BD9E
_0811BB36:
	mov r2, r8
	adds r2, #0xde
	ldrh r0, [r4, #0x14]
	ands r3, r0
	ldrb r1, [r2]
	lsrs r0, r3, #8
	str r2, [sp, #0x24]
	cmp r1, r0
	blo _0811BB4A
	b _0811BD9E
_0811BB4A:
	mov r1, r8
	adds r1, #0xdf
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r6]
	ldrh r2, [r0, #0x12]
	ldrb r0, [r1]
	mov sl, r1
	cmp r0, r2
	bhs _0811BB62
	b _0811BD9E
_0811BB62:
	strb r2, [r1]
	ldr r0, [r6]
	ldrb r0, [r0, #0x14]
	subs r0, #0x38
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1a
	bhi _0811BC1C
	movs r7, #4
	ldrsh r0, [r5, r7]
	cmp r0, #0
	bne _0811BBF0
	movs r2, #0xb1
	lsls r2, r2, #2
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r1, _0811BBFC @ =gUnk_02020EE0
	ldr r0, _0811BC00 @ =gUnk_0203AD3C
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
	bne _0811BBF0
	ldrb r0, [r5]
	cmp r0, #0
	bne _0811BBB4
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0811BBF0
_0811BBB4:
	ldr r1, _0811BC04 @ =gUnk_08D60FA4
	ldr r4, _0811BC08 @ =gSongTable
	ldr r2, _0811BC0C @ =0x000011B4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0811BBD8
	ldr r7, _0811BC10 @ =0x000011B0
	adds r0, r4, r7
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0811BBF0
_0811BBD8:
	cmp r3, #0
	beq _0811BBEA
	ldr r0, _0811BC14 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0811BBF0
_0811BBEA:
	ldr r0, _0811BC18 @ =0x00000236
	bl m4aSongNumStart
_0811BBF0:
	movs r0, #5
	b _0811BC94
	.align 2, 0
_0811BBF4: .4byte gCurLevelInfo
_0811BBF8: .4byte 0x0000065E
_0811BBFC: .4byte gUnk_02020EE0
_0811BC00: .4byte gUnk_0203AD3C
_0811BC04: .4byte gUnk_08D60FA4
_0811BC08: .4byte gSongTable
_0811BC0C: .4byte 0x000011B4
_0811BC10: .4byte 0x000011B0
_0811BC14: .4byte gUnk_0203AD10
_0811BC18: .4byte 0x00000236
_0811BC1C:
	movs r2, #0xad
	lsls r2, r2, #2
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r1, _0811BCB8 @ =gUnk_02020EE0
	ldr r0, _0811BCBC @ =gUnk_0203AD3C
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
	bne _0811BC92
	ldrb r0, [r5]
	cmp r0, #0
	bne _0811BC56
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0811BC92
_0811BC56:
	ldr r1, _0811BCC0 @ =gUnk_08D60FA4
	ldr r4, _0811BCC4 @ =gSongTable
	ldr r2, _0811BCC8 @ =0x00000B3C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0811BC7A
	ldr r7, _0811BCCC @ =0x00000B38
	adds r0, r4, r7
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0811BC92
_0811BC7A:
	cmp r3, #0
	beq _0811BC8C
	ldr r0, _0811BCD0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0811BC92
_0811BC8C:
	ldr r0, _0811BCD4 @ =0x00000167
	bl m4aSongNumStart
_0811BC92:
	movs r0, #0
_0811BC94:
	mov ip, r0
	ldrh r0, [r5, #4]
	adds r1, r0, #1
	strh r1, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x40
	ble _0811BD9E
	movs r4, #0
	ldr r1, _0811BCD8 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	movs r7, #0x8c
	adds r7, r7, r5
	mov sb, r7
	b _0811BCFC
	.align 2, 0
_0811BCB8: .4byte gUnk_02020EE0
_0811BCBC: .4byte gUnk_0203AD3C
_0811BCC0: .4byte gUnk_08D60FA4
_0811BCC4: .4byte gSongTable
_0811BCC8: .4byte 0x00000B3C
_0811BCCC: .4byte 0x00000B38
_0811BCD0: .4byte gUnk_0203AD10
_0811BCD4: .4byte 0x00000167
_0811BCD8: .4byte gUnk_020229D4
_0811BCDC:
	str r4, [r1]
	ldr r1, [sp, #0x24]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _0811BD98
_0811BCE8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _0811BD04
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_0811BCFC:
	cmp r0, #0
	bne _0811BCE8
	orrs r2, r3
	str r2, [r1]
_0811BD04:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	ldr r2, _0811BDCC @ =gUnk_020229E0
	adds r1, r1, r2
	movs r3, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	ldr r0, [r6]
	ldrh r0, [r0, #6]
	movs r2, #0
	strh r0, [r1, #6]
	ldr r0, [r6]
	ldrh r0, [r0, #8]
	strh r0, [r1, #8]
	strb r2, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	ldr r0, [r6]
	ldrh r0, [r0, #0x14]
	strb r0, [r1, #0xc]
	ldr r0, [r6]
	ldrb r0, [r0, #0xe]
	strb r0, [r1, #0xe]
	strb r2, [r1, #0xf]
	ldr r0, [r6]
	ldrb r0, [r0, #0x10]
	strb r0, [r1, #0x10]
	mov r7, ip
	strh r7, [r1, #0x22]
	ldr r0, [r6]
	ldrh r0, [r0, #0x1a]
	strh r0, [r1, #0x1a]
	ldr r0, [r6]
	ldrh r0, [r0, #0x1c]
	strh r0, [r1, #0x1c]
	ldr r0, [r6]
	ldrh r0, [r0, #0x1e]
	strh r0, [r1, #0x1e]
	ldr r0, [r6]
	ldrh r0, [r0, #0x20]
	strh r0, [r1, #0x20]
	strb r2, [r1, #0x11]
	strh r3, [r1, #0x12]
	strh r3, [r1, #0x14]
	strh r3, [r1, #0x16]
	strh r3, [r1, #0x18]
	ldr r2, [sp, #0x28]
	ldr r0, [r2]
	adds r0, #0x56
	ldrb r0, [r0]
	bl CreateObject
	adds r4, r0, #0
	mov r7, sb
	ldr r1, [r7]
	movs r2, #0
	ldr r0, [r6]
	ldrh r0, [r0, #0x14]
	lsrs r0, r0, #8
	cmp r2, r0
	bhs _0811BD98
	adds r3, r0, #0
_0811BD8A:
	ldr r0, [r1]
	cmp r0, #0
	beq _0811BCDC
	adds r1, #4
	adds r2, #1
	cmp r2, r3
	blo _0811BD8A
_0811BD98:
	movs r0, #0
	mov r1, sl
	strb r0, [r1]
_0811BD9E:
	ldr r0, [r6]
	ldrh r1, [r0, #0x22]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0811BDBA
	mov r0, r8
	adds r0, #0xde
	ldrb r0, [r0]
	cmp r0, #0
	beq _0811BDBA
	adds r0, r5, #0
	bl sub_0811BE64
_0811BDBA:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811BDCC: .4byte gUnk_020229E0

	thumb_func_start sub_0811BDD0
sub_0811BDD0: @ 0x0811BDD0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _0811BE04 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _0811BE08 @ =sub_0811BEBC
	str r1, [sp]
	movs r1, #0xe0
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811BE0C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0811BE14
	.align 2, 0
_0811BE04: .4byte ObjectMain
_0811BE08: .4byte sub_0811BEBC
_0811BE0C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0811BE14:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	ldr r1, _0811BE5C @ =gUnk_02018F40
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
	ldr r2, _0811BE60 @ =gUnk_08351648
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
_0811BE5C: .4byte gUnk_02018F40
_0811BE60: .4byte gUnk_08351648

	thumb_func_start sub_0811BE64
sub_0811BE64: @ 0x0811BE64
	push {r4, r5, r6, lr}
	mov ip, r0
	adds r0, #0x8c
	ldr r2, [r0]
	movs r4, #0
	adds r0, #0x24
	ldr r0, [r0]
	ldrh r0, [r0, #0x14]
	movs r1, #0xff
	lsls r1, r1, #8
	lsrs r0, r0, #8
	cmp r4, r0
	bhs _0811BEB6
	mov r3, ip
	adds r3, #0xde
	adds r6, r1, #0
	movs r5, #0x80
	lsls r5, r5, #5
_0811BE88:
	ldr r0, [r2]
	cmp r0, #0
	beq _0811BEA0
	ldr r0, [r0, #8]
	ands r0, r5
	cmp r0, #0
	beq _0811BEA0
	movs r0, #0
	str r0, [r2]
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
_0811BEA0:
	adds r2, #4
	adds r4, #1
	mov r0, ip
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x14]
	adds r0, r6, #0
	ands r0, r1
	lsrs r0, r0, #8
	cmp r4, r0
	blo _0811BE88
_0811BEB6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0811BEBC
sub_0811BEBC: @ 0x0811BEBC
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811BED6
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0811BEDE
_0811BED6:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0811BEDE:
	adds r1, r0, #0
	adds r1, #0x56
	ldrb r6, [r1]
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r5, [r0, #2]
	ldrb r7, [r0, #3]
	ldr r1, _0811BF1C @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r6, r0
	adds r0, r0, r1
	ldr r1, _0811BF20 @ =0x0000065E
	adds r0, r0, r1
	ldrb r4, [r0]
	adds r0, r2, #0
	bl ObjectDestroy
	cmp r5, #0
	bne _0811BF0A
	cmp r6, #0xff
	beq _0811BF16
_0811BF0A:
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_08001678
_0811BF16:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811BF1C: .4byte gCurLevelInfo
_0811BF20: .4byte 0x0000065E

	thumb_func_start sub_0811BF24
sub_0811BF24: @ 0x0811BF24
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov ip, r0
	ldr r2, _0811BFA8 @ =gCurLevelInfo
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	mov sl, r0
	movs r6, #0
	ldr r0, _0811BFAC @ =gUnk_0203AD44
	mov r8, r0
	ldrb r7, [r0]
	cmp r6, r7
	blo _0811BF58
	b _0811C05E
_0811BF58:
	ldr r5, _0811BFB0 @ =gUnk_02020EE0
	mov r4, sp
	mov sb, r5
	mov r0, ip
	adds r0, #0xb6
	str r0, [sp, #8]
_0811BF64:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r6, r0
	add r0, sb
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, sl
	bne _0811C050
	mov r0, ip
	adds r0, #0xb0
	ldr r3, [r0]
	ldrh r1, [r3, #0x22]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0811BFB4
	mov r1, ip
	ldr r2, [r1, #0x40]
	asrs r2, r2, #8
	ldrh r7, [r3, #0x1a]
	adds r2, r2, r7
	strh r2, [r4]
	ldr r0, [r1, #0x44]
	asrs r0, r0, #8
	ldrh r1, [r3, #0x1c]
	adds r0, r0, r1
	strh r0, [r4, #2]
	ldrh r1, [r3, #0x1e]
	adds r2, r2, r1
	strh r2, [r4, #4]
	ldrh r1, [r3, #0x20]
	adds r0, r0, r1
	strh r0, [r4, #6]
	b _0811BFD2
	.align 2, 0
_0811BFA8: .4byte gCurLevelInfo
_0811BFAC: .4byte gUnk_0203AD44
_0811BFB0: .4byte gUnk_02020EE0
_0811BFB4:
	mov r7, ip
	ldr r2, [r7, #0x40]
	asrs r2, r2, #8
	adds r0, r2, #0
	subs r0, #8
	strh r0, [r4]
	ldr r1, [r7, #0x44]
	asrs r1, r1, #8
	adds r0, r1, #0
	subs r0, #0x18
	strh r0, [r4, #2]
	adds r2, #8
	strh r2, [r4, #4]
	subs r1, #8
	strh r1, [r4, #6]
_0811BFD2:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r3, r6, #0
	muls r3, r0, r3
	adds r0, r5, #0
	adds r0, #0x40
	adds r0, r3, r0
	ldr r1, [r0]
	lsls r1, r1, #8
	adds r0, r5, #0
	adds r0, #0x44
	adds r0, r3, r0
	ldr r0, [r0]
	lsls r0, r0, #8
	lsrs r2, r0, #0x10
	movs r7, #0
	ldrsh r0, [r4, r7]
	asrs r1, r1, #0x10
	cmp r0, r1
	bgt _0811C050
	movs r7, #4
	ldrsh r0, [r4, r7]
	cmp r0, r1
	blt _0811C050
	ldrh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsls r1, r2, #0x10
	asrs r2, r1, #0x10
	cmp r0, r1
	bgt _0811C050
	movs r1, #6
	ldrsh r0, [r4, r1]
	cmp r0, r2
	blt _0811C050
	adds r0, r5, #0
	adds r0, #0xc
	adds r0, r3, r0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0811C050
	adds r0, r5, #0
	adds r0, #8
	adds r0, r3, r0
	ldr r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0811C050
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	bne _0811C050
	ldr r7, [sp, #8]
	ldrh r1, [r7]
	movs r0, #1
	orrs r0, r1
	strh r0, [r7]
	ldr r0, _0811C078 @ =sub_0811C07C
	mov r1, ip
	str r0, [r1, #0x78]
_0811C050:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	mov r7, r8
	ldrb r7, [r7]
	cmp r6, r7
	blo _0811BF64
_0811C05E:
	mov r1, ip
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811C078: .4byte sub_0811C07C

	thumb_func_start sub_0811C07C
sub_0811C07C: @ 0x0811C07C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	adds r4, r6, #0
	adds r4, #0x56
	ldrb r7, [r4]
	ldr r0, [r6, #0x40]
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, [r6, #0x44]
	lsls r0, r0, #4
	lsrs r5, r0, #0x10
	adds r1, r6, #0
	adds r1, #0xb4
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bne _0811C170
	ldr r2, _0811C154 @ =0x0000028D
	adds r0, r6, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r1, _0811C158 @ =gUnk_02020EE0
	ldr r0, _0811C15C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0811C11C
	ldrb r0, [r6]
	cmp r0, #0
	bne _0811C0DC
	ldrb r0, [r4]
	cmp r0, r2
	bne _0811C11C
_0811C0DC:
	ldr r1, _0811C160 @ =gUnk_08D60FA4
	ldr r4, _0811C164 @ =gSongTable
	ldr r2, _0811C168 @ =0x00000FF4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0811C102
	movs r1, #0xff
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0811C11C
_0811C102:
	cmp r3, #0
	beq _0811C114
	ldr r0, _0811C16C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0811C11C
_0811C114:
	movs r0, #0xff
	lsls r0, r0, #1
	bl m4aSongNumStart
_0811C11C:
	mov r4, r8
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080023E4
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r7, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r6, #8]
	b _0811C174
	.align 2, 0
_0811C154: .4byte 0x0000028D
_0811C158: .4byte gUnk_02020EE0
_0811C15C: .4byte gUnk_0203AD3C
_0811C160: .4byte gUnk_08D60FA4
_0811C164: .4byte gSongTable
_0811C168: .4byte 0x00000FF4
_0811C16C: .4byte gUnk_0203AD10
_0811C170:
	subs r0, r2, #1
	strh r0, [r1]
_0811C174:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0811C180
sub_0811C180: @ 0x0811C180
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _0811C1B4 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _0811C1B8 @ =sub_0811C234
	str r1, [sp]
	movs r1, #0xb8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811C1BC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0811C1C4
	.align 2, 0
_0811C1B4: .4byte ObjectMain
_0811C1B8: .4byte sub_0811C234
_0811C1BC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0811C1C4:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	ldr r1, _0811C20C @ =gUnk_02018F40
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
	ldr r2, _0811C210 @ =gUnk_08351648
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
_0811C20C: .4byte gUnk_02018F40
_0811C210: .4byte gUnk_08351648

	thumb_func_start sub_0811C214
sub_0811C214: @ 0x0811C214
	adds r3, r0, #0
	movs r2, #0
	strh r2, [r3, #4]
	adds r1, r3, #0
	adds r1, #0xb4
	movs r0, #0xa
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0xb6
	strh r2, [r0]
	ldr r0, _0811C230 @ =sub_0811BF24
	str r0, [r3, #0x78]
	bx lr
	.align 2, 0
_0811C230: .4byte sub_0811BF24

	thumb_func_start sub_0811C234
sub_0811C234: @ 0x0811C234
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811C24E
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0811C256
_0811C24E:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0811C256:
	adds r1, r0, #0
	adds r1, #0x56
	ldrb r6, [r1]
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r5, [r0, #2]
	ldrb r7, [r0, #3]
	ldr r1, _0811C294 @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r6, r0
	adds r0, r0, r1
	ldr r1, _0811C298 @ =0x0000065E
	adds r0, r0, r1
	ldrb r4, [r0]
	adds r0, r2, #0
	bl ObjectDestroy
	cmp r5, #0
	bne _0811C282
	cmp r6, #0xff
	beq _0811C28E
_0811C282:
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_08001678
_0811C28E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811C294: .4byte gCurLevelInfo
_0811C298: .4byte 0x0000065E

	thumb_func_start sub_0811C29C
sub_0811C29C: @ 0x0811C29C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	movs r0, #0
	mov sb, r0
	movs r0, #0
	strh r0, [r7, #4]
	ldr r0, _0811C324 @ =sub_0811C328
	str r0, [r7, #0x78]
	movs r0, #0x18
	bl EwramMalloc
	adds r6, r0, #0
	adds r0, r7, #0
	adds r0, #0x8c
	str r6, [r0]
	subs r0, #0x2c
	ldrb r0, [r0]
	mov r8, r0
	ldr r5, [r7, #0x40]
	lsls r5, r5, #4
	lsrs r5, r5, #0x10
	ldr r4, [r7, #0x44]
	lsls r4, r4, #4
	lsrs r4, r4, #0x10
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r4, #0x18
	lsrs r2, r2, #0x18
	bl sub_080025AC
	str r0, [r6, #0x14]
	adds r3, r6, #0
	adds r3, #8
	mov r0, r8
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080015A8
	mov r0, r8
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080023E4
	strb r0, [r6, #0x10]
	movs r0, #1
	strb r0, [r6]
	ldr r0, [r6, #0x14]
	ldrb r0, [r0, #0x10]
	strb r0, [r6, #1]
	strb r5, [r6, #2]
	strb r4, [r6, #3]
	movs r0, #0x14
	strh r0, [r6, #4]
	adds r0, r7, #0
	adds r0, #0x85
	mov r1, sb
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811C324: .4byte sub_0811C328

	thumb_func_start sub_0811C328
sub_0811C328: @ 0x0811C328
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x8c
	ldr r7, [r0]
	subs r0, #0x2c
	ldrb r3, [r0]
	mov ip, r3
	adds r2, r4, #0
	adds r2, #0x84
	adds r0, #0x50
	ldr r1, [r0]
	ldrb r0, [r2]
	ldrh r1, [r1, #0x1e]
	cmp r0, r1
	bls _0811C37E
	adds r5, r4, #0
	adds r5, #0x85
	ldrb r1, [r5]
	movs r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0811C368
	adds r0, r3, #0
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	movs r0, #0
	strb r0, [r5]
	b _0811C376
_0811C368:
	ldr r1, [r7, #0x14]
	mov r0, ip
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	strb r6, [r5]
_0811C376:
	adds r1, r4, #0
	adds r1, #0x84
	movs r0, #0
	strb r0, [r1]
_0811C37E:
	adds r0, r4, #0
	adds r0, #0x84
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0811C394
sub_0811C394: @ 0x0811C394
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _0811C3C8 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _0811C3CC @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811C3D0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0811C3D8
	.align 2, 0
_0811C3C8: .4byte ObjectMain
_0811C3CC: .4byte ObjectDestroy
_0811C3D0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0811C3D8:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	ldr r1, _0811C420 @ =gUnk_02018F40
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
	ldr r2, _0811C424 @ =gUnk_08351648
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
_0811C420: .4byte gUnk_02018F40
_0811C424: .4byte gUnk_08351648

	thumb_func_start sub_0811C428
sub_0811C428: @ 0x0811C428
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _0811C45C @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _0811C460 @ =sub_0811C768
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811C464
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0811C46C
	.align 2, 0
_0811C45C: .4byte ObjectMain
_0811C460: .4byte sub_0811C768
_0811C464:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0811C46C:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r2, [r4, #8]
	ldr r0, _0811C4A4 @ =gUnk_02008540
	orrs r2, r0
	str r2, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0811C4A8
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	b _0811C4B8
	.align 2, 0
_0811C4A4: .4byte gUnk_02008540
_0811C4A8:
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
_0811C4B8:
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #0x22]
	movs r3, #2
	adds r0, r3, #0
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _0811C4E8
	ldr r0, [r4, #0x68]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #0x68]
_0811C4E8:
	add r1, sp, #4
	ldr r0, [r5]
	ldrh r0, [r0, #0x1a]
	strb r0, [r1]
	ldr r0, [r5]
	ldrh r0, [r0, #0x1c]
	strb r0, [r1, #1]
	adds r2, r1, #0
	ldr r0, [r5]
	ldrb r0, [r0, #0x1e]
	ldrb r1, [r1]
	adds r0, r0, r1
	strb r0, [r2, #2]
	adds r0, r2, #0
	ldr r1, [r5]
	ldrb r0, [r0, #1]
	ldrh r1, [r1, #0x20]
	adds r0, r0, r1
	strb r0, [r2, #3]
	ldr r0, [r5]
	ldrh r1, [r0, #0x22]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0811C55C
	adds r0, r2, #0
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r2, #1
	ldrsb r2, [r0, r2]
	movs r3, #2
	ldrsb r3, [r0, r3]
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0803E2B0
	add r0, sp, #4
	ldrb r1, [r0]
	adds r1, #4
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r2, #1
	ldrsb r2, [r0, r2]
	ldrb r3, [r0, #2]
	subs r3, #4
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0803E308
	b _0811C578
_0811C55C:
	add r0, sp, #4
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r2, #1
	ldrsb r2, [r0, r2]
	movs r3, #2
	ldrsb r3, [r0, r3]
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0803E308
_0811C578:
	ldr r2, [r5]
	ldrh r1, [r2, #0x22]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0811C5A6
	ldrb r1, [r2, #4]
	ldr r3, _0811C5CC @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _0811C5D0 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	str r5, [r0]
_0811C5A6:
	ldr r2, _0811C5D4 @ =gUnk_08351648
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
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0811C5CC: .4byte gCurLevelInfo
_0811C5D0: .4byte 0x0000065E
_0811C5D4: .4byte gUnk_08351648

	thumb_func_start sub_0811C5D8
sub_0811C5D8: @ 0x0811C5D8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0xb0
	ldr r1, [r6]
	ldrh r2, [r1, #0x22]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0811C690
	ldrb r1, [r1, #4]
	ldr r0, _0811C62C @ =gCurLevelInfo
	mov sb, r0
	adds r4, r5, #0
	adds r4, #0x56
	ldrb r0, [r4]
	movs r2, #0xcd
	lsls r2, r2, #3
	mov r8, r2
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	add r0, sb
	ldr r7, _0811C630 @ =0x0000065E
	adds r0, r0, r7
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _0811C634
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
	b _0811C73E
	.align 2, 0
_0811C62C: .4byte gCurLevelInfo
_0811C630: .4byte 0x0000065E
_0811C634:
	ldr r0, [r6]
	ldrh r1, [r0, #0x22]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0811C67E
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _0811C654
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	add r0, sb
	adds r0, r0, r7
	ldrb r0, [r0]
	b _0811C656
_0811C654:
	movs r0, #0xff
_0811C656:
	cmp r0, #0xff
	beq _0811C67E
	lsls r3, r0, #3
	ldr r1, _0811C688 @ =gUnk_02022F40
	adds r1, r0, r1
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0811C68C @ =gUnk_02022EC0
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_0811C67E:
	ldrb r0, [r4]
	cmp r0, #0xff
	bne _0811C6F0
	b _0811C714
	.align 2, 0
_0811C688: .4byte gUnk_02022F40
_0811C68C: .4byte gUnk_02022EC0
_0811C690:
	movs r0, #2
	ands r0, r2
	adds r4, r5, #0
	adds r4, #0x56
	cmp r0, #0
	beq _0811C6EA
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _0811C6C0
	ldr r2, _0811C6B8 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _0811C6BC @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	b _0811C6C2
	.align 2, 0
_0811C6B8: .4byte gCurLevelInfo
_0811C6BC: .4byte 0x0000065E
_0811C6C0:
	movs r0, #0xff
_0811C6C2:
	cmp r0, #0xff
	beq _0811C6EA
	lsls r3, r0, #3
	ldr r1, _0811C704 @ =gUnk_02022F40
	adds r1, r0, r1
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0811C708 @ =gUnk_02022EC0
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_0811C6EA:
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _0811C714
_0811C6F0:
	ldr r2, _0811C70C @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _0811C710 @ =0x0000065E
	adds r0, r0, r2
	ldrb r4, [r0]
	b _0811C716
	.align 2, 0
_0811C704: .4byte gUnk_02022F40
_0811C708: .4byte gUnk_02022EC0
_0811C70C: .4byte gCurLevelInfo
_0811C710: .4byte 0x0000065E
_0811C714:
	movs r4, #0xff
_0811C716:
	cmp r4, #0xff
	beq _0811C73E
	lsls r3, r4, #3
	ldr r1, _0811C750 @ =gUnk_02022F40
	adds r1, r4, r1
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0811C754 @ =gUnk_02022EC0
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_0811C73E:
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811C750: .4byte gUnk_02022F40
_0811C754: .4byte gUnk_02022EC0

	thumb_func_start sub_0811C758
sub_0811C758: @ 0x0811C758
	movs r1, #0
	strh r1, [r0, #4]
	ldr r1, _0811C764 @ =sub_0811C5D8
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_0811C764: .4byte sub_0811C5D8

	thumb_func_start sub_0811C768
sub_0811C768: @ 0x0811C768
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811C782
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0811C78A
_0811C782:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0811C78A:
	adds r1, r0, #0
	adds r1, #0x56
	ldrb r6, [r1]
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r5, [r0, #2]
	ldrb r7, [r0, #3]
	ldr r1, _0811C7C8 @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r6, r0
	adds r0, r0, r1
	ldr r1, _0811C7CC @ =0x0000065E
	adds r0, r0, r1
	ldrb r4, [r0]
	adds r0, r2, #0
	bl ObjectDestroy
	cmp r5, #0
	bne _0811C7B6
	cmp r6, #0xff
	beq _0811C7C2
_0811C7B6:
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_08001678
_0811C7C2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811C7C8: .4byte gCurLevelInfo
_0811C7CC: .4byte 0x0000065E

	thumb_func_start sub_0811C7D0
sub_0811C7D0: @ 0x0811C7D0
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, _0811C8A8 @ =gCurLevelInfo
	mov ip, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r4, r5, #0
	muls r4, r0, r4
	mov r0, ip
	adds r0, #0x7c
	adds r0, r4, r0
	ldr r1, [r3, #8]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x84
	adds r0, r4, r0
	ldr r1, [r3, #0x10]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x80
	adds r0, r4, r0
	ldr r1, [r3, #0xc]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x88
	adds r0, r4, r0
	ldr r1, [r3, #0x14]
	str r1, [r0]
	mov r0, ip
	adds r0, #0xa0
	adds r0, r4, r0
	ldr r1, [r3, #8]
	str r1, [r0]
	mov r0, ip
	adds r0, #0xa4
	adds r0, r4, r0
	ldr r1, [r3, #0xc]
	str r1, [r0]
	mov r0, ip
	adds r0, #0xa8
	adds r0, r4, r0
	ldr r1, [r3, #0x10]
	str r1, [r0]
	mov r0, ip
	adds r0, #0xac
	adds r0, r4, r0
	ldr r1, [r3, #0x14]
	str r1, [r0]
	movs r6, #0x10
	adds r0, r2, #0
	ands r0, r6
	cmp r0, #0
	beq _0811C8AC
	mov r0, ip
	adds r0, #0x6c
	adds r0, r4, r0
	ldr r1, [r3, #8]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x74
	adds r0, r4, r0
	ldr r1, [r3, #0x10]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x70
	adds r0, r4, r0
	ldr r1, [r3, #0xc]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x78
	adds r0, r4, r0
	ldr r1, [r3, #0x14]
	str r1, [r0]
	adds r1, r6, #0
	lsls r1, r5
	ldr r2, [r3, #4]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0811C8B4
	orrs r2, r1
	str r2, [r3, #4]
	mov r0, ip
	adds r0, #0x90
	adds r0, r4, r0
	ldr r1, [r3, #8]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x94
	adds r0, r4, r0
	ldr r1, [r3, #0xc]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x98
	adds r0, r4, r0
	ldr r1, [r3, #0x10]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x9c
	adds r0, r4, r0
	ldr r1, [r3, #0x14]
	str r1, [r0]
	b _0811C8B4
	.align 2, 0
_0811C8A8: .4byte gCurLevelInfo
_0811C8AC:
	adds r0, r3, #0
	adds r1, r5, #0
	bl sub_0811C8BC
_0811C8B4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0811C8BC
sub_0811C8BC: @ 0x0811C8BC
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	movs r2, #0x10
	lsls r2, r6
	ldr r1, [r3, #4]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _0811C9BE
	orrs r1, r2
	str r1, [r3, #4]
	ldr r0, [r3, #0x10]
	ldr r1, [r3, #8]
	subs r0, r0, r1
	ldr r1, _0811C9C4 @ =0x0000EFFF
	ldr r2, _0811C9C8 @ =gCurLevelInfo
	mov ip, r2
	cmp r0, r1
	ble _0811C91C
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r1, r6, #0
	muls r1, r0, r1
	mov r0, ip
	adds r0, #0x6c
	adds r4, r1, r0
	subs r0, #0x60
	adds r5, r1, r0
	ldr r0, [r5]
	ldr r7, _0811C9CC @ =0xFFFFF800
	adds r2, r0, r7
	ldr r0, [r4]
	cmp r0, r2
	bgt _0811C906
	str r2, [r4]
_0811C906:
	mov r0, ip
	adds r0, #0x74
	adds r2, r1, r0
	ldr r0, [r5]
	movs r4, #0xf8
	lsls r4, r4, #8
	adds r1, r0, r4
	ldr r0, [r2]
	cmp r0, r1
	blt _0811C91C
	str r1, [r2]
_0811C91C:
	ldr r0, [r3, #0x14]
	ldr r1, [r3, #0xc]
	subs r0, r0, r1
	ldr r1, _0811C9D0 @ =0x00009FFF
	cmp r0, r1
	ble _0811C95E
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r2, r6, #0
	muls r2, r0, r2
	mov r0, ip
	adds r0, #0x70
	adds r3, r2, r0
	subs r0, #0x60
	adds r4, r2, r0
	ldr r0, [r4]
	ldr r5, _0811C9CC @ =0xFFFFF800
	adds r1, r0, r5
	ldr r0, [r3]
	cmp r0, r1
	bgt _0811C948
	str r1, [r3]
_0811C948:
	mov r0, ip
	adds r0, #0x78
	adds r2, r2, r0
	ldr r0, [r4]
	movs r7, #0xa8
	lsls r7, r7, #8
	adds r1, r0, r7
	ldr r0, [r2]
	cmp r0, r1
	blt _0811C95E
	str r1, [r2]
_0811C95E:
	mov r3, ip
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r1, r6, #0
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x90
	adds r4, r1, r0
	subs r0, #0x84
	adds r6, r1, r0
	ldr r0, [r6]
	ldr r7, _0811C9CC @ =0xFFFFF800
	adds r2, r0, r7
	ldr r0, [r4]
	cmp r0, r2
	bgt _0811C980
	str r2, [r4]
_0811C980:
	adds r0, r3, #0
	adds r0, #0x94
	adds r4, r1, r0
	subs r0, #0x84
	adds r5, r1, r0
	ldr r0, [r5]
	adds r2, r0, r7
	ldr r0, [r4]
	cmp r0, r2
	bgt _0811C996
	str r2, [r4]
_0811C996:
	adds r0, r3, #0
	adds r0, #0x98
	adds r3, r1, r0
	ldr r0, [r6]
	movs r4, #0xf8
	lsls r4, r4, #8
	adds r2, r0, r4
	ldr r0, [r3]
	cmp r0, r2
	blt _0811C9AC
	str r2, [r3]
_0811C9AC:
	mov r0, ip
	adds r0, #0x9c
	adds r1, r1, r0
	ldr r0, [r5]
	adds r2, r0, r4
	ldr r0, [r1]
	cmp r0, r2
	blt _0811C9BE
	str r2, [r1]
_0811C9BE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811C9C4: .4byte 0x0000EFFF
_0811C9C8: .4byte gCurLevelInfo
_0811C9CC: .4byte 0xFFFFF800
_0811C9D0: .4byte 0x00009FFF

	thumb_func_start sub_0811C9D4
sub_0811C9D4: @ 0x0811C9D4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r6, r0, #0
	movs r7, #0
	strh r7, [r6, #4]
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #0x22]
	movs r1, #3
	mov r8, r1
	mov r5, r8
	ands r5, r0
	cmp r5, #1
	beq _0811CA30
	cmp r5, #1
	bgt _0811C9FE
	cmp r5, #0
	beq _0811CA0C
	b _0811CA06
_0811C9FE:
	cmp r5, #2
	beq _0811CA54
	cmp r5, #3
	beq _0811CA78
_0811CA06:
	adds r4, r6, #0
	adds r4, #0x8c
	b _0811CA96
_0811CA0C:
	movs r0, #0x44
	bl EwramMalloc
	adds r1, r0, #0
	adds r4, r6, #0
	adds r4, #0x8c
	str r1, [r4]
	str r7, [sp]
	ldr r2, _0811CA2C @ =0x05000011
	mov r0, sp
	bl CpuSet
	ldr r1, [r4]
	movs r0, #1
	b _0811CA94
	.align 2, 0
_0811CA2C: .4byte 0x05000011
_0811CA30:
	movs r0, #0x54
	bl EwramMalloc
	adds r1, r0, #0
	adds r4, r6, #0
	adds r4, #0x8c
	str r1, [r4]
	str r7, [sp, #4]
	add r0, sp, #4
	ldr r2, _0811CA50 @ =0x05000015
	bl CpuSet
	ldr r0, [r4]
	str r5, [r0]
	b _0811CA96
	.align 2, 0
_0811CA50: .4byte 0x05000015
_0811CA54:
	movs r0, #0x44
	bl EwramMalloc
	adds r1, r0, #0
	adds r4, r6, #0
	adds r4, #0x8c
	str r1, [r4]
	str r7, [sp, #8]
	add r0, sp, #8
	ldr r2, _0811CA74 @ =0x05000011
	bl CpuSet
	ldr r0, [r4]
	mov r1, r8
	str r1, [r0]
	b _0811CA96
	.align 2, 0
_0811CA74: .4byte 0x05000011
_0811CA78:
	movs r0, #0x54
	bl EwramMalloc
	adds r1, r0, #0
	adds r4, r6, #0
	adds r4, #0x8c
	str r1, [r4]
	str r7, [sp, #0xc]
	add r0, sp, #0xc
	ldr r2, _0811CB08 @ =0x05000015
	bl CpuSet
	ldr r1, [r4]
	movs r0, #4
_0811CA94:
	str r0, [r1]
_0811CA96:
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r1, [r0]
	ldr r2, [r4]
	ldr r3, _0811CB0C @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x7c
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r2, #0x18]
	adds r0, r3, #0
	adds r0, #0x80
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r2, #0x1c]
	adds r0, r3, #0
	adds r0, #0x84
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r2, #0x20]
	adds r0, r3, #0
	adds r0, #0x88
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r2, #0x24]
	adds r0, r3, #0
	adds r0, #0xa0
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r2, #0x28]
	adds r0, r3, #0
	adds r0, #0xa4
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r2, #0x2c]
	adds r0, r3, #0
	adds r0, #0xa8
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r2, #0x30]
	adds r0, r3, #0
	adds r0, #0xac
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2, #0x34]
	ldr r2, [r2]
	cmp r2, #2
	beq _0811CB22
	cmp r2, #2
	bhi _0811CB10
	cmp r2, #1
	beq _0811CB1A
	b _0811CB38
	.align 2, 0
_0811CB08: .4byte 0x05000015
_0811CB0C: .4byte gCurLevelInfo
_0811CB10:
	cmp r2, #3
	beq _0811CB2A
	cmp r2, #4
	beq _0811CB32
	b _0811CB38
_0811CB1A:
	adds r0, r6, #0
	bl sub_0811CB44
	b _0811CB38
_0811CB22:
	adds r0, r6, #0
	bl sub_0811CBB8
	b _0811CB38
_0811CB2A:
	adds r0, r6, #0
	bl sub_0811CD1C
	b _0811CB38
_0811CB32:
	adds r0, r6, #0
	bl sub_0811CD90
_0811CB38:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0811CB44
sub_0811CB44: @ 0x0811CB44
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	adds r0, #0x8c
	ldr r4, [r0]
	mov r3, ip
	adds r3, #0xb0
	ldr r0, [r3]
	ldrh r2, [r0, #0x14]
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r0, r2
	lsls r5, r0, #4
	str r5, [r4, #8]
	ldr r0, [r3]
	ldrb r0, [r0, #0x14]
	lsls r2, r0, #0xc
	str r2, [r4, #0xc]
	ldr r0, [r3]
	ldrh r0, [r0, #0x12]
	ands r1, r0
	lsls r1, r1, #4
	adds r7, r5, r1
	str r7, [r4, #0x10]
	ldr r0, [r3]
	ldrb r0, [r0, #0x12]
	lsls r0, r0, #0xc
	adds r6, r2, r0
	str r6, [r4, #0x14]
	ldr r0, [r3]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0811CB9E
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r5, r1
	str r0, [r4, #8]
	adds r0, r2, r1
	str r0, [r4, #0xc]
	adds r0, r7, r1
	str r0, [r4, #0x10]
	adds r1, r6, r1
	str r1, [r4, #0x14]
_0811CB9E:
	ldr r0, _0811CBB4 @ =sub_0811CEF4
	mov r1, ip
	str r0, [r1, #0x78]
	ldr r0, [r4, #8]
	str r0, [r4, #0x38]
	ldr r0, [r4, #0xc]
	str r0, [r4, #0x3c]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811CBB4: .4byte sub_0811CEF4

	thumb_func_start sub_0811CBB8
sub_0811CBB8: @ 0x0811CBB8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r0, #0x8c
	ldr r0, [r0]
	mov ip, r0
	adds r5, r7, #0
	adds r5, #0xb0
	ldr r0, [r5]
	ldrh r0, [r0, #0x14]
	movs r4, #0xff
	lsls r4, r4, #8
	adds r1, r4, #0
	ands r1, r0
	lsls r1, r1, #4
	mov r0, ip
	str r1, [r0, #8]
	ldr r0, [r5]
	ldrb r2, [r0, #0x14]
	lsls r2, r2, #0xc
	mov r0, ip
	str r2, [r0, #0xc]
	ldr r0, [r5]
	ldrh r3, [r0, #0x12]
	adds r0, r4, #0
	ands r0, r3
	lsls r0, r0, #4
	adds r1, r1, r0
	mov r0, ip
	str r1, [r0, #0x10]
	ldr r0, [r5]
	ldrb r0, [r0, #0x12]
	lsls r0, r0, #0xc
	adds r2, r2, r0
	mov r1, ip
	str r2, [r1, #0x14]
	ldr r2, _0811CC74 @ =gCurLevelInfo
	movs r0, #0x56
	adds r0, r0, r7
	mov r8, r0
	ldr r0, [r5]
	ldrh r1, [r0, #0x18]
	adds r0, r4, #0
	ands r0, r1
	lsrs r0, r0, #4
	mov r6, ip
	adds r6, #0x44
	strh r0, [r6]
	ldr r0, [r5]
	ldrh r0, [r0, #0x18]
	mov r3, ip
	adds r3, #0x46
	strb r0, [r3]
	ldr r0, [r5]
	ldrh r0, [r0, #0x16]
	ands r4, r0
	lsrs r4, r4, #4
	mov r0, ip
	adds r0, #0x48
	strh r4, [r0]
	ldr r0, [r5]
	ldrh r0, [r0, #0x16]
	mov r1, ip
	adds r1, #0x4a
	strb r0, [r1]
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r5, r2, #0
	cmp r0, #0
	blt _0811CC7C
	mov r1, ip
	ldr r3, [r1, #8]
	ldr r2, [r1, #0x10]
	ldrh r0, [r6]
	lsls r0, r0, #8
	adds r2, r2, r0
	str r2, [r1, #0x4c]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r5
	adds r0, #0xbc
	ldrh r0, [r0]
	lsls r0, r0, #8
	ldr r1, _0811CC78 @ =0xFFFFF800
	adds r0, r0, r1
	adds r4, r3, #0
	cmp r2, r0
	ble _0811CC98
	b _0811CC94
	.align 2, 0
_0811CC74: .4byte gCurLevelInfo
_0811CC78: .4byte 0xFFFFF800
_0811CC7C:
	ldrh r0, [r6]
	lsls r0, r0, #8
	mov r1, ip
	ldr r2, [r1, #8]
	subs r0, r2, r0
	str r0, [r1, #0x4c]
	ldr r1, _0811CCD8 @ =0x000007FF
	adds r4, r2, #0
	cmp r0, r1
	bgt _0811CC98
	movs r0, #0x80
	lsls r0, r0, #4
_0811CC94:
	mov r1, ip
	str r0, [r1, #0x4c]
_0811CC98:
	mov r0, ip
	adds r0, #0x4a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _0811CCE0
	mov r0, ip
	ldr r3, [r0, #0xc]
	ldr r2, [r0, #0x14]
	adds r0, #0x48
	ldrh r0, [r0]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r1, ip
	str r2, [r1, #0x50]
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r5
	adds r0, #0xbe
	ldrh r0, [r0]
	lsls r0, r0, #8
	ldr r1, _0811CCDC @ =0xFFFFE800
	adds r0, r0, r1
	cmp r2, r0
	ble _0811CD00
	b _0811CCFC
	.align 2, 0
_0811CCD8: .4byte 0x000007FF
_0811CCDC: .4byte 0xFFFFE800
_0811CCE0:
	mov r0, ip
	adds r0, #0x48
	ldrh r0, [r0]
	lsls r0, r0, #8
	mov r1, ip
	ldr r2, [r1, #0xc]
	adds r0, r2, r0
	str r0, [r1, #0x50]
	ldr r1, _0811CD14 @ =0x000007FF
	adds r3, r2, #0
	cmp r0, r1
	bgt _0811CD00
	movs r0, #0x80
	lsls r0, r0, #4
_0811CCFC:
	mov r1, ip
	str r0, [r1, #0x50]
_0811CD00:
	ldr r0, _0811CD18 @ =sub_0811D158
	str r0, [r7, #0x78]
	mov r0, ip
	str r4, [r0, #0x38]
	str r3, [r0, #0x3c]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811CD14: .4byte 0x000007FF
_0811CD18: .4byte sub_0811D158

	thumb_func_start sub_0811CD1C
sub_0811CD1C: @ 0x0811CD1C
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	adds r0, #0x8c
	ldr r4, [r0]
	mov r3, ip
	adds r3, #0xb0
	ldr r0, [r3]
	ldrh r2, [r0, #0x14]
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r0, r2
	lsls r5, r0, #4
	str r5, [r4, #8]
	ldr r0, [r3]
	ldrb r0, [r0, #0x14]
	lsls r2, r0, #0xc
	str r2, [r4, #0xc]
	ldr r0, [r3]
	ldrh r0, [r0, #0x12]
	ands r1, r0
	lsls r1, r1, #4
	adds r7, r5, r1
	str r7, [r4, #0x10]
	ldr r0, [r3]
	ldrb r0, [r0, #0x12]
	lsls r0, r0, #0xc
	adds r6, r2, r0
	str r6, [r4, #0x14]
	ldr r0, [r3]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0811CD76
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r5, r1
	str r0, [r4, #8]
	adds r0, r2, r1
	str r0, [r4, #0xc]
	adds r0, r7, r1
	str r0, [r4, #0x10]
	adds r1, r6, r1
	str r1, [r4, #0x14]
_0811CD76:
	ldr r0, _0811CD8C @ =sub_0811D508
	mov r1, ip
	str r0, [r1, #0x78]
	ldr r0, [r4, #8]
	str r0, [r4, #0x38]
	ldr r0, [r4, #0xc]
	str r0, [r4, #0x3c]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811CD8C: .4byte sub_0811D508

	thumb_func_start sub_0811CD90
sub_0811CD90: @ 0x0811CD90
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r0, #0x8c
	ldr r0, [r0]
	mov ip, r0
	adds r5, r7, #0
	adds r5, #0xb0
	ldr r0, [r5]
	ldrh r0, [r0, #0x14]
	movs r4, #0xff
	lsls r4, r4, #8
	adds r1, r4, #0
	ands r1, r0
	lsls r1, r1, #4
	mov r0, ip
	str r1, [r0, #8]
	ldr r0, [r5]
	ldrb r2, [r0, #0x14]
	lsls r2, r2, #0xc
	mov r0, ip
	str r2, [r0, #0xc]
	ldr r0, [r5]
	ldrh r3, [r0, #0x12]
	adds r0, r4, #0
	ands r0, r3
	lsls r0, r0, #4
	adds r1, r1, r0
	mov r0, ip
	str r1, [r0, #0x10]
	ldr r0, [r5]
	ldrb r0, [r0, #0x12]
	lsls r0, r0, #0xc
	adds r2, r2, r0
	mov r1, ip
	str r2, [r1, #0x14]
	ldr r2, _0811CE4C @ =gCurLevelInfo
	movs r0, #0x56
	adds r0, r0, r7
	mov r8, r0
	ldr r0, [r5]
	ldrh r1, [r0, #0x18]
	adds r0, r4, #0
	ands r0, r1
	lsrs r0, r0, #4
	mov r6, ip
	adds r6, #0x44
	strh r0, [r6]
	ldr r0, [r5]
	ldrh r0, [r0, #0x18]
	mov r3, ip
	adds r3, #0x46
	strb r0, [r3]
	ldr r0, [r5]
	ldrh r0, [r0, #0x16]
	ands r4, r0
	lsrs r4, r4, #4
	mov r0, ip
	adds r0, #0x48
	strh r4, [r0]
	ldr r0, [r5]
	ldrh r0, [r0, #0x16]
	mov r1, ip
	adds r1, #0x4a
	strb r0, [r1]
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r5, r2, #0
	cmp r0, #0
	blt _0811CE54
	mov r1, ip
	ldr r3, [r1, #8]
	ldr r2, [r1, #0x10]
	ldrh r0, [r6]
	lsls r0, r0, #8
	adds r2, r2, r0
	str r2, [r1, #0x4c]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r5
	adds r0, #0xbc
	ldrh r0, [r0]
	lsls r0, r0, #8
	ldr r1, _0811CE50 @ =0xFFFFF800
	adds r0, r0, r1
	adds r4, r3, #0
	cmp r2, r0
	ble _0811CE70
	b _0811CE6C
	.align 2, 0
_0811CE4C: .4byte gCurLevelInfo
_0811CE50: .4byte 0xFFFFF800
_0811CE54:
	ldrh r0, [r6]
	lsls r0, r0, #8
	mov r1, ip
	ldr r2, [r1, #8]
	subs r0, r2, r0
	str r0, [r1, #0x4c]
	ldr r1, _0811CEB0 @ =0x000007FF
	adds r4, r2, #0
	cmp r0, r1
	bgt _0811CE70
	movs r0, #0x80
	lsls r0, r0, #4
_0811CE6C:
	mov r1, ip
	str r0, [r1, #0x4c]
_0811CE70:
	mov r0, ip
	adds r0, #0x4a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _0811CEB8
	mov r0, ip
	ldr r3, [r0, #0xc]
	ldr r2, [r0, #0x14]
	adds r0, #0x48
	ldrh r0, [r0]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r1, ip
	str r2, [r1, #0x50]
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r5
	adds r0, #0xbe
	ldrh r0, [r0]
	lsls r0, r0, #8
	ldr r1, _0811CEB4 @ =0xFFFFE800
	adds r0, r0, r1
	cmp r2, r0
	ble _0811CED8
	b _0811CED4
	.align 2, 0
_0811CEB0: .4byte 0x000007FF
_0811CEB4: .4byte 0xFFFFE800
_0811CEB8:
	mov r0, ip
	adds r0, #0x48
	ldrh r0, [r0]
	lsls r0, r0, #8
	mov r1, ip
	ldr r2, [r1, #0xc]
	adds r0, r2, r0
	str r0, [r1, #0x50]
	ldr r1, _0811CEEC @ =0x000007FF
	adds r3, r2, #0
	cmp r0, r1
	bgt _0811CED8
	movs r0, #0x80
	lsls r0, r0, #4
_0811CED4:
	mov r1, ip
	str r0, [r1, #0x50]
_0811CED8:
	ldr r0, _0811CEF0 @ =sub_0811D68C
	str r0, [r7, #0x78]
	mov r0, ip
	str r4, [r0, #0x38]
	str r3, [r0, #0x3c]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811CEEC: .4byte 0x000007FF
_0811CEF0: .4byte sub_0811D68C

	thumb_func_start sub_0811CEF4
sub_0811CEF4: @ 0x0811CEF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	adds r0, #0x8c
	ldr r7, [r0]
	adds r1, r6, #0
	adds r1, #0x60
	ldr r0, _0811D0A0 @ =gUnk_02020EE0
	mov r8, r0
	adds r0, #0x60
	ldrh r2, [r0]
	ldrh r1, [r1]
	cmp r2, r1
	beq _0811CF1A
	b _0811D138
_0811CF1A:
	movs r0, #0x82
	lsls r0, r0, #2
	add r0, r8
	ldrh r1, [r0]
	cmp r1, r2
	beq _0811CF28
	b _0811D138
_0811CF28:
	movs r0, #0xec
	lsls r0, r0, #2
	add r0, r8
	ldrh r2, [r0]
	cmp r2, r1
	beq _0811CF36
	b _0811D138
_0811CF36:
	movs r0, #0xab
	lsls r0, r0, #3
	add r0, r8
	ldrh r0, [r0]
	cmp r0, r2
	beq _0811CF44
	b _0811D138
_0811CF44:
	ldr r1, [r6, #0x40]
	ldr r2, [r6, #0x44]
	adds r5, r6, #0
	adds r5, #0xb0
	ldr r4, [r5]
	movs r0, #0x1a
	ldrsh r3, [r4, r0]
	mov sb, r3
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	str r0, [sp]
	ldrh r0, [r4, #0x1e]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #8]
	mov r0, r8
	mov r3, sb
	bl sub_08039430
	lsls r0, r0, #0x18
	mov sb, r5
	cmp r0, #0
	bne _0811CF74
	b _0811D0B8
_0811CF74:
	movs r0, #0xd4
	lsls r0, r0, #1
	add r0, r8
	ldr r1, [r6, #0x40]
	ldr r2, [r6, #0x44]
	ldr r5, [r5]
	movs r3, #0x1a
	ldrsh r4, [r5, r3]
	str r4, [sp, #0xc]
	movs r3, #0x1c
	ldrsh r4, [r5, r3]
	str r4, [sp]
	ldrh r4, [r5, #0x1e]
	str r4, [sp, #4]
	ldrh r4, [r5, #0x20]
	str r4, [sp, #8]
	ldr r3, [sp, #0xc]
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0811CFA2
	b _0811D0B8
_0811CFA2:
	movs r0, #0xd4
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r6, #0x40]
	ldr r2, [r6, #0x44]
	mov r4, sb
	ldr r5, [r4]
	movs r4, #0x1a
	ldrsh r3, [r5, r4]
	str r3, [sp, #0xc]
	movs r4, #0x1c
	ldrsh r3, [r5, r4]
	str r3, [sp]
	ldrh r4, [r5, #0x1e]
	str r4, [sp, #4]
	ldrh r4, [r5, #0x20]
	str r4, [sp, #8]
	ldr r3, [sp, #0xc]
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0811D0B8
	movs r0, #0x9f
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r6, #0x40]
	ldr r2, [r6, #0x44]
	mov r3, sb
	ldr r5, [r3]
	movs r3, #0x1a
	ldrsh r4, [r5, r3]
	str r4, [sp, #0xc]
	movs r3, #0x1c
	ldrsh r4, [r5, r3]
	str r4, [sp]
	ldrh r4, [r5, #0x1e]
	str r4, [sp, #4]
	ldrh r4, [r5, #0x20]
	str r4, [sp, #8]
	ldr r3, [sp, #0xc]
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0811D0B8
	ldr r0, [r7, #4]
	movs r2, #1
	adds r1, r0, #0
	ands r1, r2
	cmp r1, #0
	bne _0811D018
	orrs r0, r2
	str r0, [r7, #4]
	ldr r0, _0811D0A4 @ =gCurLevelInfo
	movs r4, #0xf6
	lsls r4, r4, #1
	adds r0, r0, r4
	str r1, [r0]
_0811D018:
	ldr r0, [r7, #4]
	movs r2, #2
	adds r1, r0, #0
	ands r1, r2
	cmp r1, #0
	bne _0811D030
	orrs r0, r2
	str r0, [r7, #4]
	ldr r0, _0811D0A4 @ =gCurLevelInfo
	ldr r2, _0811D0A8 @ =0x00000854
	adds r0, r0, r2
	str r1, [r0]
_0811D030:
	ldr r0, [r7, #4]
	movs r2, #4
	adds r1, r0, #0
	ands r1, r2
	cmp r1, #0
	bne _0811D048
	orrs r0, r2
	str r0, [r7, #4]
	ldr r0, _0811D0A4 @ =gCurLevelInfo
	ldr r3, _0811D0AC @ =0x00000EBC
	adds r0, r0, r3
	str r1, [r0]
_0811D048:
	ldr r0, [r7, #4]
	movs r2, #8
	adds r1, r0, #0
	ands r1, r2
	cmp r1, #0
	bne _0811D060
	orrs r0, r2
	str r0, [r7, #4]
	ldr r0, _0811D0A4 @ =gCurLevelInfo
	ldr r4, _0811D0B0 @ =0x00001524
	adds r0, r0, r4
	str r1, [r0]
_0811D060:
	movs r0, #0
	mov sl, r0
	ldr r0, _0811D0B4 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp sl, r0
	bge _0811D0C2
	mov r5, r8
_0811D06E:
	mov r1, sl
	lsls r4, r1, #0x18
	asrs r4, r4, #0x18
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0x56
	ldrb r1, [r0]
	mov r2, sb
	ldr r0, [r2]
	ldrh r2, [r0, #0x22]
	adds r0, r7, #0
	bl sub_0811C7D0
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r3, r4, #0x18
	mov sl, r3
	asrs r4, r4, #0x18
	ldr r0, _0811D0B4 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r4, r0
	blt _0811D06E
	b _0811D0C2
	.align 2, 0
_0811D0A0: .4byte gUnk_02020EE0
_0811D0A4: .4byte gCurLevelInfo
_0811D0A8: .4byte 0x00000854
_0811D0AC: .4byte 0x00000EBC
_0811D0B0: .4byte 0x00001524
_0811D0B4: .4byte gUnk_0203AD44
_0811D0B8:
	ldr r0, [r7, #4]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #4]
_0811D0C2:
	ldr r1, _0811D12C @ =gUnk_02020EE0
	mov r4, sl
	lsls r0, r4, #0x18
	asrs r4, r0, #0x18
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r4, r0
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bgt _0811D0EA
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0811DB48
_0811D0EA:
	mov r2, sb
	ldr r5, [r2]
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _0811D142
	adds r1, r0, #0
	ldr r3, _0811D130 @ =gCurLevelInfo
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r3, _0811D134 @ =0x0000065E
	adds r0, r0, r3
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	adds r1, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	beq _0811D142
	subs r0, #1
	str r0, [r1]
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r6, #8]
	b _0811D142
	.align 2, 0
_0811D12C: .4byte gUnk_02020EE0
_0811D130: .4byte gCurLevelInfo
_0811D134: .4byte 0x0000065E
_0811D138:
	ldr r0, [r7, #4]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #4]
_0811D142:
	ldrh r0, [r6, #4]
	adds r0, #1
	strh r0, [r6, #4]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0811D158
sub_0811D158: @ 0x0811D158
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sb, r0
	adds r0, #0x8c
	ldr r7, [r0]
	subs r0, #0x2c
	ldrh r2, [r0]
	subs r0, #0xa
	ldrb r0, [r0]
	mov sl, r0
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	beq _0811D182
	b _0811D378
_0811D182:
	ldr r0, _0811D31C @ =gUnk_02020EE0
	mov r8, r0
	adds r0, #0x60
	ldrh r1, [r0]
	cmp r1, r2
	beq _0811D190
	b _0811D36C
_0811D190:
	movs r0, #0x82
	lsls r0, r0, #2
	add r0, r8
	ldrh r2, [r0]
	cmp r2, r1
	beq _0811D19E
	b _0811D36C
_0811D19E:
	movs r0, #0xec
	lsls r0, r0, #2
	add r0, r8
	ldrh r1, [r0]
	cmp r1, r2
	beq _0811D1AC
	b _0811D36C
_0811D1AC:
	movs r0, #0xab
	lsls r0, r0, #3
	add r0, r8
	ldrh r0, [r0]
	cmp r0, r1
	beq _0811D1BA
	b _0811D36C
_0811D1BA:
	mov r2, sb
	ldr r1, [r2, #0x40]
	ldr r2, [r2, #0x44]
	mov r5, sb
	adds r5, #0xb0
	ldr r4, [r5]
	movs r0, #0x1a
	ldrsh r3, [r4, r0]
	mov sl, r3
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	str r0, [sp]
	ldrh r0, [r4, #0x1e]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #8]
	mov r0, r8
	mov r3, sl
	bl sub_08039430
	lsls r0, r0, #0x18
	mov sl, r5
	cmp r0, #0
	bne _0811D1EC
	b _0811D334
_0811D1EC:
	movs r0, #0xd4
	lsls r0, r0, #1
	add r0, r8
	mov r4, sb
	ldr r1, [r4, #0x40]
	ldr r2, [r4, #0x44]
	ldr r5, [r5]
	movs r4, #0x1a
	ldrsh r3, [r5, r4]
	str r3, [sp, #0xc]
	movs r4, #0x1c
	ldrsh r3, [r5, r4]
	str r3, [sp]
	ldrh r4, [r5, #0x1e]
	str r4, [sp, #4]
	ldrh r4, [r5, #0x20]
	str r4, [sp, #8]
	ldr r3, [sp, #0xc]
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0811D21C
	b _0811D334
_0811D21C:
	movs r0, #0xd4
	lsls r0, r0, #2
	add r0, r8
	mov r2, sb
	ldr r1, [r2, #0x40]
	ldr r2, [r2, #0x44]
	mov r3, sl
	ldr r5, [r3]
	movs r3, #0x1a
	ldrsh r4, [r5, r3]
	str r4, [sp, #0xc]
	movs r3, #0x1c
	ldrsh r4, [r5, r3]
	str r4, [sp]
	ldrh r4, [r5, #0x1e]
	str r4, [sp, #4]
	ldrh r4, [r5, #0x20]
	str r4, [sp, #8]
	ldr r3, [sp, #0xc]
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0811D334
	movs r0, #0x9f
	lsls r0, r0, #3
	add r0, r8
	mov r4, sb
	ldr r1, [r4, #0x40]
	ldr r2, [r4, #0x44]
	mov r3, sl
	ldr r5, [r3]
	movs r3, #0x1a
	ldrsh r4, [r5, r3]
	str r4, [sp, #0xc]
	movs r3, #0x1c
	ldrsh r4, [r5, r3]
	str r4, [sp]
	ldrh r4, [r5, #0x1e]
	str r4, [sp, #4]
	ldrh r4, [r5, #0x20]
	str r4, [sp, #8]
	ldr r3, [sp, #0xc]
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0811D334
	ldr r0, [r7, #4]
	movs r2, #1
	adds r1, r0, #0
	ands r1, r2
	cmp r1, #0
	bne _0811D296
	orrs r0, r2
	str r0, [r7, #4]
	ldr r0, _0811D320 @ =gCurLevelInfo
	movs r4, #0xf6
	lsls r4, r4, #1
	adds r0, r0, r4
	str r1, [r0]
_0811D296:
	ldr r0, [r7, #4]
	movs r2, #2
	adds r1, r0, #0
	ands r1, r2
	cmp r1, #0
	bne _0811D2AE
	orrs r0, r2
	str r0, [r7, #4]
	ldr r0, _0811D320 @ =gCurLevelInfo
	ldr r2, _0811D324 @ =0x00000854
	adds r0, r0, r2
	str r1, [r0]
_0811D2AE:
	ldr r0, [r7, #4]
	movs r2, #4
	adds r1, r0, #0
	ands r1, r2
	cmp r1, #0
	bne _0811D2C6
	orrs r0, r2
	str r0, [r7, #4]
	ldr r0, _0811D320 @ =gCurLevelInfo
	ldr r3, _0811D328 @ =0x00000EBC
	adds r0, r0, r3
	str r1, [r0]
_0811D2C6:
	ldr r0, [r7, #4]
	movs r2, #8
	adds r1, r0, #0
	ands r1, r2
	cmp r1, #0
	bne _0811D2DE
	orrs r0, r2
	str r0, [r7, #4]
	ldr r0, _0811D320 @ =gCurLevelInfo
	ldr r4, _0811D32C @ =0x00001524
	adds r0, r0, r4
	str r1, [r0]
_0811D2DE:
	movs r6, #0
	ldr r0, _0811D330 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r6, r0
	bhs _0811D310
	mov r4, r8
_0811D2EA:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r6, r0
	adds r0, r0, r4
	adds r0, #0x56
	ldrb r1, [r0]
	mov r2, sl
	ldr r0, [r2]
	ldrh r2, [r0, #0x22]
	adds r0, r7, #0
	bl sub_0811C7D0
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _0811D330 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r6, r0
	blo _0811D2EA
_0811D310:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	b _0811D33C
	.align 2, 0
_0811D31C: .4byte gUnk_02020EE0
_0811D320: .4byte gCurLevelInfo
_0811D324: .4byte 0x00000854
_0811D328: .4byte 0x00000EBC
_0811D32C: .4byte 0x00001524
_0811D330: .4byte gUnk_0203AD44
_0811D334:
	ldr r0, [r7, #4]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r0, r1
_0811D33C:
	str r0, [r7, #4]
	ldr r1, _0811D368 @ =gUnk_02020EE0
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r6, r0
	adds r0, r0, r1
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bgt _0811D360
	mov r0, sb
	adds r1, r6, #0
	bl sub_0811DB48
_0811D360:
	mov r4, sl
	ldr r5, [r4]
	ldrb r0, [r5, #4]
	b _0811D4A8
	.align 2, 0
_0811D368: .4byte gUnk_02020EE0
_0811D36C:
	ldr r0, [r7, #4]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #4]
	b _0811D4E2
_0811D378:
	adds r0, r7, #0
	adds r0, #0x46
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov r8, r0
	cmp r1, #0
	beq _0811D406
	ldr r4, _0811D3F4 @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r2, sl
	muls r2, r0, r2
	adds r0, r4, #0
	adds r0, #0x7c
	adds r6, r2, r0
	mov r0, r8
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	adds r0, r4, #0
	adds r0, #0x84
	adds r5, r2, r0
	mov r3, r8
	movs r1, #0
	ldrsb r1, [r3, r1]
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	adds r1, r4, #0
	adds r1, #0xa0
	adds r1, r2, r1
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	ldr r0, [r1]
	adds r0, r0, r3
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0xa8
	adds r2, r2, r0
	mov r4, r8
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _0811D406
	cmp r0, #0
	ble _0811D3F8
	ldr r1, [r5]
	ldr r0, [r7, #0x4c]
	cmp r1, r0
	ble _0811D406
	movs r0, #0
	strb r0, [r4]
	b _0811D406
	.align 2, 0
_0811D3F4: .4byte gCurLevelInfo
_0811D3F8:
	ldr r1, [r6]
	ldr r0, _0811D478 @ =0x000007FF
	cmp r1, r0
	bgt _0811D406
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
_0811D406:
	adds r0, r7, #0
	adds r0, #0x4a
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r4, r0, #0
	cmp r1, #0
	beq _0811D48E
	ldr r5, _0811D47C @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r2, sl
	muls r2, r0, r2
	adds r0, r5, #0
	adds r0, #0x80
	adds r0, r0, r2
	mov ip, r0
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldr r0, [r0]
	adds r0, r0, r1
	mov r3, ip
	str r0, [r3]
	adds r0, r5, #0
	adds r0, #0x88
	adds r6, r2, r0
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	adds r1, r5, #0
	adds r1, #0xa4
	adds r1, r2, r1
	movs r3, #0
	ldrsb r3, [r4, r3]
	ldr r0, [r1]
	adds r0, r0, r3
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xac
	adds r2, r2, r0
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _0811D48E
	cmp r0, #0
	ble _0811D480
	ldr r1, [r6]
	ldr r0, [r7, #0x50]
	cmp r1, r0
	ble _0811D48E
	b _0811D48A
	.align 2, 0
_0811D478: .4byte 0x000007FF
_0811D47C: .4byte gCurLevelInfo
_0811D480:
	mov r0, ip
	ldr r1, [r0]
	ldr r0, _0811D4FC @ =0x000007FF
	cmp r1, r0
	bgt _0811D48E
_0811D48A:
	movs r0, #0
	strb r0, [r4]
_0811D48E:
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0811D4E2
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0811D4E2
	mov r0, sb
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r0, [r1, #4]
_0811D4A8:
	cmp r0, #0
	beq _0811D4E2
	adds r1, r0, #0
	ldr r3, _0811D500 @ =gCurLevelInfo
	mov r0, sb
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _0811D504 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	adds r1, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	beq _0811D4E2
	subs r0, #1
	str r0, [r1]
	mov r3, sb
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r3, #8]
_0811D4E2:
	mov r4, sb
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811D4FC: .4byte 0x000007FF
_0811D500: .4byte gCurLevelInfo
_0811D504: .4byte 0x0000065E

	thumb_func_start sub_0811D508
sub_0811D508: @ 0x0811D508
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	adds r0, #0x8c
	ldr r6, [r0]
	subs r0, #0x2c
	ldrh r0, [r0]
	str r0, [sp, #0xc]
	movs r0, #0
	b _0811D664
_0811D524:
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r1, sl
	muls r1, r0, r1
	mov sb, r1
	ldr r2, _0811D5B4 @ =gUnk_02020EE0
	add r2, sb
	mov r8, r2
	mov r0, r8
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r3, [sp, #0xc]
	cmp r0, r3
	beq _0811D542
	b _0811D648
_0811D542:
	ldr r1, [r7, #0x40]
	ldr r2, [r7, #0x44]
	adds r5, r7, #0
	adds r5, #0xb0
	ldr r4, [r5]
	movs r3, #0x1a
	ldrsh r0, [r4, r3]
	mov ip, r0
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	str r0, [sp]
	ldrh r0, [r4, #0x1e]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #8]
	mov r0, r8
	mov r3, ip
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0811D5C0
	ldr r0, _0811D5B8 @ =gUnk_02020EEC
	add r0, sb
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0811D5CC
	movs r2, #1
	mov r0, sl
	lsls r2, r0
	ldr r0, [r6, #4]
	adds r1, r0, #0
	ands r1, r2
	cmp r1, #0
	bne _0811D5A2
	orrs r0, r2
	str r0, [r6, #4]
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	ldr r3, _0811D5BC @ =gUnk_0202371C
	adds r0, r0, r3
	str r1, [r0]
_0811D5A2:
	mov r0, r8
	adds r0, #0x56
	ldrb r1, [r0]
	ldr r0, [r5]
	ldrh r2, [r0, #0x22]
	adds r0, r6, #0
	bl sub_0811C7D0
	b _0811D5CC
	.align 2, 0
_0811D5B4: .4byte gUnk_02020EE0
_0811D5B8: .4byte gUnk_02020EEC
_0811D5BC: .4byte gUnk_0202371C
_0811D5C0:
	movs r1, #1
	mov r0, sl
	lsls r1, r0
	ldr r0, [r6, #4]
	bics r0, r1
	str r0, [r6, #4]
_0811D5CC:
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r2, _0811D63C @ =gUnk_02020EE0
	adds r0, r0, r2
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bgt _0811D5FE
	adds r0, r7, #0
	mov r1, sl
	bl sub_0811DB48
	movs r1, #0x10
	mov r0, sl
	lsls r1, r0
	ldr r0, [r6, #4]
	bics r0, r1
	str r0, [r6, #4]
_0811D5FE:
	ldr r5, [r5]
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _0811D65C
	adds r1, r0, #0
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	ldr r2, _0811D640 @ =gCurLevelInfo
	adds r0, r0, r2
	ldr r3, _0811D644 @ =0x0000065E
	adds r0, r0, r3
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	adds r1, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	beq _0811D65C
	subs r0, #1
	str r0, [r1]
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r7, #8]
	b _0811D65C
	.align 2, 0
_0811D63C: .4byte gUnk_02020EE0
_0811D640: .4byte gCurLevelInfo
_0811D644: .4byte 0x0000065E
_0811D648:
	movs r0, #0x10
	mov r1, sl
	lsls r0, r1
	ldr r1, [r6, #4]
	bics r1, r0
	movs r0, #1
	mov r2, sl
	lsls r0, r2
	bics r1, r0
	str r1, [r6, #4]
_0811D65C:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0811D664:
	mov sl, r0
	ldr r0, _0811D688 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp sl, r0
	bhs _0811D670
	b _0811D524
_0811D670:
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811D688: .4byte gUnk_0203AD44

	thumb_func_start sub_0811D68C
sub_0811D68C: @ 0x0811D68C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sl, r0
	adds r0, #0x8c
	ldr r7, [r0]
	subs r0, #0x2c
	ldrh r0, [r0]
	str r0, [sp, #0xc]
	mov r0, sl
	adds r0, #0x56
	ldrb r0, [r0]
	mov r8, r0
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	beq _0811D6BA
	b _0811D818
_0811D6BA:
	movs r0, #0
	mov sb, r0
	ldr r0, _0811D760 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp sb, r0
	blo _0811D6C8
	b _0811D986
_0811D6C8:
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r1, sb
	muls r1, r0, r1
	mov r8, r1
	ldr r6, _0811D764 @ =gUnk_02020EE0
	add r6, r8
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r2, [sp, #0xc]
	cmp r0, r2
	beq _0811D6E4
	b _0811D7F0
_0811D6E4:
	mov r3, sl
	ldr r1, [r3, #0x40]
	ldr r2, [r3, #0x44]
	mov r5, sl
	adds r5, #0xb0
	ldr r4, [r5]
	movs r3, #0x1a
	ldrsh r0, [r4, r3]
	mov ip, r0
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	str r0, [sp]
	ldrh r0, [r4, #0x1e]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #8]
	adds r0, r6, #0
	mov r3, ip
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0811D770
	ldr r0, _0811D768 @ =gUnk_02020EEC
	add r0, r8
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0811D77C
	movs r2, #1
	mov r0, sb
	lsls r2, r0
	ldr r0, [r7, #4]
	adds r1, r0, #0
	ands r1, r2
	cmp r1, #0
	bne _0811D746
	orrs r0, r2
	str r0, [r7, #4]
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r2, sb
	muls r2, r0, r2
	adds r0, r2, #0
	ldr r3, _0811D76C @ =gUnk_0202371C
	adds r0, r0, r3
	str r1, [r0]
_0811D746:
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r1, [r0]
	ldr r0, [r5]
	ldrh r2, [r0, #0x22]
	adds r0, r7, #0
	bl sub_0811C7D0
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	b _0811D77A
	.align 2, 0
_0811D760: .4byte gUnk_0203AD44
_0811D764: .4byte gUnk_02020EE0
_0811D768: .4byte gUnk_02020EEC
_0811D76C: .4byte gUnk_0202371C
_0811D770:
	movs r1, #1
	mov r0, sb
	lsls r1, r0
	ldr r0, [r7, #4]
	bics r0, r1
_0811D77A:
	str r0, [r7, #4]
_0811D77C:
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r2, _0811D7E4 @ =gUnk_02020EE0
	adds r0, r0, r2
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bgt _0811D7A2
	mov r0, sl
	mov r1, sb
	bl sub_0811DB48
_0811D7A2:
	ldr r5, [r5]
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _0811D7FC
	adds r1, r0, #0
	mov r0, sl
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	ldr r2, _0811D7E8 @ =gCurLevelInfo
	adds r0, r0, r2
	ldr r3, _0811D7EC @ =0x0000065E
	adds r0, r0, r3
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	adds r1, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	beq _0811D7FC
	subs r0, #1
	str r0, [r1]
	mov r1, sl
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	mov r2, sl
	str r0, [r2, #8]
	b _0811D7FC
	.align 2, 0
_0811D7E4: .4byte gUnk_02020EE0
_0811D7E8: .4byte gCurLevelInfo
_0811D7EC: .4byte 0x0000065E
_0811D7F0:
	movs r1, #1
	mov r3, sb
	lsls r1, r3
	ldr r0, [r7, #4]
	bics r0, r1
	str r0, [r7, #4]
_0811D7FC:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r0, _0811D814 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp sb, r0
	bhs _0811D810
	b _0811D6C8
_0811D810:
	b _0811D986
	.align 2, 0
_0811D814: .4byte gUnk_0203AD44
_0811D818:
	adds r0, r7, #0
	adds r0, #0x46
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov sb, r0
	cmp r1, #0
	beq _0811D8AA
	ldr r4, _0811D898 @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r2, r8
	muls r2, r0, r2
	adds r0, r4, #0
	adds r0, #0x7c
	adds r6, r2, r0
	mov r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	adds r0, r4, #0
	adds r0, #0x84
	adds r5, r2, r0
	mov r3, sb
	movs r1, #0
	ldrsb r1, [r3, r1]
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	adds r1, r4, #0
	adds r1, #0xa0
	adds r1, r2, r1
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	ldr r0, [r1]
	adds r0, r0, r3
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0xa8
	adds r2, r2, r0
	mov r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0811D8AA
	cmp r0, #0
	ble _0811D89C
	ldr r1, [r5]
	ldr r0, [r7, #0x4c]
	cmp r1, r0
	ble _0811D8AA
	movs r0, #0
	mov r2, sb
	strb r0, [r2]
	b _0811D8AA
	.align 2, 0
_0811D898: .4byte gCurLevelInfo
_0811D89C:
	ldr r1, [r6]
	ldr r0, _0811D91C @ =0x000007FF
	cmp r1, r0
	bgt _0811D8AA
	movs r0, #0
	mov r3, sb
	strb r0, [r3]
_0811D8AA:
	adds r0, r7, #0
	adds r0, #0x4a
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r4, r0, #0
	cmp r1, #0
	beq _0811D932
	ldr r5, _0811D920 @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r2, r8
	muls r2, r0, r2
	adds r0, r5, #0
	adds r0, #0x80
	adds r0, r0, r2
	mov r8, r0
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldr r0, [r0]
	adds r0, r0, r1
	mov r1, r8
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x88
	adds r6, r2, r0
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	adds r1, r5, #0
	adds r1, #0xa4
	adds r1, r2, r1
	movs r3, #0
	ldrsb r3, [r4, r3]
	ldr r0, [r1]
	adds r0, r0, r3
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xac
	adds r2, r2, r0
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _0811D932
	cmp r0, #0
	ble _0811D924
	ldr r1, [r6]
	ldr r0, [r7, #0x50]
	cmp r1, r0
	ble _0811D932
	b _0811D92E
	.align 2, 0
_0811D91C: .4byte 0x000007FF
_0811D920: .4byte gCurLevelInfo
_0811D924:
	mov r2, r8
	ldr r1, [r2]
	ldr r0, _0811D9A0 @ =0x000007FF
	cmp r1, r0
	bgt _0811D932
_0811D92E:
	movs r0, #0
	strb r0, [r4]
_0811D932:
	mov r3, sb
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bne _0811D986
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0811D986
	mov r0, sl
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _0811D986
	adds r1, r0, #0
	ldr r3, _0811D9A4 @ =gCurLevelInfo
	mov r0, sl
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _0811D9A8 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	adds r1, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	beq _0811D986
	subs r0, #1
	str r0, [r1]
	mov r3, sl
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r3, #8]
_0811D986:
	mov r1, sl
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811D9A0: .4byte 0x000007FF
_0811D9A4: .4byte gCurLevelInfo
_0811D9A8: .4byte 0x0000065E

	thumb_func_start sub_0811D9AC
sub_0811D9AC: @ 0x0811D9AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	ldrh r1, [r7, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811D9D0
	ldrh r0, [r7, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _0811D9D8
_0811D9D0:
	ldrh r1, [r7, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_0811D9D8:
	adds r0, r1, #0
	adds r0, #0x8c
	ldr r3, [r0]
	subs r0, #0x2c
	ldrh r0, [r0]
	mov sb, r0
	adds r0, r1, #0
	adds r0, #0x56
	ldrb r0, [r0]
	str r0, [sp, #8]
	adds r0, r1, #0
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r0, [r1, #2]
	mov sl, r0
	ldrb r4, [r1, #3]
	str r4, [sp]
	ldr r2, _0811DA24 @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	ldr r4, [sp, #8]
	muls r0, r4, r0
	adds r0, r0, r2
	ldr r4, _0811DA28 @ =0x0000065E
	adds r0, r0, r4
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldrh r1, [r1, #0x22]
	movs r0, #8
	ands r0, r1
	mov ip, r2
	cmp r0, #0
	bne _0811DB10
	movs r6, #0
	ldr r0, _0811DA2C @ =gUnk_0203AD44
	mov r8, r0
	b _0811DB0A
	.align 2, 0
_0811DA24: .4byte gCurLevelInfo
_0811DA28: .4byte 0x0000065E
_0811DA2C: .4byte gUnk_0203AD44
_0811DA30:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r6, r0
	ldr r1, _0811DB40 @ =gUnk_02020EE0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, sb
	bne _0811DB02
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r2, r6, #0
	muls r2, r0, r2
	mov r0, ip
	adds r0, #0x7c
	adds r5, r2, r0
	ldr r1, [r3, #0x38]
	ldr r0, [r5]
	cmp r1, r0
	bne _0811DB02
	mov r0, ip
	adds r0, #0x80
	adds r4, r2, r0
	ldr r1, [r3, #0x3c]
	ldr r0, [r4]
	cmp r1, r0
	bne _0811DB02
	ldr r0, [r3, #0x18]
	str r0, [r5]
	ldr r0, [r3, #0x1c]
	str r0, [r4]
	mov r0, ip
	adds r0, #0x84
	adds r0, r2, r0
	ldr r1, [r3, #0x20]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x88
	adds r0, r2, r0
	ldr r1, [r3, #0x24]
	str r1, [r0]
	mov r0, ip
	adds r0, #0xa0
	adds r0, r2, r0
	ldr r1, [r3, #0x28]
	str r1, [r0]
	mov r0, ip
	adds r0, #0xa4
	adds r0, r2, r0
	ldr r1, [r3, #0x2c]
	str r1, [r0]
	mov r0, ip
	adds r0, #0xa8
	adds r0, r2, r0
	ldr r1, [r3, #0x30]
	str r1, [r0]
	mov r0, ip
	adds r0, #0xac
	adds r0, r2, r0
	ldr r1, [r3, #0x34]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x6c
	adds r0, r2, r0
	ldr r1, [r3, #0x18]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x70
	adds r0, r2, r0
	ldr r1, [r3, #0x1c]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x74
	adds r0, r2, r0
	ldr r1, [r3, #0x20]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x78
	adds r0, r2, r0
	ldr r1, [r3, #0x24]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x90
	adds r0, r2, r0
	ldr r1, [r3, #0x28]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x94
	adds r0, r2, r0
	ldr r1, [r3, #0x2c]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x98
	adds r0, r2, r0
	ldr r1, [r3, #0x30]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x9c
	adds r0, r2, r0
	ldr r1, [r3, #0x34]
	str r1, [r0]
	ldr r4, _0811DB44 @ =gUnk_0202371C
	adds r1, r2, r4
	movs r0, #0
	str r0, [r1]
_0811DB02:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	mov r0, r8
_0811DB0A:
	ldrb r0, [r0]
	cmp r6, r0
	blo _0811DA30
_0811DB10:
	adds r0, r7, #0
	bl ObjectDestroy
	mov r1, sl
	cmp r1, #0
	bne _0811DB22
	ldr r4, [sp, #8]
	cmp r4, #0xff
	beq _0811DB2E
_0811DB22:
	mov r0, sl
	ldr r1, [sp]
	ldr r2, [sp, #4]
	movs r3, #1
	bl sub_08001678
_0811DB2E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811DB40: .4byte gUnk_02020EE0
_0811DB44: .4byte gUnk_0202371C

	thumb_func_start sub_0811DB48
sub_0811DB48: @ 0x0811DB48
	push {r4, r5, r6, lr}
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	adds r1, r0, #0
	adds r1, #0x8c
	ldr r4, [r1]
	adds r0, #0x60
	ldr r2, _0811DC38 @ =gUnk_02020EE0
	movs r1, #0xd4
	lsls r1, r1, #1
	muls r1, r5, r1
	adds r1, r1, r2
	adds r1, #0x60
	ldrh r1, [r1]
	ldrh r0, [r0]
	cmp r1, r0
	bne _0811DC30
	ldr r3, _0811DC3C @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r2, r5, #0
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x7c
	adds r6, r2, r0
	ldr r1, [r4, #0x38]
	ldr r0, [r6]
	cmp r1, r0
	bne _0811DC30
	adds r0, r3, #0
	adds r0, #0x80
	adds r5, r2, r0
	ldr r1, [r4, #0x3c]
	ldr r0, [r5]
	cmp r1, r0
	bne _0811DC30
	ldr r0, [r4, #0x18]
	str r0, [r6]
	ldr r0, [r4, #0x1c]
	str r0, [r5]
	adds r0, r3, #0
	adds r0, #0x84
	adds r0, r2, r0
	ldr r1, [r4, #0x20]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x88
	adds r0, r2, r0
	ldr r1, [r4, #0x24]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0xa0
	adds r0, r2, r0
	ldr r1, [r4, #0x28]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0xa4
	adds r0, r2, r0
	ldr r1, [r4, #0x2c]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0xa8
	adds r0, r2, r0
	ldr r1, [r4, #0x30]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0xac
	adds r0, r2, r0
	ldr r1, [r4, #0x34]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x6c
	adds r0, r2, r0
	ldr r1, [r4, #0x18]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x70
	adds r0, r2, r0
	ldr r1, [r4, #0x1c]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x74
	adds r0, r2, r0
	ldr r1, [r4, #0x20]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x78
	adds r0, r2, r0
	ldr r1, [r4, #0x24]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x90
	adds r0, r2, r0
	ldr r1, [r4, #0x28]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x94
	adds r0, r2, r0
	ldr r1, [r4, #0x2c]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x98
	adds r0, r2, r0
	ldr r1, [r4, #0x30]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x9c
	adds r0, r2, r0
	ldr r1, [r4, #0x34]
	str r1, [r0]
	movs r1, #0xf6
	lsls r1, r1, #1
	adds r0, r3, r1
	adds r0, r2, r0
	movs r1, #0
	str r1, [r0]
_0811DC30:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0811DC38: .4byte gUnk_02020EE0
_0811DC3C: .4byte gCurLevelInfo

	thumb_func_start sub_0811DC40
sub_0811DC40: @ 0x0811DC40
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _0811DC74 @ =ObjectMain
	ldr r2, _0811DC78 @ =0x00000FF6
	ldr r1, _0811DC7C @ =sub_0811D9AC
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811DC80
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0811DC88
	.align 2, 0
_0811DC74: .4byte ObjectMain
_0811DC78: .4byte 0x00000FF6
_0811DC7C: .4byte sub_0811D9AC
_0811DC80:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0811DC88:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	ldr r1, _0811DCD0 @ =gUnk_02018F40
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
	ldr r2, _0811DCD4 @ =gUnk_08351648
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
_0811DCD0: .4byte gUnk_02018F40
_0811DCD4: .4byte gUnk_08351648

	thumb_func_start sub_0811DCD8
sub_0811DCD8: @ 0x0811DCD8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _0811DD0C @ =ObjectMain
	ldr r2, _0811DD10 @ =0x00000FFE
	ldr r1, _0811DD14 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xc4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811DD18
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0811DD20
	.align 2, 0
_0811DD0C: .4byte ObjectMain
_0811DD10: .4byte 0x00000FFE
_0811DD14: .4byte ObjectDestroy
_0811DD18:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0811DD20:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	ldr r1, _0811DD88 @ =0x02618141
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	movs r2, #8
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	orrs r0, r2
	ldr r1, _0811DD8C @ =0xFFFEFEFF
	ands r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0xc]
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #8
	bl sub_0803E2B0
	adds r0, r4, #0
	bl ObjectInitSprite
	ldr r2, _0811DD90 @ =gUnk_08351648
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
_0811DD88: .4byte 0x02618141
_0811DD8C: .4byte 0xFFFEFEFF
_0811DD90: .4byte gUnk_08351648

	thumb_func_start sub_0811DD94
sub_0811DD94: @ 0x0811DD94
	push {r4, lr}
	mov ip, r0
	movs r4, #0
	movs r3, #0
	strh r3, [r0, #4]
	adds r0, #0xb4
	strh r3, [r0]
	adds r0, #2
	strh r3, [r0]
	mov r2, ip
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	mov r1, ip
	adds r1, #0xb8
	strh r0, [r1]
	ldr r0, [r2]
	ldrh r0, [r0, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r2]
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r2]
	ldrh r0, [r0, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r1, #2
	strh r0, [r1]
	mov r0, ip
	adds r0, #0xc0
	strh r3, [r0]
	adds r0, #2
	strb r4, [r0]
	subs r0, #0x3f
	strb r4, [r0]
	ldr r0, _0811DDF8 @ =sub_0811E92C
	mov r1, ip
	str r0, [r1, #0x78]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0811DDF8: .4byte sub_0811E92C

	thumb_func_start sub_0811DDFC
sub_0811DDFC: @ 0x0811DDFC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r0, #0xbc
	ldrh r5, [r0]
	adds r0, #2
	ldrh r7, [r0]
	subs r0, #6
	ldrh r6, [r0]
	adds r0, #2
	ldrh r0, [r0]
	mov r8, r0
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r0, #0x22
	cmp r0, #5
	bls _0811DE30
	b _0811E246
_0811DE30:
	lsls r0, r0, #2
	ldr r1, _0811DE3C @ =_0811DE40
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0811DE3C: .4byte _0811DE40
_0811DE40: @ jump table
	.4byte _0811DE58 @ case 0
	.4byte _0811DEB2 @ case 1
	.4byte _0811DF60 @ case 2
	.4byte _0811E018 @ case 3
	.4byte _0811E0FC @ case 4
	.4byte _0811E196 @ case 5
_0811DE58:
	cmp r7, r8
	blo _0811DE80
	adds r2, r4, #0
	adds r2, #0x52
	ldr r0, _0811DE7C @ =0xFFFFF000
	adds r1, r0, #0
	ldrh r3, [r2]
	adds r0, r1, r3
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	cmp r0, r1
	bge _0811DE9E
	movs r0, #0xf0
	lsls r0, r0, #8
	strh r0, [r2]
	b _0811DE9E
	.align 2, 0
_0811DE7C: .4byte 0xFFFFF000
_0811DE80:
	adds r2, r4, #0
	adds r2, #0x52
	movs r6, #0x80
	lsls r6, r6, #5
	adds r1, r6, #0
	ldrh r3, [r2]
	adds r0, r1, r3
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r0, r1
	ble _0811DE9E
	strh r1, [r2]
_0811DE9E:
	adds r0, r4, #0
	adds r0, #0xba
	strh r7, [r0]
	adds r1, r4, #0
	adds r1, #0xbe
	mov r6, r8
	subs r0, r7, r6
	ldrh r2, [r1]
	adds r0, r0, r2
	b _0811E244
_0811DEB2:
	cmp r5, r6
	bne _0811DF1C
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0811DEEC
	adds r1, r4, #0
	adds r1, #0x50
	ldr r0, _0811DEE4 @ =0xFFFFF000
	adds r3, r0, #0
	ldrh r2, [r1]
	adds r0, r3, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _0811DEE8 @ =0x00000FFF
	cmp r2, r0
	ble _0811DF0C
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	ble _0811DF36
	b _0811DF0E
	.align 2, 0
_0811DEE4: .4byte 0xFFFFF000
_0811DEE8: .4byte 0x00000FFF
_0811DEEC:
	adds r1, r4, #0
	adds r1, #0x50
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _0811DF14 @ =0xFFFFF000
	cmp r2, r0
	bgt _0811DF0E
	ldr r0, _0811DF18 @ =0x00000FFF
	cmp r2, r0
	bgt _0811DF36
_0811DF0C:
	adds r0, #1
_0811DF0E:
	strh r0, [r1]
	b _0811DF36
	.align 2, 0
_0811DF14: .4byte 0xFFFFF000
_0811DF18: .4byte 0x00000FFF
_0811DF1C:
	adds r2, r4, #0
	adds r2, #0x52
	ldr r3, _0811DF4C @ =0xFFFFF000
	adds r0, r3, #0
	ldrh r3, [r2]
	adds r1, r0, r3
	strh r1, [r2]
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r1, r0
	bge _0811DF36
	strh r3, [r2]
_0811DF36:
	cmp r5, r6
	bne _0811DF50
	adds r0, r4, #0
	adds r0, #0xba
	strh r7, [r0]
	adds r1, r4, #0
	adds r1, #0xbc
	ldrh r0, [r1]
	adds r0, #1
	b _0811E244
	.align 2, 0
_0811DF4C: .4byte 0xFFFFF000
_0811DF50:
	adds r0, r4, #0
	adds r0, #0xb8
	strh r5, [r0]
	adds r1, r4, #0
	adds r1, #0xbe
	ldrh r0, [r1]
	adds r0, #1
	b _0811E244
_0811DF60:
	cmp r5, r6
	bne _0811DFD8
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0811DFA4
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _0811DF90 @ =0x00000FFF
	cmp r2, r0
	bgt _0811DF94
	adds r0, #1
	strh r0, [r1]
	b _0811DFF2
	.align 2, 0
_0811DF90: .4byte 0x00000FFF
_0811DF94:
	ldr r0, _0811DFA0 @ =0xFFFFF000
	cmp r2, r0
	ble _0811DFF2
	strh r0, [r1]
	b _0811DFF2
	.align 2, 0
_0811DFA0: .4byte 0xFFFFF000
_0811DFA4:
	adds r2, r4, #0
	adds r2, #0x50
	ldr r0, _0811DFC4 @ =0xFFFFF000
	adds r1, r0, #0
	ldrh r3, [r2]
	adds r0, r1, r3
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r3, r1
	ble _0811DFC8
	strh r1, [r2]
	b _0811DFF2
	.align 2, 0
_0811DFC4: .4byte 0xFFFFF000
_0811DFC8:
	ldr r0, _0811DFD4 @ =0x00000FFF
	cmp r3, r0
	bgt _0811DFF2
	adds r0, #1
	strh r0, [r2]
	b _0811DFF2
	.align 2, 0
_0811DFD4: .4byte 0x00000FFF
_0811DFD8:
	adds r2, r4, #0
	adds r2, #0x52
	ldr r1, _0811E004 @ =0xFFFFF000
	adds r0, r1, #0
	ldrh r3, [r2]
	adds r1, r0, r3
	strh r1, [r2]
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r1, r0
	bge _0811DFF2
	strh r3, [r2]
_0811DFF2:
	cmp r5, r6
	bne _0811E008
	adds r0, r4, #0
	adds r0, #0xba
	strh r7, [r0]
	adds r1, r4, #0
	adds r1, #0xbc
	b _0811E240
	.align 2, 0
_0811E004: .4byte 0xFFFFF000
_0811E008:
	adds r0, r4, #0
	adds r0, #0xb8
	strh r5, [r0]
	adds r1, r4, #0
	adds r1, #0xbe
	ldrh r0, [r1]
	adds r0, #1
	b _0811E244
_0811E018:
	cmp r5, r6
	blo _0811E07C
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0811E04C
	adds r1, r4, #0
	adds r1, #0x50
	ldr r0, _0811E044 @ =0xFFFFF000
	adds r3, r0, #0
	ldrh r2, [r1]
	adds r0, r3, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _0811E048 @ =0x00000FFF
	cmp r2, r0
	ble _0811E0A0
	lsls r0, r3, #0x10
	b _0811E0AC
	.align 2, 0
_0811E044: .4byte 0xFFFFF000
_0811E048: .4byte 0x00000FFF
_0811E04C:
	adds r1, r4, #0
	adds r1, #0x50
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _0811E074 @ =0xFFFFF000
	cmp r2, r0
	bgt _0811E06E
	ldr r0, _0811E078 @ =0x00000FFF
	cmp r2, r0
	bgt _0811E0E6
	adds r0, #1
_0811E06E:
	strh r0, [r1]
	b _0811E0E6
	.align 2, 0
_0811E074: .4byte 0xFFFFF000
_0811E078: .4byte 0x00000FFF
_0811E07C:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0811E0B8
	adds r1, r4, #0
	adds r1, #0x50
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _0811E0A8 @ =0x00000FFF
	cmp r2, r0
	bgt _0811E0AC
_0811E0A0:
	movs r0, #0x80
	lsls r0, r0, #5
	b _0811E06E
	.align 2, 0
_0811E0A8: .4byte 0x00000FFF
_0811E0AC:
	ldr r0, _0811E0B4 @ =0xFFFFF000
	cmp r2, r0
	ble _0811E0E6
	b _0811E06E
	.align 2, 0
_0811E0B4: .4byte 0xFFFFF000
_0811E0B8:
	adds r2, r4, #0
	adds r2, #0x50
	ldr r3, _0811E0D8 @ =0xFFFFF000
	adds r1, r3, #0
	ldrh r3, [r2]
	adds r0, r1, r3
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r3, r1
	ble _0811E0DC
	strh r1, [r2]
	b _0811E0E6
	.align 2, 0
_0811E0D8: .4byte 0xFFFFF000
_0811E0DC:
	ldr r0, _0811E0F8 @ =0x00000FFF
	cmp r3, r0
	bgt _0811E0E6
	adds r0, #1
	strh r0, [r2]
_0811E0E6:
	adds r0, r4, #0
	adds r0, #0xb8
	strh r5, [r0]
	adds r1, r4, #0
	adds r1, #0xbc
	subs r0, r5, r6
	ldrh r6, [r1]
	adds r0, r0, r6
	b _0811E244
	.align 2, 0
_0811E0F8: .4byte 0x00000FFF
_0811E0FC:
	cmp r5, r6
	bne _0811E164
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0811E134
	adds r1, r4, #0
	adds r1, #0x50
	ldr r0, _0811E12C @ =0xFFFFF000
	adds r3, r0, #0
	ldrh r2, [r1]
	adds r0, r3, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _0811E130 @ =0x00000FFF
	cmp r2, r0
	ble _0811E154
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	ble _0811E182
	b _0811E156
	.align 2, 0
_0811E12C: .4byte 0xFFFFF000
_0811E130: .4byte 0x00000FFF
_0811E134:
	adds r1, r4, #0
	adds r1, #0x50
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _0811E15C @ =0xFFFFF000
	cmp r2, r0
	bgt _0811E156
	ldr r0, _0811E160 @ =0x00000FFF
	cmp r2, r0
	bgt _0811E182
_0811E154:
	adds r0, #1
_0811E156:
	strh r0, [r1]
	b _0811E182
	.align 2, 0
_0811E15C: .4byte 0xFFFFF000
_0811E160: .4byte 0x00000FFF
_0811E164:
	adds r2, r4, #0
	adds r2, #0x52
	movs r3, #0x80
	lsls r3, r3, #5
	adds r1, r3, #0
	ldrh r3, [r2]
	adds r0, r1, r3
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r0, r1
	ble _0811E182
	strh r1, [r2]
_0811E182:
	cmp r5, r6
	bne _0811E236
	adds r0, r4, #0
	adds r0, #0xba
	strh r7, [r0]
	adds r1, r4, #0
	adds r1, #0xbc
	ldrh r0, [r1]
	adds r0, #1
	b _0811E244
_0811E196:
	cmp r5, r6
	bne _0811E208
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0811E1D8
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _0811E1C4 @ =0x00000FFF
	cmp r2, r0
	bgt _0811E1C8
	adds r0, #1
	strh r0, [r1]
	b _0811E226
	.align 2, 0
_0811E1C4: .4byte 0x00000FFF
_0811E1C8:
	ldr r0, _0811E1D4 @ =0xFFFFF000
	cmp r2, r0
	ble _0811E226
	strh r0, [r1]
	b _0811E226
	.align 2, 0
_0811E1D4: .4byte 0xFFFFF000
_0811E1D8:
	adds r2, r4, #0
	adds r2, #0x50
	ldr r0, _0811E200 @ =0xFFFFF000
	adds r1, r0, #0
	ldrh r3, [r2]
	adds r0, r1, r3
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r3, r1
	bgt _0811E224
	ldr r0, _0811E204 @ =0x00000FFF
	cmp r3, r0
	bgt _0811E226
	adds r0, #1
	strh r0, [r2]
	b _0811E226
	.align 2, 0
_0811E200: .4byte 0xFFFFF000
_0811E204: .4byte 0x00000FFF
_0811E208:
	adds r2, r4, #0
	adds r2, #0x52
	movs r0, #0x80
	lsls r0, r0, #5
	adds r1, r0, #0
	ldrh r3, [r2]
	adds r0, r1, r3
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r0, r1
	ble _0811E226
_0811E224:
	strh r1, [r2]
_0811E226:
	cmp r5, r6
	bne _0811E236
	adds r0, r4, #0
	adds r0, #0xba
	strh r7, [r0]
	adds r1, r4, #0
	adds r1, #0xbc
	b _0811E240
_0811E236:
	adds r0, r4, #0
	adds r0, #0xb8
	strh r5, [r0]
	adds r1, r4, #0
	adds r1, #0xbe
_0811E240:
	ldrh r0, [r1]
	subs r0, #1
_0811E244:
	strh r0, [r1]
_0811E246:
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r1, r0
	adds r5, r4, #0
	adds r5, #0x52
	adds r3, r4, #0
	adds r3, #0x50
	cmp r1, #0
	bne _0811E272
	ldr r1, [r4, #0x40]
	str r1, [r4, #0x48]
	ldr r2, [r4, #0x44]
	str r2, [r4, #0x4c]
	movs r6, #0
	ldrsh r0, [r3, r6]
	adds r1, r1, r0
	str r1, [r4, #0x40]
	movs r1, #0
	ldrsh r0, [r5, r1]
	subs r2, r2, r0
	str r2, [r4, #0x44]
_0811E272:
	adds r1, r3, #0
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _0811E294
	ldr r6, _0811E290 @ =0x00007FFF
	adds r0, r2, r6
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0811E2A4
	movs r0, #0
	strh r0, [r1]
	b _0811E2A4
	.align 2, 0
_0811E290: .4byte 0x00007FFF
_0811E294:
	ldr r1, _0811E2C4 @ =0xFFFF8001
	adds r0, r2, r1
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0811E2A4
	movs r0, #0
	strh r0, [r3]
_0811E2A4:
	adds r1, r5, #0
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _0811E2CC
	ldr r4, _0811E2C8 @ =0x00007FFF
	adds r0, r2, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0811E2DC
	movs r0, #0
	strh r0, [r1]
	b _0811E2DC
	.align 2, 0
_0811E2C4: .4byte 0xFFFF8001
_0811E2C8: .4byte 0x00007FFF
_0811E2CC:
	ldr r6, _0811E2E8 @ =0xFFFF8001
	adds r0, r2, r6
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0811E2DC
	movs r0, #0
	strh r0, [r5]
_0811E2DC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811E2E8: .4byte 0xFFFF8001

	thumb_func_start sub_0811E2EC
sub_0811E2EC: @ 0x0811E2EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r0, #0xbc
	ldrh r5, [r0]
	adds r0, #2
	ldrh r7, [r0]
	subs r0, #6
	ldrh r6, [r0]
	adds r0, #2
	ldrh r0, [r0]
	mov r8, r0
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r4, #0
	adds r2, #0x2b
	movs r1, #0xff
	strb r1, [r2]
	subs r0, #0x22
	cmp r0, #5
	bhi _0811E3C4
	lsls r0, r0, #2
	ldr r1, _0811E330 @ =_0811E334
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0811E330: .4byte _0811E334
_0811E334: @ jump table
	.4byte _0811E34C @ case 0
	.4byte _0811E360 @ case 1
	.4byte _0811E374 @ case 2
	.4byte _0811E388 @ case 3
	.4byte _0811E39C @ case 4
	.4byte _0811E3B0 @ case 5
_0811E34C:
	cmp r7, r8
	blo _0811E358
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #1
	b _0811E3C2
_0811E358:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #2
	b _0811E3C2
_0811E360:
	cmp r5, r6
	bne _0811E36C
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xa
	b _0811E3C2
_0811E36C:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #9
	b _0811E3C2
_0811E374:
	cmp r5, r6
	bne _0811E380
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xc
	b _0811E3C2
_0811E380:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xb
	b _0811E3C2
_0811E388:
	cmp r5, r6
	blo _0811E394
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #3
	b _0811E3C2
_0811E394:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #4
	b _0811E3C2
_0811E39C:
	cmp r5, r6
	bne _0811E3A8
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #5
	b _0811E3C2
_0811E3A8:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #6
	b _0811E3C2
_0811E3B0:
	cmp r5, r6
	bne _0811E3BC
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #7
	b _0811E3C2
_0811E3BC:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #8
_0811E3C2:
	strb r0, [r1]
_0811E3C4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0811E3D0
sub_0811E3D0: @ 0x0811E3D0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r0, #0xbc
	ldrh r5, [r0]
	adds r0, #2
	ldrh r7, [r0]
	subs r0, #6
	ldrh r6, [r0]
	adds r0, #2
	ldrh r0, [r0]
	mov r8, r0
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r4, #0
	adds r2, #0x2b
	movs r1, #0xff
	strb r1, [r2]
	subs r0, #0x22
	cmp r0, #5
	bhi _0811E4A8
	lsls r0, r0, #2
	ldr r1, _0811E414 @ =_0811E418
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0811E414: .4byte _0811E418
_0811E418: @ jump table
	.4byte _0811E430 @ case 0
	.4byte _0811E444 @ case 1
	.4byte _0811E458 @ case 2
	.4byte _0811E46C @ case 3
	.4byte _0811E480 @ case 4
	.4byte _0811E494 @ case 5
_0811E430:
	cmp r7, r8
	blo _0811E43C
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xd
	b _0811E4A6
_0811E43C:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xe
	b _0811E4A6
_0811E444:
	cmp r5, r6
	bne _0811E450
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x16
	b _0811E4A6
_0811E450:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x15
	b _0811E4A6
_0811E458:
	cmp r5, r6
	bne _0811E464
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x18
	b _0811E4A6
_0811E464:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x17
	b _0811E4A6
_0811E46C:
	cmp r5, r6
	blo _0811E478
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xf
	b _0811E4A6
_0811E478:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x10
	b _0811E4A6
_0811E480:
	cmp r5, r6
	bne _0811E48C
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x11
	b _0811E4A6
_0811E48C:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x12
	b _0811E4A6
_0811E494:
	cmp r5, r6
	bne _0811E4A0
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x13
	b _0811E4A6
_0811E4A0:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x14
_0811E4A6:
	strb r0, [r1]
_0811E4A8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0811E4B4
sub_0811E4B4: @ 0x0811E4B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	mov r8, r7
	adds r2, r7, #0
	adds r2, #0xc2
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _0811E546
	ldr r1, _0811E5A4 @ =gUnk_02020EE0
	ldr r0, _0811E5A8 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0811E53E
	ldrb r0, [r7]
	cmp r0, #0
	bne _0811E502
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0811E53E
_0811E502:
	ldr r1, _0811E5AC @ =gUnk_08D60FA4
	ldr r4, _0811E5B0 @ =gSongTable
	ldr r2, _0811E5B4 @ =0x00001014
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0811E526
	ldr r5, _0811E5B8 @ =0x00001010
	adds r0, r4, r5
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0811E53E
_0811E526:
	cmp r3, #0
	beq _0811E538
	ldr r0, _0811E5BC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0811E53E
_0811E538:
	ldr r0, _0811E5C0 @ =0x00000202
	bl m4aSongNumStart
_0811E53E:
	mov r1, r8
	adds r1, #0xc2
	movs r0, #0
	strb r0, [r1]
_0811E546:
	ldr r0, [r7, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0811E552
	b _0811E6E2
_0811E552:
	mov r0, r8
	bl sub_0811DDFC
	mov r6, r8
	adds r6, #0xbc
	ldrh r1, [r6]
	mov r5, r8
	adds r5, #0xbe
	ldrh r2, [r5]
	mov r4, r8
	adds r4, #0x56
	ldrb r0, [r4]
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r6
	adds r6, r5, #0
	mov sl, r4
	cmp r0, #0x27
	bgt _0811E580
	cmp r0, #0x22
	bge _0811E582
_0811E580:
	movs r0, #0
_0811E582:
	str r0, [sp]
	cmp r0, #0
	beq _0811E5C4
	mov r0, r8
	bl sub_0811E2EC
	mov r0, sl
	ldrb r4, [r0]
	mov r2, sb
	ldrh r1, [r2]
	ldrh r2, [r6]
	adds r0, r4, #0
	bl sub_080023E4
	mov r3, sb
	ldrb r1, [r3]
	b _0811E6B6
	.align 2, 0
_0811E5A4: .4byte gUnk_02020EE0
_0811E5A8: .4byte gUnk_0203AD3C
_0811E5AC: .4byte gUnk_08D60FA4
_0811E5B0: .4byte gSongTable
_0811E5B4: .4byte 0x00001014
_0811E5B8: .4byte 0x00001010
_0811E5BC: .4byte gUnk_0203AD10
_0811E5C0: .4byte 0x00000202
_0811E5C4:
	mov r2, r8
	adds r2, #0xb6
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0811E5D4
	b _0811E6D4
_0811E5D4:
	ldr r0, _0811E648 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	adds r2, r7, #0
	adds r2, #0x52
	ldr r5, _0811E64C @ =0xFFFFF000
	adds r0, r5, #0
	ldrh r3, [r2]
	adds r1, r0, r3
	strh r1, [r2]
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	adds r4, r2, #0
	cmp r1, r0
	bge _0811E5FC
	strh r3, [r4]
_0811E5FC:
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	adds r3, r7, #0
	adds r3, #0x50
	cmp r0, #0
	bne _0811E626
	ldr r1, [r7, #0x40]
	str r1, [r7, #0x48]
	ldr r2, [r7, #0x44]
	str r2, [r7, #0x4c]
	movs r0, #0
	ldrsh r5, [r3, r0]
	mov ip, r5
	add r1, ip
	str r1, [r7, #0x40]
	movs r1, #0
	ldrsh r0, [r4, r1]
	subs r2, r2, r0
	str r2, [r7, #0x44]
_0811E626:
	adds r1, r3, #0
	ldrh r2, [r1]
	movs r0, #0
	ldrsh r5, [r1, r0]
	cmp r5, #0
	bge _0811E654
	ldr r3, _0811E650 @ =0x00007FFF
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0811E666
	mov r5, sp
	ldrh r5, [r5]
	strh r5, [r1]
	b _0811E666
	.align 2, 0
_0811E648: .4byte 0x0000FFFE
_0811E64C: .4byte 0xFFFFF000
_0811E650: .4byte 0x00007FFF
_0811E654:
	ldr r1, _0811E684 @ =0xFFFF8001
	adds r0, r2, r1
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0811E666
	mov r2, sp
	ldrh r2, [r2]
	strh r2, [r3]
_0811E666:
	adds r1, r4, #0
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _0811E68C
	ldr r5, _0811E688 @ =0x00007FFF
	adds r0, r2, r5
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0811E69C
	movs r0, #0
	strh r0, [r1]
	b _0811E69C
	.align 2, 0
_0811E684: .4byte 0xFFFF8001
_0811E688: .4byte 0x00007FFF
_0811E68C:
	ldr r1, _0811E6D0 @ =0xFFFF8001
	adds r0, r2, r1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0811E69C
	movs r0, #0
	strh r0, [r4]
_0811E69C:
	mov r0, r8
	bl sub_0811E2EC
	mov r2, sl
	ldrb r4, [r2]
	mov r3, sb
	ldrh r1, [r3]
	ldrh r2, [r6]
	adds r0, r4, #0
	bl sub_080023E4
	mov r5, sb
	ldrb r1, [r5]
_0811E6B6:
	ldrb r2, [r6]
	adds r0, r4, #0
	movs r3, #0
	bl sub_08002624
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	b _0811E6E2
	.align 2, 0
_0811E6D0: .4byte 0xFFFF8001
_0811E6D4:
	ldr r0, _0811E6F8 @ =sub_0811E890
	str r0, [r7, #0x78]
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r7, #8]
_0811E6E2:
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
	.align 2, 0
_0811E6F8: .4byte sub_0811E890

	thumb_func_start sub_0811E6FC
sub_0811E6FC: @ 0x0811E6FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	mov sl, r6
	ldr r0, [r6, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0811E716
	b _0811E876
_0811E716:
	movs r0, #0xb6
	adds r0, r0, r6
	mov r8, r0
	ldrh r1, [r0]
	movs r3, #1
	mov sb, r3
	mov r0, sb
	ands r0, r1
	adds r7, r6, #0
	adds r7, #0xbe
	cmp r0, #0
	bne _0811E75A
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r4, [r0]
	adds r5, r6, #0
	adds r5, #0xbc
	ldrh r1, [r5]
	ldrh r2, [r7]
	adds r0, r4, #0
	bl sub_080023E4
	ldrb r1, [r5]
	ldrb r2, [r7]
	adds r0, r4, #0
	movs r3, #1
	bl sub_08002624
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
_0811E75A:
	adds r0, r6, #0
	bl sub_0811DDFC
	mov r0, r8
	ldrh r1, [r0]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _0811E840
	ldr r0, _0811E7DC @ =0x0000FFFE
	ands r0, r1
	movs r5, #0
	mov r1, r8
	strh r0, [r1]
	ldrh r0, [r7]
	adds r0, #1
	strh r0, [r7]
	adds r2, r6, #0
	adds r2, #0x52
	ldr r3, _0811E7E0 @ =0xFFFFF000
	adds r0, r3, #0
	ldrh r7, [r2]
	adds r1, r0, r7
	strh r1, [r2]
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	adds r4, r2, #0
	cmp r1, r0
	bge _0811E798
	strh r3, [r4]
_0811E798:
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	adds r3, r6, #0
	adds r3, #0x50
	cmp r0, #0
	bne _0811E7C0
	ldr r1, [r6, #0x40]
	str r1, [r6, #0x48]
	ldr r2, [r6, #0x44]
	str r2, [r6, #0x4c]
	movs r7, #0
	ldrsh r0, [r3, r7]
	adds r1, r1, r0
	str r1, [r6, #0x40]
	movs r1, #0
	ldrsh r0, [r4, r1]
	subs r2, r2, r0
	str r2, [r6, #0x44]
_0811E7C0:
	adds r1, r3, #0
	ldrh r2, [r1]
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, #0
	bge _0811E7E8
	ldr r3, _0811E7E4 @ =0x00007FFF
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0811E7F6
	strh r5, [r1]
	b _0811E7F6
	.align 2, 0
_0811E7DC: .4byte 0x0000FFFE
_0811E7E0: .4byte 0xFFFFF000
_0811E7E4: .4byte 0x00007FFF
_0811E7E8:
	ldr r7, _0811E814 @ =0xFFFF8001
	adds r0, r2, r7
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0811E7F6
	strh r5, [r3]
_0811E7F6:
	adds r1, r4, #0
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _0811E81C
	ldr r7, _0811E818 @ =0x00007FFF
	adds r0, r2, r7
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0811E82C
	movs r0, #0
	strh r0, [r1]
	b _0811E82C
	.align 2, 0
_0811E814: .4byte 0xFFFF8001
_0811E818: .4byte 0x00007FFF
_0811E81C:
	ldr r1, _0811E838 @ =0xFFFF8001
	adds r0, r2, r1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0811E82C
	movs r0, #0
	strh r0, [r4]
_0811E82C:
	ldr r0, [r6, #8]
	ldr r1, _0811E83C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r6, #8]
	b _0811E864
	.align 2, 0
_0811E838: .4byte 0xFFFF8001
_0811E83C: .4byte 0xFFFFFBFF
_0811E840:
	adds r0, r6, #0
	adds r0, #0xbc
	ldrh r1, [r0]
	ldrh r2, [r7]
	subs r0, #0x66
	ldrb r0, [r0]
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x27
	bgt _0811E85C
	cmp r0, #0x22
	bge _0811E85E
_0811E85C:
	movs r0, #0
_0811E85E:
	adds r1, r0, #0
	cmp r1, #0
	beq _0811E86C
_0811E864:
	mov r0, sl
	bl sub_0811E3D0
	b _0811E876
_0811E86C:
	ldr r0, _0811E88C @ =sub_0811DD94
	str r0, [r6, #0x78]
	adds r0, r6, #0
	adds r0, #0x83
	strb r1, [r0]
_0811E876:
	ldrh r0, [r6, #4]
	adds r0, #1
	strh r0, [r6, #4]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811E88C: .4byte sub_0811DD94

	thumb_func_start sub_0811E890
sub_0811E890: @ 0x0811E890
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0xb6
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0811E900
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0811E916
	adds r0, r4, #0
	adds r0, #0xbc
	ldrh r1, [r0]
	subs r0, #4
	strh r1, [r0]
	adds r0, #6
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0xba
	strh r0, [r1]
	subs r1, #6
	movs r0, #0x23
	strh r0, [r1]
	movs r0, #5
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #4]
	ldr r3, _0811E8F8 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _0811E8FC @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
	b _0811E916
	.align 2, 0
_0811E8F8: .4byte gCurLevelInfo
_0811E8FC: .4byte 0x0000065E
_0811E900:
	adds r0, r4, #0
	adds r0, #0xb4
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _0811E924 @ =0xFFFF0000
	cmp r1, r0
	bne _0811E916
	ldr r0, _0811E928 @ =sub_0811E6FC
	str r0, [r4, #0x78]
_0811E916:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0811E924: .4byte 0xFFFF0000
_0811E928: .4byte sub_0811E6FC

	thumb_func_start sub_0811E92C
sub_0811E92C: @ 0x0811E92C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _0811E94E
	ldr r0, _0811E95C @ =sub_0811E4B4
	str r0, [r4, #0x78]
	adds r1, r4, #0
	adds r1, #0xb6
	movs r0, #3
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08094930
_0811E94E:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0811E95C: .4byte sub_0811E4B4

	thumb_func_start sub_0811E960
sub_0811E960: @ 0x0811E960
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _0811E994 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _0811E998 @ =sub_0811F034
	str r1, [sp]
	movs r1, #0xe4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811E99C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0811E9A4
	.align 2, 0
_0811E994: .4byte ObjectMain
_0811E998: .4byte sub_0811F034
_0811E99C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0811E9A4:
	adds r7, r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r7, #8]
	ldr r1, _0811E9F8 @ =0x82C08000
	orrs r0, r1
	str r0, [r7, #8]
	ldr r2, [r7, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r2, r1
	ldr r0, [r7, #0x5c]
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r2, r0
	str r2, [r7, #0x68]
	ldr r0, [r7, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0xc]
	adds r0, r7, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #0x22]
	ands r1, r0
	cmp r1, #0
	beq _0811E9FC
	adds r1, r7, #0
	adds r1, #0xe1
	movs r0, #3
	strb r0, [r1]
	subs r1, #0x5e
	movs r0, #1
	strb r0, [r1]
	b _0811EA0A
	.align 2, 0
_0811E9F8: .4byte 0x82C08000
_0811E9FC:
	adds r2, r7, #0
	adds r2, #0xe1
	movs r0, #2
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x83
	strb r1, [r0]
_0811EA0A:
	movs r5, #7
	rsbs r5, r5, #0
	movs r6, #8
	rsbs r6, r6, #0
	movs r4, #8
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #7
	bl sub_0803E308
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #7
	bl sub_0803E2B0
	adds r0, r7, #0
	bl ObjectInitSprite
	ldr r2, _0811EA5C @ =gUnk_08351648
	adds r0, r7, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r7, #0
	bl _call_via_r1
	adds r0, r7, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0811EA5C: .4byte gUnk_08351648

	thumb_func_start sub_0811EA60
sub_0811EA60: @ 0x0811EA60
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x20
	adds r5, r0, #0
	mov sb, r1
	ldr r0, _0811EB80 @ =gUnk_02020EE0
	mov r8, r0
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r7, sb
	muls r7, r0, r7
	mov r1, r8
	adds r3, r7, r1
	adds r0, r3, #0
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0811EA90
	b _0811EC72
_0811EA90:
	mov r0, r8
	adds r0, #0x40
	adds r0, r0, r7
	mov ip, r0
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r3, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	str r0, [sp]
	mov r2, r8
	adds r2, #0x44
	adds r2, r7, r2
	ldr r0, [r2]
	asrs r0, r0, #8
	adds r1, r3, #0
	adds r1, #0x3d
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	str r0, [sp, #4]
	mov r1, ip
	ldr r0, [r1]
	asrs r0, r0, #8
	adds r1, r3, #0
	adds r1, #0x3e
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [r2]
	asrs r0, r0, #8
	adds r1, r3, #0
	adds r1, #0x3f
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	str r0, [sp, #0xc]
	add r4, sp, #0x10
	ldr r0, [r5, #0x40]
	asrs r6, r0, #8
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r6, r0
	subs r0, #4
	str r0, [sp, #0x10]
	ldr r1, [r5, #0x44]
	asrs r1, r1, #8
	adds r0, r5, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r1, r0
	str r0, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r6, r0
	adds r0, #4
	str r0, [r4, #8]
	adds r0, r5, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	str r1, [r4, #0xc]
	adds r0, r5, #0
	adds r0, #0x90
	ldrb r1, [r0]
	mov r3, sb
	lsls r2, r3, #1
	movs r3, #3
	adds r0, r3, #0
	lsls r0, r2
	ands r1, r0
	asrs r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r2, r1, #0
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _0811EBD4
	mov r0, r8
	adds r0, #0x74
	adds r0, r7, r0
	ldr r0, [r0]
	cmp r0, r5
	bne _0811EB5E
	b _0811EC72
_0811EB5E:
	mov r3, ip
	ldr r0, [r3]
	asrs r0, r0, #8
	cmp r0, r6
	ble _0811EB84
	adds r2, r5, #0
	adds r2, #0xe0
	ldrb r3, [r2]
	subs r0, r3, #1
	strb r0, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0811EC36
	subs r0, r3, #2
	strb r0, [r2]
	b _0811EC36
	.align 2, 0
_0811EB80: .4byte gUnk_02020EE0
_0811EB84:
	adds r1, r5, #0
	adds r1, #0xe0
	ldrb r0, [r1]
	adds r3, r0, #1
	strb r3, [r1]
	movs r0, #2
	ands r2, r0
	cmp r2, #0
	beq _0811EB9A
	adds r0, r3, #1
	strb r0, [r1]
_0811EB9A:
	ldr r2, [sp]
	ldr r1, [sp, #0x10]
	cmp r2, r1
	bgt _0811EBAC
	ldr r0, [sp, #8]
	cmp r0, r1
	bge _0811EBB2
	cmp r2, r1
	blt _0811EC72
_0811EBAC:
	ldr r0, [r4, #8]
	cmp r0, r2
	blt _0811EC72
_0811EBB2:
	ldr r2, [sp, #4]
	ldr r1, [r4, #4]
	cmp r2, r1
	bgt _0811EBC4
	ldr r0, [sp, #0xc]
	cmp r0, r1
	bge _0811EBCA
	cmp r2, r1
	blt _0811EC72
_0811EBC4:
	ldr r0, [r4, #0xc]
	cmp r0, r2
	blt _0811EC72
_0811EBCA:
	adds r2, r5, #0
	adds r2, #0xe3
	ldrb r1, [r2]
	movs r0, #0x20
	b _0811EC6E
_0811EBD4:
	adds r0, r5, #0
	bl sub_08070504
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0811EC72
	mov r0, r8
	adds r0, #0x74
	adds r0, r7, r0
	ldr r0, [r0]
	cmp r0, r5
	beq _0811EC72
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0811EC36
	ldr r2, [sp]
	ldr r1, [sp, #0x10]
	cmp r2, r1
	bgt _0811EC0E
	ldr r0, [sp, #8]
	cmp r0, r1
	bge _0811EC14
	cmp r2, r1
	blt _0811EC72
_0811EC0E:
	ldr r0, [r4, #8]
	cmp r0, r2
	blt _0811EC72
_0811EC14:
	ldr r2, [sp, #4]
	ldr r1, [r4, #4]
	cmp r2, r1
	bgt _0811EC26
	ldr r0, [sp, #0xc]
	cmp r0, r1
	bge _0811EC2C
	cmp r2, r1
	blt _0811EC72
_0811EC26:
	ldr r0, [r4, #0xc]
	cmp r0, r2
	blt _0811EC72
_0811EC2C:
	adds r2, r5, #0
	adds r2, #0xe3
	ldrb r1, [r2]
	movs r0, #0x20
	b _0811EC6E
_0811EC36:
	ldr r2, [sp]
	ldr r1, [sp, #0x10]
	cmp r2, r1
	bgt _0811EC48
	ldr r0, [sp, #8]
	cmp r0, r1
	bge _0811EC4E
	cmp r2, r1
	blt _0811EC72
_0811EC48:
	ldr r0, [r4, #8]
	cmp r0, r2
	blt _0811EC72
_0811EC4E:
	ldr r2, [sp, #4]
	ldr r1, [r4, #4]
	cmp r2, r1
	bgt _0811EC60
	ldr r0, [sp, #0xc]
	cmp r0, r1
	bge _0811EC66
	cmp r2, r1
	blt _0811EC72
_0811EC60:
	ldr r0, [r4, #0xc]
	cmp r0, r2
	blt _0811EC72
_0811EC66:
	adds r2, r5, #0
	adds r2, #0xe3
	ldrb r1, [r2]
	movs r0, #0x10
_0811EC6E:
	orrs r0, r1
	strb r0, [r2]
_0811EC72:
	add sp, #0x20
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0811EC80
sub_0811EC80: @ 0x0811EC80
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	mov sb, r6
	adds r1, r6, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0811ECB4
	ldr r2, _0811ECAC @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _0811ECB0 @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	b _0811ECB6
	.align 2, 0
_0811ECAC: .4byte gCurLevelInfo
_0811ECB0: .4byte 0x0000065E
_0811ECB4:
	movs r0, #0xff
_0811ECB6:
	cmp r0, #0xff
	beq _0811ECDE
	lsls r3, r0, #3
	ldr r1, _0811ED70 @ =gUnk_02022F40
	adds r1, r0, r1
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0811ED74 @ =gUnk_02022EC0
	lsls r1, r0, #2
	adds r1, r1, r2
	str r6, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_0811ECDE:
	mov r5, sb
	adds r5, #0xe0
	movs r2, #0
	mov r8, r2
	mov r4, r8
	strb r4, [r5]
	mov r4, sb
	adds r4, #0xe3
	ldrb r1, [r4]
	movs r0, #0xcf
	ands r0, r1
	strb r0, [r4]
	mov r0, sb
	movs r1, #0
	bl sub_0811EA60
	mov r0, sb
	movs r1, #1
	bl sub_0811EA60
	mov r0, sb
	movs r1, #2
	bl sub_0811EA60
	mov r0, sb
	movs r1, #3
	bl sub_0811EA60
	adds r2, r6, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	adds r3, r5, #0
	adds r7, r4, #0
	cmp r0, #0
	beq _0811ED30
	ldrb r0, [r7]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r7]
_0811ED30:
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0811ED42
	ldrb r0, [r7]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r7]
_0811ED42:
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bge _0811ED4C
	rsbs r0, r0, #0
_0811ED4C:
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #0
	adds r0, #0x50
	ldrh r2, [r0]
	movs r4, #0
	ldrsh r1, [r0, r4]
	adds r4, r0, #0
	cmp r1, #0
	bge _0811ED78
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r2, r1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0811ED88
	b _0811ED84
	.align 2, 0
_0811ED70: .4byte gUnk_02022F40
_0811ED74: .4byte gUnk_02022EC0
_0811ED78:
	ldr r1, _0811EE14 @ =0xFFFFFE00
	adds r0, r2, r1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0811ED88
_0811ED84:
	mov r2, r8
	strh r2, [r4]
_0811ED88:
	lsls r0, r5, #0x18
	asrs r5, r0, #0x18
	cmp r5, #0
	beq _0811ED92
	b _0811EF1C
_0811ED92:
	adds r0, r6, #0
	bl sub_08070504
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0811EDA0
	b _0811EEE6
_0811EDA0:
	ldrb r0, [r7]
	movs r2, #0xf7
	ands r2, r0
	strb r2, [r7]
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	bne _0811EDB8
	movs r1, #8
	adds r0, r2, #0
	orrs r0, r1
	strb r0, [r7]
_0811EDB8:
	ldrb r1, [r7]
	movs r0, #4
	adds r2, r1, #0
	orrs r2, r0
	movs r0, #0
	orrs r2, r0
	strb r2, [r7]
	adds r0, r6, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0811EE5E
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	bne _0811EDE0
	b _0811EFEA
_0811EDE0:
	movs r0, #0x20
	ands r2, r0
	cmp r2, #0
	beq _0811EDEA
	b _0811EFEA
_0811EDEA:
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0811EE18
	movs r0, #0x80
	lsls r0, r0, #2
	adds r2, r0, #0
	ldrh r1, [r4]
	adds r0, r2, r1
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, _0811EE14 @ =0xFFFFFE00
	cmp r1, r0
	blt _0811EE36
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _0811EE38
	b _0811EE36
	.align 2, 0
_0811EE14: .4byte 0xFFFFFE00
_0811EE18:
	ldr r0, _0811EE4C @ =0xFFFFFE00
	adds r2, r0, #0
	ldrh r1, [r4]
	adds r0, r2, r1
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bgt _0811EE36
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _0811EE38
_0811EE36:
	strh r0, [r4]
_0811EE38:
	ldrb r1, [r7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0811EE50
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0xc
	b _0811EE56
	.align 2, 0
_0811EE4C: .4byte 0xFFFFFE00
_0811EE50:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #4
_0811EE56:
	movs r3, #1
	bl sub_08089864
	b _0811EFEA
_0811EE5E:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	bne _0811EE68
	b _0811EFEA
_0811EE68:
	movs r0, #0x10
	ands r2, r0
	cmp r2, #0
	beq _0811EE72
	b _0811EFEA
_0811EE72:
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0811EEA0
	ldr r2, _0811EE9C @ =0xFFFFFE00
	adds r1, r2, #0
	ldrh r2, [r4]
	adds r0, r1, r2
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r0, r1
	blt _0811EEBE
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	ble _0811EEC0
	b _0811EEBE
	.align 2, 0
_0811EE9C: .4byte 0xFFFFFE00
_0811EEA0:
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r0, #0
	ldrh r2, [r4]
	adds r0, r1, r2
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r0, r1
	bgt _0811EEBE
	ldr r1, _0811EED4 @ =0xFFFFFE00
	cmp r0, r1
	bge _0811EEC0
_0811EEBE:
	strh r1, [r4]
_0811EEC0:
	ldrb r1, [r7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0811EED8
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0xc
	b _0811EEDE
	.align 2, 0
_0811EED4: .4byte 0xFFFFFE00
_0811EED8:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #4
_0811EEDE:
	movs r3, #0
	bl sub_08089864
	b _0811EFEA
_0811EEE6:
	ldrh r1, [r4]
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _0811EF00
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r1, r2
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0811EF0E
	b _0811EF0C
_0811EF00:
	ldr r2, _0811EF18 @ =0xFFFFFE00
	adds r0, r1, r2
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0811EF0E
_0811EF0C:
	strh r5, [r4]
_0811EF0E:
	ldrb r1, [r7]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r7]
	b _0811EFEA
	.align 2, 0
_0811EF18: .4byte 0xFFFFFE00
_0811EF1C:
	mov r0, sb
	adds r0, #0xe1
	ldrb r0, [r0]
	cmp r5, r0
	blt _0811EFEA
	ldrb r1, [r7]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0811EF88
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0811EF62
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0811EFEA
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bge _0811EFEA
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0811EFB0
	ldrh r0, [r4]
	adds r0, #0x40
_0811EF56:
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x40
	bgt _0811EFC4
	b _0811EFE0
_0811EF62:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811EFEA
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	ble _0811EFEA
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0811EF82
	ldrh r0, [r4]
	adds r0, #0x40
	b _0811EFB4
_0811EF82:
	ldrh r0, [r4]
	subs r0, #0x40
	b _0811EF56
_0811EF88:
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	ble _0811EFA6
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0811EFA0
	ldrh r0, [r4]
	adds r0, #0x40
	b _0811EFB4
_0811EFA0:
	ldrh r0, [r4]
	subs r0, #0x40
	b _0811EF56
_0811EFA6:
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0811EFCA
_0811EFB0:
	ldrh r0, [r4]
	subs r0, #0x40
_0811EFB4:
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, #0x41
	cmp r0, r1
	blt _0811EFE8
	cmp r0, #0x40
	ble _0811EFEA
_0811EFC4:
	movs r0, #0x40
	strh r0, [r4]
	b _0811EFEA
_0811EFCA:
	adds r1, r4, #0
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x40
	ble _0811EFE0
	movs r0, #0x40
	strh r0, [r1]
	b _0811EFEA
_0811EFE0:
	movs r1, #0x40
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0811EFEA
_0811EFE8:
	strh r1, [r4]
_0811EFEA:
	ldr r2, [r6, #8]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _0811F028
	mov r4, sb
	adds r4, #0xe2
	ldrb r0, [r4]
	cmp r0, #0
	beq _0811F024
	adds r0, r6, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0811F028
	movs r0, #0x80
	lsls r0, r0, #1
	orrs r2, r0
	str r2, [r6, #8]
	ldrb r1, [r7]
	movs r0, #2
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r7]
	b _0811F028
_0811F024:
	movs r0, #1
	strb r0, [r4]
_0811F028:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0811F034
sub_0811F034: @ 0x0811F034
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r3, r0, #0
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811F054
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0811F05C
_0811F054:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0811F05C:
	adds r1, r0, #0
	adds r1, #0xe3
	ldrb r5, [r1]
	subs r1, #0x8d
	ldrb r2, [r1]
	adds r7, r2, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r4, [r0, #2]
	ldrb r6, [r0, #3]
	mov r8, r6
	cmp r2, #0xff
	beq _0811F088
	ldr r1, _0811F0AC @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r1
	ldr r1, _0811F0B0 @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	mov sb, r0
_0811F088:
	adds r0, r3, #0
	bl ObjectDestroy
	cmp r4, #0
	bne _0811F096
	cmp r7, #0xff
	beq _0811F0C0
_0811F096:
	movs r0, #0x40
	ands r5, r0
	cmp r5, #0
	beq _0811F0B4
	adds r0, r4, #0
	adds r1, r6, #0
	mov r2, sb
	movs r3, #1
	bl sub_08001678
	b _0811F0C0
	.align 2, 0
_0811F0AC: .4byte gCurLevelInfo
_0811F0B0: .4byte 0x0000065E
_0811F0B4:
	adds r0, r4, #0
	mov r1, r8
	mov r2, sb
	movs r3, #0
	bl sub_08001678
_0811F0C0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0811F0CC
sub_0811F0CC: @ 0x0811F0CC
	adds r2, r0, #0
	movs r0, #0
	movs r1, #0
	strh r1, [r2, #4]
	adds r1, r2, #0
	adds r1, #0xe2
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	ldr r0, _0811F0E4 @ =sub_0811F0E8
	str r0, [r2, #0x78]
	bx lr
	.align 2, 0
_0811F0E4: .4byte sub_0811F0E8

	thumb_func_start sub_0811F0E8
sub_0811F0E8: @ 0x0811F0E8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0811EC80
	ldr r2, [r4, #0x44]
	asrs r2, r2, #8
	ldr r3, _0811F124 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r3
	adds r0, #0xbe
	ldrh r0, [r0]
	subs r0, #8
	cmp r2, r0
	blt _0811F118
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_0811F118:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0811F124: .4byte gCurLevelInfo

	thumb_func_start sub_0811F128
sub_0811F128: @ 0x0811F128
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _0811F15C @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _0811F160 @ =sub_0811F824
	str r1, [sp]
	movs r1, #0xc8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811F164
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _0811F16C
	.align 2, 0
_0811F15C: .4byte ObjectMain
_0811F160: .4byte sub_0811F824
_0811F164:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_0811F16C:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r5, #8]
	ldr r1, _0811F204 @ =gUnk_02008740
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r5, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x68]
	ldr r0, [r5, #0x5c]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r5, #0x5c]
	ldr r0, [r5, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #0xc]
	add r1, sp, #4
	adds r2, r5, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r0, [r0, #0x1a]
	strh r0, [r1]
	ldr r0, [r2]
	ldrh r0, [r0, #0x1c]
	strh r0, [r1, #2]
	adds r3, r1, #0
	ldr r0, [r2]
	ldrh r0, [r0, #0x1e]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r3, #4]
	adds r0, r3, #0
	ldr r1, [r2]
	ldrh r4, [r0, #2]
	ldrh r0, [r1, #0x20]
	adds r4, r4, r0
	strh r4, [r3, #6]
	adds r0, r3, #0
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldrh r2, [r0, #2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	movs r3, #4
	ldrsb r3, [r0, r3]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	str r4, [sp]
	adds r0, r5, #0
	bl sub_0803E308
	ldr r2, _0811F208 @ =gUnk_08351648
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	adds r0, r5, #0
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0811F204: .4byte gUnk_02008740
_0811F208: .4byte gUnk_08351648

	thumb_func_start sub_0811F20C
sub_0811F20C: @ 0x0811F20C
	push {r4, r5, lr}
	mov ip, r0
	movs r4, #0
	strh r4, [r0, #4]
	mov r3, ip
	adds r3, #0xb0
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	mov r2, ip
	adds r2, #0xb8
	strh r0, [r2]
	ldr r0, [r3]
	ldrh r0, [r0, #8]
	mov r5, ip
	adds r5, #0xba
	strh r0, [r5]
	ldrh r1, [r2]
	mov r0, ip
	adds r0, #0xbc
	strh r1, [r0]
	ldrh r0, [r5]
	mov r1, ip
	adds r1, #0xbe
	strh r0, [r1]
	ldrh r1, [r2]
	mov r0, ip
	adds r0, #0xc0
	strh r1, [r0]
	ldrh r0, [r5]
	mov r1, ip
	adds r1, #0xc2
	strh r0, [r1]
	mov r0, ip
	adds r0, #0xc4
	strh r4, [r0]
	ldr r0, [r3]
	ldrh r0, [r0, #0x14]
	adds r1, #4
	strh r0, [r1]
	ldr r0, _0811F268 @ =sub_0811F918
	mov r1, ip
	str r0, [r1, #0x78]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0811F268: .4byte sub_0811F918

	thumb_func_start sub_0811F26C
sub_0811F26C: @ 0x0811F26C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xb0
	ldr r0, [r5]
	ldrb r1, [r0, #4]
	ldr r3, _0811F304 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _0811F308 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	adds r3, r0, #0
	ldrb r0, [r3]
	cmp r0, #0
	bne _0811F2AE
	ldrb r0, [r3, #1]
	cmp r0, #0
	bne _0811F2AE
	ldrb r0, [r3, #2]
	cmp r0, #0
	beq _0811F348
_0811F2AE:
	adds r2, r4, #0
	adds r2, #0xb4
	ldrb r6, [r3]
	mov r8, r6
	adds r5, r2, #0
	ldrb r7, [r2]
	cmp r6, r7
	bne _0811F2D6
	ldrb r0, [r3, #1]
	ldrb r1, [r2, #1]
	cmp r0, r1
	bne _0811F2D6
	ldrb r0, [r3, #2]
	ldrb r1, [r2, #2]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r7, r1, #0x1f
	cmp r7, #0
	beq _0811F310
_0811F2D6:
	movs r1, #0
	mov r2, r8
	strb r2, [r5]
	ldrb r0, [r3, #1]
	strb r0, [r5, #1]
	ldrb r0, [r3, #2]
	strb r0, [r5, #2]
	strb r1, [r5, #3]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #0x14]
	adds r1, r4, #0
	adds r1, #0xc6
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0xc4
	ldrh r1, [r2]
	ldr r0, _0811F30C @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	b _0811F402
	.align 2, 0
_0811F304: .4byte gCurLevelInfo
_0811F308: .4byte 0x0000065E
_0811F30C: .4byte 0x0000FDFF
_0811F310:
	adds r5, r4, #0
	adds r5, #0xc4
	ldrh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0811F402
	strb r6, [r2]
	ldrb r0, [r3, #1]
	strb r0, [r2, #1]
	ldrb r0, [r3, #2]
	strb r0, [r2, #2]
	strb r7, [r2, #3]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x14]
	adds r0, r4, #0
	adds r0, #0xc6
	strh r1, [r0]
	ldrh r1, [r5]
	ldr r0, _0811F344 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r5]
	b _0811F402
	.align 2, 0
_0811F344: .4byte 0x0000FDFF
_0811F348:
	adds r2, r4, #0
	adds r2, #0xc4
	ldrh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	bne _0811F402
	ldr r0, [r5]
	ldrh r5, [r0, #8]
	mov sb, r5
	adds r1, r4, #0
	adds r1, #0xb8
	subs r2, #0xa
	ldrh r5, [r2]
	movs r7, #6
	ldrsh r3, [r0, r7]
	movs r7, #0
	ldrsh r0, [r1, r7]
	movs r7, #0
	mov ip, r7
	mov r8, r1
	cmp r3, r0
	bne _0811F382
	cmp sb, r5
	bne _0811F382
	movs r0, #1
	mov ip, r0
_0811F382:
	mov r1, ip
	cmp r1, #0
	beq _0811F3A4
	ldrh r1, [r6]
	ldr r0, _0811F3A0 @ =0x0000FDFF
	ands r0, r1
	movs r1, #0
	strh r0, [r6]
	adds r0, r4, #0
	adds r0, #0xb4
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	b _0811F402
	.align 2, 0
_0811F3A0: .4byte 0x0000FDFF
_0811F3A4:
	adds r0, r4, #0
	adds r0, #0xb4
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811F402
	adds r3, r4, #0
	adds r3, #0xc6
	ldrh r1, [r3]
	movs r5, #0
	ldrsh r0, [r3, r5]
	cmp r0, #0
	blt _0811F3C6
	subs r0, r1, #1
	strh r0, [r3]
	b _0811F402
_0811F3C6:
	mov r7, r8
	ldrh r1, [r7]
	adds r0, r4, #0
	adds r0, #0xbc
	strh r1, [r0]
	ldrh r0, [r2]
	adds r1, r4, #0
	adds r1, #0xbe
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xc0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r1, [r0, #8]
	adds r0, r4, #0
	adds r0, #0xc2
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r0, [r0, #0x14]
	strh r0, [r3]
	ldrh r1, [r6]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r6]
_0811F402:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0811F410
sub_0811F410: @ 0x0811F410
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov ip, r0
	mov r1, ip
	adds r1, #0xb0
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	mov r2, ip
	adds r2, #0xc0
	strh r0, [r2]
	ldr r0, [r1]
	ldrh r3, [r0, #8]
	mov r4, ip
	adds r4, #0xc2
	strh r3, [r4]
	mov r0, ip
	adds r0, #0xc4
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0811F4A0
	mov r0, ip
	adds r0, #0xb4
	ldrb r0, [r0]
	movs r1, #3
	ands r1, r0
	cmp r1, #1
	beq _0811F478
	cmp r1, #1
	bgt _0811F45E
	cmp r1, #0
	beq _0811F468
	b _0811F4A0
_0811F45E:
	cmp r1, #2
	beq _0811F484
	cmp r1, #3
	beq _0811F494
	b _0811F4A0
_0811F468:
	mov r0, ip
	adds r0, #0xb6
	ldrb r1, [r0]
	lsls r1, r1, #4
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
	b _0811F4A0
_0811F478:
	mov r0, ip
	adds r0, #0xb6
	ldrb r0, [r0]
	lsls r0, r0, #4
	subs r0, r3, r0
	b _0811F49E
_0811F484:
	mov r0, ip
	adds r0, #0xb6
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	b _0811F4A0
_0811F494:
	mov r0, ip
	adds r0, #0xb6
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r0, r3, r0
_0811F49E:
	strh r0, [r4]
_0811F4A0:
	mov r2, ip
	adds r2, #0xc4
	ldrh r0, [r2]
	ldr r5, _0811F4D4 @ =0x0000FFE0
	ands r5, r0
	movs r7, #0
	strh r5, [r2]
	mov r0, ip
	adds r0, #0xc0
	ldr r4, [r0]
	mov r1, ip
	adds r1, #0xb8
	ldr r3, [r1]
	mov sl, r0
	adds r6, r2, #0
	mov sb, r1
	cmp r4, r3
	bne _0811F4D8
	movs r1, #0x10
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r6]
	movs r2, #0xba
	add r2, ip
	mov r8, r2
	b _0811F538
	.align 2, 0
_0811F4D4: .4byte 0x0000FFE0
_0811F4D8:
	mov r3, sl
	movs r0, #0
	ldrsh r4, [r3, r0]
	mov r1, sb
	movs r2, #0
	ldrsh r3, [r1, r2]
	cmp r4, r3
	beq _0811F512
	movs r0, #0xc2
	add r0, ip
	mov r8, r0
	mov r0, ip
	adds r0, #0xba
	mov r1, r8
	movs r2, #0
	ldrsh r1, [r1, r2]
	str r1, [sp]
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r8, r0
	ldr r0, [sp]
	cmp r0, r1
	bne _0811F538
	cmp r3, r4
	bge _0811F50E
	movs r1, #4
	b _0811F532
_0811F50E:
	movs r1, #1
	b _0811F532
_0811F512:
	mov r1, ip
	adds r1, #0xc2
	mov r0, ip
	adds r0, #0xba
	movs r3, #0
	ldrsh r2, [r1, r3]
	movs r4, #0
	ldrsh r1, [r0, r4]
	mov r8, r0
	cmp r2, r1
	beq _0811F538
	cmp r1, r2
	bge _0811F530
	movs r1, #8
	b _0811F532
_0811F530:
	movs r1, #2
_0811F532:
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r6]
_0811F538:
	ldrh r1, [r6]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r6]
	movs r1, #0x1f
	ands r1, r0
	cmp r1, #2
	beq _0811F5BE
	cmp r1, #2
	bgt _0811F556
	cmp r1, #1
	beq _0811F560
	b _0811F674
_0811F556:
	cmp r1, #4
	beq _0811F5EE
	cmp r1, #8
	beq _0811F64C
	b _0811F674
_0811F560:
	mov r2, ip
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _0811F590
	mov r1, ip
	adds r1, #0x50
	adds r2, #0xb5
	ldrh r0, [r1]
	ldrb r3, [r2]
	adds r0, r0, r3
	strh r0, [r1]
	movs r4, #0
	ldrsh r3, [r1, r4]
	ldrb r0, [r2]
	rsbs r2, r0, #0
	cmp r3, r2
	bge _0811F588
	strh r2, [r1]
	b _0811F5B2
_0811F588:
	cmp r3, r0
	ble _0811F5B2
	strh r0, [r1]
	b _0811F5B2
_0811F590:
	mov r2, ip
	adds r2, #0x50
	mov r3, ip
	adds r3, #0xb5
	ldrb r1, [r3]
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
	movs r7, #0
	ldrsh r1, [r2, r7]
	ldrb r0, [r3]
	cmp r1, r0
	bgt _0811F5B0
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0811F5B2
_0811F5B0:
	strh r0, [r2]
_0811F5B2:
	mov r1, ip
	ldr r0, [r1, #0x40]
	asrs r0, r0, #8
	mov r2, sb
	strh r0, [r2]
	b _0811F674
_0811F5BE:
	mov r3, ip
	adds r3, #0xb5
	ldrb r0, [r3]
	cmp r0, #0
	beq _0811F5E2
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	ldrb r4, [r3]
	adds r0, r0, r4
	strh r0, [r1]
	movs r7, #0
	ldrsh r0, [r1, r7]
	ldrb r2, [r3]
	cmp r0, r2
	ble _0811F66A
	strh r2, [r1]
	b _0811F66A
_0811F5E2:
	mov r2, ip
	adds r2, #0x52
	ldrh r0, [r2]
	ldrb r1, [r3]
	adds r0, r0, r1
	b _0811F65A
_0811F5EE:
	mov r2, ip
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0811F620
	adds r2, #0x50
	mov r4, ip
	adds r4, #0xb5
	ldrb r1, [r4]
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
	movs r7, #0
	ldrsh r3, [r2, r7]
	ldrb r0, [r4]
	rsbs r1, r0, #0
	cmp r3, r1
	bge _0811F618
	strh r1, [r2]
	b _0811F642
_0811F618:
	cmp r3, r0
	ble _0811F642
	strh r0, [r2]
	b _0811F642
_0811F620:
	mov r1, ip
	adds r1, #0x50
	mov r3, ip
	adds r3, #0xb5
	ldrh r0, [r1]
	ldrb r2, [r3]
	adds r0, r0, r2
	strh r0, [r1]
	movs r4, #0
	ldrsh r2, [r1, r4]
	ldrb r0, [r3]
	cmp r2, r0
	bgt _0811F640
	rsbs r0, r0, #0
	cmp r2, r0
	bge _0811F642
_0811F640:
	strh r0, [r1]
_0811F642:
	mov r7, ip
	ldr r0, [r7, #0x40]
	asrs r0, r0, #8
	mov r1, sb
	b _0811F672
_0811F64C:
	mov r3, ip
	adds r3, #0xb5
	ldrb r4, [r3]
	mov r2, ip
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, r0, r4
_0811F65A:
	strh r0, [r2]
	movs r4, #0
	ldrsh r1, [r2, r4]
	ldrb r0, [r3]
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0811F66A
	strh r0, [r2]
_0811F66A:
	mov r7, ip
	ldr r0, [r7, #0x44]
	asrs r0, r0, #8
	mov r1, r8
_0811F672:
	strh r0, [r1]
_0811F674:
	ldrh r0, [r6]
	movs r1, #0x1f
	ands r1, r0
	cmp r1, #2
	beq _0811F6E4
	cmp r1, #2
	bgt _0811F688
	cmp r1, #1
	beq _0811F692
	b _0811F7B2
_0811F688:
	cmp r1, #4
	beq _0811F718
	cmp r1, #8
	beq _0811F768
	b _0811F7B2
_0811F692:
	mov r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r4, sb
	movs r7, #0
	ldrsh r0, [r4, r7]
	cmp r1, r0
	bge _0811F6A4
	b _0811F7BA
_0811F6A4:
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _0811F6C4
	ldr r4, _0811F6C0 @ =0x00007FFF
	adds r0, r2, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0811F6D4
	b _0811F6D0
	.align 2, 0
_0811F6C0: .4byte 0x00007FFF
_0811F6C4:
	ldr r7, _0811F6E0 @ =0xFFFF8001
	adds r0, r2, r7
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0811F6D4
_0811F6D0:
	movs r0, #0
	strh r0, [r1]
_0811F6D4:
	mov r1, sl
	ldrh r0, [r1]
	mov r2, sb
	strh r0, [r2]
	b _0811F7B2
	.align 2, 0
_0811F6E0: .4byte 0xFFFF8001
_0811F6E4:
	mov r0, ip
	adds r0, #0xc2
	movs r3, #0
	ldrsh r2, [r0, r3]
	mov r4, r8
	movs r7, #0
	ldrsh r1, [r4, r7]
	adds r3, r0, #0
	cmp r2, r1
	blt _0811F7BA
	mov r1, ip
	adds r1, #0x52
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _0811F79C
	ldr r7, _0811F714 @ =0x00007FFF
	adds r0, r2, r7
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0811F7AC
	b _0811F7A8
	.align 2, 0
_0811F714: .4byte 0x00007FFF
_0811F718:
	mov r0, sl
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r3, sb
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r1, r0
	bgt _0811F7BA
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, #0
	bge _0811F748
	ldr r3, _0811F744 @ =0x00007FFF
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0811F758
	b _0811F754
	.align 2, 0
_0811F744: .4byte 0x00007FFF
_0811F748:
	ldr r4, _0811F764 @ =0xFFFF8001
	adds r0, r2, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0811F758
_0811F754:
	movs r0, #0
	strh r0, [r1]
_0811F758:
	mov r7, sl
	ldrh r0, [r7]
	mov r1, sb
	strh r0, [r1]
	b _0811F7B2
	.align 2, 0
_0811F764: .4byte 0xFFFF8001
_0811F768:
	mov r0, ip
	adds r0, #0xc2
	movs r3, #0
	ldrsh r2, [r0, r3]
	mov r4, r8
	movs r7, #0
	ldrsh r1, [r4, r7]
	adds r3, r0, #0
	cmp r2, r1
	bgt _0811F7BA
	mov r1, ip
	adds r1, #0x52
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _0811F79C
	ldr r7, _0811F798 @ =0x00007FFF
	adds r0, r2, r7
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0811F7AC
	b _0811F7A8
	.align 2, 0
_0811F798: .4byte 0x00007FFF
_0811F79C:
	ldr r4, _0811F818 @ =0xFFFF8001
	adds r0, r2, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0811F7AC
_0811F7A8:
	movs r0, #0
	strh r0, [r1]
_0811F7AC:
	ldrh r0, [r3]
	mov r7, r8
	strh r0, [r7]
_0811F7B2:
	ldrh r1, [r6]
	ldr r0, _0811F81C @ =0x0000FEFF
	ands r0, r1
	strh r0, [r6]
_0811F7BA:
	ldr r3, _0811F820 @ =gCurLevelInfo
	movs r0, #0x56
	add r0, ip
	mov sl, r0
	ldrb r0, [r0]
	movs r5, #0xcd
	lsls r5, r5, #3
	adds r2, r0, #0
	muls r2, r5, r2
	adds r0, r3, #0
	adds r0, #0x2c
	adds r2, r2, r0
	mov r4, ip
	adds r4, #0xb0
	ldr r0, [r4]
	movs r1, #6
	ldrsh r0, [r0, r1]
	mov r6, sb
	movs r7, #0
	ldrsh r1, [r6, r7]
	subs r0, r0, r1
	lsls r0, r0, #8
	rsbs r0, r0, #0
	str r0, [r2]
	mov r1, sl
	ldrb r0, [r1]
	adds r2, r0, #0
	muls r2, r5, r2
	adds r3, #0x30
	adds r2, r2, r3
	ldr r0, [r4]
	movs r3, #8
	ldrsh r0, [r0, r3]
	mov r4, r8
	movs r6, #0
	ldrsh r1, [r4, r6]
	subs r0, r0, r1
	lsls r0, r0, #8
	str r0, [r2]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811F818: .4byte 0xFFFF8001
_0811F81C: .4byte 0x0000FEFF
_0811F820: .4byte gCurLevelInfo

	thumb_func_start sub_0811F824
sub_0811F824: @ 0x0811F824
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811F83E
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0811F846
_0811F83E:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0811F846:
	adds r4, r0, #0
	ldr r2, [r4, #0x10]
	cmp r2, #0
	beq _0811F860
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0811F860
	adds r0, r2, #0
	bl sub_08157190
_0811F860:
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	beq _0811F86E
	bl EwramFree
_0811F86E:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r2, [r0]
	adds r6, r0, #0
	adds r5, r4, #0
	adds r5, #0x56
	cmp r2, #0
	beq _0811F8F6
	ldrh r1, [r2, #2]
	movs r0, #0xf8
	lsls r0, r0, #5
	cmp r1, r0
	beq _0811F8BC
	ldrb r0, [r2, #2]
	cmp r0, #0
	bne _0811F894
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _0811F90C
_0811F894:
	ldrb r0, [r2, #2]
	ldrb r1, [r2, #3]
	ldr r4, _0811F8B4 @ =gCurLevelInfo
	ldrb r3, [r5]
	movs r2, #0xcd
	lsls r2, r2, #3
	muls r2, r3, r2
	adds r2, r2, r4
	ldr r3, _0811F8B8 @ =0x0000065E
	adds r2, r2, r3
	ldrb r2, [r2]
	movs r3, #1
	bl sub_08001678
	b _0811F8F6
	.align 2, 0
_0811F8B4: .4byte gCurLevelInfo
_0811F8B8: .4byte 0x0000065E
_0811F8BC:
	ldr r1, _0811F8D0 @ =gUnk_020229E0
	movs r3, #0
	cmp r1, r2
	bne _0811F8D8
	ldr r2, _0811F8D4 @ =gUnk_020229D4
	movs r1, #2
	rsbs r1, r1, #0
	ldr r0, [r2]
	ands r0, r1
	b _0811F8F4
	.align 2, 0
_0811F8D0: .4byte gUnk_020229E0
_0811F8D4: .4byte gUnk_020229D4
_0811F8D8:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r1, #0x24
	cmp r3, #0x1f
	bhi _0811F8F6
	ldr r0, [r6]
	cmp r1, r0
	bne _0811F8D8
	ldr r2, _0811F914 @ =gUnk_020229D4
	movs r1, #1
	lsls r1, r3
	ldr r0, [r2]
	bics r0, r1
_0811F8F4:
	str r0, [r2]
_0811F8F6:
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _0811F90C
	adds r4, r0, #0
	adds r1, r5, #0
	bl sub_08002984
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_080028CC
_0811F90C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0811F914: .4byte gUnk_020229D4

	thumb_func_start sub_0811F918
sub_0811F918: @ 0x0811F918
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0811F26C
	adds r0, r4, #0
	bl sub_0811F410
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0811F94C
	ldr r2, _0811F944 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _0811F948 @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	b _0811F94E
	.align 2, 0
_0811F944: .4byte gCurLevelInfo
_0811F948: .4byte 0x0000065E
_0811F94C:
	movs r0, #0xff
_0811F94E:
	cmp r0, #0xff
	beq _0811F976
	lsls r3, r0, #3
	ldr r1, _0811F984 @ =gUnk_02022F40
	adds r1, r0, r1
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0811F988 @ =gUnk_02022EC0
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_0811F976:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0811F984: .4byte gUnk_02022F40
_0811F988: .4byte gUnk_02022EC0
