	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080DD55C
sub_080DD55C: @ 0x080DD55C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080DD58C @ =sub_080DD62C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080DD590 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DD594
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DD59C
	.align 2, 0
_080DD58C: .4byte sub_080DD62C
_080DD590: .4byte sub_0803DCCC
_080DD594:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DD59C:
	adds r4, r0, #0
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
	adds r6, r4, #0
	adds r6, #0x42
	movs r7, #0
	strh r0, [r6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r3, _080DD610 @ =0x00000339
	movs r0, #0xc
	str r0, [sp]
	movs r0, #0x19
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x40
	bl sub_080709F8
	adds r5, r4, #0
	adds r5, #0x2b
	strb r7, [r5]
	ldr r2, _080DD614 @ =gKirbys
	ldr r0, _080DD618 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _080DD620
	ldr r6, _080DD61C @ =0x0000033B
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DD622
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080DD622
	.align 2, 0
_080DD610: .4byte 0x00000339
_080DD614: .4byte gKirbys
_080DD618: .4byte gUnk_0203AD3C
_080DD61C: .4byte 0x0000033B
_080DD620:
	strb r7, [r5]
_080DD622:
	adds r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080DD62C
sub_080DD62C: @ 0x080DD62C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	ldr r2, _080DD650 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DD654
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DD65C
	.align 2, 0
_080DD650: .4byte gCurTask
_080DD654:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DD65C:
	adds r5, r0, #0
	ldr r0, [r5, #0x44]
	mov r8, r0
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080DD678
	ldr r0, [r2]
	bl TaskDestroy
	b _080DD8CA
_080DD678:
	mov r2, r8
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _080DD68A
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r5, #6]
	b _080DD8CA
_080DD68A:
	ldr r2, _080DD6F4 @ =gKirbys
	ldr r0, _080DD6F8 @ =gUnk_0203AD3C
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
	ldrh r6, [r7]
	cmp r0, r6
	bne _080DD73C
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080DD704
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080DD762
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0x40
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080DD6FC @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080DD700 @ =0x0400000A
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
	b _080DD762
	.align 2, 0
_080DD6F4: .4byte gKirbys
_080DD6F8: .4byte gUnk_0203AD3C
_080DD6FC: .4byte 0xFFF7FFFF
_080DD700: .4byte 0x0400000A
_080DD704:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080DD762
	movs r0, #0x40
	bl VramMalloc
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080DD734 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080DD738 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080DD762
	.align 2, 0
_080DD734: .4byte 0xFFF7FFFF
_080DD738: .4byte 0x0400000A
_080DD73C:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _080DD758
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080DD758
	adds r0, r1, #0
	bl VramFree
	str r4, [r5, #0xc]
_080DD758:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080DD762:
	ldr r2, _080DD7A4 @ =gKirbys
	ldr r0, _080DD7A8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	bne _080DD7B0
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080DD7B8
	ldr r6, _080DD7AC @ =0x0000033B
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DD7B8
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080DD7B8
	.align 2, 0
_080DD7A4: .4byte gKirbys
_080DD7A8: .4byte gUnk_0203AD3C
_080DD7AC: .4byte 0x0000033B
_080DD7B0:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_080DD7B8:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _080DD80C
	ldrb r0, [r3]
	cmp r0, #0
	beq _080DD7D6
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080DD7D6
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080DD7D6:
	cmp r3, #0
	beq _080DD80C
	ldr r0, _080DD808 @ =gUnk_03000510
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
	beq _080DD878
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080DD878
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080DD8CA
	.align 2, 0
_080DD808: .4byte gUnk_03000510
_080DD80C:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080DD870 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	beq _080DD84A
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DD84A
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DD84A
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DD84A
	movs r3, #4
_080DD84A:
	ldr r0, _080DD874 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080DD878
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080DD878
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080DD8CA
	.align 2, 0
_080DD870: .4byte gKirbys
_080DD874: .4byte gUnk_03000510
_080DD878:
	mov r0, r8
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	beq _080DD8AA
	cmp r0, #1
	bgt _080DD88C
	cmp r0, #0
	beq _080DD892
	b _080DD8AA
_080DD88C:
	cmp r0, #2
	beq _080DD8A2
	b _080DD8AA
_080DD892:
	ldrh r0, [r5, #6]
	movs r1, #4
	orrs r1, r0
	strh r1, [r5, #6]
	adds r1, r5, #0
	adds r1, #0x26
	movs r0, #0xd
	b _080DD8B8
_080DD8A2:
	adds r1, r5, #0
	adds r1, #0x26
	movs r0, #0x11
	b _080DD8B8
_080DD8AA:
	ldrh r0, [r5, #6]
	movs r1, #4
	orrs r1, r0
	strh r1, [r5, #6]
	adds r1, r5, #0
	adds r1, #0x26
	movs r0, #0xc
_080DD8B8:
	strb r0, [r1]
	mov r1, r8
	ldr r0, [r1, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r1, #0x44]
	str r0, [r5, #0x38]
	adds r0, r5, #0
	bl sub_0806FAC8
_080DD8CA:
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080DD8D8
sub_080DD8D8: @ 0x080DD8D8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080DD90C @ =sub_080DD9B4
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080DD910 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DD914
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DD91C
	.align 2, 0
_080DD90C: .4byte sub_080DD9B4
_080DD910: .4byte sub_0803DCCC
_080DD914:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DD91C:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r2, #0
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
	adds r6, r4, #0
	adds r6, #0x42
	movs r1, #0
	mov r8, r1
	strh r0, [r6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r7, _080DD994 @ =0x00000339
	str r2, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #9
	adds r3, r7, #0
	bl sub_080709F8
	adds r5, r4, #0
	adds r5, #0x2b
	mov r0, r8
	strb r0, [r5]
	ldr r2, _080DD998 @ =gKirbys
	ldr r0, _080DD99C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _080DD9A0
	adds r0, r7, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DD9A4
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080DD9A4
	.align 2, 0
_080DD994: .4byte 0x00000339
_080DD998: .4byte gKirbys
_080DD99C: .4byte gUnk_0203AD3C
_080DD9A0:
	mov r1, r8
	strb r1, [r5]
_080DD9A4:
	adds r0, r4, #0
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080DD9B4
sub_080DD9B4: @ 0x080DD9B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	ldr r2, _080DD9D8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DD9DC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DD9E4
	.align 2, 0
_080DD9D8: .4byte gCurTask
_080DD9DC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DD9E4:
	adds r5, r0, #0
	ldr r0, [r5, #0x44]
	mov r8, r0
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080DDA00
	ldr r0, [r2]
	bl TaskDestroy
	b _080DDC38
_080DDA00:
	mov r2, r8
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _080DDA12
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r5, #6]
	b _080DDC38
_080DDA12:
	ldr r2, _080DDA7C @ =gKirbys
	ldr r0, _080DDA80 @ =gUnk_0203AD3C
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
	ldrh r6, [r7]
	cmp r0, r6
	bne _080DDAC4
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080DDA8C
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080DDAEA
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #9
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080DDA84 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080DDA88 @ =0x0400000A
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
	b _080DDAEA
	.align 2, 0
_080DDA7C: .4byte gKirbys
_080DDA80: .4byte gUnk_0203AD3C
_080DDA84: .4byte 0xFFF7FFFF
_080DDA88: .4byte 0x0400000A
_080DDA8C:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080DDAEA
	movs r0, #9
	bl VramMalloc
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080DDABC @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080DDAC0 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080DDAEA
	.align 2, 0
_080DDABC: .4byte 0xFFF7FFFF
_080DDAC0: .4byte 0x0400000A
_080DDAC4:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _080DDAE0
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080DDAE0
	adds r0, r1, #0
	bl VramFree
	str r4, [r5, #0xc]
_080DDAE0:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080DDAEA:
	ldr r2, _080DDB2C @ =gKirbys
	ldr r0, _080DDB30 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	bne _080DDB38
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080DDB40
	ldr r6, _080DDB34 @ =0x00000339
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DDB40
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080DDB40
	.align 2, 0
_080DDB2C: .4byte gKirbys
_080DDB30: .4byte gUnk_0203AD3C
_080DDB34: .4byte 0x00000339
_080DDB38:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_080DDB40:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _080DDB94
	ldrb r0, [r3]
	cmp r0, #0
	beq _080DDB5E
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080DDB5E
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080DDB5E:
	cmp r3, #0
	beq _080DDB94
	ldr r0, _080DDB90 @ =gUnk_03000510
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
	beq _080DDC00
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080DDC00
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080DDC38
	.align 2, 0
_080DDB90: .4byte gUnk_03000510
_080DDB94:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080DDBF8 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	beq _080DDBD2
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DDBD2
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DDBD2
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DDBD2
	movs r3, #4
_080DDBD2:
	ldr r0, _080DDBFC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080DDC00
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080DDC00
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080DDC38
	.align 2, 0
_080DDBF8: .4byte gKirbys
_080DDBFC: .4byte gUnk_03000510
_080DDC00:
	ldrh r1, [r5, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r5, #6]
	mov r1, r8
	ldr r0, [r1, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r1, #0x44]
	str r0, [r5, #0x38]
	mov r0, r8
	adds r0, #0x54
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x40
	strb r1, [r0]
	mov r0, r8
	adds r0, #0x55
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x41
	strb r0, [r1]
	adds r0, r5, #0
	mov r1, r8
	bl sub_080DDFB4
	adds r0, r5, #0
	bl sub_0806FAC8
_080DDC38:
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080DDC44
sub_080DDC44: @ 0x080DDC44
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	ldr r0, _080DDC7C @ =sub_080DDD60
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080DDC80 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DDC84
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DDC8C
	.align 2, 0
_080DDC7C: .4byte sub_080DDD60
_080DDC80: .4byte sub_0803DCCC
_080DDC84:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DDC8C:
	adds r4, r0, #0
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
	adds r1, r4, #0
	adds r1, #0x42
	movs r3, #0
	strh r0, [r1]
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	adds r2, r1, #0
	orrs r2, r0
	orrs r2, r3
	strh r2, [r4, #6]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DDCDA
	lsls r0, r6, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x34]
	subs r1, r1, r0
	str r1, [r4, #0x34]
	movs r0, #1
	orrs r2, r0
	strh r2, [r4, #6]
	b _080DDCE4
_080DDCDA:
	lsls r1, r6, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
	str r0, [r4, #0x34]
_080DDCE4:
	lsls r1, r7, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r6, _080DDD48 @ =0x0000033B
	movs r0, #0xe
	str r0, [sp]
	movs r0, #0x1a
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x20
	adds r3, r6, #0
	bl sub_080709F8
	adds r5, r4, #0
	adds r5, #0x2b
	movs r3, #0
	strb r3, [r5]
	ldr r2, _080DDD4C @ =gKirbys
	ldr r0, _080DDD50 @ =gUnk_0203AD3C
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
	bne _080DDD54
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DDD56
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080DDD56
	.align 2, 0
_080DDD48: .4byte 0x0000033B
_080DDD4C: .4byte gKirbys
_080DDD50: .4byte gUnk_0203AD3C
_080DDD54:
	strb r3, [r5]
_080DDD56:
	adds r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080DDD60
sub_080DDD60: @ 0x080DDD60
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r2, _080DDD80 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DDD84
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DDD8C
	.align 2, 0
_080DDD80: .4byte gCurTask
_080DDD84:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DDD8C:
	adds r5, r0, #0
	ldrh r3, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _080DDDA2
	ldr r0, [r2]
	bl TaskDestroy
	b _080DDFAC
_080DDDA2:
	ldr r2, _080DDE08 @ =gKirbys
	ldr r0, _080DDE0C @ =gUnk_0203AD3C
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
	bne _080DDE50
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080DDE18
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080DDE76
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #9
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080DDE10 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080DDE14 @ =0x0400000A
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
	b _080DDE76
	.align 2, 0
_080DDE08: .4byte gKirbys
_080DDE0C: .4byte gUnk_0203AD3C
_080DDE10: .4byte 0xFFF7FFFF
_080DDE14: .4byte 0x0400000A
_080DDE18:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080DDE76
	movs r0, #9
	bl VramMalloc
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080DDE48 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080DDE4C @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080DDE76
	.align 2, 0
_080DDE48: .4byte 0xFFF7FFFF
_080DDE4C: .4byte 0x0400000A
_080DDE50:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _080DDE6C
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080DDE6C
	adds r0, r1, #0
	bl VramFree
	str r4, [r5, #0xc]
_080DDE6C:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080DDE76:
	ldr r2, _080DDEBC @ =gKirbys
	ldr r0, _080DDEC0 @ =gUnk_0203AD3C
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
	bne _080DDEC8
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080DDED0
	ldr r6, _080DDEC4 @ =0x00000339
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DDED0
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080DDED0
	.align 2, 0
_080DDEBC: .4byte gKirbys
_080DDEC0: .4byte gUnk_0203AD3C
_080DDEC4: .4byte 0x00000339
_080DDEC8:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_080DDED0:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _080DDF24
	ldrb r0, [r3]
	cmp r0, #0
	beq _080DDEEE
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080DDEEE
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080DDEEE:
	cmp r3, #0
	beq _080DDF24
	ldr r0, _080DDF20 @ =gUnk_03000510
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
	beq _080DDF90
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080DDF90
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080DDFAC
	.align 2, 0
_080DDF20: .4byte gUnk_03000510
_080DDF24:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080DDF88 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	beq _080DDF62
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DDF62
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DDF62
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DDF62
	movs r3, #4
_080DDF62:
	ldr r0, _080DDF8C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080DDF90
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080DDF90
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080DDFAC
	.align 2, 0
_080DDF88: .4byte gKirbys
_080DDF8C: .4byte gUnk_03000510
_080DDF90:
	ldrh r1, [r5, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080DDFA6
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _080DDFAC
_080DDFA6:
	adds r0, r5, #0
	bl sub_0806FAC8
_080DDFAC:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080DDFB4
sub_080DDFB4: @ 0x080DDFB4
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	adds r0, r2, #0
	adds r0, #0xac
	ldr r3, [r0]
	ldr r0, [r3, #0x40]
	ldr r1, [r2, #0x40]
	subs r0, r0, r1
	lsls r0, r0, #8
	ldr r1, [r3, #0x44]
	ldr r2, [r2, #0x44]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r0, r1
	asrs r1, r0, #0xd
	movs r0, #7
	ands r1, r0
	cmp r1, #7
	bhi _080DE05C
	lsls r0, r1, #2
	ldr r1, _080DDFF8 @ =_080DDFFC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080DDFF8: .4byte _080DDFFC
_080DDFFC: @ jump table
	.4byte _080DE01C @ case 0
	.4byte _080DE024 @ case 1
	.4byte _080DE02C @ case 2
	.4byte _080DE034 @ case 3
	.4byte _080DE03C @ case 4
	.4byte _080DE044 @ case 5
	.4byte _080DE04C @ case 6
	.4byte _080DE054 @ case 7
_080DE01C:
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #0
	b _080DE05A
_080DE024:
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #7
	b _080DE05A
_080DE02C:
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #6
	b _080DE05A
_080DE034:
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #5
	b _080DE05A
_080DE03C:
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #4
	b _080DE05A
_080DE044:
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #3
	b _080DE05A
_080DE04C:
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #2
	b _080DE05A
_080DE054:
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #1
_080DE05A:
	strb r0, [r1]
_080DE05C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080DE064
sub_080DE064: @ 0x080DE064
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov ip, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	adds r0, #0x18
	mov sl, r0
	ldr r3, _080DE0A8 @ =gRngVal
	ldr r0, [r3]
	ldr r4, _080DE0AC @ =0x00196225
	muls r0, r4, r0
	ldr r1, _080DE0B0 @ =0x3C6EF35F
	adds r2, r0, r1
	str r2, [r3]
	lsrs r0, r2, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DE0B4
	movs r2, #0x12
	str r2, [sp]
	mov sb, r1
	b _080DE0E0
	.align 2, 0
_080DE0A8: .4byte gRngVal
_080DE0AC: .4byte 0x00196225
_080DE0B0: .4byte 0x3C6EF35F
_080DE0B4:
	adds r0, r2, #0
	muls r0, r4, r0
	ldr r4, _080DE0D4 @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r3]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080DE0D8
	movs r7, #0x13
	str r7, [sp]
	movs r0, #1
	mov sb, r0
	b _080DE0E0
	.align 2, 0
_080DE0D4: .4byte 0x3C6EF35F
_080DE0D8:
	movs r1, #0x1c
	str r1, [sp]
	movs r2, #0
	mov sb, r2
_080DE0E0:
	movs r4, #0
	ldr r1, _080DE0F8 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080DE0FC @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080DE114
	.align 2, 0
_080DE0F8: .4byte gUnk_020229D4
_080DE0FC: .4byte gUnk_020229E0
_080DE100:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080DE11C
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080DE114:
	cmp r0, #0
	bne _080DE100
	orrs r2, r3
	str r2, [r1]
_080DE11C:
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
	mov r4, sl
	strh r4, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	mov r7, sp
	ldrb r7, [r7]
	strb r7, [r1, #0xc]
	movs r0, #0
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r4, sb
	strb r4, [r1, #0x10]
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
	mov r7, r8
	ldrb r0, [r7]
	bl CreateObject
	str r5, [r0, #0x70]
	ldr r1, _080DE184 @ =sub_0809F840
	str r1, [r0, #0x7c]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DE184: .4byte sub_0809F840

	thumb_func_start sub_080DE188
sub_080DE188: @ 0x080DE188
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	movs r3, #0
	ldr r2, _080DE29C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DE2A0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080DE2A4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r5, r0, #0x10
	movs r1, #0
	ldr r0, _080DE2A8 @ =0x00001555
	mov sb, r2
	cmp r5, r0
	blt _080DE1C4
	adds r2, r0, #0
_080DE1B2:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xa
	bhi _080DE1C4
	adds r0, r1, #1
	muls r0, r2, r0
	cmp r5, r0
	bge _080DE1B2
_080DE1C4:
	lsls r0, r1, #0x18
	lsrs r7, r0, #0x18
	mov r1, sb
	ldr r0, [r1]
	ldr r1, _080DE2A0 @ =0x00196225
	mov r8, r1
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r6, _080DE2A4 @ =0x3C6EF35F
	adds r0, r0, r6
	mov r1, sb
	str r0, [r1]
	lsls r4, r3, #0x18
	asrs r4, r4, #0x18
	adds r4, #8
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	subs r4, r4, r0
	ldr r0, _080DE2AC @ =gUnk_08356800
	adds r0, r7, r0
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	ldrb r0, [r0]
	adds r4, r4, r0
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	movs r5, #0x20
	lsls r5, r5, #0x18
	asrs r2, r5, #0x18
	mov r0, sl
	adds r1, r4, #0
	adds r3, r7, #0
	bl sub_080DE2B4
	ldr r0, _080DE2B0 @ =gUnk_0835680C
	adds r0, r7, r0
	ldrb r0, [r0]
	adds r4, r4, r0
	lsls r4, r4, #0x18
	lsrs r3, r4, #0x18
	mov r1, sb
	ldr r0, [r1]
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r0, r6
	mov r1, sb
	str r0, [r1]
	lsrs r2, r0, #0x10
	movs r1, #0
	ldr r0, _080DE2A8 @ =0x00001555
	cmp r2, r0
	blt _080DE246
	adds r6, r0, #0
_080DE234:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xa
	bhi _080DE246
	adds r0, r1, #1
	muls r0, r6, r0
	cmp r2, r0
	bge _080DE234
_080DE246:
	lsls r0, r1, #0x18
	lsrs r7, r0, #0x18
	ldr r0, _080DE2AC @ =gUnk_08356800
	adds r0, r7, r0
	lsls r4, r3, #0x18
	asrs r4, r4, #0x18
	ldrb r0, [r0]
	adds r4, r4, r0
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	movs r0, #0x80
	lsls r0, r0, #0x15
	adds r5, r5, r0
	asrs r5, r5, #0x18
	mov r0, sl
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r7, #0
	bl sub_080DE2B4
	ldr r0, _080DE2B0 @ =gUnk_0835680C
	adds r0, r7, r0
	ldrb r0, [r0]
	adds r4, r4, r0
	adds r5, #0x10
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	lsls r5, r5, #0x18
	asrs r5, r5, #0x18
	mov r0, sl
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #0xc
	bl sub_080DE2B4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DE29C: .4byte gRngVal
_080DE2A0: .4byte 0x00196225
_080DE2A4: .4byte 0x3C6EF35F
_080DE2A8: .4byte 0x00001555
_080DE2AC: .4byte gUnk_08356800
_080DE2B0: .4byte gUnk_0835680C

	thumb_func_start sub_080DE2B4
sub_080DE2B4: @ 0x080DE2B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sb, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	ldr r0, _080DE300 @ =sub_080DE42C
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DE304
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _080DE30C
	.align 2, 0
_080DE300: .4byte sub_080DE42C
_080DE304:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_080DE30C:
	adds r4, r5, #0
	adds r0, r4, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x44]
	str r6, [r4, #0x70]
	strh r1, [r4, #4]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r7, r4, #0
	adds r7, #0x60
	strh r0, [r7]
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080DE404 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080DE35E
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080DE35E:
	adds r0, r5, #0
	adds r0, #0x63
	strb r3, [r0]
	mov r0, r8
	lsls r1, r0, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	mov r0, sb
	lsls r1, r0, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldr r2, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x15
	orrs r2, r0
	ldr r0, _080DE408 @ =0x20000403
	str r0, [r5, #0x68]
	ldr r0, [r5, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	str r2, [r5, #8]
	movs r2, #8
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #8
	bl sub_0803E2B0
	adds r1, r5, #0
	adds r1, #0x10
	ldr r6, _080DE40C @ =0x0000033B
	mov r0, sl
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0x20
	adds r3, r6, #0
	bl sub_080708DC
	adds r4, r5, #0
	adds r4, #0x2f
	movs r0, #0
	strb r0, [r4]
	ldr r2, _080DE410 @ =gKirbys
	ldr r0, _080DE414 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	bne _080DE418
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DE41C
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	b _080DE41A
	.align 2, 0
_080DE404: .4byte gUnk_03000510
_080DE408: .4byte 0x20000403
_080DE40C: .4byte 0x0000033B
_080DE410: .4byte gKirbys
_080DE414: .4byte gUnk_0203AD3C
_080DE418:
	movs r0, #0
_080DE41A:
	strb r0, [r4]
_080DE41C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080DE42C
sub_080DE42C: @ 0x080DE42C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r0, _080DE44C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DE450
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DE458
	.align 2, 0
_080DE44C: .4byte gCurTask
_080DE450:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DE458:
	adds r5, r0, #0
	ldr r7, [r5, #0x70]
	ldr r2, _080DE4C4 @ =gKirbys
	ldr r0, _080DE4C8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DE50C
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080DE4D4
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080DE530
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #0x20
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080DE4CC @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080DE4D0 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _080DE530
	.align 2, 0
_080DE4C4: .4byte gKirbys
_080DE4C8: .4byte gUnk_0203AD3C
_080DE4CC: .4byte 0xFFF7FFFF
_080DE4D0: .4byte 0x0400000A
_080DE4D4:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080DE530
	movs r0, #0x20
	bl VramMalloc
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080DE504 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080DE508 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080DE530
	.align 2, 0
_080DE504: .4byte 0xFFF7FFFF
_080DE508: .4byte 0x0400000A
_080DE50C:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _080DE526
	ldr r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _080DE526
	adds r0, r1, #0
	bl VramFree
	str r4, [r5, #0x10]
_080DE526:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_080DE530:
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r2, [r0]
	ldr r4, _080DE590 @ =0x0000FFFF
	adds r3, r0, #0
	cmp r2, r4
	beq _080DE550
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080DE550
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r3]
_080DE550:
	ldr r2, _080DE594 @ =gKirbys
	ldr r0, _080DE598 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r3, [r3]
	cmp r0, r3
	bne _080DE5A0
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080DE5A8
	ldr r6, _080DE59C @ =0x0000033B
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DE5A8
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080DE5A8
	.align 2, 0
_080DE590: .4byte 0x0000FFFF
_080DE594: .4byte gKirbys
_080DE598: .4byte gUnk_0203AD3C
_080DE59C: .4byte 0x0000033B
_080DE5A0:
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
_080DE5A8:
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r4, r5, #0
	adds r4, #0x56
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080DE648
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _080DE5DA
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
	b _080DE648
_080DE5DA:
	ldr r0, [r5, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _080DE642
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _080DE608
	ldr r2, _080DE600 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080DE604 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080DE60A
	.align 2, 0
_080DE600: .4byte gCurLevelInfo
_080DE604: .4byte 0x0000065E
_080DE608:
	movs r1, #0xff
_080DE60A:
	cmp r1, #0xff
	beq _080DE642
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080DE650 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r5]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080DE654 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080DE642:
	adds r0, r5, #0
	bl sub_0806F8BC
_080DE648:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DE650: .4byte gUnk_02022EB0
_080DE654: .4byte gUnk_02022F50

	thumb_func_start sub_080DE658
sub_080DE658: @ 0x080DE658
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	ldr r0, _080DE69C @ =sub_080DE80C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080DE6A0 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DE6A4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _080DE6AC
	.align 2, 0
_080DE69C: .4byte sub_080DE80C
_080DE6A0: .4byte sub_0803DCCC
_080DE6A4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_080DE6AC:
	adds r4, r5, #0
	adds r0, r4, #0
	bl sub_0803E380
	movs r0, #0
	mov sl, r0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x44]
	str r6, [r4, #0x70]
	mov r1, sl
	strh r1, [r4, #4]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r0, [r0]
	movs r2, #0x60
	adds r2, r2, r4
	mov sb, r2
	strh r0, [r2]
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080DE7E0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080DE704
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080DE704:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r2, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x15
	orrs r2, r0
	movs r0, #0xa0
	lsls r0, r0, #1
	orrs r2, r0
	ldr r0, _080DE7E4 @ =0x20000043
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	str r2, [r4, #8]
	cmp r7, #0
	beq _080DE740
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r2, r0
	str r2, [r4, #8]
_080DE740:
	adds r0, r5, #0
	adds r0, #0x62
	strb r7, [r0]
	ldr r3, _080DE7E8 @ =gUnk_08356838
	mov r0, r8
	lsls r1, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r2, [r0]
	adds r0, r5, #0
	adds r0, #0x50
	strh r2, [r0]
	adds r1, #1
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x52
	strh r0, [r1]
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #6
	bl sub_0803E2B0
	mov r1, sl
	str r1, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E308
	adds r1, r5, #0
	adds r1, #0x10
	ldr r6, _080DE7EC @ =0x0000033B
	movs r0, #0xd
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0x20
	adds r3, r6, #0
	bl sub_080708DC
	adds r4, r5, #0
	adds r4, #0x2f
	movs r2, #0
	strb r2, [r4]
	ldr r2, _080DE7F0 @ =gKirbys
	ldr r0, _080DE7F4 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, sb
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DE7F8
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DE7FC
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080DE7FC
	.align 2, 0
_080DE7E0: .4byte gUnk_03000510
_080DE7E4: .4byte 0x20000043
_080DE7E8: .4byte gUnk_08356838
_080DE7EC: .4byte 0x0000033B
_080DE7F0: .4byte gKirbys
_080DE7F4: .4byte gUnk_0203AD3C
_080DE7F8:
	movs r2, #0
	strb r2, [r4]
_080DE7FC:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080DE80C
sub_080DE80C: @ 0x080DE80C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r0, _080DE82C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DE830
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DE838
	.align 2, 0
_080DE82C: .4byte gCurTask
_080DE830:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DE838:
	adds r5, r0, #0
	ldr r2, _080DE8A4 @ =gKirbys
	ldr r0, _080DE8A8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DE8EC
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080DE8B4
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080DE910
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #0x20
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080DE8AC @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080DE8B0 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _080DE910
	.align 2, 0
_080DE8A4: .4byte gKirbys
_080DE8A8: .4byte gUnk_0203AD3C
_080DE8AC: .4byte 0xFFF7FFFF
_080DE8B0: .4byte 0x0400000A
_080DE8B4:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080DE910
	movs r0, #0x20
	bl VramMalloc
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080DE8E4 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080DE8E8 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080DE910
	.align 2, 0
_080DE8E4: .4byte 0xFFF7FFFF
_080DE8E8: .4byte 0x0400000A
_080DE8EC:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _080DE906
	ldr r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _080DE906
	adds r0, r1, #0
	bl VramFree
	str r4, [r5, #0x10]
_080DE906:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_080DE910:
	ldr r2, _080DE958 @ =gKirbys
	ldr r0, _080DE95C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r6, r1, #0
	ldrh r1, [r6]
	cmp r0, r1
	bne _080DE964
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080DE96C
	ldr r7, _080DE960 @ =0x0000033B
	adds r0, r7, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DE96C
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080DE96C
	.align 2, 0
_080DE958: .4byte gKirbys
_080DE95C: .4byte gUnk_0203AD3C
_080DE960: .4byte 0x0000033B
_080DE964:
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
_080DE96C:
	ldr r0, [r5, #0x70]
	ldrh r2, [r6]
	ldr r3, _080DE9BC @ =0x0000FFFF
	cmp r2, r3
	beq _080DE988
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080DE988
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r6]
_080DE988:
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080DEA84
	ldr r1, [r5, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r5, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080DE9C0
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _080DE9C0
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r5, #8]
	b _080DEA84
	.align 2, 0
_080DE9BC: .4byte 0x0000FFFF
_080DE9C0:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080DE9E8
	adds r0, r5, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	adds r0, r5, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r5, #0x44]
	subs r0, r0, r1
	str r0, [r5, #0x44]
_080DE9E8:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DEA0E
	ldrb r1, [r5, #1]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080DEA06
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	b _080DEA0C
_080DEA06:
	ldr r0, [r5, #8]
	ldr r1, _080DEA38 @ =0xFFFFFDFF
	ands r0, r1
_080DEA0C:
	str r0, [r5, #8]
_080DEA0E:
	ldr r0, [r5, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _080DEA7E
	adds r1, r5, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080DEA44
	ldr r2, _080DEA3C @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080DEA40 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080DEA46
	.align 2, 0
_080DEA38: .4byte 0xFFFFFDFF
_080DEA3C: .4byte gCurLevelInfo
_080DEA40: .4byte 0x0000065E
_080DEA44:
	movs r1, #0xff
_080DEA46:
	cmp r1, #0xff
	beq _080DEA7E
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080DEA8C @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r5]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080DEA90 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080DEA7E:
	adds r0, r5, #0
	bl sub_0806F8BC
_080DEA84:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DEA8C: .4byte gUnk_02022EB0
_080DEA90: .4byte gUnk_02022F50

	thumb_func_start sub_080DEA94
sub_080DEA94: @ 0x080DEA94
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	ldr r0, _080DEAD0 @ =sub_080DECE4
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080DEAD4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DEAD8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DEAE0
	.align 2, 0
_080DEAD0: .4byte sub_080DECE4
_080DEAD4: .4byte sub_0803DCCC
_080DEAD8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DEAE0:
	adds r4, r0, #0
	bl sub_0803E380
	movs r6, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	movs r0, #0
	mov sb, r0
	strh r6, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	movs r1, #0x60
	adds r1, r1, r4
	mov r8, r1
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r2, r4, #0
	adds r2, #0x56
	strb r0, [r2]
	ldr r0, _080DEC28 @ =gUnk_03000510
	ldrb r1, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r2, [r2]
	lsls r0, r2
	movs r5, #0x10
	orrs r0, r5
	ands r1, r0
	cmp r1, #0
	beq _080DEB36
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080DEB36:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r2, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x15
	orrs r2, r0
	movs r0, #0xa0
	lsls r0, r0, #1
	orrs r2, r0
	ldr r0, _080DEC2C @ =0x20000043
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	str r2, [r4, #8]
	cmp r7, #0
	beq _080DEB72
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r2, r0
	str r2, [r4, #8]
_080DEB72:
	adds r0, r4, #0
	adds r0, #0x62
	strb r7, [r0]
	subs r0, #0x12
	strh r6, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xf8
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r2, _080DEC30 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DEC34 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080DEC38 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	subs r0, r5, r0
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x40]
	ldr r0, [r4, #0x44]
	movs r2, #0xc0
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r4, #0x44]
	movs r1, #2
	rsbs r1, r1, #0
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #2
	bl sub_0803E2B0
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E308
	adds r1, r4, #0
	adds r1, #0x10
	ldr r6, _080DEC3C @ =0x0000033B
	movs r0, #0xf
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x20
	adds r3, r6, #0
	bl sub_080708DC
	adds r5, r4, #0
	adds r5, #0x2f
	mov r0, sb
	strb r0, [r5]
	ldr r2, _080DEC40 @ =gKirbys
	ldr r0, _080DEC44 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, r8
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DEC48
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DEC4C
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080DEC4C
	.align 2, 0
_080DEC28: .4byte gUnk_03000510
_080DEC2C: .4byte 0x20000043
_080DEC30: .4byte gRngVal
_080DEC34: .4byte 0x00196225
_080DEC38: .4byte 0x3C6EF35F
_080DEC3C: .4byte 0x0000033B
_080DEC40: .4byte gKirbys
_080DEC44: .4byte gUnk_0203AD3C
_080DEC48:
	mov r2, sb
	strb r2, [r5]
_080DEC4C:
	ldr r1, _080DECC4 @ =gKirbys
	ldr r0, _080DECC8 @ =gUnk_0203AD3C
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
	bne _080DECB4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080DEC78
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080DECB4
_080DEC78:
	ldr r1, _080DECCC @ =gUnk_08D60FA4
	ldr r4, _080DECD0 @ =gSongTable
	ldr r2, _080DECD4 @ =0x00000A2C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080DEC9C
	ldr r1, _080DECD8 @ =0x00000A28
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080DECB4
_080DEC9C:
	cmp r3, #0
	beq _080DECAE
	ldr r0, _080DECDC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080DECB4
_080DECAE:
	ldr r0, _080DECE0 @ =0x00000145
	bl m4aSongNumStart
_080DECB4:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DECC4: .4byte gKirbys
_080DECC8: .4byte gUnk_0203AD3C
_080DECCC: .4byte gUnk_08D60FA4
_080DECD0: .4byte gSongTable
_080DECD4: .4byte 0x00000A2C
_080DECD8: .4byte 0x00000A28
_080DECDC: .4byte gUnk_0203AD10
_080DECE0: .4byte 0x00000145

	thumb_func_start sub_080DECE4
sub_080DECE4: @ 0x080DECE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r0, _080DED04 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DED08
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DED10
	.align 2, 0
_080DED04: .4byte gCurTask
_080DED08:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DED10:
	adds r5, r0, #0
	ldr r2, _080DED7C @ =gKirbys
	ldr r0, _080DED80 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DEDC4
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080DED8C
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080DEDE8
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #0x20
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080DED84 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080DED88 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _080DEDE8
	.align 2, 0
_080DED7C: .4byte gKirbys
_080DED80: .4byte gUnk_0203AD3C
_080DED84: .4byte 0xFFF7FFFF
_080DED88: .4byte 0x0400000A
_080DED8C:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080DEDE8
	movs r0, #0x20
	bl VramMalloc
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080DEDBC @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080DEDC0 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080DEDE8
	.align 2, 0
_080DEDBC: .4byte 0xFFF7FFFF
_080DEDC0: .4byte 0x0400000A
_080DEDC4:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _080DEDDE
	ldr r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _080DEDDE
	adds r0, r1, #0
	bl VramFree
	str r4, [r5, #0x10]
_080DEDDE:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_080DEDE8:
	ldr r2, _080DEE30 @ =gKirbys
	ldr r0, _080DEE34 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r6, r1, #0
	ldrh r1, [r6]
	cmp r0, r1
	bne _080DEE3C
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080DEE44
	ldr r7, _080DEE38 @ =0x0000033B
	adds r0, r7, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DEE44
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080DEE44
	.align 2, 0
_080DEE30: .4byte gKirbys
_080DEE34: .4byte gUnk_0203AD3C
_080DEE38: .4byte 0x0000033B
_080DEE3C:
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
_080DEE44:
	ldr r4, [r5, #0x70]
	ldrh r2, [r6]
	ldr r3, _080DEEA4 @ =0x0000FFFF
	cmp r2, r3
	beq _080DEE60
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080DEE60
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r6]
_080DEE60:
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080DEF54
	ldr r0, [r4, #8]
	movs r4, #0x80
	lsls r4, r4, #5
	ands r0, r4
	cmp r0, #0
	bne _080DEE9A
	ldr r1, [r5, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r5, #8]
	ldr r2, [r5, #0x44]
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r2, r0
	ble _080DEEA8
	movs r0, #0x8a
	lsls r0, r0, #8
	str r0, [r5, #0x44]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_080DDC44
_080DEE9A:
	ldr r0, [r5, #8]
	orrs r0, r4
	str r0, [r5, #8]
	b _080DEF54
	.align 2, 0
_080DEEA4: .4byte 0x0000FFFF
_080DEEA8:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r1, r0
	cmp r1, #0
	bne _080DEECC
	adds r0, r5, #0
	adds r0, #0x50
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	adds r0, r5, #0
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, r2, r0
	str r0, [r5, #0x44]
_080DEECC:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DEEDE
	ldr r0, [r5, #8]
	ldr r1, _080DEF08 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r5, #8]
_080DEEDE:
	ldr r0, [r5, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _080DEF4E
	adds r1, r5, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080DEF14
	ldr r2, _080DEF0C @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _080DEF10 @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _080DEF16
	.align 2, 0
_080DEF08: .4byte 0xFFFFFDFF
_080DEF0C: .4byte gCurLevelInfo
_080DEF10: .4byte 0x0000065E
_080DEF14:
	movs r1, #0xff
_080DEF16:
	cmp r1, #0xff
	beq _080DEF4E
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080DEF5C @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r5]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080DEF60 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080DEF4E:
	adds r0, r5, #0
	bl sub_0806F8BC
_080DEF54:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DEF5C: .4byte gUnk_02022EB0
_080DEF60: .4byte gUnk_02022F50

	thumb_func_start sub_080DEF64
sub_080DEF64: @ 0x080DEF64
	push {r4, r5, r6, lr}
	sub sp, #0x78
	adds r3, r0, #0
	adds r5, r3, #0
	ldr r0, _080DEFF0 @ =gUnk_03000510
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
	bne _080DEFE6
	adds r6, r3, #0
	adds r6, #0xc3
	ldrb r0, [r6]
	cmp r0, #0
	beq _080DEF92
	subs r0, #1
	strb r0, [r6]
_080DEF92:
	ldr r0, [r5, #0xc]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080DEFE6
	ldrb r0, [r6]
	cmp r0, #0
	bne _080DEFE6
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	add r0, sp, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r0, [r0]
	adds r0, #0x2b
	ldrb r0, [r0]
	mov r4, sp
	adds r4, #0x2f
	strb r0, [r4]
	ldr r1, _080DEFF4 @ =gUnk_08356868
	mov r0, sp
	bl sub_08085CE8
	adds r5, #0xb4
	ldr r0, [r5]
	ldrh r0, [r0, #8]
	strb r0, [r4]
	ldr r1, _080DEFF8 @ =gUnk_083568A0
	mov r0, sp
	bl sub_08085CE8
	ldr r0, [r5]
	ldrh r0, [r0, #4]
	strb r0, [r4]
	ldr r1, _080DEFFC @ =gUnk_083568D8
	mov r0, sp
	bl sub_08085CE8
	movs r0, #0x1e
	strb r0, [r6]
_080DEFE6:
	add sp, #0x78
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080DEFF0: .4byte gUnk_03000510
_080DEFF4: .4byte gUnk_08356868
_080DEFF8: .4byte gUnk_083568A0
_080DEFFC: .4byte gUnk_083568D8

	thumb_func_start sub_080DF000
sub_080DF000: @ 0x080DF000
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DF028 @ =sub_080DBA1C
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
_080DF028: .4byte sub_080DBA1C

	thumb_func_start sub_080DF02C
sub_080DF02C: @ 0x080DF02C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r2, _080DF050 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DF054 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080DF058 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r4, r0, #0x10
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	beq _080DF05C
	adds r0, r5, #0
	bl sub_080DF0EC
	b _080DF07C
	.align 2, 0
_080DF050: .4byte gRngVal
_080DF054: .4byte 0x00196225
_080DF058: .4byte 0x3C6EF35F
_080DF05C:
	ldr r2, _080DF084 @ =sub_080DC3D4
	adds r0, r5, #0
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r5, #0
	adds r0, #0x50
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, r5, #0
	bl sub_0808671C
	adds r1, r5, #0
	adds r1, #0xbc
	str r0, [r1]
_080DF07C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080DF084: .4byte sub_080DC3D4

	thumb_func_start sub_080DF088
sub_080DF088: @ 0x080DF088
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DF0BC @ =sub_080DC6D8
	movs r1, #1
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r1, #0
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x52
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DF0B6
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080DF0B6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DF0BC: .4byte sub_080DC6D8

	thumb_func_start sub_080DF0C0
sub_080DF0C0: @ 0x080DF0C0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DF0E8 @ =sub_080DC800
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r4, #0xbc
	ldr r0, [r4]
	bl sub_080867A0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DF0E8: .4byte sub_080DC800

	thumb_func_start sub_080DF0EC
sub_080DF0EC: @ 0x080DF0EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DF114 @ =sub_080DC550
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_0808671C
	adds r4, #0xbc
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DF114: .4byte sub_080DC550

	thumb_func_start sub_080DF118
sub_080DF118: @ 0x080DF118
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DF154 @ =sub_080DC97C
	movs r1, #0
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r1, #0
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x52
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DF146
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080DF146:
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DF154: .4byte sub_080DC97C

	thumb_func_start sub_080DF158
sub_080DF158: @ 0x080DF158
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DF188 @ =sub_080DCA44
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	movs r0, #0x1c
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DF188: .4byte sub_080DCA44

	thumb_func_start sub_080DF18C
sub_080DF18C: @ 0x080DF18C
	push {lr}
	adds r3, r0, #0
	ldrh r0, [r3, #4]
	subs r0, #1
	movs r1, #0
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _080DF1DC
	strh r0, [r3, #4]
	adds r0, r3, #0
	adds r0, #0x9e
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	ldr r2, _080DF1C8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DF1CC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080DF1D0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DF1D8
	ldr r0, _080DF1D4 @ =sub_080DCBA0
	b _080DF1DA
	.align 2, 0
_080DF1C8: .4byte gRngVal
_080DF1CC: .4byte 0x00196225
_080DF1D0: .4byte 0x3C6EF35F
_080DF1D4: .4byte sub_080DCBA0
_080DF1D8:
	ldr r0, _080DF1E0 @ =sub_080DCCB0
_080DF1DA:
	str r0, [r3, #0x78]
_080DF1DC:
	pop {r0}
	bx r0
	.align 2, 0
_080DF1E0: .4byte sub_080DCCB0

	thumb_func_start sub_080DF1E4
sub_080DF1E4: @ 0x080DF1E4
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080DF1FA
	adds r0, r1, #0
	bl sub_080DF200
_080DF1FA:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080DF200
sub_080DF200: @ 0x080DF200
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DF218 @ =sub_080DCE28
	movs r1, #1
	bl ObjectSetFunc
	adds r4, #0x9f
	movs r0, #0
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DF218: .4byte sub_080DCE28

	thumb_func_start sub_080DF21C
sub_080DF21C: @ 0x080DF21C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DF244 @ =sub_080DCEA8
	movs r1, #1
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DF248
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	b _080DF24E
	.align 2, 0
_080DF244: .4byte sub_080DCEA8
_080DF248:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0x10
_080DF24E:
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080DF258
sub_080DF258: @ 0x080DF258
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DF274 @ =sub_080DF278
	movs r1, #1
	bl ObjectSetFunc
	adds r4, #0x50
	ldrh r0, [r4]
	rsbs r0, r0, #0
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DF274: .4byte sub_080DF278

	thumb_func_start sub_080DF278
sub_080DF278: @ 0x080DF278
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	ldr r1, _080DF298 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r2, #8]
	ldrh r0, [r2, #4]
	lsls r3, r0, #0x10
	asrs r0, r3, #0x10
	cmp r0, #0x1f
	ble _080DF29C
	adds r0, r2, #0
	bl sub_080DBE3C
	b _080DF2B2
	.align 2, 0
_080DF298: .4byte 0xFFFFF7FF
_080DF29C:
	ldr r1, _080DF2B8 @ =gUnk_083567F0
	asrs r0, r3, #0x12
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0x52
	strh r0, [r1]
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
_080DF2B2:
	pop {r0}
	bx r0
	.align 2, 0
_080DF2B8: .4byte gUnk_083567F0

	thumb_func_start sub_080DF2BC
sub_080DF2BC: @ 0x080DF2BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DF310 @ =sub_080DBAF8
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r2, #0
	movs r1, #0
	strh r1, [r0]
	adds r3, r4, #0
	adds r3, #0x52
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3]
	movs r0, #0xb0
	lsls r0, r0, #8
	str r0, [r4, #0x40]
	ldr r0, _080DF314 @ =0xFFFFC000
	str r0, [r4, #0x44]
	strh r1, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
	adds r0, #0x19
	strb r2, [r0]
	adds r0, r4, #0
	bl sub_080DD8D8
	adds r1, r4, #0
	adds r1, #0xb8
	str r0, [r1]
	adds r0, r4, #0
	bl sub_080DD55C
	adds r1, r4, #0
	adds r1, #0xb4
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DF310: .4byte sub_080DBAF8
_080DF314: .4byte 0xFFFFC000
