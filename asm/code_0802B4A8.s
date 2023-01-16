	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0802B4A8
sub_0802B4A8: @ 0x0802B4A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r4, _0802B508 @ =0x00007FFF
	str r4, [sp, #4]
	ldr r1, _0802B50C @ =gBgPalette
	ldr r5, _0802B510 @ =0x05000080
	add r0, sp, #4
	adds r2, r5, #0
	bl CpuSet
	str r4, [sp, #8]
	add r0, sp, #8
	ldr r1, _0802B514 @ =gObjPalette
	adds r2, r5, #0
	bl CpuSet
	ldr r2, _0802B518 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r1, _0802B51C @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	movs r4, #0x10
	strh r4, [r1, #4]
	ldr r0, _0802B520 @ =sub_0802BA6C
	movs r1, #0xb0
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _0802B524 @ =sub_0802D360
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	adds r1, r0, #0
	ldrh r0, [r1, #0x12]
	ands r4, r0
	cmp r4, #0
	beq _0802B528
	ldrh r0, [r1, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _0802B530
	.align 2, 0
_0802B508: .4byte 0x00007FFF
_0802B50C: .4byte gBgPalette
_0802B510: .4byte 0x05000080
_0802B514: .4byte gObjPalette
_0802B518: .4byte gUnk_03002440
_0802B51C: .4byte gBldRegs
_0802B520: .4byte sub_0802BA6C
_0802B524: .4byte sub_0802D360
_0802B528:
	ldrh r1, [r1, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_0802B530:
	adds r7, r1, #0
	add r0, sp, #0xc
	movs r6, #0
	strh r6, [r0]
	ldr r2, _0802B614 @ =0x01000160
	bl CpuSet
	movs r0, #0xae
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r5, #0
	subs r0, #0xb8
	strh r0, [r1]
	movs r2, #0xb6
	lsls r2, r2, #1
	adds r4, r7, r2
	movs r0, #0x80
	lsls r0, r0, #1
	bl VramMalloc
	str r0, [r4]
	strh r5, [r4, #0x14]
	ldr r0, _0802B618 @ =0x00000292
	strh r0, [r4, #0xc]
	strb r6, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r0, #0xd
	strb r0, [r4, #0x1f]
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	str r5, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	movs r4, #0
	ldr r5, _0802B61C @ =gUnk_082EB4EC
	adds r6, r5, #4
_0802B582:
	movs r0, #0x10
	bl VramMalloc
	lsls r2, r4, #2
	adds r2, r2, r4
	lsls r2, r2, #3
	adds r1, r7, #4
	adds r1, r1, r2
	str r0, [r1]
	lsls r2, r4, #3
	movs r0, #0x86
	lsls r0, r0, #2
	adds r1, r7, r0
	adds r1, r1, r2
	adds r0, r2, r5
	ldr r0, [r0]
	str r0, [r1]
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r7, r0
	adds r1, r1, r2
	adds r2, r2, r6
	ldr r0, [r2]
	str r0, [r1]
	lsls r1, r4, #1
	movs r0, #0x95
	lsls r0, r0, #2
	adds r2, r7, r0
	adds r2, r2, r1
	ldr r0, _0802B620 @ =gUnk_082EB5B4
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _0802B582
	movs r0, #0x10
	bl VramMalloc
	adds r1, r7, #0
	adds r1, #0xcc
	str r0, [r1]
	movs r0, #0x30
	bl VramMalloc
	adds r1, r7, #0
	adds r1, #0xf4
	str r0, [r1]
	movs r0, #0x30
	bl VramMalloc
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r1, r7, r2
	str r0, [r1]
	movs r0, #0x10
	bl VramMalloc
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r1, r7, r2
	str r0, [r1]
	ldr r1, _0802B624 @ =gUnk_0300000C
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0802B628 @ =sub_0802BCEC
	str r0, [r7]
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B614: .4byte 0x01000160
_0802B618: .4byte 0x00000292
_0802B61C: .4byte gUnk_082EB4EC
_0802B620: .4byte gUnk_082EB5B4
_0802B624: .4byte gUnk_0300000C
_0802B628: .4byte sub_0802BCEC

	thumb_func_start sub_0802B62C
sub_0802B62C: @ 0x0802B62C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r6, r0, #0
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	blt _0802B65A
	adds r0, r6, #0
	adds r0, #0xcc
	bl sub_08155128
	cmp r0, #0
	bne _0802B65A
	adds r1, r6, #0
	adds r1, #0xe7
	movs r0, #0xff
	strb r0, [r1]
_0802B65A:
	movs r2, #0
	str r2, [sp, #0x14]
	mov sl, r2
_0802B660:
	movs r0, #1
	ldr r3, [sp, #0x14]
	lsls r0, r3
	movs r4, #0x85
	lsls r4, r4, #2
	adds r1, r6, r4
	ldr r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0802B676
	b _0802B8CA
_0802B676:
	mov r5, sl
	lsls r0, r5, #2
	add r0, sl
	lsls r0, r0, #3
	adds r0, #4
	adds r7, r6, r0
	lsls r3, r5, #1
	movs r0, #0x95
	lsls r0, r0, #2
	adds r2, r6, r0
	adds r2, r2, r3
	ldrh r0, [r2]
	adds r0, #4
	ldr r4, _0802B6CC @ =0x000003FF
	adds r1, r4, #0
	ands r0, r1
	strh r0, [r2]
	ldr r5, _0802B6D0 @ =0x0000025E
	adds r0, r6, r5
	adds r5, r0, r3
	movs r1, #0x9a
	lsls r1, r1, #2
	adds r0, r6, r1
	adds r0, r0, r3
	ldrh r1, [r5]
	movs r4, #0
	ldrsh r2, [r5, r4]
	mov r8, r2
	movs r4, #0
	ldrsh r2, [r0, r4]
	mov sb, r3
	cmp r8, r2
	bge _0802B6D4
	adds r1, #4
	strh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r1, r0
	ble _0802B6EC
	b _0802B6EA
	.align 2, 0
_0802B6CC: .4byte 0x000003FF
_0802B6D0: .4byte 0x0000025E
_0802B6D4:
	cmp r8, r2
	ble _0802B6EC
	subs r1, #4
	strh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	bge _0802B6EC
_0802B6EA:
	strh r2, [r5]
_0802B6EC:
	mov r5, sl
	lsls r3, r5, #3
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r6, r1
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	movs r4, #0x87
	lsls r4, r4, #2
	adds r2, r6, r4
	adds r2, r2, r3
	ldr r1, _0802BA40 @ =gSineTable
	movs r5, #0x95
	lsls r5, r5, #2
	adds r0, r6, r5
	add r0, sb
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x1a
	adds r4, #0x42
	adds r0, r6, r4
	add r0, sb
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	muls r1, r0, r1
	ldr r0, [r2]
	adds r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r0, #0x85
	lsls r0, r0, #2
	adds r5, r6, r0
	ldr r0, [r5]
	mov r8, r3
	cmp r0, #0
	blt _0802B77A
	movs r4, #2
	ldr r1, [sp, #0x14]
	lsls r4, r1
	ands r0, r4
	cmp r0, #0
	bne _0802B764
	adds r0, r7, #0
	bl sub_08155128
	cmp r0, #0
	bne _0802B75C
	ldr r0, [r5]
	orrs r0, r4
	str r0, [r5]
_0802B75C:
	ldr r0, [r5]
	ands r4, r0
	cmp r4, #0
	beq _0802B77A
_0802B764:
	movs r3, #0x85
	lsls r3, r3, #2
	adds r2, r6, r3
	movs r1, #2
	ldr r4, [sp, #0x14]
	lsls r1, r4
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
_0802B77A:
	adds r0, r7, #0
	bl sub_0815604C
	movs r1, #4
	ldr r5, [sp, #0x14]
	lsls r1, r5
	movs r0, #0x85
	lsls r0, r0, #2
	adds r4, r6, r0
	ldr r0, [r4]
	ands r1, r0
	cmp r1, #0
	bne _0802B796
	b _0802B8CA
_0802B796:
	ldrh r1, [r7, #0x10]
	adds r0, r6, #0
	adds r0, #0xdc
	strh r1, [r0]
	ldrh r0, [r7, #0x12]
	adds r1, r6, #0
	adds r1, #0xde
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0xcc
	bl sub_0815604C
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802B7BC
	b _0802B8CA
_0802B7BC:
	ldr r1, _0802BA44 @ =0x000002BA
	adds r4, r6, r1
	ldrh r0, [r4]
	mov r3, sb
	adds r2, r0, r3
	movs r0, #7
	ands r2, r0
	cmp r2, #0
	bne _0802B810
	movs r5, #0xb6
	lsls r5, r5, #1
	adds r0, r6, r5
	ldr r3, [r0]
	subs r1, #6
	adds r0, r6, r1
	adds r5, #0xac
	adds r1, r6, r5
	add r1, r8
	ldr r0, [r0]
	ldr r1, [r1]
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [sp]
	adds r5, #4
	adds r0, r6, r5
	add r0, r8
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	adds r0, r6, #0
	ldr r1, _0802BA48 @ =0x00000295
	movs r2, #2
	bl sub_0802CFF0
_0802B810:
	ldrh r0, [r4]
	mov r2, sb
	adds r7, r0, r2
	movs r3, #0xf
	mov sb, r3
	ands r7, r3
	cmp r7, #0
	bne _0802B8CA
	ldr r4, _0802BA4C @ =gRngVal
	ldr r0, [r4]
	ldr r5, _0802BA50 @ =0x00196225
	adds r4, r0, #0
	muls r4, r5, r4
	ldr r0, _0802BA54 @ =0x3C6EF35F
	adds r4, r4, r0
	ldr r1, _0802BA4C @ =gRngVal
	str r4, [r1]
	lsrs r1, r4, #0x10
	movs r2, #0x1f
	ands r1, r2
	ldr r3, _0802BA58 @ =gUnk_082EB5E0
	ldr r0, _0802BA5C @ =gUnk_082EB610
	adds r1, r1, r0
	ldrb r2, [r1]
	lsls r2, r2, #2
	adds r0, r2, r3
	ldrh r1, [r0]
	adds r3, #2
	adds r2, r2, r3
	ldrh r2, [r2]
	movs r3, #0xb6
	lsls r3, r3, #1
	adds r0, r6, r3
	ldr r0, [r0]
	str r0, [sp, #0x18]
	adds r0, r5, #0
	adds r5, r4, #0
	muls r5, r0, r5
	ldr r3, _0802BA54 @ =0x3C6EF35F
	adds r5, r5, r3
	movs r4, #0xad
	lsls r4, r4, #2
	movs r3, #0x86
	lsls r3, r3, #2
	adds r0, r6, r3
	add r0, r8
	ldr r4, [r4, r6]
	mov ip, r4
	ldr r0, [r0]
	add ip, r0
	lsrs r0, r5, #0x10
	mov r3, sb
	ands r0, r3
	adds r0, #8
	lsls r0, r0, #8
	add r0, ip
	str r0, [sp]
	ldr r4, _0802BA50 @ =0x00196225
	muls r5, r4, r5
	ldr r0, _0802BA54 @ =0x3C6EF35F
	adds r5, r5, r0
	movs r3, #0x87
	lsls r3, r3, #2
	adds r4, r6, r3
	add r8, r4
	lsrs r0, r5, #0x10
	movs r4, #0x1f
	ands r0, r4
	subs r0, #0x10
	lsls r0, r0, #8
	mov r3, r8
	ldr r3, [r3]
	mov r8, r3
	add r0, r8
	str r0, [sp, #4]
	ldr r4, _0802BA50 @ =0x00196225
	adds r0, r5, #0
	muls r0, r4, r0
	ldr r5, _0802BA54 @ =0x3C6EF35F
	adds r0, r0, r5
	ldr r3, _0802BA4C @ =gRngVal
	str r0, [r3]
	lsrs r0, r0, #0x10
	movs r4, #0xff
	ands r0, r4
	adds r0, #0x80
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	adds r0, r6, #0
	ldr r3, [sp, #0x18]
	bl sub_0802CE64
_0802B8CA:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [sp, #0x14]
	adds r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	mov r4, sl
	cmp r4, #4
	bhi _0802B8E6
	b _0802B660
_0802B8E6:
	movs r5, #0x85
	lsls r5, r5, #2
	adds r4, r6, r5
	ldr r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0802B952
	adds r7, r6, #0
	adds r7, #0xf4
	cmp r1, #0
	blt _0802B934
	movs r5, #0x80
	lsls r5, r5, #9
	ands r1, r5
	cmp r1, #0
	bne _0802B922
	adds r0, r7, #0
	bl sub_08155128
	cmp r0, #0
	bne _0802B91A
	ldr r0, [r4]
	orrs r0, r5
	str r0, [r4]
_0802B91A:
	ldr r0, [r4]
	ands r0, r5
	cmp r0, #0
	beq _0802B934
_0802B922:
	movs r0, #0x85
	lsls r0, r0, #2
	adds r2, r6, r0
	ldr r0, [r2]
	ldr r1, _0802BA60 @ =0xFFFEFFFF
	ands r0, r1
	str r0, [r2]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
_0802B934:
	movs r1, #0x9d
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	movs r2, #0x9e
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl sub_0815604C
_0802B952:
	movs r3, #0x85
	lsls r3, r3, #2
	adds r4, r6, r3
	ldr r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _0802B9C0
	movs r5, #0x8e
	lsls r5, r5, #1
	adds r7, r6, r5
	cmp r1, #0
	blt _0802B9A2
	movs r5, #0x80
	lsls r5, r5, #0xb
	ands r1, r5
	cmp r1, #0
	bne _0802B990
	adds r0, r7, #0
	bl sub_08155128
	cmp r0, #0
	bne _0802B988
	ldr r0, [r4]
	orrs r0, r5
	str r0, [r4]
_0802B988:
	ldr r0, [r4]
	ands r0, r5
	cmp r0, #0
	beq _0802B9A2
_0802B990:
	movs r0, #0x85
	lsls r0, r0, #2
	adds r2, r6, r0
	ldr r0, [r2]
	ldr r1, _0802BA64 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r2]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
_0802B9A2:
	movs r1, #0xa5
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	movs r2, #0xa6
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl sub_0815604C
_0802B9C0:
	movs r3, #0x85
	lsls r3, r3, #2
	adds r4, r6, r3
	ldr r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _0802BA2E
	movs r5, #0xa2
	lsls r5, r5, #1
	adds r7, r6, r5
	cmp r1, #0
	blt _0802BA10
	movs r5, #0x80
	lsls r5, r5, #0xd
	ands r1, r5
	cmp r1, #0
	bne _0802B9FE
	adds r0, r7, #0
	bl sub_08155128
	cmp r0, #0
	bne _0802B9F6
	ldr r0, [r4]
	orrs r0, r5
	str r0, [r4]
_0802B9F6:
	ldr r0, [r4]
	ands r0, r5
	cmp r0, #0
	beq _0802BA10
_0802B9FE:
	movs r0, #0x85
	lsls r0, r0, #2
	adds r2, r6, r0
	ldr r0, [r2]
	ldr r1, _0802BA68 @ =0xFFEFFFFF
	ands r0, r1
	str r0, [r2]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
_0802BA10:
	movs r1, #0xa9
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl sub_0815604C
_0802BA2E:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802BA40: .4byte gSineTable
_0802BA44: .4byte 0x000002BA
_0802BA48: .4byte 0x00000295
_0802BA4C: .4byte gRngVal
_0802BA50: .4byte 0x00196225
_0802BA54: .4byte 0x3C6EF35F
_0802BA58: .4byte gUnk_082EB5E0
_0802BA5C: .4byte gUnk_082EB610
_0802BA60: .4byte 0xFFFEFFFF
_0802BA64: .4byte 0xFFFBFFFF
_0802BA68: .4byte 0xFFEFFFFF

	thumb_func_start sub_0802BA6C
sub_0802BA6C: @ 0x0802BA6C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r0, _0802BA8C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802BA90
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0802BA98
	.align 2, 0
_0802BA8C: .4byte gCurTask
_0802BA90:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0802BA98:
	adds r5, r0, #0
	movs r0, #0x85
	lsls r0, r0, #2
	adds r3, r5, r0
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #0x14
	ands r0, r2
	cmp r0, #0
	beq _0802BAC0
	ldr r0, _0802BB80 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _0802BAC0
	movs r0, #0x80
	lsls r0, r0, #0x17
	orrs r2, r0
	str r2, [r3]
_0802BAC0:
	movs r1, #0x85
	lsls r1, r1, #2
	adds r4, r5, r1
	ldr r3, [r4]
	movs r1, #0xc0
	lsls r1, r1, #0x17
	ands r1, r3
	movs r0, #0x80
	lsls r0, r0, #0x17
	cmp r1, r0
	bne _0802BAD8
	b _0802BC30
_0802BAD8:
	ldr r1, [r5]
	adds r0, r5, #0
	bl _call_via_r1
	ldr r0, _0802BB84 @ =gUnk_0300000C
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802BAEA
	b _0802BCDA
_0802BAEA:
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	beq _0802BB12
	movs r3, #0xad
	lsls r3, r3, #2
	adds r2, r5, r3
	movs r1, #0xae
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r2]
	subs r0, r0, r1
	str r0, [r2]
	ldr r1, _0802BB88 @ =gBgScrollRegs
	asrs r0, r0, #9
	strh r0, [r1]
_0802BB12:
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802BC0C
	ldr r4, _0802BB8C @ =0x000002BA
	adds r0, r5, r4
	ldrh r1, [r0]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _0802BC0C
	ldr r2, _0802BB90 @ =gRngVal
	ldr r0, [r2]
	ldr r6, _0802BB94 @ =0x00196225
	muls r0, r6, r0
	ldr r3, _0802BB98 @ =0x3C6EF35F
	adds r0, r0, r3
	lsrs r1, r0, #0x10
	movs r4, #3
	ands r1, r4
	muls r0, r6, r0
	adds r0, r0, r3
	str r0, [r2]
	lsrs r3, r0, #0x10
	ands r3, r4
	adds r7, r2, #0
	cmp r1, #1
	bhi _0802BB9C
	adds r2, r0, #0
	muls r2, r6, r2
	ldr r0, _0802BB98 @ =0x3C6EF35F
	adds r2, r2, r0
	lsrs r0, r2, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	adds r0, r2, #0
	muls r0, r6, r0
	ldr r1, _0802BB98 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r7]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #0xb
	movs r1, #0x80
	lsls r1, r1, #5
	b _0802BBC0
	.align 2, 0
_0802BB80: .4byte gPressedKeys
_0802BB84: .4byte gUnk_0300000C
_0802BB88: .4byte gBgScrollRegs
_0802BB8C: .4byte 0x000002BA
_0802BB90: .4byte gRngVal
_0802BB94: .4byte 0x00196225
_0802BB98: .4byte 0x3C6EF35F
_0802BB9C:
	adds r2, r0, #0
	muls r2, r6, r2
	ldr r4, _0802BC18 @ =0x3C6EF35F
	adds r2, r2, r4
	lsrs r0, r2, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r0, #0x10
	mov ip, r0
	adds r0, r2, #0
	muls r0, r6, r0
	adds r0, r0, r4
	str r0, [r7]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #0xb
	ldr r1, _0802BC1C @ =0xFFFFE000
_0802BBC0:
	adds r4, r0, r1
	ldr r2, _0802BC20 @ =gUnk_082EB5E0
	ldr r0, _0802BC24 @ =gUnk_082EB630
	adds r0, r3, r0
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, r0, r2
	ldrh r1, [r1]
	adds r2, #2
	adds r0, r0, r2
	ldrh r2, [r0]
	movs r3, #0xb6
	lsls r3, r3, #1
	adds r0, r5, r3
	ldr r3, [r0]
	str r4, [sp]
	ldr r4, [r7]
	ldr r0, _0802BC28 @ =0x00196225
	muls r0, r4, r0
	ldr r4, _0802BC18 @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r7]
	lsrs r0, r0, #0x10
	movs r4, #0xf
	ands r0, r4
	adds r0, #0x20
	rsbs r0, r0, #0
	lsls r0, r0, #8
	str r0, [sp, #4]
	mov r4, ip
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #0x40
	str r0, [sp, #0xc]
	adds r0, r5, #0
	bl sub_0802D198
_0802BC0C:
	ldr r0, _0802BC2C @ =0x000002BA
	adds r1, r5, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _0802BCCC
	.align 2, 0
_0802BC18: .4byte 0x3C6EF35F
_0802BC1C: .4byte 0xFFFFE000
_0802BC20: .4byte gUnk_082EB5E0
_0802BC24: .4byte gUnk_082EB630
_0802BC28: .4byte 0x00196225
_0802BC2C: .4byte 0x000002BA
_0802BC30:
	ands r1, r3
	cmp r1, #0
	beq _0802BCCC
	movs r6, #0x80
	lsls r6, r6, #0x18
	adds r2, r6, #0
	ands r2, r3
	cmp r2, #0
	bne _0802BC90
	ldr r1, _0802BC7C @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #4]
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r5, r1
	strh r2, [r0]
	ldr r0, _0802BC80 @ =gUnk_030016A0
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _0802BC84 @ =gUnk_030016E0
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _0802BC88 @ =gUnk_03001720
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _0802BC8C @ =gUnk_03001770
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, [r4]
	orrs r0, r6
	str r0, [r4]
	b _0802BCCC
	.align 2, 0
_0802BC7C: .4byte gBldRegs
_0802BC80: .4byte gUnk_030016A0
_0802BC84: .4byte gUnk_030016E0
_0802BC88: .4byte gUnk_03001720
_0802BC8C: .4byte gUnk_03001770
_0802BC90:
	movs r3, #0xaf
	lsls r3, r3, #2
	adds r1, r5, r3
	ldrh r0, [r1]
	adds r2, r0, #1
	strh r2, [r1]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _0802BCC8
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	beq _0802BCB8
	adds r0, r5, #0
	bl sub_0802CB60
	b _0802BCDA
_0802BCB8:
	movs r0, #0xa0
	lsls r0, r0, #0x15
	str r0, [r4]
	ldr r0, _0802BCC4 @ =sub_0802D480
	str r0, [r5]
	b _0802BCDA
	.align 2, 0
_0802BCC4: .4byte sub_0802D480
_0802BCC8:
	ldr r0, _0802BCE4 @ =gBldRegs
	strh r2, [r0, #4]
_0802BCCC:
	ldr r0, _0802BCE8 @ =gUnk_0300000C
	ldrh r0, [r0]
	cmp r0, #0
	bne _0802BCDA
	adds r0, r5, #0
	bl sub_0802B62C
_0802BCDA:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802BCE4: .4byte gBldRegs
_0802BCE8: .4byte gUnk_0300000C

	thumb_func_start sub_0802BCEC
sub_0802BCEC: @ 0x0802BCEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r1, _0802BE04 @ =gDispCnt
	movs r2, #0x8a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	movs r5, #0xca
	lsls r5, r5, #1
	adds r4, r7, r5
	ldr r0, _0802BE08 @ =gBgScrollRegs
	movs r3, #0
	movs r2, #0
	strh r2, [r0]
	strh r2, [r0, #2]
	ldr r1, _0802BE0C @ =gBgCntRegs
	ldr r0, _0802BE10 @ =0x00001F0A
	strh r0, [r1]
	ldr r1, _0802BE14 @ =0x06008000
	str r1, [r4, #4]
	strh r2, [r4, #0xa]
	ldr r0, _0802BE18 @ =0x0600F800
	str r0, [r4, #0xc]
	strh r2, [r4, #0x18]
	strh r2, [r4, #0x1a]
	movs r0, #0xac
	lsls r0, r0, #2
	strh r0, [r4, #0x1c]
	strh r2, [r4, #0x1e]
	strh r2, [r4, #0x20]
	strh r2, [r4, #0x22]
	strh r2, [r4, #0x24]
	movs r0, #0x20
	strh r0, [r4, #0x26]
	strh r0, [r4, #0x28]
	adds r5, #0x2a
	adds r0, r7, r5
	strb r3, [r0]
	adds r5, #1
	adds r0, r7, r5
	strb r3, [r0]
	adds r5, #1
	adds r0, r7, r5
	strb r3, [r0]
	movs r0, #8
	strh r0, [r4, #0x2e]
	strh r2, [r4, #0x30]
	strh r2, [r4, #0x32]
	ldr r0, _0802BE1C @ =0x00007FFF
	strh r0, [r4, #0x34]
	strh r0, [r4, #0x36]
	ldr r0, _0802BE20 @ =gUnk_082D7850
	movs r2, #0xac
	lsls r2, r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r0, [r0, #8]
	bl LZ77UnCompVram
	adds r0, r4, #0
	bl sub_08153060
	movs r6, #0
	mov r8, r6
_0802BD74:
	lsls r5, r6, #2
	adds r0, r5, r6
	lsls r0, r0, #3
	adds r0, #4
	adds r4, r7, r0
	lsls r3, r6, #3
	movs r0, #0x86
	lsls r0, r0, #2
	adds r1, r7, r0
	adds r1, r1, r3
	ldr r2, _0802BE24 @ =gUnk_082EB4EC
	adds r0, r3, r2
	ldr r0, [r0]
	str r0, [r1]
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r7, r0
	adds r1, r1, r3
	ldr r2, _0802BE28 @ =gUnk_082EB4F0
	adds r0, r3, r2
	ldr r0, [r0]
	str r0, [r1]
	lsls r1, r6, #1
	movs r0, #0x95
	lsls r0, r0, #2
	adds r2, r7, r0
	adds r2, r2, r1
	ldr r0, _0802BE2C @ =gUnk_082EB5B4
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2]
	mov sb, r3
	cmp r6, #3
	bhi _0802BE3C
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x14]
	ldr r2, _0802BE30 @ =gKirbys
	adds r0, #0xa8
	adds r1, r6, #0
	muls r1, r0, r1
	adds r1, r1, r2
	adds r1, #0xdf
	ldrb r0, [r1]
	lsls r0, r0, #2
	ldr r2, _0802BE34 @ =gUnk_082EB4B4
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrb r0, [r1]
	lsls r0, r0, #2
	ldr r5, _0802BE38 @ =gUnk_082EB4B6
	adds r0, r0, r5
	ldrh r0, [r0]
	strb r0, [r4, #0x1a]
	mov r0, r8
	strh r0, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r6, [r4, #0x1f]
	mov r1, r8
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	movs r0, #0x81
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	b _0802BE70
	.align 2, 0
_0802BE04: .4byte gDispCnt
_0802BE08: .4byte gBgScrollRegs
_0802BE0C: .4byte gBgCntRegs
_0802BE10: .4byte 0x00001F0A
_0802BE14: .4byte 0x06008000
_0802BE18: .4byte 0x0600F800
_0802BE1C: .4byte 0x00007FFF
_0802BE20: .4byte gUnk_082D7850
_0802BE24: .4byte gUnk_082EB4EC
_0802BE28: .4byte gUnk_082EB4F0
_0802BE2C: .4byte gUnk_082EB5B4
_0802BE30: .4byte gKirbys
_0802BE34: .4byte gUnk_082EB4B4
_0802BE38: .4byte gUnk_082EB4B6
_0802BE3C:
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x14]
	ldr r1, _0802BF58 @ =gUnk_082EB4A0
	adds r0, r5, r1
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	adds r1, #2
	adds r1, r5, r1
	ldrh r0, [r1]
	strb r0, [r4, #0x1a]
	mov r2, r8
	strh r2, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r6, [r4, #0x1f]
	strh r2, [r4, #0x10]
	strh r2, [r4, #0x12]
	movs r0, #0x81
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
_0802BE70:
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x14]
	movs r0, #0x2d
	strh r0, [r4, #0xc]
	movs r0, #4
	strb r0, [r4, #0x1a]
	mov r5, r8
	strh r5, [r4, #0x16]
	subs r0, #5
	mov sl, r0
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r1, #0x10
	strb r1, [r4, #0x1c]
	strb r6, [r4, #0x1f]
	movs r2, #0x86
	lsls r2, r2, #2
	adds r0, r7, r2
	add r0, sb
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	movs r5, #0x87
	lsls r5, r5, #2
	adds r0, r7, r5
	add r0, sb
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	movs r0, #0x82
	lsls r0, r0, #0xb
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #4
	bhi _0802BEC4
	b _0802BD74
_0802BEC4:
	adds r0, r7, #0
	adds r0, #0xcc
	movs r4, #0
	movs r6, #0
	movs r1, #0xa0
	lsls r1, r1, #1
	strh r1, [r0, #0x14]
	ldr r1, _0802BF5C @ =0x000002DE
	strh r1, [r0, #0xc]
	strb r4, [r0, #0x1a]
	strh r6, [r0, #0x16]
	ldrb r1, [r0, #0x1b]
	mov r2, sl
	orrs r1, r2
	strb r1, [r0, #0x1b]
	movs r5, #0x10
	strb r5, [r0, #0x1c]
	movs r1, #0xf
	strb r1, [r0, #0x1f]
	movs r4, #0xff
	lsls r4, r4, #8
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	movs r5, #0x80
	lsls r5, r5, #5
	str r5, [r0, #8]
	bl sub_08155128
	adds r0, r7, #0
	adds r0, #0xf4
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	subs r1, #0x2d
	strh r1, [r0, #0xc]
	movs r1, #1
	strb r1, [r0, #0x1a]
	strh r6, [r0, #0x16]
	ldrb r1, [r0, #0x1b]
	mov r2, sl
	orrs r1, r2
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	movs r1, #0xe
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r5, #0x85
	lsls r5, r5, #2
	adds r2, r7, r5
	ldr r0, [r2]
	ldr r1, _0802BF60 @ =0x01005B6D
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r2]
	movs r0, #0x12
	bl m4aSongNumStart
	ldr r0, _0802BF64 @ =sub_0802D3E0
	str r0, [r7]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802BF58: .4byte gUnk_082EB4A0
_0802BF5C: .4byte 0x000002DE
_0802BF60: .4byte 0x01005B6D
_0802BF64: .4byte sub_0802D3E0

	thumb_func_start sub_0802BF68
sub_0802BF68: @ 0x0802BF68
	push {r4, lr}
	adds r3, r0, #0
	movs r0, #0xaf
	lsls r0, r0, #2
	adds r1, r3, r0
	ldrh r0, [r1]
	adds r2, r0, #1
	movs r4, #0
	strh r2, [r1]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _0802BFA8
	ldr r0, _0802BF9C @ =gBldRegs
	strh r4, [r0]
	strh r4, [r0, #4]
	movs r0, #0x85
	lsls r0, r0, #2
	adds r2, r3, r0
	ldr r0, [r2]
	ldr r1, _0802BFA0 @ =0xDFFFFFFF
	ands r0, r1
	str r0, [r2]
	ldr r0, _0802BFA4 @ =sub_0802D3F4
	str r0, [r3]
	b _0802BFB0
	.align 2, 0
_0802BF9C: .4byte gBldRegs
_0802BFA0: .4byte 0xDFFFFFFF
_0802BFA4: .4byte sub_0802D3F4
_0802BFA8:
	ldr r1, _0802BFB8 @ =gBldRegs
	movs r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #4]
_0802BFB0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802BFB8: .4byte gBldRegs

	thumb_func_start sub_0802BFBC
sub_0802BFBC: @ 0x0802BFBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	movs r0, #0
	mov sb, r0
	movs r5, #0
	movs r1, #0x86
	lsls r1, r1, #2
	add r1, r8
	mov ip, r1
	movs r7, #0x90
	lsls r7, r7, #2
	add r7, r8
	movs r2, #0x9a
	lsls r2, r2, #2
	add r2, r8
	mov sl, r2
_0802BFE4:
	lsls r0, r5, #3
	ldr r3, _0802C05C @ =gUnk_082EB53C
	adds r1, r0, r3
	mov r3, ip
	adds r2, r3, r0
	ldr r3, [r1]
	ldr r1, [r2]
	adds r6, r0, #0
	lsls r4, r5, #2
	cmp r3, r1
	blt _0802C01E
	adds r1, r7, r4
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0802C01E
	adds r0, r2, #4
	movs r2, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0802C01E
	strh r2, [r1]
	lsls r0, r5, #1
	add r0, sl
	movs r1, #0x80
	lsls r1, r1, #4
	strh r1, [r0]
_0802C01E:
	mov r0, ip
	adds r2, r0, r6
	adds r3, r7, r4
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldrh r0, [r3]
	mov r1, sb
	orrs r1, r0
	mov sb, r1
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	bls _0802BFE4
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _0802C04C
	ldr r0, _0802C060 @ =sub_0802D408
	mov r2, r8
	str r0, [r2]
_0802C04C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C05C: .4byte gUnk_082EB53C
_0802C060: .4byte sub_0802D408

	thumb_func_start sub_0802C064
sub_0802C064: @ 0x0802C064
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov ip, r0
	movs r0, #0
	str r0, [sp]
	movs r5, #0
	ldr r6, _0802C0E0 @ =0x00000242
	add r6, ip
	movs r1, #0x86
	lsls r1, r1, #2
	add r1, ip
	mov r8, r1
	movs r7, #0x90
	lsls r7, r7, #2
	add r7, ip
_0802C08A:
	cmp r5, #4
	bne _0802C0EC
	movs r0, #0x8e
	lsls r0, r0, #2
	add r0, ip
	ldr r2, _0802C0E4 @ =gUnk_082EB58C
	ldr r1, [r2, #0x20]
	ldr r0, [r0]
	movs r3, #0x10
	mov sl, r3
	movs r4, #0x20
	mov sb, r4
	cmp r1, r0
	blt _0802C160
	movs r2, #0x94
	lsls r2, r2, #2
	add r2, ip
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _0802C160
	adds r0, r1, #2
	movs r3, #0
	strh r0, [r2]
	ldr r1, _0802C0E8 @ =0x00000252
	add r1, ip
	ldrh r0, [r1]
	adds r0, #2
	strh r0, [r1]
	movs r4, #0
	ldrsh r0, [r2, r4]
	cmp r0, #0
	blt _0802C160
	strh r3, [r2]
	strh r3, [r1]
	movs r1, #0x9c
	lsls r1, r1, #2
	add r1, ip
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r1]
	b _0802C160
	.align 2, 0
_0802C0E0: .4byte 0x00000242
_0802C0E4: .4byte gUnk_082EB58C
_0802C0E8: .4byte 0x00000252
_0802C0EC:
	lsls r0, r5, #2
	adds r2, r6, r0
	ldrh r3, [r2]
	movs r4, #0
	ldrsh r1, [r2, r4]
	mov sl, r0
	cmp r1, #0
	ble _0802C10A
	subs r0, r3, #2
	movs r1, #0
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0802C11C
	b _0802C11A
_0802C10A:
	cmp r1, #0
	bge _0802C11C
	adds r0, r3, #2
	movs r1, #0
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0802C11C
_0802C11A:
	strh r1, [r2]
_0802C11C:
	lsls r0, r5, #3
	ldr r2, _0802C1D0 @ =gUnk_082EB58C
	adds r1, r0, r2
	mov r3, r8
	adds r2, r3, r0
	ldr r3, [r1]
	ldr r1, [r2]
	mov sb, r0
	cmp r3, r1
	bgt _0802C160
	mov r4, sl
	adds r1, r7, r4
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0802C160
	subs r0, r2, #2
	movs r2, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0802C160
	strh r2, [r1]
	adds r0, r6, r4
	strh r2, [r0]
	lsls r1, r5, #1
	movs r0, #0x9a
	lsls r0, r0, #2
	add r0, ip
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	strh r1, [r0]
_0802C160:
	mov r2, r8
	add r2, sb
	mov r0, sl
	adds r4, r7, r0
	movs r3, #0
	ldrsh r1, [r4, r3]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0x87
	lsls r1, r1, #2
	add r1, ip
	add r1, sb
	mov r0, sl
	adds r3, r6, r0
	movs r0, #0
	ldrsh r2, [r3, r0]
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
	ldrh r0, [r4]
	ldrh r1, [r3]
	orrs r0, r1
	ldr r1, [sp]
	orrs r1, r0
	str r1, [sp]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bhi _0802C1A0
	b _0802C08A
_0802C1A0:
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _0802C1BE
	movs r0, #0x85
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	beq _0802C1BE
	ldr r0, _0802C1D4 @ =sub_0802D430
	mov r2, ip
	str r0, [r2]
_0802C1BE:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C1D0: .4byte gUnk_082EB58C
_0802C1D4: .4byte sub_0802D430

	thumb_func_start sub_0802C1D8
sub_0802C1D8: @ 0x0802C1D8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r1, #0x9d
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r2, _0802C258 @ =0x000002BE
	adds r4, r5, r2
	ldrh r3, [r4]
	lsls r3, r3, #3
	movs r6, #0x86
	lsls r6, r6, #2
	adds r1, r5, r6
	adds r1, r1, r3
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	subs r2, #0x46
	adds r1, r5, r2
	adds r6, #4
	adds r2, r5, r6
	adds r2, r2, r3
	ldr r1, [r1]
	ldr r2, [r2]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl sub_08154FE8
	ldr r1, _0802C25C @ =0x000003FF
	ands r1, r0
	ldrh r0, [r4]
	lsls r0, r0, #2
	movs r3, #0x90
	lsls r3, r3, #2
	adds r2, r5, r3
	adds r2, r2, r0
	ldr r3, _0802C260 @ =gSineTable
	lsls r0, r1, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x17
	strh r0, [r2]
	ldrh r0, [r4]
	lsls r0, r0, #2
	ldr r4, _0802C264 @ =0x00000242
	adds r2, r5, r4
	adds r2, r2, r0
	movs r6, #0x80
	lsls r6, r6, #1
	adds r1, r1, r6
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x17
	strh r0, [r2]
	ldr r0, _0802C268 @ =sub_0802C26C
	str r0, [r5]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802C258: .4byte 0x000002BE
_0802C25C: .4byte 0x000003FF
_0802C260: .4byte gSineTable
_0802C264: .4byte 0x00000242
_0802C268: .4byte sub_0802C26C

	thumb_func_start sub_0802C26C
sub_0802C26C: @ 0x0802C26C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	ldr r0, _0802C2C4 @ =0x000002BE
	add r0, ip
	mov r8, r0
	ldrh r6, [r0]
	lsls r3, r6, #3
	movs r0, #0x86
	lsls r0, r0, #2
	add r0, ip
	adds r7, r0, r3
	movs r0, #0x9d
	lsls r0, r0, #2
	add r0, ip
	ldr r5, [r7]
	ldr r2, [r0]
	subs r2, r5, r2
	asrs r2, r2, #8
	movs r4, #0x87
	lsls r4, r4, #2
	add r4, ip
	adds r3, r4, r3
	movs r1, #0x9e
	lsls r1, r1, #2
	add r1, ip
	ldr r0, [r3]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	adds r1, r2, #0
	muls r1, r2, r1
	adds r2, r0, #0
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	cmp r1, #0x8f
	bgt _0802C2CC
	ldr r0, _0802C2C8 @ =sub_0802D5D4
	mov r3, ip
	str r0, [r3]
	b _0802C2F8
	.align 2, 0
_0802C2C4: .4byte 0x000002BE
_0802C2C8: .4byte sub_0802D5D4
_0802C2CC:
	lsls r1, r6, #2
	movs r0, #0x90
	lsls r0, r0, #2
	add r0, ip
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, r5, r0
	str r0, [r7]
	mov r2, r8
	ldrh r1, [r2]
	lsls r2, r1, #3
	adds r2, r4, r2
	lsls r1, r1, #2
	ldr r0, _0802C304 @ =0x00000242
	add r0, ip
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
_0802C2F8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C304: .4byte 0x00000242

	thumb_func_start sub_0802C308
sub_0802C308: @ 0x0802C308
	push {lr}
	mov ip, r0
	movs r1, #0xaf
	lsls r1, r1, #2
	add r1, ip
	ldrh r0, [r1]
	adds r3, r0, #1
	movs r2, #0
	strh r3, [r1]
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3f
	bls _0802C34C
	ldr r0, _0802C340 @ =gBldRegs
	strh r2, [r0]
	strh r2, [r0, #4]
	movs r2, #0x85
	lsls r2, r2, #2
	add r2, ip
	ldr r0, [r2]
	ldr r1, _0802C344 @ =0xDFFFFFFF
	ands r0, r1
	str r0, [r2]
	ldr r0, _0802C348 @ =sub_0802D708
	mov r1, ip
	str r0, [r1]
	b _0802C358
	.align 2, 0
_0802C340: .4byte gBldRegs
_0802C344: .4byte 0xDFFFFFFF
_0802C348: .4byte sub_0802D708
_0802C34C:
	ldr r2, _0802C35C @ =gBldRegs
	lsls r1, r3, #0x10
	lsrs r1, r1, #0x12
	movs r0, #0x10
	subs r0, r0, r1
	strh r0, [r2, #4]
_0802C358:
	pop {r0}
	bx r0
	.align 2, 0
_0802C35C: .4byte gBldRegs

	thumb_func_start sub_0802C360
sub_0802C360: @ 0x0802C360
	push {r4, lr}
	mov ip, r0
	movs r4, #0x94
	lsls r4, r4, #2
	add r4, ip
	ldrh r0, [r4]
	subs r0, #4
	strh r0, [r4]
	lsls r0, r0, #0x10
	ldr r1, _0802C3B4 @ =0xFF800000
	cmp r0, r1
	bge _0802C37C
	ldr r0, _0802C3B8 @ =0x0000FF80
	strh r0, [r4]
_0802C37C:
	movs r3, #0x8e
	lsls r3, r3, #2
	add r3, ip
	ldr r1, [r3]
	ldr r0, _0802C3BC @ =0xFFFFE000
	cmp r1, r0
	bge _0802C3A2
	movs r2, #0x85
	lsls r2, r2, #2
	add r2, ip
	ldr r0, [r2]
	ldr r1, _0802C3C0 @ =0xFFFF8FFF
	ands r0, r1
	str r0, [r2]
	movs r0, #0
	strh r0, [r4]
	ldr r0, _0802C3C4 @ =sub_0802D444
	mov r1, ip
	str r0, [r1]
_0802C3A2:
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802C3B4: .4byte 0xFF800000
_0802C3B8: .4byte 0x0000FF80
_0802C3BC: .4byte 0xFFFFE000
_0802C3C0: .4byte 0xFFFF8FFF
_0802C3C4: .4byte sub_0802D444

	thumb_func_start sub_0802C3C8
sub_0802C3C8: @ 0x0802C3C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r2, #0xa5
	lsls r2, r2, #2
	adds r5, r7, r2
	movs r1, #0x8c
	lsls r1, r1, #9
	str r1, [r5]
	movs r1, #0xa6
	lsls r1, r1, #2
	adds r6, r7, r1
	movs r1, #0xa0
	lsls r1, r1, #7
	str r1, [r6]
	adds r2, #8
	adds r1, r7, r2
	movs r4, #0
	str r4, [r1]
	adds r2, #4
	adds r1, r7, r2
	str r4, [r1]
	movs r1, #0
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r0, #0x14]
	ldr r2, _0802C4B4 @ =0x00000395
	mov sb, r2
	mov r2, sb
	strh r2, [r0, #0xc]
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	mov sl, r1
	mov r2, sl
	strb r2, [r0, #0x1c]
	movs r1, #5
	strb r1, [r0, #0x1f]
	ldr r1, [r5]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0xa0
	lsls r1, r1, #5
	mov r8, r1
	str r1, [r0, #8]
	bl sub_08155128
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r1, #0xa9
	lsls r1, r1, #2
	adds r2, r7, r1
	ldr r1, [r5]
	str r1, [r2]
	movs r5, #0xaa
	lsls r5, r5, #2
	adds r3, r7, r5
	ldr r1, [r6]
	str r1, [r3]
	adds r5, #4
	adds r1, r7, r5
	str r4, [r1]
	adds r5, #4
	adds r1, r7, r5
	str r4, [r1]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #0x14]
	mov r5, sb
	strh r5, [r0, #0xc]
	movs r1, #1
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #2
	strb r1, [r0, #0x1b]
	mov r1, sl
	strb r1, [r0, #0x1c]
	movs r1, #6
	strb r1, [r0, #0x1f]
	ldr r1, [r2]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r3]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	mov r2, r8
	str r2, [r0, #8]
	bl sub_08155128
	movs r5, #0x85
	lsls r5, r5, #2
	adds r2, r7, r5
	ldr r0, [r2]
	movs r1, #0xa0
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r2]
	ldr r0, _0802C4B8 @ =sub_0802C4BC
	str r0, [r7]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C4B4: .4byte 0x00000395
_0802C4B8: .4byte sub_0802C4BC

	thumb_func_start sub_0802C4BC
sub_0802C4BC: @ 0x0802C4BC
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r0, #0xa7
	lsls r0, r0, #2
	adds r6, r3, r0
	ldr r0, _0802C53C @ =0xFFFFFEC0
	str r0, [r6]
	movs r2, #0xa5
	lsls r2, r2, #2
	adds r5, r3, r2
	ldr r1, [r5]
	ldr r0, _0802C540 @ =0x0000DBFF
	cmp r1, r0
	bgt _0802C4E4
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, [r1]
	subs r0, #8
	str r0, [r1]
_0802C4E4:
	movs r2, #0xa6
	lsls r2, r2, #2
	adds r4, r3, r2
	ldr r1, [r4]
	ldr r0, _0802C544 @ =0xFFFFE000
	cmp r1, r0
	bge _0802C50E
	movs r1, #0
	str r1, [r6]
	adds r2, #8
	adds r0, r3, r2
	str r1, [r0]
	movs r0, #0x85
	lsls r0, r0, #2
	adds r2, r3, r0
	ldr r0, [r2]
	ldr r1, _0802C548 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r2]
	ldr r0, _0802C54C @ =sub_0802D458
	str r0, [r3]
_0802C50E:
	ldr r0, [r5]
	ldr r1, [r6]
	adds r0, r0, r1
	str r0, [r5]
	movs r2, #0xa8
	lsls r2, r2, #2
	adds r1, r3, r2
	ldr r0, [r4]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r4]
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, [r5]
	str r0, [r1]
	adds r2, #8
	adds r1, r3, r2
	ldr r0, [r4]
	str r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802C53C: .4byte 0xFFFFFEC0
_0802C540: .4byte 0x0000DBFF
_0802C544: .4byte 0xFFFFE000
_0802C548: .4byte 0xFFF7FFFF
_0802C54C: .4byte sub_0802D458

	thumb_func_start sub_0802C550
sub_0802C550: @ 0x0802C550
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r6, r1
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r4, r6, r2
	movs r1, #0xf0
	lsls r1, r1, #7
	str r1, [r4]
	movs r1, #0xaa
	lsls r1, r1, #2
	adds r5, r6, r1
	ldr r1, _0802C5D4 @ =0xFFFFD800
	str r1, [r5]
	adds r2, #8
	adds r1, r6, r2
	movs r3, #0
	str r3, [r1]
	movs r1, #0xac
	lsls r1, r1, #2
	adds r2, r6, r1
	subs r1, #0xb0
	str r1, [r2]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #0x14]
	ldr r1, _0802C5D8 @ =0x000002C3
	strh r1, [r0, #0xc]
	movs r1, #3
	strb r1, [r0, #0x1a]
	strh r3, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	movs r1, #6
	strb r1, [r0, #0x1f]
	ldr r1, [r4]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r5]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	bl sub_08155128
	movs r0, #0x85
	lsls r0, r0, #2
	adds r2, r6, r0
	ldr r0, [r2]
	ldr r1, _0802C5DC @ =0xFFEFFFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r2]
	ldr r0, _0802C5E0 @ =sub_0802D780
	str r0, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802C5D4: .4byte 0xFFFFD800
_0802C5D8: .4byte 0x000002C3
_0802C5DC: .4byte 0xFFEFFFFF
_0802C5E0: .4byte sub_0802D780

	thumb_func_start sub_0802C5E4
sub_0802C5E4: @ 0x0802C5E4
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xca
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r0, _0802C664 @ =gBgScrollRegs
	movs r3, #0
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	ldr r2, _0802C668 @ =gBgCntRegs
	ldr r0, _0802C66C @ =0x00001F0A
	strh r0, [r2]
	ldr r0, _0802C670 @ =0x06008000
	str r0, [r4, #4]
	strh r1, [r4, #0xa]
	ldr r0, _0802C674 @ =0x0600F800
	str r0, [r4, #0xc]
	strh r1, [r4, #0x18]
	strh r1, [r4, #0x1a]
	ldr r0, _0802C678 @ =0x00000306
	strh r0, [r4, #0x1c]
	strh r1, [r4, #0x1e]
	strh r1, [r4, #0x20]
	strh r1, [r4, #0x22]
	strh r1, [r4, #0x24]
	movs r0, #0x1e
	strh r0, [r4, #0x26]
	movs r0, #0x14
	strh r0, [r4, #0x28]
	movs r2, #0xdf
	lsls r2, r2, #1
	adds r0, r5, r2
	strb r3, [r0]
	adds r2, #1
	adds r0, r5, r2
	strb r3, [r0]
	adds r2, #1
	adds r0, r5, r2
	strb r3, [r0]
	movs r0, #8
	strh r0, [r4, #0x2e]
	strh r1, [r4, #0x30]
	strh r1, [r4, #0x32]
	ldr r0, _0802C67C @ =0x00007FFF
	strh r0, [r4, #0x34]
	strh r0, [r4, #0x36]
	ldr r0, _0802C680 @ =gUnk_082D7850
	ldr r1, _0802C684 @ =0x00000C18
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #8]
	ldr r1, [r4, #4]
	bl LZ77UnCompVram
	adds r0, r4, #0
	bl sub_08153060
	ldr r0, _0802C688 @ =sub_0802C68C
	str r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802C664: .4byte gBgScrollRegs
_0802C668: .4byte gBgCntRegs
_0802C66C: .4byte 0x00001F0A
_0802C670: .4byte 0x06008000
_0802C674: .4byte 0x0600F800
_0802C678: .4byte 0x00000306
_0802C67C: .4byte 0x00007FFF
_0802C680: .4byte gUnk_082D7850
_0802C684: .4byte 0x00000C18
_0802C688: .4byte sub_0802C68C

	thumb_func_start sub_0802C68C
sub_0802C68C: @ 0x0802C68C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r1, _0802C700 @ =gBackgrounds
	ldr r0, _0802C704 @ =gRoomProps
	ldr r2, _0802C708 @ =0x00007D46
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r5, [r0]
	ldr r1, _0802C70C @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	ldr r1, _0802C710 @ =gBgCntRegs
	ldr r0, _0802C714 @ =0x00001E03
	strh r0, [r1, #2]
	ldr r0, [r5, #8]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	ldr r4, [r5, #0x18]
	ldr r7, _0802C718 @ =0x0600F000
	ldrh r0, [r5]
	lsls r0, r0, #4
	adds r4, r4, r0
	movs r6, #0
_0802C6C8:
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #0x1e
	bl CpuSet
	ldrh r0, [r5]
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r7, #0x40
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x13
	bls _0802C6C8
	ldr r4, _0802C71C @ =gUnk_03002440
	ldr r3, [r4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _0802C720
	ldr r0, [r5, #0x10]
	ldrb r1, [r5, #0x14]
	ldrh r2, [r5, #0x16]
	bl sub_08158334
	b _0802C742
	.align 2, 0
_0802C700: .4byte gBackgrounds
_0802C704: .4byte gRoomProps
_0802C708: .4byte 0x00007D46
_0802C70C: .4byte gBgScrollRegs
_0802C710: .4byte gBgCntRegs
_0802C714: .4byte 0x00001E03
_0802C718: .4byte 0x0600F000
_0802C71C: .4byte gUnk_03002440
_0802C720:
	ldr r2, _0802C760 @ =0x040000D4
	ldr r0, [r5, #0x10]
	str r0, [r2]
	ldrh r0, [r5, #0x14]
	lsls r0, r0, #1
	ldr r1, _0802C764 @ =gBgPalette
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrh r0, [r5, #0x16]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #1
	orrs r3, r0
	str r3, [r4]
_0802C742:
	ldr r2, _0802C768 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0802C76C @ =sub_0802D46C
	mov r1, r8
	str r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C760: .4byte 0x040000D4
_0802C764: .4byte gBgPalette
_0802C768: .4byte gDispCnt
_0802C76C: .4byte sub_0802D46C

	thumb_func_start sub_0802C770
sub_0802C770: @ 0x0802C770
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	ldr r2, _0802C8A4 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r6, _0802C8A8 @ =gBgScrollRegs
	movs r0, #0
	mov r8, r0
	movs r4, #0
	strh r4, [r6]
	strh r4, [r6, #2]
	ldr r0, _0802C8AC @ =0x00001F09
	ldr r1, _0802C8B0 @ =gBgCntRegs
	strh r0, [r1]
	movs r7, #0xca
	lsls r7, r7, #1
	add r7, sl
	ldr r0, _0802C8B4 @ =0x06008000
	str r0, [r7, #4]
	strh r4, [r7, #0xa]
	ldr r0, _0802C8B8 @ =0x0600F800
	str r0, [r7, #0xc]
	strh r4, [r7, #0x18]
	strh r4, [r7, #0x1a]
	ldr r1, _0802C8BC @ =gUnk_082EB634
	ldr r0, _0802C8C0 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0x1c]
	strh r4, [r7, #0x1e]
	strh r4, [r7, #0x20]
	strh r4, [r7, #0x22]
	strh r4, [r7, #0x24]
	movs r3, #0x1e
	strh r3, [r7, #0x26]
	movs r0, #0x14
	strh r0, [r7, #0x28]
	movs r0, #0xdf
	lsls r0, r0, #1
	add r0, sl
	mov r1, r8
	strb r1, [r0]
	ldr r0, _0802C8C4 @ =0x000001BF
	add r0, sl
	strb r1, [r0]
	movs r0, #0xe0
	lsls r0, r0, #1
	add r0, sl
	strb r1, [r0]
	movs r0, #0x18
	strh r0, [r7, #0x2e]
	strh r4, [r7, #0x30]
	strh r4, [r7, #0x32]
	ldr r5, _0802C8C8 @ =0x00007FFF
	strh r5, [r7, #0x34]
	strh r5, [r7, #0x36]
	adds r0, r7, #0
	bl sub_08153060
	ldr r3, _0802C8CC @ =gUnk_082D7850
	mov sb, r3
	ldrh r0, [r7, #0x1c]
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	ldr r0, [r0, #8]
	ldr r1, [r7, #4]
	bl LZ77UnCompVram
	strh r4, [r6, #4]
	strh r4, [r6, #6]
	ldr r0, _0802C8D0 @ =0x00001E02
	ldr r1, _0802C8B0 @ =gBgCntRegs
	strh r0, [r1, #2]
	movs r7, #0xea
	lsls r7, r7, #1
	add r7, sl
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r7, #4]
	strh r4, [r7, #0xa]
	ldr r0, _0802C8D4 @ =0x0600F000
	str r0, [r7, #0xc]
	strh r4, [r7, #0x18]
	strh r4, [r7, #0x1a]
	ldr r0, _0802C8D8 @ =0x000002B1
	strh r0, [r7, #0x1c]
	strh r4, [r7, #0x1e]
	strh r4, [r7, #0x20]
	strh r4, [r7, #0x22]
	strh r4, [r7, #0x24]
	movs r3, #0x1e
	strh r3, [r7, #0x26]
	movs r0, #0x14
	strh r0, [r7, #0x28]
	movs r0, #0xff
	lsls r0, r0, #1
	add r0, sl
	mov r1, r8
	strb r1, [r0]
	ldr r0, _0802C8DC @ =0x000001FF
	add r0, sl
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	add r0, sl
	strb r1, [r0]
	movs r0, #9
	strh r0, [r7, #0x2e]
	strh r5, [r7, #0x34]
	strh r5, [r7, #0x36]
	adds r0, r7, #0
	bl sub_08153060
	ldrh r0, [r7, #0x1c]
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	ldr r0, [r0, #8]
	ldr r1, [r7, #4]
	bl LZ77UnCompVram
	movs r0, #0xaf
	lsls r0, r0, #2
	add r0, sl
	strh r4, [r0]
	movs r2, #0x85
	lsls r2, r2, #2
	add r2, sl
	ldr r0, [r2]
	ldr r1, _0802C8E0 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r2]
	ldr r0, _0802C8E4 @ =sub_0802D800
	mov r3, sl
	str r0, [r3]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C8A4: .4byte gDispCnt
_0802C8A8: .4byte gBgScrollRegs
_0802C8AC: .4byte 0x00001F09
_0802C8B0: .4byte gBgCntRegs
_0802C8B4: .4byte 0x06008000
_0802C8B8: .4byte 0x0600F800
_0802C8BC: .4byte gUnk_082EB634
_0802C8C0: .4byte gUnk_08D60A80
_0802C8C4: .4byte 0x000001BF
_0802C8C8: .4byte 0x00007FFF
_0802C8CC: .4byte gUnk_082D7850
_0802C8D0: .4byte 0x00001E02
_0802C8D4: .4byte 0x0600F000
_0802C8D8: .4byte 0x000002B1
_0802C8DC: .4byte 0x000001FF
_0802C8E0: .4byte 0xFFF7FFFF
_0802C8E4: .4byte sub_0802D800

	thumb_func_start sub_0802C8E8
sub_0802C8E8: @ 0x0802C8E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	movs r3, #0
	mov r8, r3
_0802C8FA:
	lsls r2, r3, #2
	adds r4, r2, r3
	lsls r4, r4, #3
	adds r4, #4
	adds r4, r7, r4
	lsls r1, r3, #3
	movs r0, #0x86
	lsls r0, r0, #2
	adds r6, r7, r0
	adds r6, r6, r1
	ldr r5, _0802CA4C @ =gUnk_082EB5C0
	adds r0, r1, r5
	ldr r0, [r0]
	str r0, [r6]
	movs r0, #0x87
	lsls r0, r0, #2
	adds r5, r7, r0
	adds r5, r5, r1
	ldr r0, _0802CA50 @ =gUnk_082EB5C4
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r5]
	movs r1, #0x90
	lsls r1, r1, #2
	adds r0, r7, r1
	adds r0, r0, r2
	adds r1, #0xc0
	strh r1, [r0]
	subs r1, #0xbe
	adds r0, r7, r1
	adds r0, r0, r2
	ldr r1, _0802CA54 @ =0x0000FF80
	strh r1, [r0]
	lsls r1, r3, #1
	ldr r2, _0802CA58 @ =0x0000025E
	adds r0, r7, r2
	adds r0, r0, r1
	mov r2, r8
	strh r2, [r0]
	movs r2, #0x9a
	lsls r2, r2, #2
	adds r0, r7, r2
	adds r0, r0, r1
	mov r1, r8
	strh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r4, #0x14]
	ldr r2, _0802CA5C @ =gKirbys
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r3, #0
	muls r1, r0, r1
	adds r1, r1, r2
	adds r1, #0xdf
	ldrb r0, [r1]
	lsls r0, r0, #2
	ldr r2, _0802CA60 @ =gUnk_082EB4B4
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrb r0, [r1]
	lsls r0, r0, #2
	ldr r1, _0802CA64 @ =gUnk_082EB4B6
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r4, #0x1a]
	mov r2, r8
	strh r2, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	mov sb, r0
	mov r1, sb
	strb r1, [r4, #0x1c]
	strb r3, [r4, #0x1f]
	strh r2, [r4, #0x10]
	strh r2, [r4, #0x12]
	movs r0, #0x81
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	adds r0, r4, #0
	str r3, [sp]
	bl sub_08155128
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r4, #0x14]
	movs r0, #0x2d
	strh r0, [r4, #0xc]
	movs r0, #0
	strb r0, [r4, #0x1a]
	mov r1, r8
	strh r1, [r4, #0x16]
	movs r2, #1
	rsbs r2, r2, #0
	mov sl, r2
	adds r0, r2, #0
	strb r0, [r4, #0x1b]
	mov r0, sb
	strb r0, [r4, #0x1c]
	ldr r3, [sp]
	strb r3, [r4, #0x1f]
	ldr r0, [r6]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	movs r0, #0x82
	lsls r0, r0, #0xb
	str r0, [r4, #8]
	adds r0, r4, #0
	str r3, [sp]
	bl sub_08155128
	ldr r3, [sp]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _0802C8FA
	adds r0, r7, #0
	adds r0, #0xcc
	movs r2, #0
	movs r3, #0
	movs r1, #0xa0
	lsls r1, r1, #1
	strh r1, [r0, #0x14]
	ldr r1, _0802CA68 @ =0x000002DE
	strh r1, [r0, #0xc]
	strb r2, [r0, #0x1a]
	strh r3, [r0, #0x16]
	ldrb r1, [r0, #0x1b]
	mov r2, sl
	orrs r1, r2
	strb r1, [r0, #0x1b]
	mov r5, sb
	strb r5, [r0, #0x1c]
	movs r1, #0xf
	strb r1, [r0, #0x1f]
	movs r1, #0xff
	lsls r1, r1, #8
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	bl sub_08155128
	movs r0, #0x85
	lsls r0, r0, #2
	adds r2, r7, r0
	ldr r0, [r2]
	ldr r1, _0802CA6C @ =0xF0800000
	ands r0, r1
	ldr r1, _0802CA70 @ =0x00000B6D
	orrs r0, r1
	str r0, [r2]
	ldr r0, _0802CA74 @ =sub_0802CA78
	str r0, [r7]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802CA4C: .4byte gUnk_082EB5C0
_0802CA50: .4byte gUnk_082EB5C4
_0802CA54: .4byte 0x0000FF80
_0802CA58: .4byte 0x0000025E
_0802CA5C: .4byte gKirbys
_0802CA60: .4byte gUnk_082EB4B4
_0802CA64: .4byte gUnk_082EB4B6
_0802CA68: .4byte 0x000002DE
_0802CA6C: .4byte 0xF0800000
_0802CA70: .4byte 0x00000B6D
_0802CA74: .4byte sub_0802CA78

	thumb_func_start sub_0802CA78
sub_0802CA78: @ 0x0802CA78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #1
	mov sl, r0
	movs r6, #0
	movs r1, #0x90
	lsls r1, r1, #2
	adds r1, r5, r1
	str r1, [sp]
	movs r2, #0x86
	lsls r2, r2, #2
	adds r2, r2, r5
	mov sb, r2
	movs r3, #0x87
	lsls r3, r3, #2
	adds r3, r3, r5
	mov r8, r3
	ldr r4, _0802CB08 @ =0x00000242
	adds r4, r4, r5
	mov ip, r4
_0802CAAA:
	lsls r1, r6, #2
	ldr r7, [sp]
	adds r2, r7, r1
	ldrh r3, [r2]
	movs r4, #0
	ldrsh r0, [r2, r4]
	adds r4, r1, #0
	cmp r0, #0x80
	ble _0802CADA
	subs r0, r3, #6
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x80
	bgt _0802CADA
	adds r1, r4, r6
	lsls r1, r1, #3
	adds r1, r5, r1
	movs r0, #0x2d
	strh r0, [r1, #0x10]
	movs r0, #6
	strb r0, [r1, #0x1e]
	movs r0, #0x80
	strh r0, [r2]
_0802CADA:
	lsls r1, r6, #3
	mov r7, sb
	adds r0, r7, r1
	ldr r2, [r0]
	movs r0, #0x98
	lsls r0, r0, #9
	adds r3, r1, #0
	cmp r2, r0
	bgt _0802CAF8
	mov r1, r8
	adds r0, r1, r3
	ldr r1, [r0]
	ldr r0, _0802CB0C @ =0xFFFFC000
	cmp r1, r0
	bge _0802CB10
_0802CAF8:
	ldr r7, [sp]
	adds r2, r7, r4
	mov r0, ip
	adds r1, r0, r4
	movs r0, #0
	strh r0, [r1]
	strh r0, [r2]
	b _0802CB14
	.align 2, 0
_0802CB08: .4byte 0x00000242
_0802CB0C: .4byte 0xFFFFC000
_0802CB10:
	movs r1, #0
	mov sl, r1
_0802CB14:
	mov r7, sb
	adds r2, r7, r3
	ldr r1, [sp]
	adds r0, r1, r4
	movs r7, #0
	ldrsh r1, [r0, r7]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	mov r0, r8
	adds r2, r0, r3
	mov r1, ip
	adds r0, r1, r4
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #3
	bls _0802CAAA
	mov r4, sl
	cmp r4, #0
	beq _0802CB4C
	ldr r0, _0802CB5C @ =sub_0802D4F4
	str r0, [r5]
_0802CB4C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802CB5C: .4byte sub_0802D4F4

	thumb_func_start sub_0802CB60
sub_0802CB60: @ 0x0802CB60
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r1, _0802CC00 @ =gBldRegs
	movs r6, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	mov r0, sp
	ldr r1, _0802CC04 @ =0x00007FFF
	adds r4, r1, #0
	strh r4, [r0]
	ldr r1, _0802CC08 @ =gBgPalette
	ldr r5, _0802CC0C @ =0x01000100
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _0802CC10 @ =gObjPalette
	adds r2, r5, #0
	bl CpuSet
	ldr r2, _0802CC14 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r1, _0802CC18 @ =gUnk_0300000C
	movs r0, #1
	strh r0, [r1]
	ldr r1, _0802CC1C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0802CC20 @ =gUnk_03003A04
	ldr r0, _0802CC24 @ =gUnk_03003790
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0802CC28 @ =gUnk_030068B0
	strb r6, [r0]
	ldr r1, _0802CC2C @ =gUnk_03006078
	ldr r0, _0802CC30 @ =gUnk_030039A4
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, _0802CC34 @ =gUnk_0203AD2C
	ldrh r1, [r2]
	ldr r0, _0802CC38 @ =0x0000270E
	cmp r1, r0
	bhi _0802CC6A
	ldr r1, _0802CC3C @ =0x0000270F
	adds r0, r1, #0
	strh r0, [r2]
	ldr r0, _0802CC40 @ =gUnk_0203AD10
	ldr r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0802CC6A
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _0802CC58
	ldr r0, _0802CC44 @ =gUnk_0203AD3C
	ldr r1, _0802CC48 @ =gUnk_0203AD24
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0802CC50
	ldr r2, _0802CC4C @ =gUnk_0203AD48
	ldrh r0, [r2]
	movs r1, #0
	cmp r0, #2
	bhi _0802CBF6
	adds r1, r0, #0
_0802CBF6:
	movs r0, #1
	bl sub_0800ACD4
	b _0802CC6A
	.align 2, 0
_0802CC00: .4byte gBldRegs
_0802CC04: .4byte 0x00007FFF
_0802CC08: .4byte gBgPalette
_0802CC0C: .4byte 0x01000100
_0802CC10: .4byte gObjPalette
_0802CC14: .4byte gUnk_03002440
_0802CC18: .4byte gUnk_0300000C
_0802CC1C: .4byte 0x0000FFFF
_0802CC20: .4byte gUnk_03003A04
_0802CC24: .4byte gUnk_03003790
_0802CC28: .4byte gUnk_030068B0
_0802CC2C: .4byte gUnk_03006078
_0802CC30: .4byte gUnk_030039A4
_0802CC34: .4byte gUnk_0203AD2C
_0802CC38: .4byte 0x0000270E
_0802CC3C: .4byte 0x0000270F
_0802CC40: .4byte gUnk_0203AD10
_0802CC44: .4byte gUnk_0203AD3C
_0802CC48: .4byte gUnk_0203AD24
_0802CC4C: .4byte gUnk_0203AD48
_0802CC50:
	movs r0, #8
	bl sub_08031CE4
	b _0802CC6A
_0802CC58:
	ldr r2, _0802CC78 @ =gUnk_0203AD48
	ldrh r0, [r2]
	movs r1, #0
	cmp r0, #2
	bhi _0802CC64
	adds r1, r0, #0
_0802CC64:
	movs r0, #1
	bl sub_0800ACD4
_0802CC6A:
	bl sub_0814EBE4
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802CC78: .4byte gUnk_0203AD48

	thumb_func_start sub_0802CC7C
sub_0802CC7C: @ 0x0802CC7C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	ldr r2, _0802CD64 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0802CD68 @ =gBldRegs
	movs r6, #0
	movs r5, #0
	ldr r0, _0802CD6C @ =0x00001344
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1, #2]
	adds r4, r7, #4
	ldr r3, _0802CD70 @ =gUnk_082EB640
	adds r0, r7, #0
	adds r0, #0x4c
	ldrh r1, [r0]
	lsls r1, r1, #2
	ldr r0, _0802CD74 @ =gUnk_08D60A80
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r2, [r1]
	ldr r0, _0802CD78 @ =gBgScrollRegs
	strh r5, [r0, #8]
	strh r5, [r0, #0xa]
	ldr r1, _0802CD7C @ =gBgCntRegs
	movs r0, #0xe8
	lsls r0, r0, #5
	strh r0, [r1, #4]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	strh r5, [r4, #0xa]
	ldr r0, _0802CD80 @ =0x0600E800
	str r0, [r4, #0xc]
	strh r5, [r4, #0x18]
	strh r5, [r4, #0x1a]
	strh r2, [r4, #0x1c]
	strh r5, [r4, #0x1e]
	strh r5, [r4, #0x20]
	strh r5, [r4, #0x22]
	movs r1, #0xa
	strh r1, [r4, #0x24]
	movs r0, #0x1e
	strh r0, [r4, #0x26]
	strh r1, [r4, #0x28]
	adds r0, r7, #0
	adds r0, #0x2e
	strb r6, [r0]
	adds r0, #1
	strb r6, [r0]
	adds r0, #1
	strb r6, [r0]
	movs r0, #0x1a
	strh r0, [r4, #0x2e]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	ldr r0, _0802CD84 @ =0x00007FFF
	strh r0, [r4, #0x34]
	strh r0, [r4, #0x36]
	ldr r0, _0802CD88 @ =gUnk_082D7850
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r0, [r0, #8]
	ldr r1, [r4, #4]
	bl LZ77UnCompVram
	str r5, [sp]
	ldr r1, [r4, #4]
	ldr r0, _0802CD8C @ =0x00003FE0
	adds r1, r1, r0
	ldr r2, _0802CD90 @ =0x05000008
	mov r0, sp
	bl CpuSet
	add r0, sp, #4
	ldr r2, _0802CD94 @ =0x000001FF
	adds r1, r2, #0
	strh r1, [r0]
	ldr r1, [r4, #0xc]
	ldr r2, _0802CD98 @ =0x01000400
	bl CpuSet
	adds r0, r4, #0
	bl sub_08153060
	adds r0, r7, #0
	adds r0, #0x4a
	strh r5, [r0]
	ldr r1, [r7, #0x44]
	movs r3, #0x85
	lsls r3, r3, #2
	adds r1, r1, r3
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x16
	orrs r0, r2
	str r0, [r1]
	ldr r0, _0802CD9C @ =sub_0802CDA0
	str r0, [r7]
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802CD64: .4byte gDispCnt
_0802CD68: .4byte gBldRegs
_0802CD6C: .4byte 0x00001344
_0802CD70: .4byte gUnk_082EB640
_0802CD74: .4byte gUnk_08D60A80
_0802CD78: .4byte gBgScrollRegs
_0802CD7C: .4byte gBgCntRegs
_0802CD80: .4byte 0x0600E800
_0802CD84: .4byte 0x00007FFF
_0802CD88: .4byte gUnk_082D7850
_0802CD8C: .4byte 0x00003FE0
_0802CD90: .4byte 0x05000008
_0802CD94: .4byte 0x000001FF
_0802CD98: .4byte 0x01000400
_0802CD9C: .4byte sub_0802CDA0

	thumb_func_start sub_0802CDA0
sub_0802CDA0: @ 0x0802CDA0
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x4a
	ldrh r0, [r1]
	adds r2, r0, #1
	strh r2, [r1]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _0802CDE4
	ldr r1, _0802CDD8 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #2]
	ldr r1, [r3, #0x44]
	movs r0, #0x85
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _0802CDDC @ =0xDFFFFFFF
	ands r0, r2
	str r0, [r1]
	ldr r0, _0802CDE0 @ =sub_0802D898
	str r0, [r3]
	b _0802CDF0
	.align 2, 0
_0802CDD8: .4byte gBldRegs
_0802CDDC: .4byte 0xDFFFFFFF
_0802CDE0: .4byte sub_0802D898
_0802CDE4:
	ldr r1, _0802CDF4 @ =gBldRegs
	movs r0, #0x10
	subs r0, r0, r2
	lsls r0, r0, #8
	orrs r2, r0
	strh r2, [r1, #2]
_0802CDF0:
	pop {r0}
	bx r0
	.align 2, 0
_0802CDF4: .4byte gBldRegs

	thumb_func_start sub_0802CDF8
sub_0802CDF8: @ 0x0802CDF8
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x4a
	ldrh r0, [r1]
	adds r2, r0, #1
	strh r2, [r1]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _0802CE50
	ldr r2, _0802CE3C @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0802CE40 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _0802CE44 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1, #2]
	ldr r1, [r3, #0x44]
	movs r0, #0x85
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _0802CE48 @ =0xDFFFFFFF
	ands r0, r2
	str r0, [r1]
	ldr r0, _0802CE4C @ =sub_0802D92C
	str r0, [r3]
	b _0802CE5C
	.align 2, 0
_0802CE3C: .4byte gDispCnt
_0802CE40: .4byte 0x0000FBFF
_0802CE44: .4byte gBldRegs
_0802CE48: .4byte 0xDFFFFFFF
_0802CE4C: .4byte sub_0802D92C
_0802CE50:
	ldr r0, _0802CE60 @ =gBldRegs
	movs r1, #0x10
	subs r1, r1, r2
	lsls r2, r2, #8
	orrs r1, r2
	strh r1, [r0, #2]
_0802CE5C:
	pop {r0}
	bx r0
	.align 2, 0
_0802CE60: .4byte gBldRegs

	thumb_func_start sub_0802CE64
sub_0802CE64: @ 0x0802CE64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	str r3, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x34]
	ldr r4, [sp, #0x38]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	ldr r0, _0802CEBC @ =sub_0802CF2C
	ldr r2, _0802CEC0 @ =0x00000101
	movs r1, #0
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802CEC4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0802CECC
	.align 2, 0
_0802CEBC: .4byte sub_0802CF2C
_0802CEC0: .4byte 0x00000101
_0802CEC4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0802CECC:
	mov r0, sb
	str r0, [r4, #0x28]
	ldr r1, [sp, #0x28]
	str r1, [r4, #0x2c]
	ldr r0, [sp, #0x2c]
	str r0, [r4, #0x30]
	movs r1, #0
	strh r7, [r4, #0x34]
	strh r6, [r4, #0x36]
	strh r5, [r4, #0x38]
	ldr r0, [sp, #4]
	str r0, [r4]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r4, #0x14]
	mov r0, sl
	strh r0, [r4, #0xc]
	mov r0, r8
	strb r0, [r4, #0x1a]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r0, #0xd
	strb r0, [r4, #0x1f]
	ldr r1, [sp, #0x28]
	asrs r0, r1, #8
	strh r0, [r4, #0x10]
	ldr r1, [sp, #0x2c]
	asrs r0, r1, #8
	strh r0, [r4, #0x12]
	movs r0, #0x81
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802CF2C
sub_0802CF2C: @ 0x0802CF2C
	push {r4, r5, lr}
	ldr r0, _0802CF48 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802CF4C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0802CF54
	.align 2, 0
_0802CF48: .4byte gCurTask
_0802CF4C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0802CF54:
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r1, [r4, #0x28]
	movs r0, #0xad
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r4, #0x2c]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0802CF7E
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_0802CF7E:
	adds r0, r4, #0
	bl sub_0815604C
	movs r0, #0x34
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x2c]
	adds r0, r0, r1
	str r0, [r4, #0x2c]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x30]
	adds r0, r0, r1
	str r0, [r4, #0x30]
	ldrh r0, [r4, #0x38]
	cmp r0, #0
	beq _0802CFA8
	subs r0, #1
	strh r0, [r4, #0x38]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802CFDA
_0802CFA8:
	ldrh r0, [r5, #0x10]
	adds r0, #0x40
	lsls r0, r0, #0x10
	movs r1, #0xb8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0802CFDA
	movs r0, #0x12
	ldrsh r1, [r5, r0]
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r1, r0
	blt _0802CFDA
	cmp r1, #0xe0
	bgt _0802CFDA
	ldr r0, [r4, #0x28]
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ands r0, r1
	cmp r0, #0
	beq _0802CFE2
_0802CFDA:
	ldr r0, _0802CFE8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802CFEC @ =sub_0802D528
	str r0, [r1, #8]
_0802CFE2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802CFE8: .4byte gCurTask
_0802CFEC: .4byte sub_0802D528

	thumb_func_start sub_0802CFF0
sub_0802CFF0: @ 0x0802CFF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	str r3, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x34]
	ldr r4, [sp, #0x38]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	ldr r0, _0802D048 @ =sub_0802D0B8
	ldr r2, _0802D04C @ =0x00000101
	movs r1, #0
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802D050
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0802D058
	.align 2, 0
_0802D048: .4byte sub_0802D0B8
_0802D04C: .4byte 0x00000101
_0802D050:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0802D058:
	mov r0, sb
	str r0, [r4, #0x28]
	ldr r1, [sp, #0x28]
	str r1, [r4, #0x2c]
	ldr r0, [sp, #0x2c]
	str r0, [r4, #0x30]
	movs r1, #0
	strh r7, [r4, #0x34]
	strh r6, [r4, #0x36]
	strh r5, [r4, #0x38]
	ldr r0, [sp, #4]
	str r0, [r4]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r4, #0x14]
	mov r0, sl
	strh r0, [r4, #0xc]
	mov r0, r8
	strb r0, [r4, #0x1a]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r0, #0xd
	strb r0, [r4, #0x1f]
	ldr r1, [sp, #0x28]
	asrs r0, r1, #8
	strh r0, [r4, #0x10]
	ldr r1, [sp, #0x2c]
	asrs r0, r1, #8
	strh r0, [r4, #0x12]
	movs r0, #0x81
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802D0B8
sub_0802D0B8: @ 0x0802D0B8
	push {r4, r5, lr}
	ldr r0, _0802D0D4 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802D0D8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0802D0E0
	.align 2, 0
_0802D0D4: .4byte gCurTask
_0802D0D8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0802D0E0:
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r1, [r4, #0x28]
	movs r0, #0xad
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r4, #0x2c]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0802D12C
	ldrh r0, [r4, #0x38]
	cmp r0, #0
	beq _0802D128
	subs r0, #1
	strh r0, [r4, #0x38]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802D128
	ldr r0, _0802D120 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802D124 @ =sub_0802D53C
	str r0, [r1, #8]
	b _0802D12C
	.align 2, 0
_0802D120: .4byte gCurTask
_0802D124: .4byte sub_0802D53C
_0802D128:
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_0802D12C:
	adds r0, r5, #0
	bl sub_0815604C
	movs r0, #0x34
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x2c]
	adds r0, r0, r1
	str r0, [r4, #0x2c]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x30]
	adds r0, r0, r1
	str r0, [r4, #0x30]
	ldrh r0, [r5, #0x10]
	adds r0, #0x40
	lsls r0, r0, #0x10
	movs r1, #0xb8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0802D164
	movs r0, #0x12
	ldrsh r1, [r5, r0]
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r1, r0
	blt _0802D164
	cmp r1, #0xe0
	ble _0802D16C
_0802D164:
	ldr r0, _0802D190 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802D194 @ =sub_0802D53C
	str r0, [r1, #8]
_0802D16C:
	ldr r0, [r4, #0x28]
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ands r0, r1
	cmp r0, #0
	beq _0802D188
	ldr r0, _0802D190 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802D194 @ =sub_0802D53C
	str r0, [r1, #8]
_0802D188:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802D190: .4byte gCurTask
_0802D194: .4byte sub_0802D53C

	thumb_func_start sub_0802D198
sub_0802D198: @ 0x0802D198
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	mov sl, r3
	ldr r0, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r3, r3, #0x10
	lsrs r4, r3, #0x10
	ldr r0, _0802D1E8 @ =sub_0802D288
	ldr r2, _0802D1EC @ =0x00000101
	movs r1, #0
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802D1F0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r6, r0, r1
	b _0802D1F8
	.align 2, 0
_0802D1E8: .4byte sub_0802D288
_0802D1EC: .4byte 0x00000101
_0802D1F0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
_0802D1F8:
	str r5, [r6, #0x28]
	ldr r0, [sp, #0x24]
	str r0, [r6, #0x2c]
	ldr r1, [sp, #0x28]
	str r1, [r6, #0x30]
	movs r5, #0
	strh r7, [r6, #0x34]
	strh r4, [r6, #0x36]
	ldr r2, _0802D27C @ =gRngVal
	ldr r0, [r2]
	ldr r4, _0802D280 @ =0x00196225
	adds r1, r0, #0
	muls r1, r4, r1
	ldr r3, _0802D284 @ =0x3C6EF35F
	adds r1, r1, r3
	str r1, [r2]
	lsls r0, r1, #6
	lsrs r0, r0, #0x16
	strh r0, [r6, #0x38]
	adds r0, r1, #0
	muls r0, r4, r0
	adds r0, r0, r3
	str r0, [r2]
	lsls r0, r0, #5
	lsrs r0, r0, #0x15
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	strh r0, [r6, #0x3a]
	mov r0, sl
	str r0, [r6]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r6, #0x14]
	mov r1, sb
	strh r1, [r6, #0xc]
	mov r0, r8
	strb r0, [r6, #0x1a]
	strh r5, [r6, #0x16]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	movs r0, #0xd
	strb r0, [r6, #0x1f]
	ldr r1, [sp, #0x24]
	asrs r0, r1, #8
	strh r0, [r6, #0x10]
	ldr r1, [sp, #0x28]
	asrs r0, r1, #8
	strh r0, [r6, #0x12]
	movs r0, #0x81
	lsls r0, r0, #0xc
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_08155128
	adds r0, r6, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802D27C: .4byte gRngVal
_0802D280: .4byte 0x00196225
_0802D284: .4byte 0x3C6EF35F

	thumb_func_start sub_0802D288
sub_0802D288: @ 0x0802D288
	push {r4, lr}
	ldr r0, _0802D2A4 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802D2A8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0802D2B0
	.align 2, 0
_0802D2A4: .4byte gCurTask
_0802D2A8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0802D2B0:
	adds r4, r0, #0
	ldr r1, _0802D350 @ =gSineTable
	ldrh r0, [r4, #0x38]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	movs r2, #0x3a
	ldrsh r1, [r4, r2]
	muls r1, r0, r1
	asrs r1, r1, #8
	ldr r0, [r4, #0x2c]
	adds r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0802D2E4
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_0802D2E4:
	adds r0, r4, #0
	bl sub_0815604C
	movs r0, #0x34
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x2c]
	adds r0, r0, r1
	str r0, [r4, #0x2c]
	movs r2, #0x36
	ldrsh r1, [r4, r2]
	ldr r0, [r4, #0x30]
	adds r0, r0, r1
	str r0, [r4, #0x30]
	ldrh r0, [r4, #0x38]
	adds r0, #8
	ldr r1, _0802D354 @ =0x000003FF
	ands r0, r1
	strh r0, [r4, #0x38]
	ldrh r0, [r4, #0x10]
	adds r0, #0x40
	lsls r0, r0, #0x10
	movs r1, #0xb8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0802D326
	movs r0, #0x12
	ldrsh r1, [r4, r0]
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r1, r0
	blt _0802D326
	cmp r1, #0xe0
	ble _0802D32E
_0802D326:
	ldr r0, _0802D358 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802D35C @ =sub_0802D550
	str r0, [r1, #8]
_0802D32E:
	ldr r0, [r4, #0x28]
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ands r0, r1
	cmp r0, #0
	beq _0802D34A
	ldr r0, _0802D358 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802D35C @ =sub_0802D550
	str r0, [r1, #8]
_0802D34A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802D350: .4byte gSineTable
_0802D354: .4byte 0x000003FF
_0802D358: .4byte gCurTask
_0802D35C: .4byte sub_0802D550

	thumb_func_start sub_0802D360
sub_0802D360: @ 0x0802D360
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802D37A
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0802D382
_0802D37A:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0802D382:
	adds r5, r0, #0
	movs r4, #0
	adds r6, r5, #4
_0802D388:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r6, r0
	ldr r0, [r0]
	bl VramFree
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _0802D388
	adds r0, r5, #0
	adds r0, #0xcc
	ldr r0, [r0]
	bl VramFree
	adds r0, r5, #0
	adds r0, #0xf4
	ldr r0, [r0]
	bl VramFree
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	bl VramFree
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	bl VramFree
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	bl VramFree
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802D3E0
sub_0802D3E0: @ 0x0802D3E0
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0802D3F0 @ =sub_0802BF68
	str r1, [r0]
	bx lr
	.align 2, 0
_0802D3F0: .4byte sub_0802BF68

	thumb_func_start sub_0802D3F4
sub_0802D3F4: @ 0x0802D3F4
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0802D404 @ =sub_0802D564
	str r1, [r0]
	bx lr
	.align 2, 0
_0802D404: .4byte sub_0802D564

	thumb_func_start sub_0802D408
sub_0802D408: @ 0x0802D408
	adds r3, r0, #0
	movs r0, #0x85
	lsls r0, r0, #2
	adds r2, r3, r0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r2]
	movs r0, #0xaf
	lsls r0, r0, #2
	adds r1, r3, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0802D42C @ =sub_0802D588
	str r0, [r3]
	bx lr
	.align 2, 0
_0802D42C: .4byte sub_0802D588

	thumb_func_start sub_0802D430
sub_0802D430: @ 0x0802D430
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0802D440 @ =sub_0802D5B0
	str r1, [r0]
	bx lr
	.align 2, 0
_0802D440: .4byte sub_0802D5B0

	thumb_func_start sub_0802D444
sub_0802D444: @ 0x0802D444
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0802D454 @ =sub_0802D738
	str r1, [r0]
	bx lr
	.align 2, 0
_0802D454: .4byte sub_0802D738

	thumb_func_start sub_0802D458
sub_0802D458: @ 0x0802D458
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0802D468 @ =sub_0802D75C
	str r1, [r0]
	bx lr
	.align 2, 0
_0802D468: .4byte sub_0802D75C

	thumb_func_start sub_0802D46C
sub_0802D46C: @ 0x0802D46C
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0802D47C @ =sub_0802D7DC
	str r1, [r0]
	bx lr
	.align 2, 0
_0802D47C: .4byte sub_0802D7DC

	thumb_func_start sub_0802D480
sub_0802D480: @ 0x0802D480
	push {r4, lr}
	ldr r2, _0802D4C4 @ =gBgPalette
	movs r4, #0
	ldr r1, _0802D4C8 @ =0x00007FFF
	strh r1, [r2]
	ldr r3, _0802D4CC @ =gUnk_03002440
	ldr r1, [r3]
	movs r2, #1
	orrs r1, r2
	str r1, [r3]
	ldr r2, _0802D4D0 @ =gDispCnt
	movs r3, #0x82
	lsls r3, r3, #5
	adds r1, r3, #0
	strh r1, [r2]
	ldr r1, _0802D4D4 @ =gBldRegs
	strh r4, [r1]
	strh r4, [r1, #4]
	movs r1, #0x85
	lsls r1, r1, #2
	adds r3, r0, r1
	ldr r1, [r3]
	ldr r2, _0802D4D8 @ =0xFBF7FFFF
	ands r1, r2
	movs r2, #0x84
	lsls r2, r2, #0x15
	orrs r1, r2
	str r1, [r3]
	ldr r1, _0802D4DC @ =sub_0802D4E0
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802D4C4: .4byte gBgPalette
_0802D4C8: .4byte 0x00007FFF
_0802D4CC: .4byte gUnk_03002440
_0802D4D0: .4byte gDispCnt
_0802D4D4: .4byte gBldRegs
_0802D4D8: .4byte 0xFBF7FFFF
_0802D4DC: .4byte sub_0802D4E0

	thumb_func_start sub_0802D4E0
sub_0802D4E0: @ 0x0802D4E0
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0802D4F0 @ =sub_0802D824
	str r1, [r0]
	bx lr
	.align 2, 0
_0802D4F0: .4byte sub_0802D824

	thumb_func_start sub_0802D4F4
sub_0802D4F4: @ 0x0802D4F4
	adds r3, r0, #0
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r3, r1
	movs r2, #0
	strh r2, [r0]
	ldr r1, _0802D520 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #4]
	movs r0, #0x85
	lsls r0, r0, #2
	adds r2, r3, r0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r2]
	ldr r0, _0802D524 @ =sub_0802D84C
	str r0, [r3]
	bx lr
	.align 2, 0
_0802D520: .4byte gBldRegs
_0802D524: .4byte sub_0802D84C

	thumb_func_start sub_0802D528
sub_0802D528: @ 0x0802D528
	push {lr}
	ldr r0, _0802D538 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_0802D538: .4byte gCurTask

	thumb_func_start sub_0802D53C
sub_0802D53C: @ 0x0802D53C
	push {lr}
	ldr r0, _0802D54C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_0802D54C: .4byte gCurTask

	thumb_func_start sub_0802D550
sub_0802D550: @ 0x0802D550
	push {lr}
	ldr r0, _0802D560 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_0802D560: .4byte gCurTask

	thumb_func_start sub_0802D564
sub_0802D564: @ 0x0802D564
	push {lr}
	adds r3, r0, #0
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x3c
	bls _0802D580
	ldr r0, _0802D584 @ =sub_0802D9B8
	str r0, [r3]
_0802D580:
	pop {r0}
	bx r0
	.align 2, 0
_0802D584: .4byte sub_0802D9B8

	thumb_func_start sub_0802D588
sub_0802D588: @ 0x0802D588
	push {lr}
	adds r3, r0, #0
	movs r0, #0xaf
	lsls r0, r0, #2
	adds r2, r3, r0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xb4
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _0802D5A6
	ldr r0, _0802D5AC @ =sub_0802D9F4
	str r0, [r3]
_0802D5A6:
	pop {r0}
	bx r0
	.align 2, 0
_0802D5AC: .4byte sub_0802D9F4

	thumb_func_start sub_0802D5B0
sub_0802D5B0: @ 0x0802D5B0
	push {lr}
	adds r3, r0, #0
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x3c
	bls _0802D5CC
	ldr r0, _0802D5D0 @ =sub_0802DA54
	str r0, [r3]
_0802D5CC:
	pop {r0}
	bx r0
	.align 2, 0
_0802D5D0: .4byte sub_0802DA54

	thumb_func_start sub_0802D5D4
sub_0802D5D4: @ 0x0802D5D4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r2, #0
	strh r2, [r0]
	ldr r1, _0802D60C @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #4]
	ldr r0, _0802D610 @ =0x00000213
	bl m4aSongNumStart
	movs r0, #0x85
	lsls r0, r0, #2
	adds r2, r4, r0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r2]
	ldr r0, _0802D614 @ =sub_0802D618
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802D60C: .4byte gBldRegs
_0802D610: .4byte 0x00000213
_0802D614: .4byte sub_0802D618

	thumb_func_start sub_0802D618
sub_0802D618: @ 0x0802D618
	push {lr}
	adds r3, r0, #0
	movs r0, #0xaf
	lsls r0, r0, #2
	adds r1, r3, r0
	ldrh r0, [r1]
	adds r2, r0, #1
	strh r2, [r1]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _0802D658
	ldr r1, _0802D64C @ =gBldRegs
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x85
	lsls r0, r0, #2
	adds r2, r3, r0
	ldr r0, [r2]
	ldr r1, _0802D650 @ =0xDFFFFFFF
	ands r0, r1
	str r0, [r2]
	ldr r0, _0802D654 @ =sub_0802D664
	str r0, [r3]
	b _0802D65C
	.align 2, 0
_0802D64C: .4byte gBldRegs
_0802D650: .4byte 0xDFFFFFFF
_0802D654: .4byte sub_0802D664
_0802D658:
	ldr r0, _0802D660 @ =gBldRegs
	strh r2, [r0, #4]
_0802D65C:
	pop {r0}
	bx r0
	.align 2, 0
_0802D660: .4byte gBldRegs

	thumb_func_start sub_0802D664
sub_0802D664: @ 0x0802D664
	push {r4, r5, lr}
	movs r2, #0xaf
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r3, #0
	strh r3, [r1]
	ldr r5, _0802D6AC @ =0x000002BE
	adds r4, r0, r5
	ldrh r2, [r4]
	lsls r2, r2, #2
	subs r5, #0x7e
	adds r1, r0, r5
	adds r1, r1, r2
	strh r3, [r1]
	ldrh r2, [r4]
	lsls r2, r2, #2
	adds r5, #2
	adds r1, r0, r5
	adds r1, r1, r2
	strh r3, [r1]
	movs r1, #0x85
	lsls r1, r1, #2
	adds r3, r0, r1
	ldrh r2, [r4]
	lsls r1, r2, #1
	adds r1, r1, r2
	movs r2, #7
	lsls r2, r1
	ldr r1, [r3]
	bics r1, r2
	str r1, [r3]
	ldr r1, _0802D6B0 @ =sub_0802D6B4
	str r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802D6AC: .4byte 0x000002BE
_0802D6B0: .4byte sub_0802D6B4

	thumb_func_start sub_0802D6B4
sub_0802D6B4: @ 0x0802D6B4
	push {lr}
	adds r3, r0, #0
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x3c
	bls _0802D6D0
	ldr r0, _0802D6D4 @ =sub_0802D6D8
	str r0, [r3]
_0802D6D0:
	pop {r0}
	bx r0
	.align 2, 0
_0802D6D4: .4byte sub_0802D6D8

	thumb_func_start sub_0802D6D8
sub_0802D6D8: @ 0x0802D6D8
	adds r3, r0, #0
	movs r0, #0xaf
	lsls r0, r0, #2
	adds r1, r3, r0
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0802D700 @ =gBldRegs
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x85
	lsls r0, r0, #2
	adds r2, r3, r0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r2]
	ldr r0, _0802D704 @ =sub_0802C308
	str r0, [r3]
	bx lr
	.align 2, 0
_0802D700: .4byte gBldRegs
_0802D704: .4byte sub_0802C308

	thumb_func_start sub_0802D708
sub_0802D708: @ 0x0802D708
	push {lr}
	adds r2, r0, #0
	ldr r0, _0802D724 @ =0x000002BE
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bhi _0802D72C
	ldr r0, _0802D728 @ =sub_0802C1D8
	b _0802D72E
	.align 2, 0
_0802D724: .4byte 0x000002BE
_0802D728: .4byte sub_0802C1D8
_0802D72C:
	ldr r0, _0802D734 @ =sub_0802DAA0
_0802D72E:
	str r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0802D734: .4byte sub_0802DAA0

	thumb_func_start sub_0802D738
sub_0802D738: @ 0x0802D738
	push {lr}
	adds r3, r0, #0
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x78
	bls _0802D754
	ldr r0, _0802D758 @ =sub_0802C3C8
	str r0, [r3]
_0802D754:
	pop {r0}
	bx r0
	.align 2, 0
_0802D758: .4byte sub_0802C3C8

	thumb_func_start sub_0802D75C
sub_0802D75C: @ 0x0802D75C
	push {lr}
	adds r3, r0, #0
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x3c
	bls _0802D778
	ldr r0, _0802D77C @ =sub_0802C550
	str r0, [r3]
_0802D778:
	pop {r0}
	bx r0
	.align 2, 0
_0802D77C: .4byte sub_0802C550

	thumb_func_start sub_0802D780
sub_0802D780: @ 0x0802D780
	push {r4, lr}
	adds r3, r0, #0
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r4, r3, r0
	ldr r1, [r4]
	movs r0, #0xc8
	lsls r0, r0, #8
	cmp r1, r0
	ble _0802D7B0
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r3, r0
	movs r0, #0
	str r0, [r1]
	movs r0, #0x85
	lsls r0, r0, #2
	adds r2, r3, r0
	ldr r0, [r2]
	ldr r1, _0802D7D4 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r2]
	ldr r0, _0802D7D8 @ =sub_0802DAB4
	str r0, [r3]
_0802D7B0:
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, [r1]
	adds r0, #0x40
	str r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #3
	cmp r0, r2
	ble _0802D7C6
	str r2, [r1]
_0802D7C6:
	ldr r0, [r4]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802D7D4: .4byte 0xFFF7FFFF
_0802D7D8: .4byte sub_0802DAB4

	thumb_func_start sub_0802D7DC
sub_0802D7DC: @ 0x0802D7DC
	push {lr}
	adds r3, r0, #0
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x3c
	bls _0802D7F8
	ldr r0, _0802D7FC @ =sub_0802DAC8
	str r0, [r3]
_0802D7F8:
	pop {r0}
	bx r0
	.align 2, 0
_0802D7FC: .4byte sub_0802DAC8

	thumb_func_start sub_0802D800
sub_0802D800: @ 0x0802D800
	push {lr}
	adds r3, r0, #0
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x3c
	bls _0802D81C
	ldr r0, _0802D820 @ =sub_0802DB00
	str r0, [r3]
_0802D81C:
	pop {r0}
	bx r0
	.align 2, 0
_0802D820: .4byte sub_0802DB00

	thumb_func_start sub_0802D824
sub_0802D824: @ 0x0802D824
	push {lr}
	adds r3, r0, #0
	movs r0, #0xaf
	lsls r0, r0, #2
	adds r2, r3, r0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xf0
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _0802D842
	ldr r0, _0802D848 @ =sub_0802C8E8
	str r0, [r3]
_0802D842:
	pop {r0}
	bx r0
	.align 2, 0
_0802D848: .4byte sub_0802C8E8

	thumb_func_start sub_0802D84C
sub_0802D84C: @ 0x0802D84C
	push {lr}
	adds r3, r0, #0
	movs r0, #0xaf
	lsls r0, r0, #2
	adds r1, r3, r0
	ldrh r0, [r1]
	adds r2, r0, #1
	strh r2, [r1]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _0802D88C
	ldr r1, _0802D880 @ =gBldRegs
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x85
	lsls r0, r0, #2
	adds r2, r3, r0
	ldr r0, [r2]
	ldr r1, _0802D884 @ =0xDFFFFFFF
	ands r0, r1
	str r0, [r2]
	ldr r0, _0802D888 @ =sub_0802DB34
	str r0, [r3]
	b _0802D890
	.align 2, 0
_0802D880: .4byte gBldRegs
_0802D884: .4byte 0xDFFFFFFF
_0802D888: .4byte sub_0802DB34
_0802D88C:
	ldr r0, _0802D894 @ =gBldRegs
	strh r2, [r0, #4]
_0802D890:
	pop {r0}
	bx r0
	.align 2, 0
_0802D894: .4byte gBldRegs

	thumb_func_start sub_0802D898
sub_0802D898: @ 0x0802D898
	adds r2, r0, #0
	adds r2, #0x4a
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0802D8A8 @ =sub_0802D8AC
	str r1, [r0]
	bx lr
	.align 2, 0
_0802D8A8: .4byte sub_0802D8AC

	thumb_func_start sub_0802D8AC
sub_0802D8AC: @ 0x0802D8AC
	push {lr}
	mov ip, r0
	ldr r3, _0802D8E8 @ =gUnk_082EB640
	adds r0, #0x4c
	ldrh r2, [r0]
	lsls r2, r2, #2
	ldr r0, _0802D8EC @ =gUnk_08D60A80
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, r2, r0
	adds r3, #2
	adds r2, r2, r3
	mov r3, ip
	adds r3, #0x4a
	ldrh r0, [r3]
	adds r1, r0, #1
	strh r1, [r3]
	ldrh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bhs _0802D8E2
	ldr r0, _0802D8F0 @ =sub_0802D8F4
	mov r1, ip
	str r0, [r1]
_0802D8E2:
	pop {r0}
	bx r0
	.align 2, 0
_0802D8E8: .4byte gUnk_082EB640
_0802D8EC: .4byte gUnk_08D60A80
_0802D8F0: .4byte sub_0802D8F4

	thumb_func_start sub_0802D8F4
sub_0802D8F4: @ 0x0802D8F4
	ldr r2, _0802D920 @ =gBldRegs
	movs r3, #0
	ldr r1, _0802D924 @ =0x00001344
	strh r1, [r2]
	movs r1, #0x10
	strh r1, [r2, #2]
	adds r1, r0, #0
	adds r1, #0x4a
	strh r3, [r1]
	ldr r2, [r0, #0x44]
	movs r1, #0x85
	lsls r1, r1, #2
	adds r2, r2, r1
	ldr r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #0x16
	orrs r1, r3
	str r1, [r2]
	ldr r1, _0802D928 @ =sub_0802CDF8
	str r1, [r0]
	bx lr
	.align 2, 0
_0802D920: .4byte gBldRegs
_0802D924: .4byte 0x00001344
_0802D928: .4byte sub_0802CDF8

	thumb_func_start sub_0802D92C
sub_0802D92C: @ 0x0802D92C
	adds r2, r0, #0
	adds r2, #0x4a
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0802D93C @ =sub_0802D940
	str r1, [r0]
	bx lr
	.align 2, 0
_0802D93C: .4byte sub_0802D940

	thumb_func_start sub_0802D940
sub_0802D940: @ 0x0802D940
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x4a
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bls _0802D95A
	ldr r0, _0802D960 @ =sub_0802D964
	str r0, [r3]
_0802D95A:
	pop {r0}
	bx r0
	.align 2, 0
_0802D960: .4byte sub_0802D964

	thumb_func_start sub_0802D964
sub_0802D964: @ 0x0802D964
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x4c
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bhi _0802D984
	ldr r0, _0802D980 @ =sub_0802CC7C
	b _0802D998
	.align 2, 0
_0802D980: .4byte sub_0802CC7C
_0802D984:
	ldr r1, [r3, #0x44]
	movs r0, #0x85
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x12
	orrs r0, r2
	str r0, [r1]
	ldr r0, _0802D9A0 @ =sub_0802D9A4
_0802D998:
	str r0, [r3]
	pop {r0}
	bx r0
	.align 2, 0
_0802D9A0: .4byte sub_0802D9A4

	thumb_func_start sub_0802D9A4
sub_0802D9A4: @ 0x0802D9A4
	push {lr}
	ldr r0, _0802D9B4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_0802D9B4: .4byte gCurTask

	thumb_func_start sub_0802D9B8
sub_0802D9B8: @ 0x0802D9B8
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r2, #0
	movs r0, #0x90
	lsls r0, r0, #2
	adds r3, r4, r0
	ldr r5, _0802D9EC @ =gUnk_082EB514
_0802D9C6:
	lsls r1, r2, #2
	adds r1, r3, r1
	lsls r0, r2, #3
	adds r0, r0, r5
	ldr r0, [r0]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #3
	bls _0802D9C6
	adds r0, r4, #0
	bl sub_0802DB48
	ldr r0, _0802D9F0 @ =sub_0802BFBC
	str r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802D9EC: .4byte gUnk_082EB514
_0802D9F0: .4byte sub_0802BFBC

	thumb_func_start sub_0802D9F4
sub_0802D9F4: @ 0x0802D9F4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	movs r4, #0
	ldr r0, _0802DA48 @ =sub_0802C064
	mov sb, r0
	movs r0, #0x90
	lsls r0, r0, #2
	adds r0, r0, r5
	mov ip, r0
	ldr r6, _0802DA4C @ =gUnk_082EB564
	ldr r0, _0802DA50 @ =0x00000242
	adds r7, r5, r0
	adds r0, r6, #4
	mov r8, r0
_0802DA16:
	lsls r2, r4, #2
	mov r0, ip
	adds r3, r0, r2
	lsls r1, r4, #3
	adds r0, r1, r6
	ldr r0, [r0]
	strh r0, [r3]
	adds r2, r7, r2
	add r1, r8
	ldr r0, [r1]
	strh r0, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _0802DA16
	mov r0, sb
	str r0, [r5]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802DA48: .4byte sub_0802C064
_0802DA4C: .4byte gUnk_082EB564
_0802DA50: .4byte 0x00000242

	thumb_func_start sub_0802DA54
sub_0802DA54: @ 0x0802DA54
	adds r3, r0, #0
	movs r0, #0x9d
	lsls r0, r0, #2
	adds r1, r3, r0
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r1]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r3, r0
	movs r0, #0xb4
	lsls r0, r0, #8
	str r0, [r1]
	movs r0, #0x9f
	lsls r0, r0, #2
	adds r1, r3, r0
	movs r0, #0
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, _0802DA98 @ =0xFFFFFF00
	str r0, [r1]
	movs r0, #0x85
	lsls r0, r0, #2
	adds r2, r3, r0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r2]
	ldr r0, _0802DA9C @ =sub_0802DBC0
	str r0, [r3]
	bx lr
	.align 2, 0
_0802DA98: .4byte 0xFFFFFF00
_0802DA9C: .4byte sub_0802DBC0

	thumb_func_start sub_0802DAA0
sub_0802DAA0: @ 0x0802DAA0
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0802DAB0 @ =sub_0802DC10
	str r1, [r0]
	bx lr
	.align 2, 0
_0802DAB0: .4byte sub_0802DC10

	thumb_func_start sub_0802DAB4
sub_0802DAB4: @ 0x0802DAB4
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0802DAC4 @ =sub_0802DC34
	str r1, [r0]
	bx lr
	.align 2, 0
_0802DAC4: .4byte sub_0802DC34

	thumb_func_start sub_0802DAC8
sub_0802DAC8: @ 0x0802DAC8
	adds r3, r0, #0
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, _0802DAF4 @ =0xFFFFF000
	str r0, [r1]
	movs r0, #0x85
	lsls r0, r0, #2
	adds r2, r3, r0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r2]
	ldr r0, _0802DAF8 @ =0x0000015F
	adds r1, r3, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0802DAFC @ =sub_0802DC58
	str r0, [r3]
	bx lr
	.align 2, 0
_0802DAF4: .4byte 0xFFFFF000
_0802DAF8: .4byte 0x0000015F
_0802DAFC: .4byte sub_0802DC58

	thumb_func_start sub_0802DB00
sub_0802DB00: @ 0x0802DB00
	adds r3, r0, #0
	movs r0, #0xaf
	lsls r0, r0, #2
	adds r1, r3, r0
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0802DB2C @ =gBldRegs
	movs r0, #0xaf
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x85
	lsls r0, r0, #2
	adds r2, r3, r0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r2]
	ldr r0, _0802DB30 @ =sub_0802DCC4
	str r0, [r3]
	bx lr
	.align 2, 0
_0802DB2C: .4byte gBldRegs
_0802DB30: .4byte sub_0802DCC4

	thumb_func_start sub_0802DB34
sub_0802DB34: @ 0x0802DB34
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0802DB44 @ =sub_0802DD18
	str r1, [r0]
	bx lr
	.align 2, 0
_0802DB44: .4byte sub_0802DD18

	thumb_func_start sub_0802DB48
sub_0802DB48: @ 0x0802DB48
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0x85
	lsls r0, r0, #2
	adds r2, r5, r0
	ldr r0, [r2]
	ldr r1, _0802DB84 @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r2]
	ldr r0, _0802DB88 @ =sub_0802DD3C
	ldr r2, _0802DB8C @ =0x00000101
	movs r1, #0
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802DB90
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0802DB98
	.align 2, 0
_0802DB84: .4byte 0xFDFFFFFF
_0802DB88: .4byte sub_0802DD3C
_0802DB8C: .4byte 0x00000101
_0802DB90:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0802DB98:
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0802DBB8 @ =0x01000028
	adds r0, r1, #0
	adds r1, r4, #0
	bl CpuSet
	str r5, [r4, #0x44]
	ldr r0, _0802DBBC @ =sub_0802DD94
	str r0, [r4]
	adds r0, r4, #0
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802DBB8: .4byte 0x01000028
_0802DBBC: .4byte sub_0802DD94

	thumb_func_start sub_0802DBC0
sub_0802DBC0: @ 0x0802DBC0
	push {lr}
	adds r3, r0, #0
	movs r1, #0x9e
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r1, [r0]
	ldr r0, _0802DBEC @ =0x000063FF
	cmp r1, r0
	bgt _0802DBF4
	movs r0, #0xa0
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0802DBF0
	adds r0, #4
	str r0, [r1]
	cmp r0, #0
	ble _0802DBF4
	movs r0, #0
	str r0, [r1]
	b _0802DBF4
	.align 2, 0
_0802DBEC: .4byte 0x000063FF
_0802DBF0:
	ldr r0, _0802DC0C @ =sub_0802DDA0
	str r0, [r3]
_0802DBF4:
	movs r1, #0x9e
	lsls r1, r1, #2
	adds r2, r3, r1
	movs r0, #0xa0
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0802DC0C: .4byte sub_0802DDA0

	thumb_func_start sub_0802DC10
sub_0802DC10: @ 0x0802DC10
	push {lr}
	adds r3, r0, #0
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x3c
	bls _0802DC2C
	ldr r0, _0802DC30 @ =sub_0802DDB4
	str r0, [r3]
_0802DC2C:
	pop {r0}
	bx r0
	.align 2, 0
_0802DC30: .4byte sub_0802DDB4

	thumb_func_start sub_0802DC34
sub_0802DC34: @ 0x0802DC34
	push {lr}
	adds r3, r0, #0
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x3c
	bls _0802DC50
	ldr r0, _0802DC54 @ =sub_0802DDC0
	str r0, [r3]
_0802DC50:
	pop {r0}
	bx r0
	.align 2, 0
_0802DC54: .4byte sub_0802DDC0

	thumb_func_start sub_0802DC58
sub_0802DC58: @ 0x0802DC58
	push {r4, lr}
	adds r3, r0, #0
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, [r1]
	adds r0, #8
	str r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #4
	cmp r0, r2
	ble _0802DC72
	str r2, [r1]
_0802DC72:
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r2, r3, r0
	ldr r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #8
	cmp r0, r4
	ble _0802DC8C
	movs r0, #0
	str r0, [r1]
	str r4, [r2]
	ldr r0, _0802DC9C @ =sub_0802DCA0
	str r0, [r3]
_0802DC8C:
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802DC9C: .4byte sub_0802DCA0

	thumb_func_start sub_0802DCA0
sub_0802DCA0: @ 0x0802DCA0
	adds r2, r0, #0
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r0, _0802DCBC @ =0x000002C3
	strh r0, [r1]
	movs r0, #0xaf
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #4
	strb r0, [r1]
	ldr r0, _0802DCC0 @ =sub_0802DDEC
	str r0, [r2]
	bx lr
	.align 2, 0
_0802DCBC: .4byte 0x000002C3
_0802DCC0: .4byte sub_0802DDEC

	thumb_func_start sub_0802DCC4
sub_0802DCC4: @ 0x0802DCC4
	push {lr}
	mov ip, r0
	movs r1, #0xaf
	lsls r1, r1, #2
	add r1, ip
	ldrh r0, [r1]
	adds r3, r0, #1
	strh r3, [r1]
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3f
	bls _0802DD04
	ldr r1, _0802DCF8 @ =gBldRegs
	movs r0, #0
	strh r0, [r1, #4]
	movs r2, #0x85
	lsls r2, r2, #2
	add r2, ip
	ldr r0, [r2]
	ldr r1, _0802DCFC @ =0xDFFFFFFF
	ands r0, r1
	str r0, [r2]
	ldr r0, _0802DD00 @ =sub_0802DE00
	mov r1, ip
	str r0, [r1]
	b _0802DD10
	.align 2, 0
_0802DCF8: .4byte gBldRegs
_0802DCFC: .4byte 0xDFFFFFFF
_0802DD00: .4byte sub_0802DE00
_0802DD04:
	ldr r2, _0802DD14 @ =gBldRegs
	lsls r1, r3, #0x10
	lsrs r1, r1, #0x12
	movs r0, #0x10
	subs r0, r0, r1
	strh r0, [r2, #4]
_0802DD10:
	pop {r0}
	bx r0
	.align 2, 0
_0802DD14: .4byte gBldRegs

	thumb_func_start sub_0802DD18
sub_0802DD18: @ 0x0802DD18
	push {lr}
	adds r3, r0, #0
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x3c
	bls _0802DD34
	ldr r0, _0802DD38 @ =sub_0802CB60
	str r0, [r3]
_0802DD34:
	pop {r0}
	bx r0
	.align 2, 0
_0802DD38: .4byte sub_0802CB60

	thumb_func_start sub_0802DD3C
sub_0802DD3C: @ 0x0802DD3C
	push {r4, lr}
	ldr r0, _0802DD58 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802DD5C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0802DD64
	.align 2, 0
_0802DD58: .4byte gCurTask
_0802DD5C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0802DD64:
	ldr r0, [r4, #0x44]
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	blt _0802DD86
	ldr r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	adds r1, r4, #0
	adds r1, #0x48
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _0802DD8C
_0802DD86:
	adds r0, r4, #0
	bl sub_0802D9A4
_0802DD8C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802DD94
sub_0802DD94: @ 0x0802DD94
	ldr r1, _0802DD9C @ =sub_0802CC7C
	str r1, [r0]
	bx lr
	.align 2, 0
_0802DD9C: .4byte sub_0802CC7C

	thumb_func_start sub_0802DDA0
sub_0802DDA0: @ 0x0802DDA0
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0802DDB0 @ =sub_0802DE14
	str r1, [r0]
	bx lr
	.align 2, 0
_0802DDB0: .4byte sub_0802DE14

	thumb_func_start sub_0802DDB4
sub_0802DDB4: @ 0x0802DDB4
	ldr r1, _0802DDBC @ =sub_0802DE38
	str r1, [r0]
	bx lr
	.align 2, 0
_0802DDBC: .4byte sub_0802DE38

	thumb_func_start sub_0802DDC0
sub_0802DDC0: @ 0x0802DDC0
	ldr r2, _0802DDE0 @ =gDispCnt
	movs r3, #0x82
	lsls r3, r3, #5
	adds r1, r3, #0
	strh r1, [r2]
	movs r1, #0x85
	lsls r1, r1, #2
	adds r3, r0, r1
	ldr r1, [r3]
	ldr r2, _0802DDE4 @ =0xFAFFFFFF
	ands r1, r2
	str r1, [r3]
	ldr r1, _0802DDE8 @ =sub_0802C5E4
	str r1, [r0]
	bx lr
	.align 2, 0
_0802DDE0: .4byte gDispCnt
_0802DDE4: .4byte 0xFAFFFFFF
_0802DDE8: .4byte sub_0802C5E4

	thumb_func_start sub_0802DDEC
sub_0802DDEC: @ 0x0802DDEC
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0802DDFC @ =sub_0802DE94
	str r1, [r0]
	bx lr
	.align 2, 0
_0802DDFC: .4byte sub_0802DE94

	thumb_func_start sub_0802DE00
sub_0802DE00: @ 0x0802DE00
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0802DE10 @ =sub_0802DEB8
	str r1, [r0]
	bx lr
	.align 2, 0
_0802DE10: .4byte sub_0802DEB8

	thumb_func_start sub_0802DE14
sub_0802DE14: @ 0x0802DE14
	push {lr}
	adds r3, r0, #0
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x3c
	bls _0802DE30
	ldr r0, _0802DE34 @ =sub_0802DEE0
	str r0, [r3]
_0802DE30:
	pop {r0}
	bx r0
	.align 2, 0
_0802DE34: .4byte sub_0802DEE0

	thumb_func_start sub_0802DE38
sub_0802DE38: @ 0x0802DE38
	push {r4, lr}
	mov ip, r0
	movs r3, #0xa0
	lsls r3, r3, #2
	add r3, ip
	ldr r0, [r3]
	subs r0, #4
	str r0, [r3]
	ldr r1, _0802DE84 @ =0xFFFFFF00
	cmp r0, r1
	bge _0802DE50
	str r1, [r3]
_0802DE50:
	movs r4, #0x9e
	lsls r4, r4, #2
	add r4, ip
	ldr r1, [r4]
	ldr r0, _0802DE88 @ =0xFFFFC400
	cmp r1, r0
	bge _0802DE76
	movs r2, #0x85
	lsls r2, r2, #2
	add r2, ip
	ldr r0, [r2]
	ldr r1, _0802DE8C @ =0xFFFE7FFF
	ands r0, r1
	str r0, [r2]
	movs r0, #0
	str r0, [r3]
	ldr r0, _0802DE90 @ =sub_0802DF0C
	mov r1, ip
	str r0, [r1]
_0802DE76:
	ldr r0, [r4]
	ldr r1, [r3]
	adds r0, r0, r1
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802DE84: .4byte 0xFFFFFF00
_0802DE88: .4byte 0xFFFFC400
_0802DE8C: .4byte 0xFFFE7FFF
_0802DE90: .4byte sub_0802DF0C

	thumb_func_start sub_0802DE94
sub_0802DE94: @ 0x0802DE94
	push {lr}
	adds r3, r0, #0
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x1e
	bls _0802DEB0
	ldr r0, _0802DEB4 @ =sub_0802DF30
	str r0, [r3]
_0802DEB0:
	pop {r0}
	bx r0
	.align 2, 0
_0802DEB4: .4byte sub_0802DF30

	thumb_func_start sub_0802DEB8
sub_0802DEB8: @ 0x0802DEB8
	push {lr}
	adds r3, r0, #0
	movs r0, #0xaf
	lsls r0, r0, #2
	adds r2, r3, r0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xff
	lsls r1, r1, #0x12
	cmp r0, r1
	bls _0802DED6
	ldr r0, _0802DEDC @ =sub_0802DFB4
	str r0, [r3]
_0802DED6:
	pop {r0}
	bx r0
	.align 2, 0
_0802DEDC: .4byte sub_0802DFB4

	thumb_func_start sub_0802DEE0
sub_0802DEE0: @ 0x0802DEE0
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xb0
	movs r2, #0
	movs r0, #0x2d
	strh r0, [r1]
	adds r1, #0xe
	movs r0, #7
	strb r0, [r1]
	ldr r1, _0802DF04 @ =0x000002BE
	adds r0, r3, r1
	strh r2, [r0]
	subs r1, #2
	adds r0, r3, r1
	strh r2, [r0]
	ldr r0, _0802DF08 @ =sub_0802E01C
	str r0, [r3]
	bx lr
	.align 2, 0
_0802DF04: .4byte 0x000002BE
_0802DF08: .4byte sub_0802E01C

	thumb_func_start sub_0802DF0C
sub_0802DF0C: @ 0x0802DF0C
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xb0
	movs r2, #0
	movs r0, #0x2d
	strh r0, [r1]
	adds r1, #0xe
	movs r0, #4
	strb r0, [r1]
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r3, r1
	strh r2, [r0]
	ldr r0, _0802DF2C @ =sub_0802E040
	str r0, [r3]
	bx lr
	.align 2, 0
_0802DF2C: .4byte sub_0802E040

	thumb_func_start sub_0802DF30
sub_0802DF30: @ 0x0802DF30
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r0, #0
	movs r0, #0x85
	lsls r0, r0, #2
	adds r2, r4, r0
	ldr r0, [r2]
	ldr r1, _0802DF94 @ =0xFBFFFFFF
	ands r0, r1
	str r0, [r2]
	movs r1, #0xad
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r2, #0
	str r2, [r0]
	subs r1, #0x25
	movs r3, #0xb6
	lsls r3, r3, #1
	adds r0, r4, r3
	ldr r3, [r0]
	movs r5, #0xa9
	lsls r5, r5, #2
	adds r0, r4, r5
	ldr r0, [r0]
	str r0, [sp]
	adds r5, #4
	adds r0, r4, r5
	ldr r0, [r0]
	str r0, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	adds r0, r4, #0
	movs r2, #3
	bl sub_0802CFF0
	ldrb r1, [r0, #0x1c]
	lsrs r1, r1, #1
	strb r1, [r0, #0x1c]
	ldr r0, _0802DF98 @ =0x00000212
	bl m4aSongNumStart
	ldr r0, _0802DF9C @ =sub_0802DFA0
	str r0, [r4]
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802DF94: .4byte 0xFBFFFFFF
_0802DF98: .4byte 0x00000212
_0802DF9C: .4byte sub_0802DFA0

	thumb_func_start sub_0802DFA0
sub_0802DFA0: @ 0x0802DFA0
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0802DFB0 @ =sub_0802E064
	str r1, [r0]
	bx lr
	.align 2, 0
_0802DFB0: .4byte sub_0802E064

	thumb_func_start sub_0802DFB4
sub_0802DFB4: @ 0x0802DFB4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r2, #0
	strh r2, [r0]
	ldr r1, _0802E004 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #4]
	ldr r0, _0802E008 @ =gUnk_030016A0
	movs r1, #8
	bl m4aMPlayFadeOut
	ldr r0, _0802E00C @ =gUnk_030016E0
	movs r1, #8
	bl m4aMPlayFadeOut
	ldr r0, _0802E010 @ =gUnk_03001720
	movs r1, #8
	bl m4aMPlayFadeOut
	ldr r0, _0802E014 @ =gUnk_03001770
	movs r1, #8
	bl m4aMPlayFadeOut
	movs r0, #0x85
	lsls r0, r0, #2
	adds r2, r4, r0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r2]
	ldr r0, _0802E018 @ =sub_0802E088
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802E004: .4byte gBldRegs
_0802E008: .4byte gUnk_030016A0
_0802E00C: .4byte gUnk_030016E0
_0802E010: .4byte gUnk_03001720
_0802E014: .4byte gUnk_03001770
_0802E018: .4byte sub_0802E088

	thumb_func_start sub_0802E01C
sub_0802E01C: @ 0x0802E01C
	push {lr}
	adds r3, r0, #0
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xb4
	bls _0802E038
	ldr r0, _0802E03C @ =sub_0802C1D8
	str r0, [r3]
_0802E038:
	pop {r0}
	bx r0
	.align 2, 0
_0802E03C: .4byte sub_0802C1D8

	thumb_func_start sub_0802E040
sub_0802E040: @ 0x0802E040
	push {lr}
	adds r3, r0, #0
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x3c
	bls _0802E05C
	ldr r0, _0802E060 @ =sub_0802E0D4
	str r0, [r3]
_0802E05C:
	pop {r0}
	bx r0
	.align 2, 0
_0802E060: .4byte sub_0802E0D4

	thumb_func_start sub_0802E064
sub_0802E064: @ 0x0802E064
	push {lr}
	adds r3, r0, #0
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xb4
	bls _0802E080
	ldr r0, _0802E084 @ =sub_0802E0E8
	str r0, [r3]
_0802E080:
	pop {r0}
	bx r0
	.align 2, 0
_0802E084: .4byte sub_0802E0E8

	thumb_func_start sub_0802E088
sub_0802E088: @ 0x0802E088
	push {lr}
	adds r3, r0, #0
	movs r0, #0xaf
	lsls r0, r0, #2
	adds r1, r3, r0
	ldrh r0, [r1]
	adds r2, r0, #1
	strh r2, [r1]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _0802E0C8
	ldr r1, _0802E0BC @ =gBldRegs
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x85
	lsls r0, r0, #2
	adds r2, r3, r0
	ldr r0, [r2]
	ldr r1, _0802E0C0 @ =0xDFFFFFFF
	ands r0, r1
	str r0, [r2]
	ldr r0, _0802E0C4 @ =sub_0802D480
	str r0, [r3]
	b _0802E0CC
	.align 2, 0
_0802E0BC: .4byte gBldRegs
_0802E0C0: .4byte 0xDFFFFFFF
_0802E0C4: .4byte sub_0802D480
_0802E0C8:
	ldr r0, _0802E0D0 @ =gBldRegs
	strh r2, [r0, #4]
_0802E0CC:
	pop {r0}
	bx r0
	.align 2, 0
_0802E0D0: .4byte gBldRegs

	thumb_func_start sub_0802E0D4
sub_0802E0D4: @ 0x0802E0D4
	movs r1, #0x94
	lsls r1, r1, #2
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0802E0E4 @ =sub_0802C360
	str r1, [r0]
	bx lr
	.align 2, 0
_0802E0E4: .4byte sub_0802C360

	thumb_func_start sub_0802E0E8
sub_0802E0E8: @ 0x0802E0E8
	adds r3, r0, #0
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r3, r1
	movs r2, #0
	strh r2, [r0]
	ldr r1, _0802E114 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #4]
	movs r0, #0x85
	lsls r0, r0, #2
	adds r2, r3, r0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r2]
	ldr r0, _0802E118 @ =sub_0802E11C
	str r0, [r3]
	bx lr
	.align 2, 0
_0802E114: .4byte gBldRegs
_0802E118: .4byte sub_0802E11C

	thumb_func_start sub_0802E11C
sub_0802E11C: @ 0x0802E11C
	push {lr}
	adds r3, r0, #0
	movs r0, #0xaf
	lsls r0, r0, #2
	adds r1, r3, r0
	ldrh r0, [r1]
	adds r2, r0, #1
	strh r2, [r1]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3f
	bls _0802E15C
	ldr r1, _0802E150 @ =gBldRegs
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x85
	lsls r0, r0, #2
	adds r2, r3, r0
	ldr r0, [r2]
	ldr r1, _0802E154 @ =0xDFFFFFFF
	ands r0, r1
	str r0, [r2]
	ldr r0, _0802E158 @ =sub_0802C770
	str r0, [r3]
	b _0802E164
	.align 2, 0
_0802E150: .4byte gBldRegs
_0802E154: .4byte 0xDFFFFFFF
_0802E158: .4byte sub_0802C770
_0802E15C:
	ldr r1, _0802E168 @ =gBldRegs
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x12
	strh r0, [r1, #4]
_0802E164:
	pop {r0}
	bx r0
	.align 2, 0
_0802E168: .4byte gBldRegs

	thumb_func_start sub_0802E16C
sub_0802E16C: @ 0x0802E16C
	push {r4, r5, lr}
	sub sp, #8
	ldr r0, _0802E1B0 @ =sub_0802E390
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _0802E1B4 @ =nullsub_11
	str r1, [sp]
	movs r1, #0x48
	movs r3, #4
	bl TaskCreate
	adds r4, r0, #0
	ldr r1, _0802E1B8 @ =0x00007FFF
	add r0, sp, #4
	strh r1, [r0]
	movs r1, #0
	movs r2, #1
	bl sub_0803D21C
	ldr r1, _0802E1BC @ =gDispCnt
	movs r0, #0xc2
	lsls r0, r0, #5
	strh r0, [r1]
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802E1C0
	ldrh r0, [r4, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _0802E1C8
	.align 2, 0
_0802E1B0: .4byte sub_0802E390
_0802E1B4: .4byte nullsub_11
_0802E1B8: .4byte 0x00007FFF
_0802E1BC: .4byte gDispCnt
_0802E1C0:
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_0802E1C8:
	ldr r0, _0802E248 @ =sub_0802E3C8
	str r0, [r5, #0x40]
	adds r0, r5, #0
	adds r0, #0x44
	movs r4, #0
	movs r1, #0
	strh r1, [r0]
	ldr r2, _0802E24C @ =gUnk_082EB6D0
	ldr r0, _0802E250 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r3, [r0]
	ldr r0, _0802E254 @ =gBgScrollRegs
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	ldr r2, _0802E258 @ =gBgCntRegs
	ldr r0, _0802E25C @ =0x00001E0A
	strh r0, [r2, #6]
	ldr r0, _0802E260 @ =0x06008000
	str r0, [r5, #4]
	strh r1, [r5, #0xa]
	ldr r0, _0802E264 @ =0x0600F000
	str r0, [r5, #0xc]
	strh r1, [r5, #0x18]
	strh r1, [r5, #0x1a]
	strh r3, [r5, #0x1c]
	strh r1, [r5, #0x1e]
	strh r1, [r5, #0x20]
	strh r1, [r5, #0x22]
	strh r1, [r5, #0x24]
	movs r0, #0x1e
	strh r0, [r5, #0x26]
	movs r0, #0x14
	strh r0, [r5, #0x28]
	adds r0, r5, #0
	adds r0, #0x2a
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	movs r0, #0x1b
	strh r0, [r5, #0x2e]
	strh r1, [r5, #0x30]
	strh r1, [r5, #0x32]
	ldr r0, _0802E268 @ =0x00007FFF
	strh r0, [r5, #0x34]
	strh r0, [r5, #0x36]
	ldr r0, _0802E26C @ =gUnk_082D7850
	lsls r3, r3, #2
	adds r3, r3, r0
	ldr r0, [r3]
	ldr r0, [r0, #8]
	ldr r1, [r5, #4]
	bl LZ77UnCompVram
	adds r0, r5, #0
	bl sub_08153060
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802E248: .4byte sub_0802E3C8
_0802E24C: .4byte gUnk_082EB6D0
_0802E250: .4byte gUnk_08D60A80
_0802E254: .4byte gBgScrollRegs
_0802E258: .4byte gBgCntRegs
_0802E25C: .4byte 0x00001E0A
_0802E260: .4byte 0x06008000
_0802E264: .4byte 0x0600F000
_0802E268: .4byte 0x00007FFF
_0802E26C: .4byte gUnk_082D7850

	thumb_func_start sub_0802E270
sub_0802E270: @ 0x0802E270
	push {r4, r5, r6, r7, lr}
	ldr r0, _0802E310 @ =gUnk_0203AD30
	ldrb r2, [r0]
	ldr r3, _0802E314 @ =gUnk_0203AD44
	adds r7, r0, #0
	ldr r0, _0802E318 @ =gUnk_0203AD2C
	mov ip, r0
	ldrb r1, [r3]
	cmp r2, r1
	bhs _0802E2A4
	ldr r6, _0802E31C @ =gUnk_02038590
	movs r5, #0xf4
	ldr r4, _0802E320 @ =gUnk_082D8D28
_0802E28A:
	adds r1, r2, #0
	muls r1, r5, r1
	adds r1, r1, r6
	lsls r0, r2, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1, #0x18]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrb r0, [r3]
	cmp r2, r0
	blo _0802E28A
_0802E2A4:
	movs r2, #0
	adds r3, r7, #0
	ldrb r1, [r3]
	cmp r2, r1
	bhs _0802E2D0
	movs r6, #0xd4
	lsls r6, r6, #1
	ldr r5, _0802E324 @ =gKirbys+8
	movs r4, #0x80
	lsls r4, r4, #0x11
_0802E2B8:
	adds r0, r2, #0
	muls r0, r6, r0
	adds r0, r0, r5
	ldr r1, [r0]
	orrs r1, r4
	str r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrb r0, [r3]
	cmp r2, r0
	blo _0802E2B8
_0802E2D0:
	mov r1, ip
	ldrh r0, [r1]
	cmp r0, #0xc7
	bhi _0802E352
	movs r0, #0xc8
	strh r0, [r1]
	ldr r0, _0802E328 @ =gUnk_0203AD10
	ldr r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0802E352
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _0802E340
	ldr r0, _0802E32C @ =gUnk_0203AD3C
	ldr r1, _0802E330 @ =gUnk_0203AD24
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0802E338
	ldr r2, _0802E334 @ =gUnk_0203AD48
	ldrh r0, [r2]
	movs r1, #0
	cmp r0, #2
	bhi _0802E308
	adds r1, r0, #0
_0802E308:
	movs r0, #1
	bl sub_0800ACD4
	b _0802E352
	.align 2, 0
_0802E310: .4byte gUnk_0203AD30
_0802E314: .4byte gUnk_0203AD44
_0802E318: .4byte gUnk_0203AD2C
_0802E31C: .4byte gUnk_02038590
_0802E320: .4byte gUnk_082D8D28
_0802E324: .4byte gKirbys+8
_0802E328: .4byte gUnk_0203AD10
_0802E32C: .4byte gUnk_0203AD3C
_0802E330: .4byte gUnk_0203AD24
_0802E334: .4byte gUnk_0203AD48
_0802E338:
	movs r0, #8
	bl sub_08031CE4
	b _0802E352
_0802E340:
	ldr r2, _0802E384 @ =gUnk_0203AD48
	ldrh r0, [r2]
	movs r1, #0
	cmp r0, #2
	bhi _0802E34C
	adds r1, r0, #0
_0802E34C:
	movs r0, #1
	bl sub_0800ACD4
_0802E352:
	ldr r0, _0802E388 @ =gBgPalette
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl sub_0803D21C
	movs r0, #0
	movs r1, #0xff
	bl sub_0803D280
	bl sub_0803D2D0
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	bl sub_08039670
	ldr r0, _0802E38C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E384: .4byte gUnk_0203AD48
_0802E388: .4byte gBgPalette
_0802E38C: .4byte gCurTask

	thumb_func_start sub_0802E390
sub_0802E390: @ 0x0802E390
	push {lr}
	ldr r0, _0802E3AC @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802E3B0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0802E3B8
	.align 2, 0
_0802E3AC: .4byte gCurTask
_0802E3B0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0802E3B8:
	ldr r1, [r0, #0x40]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start nullsub_11
nullsub_11: @ 0x0802E3C4
	bx lr
	.align 2, 0

	thumb_func_start sub_0802E3C8
sub_0802E3C8: @ 0x0802E3C8
	ldr r1, _0802E3D0 @ =sub_0802E3D4
	str r1, [r0, #0x40]
	bx lr
	.align 2, 0
_0802E3D0: .4byte sub_0802E3D4

	thumb_func_start sub_0802E3D4
sub_0802E3D4: @ 0x0802E3D4
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r2, _0802E438 @ =gUnk_082D7850
	ldr r1, _0802E43C @ =gUnk_082EB6D0
	ldr r0, _0802E440 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r2, [r0]
	ldr r1, _0802E444 @ =0x00007FFF
	mov r0, sp
	strh r1, [r0]
	ldr r0, [r2, #0x10]
	movs r1, #0
	movs r2, #0x20
	bl sub_0803D21C
	movs r0, #7
	bl sub_0803C95C
	ldrh r2, [r0, #8]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r3, #0
	movs r4, #0
	orrs r1, r2
	strh r1, [r0, #8]
	ldr r1, _0802E448 @ =0x0000FFFF
	strh r1, [r0, #4]
	movs r1, #1
	rsbs r1, r1, #0
	strh r1, [r0, #6]
	mov r0, sp
	movs r1, #0
	movs r2, #1
	bl sub_0803D21C
	adds r0, r5, #0
	adds r0, #0x44
	strh r4, [r0]
	ldr r0, _0802E44C @ =sub_0802E450
	str r0, [r5, #0x40]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802E438: .4byte gUnk_082D7850
_0802E43C: .4byte gUnk_082EB6D0
_0802E440: .4byte gUnk_08D60A80
_0802E444: .4byte 0x00007FFF
_0802E448: .4byte 0x0000FFFF
_0802E44C: .4byte sub_0802E450

	thumb_func_start sub_0802E450
sub_0802E450: @ 0x0802E450
	push {lr}
	adds r3, r0, #0
	adds r0, #0x44
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x20
	bls _0802E468
	ldr r0, _0802E46C @ =sub_0802E470
	str r0, [r3, #0x40]
_0802E468:
	pop {r0}
	bx r0
	.align 2, 0
_0802E46C: .4byte sub_0802E470

	thumb_func_start sub_0802E470
sub_0802E470: @ 0x0802E470
	adds r2, r0, #0
	adds r2, #0x44
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0802E480 @ =sub_0802E484
	str r1, [r0, #0x40]
	bx lr
	.align 2, 0
_0802E480: .4byte sub_0802E484

	thumb_func_start sub_0802E484
sub_0802E484: @ 0x0802E484
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
	ldr r0, _0802E4D0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0802E4DC
	movs r3, #0
	ldr r0, _0802E4D4 @ =gUnk_0203AD30
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r5, r0
	bhs _0802E4EA
	ldr r2, _0802E4D8 @ =gUnk_020382D0
	ldrh r1, [r2, #0x10]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	bne _0802E4EE
_0802E4AE:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrb r0, [r4]
	cmp r3, r0
	bhs _0802E4EA
	lsls r0, r3, #1
	adds r1, r2, #0
	adds r1, #0x10
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _0802E4AE
	b _0802E4EE
	.align 2, 0
_0802E4D0: .4byte gUnk_0203AD10
_0802E4D4: .4byte gUnk_0203AD30
_0802E4D8: .4byte gUnk_020382D0
_0802E4DC:
	ldr r0, _0802E4F8 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _0802E4EA
	movs r5, #1
_0802E4EA:
	cmp r5, #0
	beq _0802E4F2
_0802E4EE:
	ldr r0, _0802E4FC @ =sub_0802E500
	str r0, [r6, #0x40]
_0802E4F2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802E4F8: .4byte gPressedKeys
_0802E4FC: .4byte sub_0802E500

	thumb_func_start sub_0802E500
sub_0802E500: @ 0x0802E500
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _0802E54C @ =0x00007FFF
	mov r0, sp
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x44
	movs r0, #0
	strh r0, [r1]
	movs r0, #7
	bl sub_0803CA20
	ldrh r2, [r0, #8]
	movs r1, #0x80
	orrs r1, r2
	strh r1, [r0, #8]
	ldr r1, _0802E550 @ =0x0000FFFF
	strh r1, [r0, #4]
	movs r1, #1
	rsbs r1, r1, #0
	strh r1, [r0, #6]
	mov r0, sp
	movs r1, #0
	movs r2, #1
	bl sub_0803D21C
	ldr r0, _0802E554 @ =gUnk_030016A0
	movs r1, #2
	bl m4aMPlayFadeOut
	ldr r0, _0802E558 @ =sub_0802E55C
	str r0, [r4, #0x40]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802E54C: .4byte 0x00007FFF
_0802E550: .4byte 0x0000FFFF
_0802E554: .4byte gUnk_030016A0
_0802E558: .4byte sub_0802E55C

	thumb_func_start sub_0802E55C
sub_0802E55C: @ 0x0802E55C
	push {lr}
	adds r3, r0, #0
	adds r0, #0x44
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x20
	bls _0802E574
	ldr r0, _0802E578 @ =sub_0802E270
	str r0, [r3, #0x40]
_0802E574:
	pop {r0}
	bx r0
	.align 2, 0
_0802E578: .4byte sub_0802E270
