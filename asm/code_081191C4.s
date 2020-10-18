	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateSmallButton
CreateSmallButton: @ 0x081191C4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _081191F8 @ =ObjectMain
	ldr r2, _081191FC @ =0x00001001
	ldr r1, _08119200 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xbc
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08119204
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r7, r0, r1
	b _0811920C
	.align 2, 0
_081191F8: .4byte ObjectMain
_081191FC: .4byte 0x00001001
_08119200: .4byte ObjectDestroy
_08119204:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
_0811920C:
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r7, #8]
	ldr r1, _081192B0 @ =0x02608000
	orrs r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x68]
	ldr r0, [r7, #0x5c]
	ldr r1, _081192B4 @ =0x00308020
	orrs r0, r1
	str r0, [r7, #0x5c]
	ldr r0, [r7, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0xc]
	adds r1, r7, #0
	adds r1, #0xb8
	movs r0, #0
	strh r0, [r1]
	movs r5, #7
	rsbs r5, r5, #0
	movs r6, #0xa
	rsbs r6, r6, #0
	movs r4, #2
	rsbs r4, r4, #0
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #7
	bl sub_0803E2B0
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #7
	bl sub_0803E308
	adds r0, r7, #0
	adds r0, #0x3f
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	ldr r0, [r7, #0x44]
	adds r0, r0, r2
	ldr r1, _081192B8 @ =0x00000FFF
	adds r0, r0, r1
	ldr r1, _081192BC @ =0xFFFFF000
	ands r0, r1
	subs r0, r0, r2
	subs r0, #1
	str r0, [r7, #0x44]
	str r0, [r7, #0x4c]
	adds r0, r7, #0
	bl ObjectInitSprite
	ldr r2, _081192C0 @ =gUnk_08351648
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
_081192B0: .4byte 0x02608000
_081192B4: .4byte 0x00308020
_081192B8: .4byte 0x00000FFF
_081192BC: .4byte 0xFFFFF000
_081192C0: .4byte gUnk_08351648

	thumb_func_start CreateBigSwitch
CreateBigSwitch: @ 0x081192C4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _081192F8 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _081192FC @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xbc
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08119300
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r7, r0, r1
	b _08119308
	.align 2, 0
_081192F8: .4byte ObjectMain
_081192FC: .4byte ObjectDestroy
_08119300:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
_08119308:
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r7, #8]
	ldr r1, _08119384 @ =0x02308000
	orrs r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x68]
	ldr r0, [r7, #0x5c]
	subs r1, #0x80
	orrs r0, r1
	str r0, [r7, #0x5c]
	adds r1, r7, #0
	adds r1, #0xb8
	movs r6, #0
	movs r0, #1
	strh r0, [r1]
	movs r4, #0xe
	rsbs r4, r4, #0
	movs r5, #0x18
	rsbs r5, r5, #0
	str r6, [sp]
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #0xe
	bl sub_0803E2B0
	str r6, [sp]
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #0xe
	bl sub_0803E308
	adds r0, r7, #0
	bl ObjectInitSprite
	ldr r2, _08119388 @ =gUnk_08351648
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
_08119384: .4byte 0x02308000
_08119388: .4byte gUnk_08351648

	thumb_func_start sub_0811938C
sub_0811938C: @ 0x0811938C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r2, _081193E0 @ =sub_08119980
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb8
	ldrh r0, [r0]
	cmp r0, #0
	beq _081193F0
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #4]
	ldr r3, _081193E4 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _081193E8 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #2
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	beq _081193F0
	ldr r0, _081193EC @ =sub_08119C0C
	str r0, [r4, #0x78]
	ldr r0, [r4, #8]
	movs r1, #0xf4
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	b _08119426
	.align 2, 0
_081193E0: .4byte sub_08119980
_081193E4: .4byte gCurLevelInfo
_081193E8: .4byte 0x0000065E
_081193EC: .4byte sub_08119C0C
_081193F0:
	adds r0, r5, #0
	adds r0, #0xb4
	movs r1, #0
	strh r1, [r0]
	adds r3, r5, #0
	adds r3, #0xb6
	strh r1, [r3]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r2, [r0, #0x18]
	cmp r2, #0
	beq _08119412
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r3]
	b _08119426
_08119412:
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08119426
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r1, #0
	orrs r2, r0
	strh r2, [r3]
_08119426:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0811942C
sub_0811942C: @ 0x0811942C
	push {lr}
	mov ip, r0
	ldr r2, [r0, #0x44]
	asrs r2, r2, #8
	ldr r3, _08119478 @ =gCurLevelInfo
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r3
	adds r0, #0xbe
	ldrh r0, [r0]
	subs r0, #0x14
	cmp r2, r0
	blt _081194C0
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #0x40
	orrs r0, r1
	mov r3, ip
	str r0, [r3, #8]
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _0811947C
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0811948C
	b _08119488
	.align 2, 0
_08119478: .4byte gCurLevelInfo
_0811947C:
	ldr r3, _081194AC @ =0xFFFFFE00
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0811948C
_08119488:
	movs r0, #0
	strh r0, [r1]
_0811948C:
	mov r1, ip
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _081194B0
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _081194C0
	b _081194BC
	.align 2, 0
_081194AC: .4byte 0xFFFFFE00
_081194B0:
	ldr r3, _081194D0 @ =0xFFFFFE00
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _081194C0
_081194BC:
	movs r0, #0
	strh r0, [r1]
_081194C0:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	bne _081194D4
	movs r0, #1
	b _081194D6
	.align 2, 0
_081194D0: .4byte 0xFFFFFE00
_081194D4:
	movs r0, #0
_081194D6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_081194DC
sub_081194DC: @ 0x081194DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov r8, r0
	bl sub_0811942C
	cmp r0, #0
	bne _081194F4
	b _081197C0
_081194F4:
	mov r0, r8
	bl sub_08039490
	adds r4, r0, #0
	mov r1, sp
	mov r0, r8
	ldr r2, [r0, #0x40]
	asrs r2, r2, #8
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r2
	strh r0, [r1]
	mov r3, sp
	mov r0, r8
	ldr r1, [r0, #0x44]
	asrs r1, r1, #8
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	strh r0, [r3, #2]
	mov r0, r8
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r2
	strh r0, [r3, #4]
	mov r2, sp
	mov r0, r8
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	strh r0, [r2, #6]
	ldr r0, [r4]
	cmp r0, #0
	beq _081195FE
	mov r6, sp
_0811954A:
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0x82
	ldrb r1, [r1]
	cmp r1, #0x79
	beq _0811955A
	cmp r1, #0x7d
	bne _081195F6
_0811955A:
	add r3, sp, #8
	ldr r1, [r0, #0x40]
	asrs r1, r1, #8
	adds r0, #0x3c
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r2, r2, r1
	strh r2, [r3]
	ldr r0, [r4]
	ldr r1, [r0, #0x44]
	asrs r1, r1, #8
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	strh r0, [r3, #2]
	ldr r0, [r4]
	ldr r1, [r0, #0x40]
	asrs r1, r1, #8
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	strh r0, [r3, #4]
	ldr r0, [r4]
	ldr r1, [r0, #0x44]
	asrs r1, r1, #8
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	strh r0, [r3, #6]
	movs r1, #0
	ldrsh r5, [r6, r1]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r7, r3, #0
	cmp r5, r2
	bgt _081195BE
	movs r3, #4
	ldrsh r1, [r6, r3]
	movs r3, #0
	ldrsh r0, [r7, r3]
	cmp r1, r0
	bge _081195CA
	cmp r5, r2
	blt _081195F6
_081195BE:
	movs r0, #4
	ldrsh r1, [r7, r0]
	movs r2, #0
	ldrsh r0, [r6, r2]
	cmp r1, r0
	blt _081195F6
_081195CA:
	ldrh r0, [r6, #2]
	ldrh r1, [r7, #2]
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	cmp r5, r2
	bgt _081195EA
	movs r3, #6
	ldrsh r1, [r6, r3]
	movs r3, #2
	ldrsh r0, [r7, r3]
	cmp r1, r0
	bge _0811963C
	cmp r5, r2
	blt _081195F6
_081195EA:
	movs r0, #6
	ldrsh r1, [r7, r0]
	movs r2, #2
	ldrsh r0, [r6, r2]
	cmp r1, r0
	bge _0811963C
_081195F6:
	adds r4, #4
	ldr r0, [r4]
	cmp r0, #0
	bne _0811954A
_081195FE:
	mov r0, r8
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08119610
	b _08119770
_08119610:
	mov r0, r8
	adds r0, #0xb6
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08119640
	mov r3, r8
	ldr r1, [r3, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _08119630
	b _0811977E
_08119630:
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r1, r0
	cmp r1, #0
	bne _0811963C
	b _08119770
_0811963C:
	movs r0, #1
	b _081197C2
_08119640:
	movs r4, #0
	mov sb, r4
	ldr r0, _0811973C @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp sb, r0
	blo _0811964E
	b _08119770
_0811964E:
	ldr r1, _08119740 @ =gUnk_02020EE0
	mov sl, r1
	mov r0, r8
	adds r0, #0x56
	ldrb r0, [r0]
	str r0, [sp, #0x10]
	mov r6, sp
_0811965C:
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r5, sb
	muls r5, r0, r5
	adds r2, r5, #0
	add r2, sl
	mov ip, r2
	mov r0, ip
	adds r0, #0x56
	ldrb r0, [r0]
	ldr r3, [sp, #0x10]
	cmp r0, r3
	bne _0811975C
	add r4, sp, #8
	mov r2, sl
	adds r2, #0x40
	adds r2, r5, r2
	ldr r1, [r2]
	asrs r1, r1, #8
	mov r0, ip
	adds r0, #0x38
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r3, r3, r1
	strh r3, [r4]
	ldr r0, _08119744 @ =gUnk_02020F24
	adds r5, r5, r0
	ldr r1, [r5]
	asrs r1, r1, #8
	mov r0, ip
	adds r0, #0x39
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	strh r0, [r4, #2]
	ldr r1, [r2]
	asrs r1, r1, #8
	mov r0, ip
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	strh r0, [r4, #4]
	ldr r1, [r5]
	asrs r1, r1, #8
	mov r0, ip
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	strh r0, [r4, #6]
	movs r1, #0
	ldrsh r2, [r6, r1]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r7, r4, #0
	cmp r2, r3
	bgt _081196E6
	movs r4, #4
	ldrsh r1, [r6, r4]
	movs r4, #0
	ldrsh r0, [r7, r4]
	cmp r1, r0
	bge _081196F2
	cmp r2, r3
	blt _0811974C
_081196E6:
	movs r0, #4
	ldrsh r1, [r7, r0]
	movs r2, #0
	ldrsh r0, [r6, r2]
	cmp r1, r0
	blt _0811974C
_081196F2:
	adds r3, r7, #0
	ldrh r0, [r6, #2]
	ldrh r1, [r3, #2]
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	cmp r5, r2
	bgt _08119714
	movs r4, #6
	ldrsh r1, [r6, r4]
	movs r4, #2
	ldrsh r0, [r3, r4]
	cmp r1, r0
	bge _08119720
	cmp r5, r2
	blt _0811974C
_08119714:
	movs r0, #6
	ldrsh r1, [r7, r0]
	movs r2, #2
	ldrsh r0, [r6, r2]
	cmp r1, r0
	blt _0811974C
_08119720:
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r3, sb
	muls r3, r0, r3
	adds r0, r3, #0
	ldr r4, _08119748 @ =gUnk_02020EEC
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0811975C
	b _0811963C
	.align 2, 0
_0811973C: .4byte gUnk_0203AD44
_08119740: .4byte gUnk_02020EE0
_08119744: .4byte gUnk_02020F24
_08119748: .4byte gUnk_02020EEC
_0811974C:
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	beq _0811975C
	b _0811963C
_0811975C:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r2, _081197B8 @ =gUnk_0203AD44
	ldrb r2, [r2]
	cmp sb, r2
	bhs _08119770
	b _0811965C
_08119770:
	mov r3, r8
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _081197C0
_0811977E:
	mov r0, r8
	adds r0, #0xb8
	ldrh r0, [r0]
	cmp r0, #0
	bne _0811978A
	b _0811963C
_0811978A:
	mov r4, r8
	ldr r2, [r4, #0x6c]
	adds r0, r2, #0
	adds r0, #0x56
	ldr r1, _081197BC @ =gUnk_0203AD30
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _081197C0
	mov r0, r8
	adds r0, #0xb6
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	beq _081197AE
	b _0811963C
_081197AE:
	adds r0, r2, #0
	bl BonusCreateTomato
	b _0811963C
	.align 2, 0
_081197B8: .4byte gUnk_0203AD44
_081197BC: .4byte gUnk_0203AD30
_081197C0:
	movs r0, #0
_081197C2:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_081197D4
sub_081197D4: @ 0x081197D4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_081194DC
	cmp r0, #0
	beq _081198C4
	adds r1, r5, #0
	adds r1, #0xb6
	ldrh r0, [r1]
	ldr r2, _0811980C @ =0x0000FFFB
	ands r2, r0
	movs r3, #0
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r4, #0
	orrs r2, r0
	orrs r2, r3
	strh r2, [r1]
	movs r0, #1
	ands r0, r2
	adds r4, r1, #0
	cmp r0, #0
	beq _08119814
	ldr r0, _08119810 @ =0x0000FFFD
	ands r2, r0
	strh r2, [r4]
	b _08119892
	.align 2, 0
_0811980C: .4byte 0x0000FFFB
_08119810: .4byte 0x0000FFFD
_08119814:
	movs r0, #2
	orrs r2, r0
	strh r2, [r4]
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #0x18]
	adds r0, #2
	adds r1, r5, #0
	adds r1, #0xb4
	strh r0, [r1]
	ldr r1, _081198A4 @ =gUnk_02020EE0
	ldr r0, _081198A8 @ =gUnk_0203AD3C
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
	bne _08119892
	ldrb r0, [r5]
	cmp r0, #0
	bne _08119856
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08119892
_08119856:
	ldr r1, _081198AC @ =gUnk_08D60FA4
	ldr r5, _081198B0 @ =gSongTable
	ldr r2, _081198B4 @ =0x0000102C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0811987A
	ldr r1, _081198B8 @ =0x00001028
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08119892
_0811987A:
	cmp r3, #0
	beq _0811988C
	ldr r0, _081198BC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08119892
_0811988C:
	ldr r0, _081198C0 @ =0x00000205
	bl m4aSongNumStart
_08119892:
	ldrh r0, [r4]
	movs r1, #1
	orrs r1, r0
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	orrs r1, r0
	strh r1, [r4]
	b _0811997A
	.align 2, 0
_081198A4: .4byte gUnk_02020EE0
_081198A8: .4byte gUnk_0203AD3C
_081198AC: .4byte gUnk_08D60FA4
_081198B0: .4byte gSongTable
_081198B4: .4byte 0x0000102C
_081198B8: .4byte 0x00001028
_081198BC: .4byte gUnk_0203AD10
_081198C0: .4byte 0x00000205
_081198C4:
	adds r1, r5, #0
	adds r1, #0xb6
	ldrh r2, [r1]
	movs r7, #1
	adds r0, r7, #0
	ands r0, r2
	adds r4, r1, #0
	cmp r0, #0
	beq _081198DC
	ldr r0, _08119938 @ =0x0000FFFD
	ands r0, r2
	strh r0, [r4]
_081198DC:
	ldrh r0, [r4]
	ldr r2, _0811993C @ =0x0000FEFF
	ands r2, r0
	movs r6, #0
	strh r2, [r4]
	adds r0, r5, #0
	adds r0, #0xb4
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r3, r0, #0
	cmp r1, #0
	bgt _08119950
	subs r0, #4
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r3, #4
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0811997A
	ldr r1, _08119940 @ =0x0000FFDF
	ands r1, r2
	ldr r0, _08119944 @ =0x0000FFEF
	ands r1, r0
	strh r1, [r4]
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _0811991C
	ldr r0, _08119948 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r4]
_0811991C:
	ldrh r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0811992C
	movs r0, #4
	orrs r0, r1
	strh r0, [r4]
_0811992C:
	ldrh r1, [r4]
	ldr r0, _0811994C @ =0x0000FFFE
	ands r0, r1
	strh r0, [r4]
	b _0811997A
	.align 2, 0
_08119938: .4byte 0x0000FFFD
_0811993C: .4byte 0x0000FEFF
_08119940: .4byte 0x0000FFDF
_08119944: .4byte 0x0000FFEF
_08119948: .4byte 0x0000FFFB
_0811994C: .4byte 0x0000FFFE
_08119950:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08119964
	ldr r0, _08119960 @ =0x0000FFDF
	ands r0, r2
	b _0811996A
	.align 2, 0
_08119960: .4byte 0x0000FFDF
_08119964:
	movs r1, #0x20
	adds r0, r2, #0
	orrs r0, r1
_0811996A:
	strh r0, [r4]
	ldrh r0, [r4]
	movs r1, #0x10
	orrs r1, r0
	strh r1, [r4]
	ldrh r0, [r3]
	subs r0, #1
	strh r0, [r3]
_0811997A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08119980
sub_08119980: @ 0x08119980
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	bl sub_081197D4
	adds r2, r4, #0
	adds r2, #0xb6
	ldrh r0, [r2]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _081199B8
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #1
	strb r0, [r1]
	ldrh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _081199D0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r4, #8]
	b _081199D0
_081199B8:
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _081199D0
	ldr r0, _081199E8 @ =0xFFFEFFFF
	ands r1, r0
	str r1, [r4, #8]
_081199D0:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _081199EC
	adds r0, r5, #0
	bl sub_08119AA8
	b _08119A14
	.align 2, 0
_081199E8: .4byte 0xFFFEFFFF
_081199EC:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _081199FC
	adds r0, r5, #0
	bl sub_08119B3C
	b _08119A14
_081199FC:
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08119A0E
	adds r0, r5, #0
	bl sub_08119BB8
	b _08119A14
_08119A0E:
	adds r0, r5, #0
	bl sub_08119A20
_08119A14:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08119A20
sub_08119A20: @ 0x08119A20
	push {lr}
	adds r2, r0, #0
	adds r0, #0xb6
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08119A64
	adds r0, r2, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #4]
	ldr r3, _08119A5C @ =gCurLevelInfo
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _08119A60 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	adds r1, r0, #0
	ldr r0, [r1]
	adds r0, #1
	b _08119A9A
	.align 2, 0
_08119A5C: .4byte gCurLevelInfo
_08119A60: .4byte 0x0000065E
_08119A64:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08119A9C
	adds r0, r2, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #4]
	ldr r3, _08119AA0 @ =gCurLevelInfo
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _08119AA4 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	adds r1, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	beq _08119A9C
	subs r0, #1
_08119A9A:
	str r0, [r1]
_08119A9C:
	pop {r0}
	bx r0
	.align 2, 0
_08119AA0: .4byte gCurLevelInfo
_08119AA4: .4byte 0x0000065E

	thumb_func_start sub_08119AA8
sub_08119AA8: @ 0x08119AA8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xb0
	ldr r0, [r5]
	ldrb r1, [r0, #4]
	ldr r3, _08119AFC @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _08119B00 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	adds r3, r0, #0
	adds r0, r4, #0
	adds r0, #0xb6
	ldrh r0, [r0]
	movs r4, #1
	ands r4, r0
	cmp r4, #0
	beq _08119B04
	ldr r0, [r5]
	ldrh r0, [r0, #0x14]
	lsrs r0, r0, #8
	movs r1, #0
	strb r0, [r3]
	ldr r0, [r5]
	ldrh r0, [r0, #0x14]
	strb r0, [r3, #1]
	ldr r0, [r5]
	ldrh r0, [r0, #0x12]
	lsrs r0, r0, #8
	strb r0, [r3, #2]
	strb r1, [r3, #3]
	b _08119B34
	.align 2, 0
_08119AFC: .4byte gCurLevelInfo
_08119B00: .4byte 0x0000065E
_08119B04:
	ldr r1, [r5]
	ldrh r0, [r1, #0x14]
	lsrs r2, r0, #8
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldrh r0, [r1, #0x12]
	lsrs r1, r0, #8
	ldrb r0, [r3]
	cmp r0, r2
	bne _08119B34
	ldrb r0, [r3, #1]
	cmp r0, r5
	bne _08119B34
	ldrb r0, [r3, #2]
	movs r2, #1
	cmp r0, r1
	beq _08119B28
	movs r2, #0
_08119B28:
	cmp r2, #0
	beq _08119B34
	strb r4, [r3]
	strb r4, [r3, #1]
	strb r4, [r3, #2]
	strb r4, [r3, #3]
_08119B34:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08119B3C
sub_08119B3C: @ 0x08119B3C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0xb6
	ldrh r1, [r4]
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #6
	cmp r0, r2
	bne _08119B5E
	ldr r0, [r5, #8]
	movs r1, #0xf4
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r5, #8]
_08119B5E:
	ldrh r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08119B74
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	orrs r0, r2
	strh r0, [r4]
_08119B74:
	ldrh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08119BA4
	bl sub_080395D4
	cmp r0, #0
	beq _08119BA4
	ldr r1, _08119BAC @ =gUnk_08357B8C
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldrh r1, [r4]
	ldr r0, _08119BB0 @ =0x0000EFFF
	ands r0, r1
	strh r0, [r4]
_08119BA4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08119BAC: .4byte gUnk_08357B8C
_08119BB0: .4byte 0x0000EFFF

	thumb_func_start nullsub_127
nullsub_127: @ 0x08119BB4
	bx lr
	.align 2, 0

	thumb_func_start sub_08119BB8
sub_08119BB8: @ 0x08119BB8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08119A20
	adds r0, r4, #0
	adds r0, #0xb6
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08119BFE
	ldr r2, _08119C04 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _08119C08 @ =0x0000065E
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
	bhs _08119BFE
	str r1, [r2]
_08119BFE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08119C04: .4byte gCurLevelInfo
_08119C08: .4byte 0x0000065E

	thumb_func_start sub_08119C0C
sub_08119C0C: @ 0x08119C0C
	ldr r1, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #5
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
