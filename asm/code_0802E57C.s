	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_0802E57C
sub_0802E57C: @ 0x0802E57C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _0802E5B4 @ =sub_0802E78C
	movs r1, #0xca
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _0802E5B8 @ =sub_0802E71C
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802E5BC
	ldrh r0, [r4, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0802E5C4
	.align 2, 0
_0802E5B4: .4byte sub_0802E78C
_0802E5B8: .4byte sub_0802E71C
_0802E5BC:
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0802E5C4:
	mov r8, r0
	add r0, sp, #4
	movs r5, #0
	strh r5, [r0]
	ldr r2, _0802E6B8 @ =0x010000CA
	mov r1, r8
	bl CpuSet
	mov r0, r8
	str r4, [r0]
	ldr r0, _0802E6BC @ =sub_0802FD3C
	mov r1, r8
	str r0, [r1, #4]
	ldr r2, _0802E6C0 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x82
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r4, #0xa6
	lsls r4, r4, #1
	add r4, r8
	movs r0, #0x10
	bl sub_081570B0
	str r0, [r4]
	movs r1, #0
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	adds r0, #0x5e
	strh r0, [r4, #0xc]
	strb r5, [r4, #0x1a]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r0, #0xb
	strb r0, [r4, #0x1f]
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	str r1, [r4, #8]
	movs r7, #0
	movs r6, #0
	movs r0, #0xff
	mov sl, r0
	movs r1, #0x10
	mov sb, r1
_0802E628:
	lsls r4, r7, #2
	adds r4, r4, r7
	lsls r4, r4, #4
	adds r4, #0xc
	add r4, r8
	str r6, [r4]
	movs r3, #0x80
	lsls r3, r3, #1
	strh r3, [r4, #0x14]
	movs r0, #0x15
	strh r0, [r4, #0xc]
	strb r7, [r4, #0x1a]
	strh r6, [r4, #0x16]
	ldrb r0, [r4, #0x1b]
	mov r1, sl
	orrs r0, r1
	strb r0, [r4, #0x1b]
	mov r3, sb
	strb r3, [r4, #0x1c]
	adds r5, r7, #0
	adds r5, #0xc
	strb r5, [r4, #0x1f]
	strh r6, [r4, #0x10]
	strh r6, [r4, #0x12]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	movs r0, #0x10
	bl sub_081570B0
	str r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x14]
	strh r6, [r4, #0xc]
	strb r6, [r4, #0x1a]
	strh r6, [r4, #0x16]
	ldrb r0, [r4, #0x1b]
	mov r1, sl
	orrs r0, r1
	strb r0, [r4, #0x1b]
	mov r3, sb
	strb r3, [r4, #0x1c]
	strb r5, [r4, #0x1f]
	strh r6, [r4, #0x10]
	strh r6, [r4, #0x12]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r4, #8]
	ldr r0, [r4, #0x2c]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0x2c]
	adds r4, #0x46
	strh r7, [r4]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #3
	bls _0802E628
	mov r0, r8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802E6B8: .4byte 0x010000CA
_0802E6BC: .4byte sub_0802FD3C
_0802E6C0: .4byte gDispCnt

	thumb_func_start sub_0802E6C4
sub_0802E6C4: @ 0x0802E6C4
	push {r4, r5, lr}
	sub sp, #0x28
	adds r4, r0, #0
	ldr r0, _0802E714 @ =sub_0802EA4C
	str r0, [r4, #4]
	ldr r5, [r4, #8]
	cmp r5, #0
	bne _0802E70A
	movs r0, #0x80
	lsls r0, r0, #1
	bl sub_081570B0
	str r0, [r4, #8]
	str r0, [sp]
	mov r0, sp
	movs r2, #0
	strh r5, [r0, #0x14]
	mov r1, sp
	ldr r0, _0802E718 @ =0x00000292
	strh r0, [r1, #0xc]
	mov r0, sp
	strb r2, [r0, #0x1a]
	strh r5, [r0, #0x16]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	movs r0, #0xb
	strb r0, [r1, #0x1f]
	mov r0, sp
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	str r5, [sp, #8]
	bl sub_08155128
_0802E70A:
	add sp, #0x28
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802E714: .4byte sub_0802EA4C
_0802E718: .4byte 0x00000292

	thumb_func_start sub_0802E71C
sub_0802E71C: @ 0x0802E71C
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802E736
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r6, r0, r1
	b _0802E73E
_0802E736:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
_0802E73E:
	adds r4, r6, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0802E74E
	bl sub_08157190
	movs r0, #0
	str r0, [r4, #8]
_0802E74E:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r4, r4, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0802E762
	bl sub_08157190
	movs r0, #0
	str r0, [r4]
_0802E762:
	movs r5, #0
	adds r6, #0xc
_0802E766:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r4, r6, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0802E77C
	bl sub_08157190
	movs r0, #0
	str r0, [r4]
_0802E77C:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	bls _0802E766
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0802E78C
sub_0802E78C: @ 0x0802E78C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x28
	ldr r2, _0802E7B0 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802E7B4
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0802E7BC
	.align 2, 0
_0802E7B0: .4byte gCurTask
_0802E7B4:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0802E7BC:
	adds r7, r0, #0
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r3, r7, r0
	ldr r1, [r3]
	movs r0, #0x80
	lsls r0, r0, #0x17
	ands r0, r1
	cmp r0, #0
	beq _0802E7D2
	b _0802E958
_0802E7D2:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r1, r0
	cmp r1, #0
	bne _0802E7DE
	b _0802E936
_0802E7DE:
	movs r1, #0xc6
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	movs r3, #0xf
	ands r0, r3
	cmp r0, #0
	beq _0802E7F0
	b _0802E936
_0802E7F0:
	ldr r4, _0802E894 @ =gRngVal
	ldr r0, [r4]
	ldr r6, _0802E898 @ =0x00196225
	adds r1, r0, #0
	muls r1, r6, r1
	ldr r5, _0802E89C @ =0x3C6EF35F
	adds r1, r1, r5
	lsrs r2, r1, #0x10
	movs r0, #0x1f
	ands r2, r0
	mov r8, r2
	adds r0, r1, #0
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r4]
	lsrs r0, r0, #0x10
	ands r0, r3
	adds r0, #0x32
	mov sb, r0
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrh r0, [r0]
	rsbs r0, r0, #0
	add r1, sp, #0x18
	strh r0, [r1]
	movs r2, #0xc1
	lsls r2, r2, #1
	adds r0, r7, r2
	ldrh r0, [r0]
	rsbs r0, r0, #0
	mov r2, sp
	adds r2, #0x1a
	strh r0, [r2]
	add r0, sp, #0x14
	movs r2, #4
	str r3, [sp, #0x24]
	bl memcpy
	ldr r0, [r4]
	adds r2, r0, #0
	muls r2, r6, r2
	adds r2, r2, r5
	str r2, [r4]
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r1, r7, r0
	lsrs r0, r2, #0x10
	ldr r3, [sp, #0x24]
	ands r0, r3
	subs r0, #8
	lsls r0, r0, #8
	ldr r1, [r1]
	adds r0, r1, r0
	str r0, [sp, #0x1c]
	adds r0, r2, #0
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r4]
	movs r2, #0xbe
	lsls r2, r2, #1
	adds r1, r7, r2
	lsrs r0, r0, #0x10
	ands r0, r3
	subs r0, #8
	lsls r0, r0, #8
	ldr r1, [r1]
	adds r0, r1, r0
	str r0, [sp, #0x20]
	add r1, sp, #0x14
	adds r0, r1, #0
	ldrh r2, [r0, #2]
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r1, [r1, r4]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _0802E8A0
	subs r0, r3, r2
	b _0802E8A2
	.align 2, 0
_0802E894: .4byte gRngVal
_0802E898: .4byte 0x00196225
_0802E89C: .4byte 0x3C6EF35F
_0802E8A0:
	subs r0, r2, r3
_0802E8A2:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0802E8B2
	movs r0, #0
	adds r1, r0, #0
_0802E8B2:
	cmp r1, #0xff
	bhi _0802E8C2
	add r1, sp, #0x14
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r1, #2]
	b _0802E8FE
_0802E8C2:
	add r3, sp, #0x14
	adds r0, r3, #0
	ldrh r1, [r0]
	movs r4, #0
	ldrsh r2, [r0, r4]
	ldr r0, _0802E94C @ =0xFFFFFC00
	cmp r2, r0
	blt _0802E8DE
	adds r0, r1, #0
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r2, r1
	ble _0802E8DE
	adds r0, r1, #0
_0802E8DE:
	strh r0, [r3]
	add r3, sp, #0x14
	adds r0, r3, #0
	ldrh r1, [r0, #2]
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	ldr r0, _0802E94C @ =0xFFFFFC00
	cmp r2, r0
	blt _0802E8FC
	adds r0, r1, #0
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r2, r1
	ble _0802E8FC
	adds r0, r1, #0
_0802E8FC:
	strh r0, [r3, #2]
_0802E8FE:
	ldr r2, _0802E950 @ =gUnk_082EB954
	ldr r0, _0802E954 @ =gUnk_082EB984
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, r0, r2
	ldrh r1, [r1]
	adds r2, #2
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r3, [r7, #8]
	ldr r0, [sp, #0x1c]
	str r0, [sp]
	ldr r4, [sp, #0x20]
	str r4, [sp, #4]
	add r0, sp, #0x14
	movs r4, #0
	ldrsh r0, [r0, r4]
	str r0, [sp, #8]
	add r0, sp, #0x14
	movs r4, #2
	ldrsh r0, [r0, r4]
	str r0, [sp, #0xc]
	mov r0, sb
	str r0, [sp, #0x10]
	adds r0, r7, #0
	bl sub_0802F8D8
_0802E936:
	ldr r1, [r7, #4]
	adds r0, r7, #0
	bl _call_via_r1
	movs r2, #0xc6
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	b _0802E96C
	.align 2, 0
_0802E94C: .4byte 0xFFFFFC00
_0802E950: .4byte gUnk_082EB954
_0802E954: .4byte gUnk_082EB984
_0802E958:
	cmp r1, #0
	bge _0802E964
	ldr r0, [r2]
	bl TaskDestroy
	b _0802E96C
_0802E964:
	movs r0, #0xa0
	lsls r0, r0, #0x18
	orrs r1, r0
	str r1, [r3]
_0802E96C:
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802E97C
sub_0802E97C: @ 0x0802E97C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	movs r5, #0
	ldr r0, _0802EA34 @ =0x0000FFFF
	mov sb, r0
	ldr r1, _0802EA38 @ =gUnk_08D60B24
	mov r8, r1
_0802E990:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r0, #0xc
	adds r3, r7, r0
	ldr r0, [r3, #0x2c]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0802EA16
	adds r4, r3, #0
	adds r4, #0x40
	ldrh r0, [r4]
	adds r0, #1
	movs r6, #0
	strh r0, [r4]
	ldrh r0, [r4]
	ldr r1, [r3, #0x3c]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	ands r0, r1
	cmp r0, sb
	bne _0802E9E0
	ldr r2, _0802EA3C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0802EA40 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0802EA44 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	str r0, [r3, #0x3c]
	strh r6, [r4]
_0802E9E0:
	ldr r0, [r3, #0x2c]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x2c]
	ldrh r0, [r4]
	ldr r1, [r3, #0x3c]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r2, r3, #0
	adds r2, #0x42
	strh r0, [r2]
	ldrh r0, [r4]
	ldr r1, [r3, #0x3c]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0, #2]
	adds r0, r3, #0
	adds r0, #0x44
	strh r1, [r0]
	ldr r1, _0802EA48 @ =gUnk_082EB7D0
	ldrh r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r3, #0x28]
_0802EA16:
	adds r0, r7, #0
	adds r1, r3, #0
	bl sub_0802EF90
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	bls _0802E990
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802EA34: .4byte 0x0000FFFF
_0802EA38: .4byte gUnk_08D60B24
_0802EA3C: .4byte gRngVal
_0802EA40: .4byte 0x00196225
_0802EA44: .4byte 0x3C6EF35F
_0802EA48: .4byte gUnk_082EB7D0

	thumb_func_start sub_0802EA4C
sub_0802EA4C: @ 0x0802EA4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r3, r5, r0
	ldr r2, _0802EAEC @ =gUnk_082EB6FC
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #8
	str r0, [r3]
	movs r4, #0xbe
	lsls r4, r4, #1
	adds r1, r5, r4
	movs r4, #2
	ldrsh r0, [r2, r4]
	lsls r0, r0, #8
	str r0, [r1]
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r2, #0
	ldr r0, _0802EAF0 @ =0x000002DE
	strh r0, [r1, #0xc]
	strb r2, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r4, #0
	ldr r1, _0802EAF4 @ =sub_0802FC08
	mov sl, r1
	movs r0, #0
	mov sb, r0
	movs r1, #0
	mov ip, r1
	movs r7, #0x80
	lsls r7, r7, #8
	movs r6, #0xfc
	lsls r6, r6, #8
	movs r0, #2
	rsbs r0, r0, #0
	mov r8, r0
_0802EAA4:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, #0xc
	adds r2, r5, r0
	movs r0, #4
	strh r0, [r2, #0xc]
	mov r1, sb
	strb r1, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r1, [r2, #0x2c]
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	subs r0, #8
	ands r1, r0
	str r1, [r2, #0x2c]
	ldr r0, _0802EAF8 @ =gUnk_082EB7F8
	str r0, [r2, #0x3c]
	adds r0, r2, #0
	adds r0, #0x40
	mov r1, ip
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	cmp r4, #1
	beq _0802EB20
	cmp r4, #1
	bgt _0802EAFC
	cmp r4, #0
	beq _0802EB06
	b _0802EB70
	.align 2, 0
_0802EAEC: .4byte gUnk_082EB6FC
_0802EAF0: .4byte 0x000002DE
_0802EAF4: .4byte sub_0802FC08
_0802EAF8: .4byte gUnk_082EB7F8
_0802EAFC:
	cmp r4, #2
	beq _0802EB3C
	cmp r4, #3
	beq _0802EB58
	b _0802EB70
_0802EB06:
	ldr r0, [r2, #0x2c]
	mov r1, r8
	ands r0, r1
	str r0, [r2, #0x2c]
	ldr r0, [r3]
	ldr r1, _0802EB1C @ =0xFFFFEC00
	adds r0, r0, r1
	str r0, [r2, #0x30]
	str r7, [r2, #0x34]
	movs r0, #0x40
	b _0802EB6C
	.align 2, 0
_0802EB1C: .4byte 0xFFFFEC00
_0802EB20:
	ldr r0, [r2, #0x2c]
	orrs r0, r4
	str r0, [r2, #0x2c]
	ldr r0, [r3]
	movs r1, #0xa0
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r2, #0x30]
	str r7, [r2, #0x34]
	ldr r0, _0802EB38 @ =0x0000FFC0
	b _0802EB6C
	.align 2, 0
_0802EB38: .4byte 0x0000FFC0
_0802EB3C:
	ldr r0, [r2, #0x2c]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x2c]
	ldr r0, [r3]
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [r2, #0x30]
	str r7, [r2, #0x34]
	ldr r0, _0802EB54 @ =0x0000FF40
	b _0802EB6C
	.align 2, 0
_0802EB54: .4byte 0x0000FF40
_0802EB58:
	ldr r0, [r2, #0x2c]
	mov r1, r8
	ands r0, r1
	str r0, [r2, #0x2c]
	ldr r0, [r3]
	ldr r1, _0802EBA8 @ =0xFFFFD800
	adds r0, r0, r1
	str r0, [r2, #0x30]
	str r7, [r2, #0x34]
	movs r0, #0xc0
_0802EB6C:
	strh r0, [r2, #0x38]
	strh r6, [r2, #0x3a]
_0802EB70:
	mov r0, sl
	str r0, [r2, #0x28]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _0802EAA4
	movs r1, #0xc4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r1, r2
	str r1, [r0]
	ldr r4, _0802EBAC @ =sub_0802EBB0
	str r4, [r5, #4]
	adds r0, r5, #0
	bl _call_via_r4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802EBA8: .4byte 0xFFFFD800
_0802EBAC: .4byte sub_0802EBB0

	thumb_func_start sub_0802EBB0
sub_0802EBB0: @ 0x0802EBB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0802EBCA
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_0802EBCA:
	movs r1, #0xbc
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	movs r2, #0xbe
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
	adds r6, r5, #0
	adds r6, #0x46
_0802EBEE:
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #4
	adds r2, r5, r1
	adds r2, #0x46
	ldrh r0, [r2]
	adds r0, #0x26
	strh r0, [r2]
	adds r1, #0xc
	adds r1, r5, r1
	adds r0, r5, #0
	bl sub_0802EF90
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _0802EBEE
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r0, #0x10
	rsbs r0, r0, #0
	cmp r1, r0
	blt _0802ECAC
	movs r4, #0
	movs r3, #0
	movs r1, #0xff
	mov ip, r1
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r7, r5, r2
	movs r0, #0xbe
	lsls r0, r0, #1
	adds r6, r5, r0
_0802EC32:
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #4
	adds r1, #0xc
	adds r1, r5, r1
	movs r0, #0x2d
	strh r0, [r1, #0xc]
	strb r4, [r1, #0x1a]
	ldrb r0, [r1, #0x1b]
	mov r2, ip
	orrs r0, r2
	strb r0, [r1, #0x1b]
	ldr r2, [r1, #0x2c]
	movs r0, #9
	rsbs r0, r0, #0
	ands r2, r0
	movs r0, #0x10
	orrs r2, r0
	str r2, [r1, #0x2c]
	ldr r0, [r7]
	str r0, [r1, #0x30]
	ldr r0, [r6]
	str r0, [r1, #0x34]
	strh r3, [r1, #0x38]
	strh r3, [r1, #0x3a]
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
	movs r0, #0x80
	orrs r2, r0
	str r2, [r1, #0x2c]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _0802EC32
	ldr r1, _0802ECB4 @ =0x00000292
	ldr r3, [r5, #8]
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	str r0, [sp]
	adds r2, #4
	adds r0, r5, r2
	ldr r0, [r0]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	adds r0, r5, #0
	movs r2, #0
	bl sub_0802FA40
	movs r0, #0x7e
	bl m4aSongNumStart
	ldr r0, _0802ECB8 @ =sub_0802FE30
	str r0, [r5, #4]
_0802ECAC:
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802ECB4: .4byte 0x00000292
_0802ECB8: .4byte sub_0802FE30

	thumb_func_start sub_0802ECBC
sub_0802ECBC: @ 0x0802ECBC
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0802ECD4
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_0802ECD4:
	movs r1, #0xbc
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	movs r2, #0xbe
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_0802ECF4:
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #4
	adds r1, #0xc
	adds r1, r5, r1
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	str r0, [r1, #0x30]
	adds r2, #4
	adds r0, r5, r2
	ldr r0, [r0]
	str r0, [r1, #0x34]
	adds r0, r5, #0
	bl sub_0802EF90
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _0802ECF4
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x1e
	bls _0802ED38
	ldr r0, _0802ED40 @ =sub_0802ED44
	str r0, [r5, #4]
_0802ED38:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802ED40: .4byte sub_0802ED44

	thumb_func_start sub_0802ED44
sub_0802ED44: @ 0x0802ED44
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0802ED5C
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_0802ED5C:
	movs r1, #0xbc
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	movs r2, #0xbe
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_0802ED7C:
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #4
	adds r1, #0xc
	adds r1, r5, r1
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	str r0, [r1, #0x30]
	adds r2, #4
	adds r0, r5, r2
	ldr r0, [r0]
	str r0, [r1, #0x34]
	adds r0, r5, #0
	bl sub_0802EF90
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _0802ED7C
	movs r1, #0xc4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	adds r1, #0x78
	ands r0, r1
	cmp r0, #0
	beq _0802EDBC
	ldr r0, _0802EDC4 @ =sub_0802EDC8
	str r0, [r5, #4]
_0802EDBC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802EDC4: .4byte sub_0802EDC8

	thumb_func_start sub_0802EDC8
sub_0802EDC8: @ 0x0802EDC8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802EDE0 @ =gUnk_03002558
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #1
	bne _0802EDE8
	movs r0, #0xba
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, _0802EDE4 @ =gUnk_082EB740
	b _0802EDF0
	.align 2, 0
_0802EDE0: .4byte gUnk_03002558
_0802EDE4: .4byte gUnk_082EB740
_0802EDE8:
	movs r2, #0xba
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, _0802EE30 @ =gUnk_082EB700
_0802EDF0:
	str r0, [r1]
	movs r5, #0xc2
	lsls r5, r5, #1
	adds r1, r4, r5
	movs r2, #0
	movs r0, #1
	strh r0, [r1]
	movs r1, #0xc3
	lsls r1, r1, #1
	adds r0, r4, r1
	strh r2, [r0]
	subs r5, #0x10
	adds r2, r4, r5
	ldr r0, [r2]
	ldrh r1, [r0]
	adds r5, #0xc
	adds r0, r4, r5
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r0, [r0, #2]
	movs r2, #0xc1
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	ldrb r0, [r3]
	cmp r0, #1
	bne _0802EE38
	ldr r0, _0802EE34 @ =0x00000206
	bl m4aSongNumStart
	b _0802EE40
	.align 2, 0
_0802EE30: .4byte gUnk_082EB700
_0802EE34: .4byte 0x00000206
_0802EE38:
	movs r0, #0x82
	lsls r0, r0, #2
	bl m4aSongNumStart
_0802EE40:
	ldr r1, _0802EE50 @ =sub_0802EE54
	str r1, [r4, #4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802EE50: .4byte sub_0802EE54

	thumb_func_start sub_0802EE54
sub_0802EE54: @ 0x0802EE54
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	movs r0, #0xc2
	lsls r0, r0, #1
	adds r4, r5, r0
	ldrh r0, [r4]
	movs r1, #0xba
	lsls r1, r1, #1
	adds r1, r1, r5
	mov ip, r1
	ldr r1, [r1]
	lsls r0, r0, #3
	adds r0, r0, r1
	mov r8, r0
	ldrh r0, [r0, #6]
	movs r3, #1
	ands r3, r0
	cmp r3, #0
	bne _0802EEA8
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r7, r5, r2
	ldr r1, [r7]
	ldr r2, _0802EEBC @ =0xFFFFC000
	cmp r1, r2
	blt _0802EEA8
	movs r0, #0x98
	lsls r0, r0, #9
	cmp r1, r0
	bgt _0802EEA8
	movs r0, #0xbe
	lsls r0, r0, #1
	adds r6, r5, r0
	ldr r1, [r6]
	cmp r1, r2
	blt _0802EEA8
	movs r0, #0xe0
	lsls r0, r0, #8
	cmp r1, r0
	ble _0802EEC8
_0802EEA8:
	movs r1, #0xc4
	lsls r1, r1, #1
	adds r2, r5, r1
	ldr r0, [r2]
	ldr r1, _0802EEC0 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r2]
	ldr r0, _0802EEC4 @ =sub_0802FE4C
	str r0, [r5, #4]
	b _0802EF84
	.align 2, 0
_0802EEBC: .4byte 0xFFFFC000
_0802EEC0: .4byte 0xFFFFFEFF
_0802EEC4: .4byte sub_0802FE4C
_0802EEC8:
	movs r0, #0xc3
	lsls r0, r0, #1
	adds r2, r5, r0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	mov r1, r8
	ldrh r1, [r1, #4]
	mov r8, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r8, r0
	bhs _0802EEEA
	strh r3, [r2]
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
_0802EEEA:
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r5, r3
	ldrh r0, [r4]
	mov r3, ip
	ldr r1, [r3]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	movs r0, #0xc1
	lsls r0, r0, #1
	adds r3, r5, r0
	ldrh r0, [r4]
	mov r4, ip
	ldr r1, [r4]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0, #2]
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	movs r4, #0
	ldrsh r1, [r2, r4]
	ldr r0, [r7]
	adds r0, r0, r1
	str r0, [r7]
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0802EF42
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_0802EF42:
	ldr r0, [r7]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r6]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_0802EF56:
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #4
	adds r1, #0xc
	adds r1, r5, r1
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	str r0, [r1, #0x30]
	movs r3, #0xbe
	lsls r3, r3, #1
	adds r0, r5, r3
	ldr r0, [r0]
	str r0, [r1, #0x34]
	adds r0, r5, #0
	bl sub_0802EF90
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _0802EF56
_0802EF84:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802EF90
sub_0802EF90: @ 0x0802EF90
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	movs r0, #0x38
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x30]
	adds r2, r0, r1
	str r2, [r4, #0x30]
	movs r0, #0x3a
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x2c]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0802EFFC
	ldr r0, _0802EFE4 @ =0xFFFF8000
	cmp r2, r0
	blt _0802EFC2
	movs r0, #0xb8
	lsls r0, r0, #9
	cmp r2, r0
	ble _0802EFC4
_0802EFC2:
	str r0, [r4, #0x30]
_0802EFC4:
	ldr r2, [r4, #0x34]
	ldr r0, _0802EFE8 @ =0x00007FFF
	cmp r2, r0
	ble _0802EFEC
	ldr r0, [r4, #0x2c]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x2c]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x34]
	movs r0, #0
	strh r0, [r4, #0x3a]
	b _0802EFFC
	.align 2, 0
_0802EFE4: .4byte 0xFFFF8000
_0802EFE8: .4byte 0x00007FFF
_0802EFEC:
	ldr r0, [r4, #0x2c]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #0x2c]
	ldr r0, _0802F01C @ =0xFFFF8000
	cmp r2, r0
	bge _0802EFFC
	str r0, [r4, #0x34]
_0802EFFC:
	ldr r2, [r4, #0x28]
	adds r0, r6, #0
	adds r1, r4, #0
	bl _call_via_r2
	adds r5, r4, #0
	ldr r0, [r5, #0x2c]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802F020
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0802F026
	.align 2, 0
_0802F01C: .4byte 0xFFFF8000
_0802F020:
	ldr r0, [r5, #8]
	ldr r1, _0802F03C @ =0xFFFFFBFF
	ands r0, r1
_0802F026:
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0802F040
	ldr r0, [r4, #0x2c]
	movs r1, #8
	orrs r0, r1
	b _0802F048
	.align 2, 0
_0802F03C: .4byte 0xFFFFFBFF
_0802F040:
	ldr r0, [r4, #0x2c]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
_0802F048:
	str r0, [r4, #0x2c]
	ldr r1, [r4, #0x2c]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0802F06E
	movs r0, #0x10
	ands r1, r0
	cmp r1, #0
	beq _0802F06E
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	adds r0, #0x89
	adds r2, r6, r0
	ldr r0, [r2]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
_0802F06E:
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	strh r0, [r5, #0x10]
	ldr r0, [r4, #0x34]
	asrs r0, r0, #8
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802F088
sub_0802F088: @ 0x0802F088
	push {r4, lr}
	adds r3, r1, #0
	movs r1, #0
	movs r0, #2
	strh r0, [r3, #0xc]
	strb r1, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	ldr r2, [r3, #0x2c]
	movs r0, #9
	rsbs r0, r0, #0
	ands r2, r0
	movs r0, #0x10
	orrs r2, r0
	str r2, [r3, #0x2c]
	ldr r1, _0802F0E4 @ =gUnk_082EB6DC
	movs r0, #0x46
	adds r0, r0, r3
	mov ip, r0
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r4, #0
	ldrsh r0, [r0, r4]
	lsls r0, r0, #8
	str r0, [r3, #0x30]
	mov r4, ip
	ldrh r0, [r4]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	str r0, [r3, #0x34]
	ldr r1, _0802F0E8 @ =gUnk_082EB6EC
	ldrh r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0802F0EC
	movs r0, #1
	orrs r2, r0
	b _0802F0F2
	.align 2, 0
_0802F0E4: .4byte gUnk_082EB6DC
_0802F0E8: .4byte gUnk_082EB6EC
_0802F0EC:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_0802F0F2:
	str r2, [r3, #0x2c]
	adds r0, r3, #0
	adds r0, #0x48
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, _0802F10C @ =sub_0802F110
	str r0, [r3, #0x28]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802F10C: .4byte sub_0802F110

	thumb_func_start sub_0802F110
sub_0802F110: @ 0x0802F110
	push {lr}
	adds r2, r1, #0
	adds r0, r2, #0
	adds r0, #0x48
	ldrh r0, [r0]
	cmp r0, #0x50
	bls _0802F180
	adds r3, r2, #0
	adds r3, #0x4a
	ldrh r0, [r3]
	cmp r0, #0
	bne _0802F146
	movs r1, #0
	movs r0, #0x33
	strh r0, [r2, #0xc]
	strb r1, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r0, [r2, #0x2c]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x2c]
	movs r0, #1
	strh r0, [r3]
_0802F146:
	ldrh r0, [r2, #0x38]
	movs r3, #0x38
	ldrsh r1, [r2, r3]
	cmp r1, #0
	ble _0802F15C
	subs r0, #0x20
	strh r0, [r2, #0x38]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0802F16E
	b _0802F16A
_0802F15C:
	cmp r1, #0
	bge _0802F16E
	adds r0, #0x20
	strh r0, [r2, #0x38]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0802F16E
_0802F16A:
	movs r0, #0
	strh r0, [r2, #0x38]
_0802F16E:
	movs r1, #0x38
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bne _0802F1BA
	ldr r0, [r2, #0x2c]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x2c]
	b _0802F1BA
_0802F180:
	ldr r0, [r2, #0x2c]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802F190
	ldrh r0, [r2, #0x38]
	subs r0, #0x20
	b _0802F194
_0802F190:
	ldrh r0, [r2, #0x38]
	adds r0, #0x20
_0802F194:
	strh r0, [r2, #0x38]
	ldrh r1, [r2, #0x38]
	movs r0, #0x38
	ldrsh r3, [r2, r0]
	ldr r0, _0802F1C0 @ =0xFFFFFE24
	cmp r3, r0
	blt _0802F1AE
	adds r0, r1, #0
	movs r1, #0xee
	lsls r1, r1, #1
	cmp r3, r1
	ble _0802F1AE
	adds r0, r1, #0
_0802F1AE:
	strh r0, [r2, #0x38]
	adds r1, r2, #0
	adds r1, #0x48
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_0802F1BA:
	pop {r0}
	bx r0
	.align 2, 0
_0802F1C0: .4byte 0xFFFFFE24

	thumb_func_start sub_0802F1C4
sub_0802F1C4: @ 0x0802F1C4
	push {r4, lr}
	adds r3, r1, #0
	movs r0, #0
	movs r4, #1
	strh r4, [r3, #0xc]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	ldr r1, [r3, #0x2c]
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #0x10
	orrs r1, r0
	str r1, [r3, #0x2c]
	ldr r2, [r3, #0x30]
	ldr r0, _0802F1F4 @ =0x00004FFF
	cmp r2, r0
	bgt _0802F1F8
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	b _0802F202
	.align 2, 0
_0802F1F4: .4byte 0x00004FFF
_0802F1F8:
	movs r0, #0xa0
	lsls r0, r0, #8
	cmp r2, r0
	ble _0802F204
	orrs r1, r4
_0802F202:
	str r1, [r3, #0x2c]
_0802F204:
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r3, #0x34]
	ldr r2, _0802F230 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0802F234 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0802F238 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r1, r3, #0
	adds r1, #0x48
	strh r0, [r1]
	ldr r0, _0802F23C @ =sub_0802F240
	str r0, [r3, #0x28]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802F230: .4byte gRngVal
_0802F234: .4byte 0x00196225
_0802F238: .4byte 0x3C6EF35F
_0802F23C: .4byte sub_0802F240

	thumb_func_start sub_0802F240
sub_0802F240: @ 0x0802F240
	push {lr}
	adds r2, r1, #0
	adds r0, r2, #0
	adds r0, #0x44
	adds r1, #0x48
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bhs _0802F28C
	ldrh r0, [r2, #0x38]
	movs r3, #0x38
	ldrsh r1, [r2, r3]
	cmp r1, #0
	ble _0802F268
	subs r0, #0xe
	strh r0, [r2, #0x38]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0802F27A
	b _0802F276
_0802F268:
	cmp r1, #0
	bge _0802F27A
	adds r0, #0xe
	strh r0, [r2, #0x38]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0802F27A
_0802F276:
	movs r0, #0
	strh r0, [r2, #0x38]
_0802F27A:
	movs r1, #0x38
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bne _0802F2C6
	ldr r0, [r2, #0x2c]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x2c]
	b _0802F2C6
_0802F28C:
	ldr r0, [r2, #0x2c]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802F29C
	ldrh r0, [r2, #0x38]
	subs r0, #0x20
	b _0802F2A0
_0802F29C:
	ldrh r0, [r2, #0x38]
	adds r0, #0x20
_0802F2A0:
	strh r0, [r2, #0x38]
	ldrh r1, [r2, #0x38]
	movs r0, #0x38
	ldrsh r3, [r2, r0]
	ldr r0, _0802F2CC @ =0xFFFFFEB4
	cmp r3, r0
	blt _0802F2BA
	adds r0, r1, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	cmp r3, r1
	ble _0802F2BA
	adds r0, r1, #0
_0802F2BA:
	strh r0, [r2, #0x38]
	adds r1, r2, #0
	adds r1, #0x48
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_0802F2C6:
	pop {r0}
	bx r0
	.align 2, 0
_0802F2CC: .4byte 0xFFFFFEB4

	thumb_func_start sub_0802F2D0
sub_0802F2D0: @ 0x0802F2D0
	push {lr}
	adds r3, r1, #0
	movs r1, #0
	movs r0, #2
	strh r0, [r3, #0xc]
	strb r1, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	ldr r1, [r3, #0x2c]
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #0x10
	orrs r1, r0
	str r1, [r3, #0x2c]
	ldr r2, [r3, #0x30]
	ldr r0, _0802F300 @ =0x00004FFF
	cmp r2, r0
	bgt _0802F304
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	b _0802F310
	.align 2, 0
_0802F300: .4byte 0x00004FFF
_0802F304:
	movs r0, #0xa0
	lsls r0, r0, #8
	cmp r2, r0
	ble _0802F312
	movs r0, #1
	orrs r1, r0
_0802F310:
	str r1, [r3, #0x2c]
_0802F312:
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r3, #0x34]
	ldr r2, _0802F344 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0802F348 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0802F34C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r1, r3, #0
	adds r1, #0x48
	movs r2, #0
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x4a
	strh r2, [r0]
	ldr r0, _0802F350 @ =sub_0802F354
	str r0, [r3, #0x28]
	pop {r0}
	bx r0
	.align 2, 0
_0802F344: .4byte gRngVal
_0802F348: .4byte 0x00196225
_0802F34C: .4byte 0x3C6EF35F
_0802F350: .4byte sub_0802F354

	thumb_func_start sub_0802F354
sub_0802F354: @ 0x0802F354
	push {lr}
	adds r2, r1, #0
	adds r0, r2, #0
	adds r0, #0x44
	adds r1, #0x48
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bhs _0802F3C8
	adds r3, r2, #0
	adds r3, #0x4a
	ldrh r0, [r3]
	cmp r0, #0
	bne _0802F38E
	movs r1, #0
	movs r0, #0x33
	strh r0, [r2, #0xc]
	strb r1, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r0, [r2, #0x2c]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x2c]
	movs r0, #1
	strh r0, [r3]
_0802F38E:
	ldrh r0, [r2, #0x38]
	movs r3, #0x38
	ldrsh r1, [r2, r3]
	cmp r1, #0
	ble _0802F3A4
	subs r0, #0x20
	strh r0, [r2, #0x38]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0802F3B6
	b _0802F3B2
_0802F3A4:
	cmp r1, #0
	bge _0802F3B6
	adds r0, #0x20
	strh r0, [r2, #0x38]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0802F3B6
_0802F3B2:
	movs r0, #0
	strh r0, [r2, #0x38]
_0802F3B6:
	movs r1, #0x38
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bne _0802F402
	ldr r0, [r2, #0x2c]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x2c]
	b _0802F402
_0802F3C8:
	ldr r0, [r2, #0x2c]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802F3D8
	ldrh r0, [r2, #0x38]
	subs r0, #0x20
	b _0802F3DC
_0802F3D8:
	ldrh r0, [r2, #0x38]
	adds r0, #0x20
_0802F3DC:
	strh r0, [r2, #0x38]
	ldrh r1, [r2, #0x38]
	movs r0, #0x38
	ldrsh r3, [r2, r0]
	ldr r0, _0802F408 @ =0xFFFFFE24
	cmp r3, r0
	blt _0802F3F6
	adds r0, r1, #0
	movs r1, #0xee
	lsls r1, r1, #1
	cmp r3, r1
	ble _0802F3F6
	adds r0, r1, #0
_0802F3F6:
	strh r0, [r2, #0x38]
	adds r1, r2, #0
	adds r1, #0x48
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_0802F402:
	pop {r0}
	bx r0
	.align 2, 0
_0802F408: .4byte 0xFFFFFE24

	thumb_func_start sub_0802F40C
sub_0802F40C: @ 0x0802F40C
	push {lr}
	adds r2, r1, #0
	ldrh r0, [r2, #0x3a]
	adds r1, r0, #0
	adds r1, #0x26
	strh r1, [r2, #0x3a]
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	ldr r0, _0802F458 @ =0xFFFFFD80
	cmp r3, r0
	blt _0802F42E
	adds r0, r1, #0
	movs r1, #0xa0
	lsls r1, r1, #2
	cmp r3, r1
	ble _0802F42E
	adds r0, r1, #0
_0802F42E:
	strh r0, [r2, #0x3a]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0802F454
	ldr r0, _0802F45C @ =0x00000185
	strh r0, [r2, #0xc]
	movs r0, #3
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r0, [r2, #0x2c]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #8
	ands r0, r1
	str r0, [r2, #0x2c]
	ldr r0, _0802F460 @ =sub_0802F464
	str r0, [r2, #0x28]
_0802F454:
	pop {r0}
	bx r0
	.align 2, 0
_0802F458: .4byte 0xFFFFFD80
_0802F45C: .4byte 0x00000185
_0802F460: .4byte sub_0802F464

	thumb_func_start sub_0802F464
sub_0802F464: @ 0x0802F464
	push {lr}
	ldr r3, [r1, #0x2c]
	movs r2, #0x40
	ands r2, r3
	cmp r2, #0
	beq _0802F498
	ldrh r0, [r1, #0x3a]
	adds r2, r0, #0
	adds r2, #0x26
	strh r2, [r1, #0x3a]
	lsls r0, r2, #0x10
	asrs r3, r0, #0x10
	ldr r0, _0802F494 @ =0xFFFFFD80
	cmp r3, r0
	blt _0802F48E
	adds r0, r2, #0
	movs r2, #0xa0
	lsls r2, r2, #2
	cmp r3, r2
	ble _0802F48E
	adds r0, r2, #0
_0802F48E:
	strh r0, [r1, #0x3a]
	b _0802F4B2
	.align 2, 0
_0802F494: .4byte 0xFFFFFD80
_0802F498:
	movs r0, #0
	strh r2, [r1, #0xc]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #9
	rsbs r0, r0, #0
	ands r3, r0
	movs r0, #0x10
	orrs r3, r0
	str r3, [r1, #0x2c]
	ldr r0, _0802F4B8 @ =sub_08030018
	str r0, [r1, #0x28]
_0802F4B2:
	pop {r0}
	bx r0
	.align 2, 0
_0802F4B8: .4byte sub_08030018

	thumb_func_start sub_0802F4BC
sub_0802F4BC: @ 0x0802F4BC
	push {lr}
	adds r2, r1, #0
	movs r0, #6
	strh r0, [r2, #0xc]
	movs r0, #5
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r1, [r2, #0x2c]
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	subs r0, #8
	ands r1, r0
	str r1, [r2, #0x2c]
	ldr r3, [r2, #0x30]
	ldr r0, _0802F4EC @ =0x00004FFF
	cmp r3, r0
	bgt _0802F4F0
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	b _0802F4FC
	.align 2, 0
_0802F4EC: .4byte 0x00004FFF
_0802F4F0:
	movs r0, #0xa0
	lsls r0, r0, #8
	cmp r3, r0
	ble _0802F4FE
	movs r0, #1
	orrs r1, r0
_0802F4FC:
	str r1, [r2, #0x2c]
_0802F4FE:
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r2, #0x34]
	adds r0, r2, #0
	adds r0, #0x48
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, _0802F518 @ =sub_08030024
	str r0, [r2, #0x28]
	pop {r0}
	bx r0
	.align 2, 0
_0802F518: .4byte sub_08030024

	thumb_func_start sub_0802F51C
sub_0802F51C: @ 0x0802F51C
	push {r4, lr}
	adds r2, r1, #0
	ldrh r0, [r2, #0x38]
	movs r3, #0x38
	ldrsh r1, [r2, r3]
	cmp r1, #0
	ble _0802F536
	subs r0, #0xe
	strh r0, [r2, #0x38]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0802F548
	b _0802F544
_0802F536:
	cmp r1, #0
	bge _0802F548
	adds r0, #0xe
	strh r0, [r2, #0x38]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0802F548
_0802F544:
	movs r0, #0
	strh r0, [r2, #0x38]
_0802F548:
	ldr r1, [r2, #0x2c]
	movs r0, #0x40
	ands r0, r1
	adds r4, r1, #0
	cmp r0, #0
	beq _0802F574
	ldrh r0, [r2, #0x3a]
	adds r1, r0, #0
	adds r1, #0x26
	strh r1, [r2, #0x3a]
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	ldr r0, _0802F5A0 @ =0xFFFFFEB0
	cmp r3, r0
	blt _0802F572
	adds r0, r1, #0
	movs r1, #0xa0
	lsls r1, r1, #2
	cmp r3, r1
	ble _0802F572
	adds r0, r1, #0
_0802F572:
	strh r0, [r2, #0x3a]
_0802F574:
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _0802F5AC
	movs r1, #0
	movs r0, #7
	strh r0, [r2, #0xc]
	strb r1, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r4
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x2c]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802F5A8
	ldr r0, _0802F5A4 @ =sub_08030068
	b _0802F5AA
	.align 2, 0
_0802F5A0: .4byte 0xFFFFFEB0
_0802F5A4: .4byte sub_08030068
_0802F5A8:
	ldr r0, _0802F5B4 @ =sub_080301DC
_0802F5AA:
	str r0, [r2, #0x28]
_0802F5AC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802F5B4: .4byte sub_080301DC

	thumb_func_start sub_0802F5B8
sub_0802F5B8: @ 0x0802F5B8
	push {lr}
	adds r3, r1, #0
	ldrh r0, [r3, #0x38]
	movs r2, #0x38
	ldrsh r1, [r3, r2]
	cmp r1, #0
	ble _0802F5D2
	subs r0, #0xe
	strh r0, [r3, #0x38]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0802F5E4
	b _0802F5E0
_0802F5D2:
	cmp r1, #0
	bge _0802F5E4
	adds r0, #0xe
	strh r0, [r3, #0x38]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0802F5E4
_0802F5E0:
	movs r0, #0
	strh r0, [r3, #0x38]
_0802F5E4:
	ldr r0, [r3, #0x2c]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802F62C
	ldrh r0, [r3, #0x3a]
	adds r1, r0, #0
	adds r1, #0x26
	strh r1, [r3, #0x3a]
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	ldr r0, _0802F624 @ =0xFFFFFEB0
	cmp r2, r0
	blt _0802F60C
	adds r0, r1, #0
	movs r1, #0xa0
	lsls r1, r1, #2
	cmp r2, r1
	ble _0802F60C
	adds r0, r1, #0
_0802F60C:
	strh r0, [r3, #0x3a]
	adds r0, r3, #0
	adds r0, #0x48
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x1e
	bls _0802F630
	ldr r0, _0802F628 @ =sub_080300A0
	b _0802F62E
	.align 2, 0
_0802F624: .4byte 0xFFFFFEB0
_0802F628: .4byte sub_080300A0
_0802F62C:
	ldr r0, _0802F634 @ =sub_0803010C
_0802F62E:
	str r0, [r3, #0x28]
_0802F630:
	pop {r0}
	bx r0
	.align 2, 0
_0802F634: .4byte sub_0803010C

	thumb_func_start sub_0802F638
sub_0802F638: @ 0x0802F638
	push {lr}
	adds r3, r1, #0
	ldr r0, [r3, #0x2c]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802F694
	ldrh r0, [r3, #0x3a]
	adds r1, r0, #0
	adds r1, #0x26
	strh r1, [r3, #0x3a]
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	ldr r0, _0802F68C @ =0xFFFFFEB0
	cmp r2, r0
	blt _0802F664
	adds r0, r1, #0
	movs r1, #0xa0
	lsls r1, r1, #2
	cmp r2, r1
	ble _0802F664
	adds r0, r1, #0
_0802F664:
	strh r0, [r3, #0x3a]
	ldr r2, [r3, #0x2c]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0802F698
	movs r1, #4
	movs r0, #4
	strh r0, [r3, #0xc]
	strb r1, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #9
	rsbs r0, r0, #0
	ands r2, r0
	subs r0, #8
	ands r2, r0
	str r2, [r3, #0x2c]
	ldr r0, _0802F690 @ =sub_080300CC
	b _0802F696
	.align 2, 0
_0802F68C: .4byte 0xFFFFFEB0
_0802F690: .4byte sub_080300CC
_0802F694:
	ldr r0, _0802F69C @ =sub_0803017C
_0802F696:
	str r0, [r3, #0x28]
_0802F698:
	pop {r0}
	bx r0
	.align 2, 0
_0802F69C: .4byte sub_0803017C

	thumb_func_start sub_0802F6A0
sub_0802F6A0: @ 0x0802F6A0
	push {r4, lr}
	adds r3, r1, #0
	ldrh r0, [r3, #0x38]
	movs r2, #0x38
	ldrsh r1, [r3, r2]
	cmp r1, #0
	ble _0802F6BA
	subs r0, #0xe
	strh r0, [r3, #0x38]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0802F6CC
	b _0802F6C8
_0802F6BA:
	cmp r1, #0
	bge _0802F6CC
	adds r0, #0xe
	strh r0, [r3, #0x38]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0802F6CC
_0802F6C8:
	movs r0, #0
	strh r0, [r3, #0x38]
_0802F6CC:
	ldr r1, [r3, #0x2c]
	movs r0, #0x40
	ands r0, r1
	adds r4, r1, #0
	cmp r0, #0
	beq _0802F6F8
	ldrh r0, [r3, #0x3a]
	adds r2, r0, #0
	adds r2, #0x26
	strh r2, [r3, #0x3a]
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	ldr r0, _0802F70C @ =0xFFFFFD80
	cmp r1, r0
	blt _0802F6F6
	adds r0, r2, #0
	movs r2, #0xa0
	lsls r2, r2, #2
	cmp r1, r2
	ble _0802F6F6
	adds r0, r2, #0
_0802F6F6:
	strh r0, [r3, #0x3a]
_0802F6F8:
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _0802F704
	ldr r0, _0802F710 @ =sub_080301B0
	str r0, [r3, #0x28]
_0802F704:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802F70C: .4byte 0xFFFFFD80
_0802F710: .4byte sub_080301B0

	thumb_func_start sub_0802F714
sub_0802F714: @ 0x0802F714
	push {lr}
	adds r2, r1, #0
	ldrh r0, [r2, #0x38]
	movs r3, #0x38
	ldrsh r1, [r2, r3]
	cmp r1, #0
	ble _0802F72E
	subs r0, #0xe
	strh r0, [r2, #0x38]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0802F740
	b _0802F73C
_0802F72E:
	cmp r1, #0
	bge _0802F740
	adds r0, #0xe
	strh r0, [r2, #0x38]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0802F740
_0802F73C:
	movs r0, #0
	strh r0, [r2, #0x38]
_0802F740:
	ldr r0, [r2, #0x2c]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802F770
	ldrh r0, [r2, #0x3a]
	adds r1, r0, #0
	adds r1, #0x26
	strh r1, [r2, #0x3a]
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	ldr r0, _0802F76C @ =0xFFFFFD80
	cmp r3, r0
	blt _0802F768
	adds r0, r1, #0
	movs r1, #0xa0
	lsls r1, r1, #2
	cmp r3, r1
	ble _0802F768
	adds r0, r1, #0
_0802F768:
	strh r0, [r2, #0x3a]
	b _0802F774
	.align 2, 0
_0802F76C: .4byte 0xFFFFFD80
_0802F770:
	ldr r0, _0802F778 @ =sub_0803010C
	str r0, [r2, #0x28]
_0802F774:
	pop {r0}
	bx r0
	.align 2, 0
_0802F778: .4byte sub_0803010C

	thumb_func_start sub_0802F77C
sub_0802F77C: @ 0x0802F77C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r2, [r4, #0x34]
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	ldr r3, _0802F7AC @ =gRngVal
	ldr r1, [r3]
	ldr r0, _0802F7B0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0802F7B4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	lsrs r0, r0, #0x10
	movs r3, #7
	ands r0, r3
	adds r1, r4, #0
	adds r1, #0x4a
	strh r0, [r1]
	cmp r2, r0
	blo _0802F7B8
	strh r3, [r4, #0xc]
	movs r0, #0
	b _0802F7BC
	.align 2, 0
_0802F7AC: .4byte gRngVal
_0802F7B0: .4byte 0x00196225
_0802F7B4: .4byte 0x3C6EF35F
_0802F7B8:
	strh r3, [r4, #0xc]
	movs r0, #1
_0802F7BC:
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, [r4, #0x2c]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	str r0, [r4, #0x2c]
	ldr r1, [r4, #0x30]
	ldr r0, _0802F7E4 @ =0x00004FFF
	cmp r1, r0
	bgt _0802F7E8
	ldr r0, [r4, #0x2c]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _0802F7F6
	.align 2, 0
_0802F7E4: .4byte 0x00004FFF
_0802F7E8:
	movs r0, #0xa0
	lsls r0, r0, #8
	cmp r1, r0
	ble _0802F7F8
	ldr r0, [r4, #0x2c]
	movs r1, #1
	orrs r0, r1
_0802F7F6:
	str r0, [r4, #0x2c]
_0802F7F8:
	ldr r2, _0802F80C @ =sub_0802F810
	str r2, [r4, #0x28]
	adds r0, r5, #0
	adds r1, r4, #0
	bl _call_via_r2
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802F80C: .4byte sub_0802F810

	thumb_func_start sub_0802F810
sub_0802F810: @ 0x0802F810
	push {r4, r5, lr}
	adds r2, r1, #0
	adds r0, r2, #0
	adds r0, #0x44
	adds r1, #0x48
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bhs _0802F82C
	ldr r0, [r2, #0x2c]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x2c]
	b _0802F8C8
_0802F82C:
	ldr r0, [r2, #0x34]
	lsls r0, r0, #4
	lsrs r5, r0, #0x10
	ldrh r0, [r2, #0x3a]
	adds r1, r0, #0
	adds r1, #0x16
	strh r1, [r2, #0x3a]
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	ldr r0, _0802F850 @ =0xFFFFFEB0
	cmp r4, r0
	blt _0802F854
	movs r3, #0x90
	lsls r3, r3, #1
	cmp r4, r3
	ble _0802F856
	adds r1, r3, #0
	b _0802F856
	.align 2, 0
_0802F850: .4byte 0xFFFFFEB0
_0802F854:
	adds r1, r0, #0
_0802F856:
	strh r1, [r2, #0x3a]
	adds r0, r2, #0
	adds r0, #0x4a
	adds r4, r0, #0
	ldrh r0, [r4]
	cmp r5, r0
	blo _0802F880
	subs r1, #0x78
	strh r1, [r2, #0x3a]
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	ldr r0, _0802F890 @ =0xFFFFFEB0
	cmp r3, r0
	blt _0802F87E
	adds r0, r1, #0
	movs r1, #0x90
	lsls r1, r1, #1
	cmp r3, r1
	ble _0802F87E
	adds r0, r1, #0
_0802F87E:
	strh r0, [r2, #0x3a]
_0802F880:
	ldr r0, [r2, #0x2c]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802F894
	ldrh r0, [r2, #0x38]
	subs r0, #0x16
	b _0802F898
	.align 2, 0
_0802F890: .4byte 0xFFFFFEB0
_0802F894:
	ldrh r0, [r2, #0x38]
	adds r0, #0x16
_0802F898:
	strh r0, [r2, #0x38]
	ldrh r1, [r2, #0x38]
	movs r0, #0x38
	ldrsh r3, [r2, r0]
	ldr r0, _0802F8D0 @ =0xFFFFFEF0
	cmp r3, r0
	blt _0802F8B2
	adds r0, r1, #0
	movs r1, #0x88
	lsls r1, r1, #1
	cmp r3, r1
	ble _0802F8B2
	adds r0, r1, #0
_0802F8B2:
	strh r0, [r2, #0x38]
	ldrh r4, [r4]
	cmp r5, r4
	bne _0802F8BE
	ldr r0, _0802F8D4 @ =sub_0802F77C
	str r0, [r2, #0x28]
_0802F8BE:
	adds r1, r2, #0
	adds r1, #0x48
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_0802F8C8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802F8D0: .4byte 0xFFFFFEF0
_0802F8D4: .4byte sub_0802F77C
