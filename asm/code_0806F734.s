	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08098400
sub_08098400: @ 0x08098400
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r2, _08098428 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809842C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08098434
	.align 2, 0
_08098428: .4byte gCurTask
_0809842C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08098434:
	adds r7, r0, #0
	ldr r0, [r7, #0x44]
	mov sl, r0
	ldrh r1, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _0809844E
	ldr r0, [r2]
	bl TaskDestroy
	b _080986F0
_0809844E:
	movs r2, #0
	mov r0, sl
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x5a
	beq _08098464
	ldr r0, _080984B8 @ =0x00000103
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	bne _08098470
_08098464:
	movs r2, #0xa0
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
	movs r2, #1
_08098470:
	cmp r2, #0
	beq _08098476
	b _080986F0
_08098476:
	ldr r0, _080984BC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, sl
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809849C
	mov r1, sl
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080984A2
_0809849C:
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
_080984A2:
	ldrh r1, [r7, #4]
	lsls r2, r1, #0x10
	cmp r1, #6
	bne _080984C0
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
	b _080986F0
	.align 2, 0
_080984B8: .4byte 0x00000103
_080984BC: .4byte gUnk_03000510
_080984C0:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080984CA
	b _080986F0
_080984CA:
	mov r1, sl
	ldr r0, [r1, #0x10]
	str r0, [r7, #0xc]
	ldr r0, [r1, #0x14]
	str r0, [r7, #0x10]
	ldr r0, [r1, #0x18]
	str r0, [r7, #0x14]
	ldrh r0, [r1, #0x1c]
	strh r0, [r7, #0x18]
	ldrh r0, [r1, #0x1e]
	strh r0, [r7, #0x1a]
	asrs r0, r2, #0x11
	adds r0, #0x1a
	lsls r0, r0, #6
	strh r0, [r7, #0x20]
	ldrh r0, [r1, #0x26]
	strh r0, [r7, #0x22]
	mov r0, sl
	adds r0, #0x2a
	ldrb r0, [r0]
	adds r2, r7, #0
	adds r2, #0x26
	str r2, [sp]
	strb r0, [r2]
	mov r0, sl
	adds r0, #0x2b
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x27
	str r1, [sp, #4]
	strb r0, [r1]
	mov r0, sl
	adds r0, #0x2c
	ldrb r0, [r0]
	movs r2, #0x28
	adds r2, r2, r7
	mov sb, r2
	strb r0, [r2]
	mov r0, sl
	adds r0, #0x2d
	ldrb r0, [r0]
	movs r1, #0x29
	adds r1, r1, r7
	mov r8, r1
	strb r0, [r1]
	mov r0, sl
	adds r0, #0x2e
	ldrb r0, [r0]
	adds r6, r7, #0
	adds r6, #0x2a
	strb r0, [r6]
	mov r0, sl
	adds r0, #0x2f
	ldrb r0, [r0]
	adds r5, r7, #0
	adds r5, #0x2b
	strb r0, [r5]
	ldr r2, [r7, #0x34]
	asrs r2, r2, #8
	ldr r3, _080985C8 @ =gCurLevelInfo
	ldr r1, _080985CC @ =gUnk_0203AD3C
	ldrb r0, [r1]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	mov ip, r2
	mov r2, ip
	strh r2, [r7, #0x1c]
	ldr r1, [r7, #0x38]
	asrs r1, r1, #8
	ldr r2, _080985CC @ =gUnk_0203AD3C
	ldrb r0, [r2]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r1, r0
	strh r3, [r7, #0x1e]
	ldrh r4, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	ldr r1, [sp]
	str r1, [sp, #8]
	ldr r2, [sp, #4]
	str r2, [sp, #0xc]
	cmp r0, #0
	bne _080985E0
	ldr r2, _080985D0 @ =gKirbys
	ldr r0, _080985CC @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080985E0
	ldr r1, _080985D4 @ =gUnk_0203AD18
	ldrh r0, [r1]
	add r0, ip
	strh r0, [r7, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r7, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r4
	cmp r0, #0
	beq _080985D8
	adds r0, r7, #0
	adds r0, #0xc
	bl sub_081564D8
	b _080985E0
	.align 2, 0
_080985C8: .4byte gCurLevelInfo
_080985CC: .4byte gUnk_0203AD3C
_080985D0: .4byte gKirbys
_080985D4: .4byte gUnk_0203AD18
_080985D8:
	adds r0, r7, #0
	adds r0, #0xc
	bl sub_0815604C
_080985E0:
	mov r1, sl
	adds r1, #0xb0
	ldrh r0, [r1]
	cmp r0, #0
	bne _080985EC
	b _080986F0
_080985EC:
	mov r0, sl
	adds r0, #0xa4
	ldr r0, [r0]
	str r0, [r7, #0xc]
	mov r0, sl
	adds r0, #0xa8
	ldr r0, [r0]
	str r0, [r7, #0x10]
	mov r0, sl
	adds r0, #0xac
	ldr r0, [r0]
	str r0, [r7, #0x14]
	ldrh r0, [r1]
	strh r0, [r7, #0x18]
	mov r0, sl
	adds r0, #0xb2
	ldrh r0, [r0]
	strh r0, [r7, #0x1a]
	ldrh r0, [r7, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	adds r0, #0x1a
	lsls r0, r0, #6
	strh r0, [r7, #0x20]
	mov r0, sl
	adds r0, #0xba
	ldrh r0, [r0]
	strh r0, [r7, #0x22]
	mov r0, sl
	adds r0, #0xbe
	ldrb r0, [r0]
	ldr r1, [sp, #8]
	strb r0, [r1]
	mov r0, sl
	adds r0, #0xbf
	ldrb r0, [r0]
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	mov r0, sl
	adds r0, #0xc0
	ldrb r0, [r0]
	mov r1, sb
	strb r0, [r1]
	mov r0, sl
	adds r0, #0xc1
	ldrb r0, [r0]
	mov r2, r8
	strb r0, [r2]
	mov r0, sl
	adds r0, #0xc2
	ldrb r0, [r0]
	strb r0, [r6]
	mov r0, sl
	adds r0, #0xc3
	ldrb r0, [r0]
	strb r0, [r5]
	ldr r2, [r7, #0x34]
	asrs r2, r2, #8
	ldr r3, _080986D8 @ =gCurLevelInfo
	ldr r5, _080986DC @ =gUnk_0203AD3C
	ldrb r0, [r5]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r6, r2, r0
	strh r6, [r7, #0x1c]
	ldr r1, [r7, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r5]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r1, r0
	strh r3, [r7, #0x1e]
	ldrh r4, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	bne _080986F0
	ldr r2, _080986E0 @ =gKirbys
	ldrb r1, [r5]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080986F0
	ldr r1, _080986E4 @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r6, r0
	strh r0, [r7, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r7, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r4
	cmp r0, #0
	beq _080986E8
	adds r0, r7, #0
	adds r0, #0xc
	bl sub_081564D8
	b _080986F0
	.align 2, 0
_080986D8: .4byte gCurLevelInfo
_080986DC: .4byte gUnk_0203AD3C
_080986E0: .4byte gKirbys
_080986E4: .4byte gUnk_0203AD18
_080986E8:
	adds r0, r7, #0
	adds r0, #0xc
	bl sub_0815604C
_080986F0:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08098700
sub_08098700: @ 0x08098700
	push {r4, r5, r6, lr}
	ldr r2, _08098720 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _08098724
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0809872C
	.align 2, 0
_08098720: .4byte gCurTask
_08098724:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0809872C:
	mov ip, r0
	ldr r3, [r0, #0x44]
	ldrh r2, [r0, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08098746
	ldr r0, [r4]
	bl TaskDestroy
	b _080988A8
_08098746:
	ldr r4, [r3, #8]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08098756
	adds r0, r1, #0
	orrs r0, r2
	b _08098794
_08098756:
	ldr r0, _0809879C @ =gUnk_03000510
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
	beq _08098778
	movs r0, #0x80
	lsls r0, r0, #6
	ands r4, r0
	cmp r4, #0
	bne _08098780
_08098778:
	mov r2, ip
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
_08098780:
	mov r0, ip
	ldrh r1, [r0, #4]
	lsls r2, r1, #0x10
	cmp r1, #6
	bne _080987A0
	ldrh r1, [r0, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
_08098794:
	mov r1, ip
	strh r0, [r1, #6]
	b _080988A8
	.align 2, 0
_0809879C: .4byte gUnk_03000510
_080987A0:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080987AA
	b _080988A8
_080987AA:
	ldr r0, [r3, #0x10]
	mov r1, ip
	str r0, [r1, #0xc]
	ldr r0, [r3, #0x14]
	str r0, [r1, #0x10]
	ldr r0, [r3, #0x18]
	str r0, [r1, #0x14]
	ldrh r0, [r3, #0x1c]
	strh r0, [r1, #0x18]
	ldrh r0, [r3, #0x1e]
	strh r0, [r1, #0x1a]
	asrs r0, r2, #0x11
	adds r0, #0x1a
	lsls r0, r0, #6
	strh r0, [r1, #0x20]
	ldrh r0, [r3, #0x26]
	strh r0, [r1, #0x22]
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	adds r1, #0x26
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x2c
	ldrb r1, [r0]
	mov r0, ip
	adds r0, #0x28
	strb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #0x29
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	mov r0, ip
	ldr r2, [r0, #0x34]
	asrs r2, r2, #8
	ldr r3, _08098890 @ =gCurLevelInfo
	ldr r5, _08098894 @ =gUnk_0203AD3C
	ldrb r0, [r5]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r6, r2, r0
	mov r1, ip
	strh r6, [r1, #0x1c]
	ldr r1, [r1, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r5]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r1, r0
	mov r2, ip
	strh r3, [r2, #0x1e]
	ldrh r4, [r2, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	bne _080988A8
	ldr r2, _08098898 @ =gKirbys
	ldrb r1, [r5]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	mov r1, ip
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080988A8
	ldr r1, _0809889C @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r6, r0
	mov r2, ip
	strh r0, [r2, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r2, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r4
	cmp r0, #0
	beq _080988A0
	mov r0, ip
	adds r0, #0xc
	bl sub_081564D8
	b _080988A8
	.align 2, 0
_08098890: .4byte gCurLevelInfo
_08098894: .4byte gUnk_0203AD3C
_08098898: .4byte gKirbys
_0809889C: .4byte gUnk_0203AD18
_080988A0:
	mov r0, ip
	adds r0, #0xc
	bl sub_0815604C
_080988A8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080988B0
sub_080988B0: @ 0x080988B0
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080988E0 @ =sub_08098938
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080988E4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080988E8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080988F0
	.align 2, 0
_080988E0: .4byte sub_08098938
_080988E4: .4byte sub_0803DCCC
_080988E8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080988F0:
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
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r4, #0x38]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r4, #0x38]
	adds r1, r4, #0
	adds r1, #0xc
	movs r3, #0xe1
	lsls r3, r3, #2
	movs r0, #0x1e
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #2
	bl sub_080709F8
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08098938
sub_08098938: @ 0x08098938
	push {r4, r5, lr}
	sub sp, #0x28
	ldr r2, _08098958 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809895C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08098964
	.align 2, 0
_08098958: .4byte gCurTask
_0809895C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08098964:
	adds r5, r0, #0
	ldrh r1, [r5, #6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0809897C
	ldr r0, [r2]
	bl TaskDestroy
	b _08098A70
_0809897C:
	ldr r0, [r5, #0x44]
	ldr r0, [r0, #8]
	ands r0, r3
	cmp r0, #0
	beq _0809898E
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _08098A70
_0809898E:
	movs r0, #4
	adds r3, r0, #0
	orrs r3, r1
	strh r3, [r5, #6]
	ldr r2, _080989FC @ =gKirbys
	ldr r0, _08098A00 @ =gUnk_0203AD3C
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
	bne _08098A44
	movs r0, #0x80
	lsls r0, r0, #7
	ands r3, r0
	cmp r3, #0
	beq _08098A0C
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _08098A6A
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #2
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _08098A04 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _08098A08 @ =0x0400000A
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
	b _08098A6A
	.align 2, 0
_080989FC: .4byte gKirbys
_08098A00: .4byte gUnk_0203AD3C
_08098A04: .4byte 0xFFF7FFFF
_08098A08: .4byte 0x0400000A
_08098A0C:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _08098A6A
	movs r0, #2
	bl VramMalloc
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _08098A3C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _08098A40 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _08098A6A
	.align 2, 0
_08098A3C: .4byte 0xFFF7FFFF
_08098A40: .4byte 0x0400000A
_08098A44:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _08098A60
	movs r0, #0x80
	lsls r0, r0, #7
	ands r3, r0
	lsls r0, r3, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _08098A60
	adds r0, r1, #0
	bl VramFree
	str r4, [r5, #0xc]
_08098A60:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_08098A6A:
	adds r0, r5, #0
	bl sub_0806FAC8
_08098A70:
	add sp, #0x28
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08098A78
sub_08098A78: @ 0x08098A78
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r0, _08098AAC @ =sub_08098B34
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08098AB0 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08098AB4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08098ABC
	.align 2, 0
_08098AAC: .4byte sub_08098B34
_08098AB0: .4byte sub_0803DCCC
_08098AB4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08098ABC:
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
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08098AEC
	ldrh r0, [r4, #6]
	orrs r0, r1
	strh r0, [r4, #6]
_08098AEC:
	ldr r1, _08098B28 @ =0x00000103
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0xe
	bne _08098AFC
	adds r0, r6, #2
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08098AFC:
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _08098B2C @ =0x06012000
	ldr r3, _08098B30 @ =0x000002C7
	str r6, [sp]
	ldrh r0, [r5, #0x24]
	lsrs r0, r0, #6
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08098B28: .4byte 0x00000103
_08098B2C: .4byte 0x06012000
_08098B30: .4byte 0x000002C7

	thumb_func_start sub_08098B34
sub_08098B34: @ 0x08098B34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _08098B58 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08098B5C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08098B64
	.align 2, 0
_08098B58: .4byte gCurTask
_08098B5C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08098B64:
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xc
	ldr r0, [r4, #0x44]
	mov ip, r0
	ldrh r1, [r4, #6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08098B84
	ldr r0, [r2]
	bl TaskDestroy
	b _08098E46
_08098B84:
	ldr r2, _08098BD0 @ =0x0000DBFA
	ands r2, r1
	strh r2, [r4, #6]
	mov r1, ip
	ldr r0, [r1, #8]
	ldr r1, _08098BD4 @ =0x00002405
	ands r0, r1
	orrs r0, r2
	strh r0, [r4, #6]
	mov r0, ip
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	mov r2, ip
	ldr r0, [r2, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r2, #0x44]
	str r0, [r4, #0x38]
	mov r0, ip
	adds r0, #0xc0
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x28
	strb r1, [r0]
	ldr r0, _08098BD8 @ =0x00000103
	add r0, ip
	ldrb r0, [r0]
	cmp r0, #0xe
	bne _08098BDC
	mov r0, ip
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x36
	beq _08098BF0
	b _08098BE6
	.align 2, 0
_08098BD0: .4byte 0x0000DBFA
_08098BD4: .4byte 0x00002405
_08098BD8: .4byte 0x00000103
_08098BDC:
	mov r0, ip
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x63
	beq _08098BF0
_08098BE6:
	ldrh r1, [r4, #6]
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r4, #6]
	b _08098E46
_08098BF0:
	ldr r0, _08098C98 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r3, ip
	adds r3, #0x56
	movs r0, #1
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	mov sl, r3
	cmp r2, #0
	beq _08098CAC
	mov r2, ip
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _08098CAC
	ldr r2, _08098C9C @ =gCurLevelInfo
	ldr r6, _08098CA0 @ =gUnk_0203AD3C
	ldrb r0, [r6]
	movs r3, #0xcd
	lsls r3, r3, #3
	adds r1, r0, #0
	muls r1, r3, r1
	adds r0, r2, #0
	adds r0, #0xc
	adds r1, r1, r0
	ldr r0, [r4, #0x34]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r7, r0, #8
	strh r7, [r5, #0x10]
	ldrb r0, [r6]
	adds r1, r0, #0
	muls r1, r3, r1
	adds r2, #0x10
	adds r1, r1, r2
	ldr r0, [r4, #0x38]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r3, r0, #8
	strh r3, [r5, #0x12]
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08098C58
	b _08098E46
_08098C58:
	ldr r2, _08098CA4 @ =gKirbys
	ldrb r1, [r6]
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
	beq _08098C74
	b _08098E46
_08098C74:
	ldr r1, _08098CA8 @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r7, r0
	strh r0, [r5, #0x10]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r5, #0x12]
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _08098C90
	b _08098E22
_08098C90:
	adds r0, r5, #0
	bl sub_0815604C
	b _08098E46
	.align 2, 0
_08098C98: .4byte gUnk_03000510
_08098C9C: .4byte gCurLevelInfo
_08098CA0: .4byte gUnk_0203AD3C
_08098CA4: .4byte gKirbys
_08098CA8: .4byte gUnk_0203AD18
_08098CAC:
	ldrh r1, [r4, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08098CC0
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _08098CC6
_08098CC0:
	ldr r0, [r5, #8]
	ldr r1, _08098D34 @ =0xFFFFFBFF
	ands r0, r1
_08098CC6:
	str r0, [r5, #8]
	ldrh r2, [r4, #6]
	movs r0, #8
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08098D50
	ldrb r0, [r5, #0x1b]
	ldrb r3, [r5, #0x1a]
	cmp r0, r3
	bne _08098CE6
	ldrh r0, [r5, #0x18]
	ldrh r3, [r5, #0xc]
	cmp r0, r3
	beq _08098CF6
_08098CE6:
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08098CF6
	strb r1, [r4, #1]
	strh r1, [r4, #2]
	ldr r0, _08098D38 @ =0x0000FFFB
	ands r0, r2
	strh r0, [r4, #6]
_08098CF6:
	adds r0, r5, #0
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _08098D3C
	ldrh r0, [r4, #6]
	movs r1, #2
	movs r3, #0
	orrs r1, r0
	strh r1, [r4, #6]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _08098D50
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08098D50
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	ldrh r1, [r4, #6]
	ldr r0, _08098D38 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r4, #6]
	strb r3, [r4, #1]
	strh r2, [r4, #2]
	adds r0, r5, #0
	bl sub_08155128
	b _08098D50
	.align 2, 0
_08098D34: .4byte 0xFFFFFBFF
_08098D38: .4byte 0x0000FFFB
_08098D3C:
	ldrb r1, [r5, #0x1c]
	ldrh r0, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	lsrs r0, r0, #4
	strb r0, [r4, #1]
	ldrh r1, [r4, #6]
	ldr r0, _08098E2C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r4, #6]
_08098D50:
	ldr r1, [r4, #0x34]
	asrs r1, r1, #8
	ldr r2, _08098E30 @ =gCurLevelInfo
	ldr r7, _08098E34 @ =gUnk_0203AD3C
	ldrb r0, [r7]
	movs r3, #0xcd
	lsls r3, r3, #3
	mov ip, r3
	mov r3, ip
	muls r3, r0, r3
	adds r0, r3, #0
	movs r3, #0xc
	adds r3, r3, r2
	mov sb, r3
	add r0, sb
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r6, r4, #0
	adds r6, #0x40
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r0, r0, r1
	movs r1, #0
	mov r8, r1
	strh r0, [r5, #0x10]
	ldr r1, [r4, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r7]
	mov r3, ip
	muls r3, r0, r3
	adds r0, r3, #0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r3, r4, #0
	adds r3, #0x41
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	strh r0, [r5, #0x12]
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08098DB2
	mov r0, r8
	strb r0, [r6]
	strb r0, [r3]
_08098DB2:
	ldrb r0, [r7]
	mov r1, sl
	ldrb r1, [r1]
	cmp r0, r1
	bne _08098DDE
	mov r1, ip
	muls r1, r0, r1
	add r1, sb
	ldr r0, [r4, #0x34]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x10]
	ldrb r0, [r7]
	mov r1, ip
	muls r1, r0, r1
	adds r1, r1, r2
	ldr r0, [r4, #0x38]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x12]
_08098DDE:
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08098E46
	ldr r2, _08098E38 @ =gKirbys
	ldrb r1, [r7]
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
	bne _08098E46
	ldr r1, _08098E3C @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r5, #0x10]
	adds r0, r0, r2
	strh r0, [r5, #0x10]
	ldrh r0, [r1, #2]
	ldrh r3, [r5, #0x12]
	adds r0, r0, r3
	strh r0, [r5, #0x12]
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _08098E40
_08098E22:
	adds r0, r5, #0
	bl sub_081564D8
	b _08098E46
	.align 2, 0
_08098E2C: .4byte 0x0000FFFD
_08098E30: .4byte gCurLevelInfo
_08098E34: .4byte gUnk_0203AD3C
_08098E38: .4byte gKirbys
_08098E3C: .4byte gUnk_0203AD18
_08098E40:
	adds r0, r5, #0
	bl sub_0815604C
_08098E46:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08098E54
sub_08098E54: @ 0x08098E54
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [sp, #0x24]
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _08098EA0 @ =sub_08098F6C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08098EA4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08098EA8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08098EB0
	.align 2, 0
_08098EA0: .4byte sub_08098F6C
_08098EA4: .4byte sub_0803DCCC
_08098EA8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08098EB0:
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
	strh r0, [r1]
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	strh r7, [r4, #0x3c]
	mov r0, r8
	strh r0, [r4, #0x3e]
	mov r2, sb
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08098F02
	lsls r1, r6, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x34]
	subs r0, r0, r1
	b _08098F0A
_08098F02:
	lsls r1, r6, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
_08098F0A:
	str r0, [r4, #0x34]
	ldr r0, _08098F60 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r5, #0
	adds r1, #0x56
	movs r5, #1
	adds r0, r5, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08098F32
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_08098F32:
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _08098F64 @ =0x06012000
	ldr r3, _08098F68 @ =0x00000297
	str r5, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08098F60: .4byte gUnk_03000510
_08098F64: .4byte 0x06012000
_08098F68: .4byte 0x00000297

	thumb_func_start sub_08098F6C
sub_08098F6C: @ 0x08098F6C
	push {r4, r5, r6, r7, lr}
	ldr r2, _08098F8C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08098F90
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08098F98
	.align 2, 0
_08098F8C: .4byte gCurTask
_08098F90:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08098F98:
	adds r3, r0, #0
	ldrh r1, [r3, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08098FB4
	ldr r0, [r5]
	bl TaskDestroy
	b _08099112
_08098FB4:
	ldr r1, [r3, #0x44]
	cmp r1, #0
	beq _08099000
	ldrb r0, [r1]
	cmp r0, #0
	beq _08098FCC
	ldr r0, [r1, #8]
	ands r0, r4
	cmp r0, #0
	beq _08098FCC
	str r2, [r3, #0x44]
	movs r1, #0
_08098FCC:
	cmp r1, #0
	beq _08099000
	ldr r0, _08098FFC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08099070
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08099070
	adds r0, r3, #0
	bl sub_0803DBC8
	b _08099112
	.align 2, 0
_08098FFC: .4byte gUnk_03000510
_08099000:
	adds r5, r3, #0
	movs r4, #0
	ldr r2, _08099068 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08099042
	movs r4, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08099042
	movs r4, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08099042
	movs r4, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08099042
	movs r4, #4
_08099042:
	ldr r0, _0809906C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08099070
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08099070
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08099112
	.align 2, 0
_08099068: .4byte gKirbys
_0809906C: .4byte gUnk_03000510
_08099070:
	ldr r0, _080990DC @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _080990B4
	ldr r6, _080990E0 @ =gCurLevelInfo
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r4, [r1]
	ldr r5, _080990E4 @ =gUnk_02026D50
_08099082:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _080990AC
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080990C6
_080990AC:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08099082
_080990B4:
	movs r0, #1
	cmp r0, #0
	beq _080990C6
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
_080990C6:
	ldrh r1, [r3, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080990E8
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r3, #6]
	b _08099112
	.align 2, 0
_080990DC: .4byte gUnk_0203AD44
_080990E0: .4byte gCurLevelInfo
_080990E4: .4byte gUnk_02026D50
_080990E8:
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0809910C
	movs r7, #0x3c
	ldrsh r1, [r3, r7]
	ldr r0, [r3, #0x34]
	adds r0, r0, r1
	str r0, [r3, #0x34]
	movs r0, #0x3e
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #0x38]
	subs r0, r0, r1
	str r0, [r3, #0x38]
_0809910C:
	adds r0, r3, #0
	bl sub_0806FAC8
_08099112:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08099118
sub_08099118: @ 0x08099118
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _08099148 @ =sub_0809924C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0809914C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08099150
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _08099158
	.align 2, 0
_08099148: .4byte sub_0809924C
_0809914C: .4byte sub_0803DCCC
_08099150:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_08099158:
	adds r0, r5, #0
	bl sub_0803E3B0
	movs r2, #0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x38]
	str r6, [r5, #0x44]
	adds r4, r6, #0
	adds r4, #0x60
	ldrh r0, [r4]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	adds r3, r0, #0
	orrs r1, r3
	movs r7, #0x80
	lsls r7, r7, #3
	adds r0, r7, #0
	orrs r1, r0
	strh r2, [r5, #0x3c]
	strh r2, [r5, #0x3e]
	ldr r0, [r5, #0x38]
	ldr r2, _0809922C @ =0xFFFF6000
	adds r0, r0, r2
	str r0, [r5, #0x38]
	ldr r0, [r5, #0x34]
	adds r0, r0, r2
	str r0, [r5, #0x34]
	orrs r1, r3
	strh r1, [r5, #6]
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, _08099230 @ =0x06012000
	movs r3, #0xa7
	lsls r3, r3, #2
	movs r0, #1
	str r0, [sp]
	movs r0, #0x1a
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080709F8
	ldr r1, _08099234 @ =gKirbys
	ldr r0, _08099238 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r4, [r4]
	cmp r0, r4
	bne _08099222
	ldrb r0, [r6]
	cmp r0, #0
	bne _080991E2
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08099222
_080991E2:
	ldr r1, _0809923C @ =gUnk_08D60FA4
	ldr r4, _08099240 @ =gSongTable
	ldr r2, _08099244 @ =0x00001004
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08099208
	movs r7, #0x80
	lsls r7, r7, #5
	adds r0, r4, r7
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08099222
_08099208:
	cmp r3, #0
	beq _0809921A
	ldr r0, _08099248 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08099222
_0809921A:
	movs r0, #0x80
	lsls r0, r0, #2
	bl m4aSongNumStart
_08099222:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809922C: .4byte 0xFFFF6000
_08099230: .4byte 0x06012000
_08099234: .4byte gKirbys
_08099238: .4byte gUnk_0203AD3C
_0809923C: .4byte gUnk_08D60FA4
_08099240: .4byte gSongTable
_08099244: .4byte 0x00001004
_08099248: .4byte gUnk_0203AD10

	thumb_func_start sub_0809924C
sub_0809924C: @ 0x0809924C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _0809926C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08099270
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08099278
	.align 2, 0
_0809926C: .4byte gCurTask
_08099270:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08099278:
	adds r5, r0, #0
	ldr r6, [r5, #0x44]
	ldrh r1, [r5, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08099296
	ldr r0, [r2]
	bl TaskDestroy
	b _0809959E
_08099296:
	adds r1, r6, #0
	cmp r6, #0
	beq _080992E0
	ldrb r0, [r6]
	cmp r0, #0
	beq _080992AE
	ldr r0, [r6, #8]
	ands r0, r4
	cmp r0, #0
	beq _080992AE
	str r3, [r5, #0x44]
	movs r1, #0
_080992AE:
	cmp r1, #0
	beq _080992E0
	ldr r0, _080992DC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08099350
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08099350
	adds r0, r5, #0
	bl sub_0803DBC8
	b _0809959E
	.align 2, 0
_080992DC: .4byte gUnk_03000510
_080992E0:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _08099348 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08099322
	movs r3, #1
	movs r7, #0x82
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08099322
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08099322
	movs r3, #3
	movs r7, #0xab
	lsls r7, r7, #3
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08099322
	movs r3, #4
_08099322:
	ldr r0, _0809934C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08099350
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08099350
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0809959E
	.align 2, 0
_08099348: .4byte gKirbys
_0809934C: .4byte gUnk_03000510
_08099350:
	ldr r0, _080993FC @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldrh r1, [r5, #4]
	mov ip, r1
	cmp r0, #0
	beq _0809939C
	ldr r2, _08099400 @ =gCurLevelInfo
	mov r8, r2
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r4, _08099404 @ =gUnk_02026D50
_08099368:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r7, r8
	adds r1, r0, r7
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _08099394
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080993AE
_08099394:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08099368
_0809939C:
	movs r0, #1
	cmp r0, #0
	beq _080993AE
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_080993AE:
	mov r7, ip
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	ble _080993BA
	b _080994EC
_080993BA:
	ldrh r2, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r2
	cmp r0, #0
	beq _08099442
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0809940C
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r1, [r0]
	cmp r1, #0x63
	beq _080993E6
	ldr r7, _08099408 @ =0x00000103
	adds r0, r6, r7
	ldrb r0, [r0]
	cmp r0, #0xe
	bne _08099484
_080993E6:
	cmp r1, #0x36
	bne _080993EC
	b _0809959E
_080993EC:
	ldr r1, _08099408 @ =0x00000103
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _080993F8
	b _0809959E
_080993F8:
	b _08099484
	.align 2, 0
_080993FC: .4byte gUnk_0203AD44
_08099400: .4byte gCurLevelInfo
_08099404: .4byte gUnk_02026D50
_08099408: .4byte 0x00000103
_0809940C:
	ldr r0, _080994FC @ =0x0000FBFF
	ands r0, r2
	strh r0, [r5, #6]
	ldr r0, [r6, #0x44]
	ldr r1, _08099500 @ =0xFFFF6000
	adds r0, r0, r1
	str r0, [r5, #0x38]
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x34]
	ldr r0, _08099504 @ =gUnk_0203AD3C
	adds r1, r6, #0
	adds r1, #0x56
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _08099442
	ldr r2, _08099508 @ =0x00000292
	adds r0, r6, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r1, [r5, #0x34]
	str r1, [r0, #0x34]
	ldr r1, [r5, #0x38]
	str r1, [r0, #0x38]
_08099442:
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r1, [r0]
	cmp r1, #0x63
	beq _08099456
	ldr r7, _0809950C @ =0x00000103
	adds r0, r6, r7
	ldrb r0, [r0]
	cmp r0, #0xe
	bne _08099470
_08099456:
	cmp r1, #0x36
	beq _08099464
	ldr r1, _0809950C @ =0x00000103
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _08099470
_08099464:
	ldr r0, [r6, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	bne _0809952C
_08099470:
	ldr r2, _08099508 @ =0x00000292
	adds r0, r6, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r1, [r5, #0x34]
	str r1, [r0, #0x34]
	ldr r1, [r5, #0x38]
	str r1, [r0, #0x38]
_08099484:
	ldr r1, _08099510 @ =gKirbys
	ldr r0, _08099504 @ =gUnk_0203AD3C
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
	bne _080994EC
	ldrb r0, [r6]
	cmp r0, #0
	bne _080994B0
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080994EC
_080994B0:
	ldr r1, _08099514 @ =gUnk_08D60FA4
	ldr r4, _08099518 @ =gSongTable
	ldr r2, _0809951C @ =0x0000107C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080994D4
	ldr r7, _08099520 @ =0x00001078
	adds r0, r4, r7
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080994EC
_080994D4:
	cmp r3, #0
	beq _080994E6
	ldr r0, _08099524 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080994EC
_080994E6:
	ldr r0, _08099528 @ =0x0000020F
	bl m4aSongNumStart
_080994EC:
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _0809959E
	.align 2, 0
_080994FC: .4byte 0x0000FBFF
_08099500: .4byte 0xFFFF6000
_08099504: .4byte gUnk_0203AD3C
_08099508: .4byte 0x00000292
_0809950C: .4byte 0x00000103
_08099510: .4byte gKirbys
_08099514: .4byte gUnk_08D60FA4
_08099518: .4byte gSongTable
_0809951C: .4byte 0x0000107C
_08099520: .4byte 0x00001078
_08099524: .4byte gUnk_0203AD10
_08099528: .4byte 0x0000020F
_0809952C:
	ldrh r0, [r5, #6]
	movs r3, #4
	orrs r3, r0
	strh r3, [r5, #6]
	ldr r4, _080995A8 @ =gUnk_0835104A
	movs r7, #4
	ldrsh r1, [r5, r7]
	movs r0, #0x20
	subs r0, r0, r1
	asrs r0, r0, #2
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x52
	ldrh r0, [r0]
	adds r2, r6, #0
	adds r2, #0xd2
	subs r0, r0, r1
	ldrh r2, [r2]
	adds r0, r0, r2
	strh r0, [r5, #0x3e]
	ldrh r2, [r5, #4]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x12
	lsls r0, r0, #1
	adds r0, r0, r4
	adds r1, r6, #0
	adds r1, #0x50
	ldrh r1, [r1]
	ldrh r0, [r0]
	adds r1, r1, r0
	adds r0, r6, #0
	adds r0, #0xd0
	ldrh r0, [r0]
	adds r0, r0, r1
	strh r0, [r5, #0x3c]
	adds r2, #1
	strh r2, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r3, r0
	cmp r3, #0
	bne _08099598
	movs r0, #0x3c
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
	str r0, [r5, #0x34]
	movs r2, #0x3e
	ldrsh r1, [r5, r2]
	ldr r0, [r5, #0x38]
	subs r0, r0, r1
	str r0, [r5, #0x38]
_08099598:
	adds r0, r5, #0
	bl sub_0806FAC8
_0809959E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080995A8: .4byte gUnk_0835104A

	thumb_func_start sub_080995AC
sub_080995AC: @ 0x080995AC
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080995DC @ =sub_08099668
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080995E0 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080995E4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080995EC
	.align 2, 0
_080995DC: .4byte sub_08099668
_080995E0: .4byte sub_0803DCCC
_080995E4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080995EC:
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
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r4, #0x3c]
	adds r0, r5, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	ble _08099622
	rsbs r0, r1, #0
	strh r0, [r4, #0x3c]
_08099622:
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r4, #0x3e]
	adds r0, r5, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _08099636
	strh r1, [r4, #0x3e]
_08099636:
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _08099664 @ =0x06012000
	movs r3, #0xa9
	lsls r3, r3, #2
	movs r0, #0
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08099664: .4byte 0x06012000

	thumb_func_start sub_08099668
sub_08099668: @ 0x08099668
	push {r4, r5, r6, r7, lr}
	ldr r2, _08099688 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _0809968C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08099694
	.align 2, 0
_08099688: .4byte gCurTask
_0809968C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08099694:
	adds r3, r0, #0
	ldrh r1, [r3, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _080996B0
	ldr r0, [r5]
	bl TaskDestroy
	b _08099820
_080996B0:
	ldr r1, [r3, #0x44]
	cmp r1, #0
	beq _080996FC
	ldrb r0, [r1]
	cmp r0, #0
	beq _080996C8
	ldr r0, [r1, #8]
	ands r0, r4
	cmp r0, #0
	beq _080996C8
	str r2, [r3, #0x44]
	movs r1, #0
_080996C8:
	cmp r1, #0
	beq _080996FC
	ldr r0, _080996F8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809976C
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0809976C
	adds r0, r3, #0
	bl sub_0803DBC8
	b _08099820
	.align 2, 0
_080996F8: .4byte gUnk_03000510
_080996FC:
	adds r5, r3, #0
	movs r4, #0
	ldr r2, _08099764 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0809973E
	movs r4, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809973E
	movs r4, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809973E
	movs r4, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809973E
	movs r4, #4
_0809973E:
	ldr r0, _08099768 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809976C
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0809976C
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08099820
	.align 2, 0
_08099764: .4byte gKirbys
_08099768: .4byte gUnk_03000510
_0809976C:
	ldr r0, _080997DC @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _080997B0
	ldr r6, _080997E0 @ =gCurLevelInfo
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r4, [r1]
	ldr r5, _080997E4 @ =gUnk_02026D50
_0809977E:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _080997A8
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080997C2
_080997A8:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0809977E
_080997B0:
	movs r0, #1
	cmp r0, #0
	beq _080997C2
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
_080997C2:
	ldrh r1, [r3, #6]
	movs r0, #2
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	beq _080997E8
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r3, #6]
	b _08099820
	.align 2, 0
_080997DC: .4byte gUnk_0203AD44
_080997E0: .4byte gCurLevelInfo
_080997E4: .4byte gUnk_02026D50
_080997E8:
	ldrh r2, [r3, #4]
	movs r6, #4
	ldrsh r0, [r3, r6]
	cmp r0, #1
	bne _080997F8
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r3, #0x20]
_080997F8:
	adds r0, r2, #1
	strh r0, [r3, #4]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0809981A
	movs r7, #0x3c
	ldrsh r1, [r3, r7]
	ldr r0, [r3, #0x34]
	adds r0, r0, r1
	str r0, [r3, #0x34]
	movs r0, #0x3e
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #0x38]
	subs r0, r0, r1
	str r0, [r3, #0x38]
_0809981A:
	adds r0, r3, #0
	bl sub_0806FAC8
_08099820:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08099828
sub_08099828: @ 0x08099828
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _08099858 @ =sub_080998B8
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0809985C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08099860
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08099868
	.align 2, 0
_08099858: .4byte sub_080998B8
_0809985C: .4byte sub_0803DCCC
_08099860:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08099868:
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
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _080998B4 @ =0x06012000
	movs r3, #0xa9
	lsls r3, r3, #2
	movs r0, #1
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080998B4: .4byte 0x06012000

	thumb_func_start sub_080998B8
sub_080998B8: @ 0x080998B8
	push {r4, r5, r6, r7, lr}
	ldr r2, _080998D8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _080998DC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080998E4
	.align 2, 0
_080998D8: .4byte gCurTask
_080998DC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080998E4:
	adds r3, r0, #0
	ldrh r1, [r3, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08099900
	ldr r0, [r5]
	bl TaskDestroy
	b _08099A58
_08099900:
	ldr r1, [r3, #0x44]
	cmp r1, #0
	beq _0809994C
	ldrb r0, [r1]
	cmp r0, #0
	beq _08099918
	ldr r0, [r1, #8]
	ands r0, r4
	cmp r0, #0
	beq _08099918
	str r2, [r3, #0x44]
	movs r1, #0
_08099918:
	cmp r1, #0
	beq _0809994C
	ldr r0, _08099948 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080999BC
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080999BC
	adds r0, r3, #0
	bl sub_0803DBC8
	b _08099A58
	.align 2, 0
_08099948: .4byte gUnk_03000510
_0809994C:
	adds r5, r3, #0
	movs r4, #0
	ldr r2, _080999B4 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0809998E
	movs r4, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809998E
	movs r4, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809998E
	movs r4, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809998E
	movs r4, #4
_0809998E:
	ldr r0, _080999B8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080999BC
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080999BC
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08099A58
	.align 2, 0
_080999B4: .4byte gKirbys
_080999B8: .4byte gUnk_03000510
_080999BC:
	ldr r0, _08099A28 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _08099A00
	ldr r6, _08099A2C @ =gCurLevelInfo
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r4, [r1]
	ldr r5, _08099A30 @ =gUnk_02026D50
_080999CE:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _080999F8
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08099A12
_080999F8:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080999CE
_08099A00:
	movs r0, #1
	cmp r0, #0
	beq _08099A12
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
_08099A12:
	ldrh r1, [r3, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08099A34
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r3, #6]
	b _08099A58
	.align 2, 0
_08099A28: .4byte gUnk_0203AD44
_08099A2C: .4byte gCurLevelInfo
_08099A30: .4byte gUnk_02026D50
_08099A34:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08099A52
	movs r7, #0x3c
	ldrsh r1, [r3, r7]
	ldr r0, [r3, #0x34]
	adds r0, r0, r1
	str r0, [r3, #0x34]
	movs r0, #0x3e
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #0x38]
	subs r0, r0, r1
	str r0, [r3, #0x38]
_08099A52:
	adds r0, r3, #0
	bl sub_0806FAC8
_08099A58:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08099A60
sub_08099A60: @ 0x08099A60
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _08099A90 @ =sub_08098400
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08099A94
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08099A9C
	.align 2, 0
_08099A90: .4byte sub_08098400
_08099A94:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08099A9C:
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
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x42
	strh r1, [r0]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08099AC4
sub_08099AC4: @ 0x08099AC4
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _08099AF4 @ =sub_08098700
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08099AF8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08099B00
	.align 2, 0
_08099AF4: .4byte sub_08098700
_08099AF8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08099B00:
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
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x42
	strh r1, [r0]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08099B28
sub_08099B28: @ 0x08099B28
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08099B42
	ldrh r0, [r4, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08099B4A
_08099B42:
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08099B4A:
	ldr r0, [r0, #0x44]
	adds r5, r0, #0
	adds r5, #0x56
	ldr r6, _08099B7C @ =gUnk_0203AD3C
	ldrb r0, [r5]
	ldrb r1, [r6]
	cmp r0, r1
	bne _08099B6E
	movs r0, #0xdd
	bl m4aSongNumStop
	ldrb r0, [r5]
	ldrb r6, [r6]
	cmp r0, r6
	bne _08099B6E
	movs r0, #0xde
	bl m4aSongNumStop
_08099B6E:
	adds r0, r4, #0
	bl sub_0803DCCC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08099B7C: .4byte gUnk_0203AD3C
