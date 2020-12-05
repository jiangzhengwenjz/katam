	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0809E55C
sub_0809E55C: @ 0x0809E55C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0809E580 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809E584
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0809E58C
	.align 2, 0
_0809E580: .4byte gCurTask
_0809E584:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0809E58C:
	adds r7, r0, #0
	ldr r0, [r7, #0x44]
	mov ip, r0
	ldrh r3, [r7, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _0809E5A8
	ldr r0, [r2]
	bl TaskDestroy
	b _0809E78C
_0809E5A8:
	mov r2, ip
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _0809E5BA
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r7, #6]
	b _0809E78C
_0809E5BA:
	mov r5, ip
	cmp r5, #0
	beq _0809E5F0
	ldr r0, _0809E5EC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, ip
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809E660
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r3
	cmp r0, #0
	bne _0809E660
	adds r0, r7, #0
	bl sub_0803DBC8
	b _0809E78C
	.align 2, 0
_0809E5EC: .4byte gUnk_03000510
_0809E5F0:
	adds r4, r7, #0
	movs r3, #0
	ldr r2, _0809E658 @ =gUnk_02020EE0
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0809E632
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809E632
	movs r3, #2
	movs r5, #0xec
	lsls r5, r5, #2
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809E632
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809E632
	movs r3, #4
_0809E632:
	ldr r0, _0809E65C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809E660
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0809E660
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0809E78C
	.align 2, 0
_0809E658: .4byte gUnk_02020EE0
_0809E65C: .4byte gUnk_03000510
_0809E660:
	ldr r0, _0809E6D8 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0809E6A4
	ldr r5, _0809E6DC @ =gCurLevelInfo
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r4, _0809E6E0 @ =gUnk_02026D50
_0809E672:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r5
	movs r6, #0xbf
	lsls r6, r6, #3
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r3
	bne _0809E69C
	adds r6, #0x66
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0809E6B6
_0809E69C:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0809E672
_0809E6A4:
	movs r0, #1
	cmp r0, #0
	beq _0809E6B6
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
_0809E6B6:
	ldrh r2, [r7, #6]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0809E6E8
	ldrh r1, [r7, #8]
	movs r3, #8
	ldrsh r0, [r7, r3]
	cmp r0, #1
	bne _0809E6E4
	movs r5, #0x80
	lsls r5, r5, #5
	adds r0, r5, #0
	orrs r0, r2
	strh r0, [r7, #6]
	b _0809E78C
	.align 2, 0
_0809E6D8: .4byte gUnk_0203AD44
_0809E6DC: .4byte gCurLevelInfo
_0809E6E0: .4byte gUnk_02026D50
_0809E6E4:
	adds r0, r1, #1
	strh r0, [r7, #8]
_0809E6E8:
	ldrb r0, [r7, #1]
	lsls r2, r0, #0x18
	lsrs r0, r2, #0x18
	cmp r0, #0xa
	bls _0809E760
	ldr r6, _0809E754 @ =gRngVal
	ldr r0, [r6]
	ldr r5, _0809E758 @ =0x00196225
	muls r0, r5, r0
	ldr r4, _0809E75C @ =0x3C6EF35F
	adds r0, r0, r4
	adds r3, r0, #0
	muls r3, r5, r3
	adds r3, r3, r4
	str r3, [r6]
	lsrs r1, r3, #0x10
	movs r0, #0xf
	mov sb, r0
	adds r0, r1, #0
	mov r2, sb
	ands r0, r2
	movs r2, #7
	mov r8, r2
	ands r1, r2
	adds r0, r0, r1
	movs r2, #0xc
	subs r0, r2, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3c]
	adds r0, r3, #0
	muls r0, r5, r0
	adds r0, r0, r4
	muls r0, r5, r0
	adds r0, r0, r4
	str r0, [r6]
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	mov r3, sb
	ands r1, r3
	mov r5, r8
	ands r0, r5
	adds r1, r1, r0
	subs r2, r2, r1
	lsls r2, r2, #8
	strh r2, [r7, #0x3e]
	movs r6, #8
	ldrsh r0, [r7, r6]
	cmp r0, #1
	beq _0809E770
	ldrh r0, [r7, #6]
	movs r1, #4
	orrs r0, r1
	strh r0, [r7, #6]
	b _0809E770
	.align 2, 0
_0809E754: .4byte gRngVal
_0809E758: .4byte 0x00196225
_0809E75C: .4byte 0x3C6EF35F
_0809E760:
	ldr r1, _0809E798 @ =gUnk_08352DF8
	lsrs r0, r2, #0x19
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r7, #0x3e]
	ldrh r0, [r0]
	subs r1, r1, r0
	strh r1, [r7, #0x3e]
_0809E770:
	movs r0, #0x3c
	ldrsh r1, [r7, r0]
	mov r2, ip
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	movs r3, #0x3e
	ldrsh r1, [r7, r3]
	ldr r0, [r2, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x38]
	adds r0, r7, #0
	bl sub_0806FAC8
_0809E78C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809E798: .4byte gUnk_08352DF8

	thumb_func_start sub_0809E79C
sub_0809E79C: @ 0x0809E79C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	ldr r0, _0809E7D4 @ =sub_0809E8D4
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0809E7D8 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809E7DC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r7, r0, r1
	b _0809E7E4
	.align 2, 0
_0809E7D4: .4byte sub_0809E8D4
_0809E7D8: .4byte sub_0803DCCC
_0809E7DC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
_0809E7E4:
	adds r0, r7, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r7]
	mov r1, sb
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r1, #0x44]
	str r0, [r7, #0x38]
	str r1, [r7, #0x44]
	mov r0, sb
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r0, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	mov sl, r2
	mov r6, sl
	orrs r6, r0
	movs r5, #0
	orrs r6, r5
	strh r6, [r7, #6]
	ldr r1, _0809E8BC @ =gRngVal
	ldr r0, [r1]
	ldr r4, _0809E8C0 @ =0x00196225
	muls r0, r4, r0
	ldr r3, _0809E8C4 @ =0x3C6EF35F
	adds r0, r0, r3
	adds r2, r0, #0
	muls r2, r4, r2
	adds r2, r2, r3
	str r2, [r1]
	lsrs r1, r2, #0x10
	movs r5, #0xf
	mov r8, r5
	adds r0, r1, #0
	ands r0, r5
	movs r5, #7
	ands r1, r5
	adds r0, r0, r1
	movs r1, #0xc
	mov ip, r1
	subs r0, r1, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3c]
	adds r0, r2, #0
	muls r0, r4, r0
	adds r0, r0, r3
	adds r1, r0, #0
	muls r1, r4, r1
	adds r1, r1, r3
	ldr r2, _0809E8BC @ =gRngVal
	str r1, [r2]
	lsrs r1, r1, #0x10
	adds r0, r1, #0
	mov r2, r8
	ands r0, r2
	ands r1, r5
	adds r0, r0, r1
	mov r5, ip
	subs r0, r5, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3e]
	ldr r0, _0809E8C8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, sb
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809E88C
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	orrs r6, r0
	strh r6, [r7, #6]
_0809E88C:
	ldrh r0, [r7, #6]
	mov r2, sl
	orrs r0, r2
	strh r0, [r7, #6]
	adds r1, r7, #0
	adds r1, #0xc
	ldr r2, _0809E8CC @ =0x06012000
	ldr r3, _0809E8D0 @ =0x0000029D
	movs r0, #0
	str r0, [sp]
	mov r5, ip
	str r5, [sp, #4]
	adds r0, r7, #0
	bl sub_080709F8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809E8BC: .4byte gRngVal
_0809E8C0: .4byte 0x00196225
_0809E8C4: .4byte 0x3C6EF35F
_0809E8C8: .4byte gUnk_03000510
_0809E8CC: .4byte 0x06012000
_0809E8D0: .4byte 0x0000029D

	thumb_func_start sub_0809E8D4
sub_0809E8D4: @ 0x0809E8D4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0809E8F8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809E8FC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0809E904
	.align 2, 0
_0809E8F8: .4byte gCurTask
_0809E8FC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0809E904:
	adds r7, r0, #0
	ldr r0, [r7, #0x44]
	mov ip, r0
	ldrh r3, [r7, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _0809E920
	ldr r0, [r2]
	bl TaskDestroy
	b _0809EB7E
_0809E920:
	mov r2, ip
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _0809E932
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r7, #6]
	b _0809EB7E
_0809E932:
	mov r5, ip
	cmp r5, #0
	beq _0809E968
	ldr r0, _0809E964 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, ip
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809E9D8
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r3
	cmp r0, #0
	bne _0809E9D8
	adds r0, r7, #0
	bl sub_0803DBC8
	b _0809EB7E
	.align 2, 0
_0809E964: .4byte gUnk_03000510
_0809E968:
	adds r4, r7, #0
	movs r3, #0
	ldr r2, _0809E9D0 @ =gUnk_02020EE0
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0809E9AA
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809E9AA
	movs r3, #2
	movs r5, #0xec
	lsls r5, r5, #2
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809E9AA
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809E9AA
	movs r3, #4
_0809E9AA:
	ldr r0, _0809E9D4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809E9D8
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0809E9D8
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0809EB7E
	.align 2, 0
_0809E9D0: .4byte gUnk_02020EE0
_0809E9D4: .4byte gUnk_03000510
_0809E9D8:
	ldr r0, _0809EA44 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0809EA1C
	ldr r5, _0809EA48 @ =gCurLevelInfo
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r4, _0809EA4C @ =gUnk_02026D50
_0809E9EA:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r5
	movs r6, #0xbf
	lsls r6, r6, #3
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r3
	bne _0809EA14
	adds r6, #0x66
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0809EA2E
_0809EA14:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0809E9EA
_0809EA1C:
	movs r0, #1
	cmp r0, #0
	beq _0809EA2E
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
_0809EA2E:
	ldrh r1, [r7, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0809EA50
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r7, #6]
	b _0809EB7E
	.align 2, 0
_0809EA44: .4byte gUnk_0203AD44
_0809EA48: .4byte gCurLevelInfo
_0809EA4C: .4byte gUnk_02026D50
_0809EA50:
	ldrb r0, [r7, #1]
	cmp r0, #0xd
	beq _0809EA5E
	cmp r0, #0x2d
	beq _0809EA5E
	cmp r0, #0x31
	bne _0809EAAE
_0809EA5E:
	ldr r6, _0809EAD4 @ =gRngVal
	ldr r0, [r6]
	ldr r5, _0809EAD8 @ =0x00196225
	muls r0, r5, r0
	ldr r4, _0809EADC @ =0x3C6EF35F
	adds r0, r0, r4
	adds r3, r0, #0
	muls r3, r5, r3
	adds r3, r3, r4
	str r3, [r6]
	lsrs r1, r3, #0x10
	movs r0, #0xf
	mov sb, r0
	adds r0, r1, #0
	mov r2, sb
	ands r0, r2
	movs r2, #7
	mov r8, r2
	ands r1, r2
	adds r0, r0, r1
	movs r2, #0xc
	subs r0, r2, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3c]
	adds r0, r3, #0
	muls r0, r5, r0
	adds r0, r0, r4
	muls r0, r5, r0
	adds r0, r0, r4
	str r0, [r6]
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	mov r3, sb
	ands r1, r3
	mov r5, r8
	ands r0, r5
	adds r1, r1, r0
	subs r2, r2, r1
	lsls r2, r2, #8
	strh r2, [r7, #0x3e]
_0809EAAE:
	movs r6, #0x3c
	ldrsh r1, [r7, r6]
	mov r2, ip
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	movs r3, #0x3e
	ldrsh r1, [r7, r3]
	ldr r0, [r2, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x38]
	ldrb r0, [r7, #1]
	cmp r0, #0xf
	bhi _0809EB78
	lsls r0, r0, #2
	ldr r1, _0809EAE0 @ =_0809EAE4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809EAD4: .4byte gRngVal
_0809EAD8: .4byte 0x00196225
_0809EADC: .4byte 0x3C6EF35F
_0809EAE0: .4byte _0809EAE4
_0809EAE4: @ jump table
	.4byte _0809EB40 @ case 0
	.4byte _0809EB24 @ case 1
	.4byte _0809EB68 @ case 2
	.4byte _0809EB78 @ case 3
	.4byte _0809EB78 @ case 4
	.4byte _0809EB78 @ case 5
	.4byte _0809EB78 @ case 6
	.4byte _0809EB78 @ case 7
	.4byte _0809EB78 @ case 8
	.4byte _0809EB78 @ case 9
	.4byte _0809EB78 @ case 10
	.4byte _0809EB78 @ case 11
	.4byte _0809EB78 @ case 12
	.4byte _0809EB40 @ case 13
	.4byte _0809EB4E @ case 14
	.4byte _0809EB68 @ case 15
_0809EB24:
	ldr r1, _0809EB3C @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r2, [r7, #0x3c]
	adds r0, r0, r2
	strh r0, [r7, #0x3c]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	ldrh r5, [r7, #0x3e]
	adds r0, r0, r5
	b _0809EB76
	.align 2, 0
_0809EB3C: .4byte 0xFFFFFF00
_0809EB40:
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r5, #0
	ldrh r6, [r7, #0x3c]
	adds r0, r0, r6
	strh r0, [r7, #0x3c]
	b _0809EB78
_0809EB4E:
	ldr r1, _0809EB64 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r2, [r7, #0x3c]
	adds r0, r0, r2
	strh r0, [r7, #0x3c]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	ldrh r5, [r7, #0x3e]
	adds r0, r0, r5
	b _0809EB76
	.align 2, 0
_0809EB64: .4byte 0xFFFFFF00
_0809EB68:
	ldr r6, _0809EB8C @ =0xFFFFFF00
	adds r0, r6, #0
	ldrh r2, [r7, #0x3c]
	adds r1, r0, r2
	strh r1, [r7, #0x3c]
	ldrh r3, [r7, #0x3e]
	adds r0, r0, r3
_0809EB76:
	strh r0, [r7, #0x3e]
_0809EB78:
	adds r0, r7, #0
	bl sub_0806FAC8
_0809EB7E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809EB8C: .4byte 0xFFFFFF00

	thumb_func_start sub_0809EB90
sub_0809EB90: @ 0x0809EB90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	ldr r0, _0809EBC8 @ =sub_0809ECD0
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0809EBCC @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809EBD0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r7, r0, r1
	b _0809EBD8
	.align 2, 0
_0809EBC8: .4byte sub_0809ECD0
_0809EBCC: .4byte sub_0803DCCC
_0809EBD0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
_0809EBD8:
	adds r0, r7, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r7]
	mov r1, sb
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r1, #0x44]
	str r0, [r7, #0x38]
	str r1, [r7, #0x44]
	mov r0, sb
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	movs r2, #0
	strh r2, [r7, #8]
	ldrh r0, [r7, #6]
	movs r5, #0x80
	lsls r5, r5, #7
	mov sl, r5
	mov r6, sl
	orrs r6, r0
	movs r0, #0
	orrs r6, r0
	strh r6, [r7, #6]
	movs r0, #0x40
	strh r0, [r7, #4]
	ldr r1, _0809ECB8 @ =gRngVal
	ldr r0, [r1]
	ldr r4, _0809ECBC @ =0x00196225
	muls r0, r4, r0
	ldr r3, _0809ECC0 @ =0x3C6EF35F
	adds r0, r0, r3
	adds r2, r0, #0
	muls r2, r4, r2
	adds r2, r2, r3
	str r2, [r1]
	lsrs r1, r2, #0x10
	movs r5, #0xf
	mov r8, r5
	adds r0, r1, #0
	ands r0, r5
	movs r5, #7
	ands r1, r5
	adds r0, r0, r1
	movs r1, #0xc
	mov ip, r1
	subs r0, r1, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3c]
	adds r0, r2, #0
	muls r0, r4, r0
	adds r0, r0, r3
	adds r1, r0, #0
	muls r1, r4, r1
	adds r1, r1, r3
	ldr r2, _0809ECB8 @ =gRngVal
	str r1, [r2]
	lsrs r1, r1, #0x10
	adds r0, r1, #0
	mov r2, r8
	ands r0, r2
	ands r1, r5
	adds r0, r0, r1
	mov r5, ip
	subs r0, r5, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3e]
	ldr r0, _0809ECC4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, sb
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809EC88
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	orrs r6, r0
	strh r6, [r7, #6]
_0809EC88:
	ldrh r0, [r7, #6]
	mov r2, sl
	orrs r0, r2
	strh r0, [r7, #6]
	adds r1, r7, #0
	adds r1, #0xc
	ldr r2, _0809ECC8 @ =0x06012000
	ldr r3, _0809ECCC @ =0x0000029E
	movs r5, #0
	str r5, [sp]
	mov r0, ip
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_080709F8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809ECB8: .4byte gRngVal
_0809ECBC: .4byte 0x00196225
_0809ECC0: .4byte 0x3C6EF35F
_0809ECC4: .4byte gUnk_03000510
_0809ECC8: .4byte 0x06012000
_0809ECCC: .4byte 0x0000029E

	thumb_func_start sub_0809ECD0
sub_0809ECD0: @ 0x0809ECD0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0809ECF4 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809ECF8
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0809ED00
	.align 2, 0
_0809ECF4: .4byte gCurTask
_0809ECF8:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0809ED00:
	adds r7, r0, #0
	ldr r0, [r7, #0x44]
	mov ip, r0
	ldrh r3, [r7, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _0809ED1C
	ldr r0, [r2]
	bl TaskDestroy
	b _0809EF7C
_0809ED1C:
	mov r2, ip
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _0809ED2E
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r7, #6]
	b _0809EF7C
_0809ED2E:
	mov r5, ip
	cmp r5, #0
	beq _0809ED64
	ldr r0, _0809ED60 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, ip
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809EDD4
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r3
	cmp r0, #0
	bne _0809EDD4
	adds r0, r7, #0
	bl sub_0803DBC8
	b _0809EF7C
	.align 2, 0
_0809ED60: .4byte gUnk_03000510
_0809ED64:
	adds r4, r7, #0
	movs r3, #0
	ldr r2, _0809EDCC @ =gUnk_02020EE0
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0809EDA6
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809EDA6
	movs r3, #2
	movs r5, #0xec
	lsls r5, r5, #2
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809EDA6
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809EDA6
	movs r3, #4
_0809EDA6:
	ldr r0, _0809EDD0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809EDD4
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0809EDD4
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0809EF7C
	.align 2, 0
_0809EDCC: .4byte gUnk_02020EE0
_0809EDD0: .4byte gUnk_03000510
_0809EDD4:
	ldr r0, _0809EE48 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0809EE18
	ldr r5, _0809EE4C @ =gCurLevelInfo
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r4, _0809EE50 @ =gUnk_02026D50
_0809EDE6:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r5
	movs r6, #0xbf
	lsls r6, r6, #3
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r3
	bne _0809EE10
	adds r6, #0x66
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0809EE2A
_0809EE10:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0809EDE6
_0809EE18:
	movs r0, #1
	cmp r0, #0
	beq _0809EE2A
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
_0809EE2A:
	ldrh r1, [r7, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0809EE58
	movs r3, #8
	ldrsh r0, [r7, r3]
	cmp r0, #0
	beq _0809EE54
	movs r5, #0x80
	lsls r5, r5, #5
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r7, #6]
	b _0809EF7C
	.align 2, 0
_0809EE48: .4byte gUnk_0203AD44
_0809EE4C: .4byte gCurLevelInfo
_0809EE50: .4byte gUnk_02026D50
_0809EE54:
	movs r0, #1
	strh r0, [r7, #8]
_0809EE58:
	ldrb r0, [r7, #1]
	cmp r0, #0x12
	bne _0809EEC2
	ldr r6, _0809EF38 @ =gRngVal
	ldr r0, [r6]
	ldr r5, _0809EF3C @ =0x00196225
	muls r0, r5, r0
	ldr r4, _0809EF40 @ =0x3C6EF35F
	adds r0, r0, r4
	adds r3, r0, #0
	muls r3, r5, r3
	adds r3, r3, r4
	str r3, [r6]
	lsrs r1, r3, #0x10
	movs r0, #0xf
	mov sb, r0
	adds r0, r1, #0
	mov r2, sb
	ands r0, r2
	movs r2, #7
	mov r8, r2
	ands r1, r2
	adds r0, r0, r1
	movs r2, #0xc
	subs r0, r2, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3c]
	adds r0, r3, #0
	muls r0, r5, r0
	adds r0, r0, r4
	muls r0, r5, r0
	adds r0, r0, r4
	str r0, [r6]
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	mov r3, sb
	ands r1, r3
	mov r5, r8
	ands r0, r5
	adds r1, r1, r0
	subs r2, r2, r1
	lsls r2, r2, #8
	strh r2, [r7, #0x3e]
	ldr r0, _0809EF44 @ =0x0000FFC0
	strh r0, [r7, #4]
	movs r6, #8
	ldrsh r0, [r7, r6]
	cmp r0, #0
	bne _0809EEC2
	ldrh r0, [r7, #6]
	movs r1, #4
	orrs r0, r1
	strh r0, [r7, #6]
_0809EEC2:
	ldrb r0, [r7, #1]
	cmp r0, #0x24
	bne _0809EF1C
	ldr r6, _0809EF38 @ =gRngVal
	ldr r0, [r6]
	ldr r5, _0809EF3C @ =0x00196225
	muls r0, r5, r0
	ldr r4, _0809EF40 @ =0x3C6EF35F
	adds r0, r0, r4
	adds r3, r0, #0
	muls r3, r5, r3
	adds r3, r3, r4
	str r3, [r6]
	lsrs r1, r3, #0x10
	movs r0, #0xf
	mov sb, r0
	adds r0, r1, #0
	mov r2, sb
	ands r0, r2
	movs r2, #7
	mov r8, r2
	ands r1, r2
	adds r0, r0, r1
	movs r2, #0xc
	subs r0, r2, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3c]
	adds r0, r3, #0
	muls r0, r5, r0
	adds r0, r0, r4
	muls r0, r5, r0
	adds r0, r0, r4
	str r0, [r6]
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	mov r3, sb
	ands r1, r3
	mov r5, r8
	ands r0, r5
	adds r1, r1, r0
	subs r2, r2, r1
	lsls r2, r2, #8
	strh r2, [r7, #0x3e]
	movs r0, #0x40
	strh r0, [r7, #4]
_0809EF1C:
	ldrb r0, [r7, #1]
	cmp r0, #0x11
	bls _0809EF48
	ldrh r0, [r7, #0x3e]
	subs r0, #0x40
	ldrb r1, [r7, #1]
	subs r1, #0x12
	lsls r1, r1, #4
	subs r0, r0, r1
	strh r0, [r7, #0x3e]
	ldrh r0, [r7, #4]
	adds r0, #7
	b _0809EF5E
	.align 2, 0
_0809EF38: .4byte gRngVal
_0809EF3C: .4byte 0x00196225
_0809EF40: .4byte 0x3C6EF35F
_0809EF44: .4byte 0x0000FFC0
_0809EF48:
	ldrh r1, [r7, #0x3e]
	subs r1, #0x40
	ldrb r0, [r7, #1]
	lsls r0, r0, #4
	subs r1, r1, r0
	strh r1, [r7, #0x3e]
	ldrh r0, [r7, #4]
	ldrh r6, [r7, #0x3c]
	adds r1, r0, r6
	strh r1, [r7, #0x3c]
	subs r0, #7
_0809EF5E:
	strh r0, [r7, #4]
	movs r0, #0x3c
	ldrsh r1, [r7, r0]
	mov r2, ip
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	movs r3, #0x3e
	ldrsh r1, [r7, r3]
	ldr r0, [r2, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x38]
	adds r0, r7, #0
	bl sub_0806FAC8
_0809EF7C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
