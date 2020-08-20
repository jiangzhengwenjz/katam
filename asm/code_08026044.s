	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateCutscene
CreateCutscene: @ 0x08026044
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r1, _0802607C @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	movs r4, #0x10
	strh r4, [r1, #4]
	ldr r0, _08026080 @ =sub_08026698
	movs r1, #0xd9
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _08026084 @ =sub_08026610
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	adds r1, r0, #0
	ldrh r0, [r1, #0x12]
	ands r4, r0
	cmp r4, #0
	beq _08026088
	ldrh r0, [r1, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08026090
	.align 2, 0
_0802607C: .4byte gBldRegs
_08026080: .4byte sub_08026698
_08026084: .4byte sub_08026610
_08026088:
	ldrh r1, [r1, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08026090:
	adds r6, r1, #0
	add r0, sp, #4
	movs r5, #0
	strh r5, [r0]
	ldr r2, _08026150 @ =0x010001B2
	bl CpuSet
	ldr r0, _08026154 @ =gUnk_030036D0
	movs r2, #0x85
	lsls r2, r2, #2
	adds r1, r6, r2
	ldr r2, _08026158 @ =0x04000030
	bl CpuSet
	movs r0, #0xb6
	lsls r0, r0, #1
	adds r4, r6, r0
	subs r0, #0x6c
	bl sub_081570B0
	str r0, [r4]
	movs r1, #0
	strh r1, [r4, #0x14]
	ldr r0, _0802615C @ =0x00000292
	strh r0, [r4, #0xc]
	strb r5, [r4, #0x1a]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r0, #0xf
	strb r0, [r4, #0x1f]
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	str r1, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	movs r4, #0
_080260E0:
	movs r0, #0x10
	bl sub_081570B0
	lsls r2, r4, #2
	adds r2, r2, r4
	lsls r2, r2, #3
	adds r1, r6, #4
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _080260E0
	movs r0, #0x40
	bl sub_081570B0
	adds r1, r6, #0
	adds r1, #0xa4
	str r0, [r1]
	movs r0, #0x40
	bl sub_081570B0
	adds r1, r6, #0
	adds r1, #0xcc
	str r0, [r1]
	movs r0, #0x40
	bl sub_081570B0
	adds r1, r6, #0
	adds r1, #0xf4
	str r0, [r1]
	movs r0, #0x2a
	bl sub_081570B0
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r1, r6, r2
	str r0, [r1]
	movs r0, #0x40
	bl sub_081570B0
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r1, r6, r2
	str r0, [r1]
	ldr r1, _08026160 @ =gUnk_03000008
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08026164 @ =sub_08026940
	str r0, [r6]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08026150: .4byte 0x010001B2
_08026154: .4byte gUnk_030036D0
_08026158: .4byte 0x04000030
_0802615C: .4byte 0x00000292
_08026160: .4byte gUnk_03000008
_08026164: .4byte sub_08026940

	thumb_func_start sub_08026168
sub_08026168: @ 0x08026168
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	adds r7, r0, #0
	movs r6, #0
	movs r3, #0
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r5, r7, r0
_08026180:
	movs r0, #1
	lsls r0, r6
	ldr r1, [r5]
	ands r0, r1
	cmp r0, #0
	beq _080261EA
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, #4
	adds r0, r0, r7
	mov sl, r0
	cmp r1, #0
	blt _080261E0
	movs r4, #2
	lsls r4, r6
	ands r1, r4
	cmp r1, #0
	bne _080261C0
	str r3, [sp, #0x34]
	bl sub_08155128
	ldr r3, [sp, #0x34]
	cmp r0, #0
	bne _080261B8
	ldr r0, [r5]
	orrs r0, r4
	str r0, [r5]
_080261B8:
	ldr r0, [r5]
	ands r4, r0
	cmp r4, #0
	beq _080261E0
_080261C0:
	movs r0, #4
	lsls r0, r6
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r2, r7, r1
	ldr r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _080261E0
	movs r0, #2
	lsls r0, r6
	bics r1, r0
	str r1, [r2]
	movs r0, #0xff
	mov r2, sl
	strb r0, [r2, #0x1b]
_080261E0:
	mov r0, sl
	str r3, [sp, #0x34]
	bl sub_0815604C
	ldr r3, [sp, #0x34]
_080261EA:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r0, r6, #3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r3, #3
	bls _08026180
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0802620E
	b _0802636A
_0802620E:
	movs r4, #0xa2
	lsls r4, r4, #1
	adds r4, r4, r7
	mov sl, r4
	cmp r1, #0
	blt _08026228
	mov r0, sl
	bl sub_08155128
	cmp r0, #0
	bne _08026228
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_08026228:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r7, r6
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080262BC
	movs r1, #0xc7
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r0, _08026258 @ =0x000001FF
	cmp r1, r0
	bgt _0802625C
	movs r3, #2
	add r0, sp, #0x20
	movs r1, #0x78
	strh r1, [r0]
	movs r1, #0x50
	strh r1, [r0, #2]
	adds r2, r0, #0
	b _0802628C
	.align 2, 0
_08026258: .4byte 0x000001FF
_0802625C:
	lsls r1, r1, #8
	add r2, sp, #0x20
	movs r3, #0xc5
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r0, [r0]
	ldr r4, _080262B0 @ =0xFFFF8800
	adds r0, r0, r4
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	muls r0, r1, r0
	asrs r0, r0, #0x10
	adds r0, #0x78
	strh r0, [r2]
	movs r6, #0xc6
	lsls r6, r6, #2
	adds r0, r7, r6
	ldr r0, [r0]
	ldr r4, _080262B4 @ =0xFFFFB000
	adds r0, r0, r4
	muls r0, r1, r0
	asrs r0, r0, #0x10
	adds r0, #0x50
	strh r0, [r2, #2]
_0802628C:
	add r1, sp, #0x14
	movs r0, #0
	strh r0, [r1]
	adds r0, r1, #0
	strh r3, [r0, #2]
	strh r3, [r0, #4]
	ldrh r0, [r2]
	strh r0, [r1, #6]
	ldrh r0, [r2, #2]
	strh r0, [r1, #8]
	ldr r0, _080262B8 @ =0x00002023
	mov r6, sl
	str r0, [r6, #8]
	mov r0, sl
	bl sub_08155604
	b _08026364
	.align 2, 0
_080262B0: .4byte 0xFFFF8800
_080262B4: .4byte 0xFFFFB000
_080262B8: .4byte 0x00002023
_080262BC:
	movs r1, #0xd6
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrh r0, [r0]
	movs r2, #0xf
	mov sb, r2
	mov ip, sb
	mov r3, ip
	ands r3, r0
	mov ip, r3
	cmp r3, #0
	bne _08026364
	ldr r4, _080263FC @ =gRngVal
	ldr r0, [r4]
	ldr r3, _08026400 @ =0x00196225
	adds r1, r0, #0
	muls r1, r3, r1
	ldr r2, _08026404 @ =0x3C6EF35F
	adds r1, r1, r2
	lsrs r5, r1, #0x10
	movs r0, #0x1f
	ands r5, r0
	adds r0, r1, #0
	muls r0, r3, r0
	adds r0, r0, r2
	lsrs r6, r0, #0x10
	mov r1, sb
	ands r6, r1
	mov r8, r6
	movs r4, #0x32
	add r8, r4
	adds r1, r0, #0
	muls r1, r3, r1
	adds r1, r1, r2
	movs r6, #0xc5
	lsls r6, r6, #2
	adds r4, r7, r6
	lsrs r0, r1, #0x10
	mov r6, sb
	ands r0, r6
	subs r0, #8
	lsls r0, r0, #8
	ldr r6, [r4]
	adds r6, r6, r0
	adds r0, r1, #0
	muls r0, r3, r0
	adds r0, r0, r2
	ldr r1, _080263FC @ =gRngVal
	str r0, [r1]
	movs r2, #0xc6
	lsls r2, r2, #2
	adds r1, r7, r2
	lsrs r0, r0, #0x10
	mov r3, sb
	ands r0, r3
	subs r0, #8
	lsls r0, r0, #8
	ldr r4, [r1]
	adds r4, r4, r0
	ldr r2, _08026408 @ =gUnk_082EB332
	ldr r0, _0802640C @ =gUnk_082EB362
	adds r5, r5, r0
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r1, r0, r2
	ldrh r1, [r1]
	adds r2, #2
	adds r0, r0, r2
	ldrh r2, [r0]
	movs r3, #0xb6
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r3, [r0]
	str r6, [sp]
	str r4, [sp, #4]
	mov r4, ip
	str r4, [sp, #8]
	movs r0, #0x80
	str r0, [sp, #0xc]
	mov r6, r8
	str r6, [sp, #0x10]
	adds r0, r7, #0
	bl sub_080299B4
_08026364:
	mov r0, sl
	bl sub_0815604C
_0802636A:
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r5, r7, r0
	ldr r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	bne _0802637E
	b _080264A2
_0802637E:
	movs r2, #0xa4
	adds r2, r2, r7
	mov sb, r2
	movs r3, #0xcc
	adds r3, r3, r7
	mov sl, r3
	cmp r1, #0
	blt _080263DC
	movs r6, #0x80
	lsls r6, r6, #6
	ands r1, r6
	cmp r1, #0
	bne _080263B2
	mov r0, sb
	bl sub_08155128
	adds r4, r0, #0
	mov r0, sl
	bl sub_08155128
	orrs r4, r0
	cmp r4, #0
	bne _080263B2
	ldr r0, [r5]
	orrs r0, r6
	str r0, [r5]
_080263B2:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r3, r7, r4
	ldr r2, [r3]
	movs r1, #0xc0
	lsls r1, r1, #7
	adds r0, r2, #0
	ands r0, r1
	cmp r0, r1
	bne _080263DC
	ldr r0, _08026410 @ =0xFFFFDFFF
	ands r2, r0
	str r2, [r3]
	adds r1, r7, #0
	adds r1, #0xbf
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #0x28
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
_080263DC:
	movs r6, #0xcc
	lsls r6, r6, #2
	adds r0, r7, r6
	ldr r1, [r0]
	ldr r0, _08026414 @ =0x000001FF
	cmp r1, r0
	bgt _08026418
	movs r0, #2
	mov r8, r0
	add r0, sp, #0x20
	movs r1, #0x78
	strh r1, [r0]
	movs r1, #0x50
	strh r1, [r0, #2]
	adds r2, r0, #0
	b _08026448
	.align 2, 0
_080263FC: .4byte gRngVal
_08026400: .4byte 0x00196225
_08026404: .4byte 0x3C6EF35F
_08026408: .4byte gUnk_082EB332
_0802640C: .4byte gUnk_082EB362
_08026410: .4byte 0xFFFFDFFF
_08026414: .4byte 0x000001FF
_08026418:
	lsls r1, r1, #8
	add r2, sp, #0x20
	movs r3, #0xca
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r0, [r0]
	ldr r4, _08026528 @ =0xFFFF8800
	adds r0, r0, r4
	lsrs r6, r1, #0x10
	mov r8, r6
	asrs r1, r1, #0x10
	muls r0, r1, r0
	asrs r0, r0, #0x10
	adds r0, #0x78
	strh r0, [r2]
	adds r3, #4
	adds r0, r7, r3
	ldr r0, [r0]
	ldr r4, _0802652C @ =0xFFFFB000
	adds r0, r0, r4
	muls r0, r1, r0
	asrs r0, r0, #0x10
	adds r0, #0x50
	strh r0, [r2, #2]
_08026448:
	add r4, sp, #0x24
	movs r6, #0
	strh r6, [r4]
	mov r0, r8
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	ldrh r0, [r2]
	strh r0, [r4, #6]
	ldrh r0, [r2, #2]
	strh r0, [r4, #8]
	adds r1, r7, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r5, _08026530 @ =0x00002020
	orrs r0, r5
	str r0, [r1]
	mov r0, sb
	adds r1, r4, #0
	str r2, [sp, #0x30]
	bl sub_08155604
	mov r0, sb
	bl sub_0815604C
	strh r6, [r4]
	mov r1, r8
	strh r1, [r4, #2]
	strh r1, [r4, #4]
	ldr r2, [sp, #0x30]
	ldrh r0, [r2]
	strh r0, [r4, #6]
	ldrh r0, [r2, #2]
	strh r0, [r4, #8]
	adds r1, r7, #0
	adds r1, #0xd4
	ldr r0, [r1]
	orrs r0, r5
	str r0, [r1]
	mov r0, sl
	adds r1, r4, #0
	bl sub_08155604
	mov r0, sl
	bl sub_0815604C
_080264A2:
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r4, r7, r2
	ldr r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08026590
	movs r3, #0xf4
	adds r3, r3, r7
	mov sl, r3
	cmp r1, #0
	blt _080264F8
	movs r5, #0x80
	lsls r5, r5, #9
	ands r1, r5
	cmp r1, #0
	bne _080264D8
	mov r0, sl
	bl sub_08155128
	cmp r0, #0
	bne _080264D8
	ldr r0, [r4]
	orrs r0, r5
	str r0, [r4]
_080264D8:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r3, r7, r4
	ldr r2, [r3]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r0, r2, #0
	ands r0, r1
	cmp r0, r1
	bne _080264F8
	ldr r0, _08026534 @ =0xFFFEFFFF
	ands r2, r0
	str r2, [r3]
	movs r0, #0xff
	mov r6, sl
	strb r0, [r6, #0x1b]
_080264F8:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _0802658A
	movs r2, #0xd1
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r1, [r0]
	ldr r0, _08026538 @ =0x000001FF
	cmp r1, r0
	bgt _0802653C
	movs r3, #2
	add r0, sp, #0x2c
	movs r1, #0x78
	strh r1, [r0]
	movs r1, #0x50
	strh r1, [r0, #2]
	adds r2, r0, #0
	b _0802656C
	.align 2, 0
_08026528: .4byte 0xFFFF8800
_0802652C: .4byte 0xFFFFB000
_08026530: .4byte 0x00002020
_08026534: .4byte 0xFFFEFFFF
_08026538: .4byte 0x000001FF
_0802653C:
	lsls r1, r1, #8
	add r2, sp, #0x2c
	movs r3, #0xcf
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r0, [r0]
	ldr r4, _08026600 @ =0xFFFF8800
	adds r0, r0, r4
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	muls r0, r1, r0
	asrs r0, r0, #0x10
	adds r0, #0x78
	strh r0, [r2]
	movs r6, #0xd0
	lsls r6, r6, #2
	adds r0, r7, r6
	ldr r0, [r0]
	ldr r4, _08026604 @ =0xFFFFB000
	adds r0, r0, r4
	muls r0, r1, r0
	asrs r0, r0, #0x10
	adds r0, #0x50
	strh r0, [r2, #2]
_0802656C:
	add r1, sp, #0x20
	movs r0, #0
	strh r0, [r1]
	strh r3, [r1, #2]
	strh r3, [r1, #4]
	ldrh r0, [r2]
	strh r0, [r1, #6]
	ldrh r0, [r2, #2]
	strh r0, [r1, #8]
	ldr r0, _08026608 @ =0x00042022
	mov r6, sl
	str r0, [r6, #8]
	mov r0, sl
	bl sub_08155604
_0802658A:
	mov r0, sl
	bl sub_0815604C
_08026590:
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _080265EE
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r2, r2, r7
	mov sl, r2
	cmp r1, #0
	blt _080265E8
	movs r5, #0x80
	lsls r5, r5, #0xd
	ands r1, r5
	cmp r1, #0
	bne _080265C8
	mov r0, sl
	bl sub_08155128
	cmp r0, #0
	bne _080265C8
	ldr r0, [r4]
	orrs r0, r5
	str r0, [r4]
_080265C8:
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r4, r7, r3
	ldr r2, [r4]
	movs r1, #0xc0
	lsls r1, r1, #0xe
	adds r0, r2, #0
	ands r0, r1
	cmp r0, r1
	bne _080265E8
	ldr r0, _0802660C @ =0xFFEFFFFF
	ands r2, r0
	str r2, [r4]
	movs r0, #0xff
	mov r4, sl
	strb r0, [r4, #0x1b]
_080265E8:
	mov r0, sl
	bl sub_0815604C
_080265EE:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026600: .4byte 0xFFFF8800
_08026604: .4byte 0xFFFFB000
_08026608: .4byte 0x00042022
_0802660C: .4byte 0xFFEFFFFF

	thumb_func_start sub_08026610
sub_08026610: @ 0x08026610
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802662A
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08026632
_0802662A:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08026632:
	adds r5, r0, #0
	movs r4, #0
	adds r6, r5, #4
_08026638:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r6, r0
	ldr r0, [r0]
	bl sub_08157190
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _08026638
	adds r0, r5, #0
	adds r0, #0xa4
	ldr r0, [r0]
	bl sub_08157190
	adds r0, r5, #0
	adds r0, #0xcc
	ldr r0, [r0]
	bl sub_08157190
	adds r0, r5, #0
	adds r0, #0xf4
	ldr r0, [r0]
	bl sub_08157190
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	bl sub_08157190
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	bl sub_08157190
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	bl sub_08157190
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08026698
sub_08026698: @ 0x08026698
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080266BC @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080266C0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080266C8
	.align 2, 0
_080266BC: .4byte gCurTask
_080266C0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080266C8:
	adds r4, r0, #0
	ldr r0, _08026748 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080266E6
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x17
	orrs r1, r2
	str r1, [r0]
_080266E6:
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r5, r4, r2
	ldr r3, [r5]
	movs r1, #0xc0
	lsls r1, r1, #0x17
	ands r1, r3
	movs r0, #0x80
	lsls r0, r0, #0x17
	cmp r1, r0
	bne _080266FE
	b _08026898
_080266FE:
	ldr r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r0, _0802674C @ =gUnk_03000008
	ldrh r3, [r0]
	cmp r3, #0
	beq _08026710
	b _0802692A
_08026710:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	beq _080267D8
	ldr r0, _08026750 @ =gUnk_082EB2B4
	ldr r1, [r0]
	ldr r2, [r1]
	lsrs r0, r2, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	lsrs r5, r2, #0x10
	ldr r6, [r1, #4]
	ldr r0, _08026754 @ =0x0000035E
	adds r2, r4, r0
	ldrh r0, [r2]
	ldrb r1, [r1]
	cmp r0, r1
	blo _08026758
	strh r3, [r2]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r0, r4, r1
	strh r3, [r0]
	b _080267D8
	.align 2, 0
_08026748: .4byte gPressedKeys
_0802674C: .4byte gUnk_03000008
_08026750: .4byte gUnk_082EB2B4
_08026754: .4byte 0x0000035E
_08026758:
	ldrh r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	ldrh r2, [r0]
	mov sb, r2
	adds r6, r0, #2
	movs r3, #0xd8
	lsls r3, r3, #2
	adds r1, r4, r3
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #1
	bne _080267BE
	ldr r0, _0802679C @ =gUnk_03002440
	mov r8, r0
	ldr r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _080267A0
	mov r1, ip
	adds r1, #0x60
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r6, #0
	adds r2, r5, #0
	bl sub_08158334
	b _080267BE
	.align 2, 0
_0802679C: .4byte gUnk_03002440
_080267A0:
	ldr r2, _08026878 @ =0x040000D4
	str r6, [r2]
	mov r1, ip
	lsls r0, r1, #1
	ldr r1, _0802687C @ =gUnk_03003860
	adds r0, r0, r1
	str r0, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r5, r0
	str r5, [r2, #8]
	ldr r0, [r2, #8]
	orrs r3, r7
	mov r2, r8
	str r3, [r2]
_080267BE:
	movs r6, #0xd8
	lsls r6, r6, #2
	adds r3, r4, r6
	ldrh r0, [r3]
	cmp r0, sb
	blo _080267D8
	ldr r1, _08026880 @ =0x0000035E
	adds r0, r4, r1
	ldrh r1, [r0]
	adds r1, #1
	movs r2, #0
	strh r1, [r0]
	strh r2, [r3]
_080267D8:
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r5, r4, r2
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	beq _08026868
	movs r6, #0xb6
	lsls r6, r6, #2
	adds r3, r4, r6
	movs r1, #0xb8
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	adds r6, #4
	adds r2, r4, r6
	ldr r1, _08026884 @ =0x000002E2
	adds r0, r4, r1
	movs r6, #0
	ldrsh r1, [r0, r6]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, _08026888 @ =gBgScrollRegs
	ldr r0, [r3]
	asrs r0, r0, #8
	strh r0, [r1, #4]
	ldr r0, [r2]
	asrs r0, r0, #8
	strh r0, [r1, #6]
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08026868
	movs r0, #0x83
	lsls r0, r0, #1
	adds r5, r4, r0
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r2, #0
	ldrsh r3, [r0, r2]
	ldr r1, _0802688C @ =gUnk_08D5FE14
	ldr r6, _08026890 @ =0x0000034E
	adds r2, r4, r6
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	ldrh r3, [r5]
	adds r0, r0, r3
	strh r0, [r5]
	movs r6, #0x97
	lsls r6, r6, #1
	adds r1, r4, r6
	strh r0, [r1]
	ldrh r0, [r2]
	adds r0, #4
	ldr r1, _08026894 @ =0x000003FF
	ands r0, r1
	strh r0, [r2]
_08026868:
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _0802691C
	.align 2, 0
_08026878: .4byte 0x040000D4
_0802687C: .4byte gUnk_03003860
_08026880: .4byte 0x0000035E
_08026884: .4byte 0x000002E2
_08026888: .4byte gBgScrollRegs
_0802688C: .4byte gUnk_08D5FE14
_08026890: .4byte 0x0000034E
_08026894: .4byte 0x000003FF
_08026898:
	ands r1, r3
	cmp r1, #0
	beq _0802691C
	movs r6, #0x80
	lsls r6, r6, #0x18
	adds r2, r6, #0
	ands r2, r3
	cmp r2, #0
	bne _080268F8
	ldr r1, _080268E0 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #4]
	ldr r1, _080268E4 @ =0x0000035A
	adds r0, r4, r1
	strh r2, [r0]
	ldr r0, _080268E8 @ =gUnk_030016A0
	movs r1, #3
	bl m4aMPlayFadeOut
	ldr r0, _080268EC @ =gUnk_030016E0
	movs r1, #3
	bl m4aMPlayFadeOut
	ldr r0, _080268F0 @ =gUnk_03001720
	movs r1, #3
	bl m4aMPlayFadeOut
	ldr r0, _080268F4 @ =gUnk_03001770
	movs r1, #3
	bl m4aMPlayFadeOut
	ldr r0, [r5]
	orrs r0, r6
	str r0, [r5]
	b _0802691C
	.align 2, 0
_080268E0: .4byte gBldRegs
_080268E4: .4byte 0x0000035A
_080268E8: .4byte gUnk_030016A0
_080268EC: .4byte gUnk_030016E0
_080268F0: .4byte gUnk_03001720
_080268F4: .4byte gUnk_03001770
_080268F8:
	ldr r2, _08026914 @ =0x0000035A
	adds r1, r4, r2
	ldrh r0, [r1]
	adds r2, r0, #1
	strh r2, [r1]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08026918
	adds r0, r4, #0
	bl sub_08029618
	b _0802692A
	.align 2, 0
_08026914: .4byte 0x0000035A
_08026918:
	ldr r0, _08026938 @ =gBldRegs
	strh r2, [r0, #4]
_0802691C:
	ldr r0, _0802693C @ =gUnk_03000008
	ldrh r0, [r0]
	cmp r0, #0
	bne _0802692A
	adds r0, r4, #0
	bl sub_08026168
_0802692A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026938: .4byte gBldRegs
_0802693C: .4byte gUnk_03000008

	thumb_func_start sub_08026940
sub_08026940: @ 0x08026940
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r1, _08026B34 @ =gDispCnt
	movs r0, #0xb2
	lsls r0, r0, #5
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0xa4
	adds r4, r7, #0
	adds r4, #0xcc
	movs r1, #0xca
	lsls r1, r1, #2
	adds r1, r1, r7
	mov r8, r1
	movs r1, #0xf0
	lsls r1, r1, #7
	mov r2, r8
	str r1, [r2]
	movs r1, #0xcb
	lsls r1, r1, #2
	adds r1, r1, r7
	mov sb, r1
	movs r1, #0xf0
	lsls r1, r1, #6
	mov r2, sb
	str r1, [r2]
	movs r1, #0xcc
	lsls r1, r1, #2
	adds r2, r7, r1
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r2]
	movs r5, #0
	movs r2, #0xc0
	lsls r2, r2, #2
	strh r2, [r0, #0x14]
	ldr r1, _08026B38 @ =0x0000039D
	mov sl, r1
	mov r2, sl
	strh r2, [r0, #0xc]
	movs r1, #5
	strb r1, [r0, #0x1a]
	strh r5, [r0, #0x16]
	subs r1, #6
	strb r1, [r0, #0x1b]
	movs r6, #0x10
	strb r6, [r0, #0x1c]
	movs r1, #4
	strb r1, [r0, #0x1f]
	mov r2, r8
	ldr r1, [r2]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	mov r2, sb
	ldr r1, [r2]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	ldr r1, _08026B3C @ =0x00002020
	str r1, [r0, #8]
	bl sub_08155128
	movs r2, #0xc0
	lsls r2, r2, #2
	strh r2, [r4, #0x14]
	mov r0, sl
	strh r0, [r4, #0xc]
	movs r1, #4
	strb r1, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	strb r6, [r4, #0x1c]
	strb r1, [r4, #0x1f]
	mov r2, r8
	ldr r0, [r2]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	mov r1, sb
	ldr r0, [r1]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	ldr r2, _08026B3C @ =0x00002020
	str r2, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r0, r7, r0
	str r0, [sp]
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #7
	orrs r0, r1
	ldr r1, [sp]
	str r0, [r1]
	movs r2, #0xca
	lsls r2, r2, #1
	adds r4, r7, r2
	ldr r0, _08026B40 @ =gBgScrollRegs
	mov sb, r0
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	ldr r0, _08026B44 @ =0x00001F02
	ldr r1, _08026B48 @ =gBgCntRegs
	strh r0, [r1, #2]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	strh r5, [r4, #0xa]
	ldr r0, _08026B4C @ =0x0600F800
	str r0, [r4, #0xc]
	strh r5, [r4, #0x18]
	strh r5, [r4, #0x1a]
	ldr r0, _08026B50 @ =0x000002EA
	strh r0, [r4, #0x1c]
	strh r5, [r4, #0x1e]
	strh r5, [r4, #0x20]
	strh r5, [r4, #0x22]
	strh r5, [r4, #0x24]
	movs r2, #0x1f
	strh r2, [r4, #0x26]
	movs r0, #0x15
	strh r0, [r4, #0x28]
	movs r1, #0xdf
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r2, #0
	strb r2, [r0]
	adds r1, #1
	adds r0, r7, r1
	strb r2, [r0]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r1, #0
	strb r1, [r0]
	movs r0, #0x39
	strh r0, [r4, #0x2e]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	ldr r2, _08026B54 @ =0x00007FFF
	mov r8, r2
	mov r0, r8
	strh r0, [r4, #0x34]
	strh r0, [r4, #0x36]
	ldr r1, _08026B58 @ =gUnk_082D7850
	ldr r2, _08026B5C @ =0x00000BA8
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r0, [r0, #8]
	ldr r1, [r4, #4]
	bl LZ77UnCompVram
	adds r0, r4, #0
	bl sub_08153060
	movs r0, #0xea
	lsls r0, r0, #1
	adds r4, r7, r0
	mov r1, sb
	strh r5, [r1, #8]
	strh r5, [r1, #0xa]
	ldr r0, _08026B60 @ =0x00001E07
	ldr r2, _08026B48 @ =gBgCntRegs
	strh r0, [r2, #4]
	ldr r0, _08026B64 @ =0x06004000
	str r0, [r4, #4]
	strh r5, [r4, #0xa]
	ldr r0, _08026B68 @ =0x0600F000
	str r0, [r4, #0xc]
	strh r5, [r4, #0x18]
	strh r5, [r4, #0x1a]
	ldr r0, _08026B6C @ =0x000002EB
	strh r0, [r4, #0x1c]
	strh r5, [r4, #0x1e]
	strh r5, [r4, #0x20]
	strh r5, [r4, #0x22]
	strh r5, [r4, #0x24]
	movs r0, #0x1f
	strh r0, [r4, #0x26]
	movs r1, #0x15
	strh r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r1, #0
	strb r1, [r0]
	adds r2, #1
	adds r0, r7, r2
	strb r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r2, #0
	strb r2, [r0]
	movs r0, #0x2a
	strh r0, [r4, #0x2e]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	mov r0, r8
	strh r0, [r4, #0x34]
	strh r0, [r4, #0x36]
	ldr r1, _08026B70 @ =gUnk_082D83FC
	ldr r0, [r1]
	ldr r0, [r0, #8]
	ldr r1, [r4, #4]
	bl LZ77UnCompVram
	adds r0, r4, #0
	bl sub_08153060
	movs r0, #0x19
	bl m4aSongNumStart
	movs r2, #0xb6
	lsls r2, r2, #2
	adds r0, r7, r2
	str r5, [r0]
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r7, r1
	str r5, [r0]
	adds r2, #8
	adds r1, r7, r2
	movs r0, #0x20
	strh r0, [r1]
	ldr r1, [sp]
	ldr r0, [r1]
	movs r1, #0x88
	lsls r1, r1, #0x16
	orrs r0, r1
	ldr r2, [sp]
	str r0, [r2]
	ldr r0, _08026B74 @ =sub_08029CB8
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
_08026B34: .4byte gDispCnt
_08026B38: .4byte 0x0000039D
_08026B3C: .4byte 0x00002020
_08026B40: .4byte gBgScrollRegs
_08026B44: .4byte 0x00001F02
_08026B48: .4byte gBgCntRegs
_08026B4C: .4byte 0x0600F800
_08026B50: .4byte 0x000002EA
_08026B54: .4byte 0x00007FFF
_08026B58: .4byte gUnk_082D7850
_08026B5C: .4byte 0x00000BA8
_08026B60: .4byte 0x00001E07
_08026B64: .4byte 0x06004000
_08026B68: .4byte 0x0600F000
_08026B6C: .4byte 0x000002EB
_08026B70: .4byte gUnk_082D83FC
_08026B74: .4byte sub_08029CB8

	thumb_func_start sub_08026B78
sub_08026B78: @ 0x08026B78
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _08026BAC @ =0x0000035A
	adds r1, r3, r0
	ldrh r0, [r1]
	adds r2, r0, #1
	movs r4, #0
	strh r2, [r1]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08026BBC
	ldr r0, _08026BB0 @ =gBldRegs
	strh r4, [r0]
	strh r4, [r0, #4]
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r2, r3, r0
	ldr r0, [r2]
	ldr r1, _08026BB4 @ =0xDFFFFFFF
	ands r0, r1
	str r0, [r2]
	ldr r0, _08026BB8 @ =sub_08029CD0
	str r0, [r3]
	b _08026BC4
	.align 2, 0
_08026BAC: .4byte 0x0000035A
_08026BB0: .4byte gBldRegs
_08026BB4: .4byte 0xDFFFFFFF
_08026BB8: .4byte sub_08029CD0
_08026BBC:
	ldr r1, _08026BCC @ =gBldRegs
	movs r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #4]
_08026BC4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08026BCC: .4byte gBldRegs

	thumb_func_start sub_08026BD0
sub_08026BD0: @ 0x08026BD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r1, _08026CA4 @ =gBldRegs
	movs r6, #0
	movs r0, #0xaf
	strh r0, [r1]
	strh r6, [r1, #4]
	ldr r0, _08026CA8 @ =0x0000023D
	bl m4aSongNumStart
	adds r0, r7, #0
	adds r0, #0xa4
	adds r4, r7, #0
	adds r4, #0xcc
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	ldr r5, _08026CAC @ =0x0000039D
	strh r5, [r0, #0xc]
	strb r6, [r0, #0x1a]
	strh r6, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	movs r2, #0x10
	strb r2, [r0, #0x1c]
	movs r1, #4
	mov sl, r1
	mov r2, sl
	strb r2, [r0, #0x1f]
	movs r1, #0xca
	lsls r1, r1, #2
	adds r1, r1, r7
	mov sb, r1
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	movs r2, #0xcb
	lsls r2, r2, #2
	adds r2, r2, r7
	mov r8, r2
	ldr r1, [r2]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	ldr r6, _08026CB0 @ =0x00002020
	str r6, [r0, #8]
	bl sub_08155128
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	strh r5, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0x1a]
	movs r1, #0
	strh r1, [r4, #0x16]
	subs r0, #2
	strb r0, [r4, #0x1b]
	movs r2, #0x10
	strb r2, [r4, #0x1c]
	mov r0, sl
	strb r0, [r4, #0x1f]
	mov r1, sb
	ldr r0, [r1]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	mov r2, r8
	ldr r0, [r2]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	str r6, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r2, r7, r0
	ldr r0, [r2]
	ldr r1, _08026CB4 @ =0xFFFF9FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08026CB8 @ =0x0000035A
	adds r0, r7, r1
	movs r1, #0
	strh r1, [r0]
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r2]
	ldr r0, _08026CBC @ =sub_08029F44
	str r0, [r7]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026CA4: .4byte gBldRegs
_08026CA8: .4byte 0x0000023D
_08026CAC: .4byte 0x0000039D
_08026CB0: .4byte 0x00002020
_08026CB4: .4byte 0xFFFF9FFF
_08026CB8: .4byte 0x0000035A
_08026CBC: .4byte sub_08029F44

	thumb_func_start sub_08026CC0
sub_08026CC0: @ 0x08026CC0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r2, _08026D3C @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08026D40 @ =0x0000F9FF
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08026D44 @ =gUnk_08D64A24
	ldr r0, _08026D48 @ =gUnk_089331AC
	ldr r2, _08026D4C @ =0x00008E4E
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r5, [r0]
	ldr r1, _08026D50 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	ldr r1, _08026D54 @ =gBgCntRegs
	ldr r0, _08026D58 @ =0x00001E07
	strh r0, [r1, #4]
	ldr r0, [r5, #8]
	ldr r1, _08026D5C @ =0x06004000
	bl LZ77UnCompVram
	ldr r4, [r5, #0x18]
	ldr r7, _08026D60 @ =0x0600F000
	movs r6, #0
_08026D06:
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
	bls _08026D06
	ldr r4, _08026D64 @ =gUnk_03002440
	ldr r3, [r4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _08026D68
	ldr r0, [r5, #0x10]
	ldrb r1, [r5, #0x14]
	ldrh r2, [r5, #0x16]
	bl sub_08158334
	b _08026D8A
	.align 2, 0
_08026D3C: .4byte gDispCnt
_08026D40: .4byte 0x0000F9FF
_08026D44: .4byte gUnk_08D64A24
_08026D48: .4byte gUnk_089331AC
_08026D4C: .4byte 0x00008E4E
_08026D50: .4byte gBgScrollRegs
_08026D54: .4byte gBgCntRegs
_08026D58: .4byte 0x00001E07
_08026D5C: .4byte 0x06004000
_08026D60: .4byte 0x0600F000
_08026D64: .4byte gUnk_03002440
_08026D68:
	ldr r2, _08026DB0 @ =0x040000D4
	ldr r0, [r5, #0x10]
	str r0, [r2]
	ldrh r0, [r5, #0x14]
	lsls r0, r0, #1
	ldr r1, _08026DB4 @ =gBgPalette
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
_08026D8A:
	movs r2, #0xd5
	lsls r2, r2, #2
	add r2, r8
	ldr r0, [r2]
	ldr r1, _08026DB8 @ =0xFDFFFFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r0, r1
	str r0, [r2]
	ldr r0, _08026DBC @ =sub_08029F94
	mov r3, r8
	str r0, [r3]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026DB0: .4byte 0x040000D4
_08026DB4: .4byte gBgPalette
_08026DB8: .4byte 0xFDFFFFFF
_08026DBC: .4byte sub_08029F94

	thumb_func_start sub_08026DC0
sub_08026DC0: @ 0x08026DC0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08026DF4 @ =0x0000035A
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r3, r0, #1
	movs r2, #0
	strh r3, [r1]
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bls _08026E04
	ldr r0, _08026DF8 @ =gBldRegs
	strh r2, [r0]
	strh r2, [r0, #4]
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r2, r4, r0
	ldr r0, [r2]
	ldr r1, _08026DFC @ =0xDFFFFFFF
	ands r0, r1
	str r0, [r2]
	ldr r0, _08026E00 @ =sub_08026E1C
	str r0, [r4]
	b _08026E10
	.align 2, 0
_08026DF4: .4byte 0x0000035A
_08026DF8: .4byte gBldRegs
_08026DFC: .4byte 0xDFFFFFFF
_08026E00: .4byte sub_08026E1C
_08026E04:
	ldr r2, _08026E18 @ =gBldRegs
	lsls r1, r3, #0x10
	lsrs r1, r1, #0x11
	movs r0, #0x10
	subs r0, r0, r1
	strh r0, [r2, #4]
_08026E10:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08026E18: .4byte gBldRegs

	thumb_func_start sub_08026E1C
sub_08026E1C: @ 0x08026E1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r0, r0, r7
	mov sl, r0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _08026ED2
	adds r0, r7, #0
	adds r0, #0xa4
	adds r4, r7, #0
	adds r4, #0xcc
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	ldr r2, _08026EE0 @ =0x0000039D
	strh r2, [r0, #0xc]
	movs r1, #5
	strb r1, [r0, #0x1a]
	movs r1, #0
	strh r1, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	movs r2, #0x10
	strb r2, [r0, #0x1c]
	movs r5, #4
	strb r5, [r0, #0x1f]
	movs r1, #0xca
	lsls r1, r1, #2
	adds r1, r1, r7
	mov sb, r1
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	movs r2, #0xcb
	lsls r2, r2, #2
	adds r2, r2, r7
	mov r8, r2
	ldr r1, [r2]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	ldr r6, _08026EE4 @ =0x00002020
	str r6, [r0, #8]
	bl sub_08155128
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r1, _08026EE0 @ =0x0000039D
	strh r1, [r4, #0xc]
	strb r5, [r4, #0x1a]
	movs r2, #0
	strh r2, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r5, [r4, #0x1f]
	mov r1, sb
	ldr r0, [r1]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	mov r2, r8
	ldr r0, [r2]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	str r6, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	mov r1, sl
	ldr r0, [r1]
	ldr r1, _08026EE8 @ =0xFFFFDFFF
	ands r0, r1
	movs r1, #0xa0
	lsls r1, r1, #7
	orrs r0, r1
	mov r2, sl
	str r0, [r2]
	ldr r0, _08026EEC @ =sub_08029CE8
	str r0, [r7]
_08026ED2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026EE0: .4byte 0x0000039D
_08026EE4: .4byte 0x00002020
_08026EE8: .4byte 0xFFFFDFFF
_08026EEC: .4byte sub_08029CE8

	thumb_func_start sub_08026EF0
sub_08026EF0: @ 0x08026EF0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r1, #0xcd
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r4, #0
	strh r4, [r0]
	ldr r2, _08026F9C @ =0x00000336
	adds r1, r7, r2
	movs r0, #0x80
	strh r0, [r1]
	movs r1, #0xce
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r3, #0xff
	lsls r3, r3, #8
	strh r3, [r0]
	adds r0, r7, #0
	adds r0, #0xf4
	adds r2, #6
	adds r5, r7, r2
	movs r1, #0xf0
	lsls r1, r1, #7
	str r1, [r5]
	movs r1, #0xd0
	lsls r1, r1, #2
	adds r6, r7, r1
	movs r1, #0xb4
	lsls r1, r1, #8
	str r1, [r6]
	movs r1, #0xd1
	lsls r1, r1, #2
	adds r2, r7, r1
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r2]
	movs r2, #0xd2
	lsls r2, r2, #2
	adds r1, r7, r2
	strh r4, [r1]
	adds r2, #2
	adds r1, r7, r2
	strh r3, [r1]
	adds r2, #2
	adds r1, r7, r2
	strh r4, [r1]
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	adds r1, #0x9e
	strh r1, [r0, #0xc]
	movs r1, #1
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #2
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	movs r1, #5
	strb r1, [r0, #0x1f]
	ldr r1, [r5]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	ldr r1, _08026FA0 @ =0x00002025
	str r1, [r0, #8]
	bl sub_08155128
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r2, r7, r0
	ldr r0, [r2]
	movs r1, #0xd0
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r2]
	ldr r0, _08026FA4 @ =sub_08026FAC
	str r0, [r7]
	ldr r1, _08026FA8 @ =0x0000035A
	adds r0, r7, r1
	strh r4, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026F9C: .4byte 0x00000336
_08026FA0: .4byte 0x00002025
_08026FA4: .4byte sub_08026FAC
_08026FA8: .4byte 0x0000035A

	thumb_func_start sub_08026FAC
sub_08026FAC: @ 0x08026FAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r0, #0xcc
	lsls r0, r0, #2
	adds r2, r7, r0
	movs r1, #0xce
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	cmp r0, #0
	bge _08026FD6
	movs r0, #0
	str r0, [r2]
_08026FD6:
	ldr r1, _080270D4 @ =0x0000035A
	adds r0, r7, r1
	ldrh r0, [r0]
	cmp r0, #0x3c
	bls _08027008
	movs r3, #0xd0
	lsls r3, r3, #2
	adds r2, r7, r3
	ldr r0, _080270D8 @ =0x0000034A
	adds r3, r7, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldrh r0, [r3]
	adds r0, #2
	strh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x10
	rsbs r1, r1, #0
	cmp r0, r1
	ble _08027008
	strh r1, [r3]
_08027008:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r1, r1, r7
	mov sl, r1
	ldr r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _080270AC
	adds r0, r7, #0
	adds r0, #0xa4
	adds r4, r7, #0
	adds r4, #0xcc
	movs r2, #0xc0
	lsls r2, r2, #2
	strh r2, [r0, #0x14]
	ldr r3, _080270DC @ =0x0000039D
	strh r3, [r0, #0xc]
	movs r1, #5
	strb r1, [r0, #0x1a]
	movs r1, #0
	strh r1, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	movs r2, #0x10
	strb r2, [r0, #0x1c]
	movs r5, #4
	strb r5, [r0, #0x1f]
	subs r3, #0x75
	adds r3, r3, r7
	mov sb, r3
	ldr r1, [r3]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	movs r1, #0xcb
	lsls r1, r1, #2
	adds r1, r1, r7
	mov r8, r1
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	ldr r6, _080270E0 @ =0x00002020
	str r6, [r0, #8]
	bl sub_08155128
	movs r2, #0xc0
	lsls r2, r2, #2
	strh r2, [r4, #0x14]
	ldr r3, _080270DC @ =0x0000039D
	strh r3, [r4, #0xc]
	strb r5, [r4, #0x1a]
	movs r0, #0
	strh r0, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r1, #0x10
	strb r1, [r4, #0x1c]
	strb r5, [r4, #0x1f]
	mov r2, sb
	ldr r0, [r2]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	mov r3, r8
	ldr r0, [r3]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	str r6, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	mov r1, sl
	ldr r0, [r1]
	ldr r1, _080270E4 @ =0xFFFFDFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	mov r2, sl
	str r0, [r2]
_080270AC:
	ldr r3, _080270D4 @ =0x0000035A
	adds r0, r7, r3
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x96
	bls _080270F8
	mov r1, sl
	ldr r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #0x14
	ands r0, r1
	cmp r0, #0
	beq _080270EC
	ldr r0, _080270E8 @ =sub_08027108
	str r0, [r7]
	b _080270F8
	.align 2, 0
_080270D4: .4byte 0x0000035A
_080270D8: .4byte 0x0000034A
_080270DC: .4byte 0x0000039D
_080270E0: .4byte 0x00002020
_080270E4: .4byte 0xFFFFDFFF
_080270E8: .4byte sub_08027108
_080270EC:
	movs r2, #0xb5
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r1, [r0]
	movs r0, #4
	strh r0, [r1, #8]
_080270F8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08027108
sub_08027108: @ 0x08027108
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _080271D8 @ =gDispCnt
	movs r0, #0x92
	lsls r0, r0, #5
	strh r0, [r1]
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r2, r5, r0
	ldr r0, [r2]
	ldr r1, _080271DC @ =0xFFFF8FFF
	ands r0, r1
	ldr r1, _080271E0 @ =0xFFFC7FFF
	ands r0, r1
	ldr r1, _080271E4 @ =0xFEFFFFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r2]
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r2, r5, r1
	movs r3, #0
	movs r1, #0
	movs r0, #4
	strh r0, [r2]
	movs r2, #0xb6
	lsls r2, r2, #2
	adds r0, r5, r2
	str r1, [r0]
	adds r2, #4
	adds r0, r5, r2
	str r1, [r0]
	adds r2, #4
	adds r0, r5, r2
	strh r1, [r0]
	ldr r0, _080271E8 @ =0x000002E2
	adds r2, r5, r0
	movs r0, #0xf4
	lsls r0, r0, #8
	strh r0, [r2]
	movs r2, #0xca
	lsls r2, r2, #1
	adds r4, r5, r2
	ldr r0, _080271EC @ =gBgScrollRegs
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	ldr r2, _080271F0 @ =gBgCntRegs
	ldr r0, _080271F4 @ =0x00001F02
	strh r0, [r2, #2]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	strh r1, [r4, #0xa]
	ldr r0, _080271F8 @ =0x0600F800
	str r0, [r4, #0xc]
	strh r1, [r4, #0x18]
	strh r1, [r4, #0x1a]
	movs r0, #0xbb
	lsls r0, r0, #2
	strh r0, [r4, #0x1c]
	strh r1, [r4, #0x1e]
	strh r1, [r4, #0x20]
	strh r1, [r4, #0x22]
	strh r1, [r4, #0x24]
	movs r0, #0x20
	strh r0, [r4, #0x26]
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
	movs r0, #9
	strh r0, [r4, #0x2e]
	strh r1, [r4, #0x30]
	strh r1, [r4, #0x32]
	ldr r0, _080271FC @ =0x00007FFF
	strh r0, [r4, #0x34]
	strh r0, [r4, #0x36]
	ldr r0, _08027200 @ =gUnk_082D7850
	movs r1, #0xbb
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #8]
	ldr r1, [r4, #4]
	bl LZ77UnCompVram
	adds r0, r4, #0
	bl sub_08153060
	ldr r0, _08027204 @ =sub_08029D00
	str r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080271D8: .4byte gDispCnt
_080271DC: .4byte 0xFFFF8FFF
_080271E0: .4byte 0xFFFC7FFF
_080271E4: .4byte 0xFEFFFFFF
_080271E8: .4byte 0x000002E2
_080271EC: .4byte gBgScrollRegs
_080271F0: .4byte gBgCntRegs
_080271F4: .4byte 0x00001F02
_080271F8: .4byte 0x0600F800
_080271FC: .4byte 0x00007FFF
_08027200: .4byte gUnk_082D7850
_08027204: .4byte sub_08029D00

	thumb_func_start sub_08027208
sub_08027208: @ 0x08027208
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	adds r0, #0xf4
	movs r1, #0xcf
	lsls r1, r1, #2
	adds r3, r7, r1
	movs r1, #0xf0
	lsls r1, r1, #7
	str r1, [r3]
	movs r2, #0xd0
	lsls r2, r2, #2
	adds r4, r7, r2
	movs r1, #0xdc
	lsls r1, r1, #8
	str r1, [r4]
	ldr r1, _080272E8 @ =0x0000034A
	adds r2, r7, r1
	movs r1, #0
	mov sb, r1
	movs r1, #0xfd
	lsls r1, r1, #8
	strh r1, [r2]
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	adds r1, #0x90
	strh r1, [r0, #0xc]
	movs r5, #0xf
	strb r5, [r0, #0x1a]
	mov r2, sb
	strh r2, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	mov r8, r1
	mov r2, r8
	strb r2, [r0, #0x1c]
	movs r1, #5
	strb r1, [r0, #0x1f]
	ldr r1, [r3]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r4]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r6, #0x80
	lsls r6, r6, #6
	str r6, [r0, #8]
	bl sub_08155128
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r0, [r4]
	ldr r1, _080272EC @ =0xFFFAFFFF
	ands r0, r1
	movs r1, #0xa0
	lsls r1, r1, #0xa
	orrs r0, r1
	str r0, [r4]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r1, #0xb0
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	adds r1, #0xd1
	strh r1, [r0, #0xc]
	strb r5, [r0, #0x1a]
	mov r2, sb
	strh r2, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	mov r1, r8
	strb r1, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	movs r2, #0x82
	lsls r2, r2, #1
	adds r1, r7, r2
	ldrh r1, [r1]
	strh r1, [r0, #0x10]
	adds r2, #2
	adds r1, r7, r2
	ldrh r1, [r1]
	strh r1, [r0, #0x12]
	str r6, [r0, #8]
	bl sub_08155128
	ldr r0, [r4]
	ldr r1, _080272F0 @ =0xFFEFFFFF
	ands r0, r1
	movs r1, #0xa0
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r4]
	movs r0, #0x90
	lsls r0, r0, #2
	bl m4aSongNumStart
	ldr r0, _080272F4 @ =sub_080272F8
	str r0, [r7]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080272E8: .4byte 0x0000034A
_080272EC: .4byte 0xFFFAFFFF
_080272F0: .4byte 0xFFEFFFFF
_080272F4: .4byte sub_080272F8

	thumb_func_start sub_080272F8
sub_080272F8: @ 0x080272F8
	push {lr}
	mov ip, r0
	movs r2, #0xd0
	lsls r2, r2, #2
	add r2, ip
	ldr r3, _08027348 @ =0x0000034A
	add r3, ip
	movs r1, #0
	ldrsh r0, [r3, r1]
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
	ldrh r0, [r3]
	adds r0, #8
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08027320
	movs r0, #0
	strh r0, [r3]
_08027320:
	ldr r0, [r2]
	asrs r0, r0, #8
	movs r2, #0x83
	lsls r2, r2, #1
	add r2, ip
	strh r0, [r2]
	movs r2, #0x97
	lsls r2, r2, #1
	add r2, ip
	strh r0, [r2]
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bne _08027342
	ldr r0, _0802734C @ =sub_08029D18
	mov r1, ip
	str r0, [r1]
_08027342:
	pop {r0}
	bx r0
	.align 2, 0
_08027348: .4byte 0x0000034A
_0802734C: .4byte sub_08029D18

	thumb_func_start sub_08027350
sub_08027350: @ 0x08027350
	push {lr}
	mov ip, r0
	movs r3, #0xd0
	lsls r3, r3, #2
	add r3, ip
	ldr r2, _080273A8 @ =0x0000034A
	add r2, ip
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	ldrh r0, [r2]
	subs r0, #8
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xfc
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _0802737E
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r2]
_0802737E:
	ldr r0, [r3]
	asrs r0, r0, #8
	movs r2, #0x83
	lsls r2, r2, #1
	add r2, ip
	strh r0, [r2]
	movs r1, #0x97
	lsls r1, r1, #1
	add r1, ip
	strh r0, [r1]
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080273A4
	ldr r0, _080273AC @ =sub_08029D38
	mov r1, ip
	str r0, [r1]
_080273A4:
	pop {r0}
	bx r0
	.align 2, 0
_080273A8: .4byte 0x0000034A
_080273AC: .4byte sub_08029D38

	thumb_func_start sub_080273B0
sub_080273B0: @ 0x080273B0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _08027410 @ =0x0000035A
	adds r1, r6, r0
	ldrh r0, [r1]
	adds r2, r0, #1
	movs r5, #0
	strh r2, [r1]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08027434
	ldr r1, _08027414 @ =gBldRegs
	strh r5, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	mov r0, sp
	strh r5, [r0]
	ldr r1, _08027418 @ =gBgPalette
	ldr r4, _0802741C @ =0x01000100
	adds r2, r4, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r5, [r0]
	ldr r1, _08027420 @ =gObjPalette
	adds r2, r4, #0
	bl CpuSet
	ldr r2, _08027424 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r2, r6, r0
	ldr r0, [r2]
	ldr r1, _08027428 @ =0xFDFFFFFF
	ands r0, r1
	ldr r1, _0802742C @ =0xDFFFFFFF
	ands r0, r1
	str r0, [r2]
	ldr r0, _08027430 @ =sub_08029DAC
	str r0, [r6]
	b _08027438
	.align 2, 0
_08027410: .4byte 0x0000035A
_08027414: .4byte gBldRegs
_08027418: .4byte gBgPalette
_0802741C: .4byte 0x01000100
_08027420: .4byte gObjPalette
_08027424: .4byte gUnk_03002440
_08027428: .4byte 0xFDFFFFFF
_0802742C: .4byte 0xDFFFFFFF
_08027430: .4byte sub_08029DAC
_08027434:
	ldr r0, _08027440 @ =gBldRegs
	strh r2, [r0, #4]
_08027438:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08027440: .4byte gBldRegs

	thumb_func_start sub_08027444
sub_08027444: @ 0x08027444
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r2, _080274FC @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08027500 @ =0x0000FDFF
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08027504 @ =gBldRegs
	movs r2, #0
	movs r5, #0
	movs r0, #0xff
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0xea
	lsls r0, r0, #1
	adds r4, r6, r0
	ldr r0, _08027508 @ =gBgScrollRegs
	strh r5, [r0, #8]
	strh r5, [r0, #0xa]
	ldr r1, _0802750C @ =gBgCntRegs
	ldr r0, _08027510 @ =0x00001E07
	strh r0, [r1, #4]
	ldr r0, _08027514 @ =0x06004000
	str r0, [r4, #4]
	strh r5, [r4, #0xa]
	ldr r0, _08027518 @ =0x0600F000
	str r0, [r4, #0xc]
	strh r5, [r4, #0x18]
	strh r5, [r4, #0x1a]
	ldr r0, _0802751C @ =0x000002ED
	strh r0, [r4, #0x1c]
	strh r5, [r4, #0x1e]
	strh r5, [r4, #0x20]
	strh r5, [r4, #0x22]
	strh r5, [r4, #0x24]
	movs r0, #0x1e
	strh r0, [r4, #0x26]
	movs r0, #0x14
	strh r0, [r4, #0x28]
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r6, r1
	strb r2, [r0]
	ldr r3, _08027520 @ =0x000001FF
	adds r0, r6, r3
	strb r2, [r0]
	adds r1, #2
	adds r0, r6, r1
	strb r2, [r0]
	movs r0, #0xa
	strh r0, [r4, #0x2e]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	ldr r0, _08027524 @ =0x00007FFF
	strh r0, [r4, #0x34]
	strh r0, [r4, #0x36]
	ldr r0, _08027528 @ =gUnk_082D7850
	ldr r3, _0802752C @ =0x00000BB4
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r0, [r0, #8]
	ldr r1, [r4, #4]
	bl LZ77UnCompVram
	adds r0, r4, #0
	bl sub_08153060
	movs r0, #0x1a
	bl m4aSongNumStart
	ldr r1, _08027530 @ =0x0000035A
	adds r0, r6, r1
	strh r5, [r0]
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r2, r6, r3
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r2]
	ldr r0, _08027534 @ =sub_08027538
	str r0, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080274FC: .4byte gDispCnt
_08027500: .4byte 0x0000FDFF
_08027504: .4byte gBldRegs
_08027508: .4byte gBgScrollRegs
_0802750C: .4byte gBgCntRegs
_08027510: .4byte 0x00001E07
_08027514: .4byte 0x06004000
_08027518: .4byte 0x0600F000
_0802751C: .4byte 0x000002ED
_08027520: .4byte 0x000001FF
_08027524: .4byte 0x00007FFF
_08027528: .4byte gUnk_082D7850
_0802752C: .4byte 0x00000BB4
_08027530: .4byte 0x0000035A
_08027534: .4byte sub_08027538

	thumb_func_start sub_08027538
sub_08027538: @ 0x08027538
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _0802756C @ =0x0000035A
	adds r1, r3, r0
	ldrh r0, [r1]
	adds r2, r0, #1
	movs r4, #0
	strh r2, [r1]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _0802757C
	ldr r0, _08027570 @ =gBldRegs
	strh r4, [r0]
	strh r4, [r0, #4]
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r2, r3, r0
	ldr r0, [r2]
	ldr r1, _08027574 @ =0xDFFFFFFF
	ands r0, r1
	str r0, [r2]
	ldr r0, _08027578 @ =sub_08029DCC
	str r0, [r3]
	b _08027584
	.align 2, 0
_0802756C: .4byte 0x0000035A
_08027570: .4byte gBldRegs
_08027574: .4byte 0xDFFFFFFF
_08027578: .4byte sub_08029DCC
_0802757C:
	ldr r1, _0802758C @ =gBldRegs
	movs r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #4]
_08027584:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802758C: .4byte gBldRegs

	thumb_func_start sub_08027590
sub_08027590: @ 0x08027590
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r0, r7, #4
	movs r1, #0xb9
	lsls r1, r1, #2
	adds r5, r7, r1
	ldr r1, _08027608 @ =0xFFFFE000
	str r1, [r5]
	movs r1, #0xba
	lsls r1, r1, #2
	adds r6, r7, r1
	movs r1, #0x8c
	lsls r1, r1, #8
	str r1, [r6]
	movs r1, #0xc1
	lsls r1, r1, #2
	adds r2, r7, r1
	movs r4, #0
	movs r3, #0
	movs r1, #0xee
	lsls r1, r1, #1
	strh r1, [r2]
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	movs r1, #2
	strh r1, [r0, #0xc]
	strb r4, [r0, #0x1a]
	strh r3, [r0, #0x16]
	subs r1, #3
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	ldr r1, [r5]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #8]
	bl sub_08155128
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	movs r2, #5
	orrs r0, r2
	str r0, [r1]
	ldr r1, _0802760C @ =0x0000035A
	adds r0, r7, r1
	strh r2, [r0]
	ldr r0, _08027610 @ =sub_08027614
	str r0, [r7]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027608: .4byte 0xFFFFE000
_0802760C: .4byte 0x0000035A
_08027610: .4byte sub_08027614

	thumb_func_start sub_08027614
sub_08027614: @ 0x08027614
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xb9
	lsls r0, r0, #2
	adds r5, r4, r0
	movs r1, #0xc1
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	asrs r0, r0, #8
	strh r0, [r4, #0x14]
	ldr r0, _08027664 @ =0x0000035A
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _0802764E
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08027668 @ =0x00000247
	bl m4aSongNumStart
_0802764E:
	ldr r1, [r5]
	movs r0, #0xa0
	lsls r0, r0, #7
	cmp r1, r0
	ble _0802765C
	ldr r0, _0802766C @ =sub_08027670
	str r0, [r4]
_0802765C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08027664: .4byte 0x0000035A
_08027668: .4byte 0x00000247
_0802766C: .4byte sub_08027670

	thumb_func_start sub_08027670
sub_08027670: @ 0x08027670
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r4, r7, #0
	adds r4, #0xf4
	movs r0, #0xcf
	lsls r0, r0, #2
	adds r0, r0, r7
	mov r8, r0
	movs r0, #0xa0
	lsls r0, r0, #8
	mov r1, r8
	str r0, [r1]
	movs r0, #0xd0
	lsls r0, r0, #2
	adds r0, r0, r7
	mov sb, r0
	ldr r0, _080277F8 @ =0xFFFFE000
	mov r1, sb
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	movs r6, #0xe5
	lsls r6, r6, #2
	strh r6, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0x1a]
	movs r1, #0
	strh r1, [r4, #0x16]
	subs r0, #2
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	mov sl, r0
	mov r1, sl
	strb r1, [r4, #0x1c]
	movs r5, #5
	strb r5, [r4, #0x1f]
	mov r1, r8
	ldr r0, [r1]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	mov r1, sb
	ldr r0, [r1]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	movs r0, #0x82
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r4, #0x14]
	movs r0, #0xe4
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	movs r0, #0xd
	strb r0, [r4, #0x1a]
	movs r1, #0
	strh r1, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	mov r0, sl
	strb r0, [r4, #0x1c]
	strb r5, [r4, #0x1f]
	mov r1, r8
	ldr r0, [r1]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	mov r1, sb
	ldr r0, [r1]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	movs r0, #0x84
	lsls r0, r0, #0xb
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r5, r7, r1
	ldr r0, [r5]
	ldr r1, _080277FC @ =0xFFFCFFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r5]
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r4, r7, r0
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r4, #0x14]
	strh r6, [r4, #0xc]
	movs r0, #3
	strb r0, [r4, #0x1a]
	movs r0, #0
	strh r0, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	mov r1, sl
	strb r1, [r4, #0x1c]
	movs r6, #0xf
	strb r6, [r4, #0x1f]
	mov r1, r8
	ldr r0, [r1]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	mov r1, sb
	ldr r0, [r1]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	movs r0, #0x82
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r4, #0x14]
	ldr r0, _08027800 @ =0x00000391
	strh r0, [r4, #0xc]
	movs r0, #0xd
	strb r0, [r4, #0x1a]
	movs r1, #0
	strh r1, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	mov r0, sl
	strb r0, [r4, #0x1c]
	strb r6, [r4, #0x1f]
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrh r0, [r0]
	strh r0, [r4, #0x10]
	adds r1, #2
	adds r0, r7, r1
	ldrh r0, [r0]
	strh r0, [r4, #0x12]
	movs r0, #0x84
	lsls r0, r0, #0xb
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	ldr r0, [r5]
	ldr r1, _08027804 @ =0xFFCFFFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5]
	ldr r0, _08027808 @ =0x0000035A
	adds r1, r7, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _080277D4
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0802780C @ =0x00000247
	bl m4aSongNumStart
_080277D4:
	movs r1, #0xd7
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r1, #0
	strh r1, [r0]
	ldr r1, _08027810 @ =sub_08027814
	str r1, [r7]
	adds r0, r7, #0
	bl _call_via_r1
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080277F8: .4byte 0xFFFFE000
_080277FC: .4byte 0xFFFCFFFF
_08027800: .4byte 0x00000391
_08027804: .4byte 0xFFCFFFFF
_08027808: .4byte 0x0000035A
_0802780C: .4byte 0x00000247
_08027810: .4byte sub_08027814

	thumb_func_start sub_08027814
sub_08027814: @ 0x08027814
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r0, #0xb9
	lsls r0, r0, #2
	adds r2, r7, r0
	movs r1, #0xc1
	lsls r1, r1, #2
	adds r3, r7, r1
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0xd7
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrh r2, [r0]
	cmp r2, #0
	beq _08027854
	ldrh r0, [r3]
	subs r0, #0x20
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0802786E
	movs r0, #0
	strh r0, [r3]
	b _0802786E
_08027854:
	ldr r3, _080279D8 @ =0x0000035A
	adds r1, r7, r3
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _0802786E
	strh r2, [r1]
	ldr r0, _080279DC @ =0x00000247
	bl m4aSongNumStart
_0802786E:
	movs r0, #0xb9
	lsls r0, r0, #2
	adds r3, r7, r0
	ldr r0, [r3]
	asrs r0, r0, #8
	movs r5, #0
	strh r0, [r7, #0x14]
	movs r2, #0xd0
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r1]
	movs r2, #0x8c
	lsls r2, r2, #8
	cmp r0, r2
	ble _08027896
	str r2, [r1]
_08027896:
	movs r0, #0xd7
	lsls r0, r0, #2
	adds r4, r7, r0
	ldrh r2, [r4]
	cmp r2, #0
	bne _080278F4
	ldr r1, [r1]
	movs r0, #0xa0
	lsls r0, r0, #7
	cmp r1, r0
	ble _080278F4
	adds r0, r7, #4
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	movs r1, #0x36
	strh r1, [r0, #0xc]
	strb r5, [r0, #0x1a]
	strh r2, [r0, #0x16]
	subs r1, #0x37
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	ldr r1, [r3]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	movs r2, #0xba
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #8]
	bl sub_08155128
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r2, r7, r3
	ldr r0, [r2]
	ldr r1, _080279E0 @ =0xFFFEFFFF
	ands r0, r1
	str r0, [r2]
	movs r0, #1
	strh r0, [r4]
_080278F4:
	movs r0, #0xd0
	lsls r0, r0, #2
	adds r2, r7, r0
	ldr r0, [r2]
	asrs r0, r0, #8
	movs r1, #0x83
	lsls r1, r1, #1
	adds r1, r1, r7
	mov sb, r1
	movs r3, #0
	mov sl, r3
	strh r0, [r1]
	movs r3, #0x97
	lsls r3, r3, #1
	adds r1, r7, r3
	strh r0, [r1]
	ldr r1, [r2]
	movs r0, #0x8c
	lsls r0, r0, #8
	cmp r1, r0
	bne _080279CA
	adds r0, r7, #0
	adds r0, #0xf4
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	adds r1, #0x90
	strh r1, [r0, #0xc]
	movs r3, #0xe
	mov r8, r3
	mov r1, r8
	strb r1, [r0, #0x1a]
	mov r3, sl
	strh r3, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	movs r6, #0x10
	strb r6, [r0, #0x1c]
	movs r1, #5
	strb r1, [r0, #0x1f]
	movs r3, #0xcf
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r2]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r5, #0x84
	lsls r5, r5, #0xb
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r0, [r4]
	ldr r1, _080279E0 @ =0xFFFEFFFF
	ands r0, r1
	str r0, [r4]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r2, #0xc0
	lsls r2, r2, #2
	strh r2, [r0, #0x14]
	ldr r1, _080279E4 @ =0x00000391
	strh r1, [r0, #0xc]
	mov r3, r8
	strb r3, [r0, #0x1a]
	mov r1, sl
	strh r1, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #0xf
	strb r1, [r0, #0x1f]
	movs r2, #0x82
	lsls r2, r2, #1
	adds r1, r7, r2
	ldrh r1, [r1]
	strh r1, [r0, #0x10]
	mov r3, sb
	ldrh r1, [r3]
	strh r1, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	ldr r0, [r4]
	ldr r1, _080279E8 @ =0xFFCFFFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080279EC @ =0x00000241
	bl m4aSongNumStart
	ldr r1, _080279D8 @ =0x0000035A
	adds r0, r7, r1
	mov r2, sl
	strh r2, [r0]
	ldr r0, _080279F0 @ =sub_0802A110
	str r0, [r7]
_080279CA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080279D8: .4byte 0x0000035A
_080279DC: .4byte 0x00000247
_080279E0: .4byte 0xFFFEFFFF
_080279E4: .4byte 0x00000391
_080279E8: .4byte 0xFFCFFFFF
_080279EC: .4byte 0x00000241
_080279F0: .4byte sub_0802A110

	thumb_func_start sub_080279F4
sub_080279F4: @ 0x080279F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r0, #0xf4
	movs r5, #0
	movs r1, #0xc0
	lsls r1, r1, #2
	mov sl, r1
	mov r2, sl
	strh r2, [r0, #0x14]
	adds r1, #0x90
	strh r1, [r0, #0xc]
	movs r1, #0x16
	mov r8, r1
	mov r2, r8
	strb r2, [r0, #0x1a]
	strh r5, [r0, #0x16]
	subs r1, #0x17
	strb r1, [r0, #0x1b]
	movs r6, #0x10
	strb r6, [r0, #0x1c]
	movs r1, #5
	strb r1, [r0, #0x1f]
	movs r1, #0x84
	lsls r1, r1, #0xb
	mov sb, r1
	str r1, [r0, #8]
	bl sub_08155128
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r4, r7, r2
	ldr r0, [r4]
	ldr r1, _08027AA8 @ =0xFFFCFFFF
	ands r0, r1
	str r0, [r4]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r7, r1
	mov r2, sl
	strh r2, [r0, #0x14]
	ldr r1, _08027AAC @ =0x00000391
	strh r1, [r0, #0xc]
	mov r1, r8
	strb r1, [r0, #0x1a]
	strh r5, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #0xf
	strb r1, [r0, #0x1f]
	movs r2, #0x82
	lsls r2, r2, #1
	adds r1, r7, r2
	ldrh r1, [r1]
	strh r1, [r0, #0x10]
	adds r2, #2
	adds r1, r7, r2
	ldrh r1, [r1]
	strh r1, [r0, #0x12]
	mov r1, sb
	str r1, [r0, #8]
	bl sub_08155128
	ldr r0, [r4]
	ldr r1, _08027AB0 @ =0xFFCFFFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4]
	ldr r0, _08027AB4 @ =0x00000242
	bl m4aSongNumStart
	ldr r2, _08027AB8 @ =0x0000035A
	adds r0, r7, r2
	strh r5, [r0]
	ldr r0, _08027ABC @ =sub_0802A138
	str r0, [r7]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027AA8: .4byte 0xFFFCFFFF
_08027AAC: .4byte 0x00000391
_08027AB0: .4byte 0xFFCFFFFF
_08027AB4: .4byte 0x00000242
_08027AB8: .4byte 0x0000035A
_08027ABC: .4byte sub_0802A138

	thumb_func_start sub_08027AC0
sub_08027AC0: @ 0x08027AC0
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r2, r5, r0
	ldr r0, [r2]
	ldr r1, _08027B28 @ =0x00110002
	orrs r0, r1
	ldr r1, _08027B2C @ =0xFFDDFFFB
	ands r0, r1
	str r0, [r2]
	adds r0, r5, #4
	movs r3, #0
	movs r2, #0
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	movs r1, #0xb
	strh r1, [r0, #0xc]
	strb r3, [r0, #0x1a]
	strh r2, [r0, #0x16]
	subs r1, #0xc
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r3, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #8]
	bl sub_08155128
	ldr r4, _08027B30 @ =gUnk_03002440
	ldr r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	orrs r0, r1
	str r0, [r4]
	bl sub_081583DC
	ldr r2, [r4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _08027B38
	ldr r0, _08027B34 @ =gBgPalette
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl sub_08158334
	b _08027B4C
	.align 2, 0
_08027B28: .4byte 0x00110002
_08027B2C: .4byte 0xFFDDFFFB
_08027B30: .4byte gUnk_03002440
_08027B34: .4byte gBgPalette
_08027B38:
	ldr r1, _08027B68 @ =0x040000D4
	ldr r0, _08027B6C @ =gBgPalette
	str r0, [r1]
	str r0, [r1, #4]
	ldr r0, _08027B70 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r4]
_08027B4C:
	ldr r3, _08027B74 @ =gUnk_03002440
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _08027B7C
	ldr r0, _08027B78 @ =gObjPalette
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl sub_0815828C
	b _08027B90
	.align 2, 0
_08027B68: .4byte 0x040000D4
_08027B6C: .4byte gBgPalette
_08027B70: .4byte 0x80000100
_08027B74: .4byte gUnk_03002440
_08027B78: .4byte gObjPalette
_08027B7C:
	ldr r1, _08027BA4 @ =0x040000D4
	ldr r0, _08027BA8 @ =gObjPalette
	str r0, [r1]
	str r0, [r1, #4]
	ldr r0, _08027BAC @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #2
	orrs r2, r0
	str r2, [r3]
_08027B90:
	ldr r1, _08027BB0 @ =0x0000035A
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08027BB4 @ =sub_08027BB8
	str r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08027BA4: .4byte 0x040000D4
_08027BA8: .4byte gObjPalette
_08027BAC: .4byte 0x80000100
_08027BB0: .4byte 0x0000035A
_08027BB4: .4byte sub_08027BB8

	thumb_func_start sub_08027BB8
sub_08027BB8: @ 0x08027BB8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08027BEC @ =0x0000035A
	adds r0, r4, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xa
	bls _08027C62
	ldr r3, _08027BF0 @ =gUnk_03002440
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _08027BF8
	ldr r0, _08027BF4 @ =gBgPalette
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl sub_08158334
	b _08027C0C
	.align 2, 0
_08027BEC: .4byte 0x0000035A
_08027BF0: .4byte gUnk_03002440
_08027BF4: .4byte gBgPalette
_08027BF8:
	ldr r1, _08027C28 @ =0x040000D4
	ldr r0, _08027C2C @ =gBgPalette
	str r0, [r1]
	str r0, [r1, #4]
	ldr r0, _08027C30 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r3]
_08027C0C:
	ldr r3, _08027C34 @ =gUnk_03002440
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _08027C3C
	ldr r0, _08027C38 @ =gObjPalette
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl sub_0815828C
	b _08027C50
	.align 2, 0
_08027C28: .4byte 0x040000D4
_08027C2C: .4byte gBgPalette
_08027C30: .4byte 0x80000100
_08027C34: .4byte gUnk_03002440
_08027C38: .4byte gObjPalette
_08027C3C:
	ldr r1, _08027C68 @ =0x040000D4
	ldr r0, _08027C6C @ =gObjPalette
	str r0, [r1]
	str r0, [r1, #4]
	ldr r0, _08027C70 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #2
	orrs r2, r0
	str r2, [r3]
_08027C50:
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, _08027C74 @ =gUnk_030036D0
	ldr r2, _08027C78 @ =0x04000030
	bl CpuSet
	ldr r0, _08027C7C @ =sub_0802A160
	str r0, [r4]
_08027C62:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08027C68: .4byte 0x040000D4
_08027C6C: .4byte gObjPalette
_08027C70: .4byte 0x80000100
_08027C74: .4byte gUnk_030036D0
_08027C78: .4byte 0x04000030
_08027C7C: .4byte sub_0802A160

	thumb_func_start sub_08027C80
sub_08027C80: @ 0x08027C80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	movs r2, #0
	movs r0, #0x10
	mov sl, r0
_08027C94:
	lsls r5, r2, #3
	movs r0, #0xb9
	lsls r0, r0, #2
	add r0, r8
	adds r6, r0, r5
	ldr r0, [r0]
	str r0, [r6]
	movs r0, #0xba
	lsls r0, r0, #2
	add r0, r8
	adds r5, r0, r5
	ldr r0, [r0]
	str r0, [r5]
	lsls r4, r2, #2
	movs r1, #0xc1
	lsls r1, r1, #2
	add r1, r8
	adds r1, r1, r4
	ldr r3, _08027DBC @ =gUnk_082EB322
	adds r0, r4, r3
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _08027DC0 @ =0x00000306
	add r1, r8
	adds r1, r1, r4
	ldr r3, _08027DC4 @ =gUnk_082EB324
	adds r0, r4, r3
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r4, r2
	lsls r0, r0, #3
	adds r0, #4
	mov r1, r8
	adds r7, r1, r0
	ldrb r1, [r7, #0x1b]
	movs r3, #0xc0
	lsls r3, r3, #2
	strh r3, [r7, #0x14]
	movs r0, #0x15
	strh r0, [r7, #0xc]
	strb r2, [r7, #0x1a]
	movs r0, #0
	strh r0, [r7, #0x16]
	movs r0, #0xff
	orrs r0, r1
	strb r0, [r7, #0x1b]
	mov r1, sl
	strb r1, [r7, #0x1c]
	strb r2, [r7, #0x1f]
	ldr r0, [r6]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r5]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r0, #0x82
	lsls r0, r0, #0xc
	str r0, [r7, #8]
	adds r0, r7, #0
	str r2, [sp]
	bl sub_08155128
	ldrb r1, [r7, #0x1b]
	movs r3, #0xc0
	lsls r3, r3, #2
	strh r3, [r7, #0x14]
	movs r0, #0xb
	strh r0, [r7, #0xc]
	movs r0, #0
	strb r0, [r7, #0x1a]
	movs r3, #0
	strh r3, [r7, #0x16]
	movs r0, #0xff
	orrs r0, r1
	strb r0, [r7, #0x1b]
	mov r0, sl
	strb r0, [r7, #0x1c]
	ldr r2, [sp]
	strb r2, [r7, #0x1f]
	ldr r0, [r6]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r5]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r0, #0x84
	lsls r0, r0, #0xb
	str r0, [r7, #8]
	movs r5, #0
	lsls r6, r2, #1
	adds r1, r2, #1
	mov sb, r1
	cmp r5, r4
	bge _08027D64
_08027D50:
	adds r0, r7, #0
	str r2, [sp]
	bl sub_08155128
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r2, [sp]
	cmp r5, r4
	blt _08027D50
_08027D64:
	movs r3, #0xd5
	lsls r3, r3, #2
	add r3, r8
	adds r2, r6, r2
	movs r0, #1
	lsls r0, r2
	ldr r1, [r3]
	orrs r1, r0
	movs r0, #4
	lsls r0, r2
	orrs r1, r0
	movs r0, #2
	lsls r0, r2
	bics r1, r0
	str r1, [r3]
	mov r3, sb
	lsls r0, r3, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #3
	bls _08027C94
	movs r0, #0x92
	lsls r0, r0, #2
	bl m4aSongNumStart
	ldr r0, _08027DC8 @ =0x0000035A
	add r0, r8
	movs r1, #0
	strh r1, [r0]
	movs r0, #0xd7
	lsls r0, r0, #2
	add r0, r8
	strh r1, [r0]
	ldr r0, _08027DCC @ =sub_08027DD0
	mov r1, r8
	str r0, [r1]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027DBC: .4byte gUnk_082EB322
_08027DC0: .4byte 0x00000306
_08027DC4: .4byte gUnk_082EB324
_08027DC8: .4byte 0x0000035A
_08027DCC: .4byte sub_08027DD0

	thumb_func_start sub_08027DD0
sub_08027DD0: @ 0x08027DD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r0, _08027EE0 @ =0x0000035A
	adds r1, r7, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r3, _08027EE4 @ =0x0000FFFF
	adds r2, r3, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bls _08027E12
	movs r0, #0
	strh r0, [r1]
	movs r4, #0xd7
	lsls r4, r4, #2
	adds r1, r7, r4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ands r0, r2
	cmp r0, #3
	bhi _08027E12
	movs r0, #0x92
	lsls r0, r0, #2
	bl m4aSongNumStart
_08027E12:
	movs r0, #0
	mov sb, r0
_08027E16:
	mov r1, sb
	lsls r3, r1, #3
	movs r2, #0xb9
	lsls r2, r2, #2
	adds r0, r7, r2
	adds r0, r0, r3
	mov ip, r0
	lsls r2, r1, #2
	movs r4, #0xc1
	lsls r4, r4, #2
	adds r0, r7, r4
	adds r0, r0, r2
	mov r8, r0
	movs r4, #0
	ldrsh r1, [r0, r4]
	mov r4, ip
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	movs r1, #0xba
	lsls r1, r1, #2
	adds r0, r7, r1
	adds r5, r0, r3
	ldr r4, _08027EE8 @ =0x00000306
	adds r0, r7, r4
	adds r4, r0, r2
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	ldrh r0, [r4]
	adds r0, #0x26
	strh r0, [r4]
	ldr r1, [r5]
	ldr r0, _08027EEC @ =0x00008BFF
	str r3, [sp, #4]
	str r2, [sp]
	cmp r1, r0
	ble _08027F08
	adds r0, #1
	str r0, [r5]
	movs r1, #0
	strh r1, [r4]
	mov r2, sb
	lsls r0, r2, #1
	add r0, sb
	mov sl, r0
	movs r3, #4
	adds r4, r3, #0
	lsls r4, r0
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r6, r7, r0
	ldr r1, [r6]
	ands r1, r4
	cmp r1, #0
	beq _08027EF8
	ldr r0, [sp]
	add r0, sb
	lsls r0, r0, #3
	adds r0, #4
	adds r0, r7, r0
	ldrb r2, [r0, #0x1b]
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	strh r3, [r0, #0xc]
	movs r1, #5
	strb r1, [r0, #0x1a]
	movs r1, #0
	strh r1, [r0, #0x16]
	movs r1, #0xff
	orrs r1, r2
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r2, sb
	strb r2, [r0, #0x1f]
	mov r3, ip
	ldr r1, [r3]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r5]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	ldr r1, _08027EF0 @ =0x00042400
	str r1, [r0, #8]
	bl sub_08155128
	ldr r1, [r6]
	bics r1, r4
	movs r0, #2
	mov r4, sl
	lsls r0, r4
	orrs r1, r0
	str r1, [r6]
	ldr r0, _08027EF4 @ =0x0000FFC0
	mov r1, r8
	strh r0, [r1]
	b _08027F08
	.align 2, 0
_08027EE0: .4byte 0x0000035A
_08027EE4: .4byte 0x0000FFFF
_08027EE8: .4byte 0x00000306
_08027EEC: .4byte 0x00008BFF
_08027EF0: .4byte 0x00042400
_08027EF4: .4byte 0x0000FFC0
_08027EF8:
	mov r2, r8
	ldrh r0, [r2]
	adds r0, #2
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08027F08
	strh r1, [r2]
_08027F08:
	ldr r1, [sp]
	add r1, sb
	lsls r1, r1, #3
	adds r1, r7, r1
	movs r3, #0xb9
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r4, [sp, #4]
	adds r0, r0, r4
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r1, #0x14]
	movs r2, #0xba
	lsls r2, r2, #2
	adds r0, r7, r2
	adds r0, r0, r4
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r1, #0x16]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #3
	bhi _08027F3E
	b _08027E16
_08027F3E:
	adds r3, #0x70
	adds r3, r3, r7
	mov sb, r3
	ldr r1, [r3]
	movs r4, #0x80
	lsls r4, r4, #0xa
	mov sl, r4
	adds r2, r1, #0
	ands r2, r4
	cmp r2, #0
	bne _08027FEA
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r1, r0
	cmp r1, #0
	beq _08027FEA
	adds r0, r7, #0
	adds r0, #0xf4
	movs r1, #0
	mov r8, r1
	movs r5, #0xc0
	lsls r5, r5, #2
	strh r5, [r0, #0x14]
	movs r1, #0xe4
	lsls r1, r1, #2
	strh r1, [r0, #0xc]
	mov r3, r8
	strb r3, [r0, #0x1a]
	strh r2, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	movs r4, #0x10
	strb r4, [r0, #0x1c]
	movs r1, #5
	strb r1, [r0, #0x1f]
	movs r6, #0x84
	lsls r6, r6, #0xb
	str r6, [r0, #8]
	str r2, [sp, #8]
	bl sub_08155128
	mov r1, sb
	ldr r0, [r1]
	ldr r1, _0802800C @ =0xFFFEFFFF
	ands r0, r1
	mov r3, sl
	orrs r0, r3
	mov r1, sb
	str r0, [r1]
	movs r3, #0x8e
	lsls r3, r3, #1
	adds r0, r7, r3
	strh r5, [r0, #0x14]
	ldr r1, _08028010 @ =0x00000391
	strh r1, [r0, #0xc]
	mov r1, r8
	strb r1, [r0, #0x1a]
	ldr r2, [sp, #8]
	strh r2, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r4, [r0, #0x1c]
	movs r1, #0xf
	strb r1, [r0, #0x1f]
	movs r2, #0x82
	lsls r2, r2, #1
	adds r1, r7, r2
	ldrh r1, [r1]
	strh r1, [r0, #0x10]
	subs r3, #0x16
	adds r1, r7, r3
	ldrh r1, [r1]
	strh r1, [r0, #0x12]
	str r6, [r0, #8]
	bl sub_08155128
	mov r4, sb
	ldr r0, [r4]
	ldr r1, _08028014 @ =0xFFEFFFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r4]
_08027FEA:
	movs r1, #0xc4
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _08027FFC
	ldr r0, _08028018 @ =sub_08029DE4
	str r0, [r7]
_08027FFC:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802800C: .4byte 0xFFFEFFFF
_08028010: .4byte 0x00000391
_08028014: .4byte 0xFFEFFFFF
_08028018: .4byte sub_08029DE4

	thumb_func_start sub_0802801C
sub_0802801C: @ 0x0802801C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r0, #0xf4
	movs r1, #0
	mov sl, r1
	movs r2, #0xc0
	lsls r2, r2, #2
	mov sb, r2
	mov r1, sb
	strh r1, [r0, #0x14]
	movs r1, #0xe4
	lsls r1, r1, #2
	strh r1, [r0, #0xc]
	movs r6, #0xa
	strb r6, [r0, #0x1a]
	mov r2, sl
	strh r2, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	movs r5, #0x10
	strb r5, [r0, #0x1c]
	movs r1, #5
	strb r1, [r0, #0x1f]
	movs r1, #0x84
	lsls r1, r1, #0xb
	mov r8, r1
	str r1, [r0, #8]
	bl sub_08155128
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r4, r7, r2
	ldr r0, [r4]
	ldr r1, _080280C8 @ =0xFFFCFFFF
	ands r0, r1
	str r0, [r4]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r7, r1
	mov r2, sb
	strh r2, [r0, #0x14]
	ldr r1, _080280CC @ =0x00000391
	strh r1, [r0, #0xc]
	strb r6, [r0, #0x1a]
	mov r1, sl
	strh r1, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r5, [r0, #0x1c]
	movs r1, #0xf
	strb r1, [r0, #0x1f]
	movs r2, #0x82
	lsls r2, r2, #1
	adds r1, r7, r2
	ldrh r1, [r1]
	strh r1, [r0, #0x10]
	adds r2, #2
	adds r1, r7, r2
	ldrh r1, [r1]
	strh r1, [r0, #0x12]
	mov r1, r8
	str r1, [r0, #8]
	bl sub_08155128
	ldr r0, [r4]
	ldr r1, _080280D0 @ =0xFFCFFFFF
	ands r0, r1
	str r0, [r4]
	ldr r0, _080280D4 @ =0x00000243
	bl m4aSongNumStart
	ldr r0, _080280D8 @ =sub_0802A1B4
	str r0, [r7]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080280C8: .4byte 0xFFFCFFFF
_080280CC: .4byte 0x00000391
_080280D0: .4byte 0xFFCFFFFF
_080280D4: .4byte 0x00000243
_080280D8: .4byte sub_0802A1B4

	thumb_func_start sub_080280DC
sub_080280DC: @ 0x080280DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r0, #0xf4
	movs r1, #0
	mov sl, r1
	movs r2, #0xc0
	lsls r2, r2, #2
	mov sb, r2
	mov r1, sb
	strh r1, [r0, #0x14]
	movs r1, #0xe4
	lsls r1, r1, #2
	strh r1, [r0, #0xc]
	movs r6, #0xb
	strb r6, [r0, #0x1a]
	mov r2, sl
	strh r2, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	movs r5, #0x10
	strb r5, [r0, #0x1c]
	movs r1, #5
	strb r1, [r0, #0x1f]
	movs r1, #0x84
	lsls r1, r1, #0xb
	mov r8, r1
	str r1, [r0, #8]
	bl sub_08155128
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r4, r7, r2
	ldr r0, [r4]
	ldr r1, _08028184 @ =0xFFFCFFFF
	ands r0, r1
	str r0, [r4]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r7, r1
	mov r2, sb
	strh r2, [r0, #0x14]
	ldr r1, _08028188 @ =0x00000391
	strh r1, [r0, #0xc]
	strb r6, [r0, #0x1a]
	mov r1, sl
	strh r1, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r5, [r0, #0x1c]
	movs r1, #0xf
	strb r1, [r0, #0x1f]
	movs r2, #0x82
	lsls r2, r2, #1
	adds r1, r7, r2
	ldrh r1, [r1]
	strh r1, [r0, #0x10]
	adds r2, #2
	adds r1, r7, r2
	ldrh r1, [r1]
	strh r1, [r0, #0x12]
	mov r1, r8
	str r1, [r0, #8]
	bl sub_08155128
	ldr r0, [r4]
	ldr r1, _0802818C @ =0xFFCFFFFF
	ands r0, r1
	str r0, [r4]
	ldr r0, _08028190 @ =sub_0802A1D8
	str r0, [r7]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028184: .4byte 0xFFFCFFFF
_08028188: .4byte 0x00000391
_0802818C: .4byte 0xFFCFFFFF
_08028190: .4byte sub_0802A1D8

	thumb_func_start sub_08028194
sub_08028194: @ 0x08028194
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r1, #0xd6
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080281F0
	movs r5, #0
	ldr r0, _08028210 @ =gRngVal
	mov r8, r0
	movs r1, #0xb9
	lsls r1, r1, #2
	adds r7, r6, r1
	ldr r4, [r0]
	ldr r0, _08028214 @ =0x00196225
	mov ip, r0
_080281BE:
	lsls r3, r5, #2
	adds r3, r3, r5
	lsls r3, r3, #3
	adds r3, r6, r3
	mov r0, ip
	muls r0, r4, r0
	ldr r1, _08028218 @ =0x3C6EF35F
	adds r4, r0, r1
	lsls r0, r5, #3
	adds r0, r7, r0
	ldr r0, [r0]
	asrs r0, r0, #8
	lsrs r1, r4, #0x10
	movs r2, #3
	ands r1, r2
	adds r0, r0, r1
	subs r0, #2
	strh r0, [r3, #0x14]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	bls _080281BE
	mov r0, r8
	str r4, [r0]
_080281F0:
	ldr r1, _0802821C @ =0x0000035A
	adds r0, r6, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x1e
	bls _08028206
	ldr r0, _08028220 @ =sub_08028224
	str r0, [r6]
_08028206:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028210: .4byte gRngVal
_08028214: .4byte 0x00196225
_08028218: .4byte 0x3C6EF35F
_0802821C: .4byte 0x0000035A
_08028220: .4byte sub_08028224

	thumb_func_start sub_08028224
sub_08028224: @ 0x08028224
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r2, r4, r0
	ldr r0, [r2]
	ldr r1, _080282A8 @ =0xFFFFF249
	ands r0, r1
	str r0, [r2]
	ldr r0, [r4, #0xc]
	ldr r1, _080282AC @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x34]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r0, r2
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x5c]
	ands r0, r1
	str r0, [r4, #0x5c]
	adds r1, r4, #0
	adds r1, #0x84
	ldr r0, [r1]
	orrs r0, r2
	str r0, [r1]
	movs r3, #0
	ldr r1, _080282B0 @ =0x00000306
	adds r6, r4, r1
	ldr r5, _080282B4 @ =gRngVal
	ldr r0, _080282B8 @ =0x00196225
	mov r8, r0
	ldr r1, _080282BC @ =0x3C6EF35F
	mov ip, r1
	movs r7, #0x3f
_0802826E:
	lsls r2, r3, #2
	adds r2, r6, r2
	ldr r0, [r5]
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	add r0, ip
	str r0, [r5]
	lsrs r0, r0, #0x10
	ands r0, r7
	ldr r1, _080282C0 @ =0xFFFFFE00
	adds r0, r0, r1
	strh r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _0802826E
	ldr r0, _080282C4 @ =0x00000267
	bl m4aSongNumStart
	ldr r0, _080282C8 @ =sub_080282CC
	str r0, [r4]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080282A8: .4byte 0xFFFFF249
_080282AC: .4byte 0xFFFFFBFF
_080282B0: .4byte 0x00000306
_080282B4: .4byte gRngVal
_080282B8: .4byte 0x00196225
_080282BC: .4byte 0x3C6EF35F
_080282C0: .4byte 0xFFFFFE00
_080282C4: .4byte 0x00000267
_080282C8: .4byte sub_080282CC

	thumb_func_start sub_080282CC
sub_080282CC: @ 0x080282CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r0
	movs r7, #0
	movs r0, #0xba
	lsls r0, r0, #2
	add r0, r8
	str r0, [sp]
	movs r1, #0xb9
	lsls r1, r1, #2
	add r1, r8
	str r1, [sp, #8]
	ldr r0, _080283EC @ =0x00000306
	add r0, r8
	str r0, [sp, #4]
_080282F2:
	lsls r3, r7, #3
	ldr r1, [sp]
	adds r5, r1, r3
	lsls r2, r7, #2
	ldr r0, [sp, #4]
	adds r4, r0, r2
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	ldrh r0, [r4]
	adds r0, #0x26
	strh r0, [r4]
	ldr r0, [r5]
	mov ip, r3
	str r2, [sp, #0xc]
	movs r1, #0x8c
	lsls r1, r1, #8
	cmp r0, r1
	ble _080283A0
	str r1, [r5]
	movs r0, #0
	strh r0, [r4]
	lsls r0, r7, #1
	adds r0, r0, r7
	mov sl, r0
	movs r1, #4
	mov sb, r1
	lsls r1, r0
	mov sb, r1
	movs r6, #0xd5
	lsls r6, r6, #2
	add r6, r8
	ldr r4, [r6]
	ands r4, r1
	cmp r4, #0
	bne _080283A0
	ldr r1, [sp, #0xc]
	adds r0, r1, r7
	lsls r0, r0, #3
	adds r0, #4
	mov r1, r8
	adds r3, r1, r0
	ldr r1, [r3, #8]
	lsrs r1, r1, #0xa
	movs r0, #1
	ands r1, r0
	ldrb r2, [r3, #0x1b]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r3, #0x14]
	strh r4, [r3, #0xc]
	movs r0, #0
	strb r0, [r3, #0x1a]
	strh r4, [r3, #0x16]
	movs r0, #0xff
	orrs r0, r2
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r7, [r3, #0x1f]
	ldr r0, [sp, #8]
	add r0, ip
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r3, #0x10]
	ldr r0, [r5]
	asrs r0, r0, #8
	strh r0, [r3, #0x12]
	movs r2, #0x84
	lsls r2, r2, #0xb
	str r2, [r3, #8]
	cmp r1, #0
	beq _08028390
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r2
	str r0, [r3, #8]
_08028390:
	movs r1, #2
	mov r0, sl
	lsls r1, r0
	ldr r0, [r6]
	bics r0, r1
	mov r1, sb
	orrs r0, r1
	str r0, [r6]
_080283A0:
	ldr r0, [sp, #0xc]
	adds r1, r0, r7
	lsls r1, r1, #3
	add r1, r8
	ldr r0, [sp, #8]
	add r0, ip
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r1, #0x14]
	ldr r0, [sp]
	add r0, ip
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r1, #0x16]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #3
	bls _080282F2
	movs r0, #0xd5
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldr r1, _080283F0 @ =0x00000924
	ands r0, r1
	cmp r0, r1
	bne _080283DC
	ldr r0, _080283F4 @ =sub_08029DFC
	mov r1, r8
	str r0, [r1]
_080283DC:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080283EC: .4byte 0x00000306
_080283F0: .4byte 0x00000924
_080283F4: .4byte sub_08029DFC

	thumb_func_start sub_080283F8
sub_080283F8: @ 0x080283F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r1, r7, #4
	movs r0, #0
	mov sb, r0
	movs r4, #0
	movs r3, #0xc0
	lsls r3, r3, #2
	strh r3, [r1, #0x14]
	movs r6, #0xa
	strh r6, [r1, #0xc]
	movs r2, #3
	mov r8, r2
	mov r0, r8
	strb r0, [r1, #0x1a]
	strh r4, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	movs r5, #0x10
	strb r5, [r1, #0x1c]
	mov r2, sb
	strb r2, [r1, #0x1f]
	movs r2, #0xb9
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	movs r0, #0x84
	lsls r0, r0, #0xb
	mov sl, r0
	str r0, [r1, #8]
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r2, r7, r1
	ldr r0, [r2]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	adds r1, r7, #0
	adds r1, #0x2c
	strh r3, [r1, #0x14]
	strh r6, [r1, #0xc]
	mov r6, r8
	strb r6, [r1, #0x1a]
	strh r4, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	strb r5, [r1, #0x1c]
	movs r0, #1
	strb r0, [r1, #0x1f]
	movs r6, #0xbb
	lsls r6, r6, #2
	adds r0, r7, r6
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	adds r6, #4
	adds r0, r7, r6
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	ldr r6, _0802851C @ =0x00042400
	str r6, [r1, #8]
	ldr r0, [r2]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	adds r1, r7, #0
	adds r1, #0x54
	strh r3, [r1, #0x14]
	strh r4, [r1, #0xc]
	mov r0, sb
	strb r0, [r1, #0x1a]
	strh r4, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	strb r5, [r1, #0x1c]
	movs r0, #2
	strb r0, [r1, #0x1f]
	movs r2, #0xbd
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	str r6, [r1, #8]
	adds r1, #0x28
	strh r3, [r1, #0x14]
	strh r4, [r1, #0xc]
	mov r6, sb
	strb r6, [r1, #0x1a]
	strh r4, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	strb r5, [r1, #0x1c]
	mov r0, r8
	strb r0, [r1, #0x1f]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	adds r3, r7, r3
	ldr r0, [r3]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	mov r6, sl
	str r6, [r1, #8]
	movs r0, #0x9a
	lsls r0, r0, #2
	bl m4aSongNumStart
	ldr r1, _08028520 @ =0x0000035A
	adds r0, r7, r1
	strh r4, [r0]
	ldr r0, _08028524 @ =sub_0802A25C
	str r0, [r7]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802851C: .4byte 0x00042400
_08028520: .4byte 0x0000035A
_08028524: .4byte sub_0802A25C

	thumb_func_start sub_08028528
sub_08028528: @ 0x08028528
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	movs r3, #0
	ldr r0, _080285FC @ =sub_0802A284
	mov sl, r0
	movs r7, #0xff
	mov sb, r7
	movs r0, #0
	mov r8, r0
	movs r6, #0
	movs r7, #0xb9
	lsls r7, r7, #2
	adds r7, r7, r4
	mov ip, r7
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r5, r4, r0
	movs r7, #0xba
	lsls r7, r7, #2
	adds r7, r4, r7
	str r7, [sp]
_0802855C:
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, #4
	adds r1, r4, r1
	ldrb r2, [r1, #0x1b]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1, #0x14]
	strh r6, [r1, #0xc]
	mov r0, r8
	strb r0, [r1, #0x1a]
	strh r6, [r1, #0x16]
	mov r0, sb
	orrs r0, r2
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r3, [r1, #0x1f]
	lsls r2, r3, #3
	mov r7, ip
	adds r0, r7, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	ldr r0, [sp]
	adds r2, r0, r2
	ldr r0, [r2]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	movs r0, #0x84
	lsls r0, r0, #0xb
	str r0, [r1, #8]
	lsls r2, r3, #1
	adds r2, r2, r3
	movs r0, #2
	lsls r0, r2
	ldr r1, [r5]
	bics r1, r0
	movs r0, #4
	lsls r0, r2
	orrs r1, r0
	str r1, [r5]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _0802855C
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x34]
	ldr r2, _08028600 @ =0xFFFFFBFF
	ands r0, r2
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x5c]
	orrs r0, r1
	str r0, [r4, #0x5c]
	adds r1, r4, #0
	adds r1, #0x84
	ldr r0, [r1]
	ands r0, r2
	str r0, [r1]
	ldr r7, _08028604 @ =0x0000035A
	adds r1, r4, r7
	movs r0, #0
	strh r0, [r1]
	mov r0, sl
	str r0, [r4]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080285FC: .4byte sub_0802A284
_08028600: .4byte 0xFFFFFBFF
_08028604: .4byte 0x0000035A

	thumb_func_start sub_08028608
sub_08028608: @ 0x08028608
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r1, r7, #0
	adds r1, #0x54
	movs r5, #0
	movs r3, #0xc0
	lsls r3, r3, #2
	strh r3, [r1, #0x14]
	movs r0, #0xa
	mov r8, r0
	mov r2, r8
	strh r2, [r1, #0xc]
	movs r4, #3
	strb r4, [r1, #0x1a]
	strh r5, [r1, #0x16]
	subs r0, #0xb
	strb r0, [r1, #0x1b]
	movs r6, #0x10
	strb r6, [r1, #0x1c]
	movs r0, #2
	strb r0, [r1, #0x1f]
	movs r2, #0xbd
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	ldr r0, _080286B8 @ =0x00042400
	str r0, [r1, #8]
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r2, r7, r0
	ldr r0, [r2]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	adds r1, r7, #0
	adds r1, #0x7c
	strh r3, [r1, #0x14]
	mov r0, r8
	strh r0, [r1, #0xc]
	strb r4, [r1, #0x1a]
	strh r5, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	strb r6, [r1, #0x1c]
	strb r4, [r1, #0x1f]
	movs r4, #0xbf
	lsls r4, r4, #2
	adds r0, r7, r4
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	adds r3, r7, r3
	ldr r0, [r3]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	movs r0, #0x84
	lsls r0, r0, #0xb
	str r0, [r1, #8]
	ldr r0, [r2]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	movs r0, #0x9a
	lsls r0, r0, #2
	bl m4aSongNumStart
	ldr r1, _080286BC @ =0x0000035A
	adds r0, r7, r1
	strh r5, [r0]
	ldr r0, _080286C0 @ =sub_0802A2AC
	str r0, [r7]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080286B8: .4byte 0x00042400
_080286BC: .4byte 0x0000035A
_080286C0: .4byte sub_0802A2AC

	thumb_func_start sub_080286C4
sub_080286C4: @ 0x080286C4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r3, #0
	ldr r0, _08028754 @ =sub_08028758
	mov sb, r0
	movs r0, #0xff
	mov r8, r0
	mov ip, r3
	movs r0, #0xb9
	lsls r0, r0, #2
	adds r7, r4, r0
	adds r0, #4
	adds r6, r4, r0
	adds r0, #0x6c
	adds r5, r4, r0
_080286E8:
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, #4
	adds r1, r4, r1
	ldrb r2, [r1, #0x1b]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1, #0x14]
	movs r0, #0x49
	strh r0, [r1, #0xc]
	movs r0, #1
	strb r0, [r1, #0x1a]
	mov r0, ip
	strh r0, [r1, #0x16]
	mov r0, r8
	orrs r0, r2
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r3, [r1, #0x1f]
	lsls r2, r3, #3
	adds r0, r7, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	adds r2, r6, r2
	ldr r0, [r2]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	movs r0, #0x84
	lsls r0, r0, #0xb
	str r0, [r1, #8]
	lsls r0, r3, #1
	adds r0, r0, r3
	movs r1, #6
	lsls r1, r0
	ldr r0, [r5]
	bics r0, r1
	str r0, [r5]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _080286E8
	mov r0, sb
	str r0, [r4]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028754: .4byte sub_08028758

	thumb_func_start sub_08028758
sub_08028758: @ 0x08028758
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r2, r4, r0
	ldr r0, [r2]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080287F6
	movs r3, #0
	ldr r0, _08028804 @ =sub_08028808
	mov sl, r0
	movs r0, #0xff
	mov sb, r0
	movs r0, #0
	mov r8, r0
	movs r0, #0
	mov ip, r0
	movs r0, #0xb9
	lsls r0, r0, #2
	adds r7, r4, r0
	adds r5, r2, #0
	adds r0, #4
	adds r6, r4, r0
_08028792:
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, #4
	adds r1, r4, r1
	ldrb r2, [r1, #0x1b]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1, #0x14]
	movs r0, #0x49
	strh r0, [r1, #0xc]
	mov r0, r8
	strb r0, [r1, #0x1a]
	mov r0, ip
	strh r0, [r1, #0x16]
	mov r0, sb
	orrs r0, r2
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r3, [r1, #0x1f]
	lsls r2, r3, #3
	adds r0, r7, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	adds r2, r6, r2
	ldr r0, [r2]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	movs r0, #0x84
	lsls r0, r0, #0xb
	str r0, [r1, #8]
	lsls r2, r3, #1
	adds r2, r2, r3
	movs r0, #2
	lsls r0, r2
	ldr r1, [r5]
	bics r1, r0
	movs r0, #4
	lsls r0, r2
	orrs r1, r0
	str r1, [r5]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _08028792
	mov r0, sl
	str r0, [r4]
_080287F6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028804: .4byte sub_08028808

	thumb_func_start sub_08028808
sub_08028808: @ 0x08028808
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0xc5
	lsls r0, r0, #2
	adds r2, r6, r0
	movs r0, #0xc8
	lsls r0, r0, #8
	str r0, [r2]
	movs r1, #0xc6
	lsls r1, r1, #2
	adds r3, r6, r1
	ldr r0, _080288BC @ =0xFFFFEC00
	str r0, [r3]
	movs r0, #0xc7
	lsls r0, r0, #2
	adds r1, r6, r0
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r1]
	movs r0, #0xc8
	lsls r0, r0, #2
	adds r1, r6, r0
	movs r4, #0
	movs r5, #0
	movs r0, #0xf0
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r0, _080288C0 @ =0x00000322
	adds r1, r6, r0
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r1]
	movs r1, #0xc9
	lsls r1, r1, #2
	adds r0, r6, r1
	strh r5, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r6, r1
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	subs r1, #0x22
	strh r1, [r0, #0xc]
	strb r4, [r0, #0x1a]
	strh r5, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	movs r1, #0xe
	strb r1, [r0, #0x1f]
	ldr r1, [r2]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r3]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #8]
	bl sub_08155128
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r2, r6, r0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080288C4 @ =0x00000245
	bl m4aSongNumStart
	ldr r1, _080288C8 @ =0x00000362
	adds r0, r6, r1
	strb r4, [r0]
	adds r1, #1
	adds r0, r6, r1
	strb r4, [r0]
	subs r1, #9
	adds r0, r6, r1
	strh r5, [r0]
	ldr r0, _080288CC @ =sub_080288D0
	str r0, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080288BC: .4byte 0xFFFFEC00
_080288C0: .4byte 0x00000322
_080288C4: .4byte 0x00000245
_080288C8: .4byte 0x00000362
_080288CC: .4byte sub_080288D0

	thumb_func_start sub_080288D0
sub_080288D0: @ 0x080288D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x60
	adds r5, r0, #0
	ldr r1, _08028978 @ =gUnk_082EB384
	mov r0, sp
	movs r2, #0x60
	bl memcpy
	movs r0, #0xc8
	lsls r0, r0, #2
	adds r2, r5, r0
	ldr r1, _0802897C @ =0x00000362
	adds r3, r5, r1
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sp
	ldr r1, [r0]
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r0, _08028980 @ =0x00000322
	adds r4, r5, r0
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	add r0, sp, #4
	adds r0, r0, r1
	ldr r1, [r0]
	ldrh r0, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	movs r1, #0xc5
	lsls r1, r1, #2
	adds r3, r5, r1
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	movs r1, #0xc6
	lsls r1, r1, #2
	adds r2, r5, r1
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, [r3]
	asrs r0, r0, #8
	movs r4, #0xaa
	lsls r4, r4, #1
	adds r1, r5, r4
	strh r0, [r1]
	ldr r0, [r2]
	asrs r0, r0, #8
	movs r2, #0xab
	lsls r2, r2, #1
	adds r1, r5, r2
	strh r0, [r1]
	movs r4, #0
	add r0, sp, #8
	mov ip, r0
	movs r1, #0xb9
	lsls r1, r1, #2
	adds r6, r5, r1
	movs r7, #0x80
	lsls r7, r7, #3
_0802895C:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #4
	adds r2, r5, r0
	lsls r0, r4, #3
	adds r0, r6, r0
	ldr r1, [r3]
	ldr r0, [r0]
	cmp r1, r0
	bge _08028984
	ldr r0, [r2, #8]
	orrs r0, r7
	b _0802898A
	.align 2, 0
_08028978: .4byte gUnk_082EB384
_0802897C: .4byte 0x00000362
_08028980: .4byte 0x00000322
_08028984:
	ldr r0, [r2, #8]
	ldr r1, _08028A08 @ =0xFFFFFBFF
	ands r0, r1
_0802898A:
	str r0, [r2, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _0802895C
	ldr r2, _08028A0C @ =0x00000363
	adds r4, r5, r2
	ldrb r1, [r4]
	adds r1, #1
	movs r6, #0
	strb r1, [r4]
	movs r7, #0xff
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _08028A10 @ =0x00000362
	adds r3, r5, r0
	ldrb r2, [r3]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	cmp r1, r0
	blt _08028A00
	strb r6, [r4]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ands r0, r7
	cmp r0, #8
	blo _08028A00
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r0, r5, r1
	strh r6, [r0]
	ldr r2, _08028A14 @ =0x00000322
	adds r0, r5, r2
	strh r6, [r0]
	movs r3, #0xc5
	lsls r3, r3, #2
	adds r2, r5, r3
	movs r4, #0xb9
	lsls r4, r4, #2
	adds r0, r5, r4
	subs r3, #0x28
	adds r1, r5, r3
	ldr r0, [r0]
	ldr r1, [r1]
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r2]
	adds r4, #0x34
	adds r1, r5, r4
	movs r0, #0xd8
	lsls r0, r0, #7
	str r0, [r1]
	ldr r0, _08028A18 @ =sub_08029E14
	str r0, [r5]
_08028A00:
	add sp, #0x60
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028A08: .4byte 0xFFFFFBFF
_08028A0C: .4byte 0x00000363
_08028A10: .4byte 0x00000362
_08028A14: .4byte 0x00000322
_08028A18: .4byte sub_08029E14

	thumb_func_start sub_08028A1C
sub_08028A1C: @ 0x08028A1C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r3, #0
	ldr r0, _08028AA4 @ =sub_08028AA8
	mov sb, r0
	movs r0, #0xff
	mov r8, r0
	mov ip, r3
	movs r0, #0xb9
	lsls r0, r0, #2
	adds r7, r4, r0
	adds r0, #4
	adds r6, r4, r0
	adds r0, #0x6c
	adds r5, r4, r0
_08028A40:
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, #4
	adds r1, r4, r1
	ldrb r2, [r1, #0x1b]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1, #0x14]
	movs r0, #0x49
	strh r0, [r1, #0xc]
	movs r0, #2
	strb r0, [r1, #0x1a]
	mov r0, ip
	strh r0, [r1, #0x16]
	mov r0, r8
	orrs r0, r2
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r3, [r1, #0x1f]
	lsls r2, r3, #3
	adds r0, r7, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	adds r2, r6, r2
	ldr r0, [r2]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	lsls r0, r3, #1
	adds r0, r0, r3
	movs r1, #6
	lsls r1, r0
	ldr r0, [r5]
	bics r0, r1
	str r0, [r5]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _08028A40
	mov r0, sb
	str r0, [r4]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028AA4: .4byte sub_08028AA8

	thumb_func_start sub_08028AA8
sub_08028AA8: @ 0x08028AA8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r2, r4, r0
	ldr r0, [r2]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08028B46
	movs r3, #0
	ldr r7, _08028B58 @ =sub_08029E2C
	mov sl, r7
	movs r0, #0xff
	mov sb, r0
	movs r7, #0
	mov r8, r7
	movs r6, #0
	movs r0, #0xb9
	lsls r0, r0, #2
	adds r0, r0, r4
	mov ip, r0
	adds r5, r2, #0
	movs r7, #0xba
	lsls r7, r7, #2
	adds r7, r4, r7
	str r7, [sp]
_08028AE8:
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, #4
	adds r1, r4, r1
	ldrb r2, [r1, #0x1b]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1, #0x14]
	strh r6, [r1, #0xc]
	mov r0, r8
	strb r0, [r1, #0x1a]
	strh r6, [r1, #0x16]
	mov r0, sb
	orrs r0, r2
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r3, [r1, #0x1f]
	lsls r2, r3, #3
	mov r7, ip
	adds r0, r7, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	ldr r0, [sp]
	adds r2, r0, r2
	ldr r0, [r2]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	lsls r2, r3, #1
	adds r2, r2, r3
	movs r0, #2
	lsls r0, r2
	ldr r1, [r5]
	bics r1, r0
	movs r0, #4
	lsls r0, r2
	orrs r1, r0
	str r1, [r5]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _08028AE8
	mov r7, sl
	str r7, [r4]
_08028B46:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028B58: .4byte sub_08029E2C

	thumb_func_start sub_08028B5C
sub_08028B5C: @ 0x08028B5C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	movs r3, #0
	mov sl, r3
	movs r7, #0x84
	lsls r7, r7, #0xb
	movs r5, #0xfc
	lsls r5, r5, #8
	ldr r0, _08028BE4 @ =0x00042400
	mov r8, r0
	movs r1, #0x10
	mov ip, r1
	movs r2, #0xb9
	lsls r2, r2, #2
	adds r2, r2, r4
	mov sb, r2
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r6, r4, r6
	str r6, [sp]
_08028B8E:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, #4
	adds r2, r4, r0
	ldrb r1, [r2, #0x1b]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r2, #0x14]
	movs r0, #4
	strh r0, [r2, #0xc]
	movs r0, #0
	strb r0, [r2, #0x1a]
	mov r6, sl
	strh r6, [r2, #0x16]
	movs r0, #0xff
	orrs r0, r1
	strb r0, [r2, #0x1b]
	mov r0, ip
	strb r0, [r2, #0x1c]
	strb r3, [r2, #0x1f]
	lsls r1, r3, #3
	mov r6, sb
	adds r0, r6, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r2, #0x10]
	movs r6, #0xba
	lsls r6, r6, #2
	adds r0, r4, r6
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	str r7, [r2, #8]
	cmp r3, #1
	beq _08028C08
	cmp r3, #1
	bgt _08028BE8
	cmp r3, #0
	beq _08028BF2
	b _08028C52
	.align 2, 0
_08028BE4: .4byte 0x00042400
_08028BE8:
	cmp r3, #2
	beq _08028C24
	cmp r3, #3
	beq _08028C40
	b _08028C52
_08028BF2:
	str r7, [r2, #8]
	movs r1, #0xc1
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r1, #0x40
	strh r1, [r0]
	ldr r2, _08028C04 @ =0x00000306
	adds r0, r4, r2
	b _08028C50
	.align 2, 0
_08028C04: .4byte 0x00000306
_08028C08:
	mov r6, r8
	str r6, [r2, #8]
	movs r1, #0xc2
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, _08028C1C @ =0x0000FFC0
	strh r1, [r0]
	ldr r2, _08028C20 @ =0x0000030A
	adds r0, r4, r2
	b _08028C50
	.align 2, 0
_08028C1C: .4byte 0x0000FFC0
_08028C20: .4byte 0x0000030A
_08028C24:
	mov r6, r8
	str r6, [r2, #8]
	movs r1, #0xc3
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, _08028C38 @ =0x0000FF80
	strh r1, [r0]
	ldr r2, _08028C3C @ =0x0000030E
	adds r0, r4, r2
	b _08028C50
	.align 2, 0
_08028C38: .4byte 0x0000FF80
_08028C3C: .4byte 0x0000030E
_08028C40:
	str r7, [r2, #8]
	movs r6, #0xc4
	lsls r6, r6, #2
	adds r0, r4, r6
	movs r1, #0x80
	strh r1, [r0]
	ldr r1, _08028C88 @ =0x00000312
	adds r0, r4, r1
_08028C50:
	strh r5, [r0]
_08028C52:
	lsls r0, r3, #1
	adds r0, r0, r3
	mov r1, ip
	lsls r1, r0
	ldr r2, [sp]
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _08028B8E
	ldr r0, _08028C8C @ =0x00000269
	bl m4aSongNumStart
	ldr r0, _08028C90 @ =sub_08028C94
	str r0, [r4]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028C88: .4byte 0x00000312
_08028C8C: .4byte 0x00000269
_08028C90: .4byte sub_08028C94

	thumb_func_start sub_08028C94
sub_08028C94: @ 0x08028C94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	movs r0, #0
	mov ip, r0
	movs r7, #0
	ldr r1, _08028D38 @ =0x00000306
	adds r1, r6, r1
	str r1, [sp]
	movs r0, #0xb9
	lsls r0, r0, #2
	adds r0, r0, r6
	mov sl, r0
	movs r1, #0xc1
	lsls r1, r1, #2
	adds r1, r1, r6
	mov sb, r1
	movs r0, #0xba
	lsls r0, r0, #2
	adds r0, r0, r6
	mov r8, r0
_08028CC6:
	lsls r5, r7, #2
	ldr r1, [sp]
	adds r4, r1, r5
	ldrh r0, [r4]
	adds r0, #0x26
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08028CE0
	movs r0, #0
	strh r0, [r4]
	movs r1, #1
	mov ip, r1
_08028CE0:
	lsls r2, r7, #3
	mov r0, sl
	adds r3, r0, r2
	mov r1, sb
	adds r1, r1, r5
	movs r0, #0
	ldrsh r1, [r1, r0]
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	add r2, r8
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	adds r1, r5, r7
	lsls r1, r1, #3
	adds r1, r6, r1
	ldr r0, [r3]
	asrs r0, r0, #8
	strh r0, [r1, #0x14]
	ldr r0, [r2]
	asrs r0, r0, #8
	strh r0, [r1, #0x16]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #3
	bls _08028CC6
	mov r1, ip
	cmp r1, #0
	beq _08028D26
	ldr r0, _08028D3C @ =sub_08028D40
	str r0, [r6]
_08028D26:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028D38: .4byte 0x00000306
_08028D3C: .4byte sub_08028D40

	thumb_func_start sub_08028D40
sub_08028D40: @ 0x08028D40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	movs r5, #0
	mov sl, r5
	movs r0, #0x10
	mov sb, r0
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r6, r7, r1
_08028D5C:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #4
	adds r0, r7, r0
	lsls r2, r5, #3
	movs r3, #0xb9
	lsls r3, r3, #2
	adds r4, r7, r3
	adds r4, r4, r2
	adds r3, #0x30
	adds r1, r7, r3
	ldr r1, [r1]
	str r1, [r4]
	movs r1, #0xba
	lsls r1, r1, #2
	adds r3, r7, r1
	adds r3, r3, r2
	movs r2, #0xc6
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r1, [r1]
	str r1, [r3]
	ldrb r2, [r0, #0x1b]
	movs r1, #0xc0
	lsls r1, r1, #2
	mov r8, r1
	mov r1, r8
	strh r1, [r0, #0x14]
	movs r1, #0x2d
	strh r1, [r0, #0xc]
	strb r5, [r0, #0x1a]
	mov r1, sl
	strh r1, [r0, #0x16]
	movs r1, #0xff
	orrs r1, r2
	strb r1, [r0, #0x1b]
	mov r2, sb
	strb r2, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	ldr r1, [r4]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r3]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x84
	lsls r1, r1, #0xb
	str r1, [r0, #8]
	bl sub_08155128
	lsls r0, r5, #1
	adds r0, r0, r5
	mov r1, sb
	lsls r1, r0
	ldr r0, [r6]
	bics r0, r1
	str r0, [r6]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	bls _08028D5C
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r0, r7, r3
	movs r2, #0
	movs r4, #0
	mov r1, r8
	strh r1, [r0, #0x14]
	ldr r1, _08028E6C @ =0x000002DE
	strh r1, [r0, #0xc]
	strb r2, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	movs r1, #0xe
	strb r1, [r0, #0x1f]
	movs r2, #0xc5
	lsls r2, r2, #2
	adds r6, r7, r2
	ldr r1, [r6]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	movs r3, #0xc6
	lsls r3, r3, #2
	adds r5, r7, r3
	ldr r1, [r5]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #8]
	bl sub_08155128
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r2, r7, r0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r2]
	movs r0, #0x7e
	bl m4aSongNumStart
	ldr r1, _08028E70 @ =0x00000292
	movs r2, #0xb6
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r3, [r0]
	ldr r0, [r6]
	str r0, [sp]
	ldr r0, [r5]
	str r0, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	adds r0, r7, #0
	movs r2, #0
	bl sub_08029B14
	ldr r0, _08028E74 @ =sub_08029E44
	str r0, [r7]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028E6C: .4byte 0x000002DE
_08028E70: .4byte 0x00000292
_08028E74: .4byte sub_08029E44

	thumb_func_start sub_08028E78
sub_08028E78: @ 0x08028E78
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	movs r0, #0xc6
	lsls r0, r0, #2
	adds r6, r5, r0
	ldr r0, [r6]
	adds r0, #0x28
	str r0, [r6]
	ldr r1, _08028F04 @ =0x000073FF
	cmp r0, r1
	ble _08028E9C
	ldr r0, _08028F08 @ =0x00000246
	bl m4aSongNumStart
	ldr r0, _08028F0C @ =sub_08028F10
	str r0, [r5]
_08028E9C:
	movs r1, #0xc5
	lsls r1, r1, #2
	adds r2, r5, r1
	ldr r0, [r2]
	asrs r0, r0, #8
	movs r3, #0xaa
	lsls r3, r3, #1
	adds r1, r5, r3
	strh r0, [r1]
	ldr r0, [r6]
	asrs r0, r0, #8
	adds r3, #2
	adds r1, r5, r3
	strh r0, [r1]
	movs r4, #0
	movs r0, #0xb9
	lsls r0, r0, #2
	adds r0, r0, r5
	mov r8, r0
	mov ip, r2
	movs r1, #0xba
	lsls r1, r1, #2
	adds r7, r5, r1
_08028ECA:
	lsls r2, r4, #3
	mov r0, r8
	adds r3, r0, r2
	mov r1, ip
	ldr r0, [r1]
	str r0, [r3]
	adds r2, r7, r2
	ldr r0, [r6]
	str r0, [r2]
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #3
	adds r1, r5, r1
	ldr r0, [r3]
	asrs r0, r0, #8
	strh r0, [r1, #0x14]
	ldr r0, [r2]
	asrs r0, r0, #8
	strh r0, [r1, #0x16]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _08028ECA
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028F04: .4byte 0x000073FF
_08028F08: .4byte 0x00000246
_08028F0C: .4byte sub_08028F10

	thumb_func_start sub_08028F10
sub_08028F10: @ 0x08028F10
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r0, #0xc5
	lsls r0, r0, #2
	adds r2, r4, r0
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r5, r4, r1
	movs r3, #0
	ldrsh r1, [r5, r3]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	movs r6, #0xc6
	lsls r6, r6, #2
	adds r3, r4, r6
	ldr r1, _08028F54 @ =0x00000322
	adds r0, r4, r1
	movs r6, #0
	ldrsh r1, [r0, r6]
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, [r2]
	ldr r0, _08028F58 @ =0x000095FF
	cmp r1, r0
	bgt _08028F5C
	ldrh r0, [r5]
	adds r0, #0xc
	strh r0, [r5]
	b _08028F6E
	.align 2, 0
_08028F54: .4byte 0x00000322
_08028F58: .4byte 0x000095FF
_08028F5C:
	ldr r1, _08028FEC @ =0x00000362
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	ldr r2, _08028FF0 @ =0x00000363
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, _08028FF4 @ =sub_08028FFC
	str r0, [r4]
_08028F6E:
	ldr r3, _08028FF8 @ =0x00000322
	adds r1, r4, r3
	ldrh r0, [r1]
	subs r0, #3
	strh r0, [r1]
	movs r5, #0xc5
	lsls r5, r5, #2
	adds r2, r4, r5
	ldr r0, [r2]
	asrs r0, r0, #8
	movs r6, #0xaa
	lsls r6, r6, #1
	adds r1, r4, r6
	strh r0, [r1]
	movs r0, #0xc6
	lsls r0, r0, #2
	adds r1, r4, r0
	ldr r0, [r1]
	asrs r0, r0, #8
	movs r5, #0xab
	lsls r5, r5, #1
	adds r3, r4, r5
	strh r0, [r3]
	movs r5, #0
	movs r6, #0xb9
	lsls r6, r6, #2
	adds r6, r6, r4
	mov r8, r6
	mov ip, r2
	movs r0, #0xba
	lsls r0, r0, #2
	adds r7, r4, r0
	adds r6, r1, #0
_08028FB0:
	lsls r2, r5, #3
	mov r1, r8
	adds r3, r1, r2
	mov r1, ip
	ldr r0, [r1]
	str r0, [r3]
	adds r2, r7, r2
	ldr r0, [r6]
	str r0, [r2]
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #3
	adds r1, r4, r1
	ldr r0, [r3]
	asrs r0, r0, #8
	strh r0, [r1, #0x14]
	ldr r0, [r2]
	asrs r0, r0, #8
	strh r0, [r1, #0x16]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	bls _08028FB0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028FEC: .4byte 0x00000362
_08028FF0: .4byte 0x00000363
_08028FF4: .4byte sub_08028FFC
_08028FF8: .4byte 0x00000322

	thumb_func_start sub_08028FFC
sub_08028FFC: @ 0x08028FFC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x60
	adds r5, r0, #0
	ldr r1, _0802912C @ =gUnk_082EB3E4
	mov r0, sp
	movs r2, #0x60
	bl memcpy
	movs r0, #0xc8
	lsls r0, r0, #2
	adds r7, r5, r0
	ldr r1, _08029130 @ =0x00000362
	adds r4, r5, r1
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sp
	ldr r1, [r0]
	ldrh r0, [r7]
	adds r0, r0, r1
	movs r2, #0
	mov r8, r2
	strh r0, [r7]
	ldr r3, _08029134 @ =0x00000322
	adds r6, r5, r3
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	add r0, sp, #4
	adds r0, r0, r1
	ldr r1, [r0]
	ldrh r0, [r6]
	adds r0, r0, r1
	strh r0, [r6]
	movs r0, #0xc5
	lsls r0, r0, #2
	adds r3, r5, r0
	movs r2, #0
	ldrsh r1, [r7, r2]
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	movs r0, #0xc6
	lsls r0, r0, #2
	adds r2, r5, r0
	movs r0, #0
	ldrsh r1, [r6, r0]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, [r3]
	asrs r0, r0, #8
	movs r3, #0xaa
	lsls r3, r3, #1
	adds r1, r5, r3
	strh r0, [r1]
	ldr r0, [r2]
	asrs r0, r0, #8
	movs r2, #0xab
	lsls r2, r2, #1
	adds r1, r5, r2
	strh r0, [r1]
	ldr r0, _08029138 @ =0x00000363
	adds r3, r5, r0
	ldrb r2, [r3]
	adds r2, #1
	strb r2, [r3]
	movs r1, #0xff
	mov ip, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	add r0, sp, #8
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r2, r0
	blt _080290C0
	movs r0, #0
	strb r0, [r3]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	mov r2, ip
	ands r0, r2
	cmp r0, #8
	blo _080290C0
	mov r3, r8
	strh r3, [r7]
	strh r3, [r6]
	ldr r0, _0802913C @ =sub_08029E5C
	str r0, [r5]
_080290C0:
	movs r4, #0
	movs r0, #0xb9
	lsls r0, r0, #2
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0xc5
	lsls r1, r1, #2
	adds r1, r1, r5
	mov ip, r1
	movs r2, #0xba
	lsls r2, r2, #2
	adds r7, r5, r2
	movs r3, #0xc6
	lsls r3, r3, #2
	adds r6, r5, r3
_080290DE:
	lsls r2, r4, #3
	mov r0, r8
	adds r3, r0, r2
	mov r1, ip
	ldr r0, [r1]
	str r0, [r3]
	adds r2, r7, r2
	ldr r0, [r6]
	str r0, [r2]
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #3
	adds r1, r5, r1
	ldr r0, [r3]
	asrs r0, r0, #8
	strh r0, [r1, #0x14]
	ldr r0, [r2]
	asrs r0, r0, #8
	strh r0, [r1, #0x16]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _080290DE
	movs r2, #0xc6
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r1, [r0]
	ldr r0, _08029140 @ =0xFFFFE000
	cmp r1, r0
	bge _08029120
	ldr r0, _0802913C @ =sub_08029E5C
	str r0, [r5]
_08029120:
	add sp, #0x60
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802912C: .4byte gUnk_082EB3E4
_08029130: .4byte 0x00000362
_08029134: .4byte 0x00000322
_08029138: .4byte 0x00000363
_0802913C: .4byte sub_08029E5C
_08029140: .4byte 0xFFFFE000

	thumb_func_start sub_08029144
sub_08029144: @ 0x08029144
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	ldr r2, _080291A0 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _080291A4 @ =gUnk_082EB2B4
	ldr r2, [r0]
	ldr r1, [r2]
	lsrs r0, r1, #8
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsrs r4, r1, #0x10
	ldr r1, [r2, #4]
	ldr r0, _080291A8 @ =0x0000035E
	add r0, sl
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r5, r0, #2
	ldr r7, _080291AC @ =gUnk_03002440
	ldr r3, [r7]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _080291B0
	adds r1, r6, #0
	adds r1, #0x60
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08158334
	b _080291CC
	.align 2, 0
_080291A0: .4byte gDispCnt
_080291A4: .4byte gUnk_082EB2B4
_080291A8: .4byte 0x0000035E
_080291AC: .4byte gUnk_03002440
_080291B0:
	ldr r2, _08029450 @ =0x040000D4
	str r5, [r2]
	lsls r0, r6, #1
	ldr r1, _08029454 @ =gUnk_03003860
	adds r0, r0, r1
	str r0, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r4, r0
	str r4, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #1
	orrs r3, r0
	str r3, [r7]
_080291CC:
	ldr r0, _08029458 @ =gBgPalette
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuSet
	ldr r1, _0802945C @ =gUnk_08D64A24
	ldr r0, _08029460 @ =gUnk_089331AC
	ldr r2, _08029464 @ =0x00008E4E
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r8, r0
	ldr r1, _08029468 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	ldr r1, _0802946C @ =gBgCntRegs
	ldr r0, _08029470 @ =0x00001E07
	strh r0, [r1, #4]
	mov r3, r8
	ldr r0, [r3, #8]
	ldr r1, _08029474 @ =0x06004000
	bl LZ77UnCompVram
	mov r0, r8
	ldr r4, [r0, #0x18]
	ldr r6, _08029478 @ =0x0600F000
	movs r5, #0
	mov r7, sl
	adds r7, #0xf4
	movs r1, #0xa4
	add r1, sl
	mov sb, r1
	mov r2, sl
	adds r2, #0xcc
	str r2, [sp]
_0802921C:
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0x1e
	bl CpuSet
	mov r3, r8
	ldrh r0, [r3]
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r6, #0x40
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x13
	bls _0802921C
	movs r0, #0xa2
	lsls r0, r0, #1
	add r0, sl
	movs r3, #0xc5
	lsls r3, r3, #2
	add r3, sl
	movs r1, #0xf0
	lsls r1, r1, #7
	mov r8, r1
	str r1, [r3]
	movs r4, #0xc6
	lsls r4, r4, #2
	add r4, sl
	movs r1, #0xbe
	lsls r1, r1, #8
	str r1, [r4]
	movs r1, #0xc7
	lsls r1, r1, #2
	add r1, sl
	movs r2, #0x80
	lsls r2, r2, #9
	str r2, [r1]
	movs r2, #0xc8
	lsls r2, r2, #2
	add r2, sl
	movs r1, #0xfd
	lsls r1, r1, #8
	strh r1, [r2]
	ldr r1, _0802947C @ =0x00000322
	add r1, sl
	ldr r2, _08029480 @ =0xFFFFFE60
	strh r2, [r1]
	movs r1, #0xc9
	lsls r1, r1, #2
	add r1, sl
	adds r2, #0x20
	strh r2, [r1]
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	adds r1, #0x9f
	strh r1, [r0, #0xc]
	movs r2, #0
	strb r2, [r0, #0x1a]
	movs r1, #0
	strh r1, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	movs r2, #0x10
	strb r2, [r0, #0x1c]
	movs r1, #0xe
	strb r1, [r0, #0x1f]
	ldr r1, [r3]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r4]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	ldr r1, _08029484 @ =0x00002023
	str r1, [r0, #8]
	bl sub_08155128
	movs r5, #0xd5
	lsls r5, r5, #2
	add r5, sl
	ldr r0, [r5]
	movs r1, #0xc0
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r5]
	movs r3, #0xc0
	lsls r3, r3, #2
	strh r3, [r7, #0x14]
	ldr r6, _08029488 @ =0x0000039E
	strh r6, [r7, #0xc]
	movs r0, #2
	strb r0, [r7, #0x1a]
	movs r0, #0
	strh r0, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r1, #0x10
	strb r1, [r7, #0x1c]
	movs r4, #5
	strb r4, [r7, #0x1f]
	movs r2, #0
	strh r2, [r7, #0x10]
	strh r2, [r7, #0x12]
	movs r0, #0x82
	lsls r0, r0, #0xc
	str r0, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	movs r1, #0xcf
	lsls r1, r1, #2
	add r1, sl
	mov r3, r8
	str r3, [r1]
	movs r2, #0xd0
	lsls r2, r2, #2
	add r2, sl
	movs r0, #0xc8
	lsls r0, r0, #8
	str r0, [r2]
	movs r0, #0xd1
	lsls r0, r0, #2
	add r0, sl
	movs r3, #0x80
	lsls r3, r3, #9
	str r3, [r0]
	movs r0, #0xd2
	lsls r0, r0, #2
	add r0, sl
	movs r3, #0xc0
	lsls r3, r3, #2
	strh r3, [r0]
	ldr r0, _0802948C @ =0x0000034A
	add r0, sl
	ldr r3, _08029480 @ =0xFFFFFE60
	strh r3, [r0]
	movs r0, #0xd3
	lsls r0, r0, #2
	add r0, sl
	adds r3, #0x20
	strh r3, [r0]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r7, #0x14]
	strh r6, [r7, #0xc]
	movs r3, #0
	strb r3, [r7, #0x1a]
	movs r0, #0
	strh r0, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r3, #0x10
	strb r3, [r7, #0x1c]
	strb r4, [r7, #0x1f]
	ldr r0, [r1]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r2]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	ldr r0, _08029490 @ =0x00042022
	str r0, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	ldr r0, [r5]
	ldr r1, _08029494 @ =0xFFFEFFFF
	ands r0, r1
	movs r1, #0xd0
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r5]
	subs r6, #0x76
	add r6, sl
	mov r0, r8
	str r0, [r6]
	movs r1, #0xcb
	lsls r1, r1, #2
	add r1, sl
	mov r8, r1
	movs r2, #0xa0
	lsls r2, r2, #7
	str r2, [r1]
	movs r1, #0xcc
	lsls r1, r1, #2
	add r1, sl
	movs r0, #0xc0
	lsls r0, r0, #7
	str r0, [r1]
	movs r1, #0xce
	lsls r1, r1, #2
	add r1, sl
	ldr r0, _08029498 @ =0x0000FFE0
	strh r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #2
	mov r3, sb
	strh r0, [r3, #0x14]
	ldr r1, _0802949C @ =0x0000039D
	strh r1, [r3, #0xc]
	strb r4, [r3, #0x1a]
	movs r2, #0
	strh r2, [r3, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	movs r4, #4
	strb r4, [r3, #0x1f]
	ldr r0, [r6]
	asrs r0, r0, #8
	strh r0, [r3, #0x10]
	mov r1, r8
	ldr r0, [r1]
	asrs r0, r0, #8
	strh r0, [r3, #0x12]
	ldr r7, _080294A0 @ =0x00002020
	str r7, [r3, #8]
	mov r0, sb
	bl sub_08155128
	movs r3, #0xc0
	lsls r3, r3, #2
	ldr r2, [sp]
	strh r3, [r2, #0x14]
	ldr r0, _0802949C @ =0x0000039D
	strh r0, [r2, #0xc]
	strb r4, [r2, #0x1a]
	movs r1, #0
	strh r1, [r2, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2, #0x1b]
	movs r3, #0x10
	strb r3, [r2, #0x1c]
	strb r4, [r2, #0x1f]
	ldr r0, [r6]
	asrs r0, r0, #8
	strh r0, [r2, #0x10]
	mov r1, r8
	ldr r0, [r1]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	str r7, [r2, #8]
	ldr r0, [sp]
	bl sub_08155128
	ldr r0, [r5]
	ldr r1, _080294A4 @ =0xFFFFDFFF
	ands r0, r1
	movs r2, #0xa0
	lsls r2, r2, #7
	orrs r0, r2
	str r0, [r5]
	movs r0, #0x91
	lsls r0, r0, #2
	bl m4aSongNumStart
	ldr r0, _080294A8 @ =0x0000035A
	add r0, sl
	movs r3, #0
	strh r3, [r0]
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r0, r1
	str r0, [r5]
	ldr r0, _080294AC @ =sub_080294B0
	mov r1, sl
	str r0, [r1]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029450: .4byte 0x040000D4
_08029454: .4byte gUnk_03003860
_08029458: .4byte gBgPalette
_0802945C: .4byte gUnk_08D64A24
_08029460: .4byte gUnk_089331AC
_08029464: .4byte 0x00008E4E
_08029468: .4byte gBgScrollRegs
_0802946C: .4byte gBgCntRegs
_08029470: .4byte 0x00001E07
_08029474: .4byte 0x06004000
_08029478: .4byte 0x0600F000
_0802947C: .4byte 0x00000322
_08029480: .4byte 0xFFFFFE60
_08029484: .4byte 0x00002023
_08029488: .4byte 0x0000039E
_0802948C: .4byte 0x0000034A
_08029490: .4byte 0x00042022
_08029494: .4byte 0xFFFEFFFF
_08029498: .4byte 0x0000FFE0
_0802949C: .4byte 0x0000039D
_080294A0: .4byte 0x00002020
_080294A4: .4byte 0xFFFFDFFF
_080294A8: .4byte 0x0000035A
_080294AC: .4byte sub_080294B0

	thumb_func_start sub_080294B0
sub_080294B0: @ 0x080294B0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0xcc
	lsls r0, r0, #2
	adds r2, r5, r0
	movs r1, #0xce
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	cmp r0, #0
	bge _080294D2
	movs r0, #0
	str r0, [r2]
_080294D2:
	ldr r1, _08029604 @ =0x0000035A
	adds r0, r5, r1
	ldrh r0, [r0]
	cmp r0, #0x78
	bls _0802955A
	movs r3, #0xc5
	lsls r3, r3, #2
	adds r2, r5, r3
	movs r0, #0xc8
	lsls r0, r0, #2
	adds r4, r5, r0
	movs r3, #0
	ldrsh r1, [r4, r3]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	movs r0, #0xc6
	lsls r0, r0, #2
	adds r2, r5, r0
	ldr r1, _08029608 @ =0x00000322
	adds r3, r5, r1
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0xc7
	lsls r1, r1, #2
	adds r6, r5, r1
	movs r0, #0xc9
	lsls r0, r0, #2
	adds r2, r5, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	ldrh r0, [r4]
	adds r0, #9
	movs r7, #0
	strh r0, [r4]
	ldrh r0, [r3]
	adds r0, #6
	strh r0, [r3]
	ldrh r0, [r2]
	adds r0, #4
	strh r0, [r2]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0802953A
	strh r7, [r4]
_0802953A:
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	ble _08029544
	strh r7, [r3]
_08029544:
	movs r3, #0
	ldrsh r0, [r2, r3]
	movs r1, #0x80
	rsbs r1, r1, #0
	cmp r0, r1
	ble _08029552
	strh r1, [r2]
_08029552:
	ldr r0, [r6]
	cmp r0, #0
	bge _0802955A
	str r7, [r6]
_0802955A:
	movs r0, #0xcf
	lsls r0, r0, #2
	adds r2, r5, r0
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r4, r5, r1
	movs r3, #0
	ldrsh r1, [r4, r3]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	movs r0, #0xd0
	lsls r0, r0, #2
	adds r2, r5, r0
	ldr r1, _0802960C @ =0x0000034A
	adds r3, r5, r1
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0xd1
	lsls r1, r1, #2
	adds r6, r5, r1
	movs r0, #0xd3
	lsls r0, r0, #2
	adds r2, r5, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	ldrh r0, [r4]
	subs r0, #9
	movs r7, #0
	strh r0, [r4]
	ldrh r0, [r3]
	adds r0, #5
	strh r0, [r3]
	ldrh r0, [r2]
	adds r0, #4
	strh r0, [r2]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080295B8
	strh r7, [r4]
_080295B8:
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	ble _080295C2
	strh r7, [r3]
_080295C2:
	movs r3, #0
	ldrsh r0, [r2, r3]
	movs r1, #0x80
	rsbs r1, r1, #0
	cmp r0, r1
	ble _080295D0
	strh r1, [r2]
_080295D0:
	ldr r0, [r6]
	cmp r0, #0
	bge _080295D8
	str r7, [r6]
_080295D8:
	ldr r0, _08029604 @ =0x0000035A
	adds r4, r5, r0
	ldrh r0, [r4]
	cmp r0, #0x64
	bne _080295E8
	ldr r0, _08029610 @ =0x0000026A
	bl m4aSongNumStart
_080295E8:
	ldrh r0, [r4]
	adds r1, r0, #1
	strh r1, [r4]
	lsls r0, r0, #0x10
	movs r1, #0x96
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _080295FC
	ldr r0, _08029614 @ =sub_08029E74
	str r0, [r5]
_080295FC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029604: .4byte 0x0000035A
_08029608: .4byte 0x00000322
_0802960C: .4byte 0x0000034A
_08029610: .4byte 0x0000026A
_08029614: .4byte sub_08029E74

	thumb_func_start sub_08029618
sub_08029618: @ 0x08029618
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r1, _080296A8 @ =gDispCnt
	movs r0, #0x40
	strh r0, [r1]
	ldr r1, _080296AC @ =gBldRegs
	movs r7, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	mov r0, sp
	ldr r1, _080296B0 @ =0x00007FFF
	adds r4, r1, #0
	strh r4, [r0]
	ldr r1, _080296B4 @ =gBgPalette
	ldr r5, _080296B8 @ =0x01000100
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _080296BC @ =gObjPalette
	adds r2, r5, #0
	bl CpuSet
	ldr r2, _080296C0 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	movs r0, #0x85
	lsls r0, r0, #2
	adds r6, r6, r0
	ldr r1, _080296C4 @ =gUnk_030036D0
	ldr r2, _080296C8 @ =0x04000030
	adds r0, r6, #0
	bl CpuSet
	ldr r1, _080296CC @ =gUnk_03000008
	movs r0, #1
	strh r0, [r1]
	ldr r1, _080296D0 @ =0x0000FFFF
	movs r0, #0
	bl sub_08152FB0
	ldr r1, _080296D4 @ =gUnk_03003A04
	ldr r0, _080296D8 @ =gUnk_03003790
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080296DC @ =gUnk_030068B0
	strb r7, [r0]
	ldr r1, _080296E0 @ =gUnk_03006078
	ldr r0, _080296E4 @ =gUnk_030039A4
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080296E8 @ =gUnk_03000554
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0802969C
	strb r7, [r1]
_0802969C:
	bl CreateTitleScreen
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080296A8: .4byte gDispCnt
_080296AC: .4byte gBldRegs
_080296B0: .4byte 0x00007FFF
_080296B4: .4byte gBgPalette
_080296B8: .4byte 0x01000100
_080296BC: .4byte gObjPalette
_080296C0: .4byte gUnk_03002440
_080296C4: .4byte gUnk_030036D0
_080296C8: .4byte 0x04000030
_080296CC: .4byte gUnk_03000008
_080296D0: .4byte 0x0000FFFF
_080296D4: .4byte gUnk_03003A04
_080296D8: .4byte gUnk_03003790
_080296DC: .4byte gUnk_030068B0
_080296E0: .4byte gUnk_03006078
_080296E4: .4byte gUnk_030039A4
_080296E8: .4byte gUnk_03000554

	thumb_func_start sub_080296EC
sub_080296EC: @ 0x080296EC
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, [r6, #0x44]
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r5, [r0]
	movs r7, #0x80
	lsls r7, r7, #0x16
	ands r5, r7
	cmp r5, #0
	bne _080297C8
	ldr r2, _080297D0 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080297D4 @ =gBldRegs
	movs r3, #0
	ldr r0, _080297D8 @ =0x00000641
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1, #2]
	adds r4, r6, #4
	adds r0, r6, #0
	adds r0, #0x52
	ldrh r0, [r0]
	ldr r1, [r6, #0x48]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r2, [r0]
	ldr r0, _080297DC @ =gBgScrollRegs
	strh r5, [r0]
	strh r5, [r0, #2]
	ldr r1, _080297E0 @ =gBgCntRegs
	ldr r0, _080297E4 @ =0x00001D0D
	strh r0, [r1]
	ldr r0, _080297E8 @ =0x0600C000
	str r0, [r4, #4]
	strh r5, [r4, #0xa]
	ldr r0, _080297EC @ =0x0600E800
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
	adds r0, r6, #0
	adds r0, #0x2e
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	movs r0, #8
	strh r0, [r4, #0x2e]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	ldr r0, _080297F0 @ =0x00007FFF
	strh r0, [r4, #0x34]
	strh r0, [r4, #0x36]
	ldr r0, _080297F4 @ =gUnk_082D7850
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r0, [r0, #8]
	ldr r1, [r4, #4]
	bl LZ77UnCompVram
	str r5, [sp]
	ldr r1, [r4, #4]
	movs r0, #0xff
	lsls r0, r0, #5
	adds r1, r1, r0
	ldr r2, _080297F8 @ =0x05000008
	mov r0, sp
	bl CpuSet
	add r0, sp, #4
	movs r1, #0xff
	strh r1, [r0]
	ldr r1, [r4, #0xc]
	ldr r2, _080297FC @ =0x01000400
	bl CpuSet
	adds r0, r4, #0
	bl sub_08153060
	adds r0, r6, #0
	adds r0, #0x50
	strh r5, [r0]
	ldr r1, [r6, #0x44]
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r1, r1, r3
	ldr r0, [r1]
	orrs r0, r7
	str r0, [r1]
	ldr r0, _08029800 @ =sub_08029804
	str r0, [r6]
_080297C8:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080297D0: .4byte gDispCnt
_080297D4: .4byte gBldRegs
_080297D8: .4byte 0x00000641
_080297DC: .4byte gBgScrollRegs
_080297E0: .4byte gBgCntRegs
_080297E4: .4byte 0x00001D0D
_080297E8: .4byte 0x0600C000
_080297EC: .4byte 0x0600E800
_080297F0: .4byte 0x00007FFF
_080297F4: .4byte gUnk_082D7850
_080297F8: .4byte 0x05000008
_080297FC: .4byte 0x01000400
_08029800: .4byte sub_08029804

	thumb_func_start sub_08029804
sub_08029804: @ 0x08029804
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r2, r0, #1
	strh r2, [r1]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08029848
	ldr r1, _0802983C @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #2]
	ldr r1, [r3, #0x44]
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _08029840 @ =0xDFFFFFFF
	ands r0, r2
	str r0, [r1]
	ldr r0, _08029844 @ =sub_0802A3D0
	str r0, [r3]
	b _08029854
	.align 2, 0
_0802983C: .4byte gBldRegs
_08029840: .4byte 0xDFFFFFFF
_08029844: .4byte sub_0802A3D0
_08029848:
	ldr r1, _08029858 @ =gBldRegs
	movs r0, #0x10
	subs r0, r0, r2
	lsls r0, r0, #8
	orrs r2, r0
	strh r2, [r1, #2]
_08029854:
	pop {r0}
	bx r0
	.align 2, 0
_08029858: .4byte gBldRegs

	thumb_func_start sub_0802985C
sub_0802985C: @ 0x0802985C
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r2, r0, #1
	strh r2, [r1]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _080298B4
	ldr r2, _080298A0 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _080298A4 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _080298A8 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1, #2]
	ldr r1, [r3, #0x44]
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _080298AC @ =0xDFFFFFFF
	ands r0, r2
	str r0, [r1]
	ldr r0, _080298B0 @ =sub_0802A468
	str r0, [r3]
	b _080298C0
	.align 2, 0
_080298A0: .4byte gDispCnt
_080298A4: .4byte 0x0000FEFF
_080298A8: .4byte gBldRegs
_080298AC: .4byte 0xDFFFFFFF
_080298B0: .4byte sub_0802A468
_080298B4:
	ldr r0, _080298C4 @ =gBldRegs
	movs r1, #0x10
	subs r1, r1, r2
	lsls r2, r2, #8
	orrs r1, r2
	strh r1, [r0, #2]
_080298C0:
	pop {r0}
	bx r0
	.align 2, 0
_080298C4: .4byte gBldRegs

	thumb_func_start sub_080298C8
sub_080298C8: @ 0x080298C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	ldr r2, [r4, #4]
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r3, r2, r0
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r3]
	ldr r1, _0802999C @ =gBldRegs
	movs r3, #0
	movs r5, #0
	movs r0, #0xae
	strh r0, [r1]
	strh r5, [r1, #4]
	adds r1, r2, #0
	adds r1, #0xa4
	adds r2, #0xcc
	movs r7, #0xc0
	lsls r7, r7, #2
	strh r7, [r1, #0x14]
	ldr r0, _080299A0 @ =0x0000039D
	mov sl, r0
	mov r0, sl
	strh r0, [r1, #0xc]
	strb r3, [r1, #0x1a]
	strh r5, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	movs r3, #0x10
	mov ip, r3
	mov r0, ip
	strb r0, [r1, #0x1c]
	movs r3, #4
	mov sb, r3
	mov r0, sb
	strb r0, [r1, #0x1f]
	ldr r0, [r4, #4]
	movs r3, #0xca
	lsls r3, r3, #2
	mov r8, r3
	add r0, r8
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	ldr r0, [r4, #4]
	movs r6, #0xcb
	lsls r6, r6, #2
	adds r0, r0, r6
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	ldr r3, _080299A4 @ =0x00002020
	str r3, [r1, #8]
	strh r7, [r2, #0x14]
	mov r0, sl
	strh r0, [r2, #0xc]
	movs r0, #1
	strb r0, [r2, #0x1a]
	strh r5, [r2, #0x16]
	subs r0, #2
	strb r0, [r2, #0x1b]
	mov r0, ip
	strb r0, [r2, #0x1c]
	mov r0, sb
	strb r0, [r2, #0x1f]
	ldr r0, [r4, #4]
	add r0, r8
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r2, #0x10]
	ldr r0, [r4, #4]
	adds r0, r0, r6
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	str r3, [r2, #8]
	ldr r1, [r4, #4]
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r1, r1, r3
	ldr r0, [r1]
	ldr r2, _080299A8 @ =0xFFFF9FFF
	ands r0, r2
	str r0, [r1]
	ldr r0, _080299AC @ =0x0000023E
	bl m4aSongNumStart
	strh r5, [r4, #0xa]
	ldr r0, _080299B0 @ =sub_0802A4F0
	str r0, [r4]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802999C: .4byte gBldRegs
_080299A0: .4byte 0x0000039D
_080299A4: .4byte 0x00002020
_080299A8: .4byte 0xFFFF9FFF
_080299AC: .4byte 0x0000023E
_080299B0: .4byte sub_0802A4F0

	thumb_func_start sub_080299B4
sub_080299B4: @ 0x080299B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	str r3, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x34]
	ldr r4, [sp, #0x38]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	ldr r0, _08029A0C @ =sub_08029A88
	ldr r2, _08029A10 @ =0x00000101
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
	beq _08029A14
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08029A1C
	.align 2, 0
_08029A0C: .4byte sub_08029A88
_08029A10: .4byte 0x00000101
_08029A14:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08029A1C:
	mov r0, r8
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
	movs r0, #0xd0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	mov r0, sl
	strh r0, [r4, #0xc]
	mov r0, sb
	strb r0, [r4, #0x1a]
	strh r1, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r0, #0xf
	strb r0, [r4, #0x1f]
	ldr r1, [sp, #0x28]
	asrs r0, r1, #8
	strh r0, [r4, #0x10]
	ldr r1, [sp, #0x2c]
	asrs r0, r1, #8
	strh r0, [r4, #0x12]
	movs r0, #0x82
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r4, #8]
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

	thumb_func_start sub_08029A88
sub_08029A88: @ 0x08029A88
	push {r4, lr}
	ldr r2, _08029AA4 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08029AA8
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08029AB0
	.align 2, 0
_08029AA4: .4byte gCurTask
_08029AA8:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08029AB0:
	adds r4, r0, #0
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
	beq _08029AD6
	subs r0, #1
	strh r0, [r4, #0x38]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08029AEA
_08029AD6:
	ldr r0, [r4, #0x28]
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	beq _08029AF2
_08029AEA:
	ldr r0, [r2]
	bl TaskDestroy
	b _08029B0E
_08029AF2:
	ldr r0, [r4, #0x2c]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_08155128
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	adds r0, r4, #0
	bl sub_0815604C
_08029B0E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08029B14
sub_08029B14: @ 0x08029B14
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
	ldr r0, _08029B6C @ =sub_08029BE4
	ldr r2, _08029B70 @ =0x00000101
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
	beq _08029B74
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08029B7C
	.align 2, 0
_08029B6C: .4byte sub_08029BE4
_08029B70: .4byte 0x00000101
_08029B74:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08029B7C:
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
	movs r0, #0x40
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
	movs r0, #0xf
	strb r0, [r4, #0x1f]
	ldr r1, [sp, #0x28]
	asrs r0, r1, #8
	strh r0, [r4, #0x10]
	ldr r1, [sp, #0x2c]
	asrs r0, r1, #8
	strh r0, [r4, #0x12]
	movs r0, #0x82
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r4, #8]
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

	thumb_func_start sub_08029BE4
sub_08029BE4: @ 0x08029BE4
	push {r4, r5, lr}
	ldr r0, _08029C00 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08029C04
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08029C0C
	.align 2, 0
_08029C00: .4byte gCurTask
_08029C04:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08029C0C:
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r0, [r4, #0x2c]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08029C4C
	ldrh r0, [r4, #0x38]
	cmp r0, #0
	beq _08029C48
	subs r0, #1
	strh r0, [r4, #0x38]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08029C48
	ldr r0, _08029C40 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08029C44 @ =sub_08029EE0
	str r0, [r1, #8]
	b _08029C4C
	.align 2, 0
_08029C40: .4byte gCurTask
_08029C44: .4byte sub_08029EE0
_08029C48:
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_08029C4C:
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
	bhi _08029C84
	movs r0, #0x12
	ldrsh r1, [r5, r0]
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r1, r0
	blt _08029C84
	cmp r1, #0xe0
	ble _08029C8C
_08029C84:
	ldr r0, _08029CB0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08029CB4 @ =sub_08029EE0
	str r0, [r1, #8]
_08029C8C:
	ldr r0, [r4, #0x28]
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	beq _08029CA8
	ldr r0, _08029CB0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08029CB4 @ =sub_08029EE0
	str r0, [r1, #8]
_08029CA8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08029CB0: .4byte gCurTask
_08029CB4: .4byte sub_08029EE0

	thumb_func_start sub_08029CB8
sub_08029CB8: @ 0x08029CB8
	ldr r1, _08029CC8 @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08029CCC @ =sub_08029EF4
	str r1, [r0]
	bx lr
	.align 2, 0
_08029CC8: .4byte 0x0000035A
_08029CCC: .4byte sub_08029EF4

	thumb_func_start sub_08029CD0
sub_08029CD0: @ 0x08029CD0
	ldr r1, _08029CE0 @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08029CE4 @ =sub_08029F1C
	str r1, [r0]
	bx lr
	.align 2, 0
_08029CE0: .4byte 0x0000035A
_08029CE4: .4byte sub_08029F1C

	thumb_func_start sub_08029CE8
sub_08029CE8: @ 0x08029CE8
	ldr r1, _08029CF8 @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08029CFC @ =sub_0802A008
	str r1, [r0]
	bx lr
	.align 2, 0
_08029CF8: .4byte 0x0000035A
_08029CFC: .4byte sub_0802A008

	thumb_func_start sub_08029D00
sub_08029D00: @ 0x08029D00
	ldr r1, _08029D10 @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08029D14 @ =sub_0802A030
	str r1, [r0]
	bx lr
	.align 2, 0
_08029D10: .4byte 0x0000035A
_08029D14: .4byte sub_0802A030

	thumb_func_start sub_08029D18
sub_08029D18: @ 0x08029D18
	push {lr}
	ldr r1, _08029D30 @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08029D34 @ =sub_0802A058
	str r1, [r0]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08029D30: .4byte 0x0000035A
_08029D34: .4byte sub_0802A058

	thumb_func_start sub_08029D38
sub_08029D38: @ 0x08029D38
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _08029D8C @ =gBldRegs
	movs r5, #0
	movs r0, #0xfe
	strh r0, [r1]
	strh r5, [r1, #4]
	ldr r0, _08029D90 @ =gUnk_030016A0
	movs r1, #3
	bl m4aMPlayFadeOut
	ldr r0, _08029D94 @ =gUnk_030016E0
	movs r1, #3
	bl m4aMPlayFadeOut
	ldr r0, _08029D98 @ =gUnk_03001720
	movs r1, #3
	bl m4aMPlayFadeOut
	ldr r0, _08029D9C @ =gUnk_03001770
	movs r1, #3
	bl m4aMPlayFadeOut
	ldr r1, _08029DA0 @ =0x0000035A
	adds r0, r4, r1
	strh r5, [r0]
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r2, r4, r0
	ldr r0, [r2]
	ldr r1, _08029DA4 @ =0xFFFF7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r2]
	ldr r0, _08029DA8 @ =sub_080273B0
	str r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08029D8C: .4byte gBldRegs
_08029D90: .4byte gUnk_030016A0
_08029D94: .4byte gUnk_030016E0
_08029D98: .4byte gUnk_03001720
_08029D9C: .4byte gUnk_03001770
_08029DA0: .4byte 0x0000035A
_08029DA4: .4byte 0xFFFF7FFF
_08029DA8: .4byte sub_080273B0

	thumb_func_start sub_08029DAC
sub_08029DAC: @ 0x08029DAC
	push {lr}
	ldr r1, _08029DC4 @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08029DC8 @ =sub_0802A0A8
	str r1, [r0]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08029DC4: .4byte 0x0000035A
_08029DC8: .4byte sub_0802A0A8

	thumb_func_start sub_08029DCC
sub_08029DCC: @ 0x08029DCC
	ldr r1, _08029DDC @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08029DE0 @ =sub_0802A0E8
	str r1, [r0]
	bx lr
	.align 2, 0
_08029DDC: .4byte 0x0000035A
_08029DE0: .4byte sub_0802A0E8

	thumb_func_start sub_08029DE4
sub_08029DE4: @ 0x08029DE4
	ldr r1, _08029DF4 @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08029DF8 @ =sub_0802A18C
	str r1, [r0]
	bx lr
	.align 2, 0
_08029DF4: .4byte 0x0000035A
_08029DF8: .4byte sub_0802A18C

	thumb_func_start sub_08029DFC
sub_08029DFC: @ 0x08029DFC
	ldr r1, _08029E0C @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08029E10 @ =sub_0802A234
	str r1, [r0]
	bx lr
	.align 2, 0
_08029E0C: .4byte 0x0000035A
_08029E10: .4byte sub_0802A234

	thumb_func_start sub_08029E14
sub_08029E14: @ 0x08029E14
	ldr r1, _08029E24 @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08029E28 @ =sub_0802A2D4
	str r1, [r0]
	bx lr
	.align 2, 0
_08029E24: .4byte 0x0000035A
_08029E28: .4byte sub_0802A2D4

	thumb_func_start sub_08029E2C
sub_08029E2C: @ 0x08029E2C
	ldr r1, _08029E3C @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08029E40 @ =sub_0802A2FC
	str r1, [r0]
	bx lr
	.align 2, 0
_08029E3C: .4byte 0x0000035A
_08029E40: .4byte sub_0802A2FC

	thumb_func_start sub_08029E44
sub_08029E44: @ 0x08029E44
	ldr r1, _08029E54 @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08029E58 @ =sub_0802A324
	str r1, [r0]
	bx lr
	.align 2, 0
_08029E54: .4byte 0x0000035A
_08029E58: .4byte sub_0802A324

	thumb_func_start sub_08029E5C
sub_08029E5C: @ 0x08029E5C
	ldr r1, _08029E6C @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08029E70 @ =sub_0802A34C
	str r1, [r0]
	bx lr
	.align 2, 0
_08029E6C: .4byte 0x0000035A
_08029E70: .4byte sub_0802A34C

	thumb_func_start sub_08029E74
sub_08029E74: @ 0x08029E74
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _08029EC4 @ =gBldRegs
	movs r5, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r5, [r1, #4]
	ldr r0, _08029EC8 @ =gUnk_030016A0
	movs r1, #3
	bl m4aMPlayFadeOut
	ldr r0, _08029ECC @ =gUnk_030016E0
	movs r1, #3
	bl m4aMPlayFadeOut
	ldr r0, _08029ED0 @ =gUnk_03001720
	movs r1, #3
	bl m4aMPlayFadeOut
	ldr r0, _08029ED4 @ =gUnk_03001770
	movs r1, #3
	bl m4aMPlayFadeOut
	ldr r1, _08029ED8 @ =0x0000035A
	adds r0, r4, r1
	strh r5, [r0]
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r2, r4, r0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r2]
	ldr r0, _08029EDC @ =sub_0802A394
	str r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08029EC4: .4byte gBldRegs
_08029EC8: .4byte gUnk_030016A0
_08029ECC: .4byte gUnk_030016E0
_08029ED0: .4byte gUnk_03001720
_08029ED4: .4byte gUnk_03001770
_08029ED8: .4byte 0x0000035A
_08029EDC: .4byte sub_0802A394

	thumb_func_start sub_08029EE0
sub_08029EE0: @ 0x08029EE0
	push {lr}
	ldr r0, _08029EF0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_08029EF0: .4byte gCurTask

	thumb_func_start sub_08029EF4
sub_08029EF4: @ 0x08029EF4
	push {lr}
	adds r3, r0, #0
	ldr r1, _08029F14 @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x1e
	bls _08029F0E
	ldr r0, _08029F18 @ =sub_0802A610
	str r0, [r3]
_08029F0E:
	pop {r0}
	bx r0
	.align 2, 0
_08029F14: .4byte 0x0000035A
_08029F18: .4byte sub_0802A610

	thumb_func_start sub_08029F1C
sub_08029F1C: @ 0x08029F1C
	push {lr}
	adds r3, r0, #0
	ldr r1, _08029F3C @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x3c
	bls _08029F36
	ldr r0, _08029F40 @ =sub_0802A634
	str r0, [r3]
_08029F36:
	pop {r0}
	bx r0
	.align 2, 0
_08029F3C: .4byte 0x0000035A
_08029F40: .4byte sub_0802A634

	thumb_func_start sub_08029F44
sub_08029F44: @ 0x08029F44
	push {lr}
	adds r3, r0, #0
	ldr r0, _08029F74 @ =0x0000035A
	adds r1, r3, r0
	ldrh r0, [r1]
	adds r2, r0, #1
	strh r2, [r1]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _08029F84
	ldr r1, _08029F78 @ =gBldRegs
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r2, r3, r0
	ldr r0, [r2]
	ldr r1, _08029F7C @ =0xDFFFFFFF
	ands r0, r1
	str r0, [r2]
	ldr r0, _08029F80 @ =sub_08026CC0
	str r0, [r3]
	b _08029F8A
	.align 2, 0
_08029F74: .4byte 0x0000035A
_08029F78: .4byte gBldRegs
_08029F7C: .4byte 0xDFFFFFFF
_08029F80: .4byte sub_08026CC0
_08029F84:
	ldr r1, _08029F90 @ =gBldRegs
	lsls r0, r2, #2
	strh r0, [r1, #4]
_08029F8A:
	pop {r0}
	bx r0
	.align 2, 0
_08029F90: .4byte gBldRegs

	thumb_func_start sub_08029F94
sub_08029F94: @ 0x08029F94
	ldr r1, _08029FA4 @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08029FA8 @ =sub_08029FAC
	str r1, [r0]
	bx lr
	.align 2, 0
_08029FA4: .4byte 0x0000035A
_08029FA8: .4byte sub_08029FAC

	thumb_func_start sub_08029FAC
sub_08029FAC: @ 0x08029FAC
	push {lr}
	adds r3, r0, #0
	ldr r1, _08029FCC @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #8
	bls _08029FC6
	ldr r0, _08029FD0 @ =sub_08029FD4
	str r0, [r3]
_08029FC6:
	pop {r0}
	bx r0
	.align 2, 0
_08029FCC: .4byte 0x0000035A
_08029FD0: .4byte sub_08029FD4

	thumb_func_start sub_08029FD4
sub_08029FD4: @ 0x08029FD4
	ldr r2, _08029FFC @ =gBldRegs
	movs r3, #0
	movs r1, #0xaf
	strh r1, [r2]
	movs r1, #0x10
	strh r1, [r2, #4]
	ldr r2, _0802A000 @ =0x0000035A
	adds r1, r0, r2
	strh r3, [r1]
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r3, r0, r1
	ldr r1, [r3]
	movs r2, #0x80
	lsls r2, r2, #0x16
	orrs r1, r2
	str r1, [r3]
	ldr r1, _0802A004 @ =sub_08026DC0
	str r1, [r0]
	bx lr
	.align 2, 0
_08029FFC: .4byte gBldRegs
_0802A000: .4byte 0x0000035A
_0802A004: .4byte sub_08026DC0

	thumb_func_start sub_0802A008
sub_0802A008: @ 0x0802A008
	push {lr}
	adds r3, r0, #0
	ldr r1, _0802A028 @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #1
	bls _0802A022
	ldr r0, _0802A02C @ =sub_0802A660
	str r0, [r3]
_0802A022:
	pop {r0}
	bx r0
	.align 2, 0
_0802A028: .4byte 0x0000035A
_0802A02C: .4byte sub_0802A660

	thumb_func_start sub_0802A030
sub_0802A030: @ 0x0802A030
	push {lr}
	adds r3, r0, #0
	ldr r1, _0802A050 @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x1e
	bls _0802A04A
	ldr r0, _0802A054 @ =sub_0802A69C
	str r0, [r3]
_0802A04A:
	pop {r0}
	bx r0
	.align 2, 0
_0802A050: .4byte 0x0000035A
_0802A054: .4byte sub_0802A69C

	thumb_func_start sub_0802A058
sub_0802A058: @ 0x0802A058
	push {lr}
	adds r3, r0, #0
	movs r1, #0xd0
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	movs r2, #0x83
	lsls r2, r2, #1
	adds r1, r3, r2
	strh r0, [r1]
	adds r2, #0x28
	adds r1, r3, r2
	strh r0, [r1]
	ldr r0, _0802A0A0 @ =0x0000035A
	adds r2, r3, r0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bls _0802A09C
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ands r0, r1
	cmp r0, #0
	beq _0802A09C
	ldr r0, _0802A0A4 @ =sub_0802A6D4
	str r0, [r3]
_0802A09C:
	pop {r0}
	bx r0
	.align 2, 0
_0802A0A0: .4byte 0x0000035A
_0802A0A4: .4byte sub_0802A6D4

	thumb_func_start sub_0802A0A8
sub_0802A0A8: @ 0x0802A0A8
	push {lr}
	adds r3, r0, #0
	movs r1, #0xd0
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	movs r2, #0x83
	lsls r2, r2, #1
	adds r1, r3, r2
	strh r0, [r1]
	adds r2, #0x28
	adds r1, r3, r2
	strh r0, [r1]
	ldr r0, _0802A0E0 @ =0x0000035A
	adds r2, r3, r0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bls _0802A0DA
	ldr r0, _0802A0E4 @ =sub_0802A6E8
	str r0, [r3]
_0802A0DA:
	pop {r0}
	bx r0
	.align 2, 0
_0802A0E0: .4byte 0x0000035A
_0802A0E4: .4byte sub_0802A6E8

	thumb_func_start sub_0802A0E8
sub_0802A0E8: @ 0x0802A0E8
	push {lr}
	adds r3, r0, #0
	ldr r1, _0802A108 @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x1e
	bls _0802A102
	ldr r0, _0802A10C @ =sub_08027590
	str r0, [r3]
_0802A102:
	pop {r0}
	bx r0
	.align 2, 0
_0802A108: .4byte 0x0000035A
_0802A10C: .4byte sub_08027590

	thumb_func_start sub_0802A110
sub_0802A110: @ 0x0802A110
	push {lr}
	adds r3, r0, #0
	ldr r1, _0802A130 @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #5
	bls _0802A12A
	ldr r0, _0802A134 @ =sub_080279F4
	str r0, [r3]
_0802A12A:
	pop {r0}
	bx r0
	.align 2, 0
_0802A130: .4byte 0x0000035A
_0802A134: .4byte sub_080279F4

	thumb_func_start sub_0802A138
sub_0802A138: @ 0x0802A138
	push {lr}
	adds r3, r0, #0
	ldr r1, _0802A158 @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #4
	bls _0802A152
	ldr r0, _0802A15C @ =sub_08027AC0
	str r0, [r3]
_0802A152:
	pop {r0}
	bx r0
	.align 2, 0
_0802A158: .4byte 0x0000035A
_0802A15C: .4byte sub_08027AC0

	thumb_func_start sub_0802A160
sub_0802A160: @ 0x0802A160
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r2, r4, r0
	ldr r0, [r2]
	ldr r1, _0802A184 @ =0xFFEEFFFD
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	bl sub_08158870
	ldr r0, _0802A188 @ =sub_08027C80
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802A184: .4byte 0xFFEEFFFD
_0802A188: .4byte sub_08027C80

	thumb_func_start sub_0802A18C
sub_0802A18C: @ 0x0802A18C
	push {lr}
	adds r3, r0, #0
	ldr r1, _0802A1AC @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xa
	bls _0802A1A6
	ldr r0, _0802A1B0 @ =sub_0802801C
	str r0, [r3]
_0802A1A6:
	pop {r0}
	bx r0
	.align 2, 0
_0802A1AC: .4byte 0x0000035A
_0802A1B0: .4byte sub_0802801C

	thumb_func_start sub_0802A1B4
sub_0802A1B4: @ 0x0802A1B4
	push {lr}
	adds r2, r0, #0
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x88
	lsls r1, r1, #0xd
	ands r0, r1
	cmp r0, r1
	bne _0802A1CE
	ldr r0, _0802A1D4 @ =sub_080280DC
	str r0, [r2]
_0802A1CE:
	pop {r0}
	bx r0
	.align 2, 0
_0802A1D4: .4byte sub_080280DC

	thumb_func_start sub_0802A1D8
sub_0802A1D8: @ 0x0802A1D8
	push {r4, lr}
	adds r3, r0, #0
	movs r0, #0xd0
	lsls r0, r0, #2
	adds r4, r3, r0
	ldr r0, [r4]
	ldr r1, _0802A220 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4]
	ldr r1, _0802A224 @ =0xFFFFE000
	cmp r0, r1
	bge _0802A206
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r2, r3, r0
	ldr r0, [r2]
	ldr r1, _0802A228 @ =0xFFFC7FFF
	ands r0, r1
	ldr r1, _0802A22C @ =0xFFC7FFFF
	ands r0, r1
	str r0, [r2]
	ldr r0, _0802A230 @ =sub_0802A714
	str r0, [r3]
_0802A206:
	ldr r0, [r4]
	asrs r0, r0, #8
	movs r2, #0x83
	lsls r2, r2, #1
	adds r1, r3, r2
	strh r0, [r1]
	adds r2, #0x28
	adds r1, r3, r2
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802A220: .4byte 0xFFFFF800
_0802A224: .4byte 0xFFFFE000
_0802A228: .4byte 0xFFFC7FFF
_0802A22C: .4byte 0xFFC7FFFF
_0802A230: .4byte sub_0802A714

	thumb_func_start sub_0802A234
sub_0802A234: @ 0x0802A234
	push {lr}
	adds r3, r0, #0
	ldr r1, _0802A254 @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x1e
	bls _0802A24E
	ldr r0, _0802A258 @ =sub_080283F8
	str r0, [r3]
_0802A24E:
	pop {r0}
	bx r0
	.align 2, 0
_0802A254: .4byte 0x0000035A
_0802A258: .4byte sub_080283F8

	thumb_func_start sub_0802A25C
sub_0802A25C: @ 0x0802A25C
	push {lr}
	adds r3, r0, #0
	ldr r1, _0802A27C @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x1e
	bls _0802A276
	ldr r0, _0802A280 @ =sub_08028528
	str r0, [r3]
_0802A276:
	pop {r0}
	bx r0
	.align 2, 0
_0802A27C: .4byte 0x0000035A
_0802A280: .4byte sub_08028528

	thumb_func_start sub_0802A284
sub_0802A284: @ 0x0802A284
	push {lr}
	adds r3, r0, #0
	ldr r1, _0802A2A4 @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #5
	bls _0802A29E
	ldr r0, _0802A2A8 @ =sub_08028608
	str r0, [r3]
_0802A29E:
	pop {r0}
	bx r0
	.align 2, 0
_0802A2A4: .4byte 0x0000035A
_0802A2A8: .4byte sub_08028608

	thumb_func_start sub_0802A2AC
sub_0802A2AC: @ 0x0802A2AC
	push {lr}
	adds r3, r0, #0
	ldr r1, _0802A2CC @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x3c
	bls _0802A2C6
	ldr r0, _0802A2D0 @ =sub_080286C4
	str r0, [r3]
_0802A2C6:
	pop {r0}
	bx r0
	.align 2, 0
_0802A2CC: .4byte 0x0000035A
_0802A2D0: .4byte sub_080286C4

	thumb_func_start sub_0802A2D4
sub_0802A2D4: @ 0x0802A2D4
	push {lr}
	adds r3, r0, #0
	ldr r1, _0802A2F4 @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x14
	bls _0802A2EE
	ldr r0, _0802A2F8 @ =sub_08028A1C
	str r0, [r3]
_0802A2EE:
	pop {r0}
	bx r0
	.align 2, 0
_0802A2F4: .4byte 0x0000035A
_0802A2F8: .4byte sub_08028A1C

	thumb_func_start sub_0802A2FC
sub_0802A2FC: @ 0x0802A2FC
	push {lr}
	adds r3, r0, #0
	ldr r1, _0802A31C @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x3c
	bls _0802A316
	ldr r0, _0802A320 @ =sub_08028B5C
	str r0, [r3]
_0802A316:
	pop {r0}
	bx r0
	.align 2, 0
_0802A31C: .4byte 0x0000035A
_0802A320: .4byte sub_08028B5C

	thumb_func_start sub_0802A324
sub_0802A324: @ 0x0802A324
	push {lr}
	adds r3, r0, #0
	ldr r1, _0802A344 @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x1e
	bls _0802A33E
	ldr r0, _0802A348 @ =sub_0802A72C
	str r0, [r3]
_0802A33E:
	pop {r0}
	bx r0
	.align 2, 0
_0802A344: .4byte 0x0000035A
_0802A348: .4byte sub_0802A72C

	thumb_func_start sub_0802A34C
sub_0802A34C: @ 0x0802A34C
	push {lr}
	adds r3, r0, #0
	ldr r1, _0802A384 @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x1e
	bls _0802A380
	ldr r2, _0802A388 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0802A38C @ =0x0000F9FF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r2, r3, r0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	str r0, [r2]
	ldr r0, _0802A390 @ =sub_08029144
	str r0, [r3]
_0802A380:
	pop {r0}
	bx r0
	.align 2, 0
_0802A384: .4byte 0x0000035A
_0802A388: .4byte gDispCnt
_0802A38C: .4byte 0x0000F9FF
_0802A390: .4byte sub_08029144

	thumb_func_start sub_0802A394
sub_0802A394: @ 0x0802A394
	push {lr}
	adds r3, r0, #0
	ldr r0, _0802A3B8 @ =0x0000035A
	adds r1, r3, r0
	ldrh r0, [r1]
	adds r2, r0, #1
	strh r2, [r1]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _0802A3C4
	ldr r0, _0802A3BC @ =gBldRegs
	movs r1, #0x10
	strh r1, [r0, #4]
	ldr r0, _0802A3C0 @ =sub_0802A74C
	str r0, [r3]
	b _0802A3C8
	.align 2, 0
_0802A3B8: .4byte 0x0000035A
_0802A3BC: .4byte gBldRegs
_0802A3C0: .4byte sub_0802A74C
_0802A3C4:
	ldr r0, _0802A3CC @ =gBldRegs
	strh r2, [r0, #4]
_0802A3C8:
	pop {r0}
	bx r0
	.align 2, 0
_0802A3CC: .4byte gBldRegs

	thumb_func_start sub_0802A3D0
sub_0802A3D0: @ 0x0802A3D0
	adds r2, r0, #0
	adds r2, #0x50
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0802A3E0 @ =sub_0802A3E4
	str r1, [r0]
	bx lr
	.align 2, 0
_0802A3E0: .4byte sub_0802A3E4

	thumb_func_start sub_0802A3E4
sub_0802A3E4: @ 0x0802A3E4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x52
	ldrh r2, [r0]
	ldr r0, [r4, #0x48]
	lsls r2, r2, #2
	adds r2, r2, r0
	adds r3, r4, #0
	adds r3, #0x50
	ldrh r0, [r3]
	adds r1, r0, #1
	strh r1, [r3]
	ldrh r1, [r2, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bhs _0802A424
	ldr r0, [r4, #0x44]
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x16
	ands r0, r1
	cmp r0, #0
	bne _0802A424
	ldr r1, _0802A42C @ =sub_0802A430
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
_0802A424:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802A42C: .4byte sub_0802A430

	thumb_func_start sub_0802A430
sub_0802A430: @ 0x0802A430
	ldr r2, _0802A45C @ =gBldRegs
	movs r3, #0
	ldr r1, _0802A460 @ =0x00000641
	strh r1, [r2]
	movs r1, #0x10
	strh r1, [r2, #2]
	adds r1, r0, #0
	adds r1, #0x50
	strh r3, [r1]
	ldr r2, [r0, #0x44]
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r2, r2, r1
	ldr r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #0x16
	orrs r1, r3
	str r1, [r2]
	ldr r1, _0802A464 @ =sub_0802985C
	str r1, [r0]
	bx lr
	.align 2, 0
_0802A45C: .4byte gBldRegs
_0802A460: .4byte 0x00000641
_0802A464: .4byte sub_0802985C

	thumb_func_start sub_0802A468
sub_0802A468: @ 0x0802A468
	adds r2, r0, #0
	adds r2, #0x50
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0802A478 @ =sub_0802A47C
	str r1, [r0]
	bx lr
	.align 2, 0
_0802A478: .4byte sub_0802A47C

	thumb_func_start sub_0802A47C
sub_0802A47C: @ 0x0802A47C
	push {lr}
	adds r3, r0, #0
	adds r0, #0x50
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x1e
	bls _0802A494
	ldr r0, _0802A498 @ =sub_0802A49C
	str r0, [r3]
_0802A494:
	pop {r0}
	bx r0
	.align 2, 0
_0802A498: .4byte sub_0802A49C

	thumb_func_start sub_0802A49C
sub_0802A49C: @ 0x0802A49C
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	subs r1, #6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1]
	cmp r0, r1
	bhs _0802A4C0
	ldr r0, _0802A4BC @ =sub_080296EC
	b _0802A4C2
	.align 2, 0
_0802A4BC: .4byte sub_080296EC
_0802A4C0:
	ldr r0, _0802A4C8 @ =sub_0802A4CC
_0802A4C2:
	str r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0802A4C8: .4byte sub_0802A4CC

	thumb_func_start sub_0802A4CC
sub_0802A4CC: @ 0x0802A4CC
	push {lr}
	ldr r1, [r0, #0x44]
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x13
	orrs r0, r2
	str r0, [r1]
	ldr r0, _0802A4EC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_0802A4EC: .4byte gCurTask

	thumb_func_start sub_0802A4F0
sub_0802A4F0: @ 0x0802A4F0
	push {lr}
	adds r3, r0, #0
	ldrh r0, [r3, #0xa]
	adds r2, r0, #1
	strh r2, [r3, #0xa]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _0802A518
	ldr r0, _0802A510 @ =gBldRegs
	movs r1, #0x10
	strh r1, [r0, #4]
	ldr r0, _0802A514 @ =sub_0802A528
	str r0, [r3]
	b _0802A51E
	.align 2, 0
_0802A510: .4byte gBldRegs
_0802A514: .4byte sub_0802A528
_0802A518:
	ldr r1, _0802A524 @ =gBldRegs
	lsls r0, r2, #2
	strh r0, [r1, #4]
_0802A51E:
	pop {r0}
	bx r0
	.align 2, 0
_0802A524: .4byte gBldRegs

	thumb_func_start sub_0802A528
sub_0802A528: @ 0x0802A528
	movs r1, #0
	strh r1, [r0, #0xa]
	ldr r1, _0802A534 @ =sub_0802A538
	str r1, [r0]
	bx lr
	.align 2, 0
_0802A534: .4byte sub_0802A538

	thumb_func_start sub_0802A538
sub_0802A538: @ 0x0802A538
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0xa]
	adds r1, r0, #1
	strh r1, [r2, #0xa]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bls _0802A54E
	ldr r0, _0802A554 @ =sub_0802A558
	str r0, [r2]
_0802A54E:
	pop {r0}
	bx r0
	.align 2, 0
_0802A554: .4byte sub_0802A558

	thumb_func_start sub_0802A558
sub_0802A558: @ 0x0802A558
	ldr r2, _0802A56C @ =gBldRegs
	movs r3, #0
	movs r1, #0xae
	strh r1, [r2]
	movs r1, #0x10
	strh r1, [r2, #4]
	strh r3, [r0, #0xa]
	ldr r1, _0802A570 @ =sub_0802A574
	str r1, [r0]
	bx lr
	.align 2, 0
_0802A56C: .4byte gBldRegs
_0802A570: .4byte sub_0802A574

	thumb_func_start sub_0802A574
sub_0802A574: @ 0x0802A574
	push {lr}
	adds r3, r0, #0
	ldrh r0, [r3, #0xa]
	adds r1, r0, #1
	movs r2, #0
	strh r1, [r3, #0xa]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bls _0802A5B0
	ldr r0, _0802A5A4 @ =gBldRegs
	strh r2, [r0]
	strh r2, [r0, #4]
	ldr r1, [r3, #4]
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _0802A5A8 @ =0xDFFFFFFF
	ands r0, r2
	str r0, [r1]
	ldr r0, _0802A5AC @ =sub_0802A5C4
	str r0, [r3]
	b _0802A5BC
	.align 2, 0
_0802A5A4: .4byte gBldRegs
_0802A5A8: .4byte 0xDFFFFFFF
_0802A5AC: .4byte sub_0802A5C4
_0802A5B0:
	ldr r2, _0802A5C0 @ =gBldRegs
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x11
	movs r0, #0x10
	subs r0, r0, r1
	strh r0, [r2, #4]
_0802A5BC:
	pop {r0}
	bx r0
	.align 2, 0
_0802A5C0: .4byte gBldRegs

	thumb_func_start sub_0802A5C4
sub_0802A5C4: @ 0x0802A5C4
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #8]
	adds r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bhi _0802A5E0
	ldr r0, _0802A5DC @ =sub_0802A9E8
	b _0802A5E2
	.align 2, 0
_0802A5DC: .4byte sub_0802A9E8
_0802A5E0:
	ldr r0, _0802A5E8 @ =sub_0802A5EC
_0802A5E2:
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0802A5E8: .4byte sub_0802A5EC

	thumb_func_start sub_0802A5EC
sub_0802A5EC: @ 0x0802A5EC
	push {lr}
	ldr r1, [r0, #4]
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r0, r2
	str r0, [r1]
	ldr r0, _0802A60C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_0802A60C: .4byte gCurTask

	thumb_func_start sub_0802A610
sub_0802A610: @ 0x0802A610
	ldr r2, _0802A628 @ =gBldRegs
	movs r3, #0
	movs r1, #0xbf
	strh r1, [r2]
	movs r1, #0x10
	strh r1, [r2, #4]
	ldr r2, _0802A62C @ =0x0000035A
	adds r1, r0, r2
	strh r3, [r1]
	ldr r1, _0802A630 @ =sub_08026B78
	str r1, [r0]
	bx lr
	.align 2, 0
_0802A628: .4byte gBldRegs
_0802A62C: .4byte 0x0000035A
_0802A630: .4byte sub_08026B78

	thumb_func_start sub_0802A634
sub_0802A634: @ 0x0802A634
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0802A654 @ =gUnk_08D60A80
	ldrh r1, [r0]
	lsls r1, r1, #2
	ldr r0, _0802A658 @ =gUnk_082EB2B8
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #1
	bl sub_0802A764
	ldr r0, _0802A65C @ =sub_0802A864
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802A654: .4byte gUnk_08D60A80
_0802A658: .4byte gUnk_082EB2B8
_0802A65C: .4byte sub_0802A864

	thumb_func_start sub_0802A660
sub_0802A660: @ 0x0802A660
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0802A690 @ =gUnk_08D60A80
	ldrh r1, [r0]
	lsls r1, r1, #2
	ldr r0, _0802A694 @ =gUnk_082EB2D0
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #1
	bl sub_0802A764
	adds r0, r4, #0
	bl sub_0802A7EC
	movs r2, #0xb5
	lsls r2, r2, #2
	adds r1, r4, r2
	str r0, [r1]
	ldr r0, _0802A698 @ =sub_0802A888
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802A690: .4byte gUnk_08D60A80
_0802A694: .4byte gUnk_082EB2D0
_0802A698: .4byte sub_0802A888

	thumb_func_start sub_0802A69C
sub_0802A69C: @ 0x0802A69C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0802A6C4 @ =0x0000023F
	bl m4aSongNumStart
	ldr r0, _0802A6C8 @ =gUnk_08D60A80
	ldrh r1, [r0]
	lsls r1, r1, #2
	ldr r0, _0802A6CC @ =gUnk_082EB2E8
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #1
	bl sub_0802A764
	ldr r0, _0802A6D0 @ =sub_0802A8AC
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802A6C4: .4byte 0x0000023F
_0802A6C8: .4byte gUnk_08D60A80
_0802A6CC: .4byte gUnk_082EB2E8
_0802A6D0: .4byte sub_0802A8AC

	thumb_func_start sub_0802A6D4
sub_0802A6D4: @ 0x0802A6D4
	push {lr}
	ldr r1, _0802A6E4 @ =sub_08027350
	str r1, [r0]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0802A6E4: .4byte sub_08027350

	thumb_func_start sub_0802A6E8
sub_0802A6E8: @ 0x0802A6E8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0802A708 @ =gUnk_08D60A80
	ldrh r1, [r0]
	lsls r1, r1, #2
	ldr r0, _0802A70C @ =gUnk_082EB300
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #1
	bl sub_0802A764
	ldr r0, _0802A710 @ =sub_0802A8B8
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802A708: .4byte gUnk_08D60A80
_0802A70C: .4byte gUnk_082EB300
_0802A710: .4byte sub_0802A8B8

	thumb_func_start sub_0802A714
sub_0802A714: @ 0x0802A714
	ldr r1, _0802A724 @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0802A728 @ =sub_0802A8DC
	str r1, [r0]
	bx lr
	.align 2, 0
_0802A724: .4byte 0x0000035A
_0802A728: .4byte sub_0802A8DC

	thumb_func_start sub_0802A72C
sub_0802A72C: @ 0x0802A72C
	movs r2, #0xc8
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	strh r2, [r1]
	ldr r3, _0802A744 @ =0x00000322
	adds r1, r0, r3
	strh r2, [r1]
	ldr r1, _0802A748 @ =sub_08028E78
	str r1, [r0]
	bx lr
	.align 2, 0
_0802A744: .4byte 0x00000322
_0802A748: .4byte sub_08028E78

	thumb_func_start sub_0802A74C
sub_0802A74C: @ 0x0802A74C
	ldr r1, _0802A75C @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0802A760 @ =sub_0802A904
	str r1, [r0]
	bx lr
	.align 2, 0
_0802A75C: .4byte 0x0000035A
_0802A760: .4byte sub_0802A904

	thumb_func_start sub_0802A764
sub_0802A764: @ 0x0802A764
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r7, r1, #0
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r2, r5, r0
	ldr r0, [r2]
	ldr r1, _0802A7A8 @ =0xFBFFFFFF
	ands r0, r1
	str r0, [r2]
	ldr r0, _0802A7AC @ =sub_0802A92C
	ldr r2, _0802A7B0 @ =0x00000101
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802A7B4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0802A7BC
	.align 2, 0
_0802A7A8: .4byte 0xFBFFFFFF
_0802A7AC: .4byte sub_0802A92C
_0802A7B0: .4byte 0x00000101
_0802A7B4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0802A7BC:
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0802A7E4 @ =0x0100002A
	adds r0, r1, #0
	adds r1, r4, #0
	bl CpuSet
	str r5, [r4, #0x44]
	str r7, [r4, #0x48]
	adds r0, r4, #0
	adds r0, #0x4c
	strh r6, [r0]
	ldr r0, _0802A7E8 @ =sub_0802A984
	str r0, [r4]
	adds r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802A7E4: .4byte 0x0100002A
_0802A7E8: .4byte sub_0802A984

	thumb_func_start sub_0802A7EC
sub_0802A7EC: @ 0x0802A7EC
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r2, r5, r0
	ldr r0, [r2]
	ldr r1, _0802A828 @ =0xFBFFFFFF
	ands r0, r1
	str r0, [r2]
	ldr r0, _0802A82C @ =sub_0802A990
	ldr r2, _0802A830 @ =0x00000101
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802A834
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0802A83C
	.align 2, 0
_0802A828: .4byte 0xFBFFFFFF
_0802A82C: .4byte sub_0802A990
_0802A830: .4byte 0x00000101
_0802A834:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0802A83C:
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0802A85C @ =0x01000006
	adds r0, r1, #0
	adds r1, r4, #0
	bl CpuSet
	str r5, [r4, #4]
	ldr r0, _0802A860 @ =sub_0802A9DC
	str r0, [r4]
	adds r0, r4, #0
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802A85C: .4byte 0x01000006
_0802A860: .4byte sub_0802A9DC

	thumb_func_start sub_0802A864
sub_0802A864: @ 0x0802A864
	push {lr}
	adds r2, r0, #0
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ands r0, r1
	cmp r0, #0
	beq _0802A87E
	ldr r0, _0802A884 @ =sub_08026BD0
	str r0, [r2]
_0802A87E:
	pop {r0}
	bx r0
	.align 2, 0
_0802A884: .4byte sub_08026BD0

	thumb_func_start sub_0802A888
sub_0802A888: @ 0x0802A888
	push {lr}
	adds r2, r0, #0
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ands r0, r1
	cmp r0, #0
	beq _0802A8A2
	ldr r0, _0802A8A8 @ =sub_08026EF0
	str r0, [r2]
_0802A8A2:
	pop {r0}
	bx r0
	.align 2, 0
_0802A8A8: .4byte sub_08026EF0

	thumb_func_start sub_0802A8AC
sub_0802A8AC: @ 0x0802A8AC
	ldr r1, _0802A8B4 @ =sub_0802AA40
	str r1, [r0]
	bx lr
	.align 2, 0
_0802A8B4: .4byte sub_0802AA40

	thumb_func_start sub_0802A8B8
sub_0802A8B8: @ 0x0802A8B8
	push {lr}
	adds r2, r0, #0
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ands r0, r1
	cmp r0, #0
	beq _0802A8D2
	ldr r0, _0802A8D8 @ =sub_0802AA58
	str r0, [r2]
_0802A8D2:
	pop {r0}
	bx r0
	.align 2, 0
_0802A8D8: .4byte sub_0802AA58

	thumb_func_start sub_0802A8DC
sub_0802A8DC: @ 0x0802A8DC
	push {lr}
	adds r3, r0, #0
	ldr r1, _0802A8FC @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x3c
	bls _0802A8F6
	ldr r0, _0802A900 @ =sub_0802AA78
	str r0, [r3]
_0802A8F6:
	pop {r0}
	bx r0
	.align 2, 0
_0802A8FC: .4byte 0x0000035A
_0802A900: .4byte sub_0802AA78

	thumb_func_start sub_0802A904
sub_0802A904: @ 0x0802A904
	push {lr}
	adds r3, r0, #0
	ldr r1, _0802A924 @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x1e
	bls _0802A91E
	ldr r0, _0802A928 @ =sub_08029618
	str r0, [r3]
_0802A91E:
	pop {r0}
	bx r0
	.align 2, 0
_0802A924: .4byte 0x0000035A
_0802A928: .4byte sub_08029618

	thumb_func_start sub_0802A92C
sub_0802A92C: @ 0x0802A92C
	push {r4, lr}
	ldr r0, _0802A948 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802A94C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0802A954
	.align 2, 0
_0802A948: .4byte gCurTask
_0802A94C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0802A954:
	ldr r0, [r4, #0x44]
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	blt _0802A976
	ldr r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	adds r1, r4, #0
	adds r1, #0x4e
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _0802A97C
_0802A976:
	adds r0, r4, #0
	bl sub_0802A4CC
_0802A97C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802A984
sub_0802A984: @ 0x0802A984
	ldr r1, _0802A98C @ =sub_080296EC
	str r1, [r0]
	bx lr
	.align 2, 0
_0802A98C: .4byte sub_080296EC

	thumb_func_start sub_0802A990
sub_0802A990: @ 0x0802A990
	push {lr}
	ldr r0, _0802A9AC @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802A9B0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _0802A9B8
	.align 2, 0
_0802A9AC: .4byte gCurTask
_0802A9B0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_0802A9B8:
	ldr r0, [r2, #4]
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	blt _0802A9D0
	ldr r1, [r2]
	adds r0, r2, #0
	bl _call_via_r1
	b _0802A9D6
_0802A9D0:
	adds r0, r2, #0
	bl sub_0802A5EC
_0802A9D6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802A9DC
sub_0802A9DC: @ 0x0802A9DC
	ldr r1, _0802A9E4 @ =sub_0802A9E8
	str r1, [r0]
	bx lr
	.align 2, 0
_0802A9E4: .4byte sub_0802A9E8

	thumb_func_start sub_0802A9E8
sub_0802A9E8: @ 0x0802A9E8
	movs r1, #0
	strh r1, [r0, #0xa]
	ldr r1, _0802A9F4 @ =sub_0802A9F8
	str r1, [r0]
	bx lr
	.align 2, 0
_0802A9F4: .4byte sub_0802A9F8

	thumb_func_start sub_0802A9F8
sub_0802A9F8: @ 0x0802A9F8
	push {lr}
	adds r3, r0, #0
	ldr r0, _0802AA38 @ =gUnk_082EB318
	ldrh r1, [r3, #8]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r3, #0xa]
	adds r2, r0, #1
	strh r2, [r3, #0xa]
	ldrh r1, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bhs _0802AA32
	ldr r0, [r3, #4]
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x16
	ands r0, r1
	cmp r0, #0
	bne _0802AA32
	ldr r1, _0802AA3C @ =sub_080298C8
	str r1, [r3]
	adds r0, r3, #0
	bl _call_via_r1
_0802AA32:
	pop {r0}
	bx r0
	.align 2, 0
_0802AA38: .4byte gUnk_082EB318
_0802AA3C: .4byte sub_080298C8

	thumb_func_start sub_0802AA40
sub_0802AA40: @ 0x0802AA40
	ldr r1, _0802AA50 @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0802AA54 @ =sub_0802AA90
	str r1, [r0]
	bx lr
	.align 2, 0
_0802AA50: .4byte 0x0000035A
_0802AA54: .4byte sub_0802AA90

	thumb_func_start sub_0802AA58
sub_0802AA58: @ 0x0802AA58
	push {lr}
	ldr r1, _0802AA70 @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0802AA74 @ =sub_0802AAB8
	str r1, [r0]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0802AA70: .4byte 0x0000035A
_0802AA74: .4byte sub_0802AAB8

	thumb_func_start sub_0802AA78
sub_0802AA78: @ 0x0802AA78
	ldr r1, _0802AA88 @ =0x0000035A
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0802AA8C @ =sub_08028194
	str r1, [r0]
	bx lr
	.align 2, 0
_0802AA88: .4byte 0x0000035A
_0802AA8C: .4byte sub_08028194

	thumb_func_start sub_0802AA90
sub_0802AA90: @ 0x0802AA90
	push {lr}
	adds r3, r0, #0
	ldr r1, _0802AAB0 @ =0x0000035A
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x1e
	bls _0802AAAA
	ldr r0, _0802AAB4 @ =sub_08027208
	str r0, [r3]
_0802AAAA:
	pop {r0}
	bx r0
	.align 2, 0
_0802AAB0: .4byte 0x0000035A
_0802AAB4: .4byte sub_08027208

	thumb_func_start sub_0802AAB8
sub_0802AAB8: @ 0x0802AAB8
	push {lr}
	adds r3, r0, #0
	movs r1, #0xd0
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	movs r2, #0x83
	lsls r2, r2, #1
	adds r1, r3, r2
	strh r0, [r1]
	adds r2, #0x28
	adds r1, r3, r2
	strh r0, [r1]
	ldr r0, _0802AAF0 @ =0x0000035A
	adds r2, r3, r0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bls _0802AAEA
	ldr r0, _0802AAF4 @ =sub_08027444
	str r0, [r3]
_0802AAEA:
	pop {r0}
	bx r0
	.align 2, 0
_0802AAF0: .4byte 0x0000035A
_0802AAF4: .4byte sub_08027444

	thumb_func_start sub_0802AAF8
sub_0802AAF8: @ 0x0802AAF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #4]
	ldr r0, _0802AB38 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _0802AB3C @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xbc
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802AB40
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0802AB48
	.align 2, 0
_0802AB38: .4byte ObjectMain
_0802AB3C: .4byte ObjectDestroy
_0802AB40:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0802AB48:
	adds r7, r0, #0
	mov r1, sb
	ldr r2, [sp, #4]
	bl InitObject
	movs r0, #0xb4
	adds r0, r0, r7
	mov sl, r0
	movs r4, #0
	str r4, [r0]
	adds r0, r7, #0
	adds r0, #0xb8
	str r4, [r0]
	ldr r0, [r7, #8]
	movs r1, #0xd0
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #0xc]
	movs r1, #1
	mov r8, r1
	orrs r0, r1
	str r0, [r7, #0xc]
	movs r5, #8
	rsbs r5, r5, #0
	movs r6, #0x10
	rsbs r6, r6, #0
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #8
	bl sub_0803E2B0
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #8
	bl sub_0803E308
	mov r1, sb
	ldrb r0, [r1, #0xe]
	adds r1, r7, #0
	adds r1, #0x83
	strb r0, [r1]
	adds r0, r7, #0
	bl ObjectInitSprite
	movs r5, #0xf8
	lsls r5, r5, #3
	strh r5, [r7, #0x24]
	mov r1, sb
	ldrh r0, [r1, #0x22]
	mov r4, r8
	ands r4, r0
	cmp r4, #0
	beq _0802ABD0
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r7, #8]
	ldr r0, _0802ABCC @ =sub_0802B0DC
	b _0802AC44
	.align 2, 0
_0802ABCC: .4byte sub_0802B0DC
_0802ABD0:
	ldr r1, [r7, #0x40]
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	ldr r2, [r7, #0x44]
	ldr r0, _0802AC24 @ =0xFFFFF800
	adds r2, r2, r0
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	ldr r0, [sp, #4]
	bl sub_080023E4
	ldr r1, _0802AC28 @ =gUnk_082D88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802AC38
	ldr r0, [r7, #8]
	ldr r1, _0802AC2C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r7, #8]
	ldr r0, _0802AC30 @ =gUnk_082EB444
	ldrh r2, [r0]
	ldrb r3, [r0, #2]
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #8
	bl sub_0808B62C
	mov r1, sl
	str r0, [r1]
	strh r5, [r0, #0x20]
	adds r0, r7, #0
	bl sub_0802AC5C
	ldr r0, _0802AC34 @ =sub_0802B0D0
	b _0802AC44
	.align 2, 0
_0802AC24: .4byte 0xFFFFF800
_0802AC28: .4byte gUnk_082D88B8
_0802AC2C: .4byte 0xFFFFFBFF
_0802AC30: .4byte gUnk_082EB444
_0802AC34: .4byte sub_0802B0D0
_0802AC38:
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r7, #8]
	ldr r0, _0802AC58 @ =sub_0802AD00
_0802AC44:
	str r0, [r7, #0x78]
	adds r0, r7, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802AC58: .4byte sub_0802AD00

	thumb_func_start sub_0802AC5C
sub_0802AC5C: @ 0x0802AC5C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r0, #0x56
	ldrb r0, [r0]
	ldr r1, [r5, #0x40]
	asrs r1, r1, #0xc
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, [r5, #0x44]
	ldr r3, _0802ACD0 @ =0xFFFFF001
	adds r2, r2, r3
	asrs r2, r2, #0xc
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_080025AC
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r4, [r1]
	ldrh r1, [r0, #8]
	ldrb r2, [r0, #0xa]
	ldrb r3, [r0, #0xb]
	adds r0, r4, #0
	bl sub_08002BA8
	cmp r0, #0
	bne _0802ACDC
	adds r4, r5, #0
	adds r4, #0xb8
	ldr r0, [r4]
	cmp r0, #0
	bne _0802ACF6
	ldr r2, _0802ACD4 @ =0x000002CF
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808B62C
	str r0, [r4]
	ldrh r2, [r0, #6]
	movs r1, #1
	orrs r1, r2
	strh r1, [r0, #6]
	ldr r1, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x34]
	ldr r1, [r4]
	ldr r0, [r5, #0x44]
	ldr r2, _0802ACD8 @ =0xFFFFD800
	adds r0, r0, r2
	str r0, [r1, #0x38]
	ldr r1, [r4]
	movs r0, #0xf0
	lsls r0, r0, #3
	strh r0, [r1, #0x20]
	b _0802ACF6
	.align 2, 0
_0802ACD0: .4byte 0xFFFFF001
_0802ACD4: .4byte 0x000002CF
_0802ACD8: .4byte 0xFFFFD800
_0802ACDC:
	adds r4, r5, #0
	adds r4, #0xb8
	ldr r3, [r4]
	cmp r3, #0
	beq _0802ACF6
	ldrh r0, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	movs r2, #0
	orrs r1, r0
	strh r1, [r3, #6]
	str r2, [r4]
_0802ACF6:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802AD00
sub_0802AD00: @ 0x0802AD00
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #4]
	ldr r3, _0802AD94 @ =gUnk_02023530
	adds r4, r5, #0
	adds r4, #0x56
	ldrb r2, [r4]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _0802AD98 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #2
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	beq _0802AD8C
	ldrb r4, [r4]
	ldr r1, [r5, #0x40]
	asrs r1, r1, #0xc
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, [r5, #0x44]
	ldr r0, _0802AD9C @ =0xFFFFF800
	adds r2, r2, r0
	asrs r2, r2, #0xc
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	ldr r0, [r5, #8]
	ldr r1, _0802ADA0 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r5, #8]
	ldr r0, _0802ADA4 @ =gUnk_082EB444
	ldrh r2, [r0]
	ldrb r3, [r0, #2]
	movs r0, #0
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #8
	bl sub_0808B62C
	adds r1, r5, #0
	adds r1, #0xb4
	str r0, [r1]
	movs r1, #0xf8
	lsls r1, r1, #3
	strh r1, [r0, #0x20]
	adds r0, r5, #0
	bl sub_0802AC5C
	ldr r1, _0802ADA8 @ =sub_0802B0D0
	str r1, [r5, #0x78]
	adds r0, r5, #0
	bl _call_via_r1
_0802AD8C:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802AD94: .4byte gUnk_02023530
_0802AD98: .4byte 0x0000065E
_0802AD9C: .4byte 0xFFFFF800
_0802ADA0: .4byte 0xFFFFFBFF
_0802ADA4: .4byte gUnk_082EB444
_0802ADA8: .4byte sub_0802B0D0

	thumb_func_start sub_0802ADAC
sub_0802ADAC: @ 0x0802ADAC
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0x56
	ldrb r0, [r0]
	ldr r1, [r4, #0x40]
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	ldr r2, [r4, #0x44]
	asrs r2, r2, #0xc
	subs r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	ldr r1, _0802AE44 @ =gUnk_082D88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r5, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r5, r0
	cmp r5, #0
	bne _0802AE3C
	ldr r0, [r4, #8]
	ldr r1, _0802AE48 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, _0802AE4C @ =gUnk_082EB444
	ldrh r2, [r0, #4]
	ldrb r3, [r0, #6]
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #8
	bl sub_0808B62C
	adds r2, r4, #0
	adds r2, #0xb4
	str r0, [r2]
	movs r1, #0xf8
	lsls r1, r1, #3
	strh r1, [r0, #0x20]
	ldr r2, [r2]
	ldrh r1, [r2, #6]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #6]
	movs r2, #0xa5
	lsls r2, r2, #2
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0xa
	bl sub_0808B62C
	adds r1, r4, #0
	adds r1, #0xb8
	str r0, [r1]
	ldr r1, [r4, #0x40]
	str r1, [r0, #0x34]
	ldr r1, [r4, #0x44]
	ldr r2, _0802AE50 @ =0xFFFFF800
	adds r1, r1, r2
	str r1, [r0, #0x38]
	movs r1, #0xf0
	lsls r1, r1, #3
	strh r1, [r0, #0x20]
	ldr r0, _0802AE54 @ =sub_0802B0FC
	str r0, [r4, #0x78]
_0802AE3C:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802AE44: .4byte gUnk_082D88B8
_0802AE48: .4byte 0xFFFFFBFF
_0802AE4C: .4byte gUnk_082EB444
_0802AE50: .4byte 0xFFFFF800
_0802AE54: .4byte sub_0802B0FC

	thumb_func_start sub_0802AE58
sub_0802AE58: @ 0x0802AE58
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0xb4
	ldr r3, [r4]
	ldr r2, _0802AE90 @ =gUnk_082EB444
	ldrh r1, [r2, #0xc]
	strh r1, [r3, #0x18]
	ldr r1, [r4]
	ldrb r2, [r2, #0xe]
	adds r1, #0x26
	strb r2, [r1]
	ldr r1, [r4]
	adds r1, #0x27
	movs r2, #0xff
	strb r2, [r1]
	ldr r3, [r4]
	ldrh r2, [r3, #6]
	ldr r1, _0802AE94 @ =0x0000FFFD
	ands r1, r2
	strh r1, [r3, #6]
	ldr r2, [r4]
	movs r1, #1
	strh r1, [r2, #4]
	ldr r1, _0802AE98 @ =sub_0802B150
	str r1, [r0, #0x78]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802AE90: .4byte gUnk_082EB444
_0802AE94: .4byte 0x0000FFFD
_0802AE98: .4byte sub_0802B150

	thumb_func_start sub_0802AE9C
sub_0802AE9C: @ 0x0802AE9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	movs r1, #0
	bl sub_0801BA18
	cmp r0, #0
	bne _0802AEC0
	ldr r0, _0802AEBC @ =sub_0802B088
	str r0, [r7, #0x78]
	b _0802B05E
	.align 2, 0
_0802AEBC: .4byte sub_0802B088
_0802AEC0:
	adds r4, r7, #0
	adds r4, #0x56
	ldrb r1, [r4]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	ldr r1, _0802B070 @ =gUnk_02023530
	mov sb, r1
	add r0, sb
	mov ip, r0
	adds r0, r7, #0
	adds r0, #0x3c
	movs r3, #0
	ldrsb r3, [r0, r3]
	lsls r1, r3, #8
	ldr r0, [r7, #0x40]
	adds r5, r0, r1
	adds r0, r7, #0
	adds r0, #0x3d
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r1, r2, #8
	ldr r0, [r7, #0x44]
	adds r6, r0, r1
	adds r0, r7, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	lsls r0, r0, #8
	str r0, [sp]
	adds r0, r7, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	lsls r0, r0, #8
	str r0, [sp, #4]
	movs r2, #0
	mov r8, r2
	movs r7, #0
	ldr r0, _0802B074 @ =gUnk_0203AD30
	ldrb r1, [r0]
	mov sl, r4
	cmp r7, r1
	bhs _0802AF8E
	movs r3, #0xbf
	lsls r3, r3, #3
	mov r4, ip
	adds r0, r4, r3
	ldrh r0, [r0]
	mov ip, r0
	str r1, [sp, #8]
_0802AF2E:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r7, #0
	muls r1, r0, r1
	ldr r0, _0802B078 @ =gUnk_02020EE0
	adds r2, r1, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r7, r0
	add r0, sb
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp ip, r0
	bne _0802AF82
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802AF82
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0802AF82
	ldr r1, [r2, #0x40]
	cmp r5, r1
	bgt _0802AF82
	ldr r4, [sp]
	adds r0, r5, r4
	cmp r0, r1
	blt _0802AF82
	ldr r1, [r2, #0x44]
	cmp r6, r1
	bgt _0802AF82
	ldr r2, [sp, #4]
	adds r0, r6, r2
	cmp r0, r1
	bge _0802AF94
_0802AF82:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r4, [sp, #8]
	cmp r7, r4
	blo _0802AF2E
_0802AF8E:
	mov r0, r8
	cmp r0, #0
	beq _0802B05E
_0802AF94:
	bl sub_080395D4
	cmp r0, #0
	beq _0802B05E
	mov r2, sl
	ldrb r1, [r2]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	ldr r3, _0802B070 @ =gUnk_02023530
	adds r4, r0, r3
	movs r2, #0
	ldr r0, _0802B074 @ =gUnk_0203AD30
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r2, r1
	bhs _0802AFFA
	movs r0, #0xbf
	lsls r0, r0, #3
	adds r4, r4, r0
	adds r5, r3, #0
	adds r3, r1, #0
_0802AFC0:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	ldr r1, _0802B078 @ =gUnk_02020EE0
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _0802B05E
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r5
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r1, [r4]
	ldrh r0, [r0]
	cmp r1, r0
	bne _0802B05E
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r3
	blo _0802AFC0
_0802AFFA:
	movs r7, #0
	ldrb r6, [r6]
	cmp r7, r6
	bhs _0802B050
	ldr r4, _0802B078 @ =gUnk_02020EE0
	ldr r5, _0802B07C @ =gUnk_082D8D08
	adds r6, r5, #4
_0802B008:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r7, r0
	adds r3, r4, #0
	adds r3, #0xc
	adds r3, r0, r3
	ldr r1, [r3]
	movs r2, #0x80
	lsls r2, r2, #0x10
	orrs r1, r2
	str r1, [r3]
	adds r0, r0, r4
	ldr r2, _0802B080 @ =gUnk_082D8CF0
	lsls r1, r7, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	lsls r3, r7, #3
	adds r2, r3, r5
	ldr r2, [r2]
	asrs r2, r2, #0xc
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r3, r3, r6
	ldr r3, [r3]
	asrs r3, r3, #0xc
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	bl sub_0805BDF4
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, _0802B074 @ =gUnk_0203AD30
	ldrb r0, [r0]
	cmp r7, r0
	blo _0802B008
_0802B050:
	ldr r0, _0802B084 @ =gUnk_0203AD2C
	ldrh r0, [r0]
	cmp r0, #0xc7
	bhi _0802B05E
	movs r0, #0x19
	bl sub_08039600
_0802B05E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B070: .4byte gUnk_02023530
_0802B074: .4byte gUnk_0203AD30
_0802B078: .4byte gUnk_02020EE0
_0802B07C: .4byte gUnk_082D8D08
_0802B080: .4byte gUnk_082D8CF0
_0802B084: .4byte gUnk_0203AD2C

	thumb_func_start sub_0802B088
sub_0802B088: @ 0x0802B088
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0xb4
	ldr r3, [r4]
	ldr r2, _0802B0C0 @ =gUnk_082EB444
	ldrh r1, [r2, #8]
	strh r1, [r3, #0x18]
	ldr r1, [r4]
	ldrb r2, [r2, #0xa]
	adds r1, #0x26
	strb r2, [r1]
	ldr r1, [r4]
	adds r1, #0x27
	movs r2, #0xff
	strb r2, [r1]
	ldr r3, [r4]
	ldrh r2, [r3, #6]
	ldr r1, _0802B0C4 @ =0x0000FFFD
	ands r1, r2
	strh r1, [r3, #6]
	ldr r2, [r4]
	movs r1, #1
	strh r1, [r2, #4]
	ldr r1, _0802B0C8 @ =sub_0802B170
	str r1, [r0, #0x78]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802B0C0: .4byte gUnk_082EB444
_0802B0C4: .4byte 0x0000FFFD
_0802B0C8: .4byte sub_0802B170

	thumb_func_start nullsub_116
nullsub_116: @ 0x0802B0CC
	bx lr
	.align 2, 0

	thumb_func_start sub_0802B0D0
sub_0802B0D0: @ 0x0802B0D0
	push {lr}
	bl sub_0802AC5C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802B0DC
sub_0802B0DC: @ 0x0802B0DC
	ldr r1, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	str r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0xb4
	ldr r3, [r1]
	ldrh r1, [r3, #6]
	orrs r2, r1
	strh r2, [r3, #6]
	ldr r1, _0802B0F8 @ =sub_0802ADAC
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_0802B0F8: .4byte sub_0802ADAC

	thumb_func_start sub_0802B0FC
sub_0802B0FC: @ 0x0802B0FC
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r3, #0xb4
	ldr r4, [r3]
	ldr r2, _0802B12C @ =gUnk_082EB444
	ldrh r1, [r2, #4]
	movs r5, #0
	strh r1, [r4, #0x18]
	ldr r1, [r3]
	ldrb r2, [r2, #6]
	adds r1, #0x26
	strb r2, [r1]
	ldr r1, [r3]
	adds r1, #0x27
	movs r2, #0xff
	strb r2, [r1]
	ldr r1, [r3]
	strh r5, [r1, #4]
	ldr r1, _0802B130 @ =sub_0802B134
	str r1, [r0, #0x78]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802B12C: .4byte gUnk_082EB444
_0802B130: .4byte sub_0802B134

	thumb_func_start sub_0802B134
sub_0802B134: @ 0x0802B134
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl sub_0801BA18
	cmp r0, #0
	beq _0802B146
	ldr r0, _0802B14C @ =sub_0802AE58
	str r0, [r4, #0x78]
_0802B146:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802B14C: .4byte sub_0802AE58

	thumb_func_start sub_0802B150
sub_0802B150: @ 0x0802B150
	push {lr}
	adds r2, r0, #0
	adds r0, #0xb4
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802B166
	ldr r0, _0802B16C @ =sub_0802B190
	str r0, [r2, #0x78]
_0802B166:
	pop {r0}
	bx r0
	.align 2, 0
_0802B16C: .4byte sub_0802B190

	thumb_func_start sub_0802B170
sub_0802B170: @ 0x0802B170
	push {lr}
	adds r2, r0, #0
	adds r0, #0xb4
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802B186
	ldr r0, _0802B18C @ =sub_0802B0FC
	str r0, [r2, #0x78]
_0802B186:
	pop {r0}
	bx r0
	.align 2, 0
_0802B18C: .4byte sub_0802B0FC

	thumb_func_start sub_0802B190
sub_0802B190: @ 0x0802B190
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r3, #0xb4
	ldr r4, [r3]
	ldr r2, _0802B1C0 @ =gUnk_082EB444
	ldrh r1, [r2]
	movs r5, #0
	strh r1, [r4, #0x18]
	ldr r1, [r3]
	ldrb r2, [r2, #2]
	adds r1, #0x26
	strb r2, [r1]
	ldr r1, [r3]
	adds r1, #0x27
	movs r2, #0xff
	strb r2, [r1]
	ldr r1, [r3]
	strh r5, [r1, #4]
	ldr r1, _0802B1C4 @ =sub_0802AE9C
	str r1, [r0, #0x78]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802B1C0: .4byte gUnk_082EB444
_0802B1C4: .4byte sub_0802AE9C

	thumb_func_start sub_0802B1C8
sub_0802B1C8: @ 0x0802B1C8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	ldr r0, _0802B1FC @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _0802B200 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802B204
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0802B20C
	.align 2, 0
_0802B1FC: .4byte ObjectMain
_0802B200: .4byte ObjectDestroy
_0802B204:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0802B20C:
	adds r6, r0, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl InitObject
	adds r1, r6, #0
	adds r1, #0xb4
	movs r0, #0
	str r0, [r1]
	ldr r0, [r6, #8]
	ldr r1, _0802B2C0 @ =0x00018B40
	orrs r0, r1
	str r0, [r6, #8]
	ldr r0, [r6, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r6, #0xc]
	ldr r0, [r6, #0x68]
	movs r4, #8
	rsbs r4, r4, #0
	ands r0, r4
	str r0, [r6, #0x68]
	ldr r0, [r6, #0x5c]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r6, #0x5c]
	movs r5, #8
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #8
	bl sub_0803E2B0
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #8
	bl sub_0803E308
	adds r0, r6, #0
	bl ObjectInitSprite
	movs r0, #0xf8
	lsls r0, r0, #3
	strh r0, [r6, #0x24]
	ldr r2, _0802B2C4 @ =gUnk_08351648
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
	ldr r1, [r6, #0x40]
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	ldr r2, [r6, #0x44]
	ldr r0, _0802B2C8 @ =0xFFFFF800
	adds r2, r2, r0
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_080023E4
	ldr r1, _0802B2CC @ =gUnk_082D88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802B2D8
	ldr r0, [r6, #8]
	ldr r1, _0802B2D0 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_0802B2F4
	ldr r0, _0802B2D4 @ =sub_0802B43C
	b _0802B2E4
	.align 2, 0
_0802B2C0: .4byte 0x00018B40
_0802B2C4: .4byte gUnk_08351648
_0802B2C8: .4byte 0xFFFFF800
_0802B2CC: .4byte gUnk_082D88B8
_0802B2D0: .4byte 0xFFFFFBFF
_0802B2D4: .4byte sub_0802B43C
_0802B2D8:
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r6, #8]
	ldr r0, _0802B2F0 @ =sub_0802B450
_0802B2E4:
	str r0, [r6, #0x78]
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802B2F0: .4byte sub_0802B450

	thumb_func_start sub_0802B2F4
sub_0802B2F4: @ 0x0802B2F4
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r0, #0x56
	ldrb r0, [r0]
	ldr r1, [r5, #0x40]
	asrs r1, r1, #0xc
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, [r5, #0x44]
	ldr r3, _0802B36C @ =0xFFFFF001
	adds r2, r2, r3
	asrs r2, r2, #0xc
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_080025AC
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r4, [r1]
	ldrh r1, [r0, #8]
	ldrb r2, [r0, #0xa]
	ldrb r3, [r0, #0xb]
	adds r0, r4, #0
	bl sub_08002BA8
	cmp r0, #0
	bne _0802B3A8
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r3, [r0]
	adds r4, r0, #0
	cmp r3, #0
	bne _0802B42E
	subs r0, #4
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0802B374
	movs r2, #0xa5
	lsls r2, r2, #2
	str r3, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0xa
	bl sub_0808B62C
	str r0, [r4]
	ldr r1, [r5, #0x40]
	str r1, [r0, #0x34]
	ldr r1, [r5, #0x44]
	ldr r5, _0802B370 @ =0xFFFFF600
	adds r1, r1, r5
	str r1, [r0, #0x38]
	b _0802B410
	.align 2, 0
_0802B36C: .4byte 0xFFFFF001
_0802B370: .4byte 0xFFFFF600
_0802B374:
	ldr r2, _0802B3A0 @ =0x000002CF
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808B62C
	str r0, [r4]
	ldrh r2, [r0, #6]
	movs r1, #1
	orrs r1, r2
	strh r1, [r0, #6]
	ldr r1, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x34]
	ldr r1, [r4]
	ldr r0, [r5, #0x44]
	ldr r2, _0802B3A4 @ =0xFFFFD800
	adds r0, r0, r2
	str r0, [r1, #0x38]
	b _0802B410
	.align 2, 0
_0802B3A0: .4byte 0x000002CF
_0802B3A4: .4byte 0xFFFFD800
_0802B3A8:
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0802B41A
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r1, [r0]
	adds r4, r0, #0
	cmp r1, #0
	bne _0802B3F0
	movs r2, #0xa5
	lsls r2, r2, #2
	str r1, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r3, #9
	bl sub_0808B62C
	str r0, [r4]
	ldr r1, [r5, #0x40]
	str r1, [r0, #0x34]
	ldr r1, [r5, #0x44]
	ldr r3, _0802B3EC @ =0xFFFFF600
	adds r1, r1, r3
	str r1, [r0, #0x38]
	b _0802B410
	.align 2, 0
_0802B3EC: .4byte 0xFFFFF600
_0802B3F0:
	adds r0, r1, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #9
	beq _0802B410
	movs r0, #0xa5
	lsls r0, r0, #2
	strh r0, [r1, #0x18]
	ldr r0, [r4]
	adds r0, #0x26
	movs r1, #9
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, #0x27
	movs r1, #0xff
	strb r1, [r0]
_0802B410:
	ldr r1, [r4]
	movs r0, #0xf0
	lsls r0, r0, #3
	strh r0, [r1, #0x20]
	b _0802B42E
_0802B41A:
	adds r3, r5, #0
	adds r3, #0xb4
	ldr r2, [r3]
	ldrh r1, [r2, #6]
	movs r5, #0x80
	lsls r5, r5, #5
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r2, #6]
	str r4, [r3]
_0802B42E:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start nullsub_117
nullsub_117: @ 0x0802B438
	bx lr
	.align 2, 0

	thumb_func_start sub_0802B43C
sub_0802B43C: @ 0x0802B43C
	push {lr}
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bl sub_0802B2F4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802B450
sub_0802B450: @ 0x0802B450
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x56
	ldrb r0, [r0]
	ldr r1, [r4, #0x40]
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	ldr r2, [r4, #0x44]
	ldr r3, _0802B498 @ =0xFFFFF800
	adds r2, r2, r3
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	bl sub_080023E4
	ldr r1, _0802B49C @ =gUnk_082D88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802B492
	ldr r0, [r4, #8]
	ldr r1, _0802B4A0 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_0802B2F4
	ldr r0, _0802B4A4 @ =sub_0802B43C
	str r0, [r4, #0x78]
_0802B492:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802B498: .4byte 0xFFFFF800
_0802B49C: .4byte gUnk_082D88B8
_0802B4A0: .4byte 0xFFFFFBFF
_0802B4A4: .4byte sub_0802B43C

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
	bl sub_081570B0
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
	bl sub_081570B0
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
	bl sub_081570B0
	adds r1, r7, #0
	adds r1, #0xcc
	str r0, [r1]
	movs r0, #0x30
	bl sub_081570B0
	adds r1, r7, #0
	adds r1, #0xf4
	str r0, [r1]
	movs r0, #0x30
	bl sub_081570B0
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r1, r7, r2
	str r0, [r1]
	movs r0, #0x10
	bl sub_081570B0
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
	ldr r1, _0802BA40 @ =gUnk_08D5FE14
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
_0802BA40: .4byte gUnk_08D5FE14
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
	ldr r2, _0802BE30 @ =gUnk_02020EE0
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
_0802BE30: .4byte gUnk_02020EE0
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
	ldr r3, _0802C260 @ =gUnk_08D5FE14
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
_0802C260: .4byte gUnk_08D5FE14
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
	ldr r1, _0802C700 @ =gUnk_08D64A24
	ldr r0, _0802C704 @ =gUnk_089331AC
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
_0802C700: .4byte gUnk_08D64A24
_0802C704: .4byte gUnk_089331AC
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
	ldr r2, _0802CA5C @ =gUnk_02020EE0
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
_0802CA5C: .4byte gUnk_02020EE0
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
	bl sub_08152FB0
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
	ldr r1, _0802D350 @ =gUnk_08D5FE14
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
_0802D350: .4byte gUnk_08D5FE14
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
	bl sub_08157190
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _0802D388
	adds r0, r5, #0
	adds r0, #0xcc
	ldr r0, [r0]
	bl sub_08157190
	adds r0, r5, #0
	adds r0, #0xf4
	ldr r0, [r0]
	bl sub_08157190
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	bl sub_08157190
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	bl sub_08157190
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	bl sub_08157190
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
	ldr r5, _0802E324 @ =gUnk_02020EE8
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
_0802E324: .4byte gUnk_02020EE8
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
