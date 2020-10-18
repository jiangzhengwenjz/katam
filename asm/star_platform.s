	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateStarPlatform
CreateStarPlatform: @ 0x0811F98C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _0811F9C0 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _0811F9C4 @ =sub_0811FC88
	str r1, [sp]
	movs r1, #0xbc
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811F9C8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0811F9D0
	.align 2, 0
_0811F9C0: .4byte ObjectMain
_0811F9C4: .4byte sub_0811FC88
_0811F9C8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0811F9D0:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	ldr r1, _0811FA84 @ =0x0210A940
	orrs r0, r1
	str r0, [r4, #8]
	ldr r2, [r4, #0x5c]
	ldr r0, _0811FA88 @ =0xFFFFDFFF
	orrs r2, r0
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x68]
	subs r1, #9
	ands r0, r1
	str r0, [r4, #0x68]
	ands r2, r1
	str r2, [r4, #0x5c]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x2d
	ldr r0, [r1]
	ldrh r0, [r0, #0x1a]
	adds r0, #8
	adds r2, r4, #0
	adds r2, #0xb4
	strh r0, [r2]
	ldr r0, [r1]
	ldrh r0, [r0, #0x1c]
	movs r3, #0xb6
	adds r3, r3, r4
	mov ip, r3
	strh r0, [r3]
	ldr r0, [r1]
	ldrh r0, [r0, #0x1e]
	ldrh r5, [r2]
	adds r0, r0, r5
	subs r0, #0x10
	adds r3, r4, #0
	adds r3, #0xb8
	strh r0, [r3]
	ldr r0, [r1]
	ldrh r0, [r0, #0x20]
	mov r1, ip
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0xba
	strh r0, [r1]
	movs r1, #0
	ldrsb r1, [r2, r1]
	mov r5, ip
	movs r2, #0
	ldrsb r2, [r5, r2]
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0803E2B0
	adds r0, r4, #0
	bl ObjectInitSprite
	ldr r2, _0811FA8C @ =gUnk_08351648
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
_0811FA84: .4byte 0x0210A940
_0811FA88: .4byte 0xFFFFDFFF
_0811FA8C: .4byte gUnk_08351648

	thumb_func_start sub_0811FA90
sub_0811FA90: @ 0x0811FA90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	adds r0, #0x56
	ldrb r6, [r0]
	mov r2, sp
	ldr r0, [r4, #0x40]
	adds r1, r4, #0
	adds r1, #0xb0
	ldr r3, [r1]
	asrs r0, r0, #8
	ldrh r1, [r3, #0x1a]
	adds r0, r0, r1
	strh r0, [r2]
	mov r1, sp
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	ldrh r2, [r3, #0x1c]
	adds r0, r0, r2
	strh r0, [r1, #2]
	mov r2, sp
	ldrh r0, [r3, #0x1e]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r2, #4]
	mov r0, sp
	ldrh r0, [r0, #2]
	ldrh r1, [r3, #0x20]
	adds r0, r0, r1
	strh r0, [r2, #6]
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldrh r0, [r3, #0x20]
	lsrs r7, r0, #4
	movs r5, #0
	cmp r5, r7
	bhs _0811FB44
	adds r0, r1, #1
	lsls r0, r0, #0x18
	mov sb, r0
	lsls r1, r1, #0x18
	mov r8, r1
_0811FB02:
	mov r0, sl
	adds r4, r0, r5
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r6, #0
	mov r2, r8
	lsrs r1, r2, #0x18
	adds r2, r4, #0
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	adds r0, r6, #0
	mov r2, sb
	lsrs r1, r2, #0x18
	adds r2, r4, #0
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r7
	blo _0811FB02
_0811FB44:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0811FB54
sub_0811FB54: @ 0x0811FB54
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _0811FC22
	ldr r0, [r5, #0x6c]
	ldr r0, [r0, #0x68]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _0811FC22
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r6, [r0]
	ldr r4, _0811FC30 @ =gUnk_082D88B8
	ldr r1, [r5, #0x40]
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	ldr r2, [r5, #0x44]
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0811FC22
	ldr r1, [r5, #0x40]
	asrs r1, r1, #0xc
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, [r5, #0x44]
	asrs r2, r2, #0xc
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r6, #0
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	ldr r1, [r5, #0x40]
	asrs r1, r1, #0xc
	subs r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, [r5, #0x44]
	asrs r2, r2, #0xc
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r6, #0
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	ldr r0, [r5, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _0811FC34 @ =0xFFFFF7FF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_0811FA90
	ldr r0, _0811FC38 @ =sub_0811FC4C
	str r0, [r5, #0x78]
	ldr r0, [r5, #0x6c]
	ldr r4, [r0, #0x44]
	ldr r0, [r5, #0x44]
	subs r4, r4, r0
	asrs r4, r4, #8
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_08089864
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_08089864
_0811FC22:
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0811FC30: .4byte gUnk_082D88B8
_0811FC34: .4byte 0xFFFFF7FF
_0811FC38: .4byte sub_0811FC4C

	thumb_func_start sub_0811FC3C
sub_0811FC3C: @ 0x0811FC3C
	movs r1, #0
	strh r1, [r0, #4]
	ldr r1, _0811FC48 @ =sub_0811FB54
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_0811FC48: .4byte sub_0811FB54

	thumb_func_start sub_0811FC4C
sub_0811FC4C: @ 0x0811FC4C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x44]
	asrs r2, r2, #8
	ldr r3, _0811FC84 @ =gCurLevelInfo
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r3
	adds r0, #0xbe
	ldrh r0, [r0]
	adds r0, #8
	cmp r2, r0
	blt _0811FC76
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_0811FC76:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0811FC84: .4byte gCurLevelInfo

	thumb_func_start sub_0811FC88
sub_0811FC88: @ 0x0811FC88
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811FCA2
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0811FCAA
_0811FCA2:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0811FCAA:
	adds r1, r0, #0
	adds r1, #0x56
	ldrb r6, [r1]
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r5, [r0, #2]
	ldrb r7, [r0, #3]
	ldr r1, _0811FCE8 @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r6, r0
	adds r0, r0, r1
	ldr r1, _0811FCEC @ =0x0000065E
	adds r0, r0, r1
	ldrb r4, [r0]
	adds r0, r2, #0
	bl ObjectDestroy
	cmp r5, #0
	bne _0811FCD6
	cmp r6, #0xff
	beq _0811FCE2
_0811FCD6:
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_08001678
_0811FCE2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811FCE8: .4byte gCurLevelInfo
_0811FCEC: .4byte 0x0000065E
