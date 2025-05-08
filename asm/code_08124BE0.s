	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_081254A8
sub_081254A8: @ 0x081254A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _081254C8 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081254CC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081254D4
	.align 2, 0
_081254C8: .4byte gCurTask
_081254CC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081254D4:
	adds r5, r0, #0
	adds r3, r5, #0
	adds r3, #0x7d
	movs r2, #0
	ldrsb r2, [r3, r2]
	ldr r1, _08125518 @ =gUnk_08359C88
	adds r0, #0x7c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r2, r0
	bge _0812551C
	adds r1, r5, #0
	adds r1, #0x7e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _0812558E
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x89
	lsls r0, r0, #2
	bl m4aSongNumStart
	b _0812558E
	.align 2, 0
_08125518: .4byte gUnk_08359C88
_0812551C:
	ldr r2, _08125550 @ =gUnk_08359BE8
	ldrh r3, [r2, #0xc]
	strh r3, [r5, #0xc]
	ldrb r4, [r2, #0xe]
	strb r4, [r5, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	adds r6, r0, #0
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	adds r0, r5, #0
	adds r0, #0x7f
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08125554
	ldrh r0, [r2]
	strh r0, [r5, #0x34]
	ldrb r0, [r2, #2]
	adds r1, r5, #0
	adds r1, #0x42
	strb r0, [r1]
	adds r1, #1
	b _08125560
	.align 2, 0
_08125550: .4byte gUnk_08359BE8
_08125554:
	strh r3, [r5, #0x34]
	adds r0, r5, #0
	adds r0, #0x42
	strb r4, [r0]
	adds r1, r5, #0
	adds r1, #0x43
_08125560:
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl sub_08125258
	ldr r0, _081255FC @ =0x00000225
	bl m4aSongNumStart
	ldr r0, _08125600 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08125604 @ =sub_08125608
	str r0, [r1, #8]
	adds r2, r5, #0
	adds r2, #0x7f
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_0812558E:
	adds r4, r5, #0
	adds r4, #0x50
	adds r0, r4, #0
	bl sub_08155128
	movs r6, #0
	adds r0, r5, #0
	adds r0, #0x7d
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r7, r0, #0
	movs r0, #0x28
	adds r0, r0, r5
	mov r8, r0
	cmp r6, r1
	bhs _081255D8
_081255AE:
	ldr r0, [r5, #0x78]
	lsls r1, r6, #2
	adds r0, r1, r0
	ldrb r2, [r0]
	adds r0, r5, #0
	adds r0, #0x60
	strh r2, [r0]
	ldr r0, [r5, #0x78]
	adds r1, r1, r0
	ldrb r0, [r1, #1]
	adds r1, r5, #0
	adds r1, #0x62
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_081564D8
	adds r6, #1
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r6, r0
	blo _081255AE
_081255D8:
	adds r0, r5, #0
	bl sub_08155128
	mov r0, r8
	bl sub_08155128
	adds r0, r5, #0
	bl sub_081564D8
	mov r0, r8
	bl sub_081564D8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081255FC: .4byte 0x00000225
_08125600: .4byte gCurTask
_08125604: .4byte sub_08125608

	thumb_func_start sub_08125608
sub_08125608: @ 0x08125608
	push {r4, r5, lr}
	ldr r0, _08125624 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08125628
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08125630
	.align 2, 0
_08125624: .4byte gCurTask
_08125628:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08125630:
	adds r5, r0, #0
	adds r0, #0x50
	bl sub_08155128
	movs r4, #0
	b _08125660
_0812563C:
	ldr r0, [r5, #0x78]
	lsls r1, r4, #2
	adds r0, r1, r0
	ldrb r2, [r0]
	adds r0, r5, #0
	adds r0, #0x60
	strh r2, [r0]
	ldr r0, [r5, #0x78]
	adds r1, r1, r0
	ldrb r0, [r1, #1]
	adds r1, r5, #0
	adds r1, #0x62
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x50
	bl sub_081564D8
	adds r4, #1
_08125660:
	adds r0, r5, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blo _0812563C
	adds r0, r5, #0
	bl sub_08155128
	adds r4, r5, #0
	adds r4, #0x28
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r5, #0
	bl sub_081564D8
	adds r0, r4, #0
	bl sub_081564D8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08125690
sub_08125690: @ 0x08125690
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x2c
	ldr r3, _081256B8 @ =gMainFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _081256C0
	ldr r0, _081256BC @ =gUnk_081E07FC
	movs r1, #0x80
	movs r2, #0x80
	bl LoadBgPaletteWithTransformation
	b _081256D6
	.align 2, 0
_081256B8: .4byte gMainFlags
_081256BC: .4byte gUnk_081E07FC
_081256C0:
	ldr r1, _081256F0 @ =0x040000D4
	ldr r0, _081256F4 @ =gUnk_081E07FC
	str r0, [r1]
	ldr r0, _081256F8 @ =gBgPalette + 0x100
	str r0, [r1, #4]
	ldr r0, _081256FC @ =0x80000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r3]
_081256D6:
	ldr r3, _08125700 @ =gMainFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _08125708
	ldr r0, _08125704 @ =gUnk_08359E84
	movs r1, #0
	movs r2, #0x20
	bl LoadBgPaletteWithTransformation
	b _0812571E
	.align 2, 0
_081256F0: .4byte 0x040000D4
_081256F4: .4byte gUnk_081E07FC
_081256F8: .4byte gBgPalette + 0x100
_081256FC: .4byte 0x80000080
_08125700: .4byte gMainFlags
_08125704: .4byte gUnk_08359E84
_08125708:
	ldr r1, _08125740 @ =0x040000D4
	ldr r0, _08125744 @ =gUnk_08359E84
	str r0, [r1]
	ldr r0, _08125748 @ =gBgPalette
	str r0, [r1, #4]
	ldr r0, _0812574C @ =0x80000020
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r3]
_0812571E:
	ldr r1, _08125750 @ =0x00007FFF
	mov r0, sp
	strh r1, [r0]
	ldr r3, _08125754 @ =gMainFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _08125758
	mov r0, sp
	movs r1, #0
	movs r2, #1
	bl LoadBgPaletteWithTransformation
	b _0812576E
	.align 2, 0
_08125740: .4byte 0x040000D4
_08125744: .4byte gUnk_08359E84
_08125748: .4byte gBgPalette
_0812574C: .4byte 0x80000020
_08125750: .4byte 0x00007FFF
_08125754: .4byte gMainFlags
_08125758:
	ldr r1, _08125808 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _0812580C @ =gBgPalette
	str r0, [r1, #4]
	ldr r0, _08125810 @ =0x80000001
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r3]
_0812576E:
	ldr r0, _08125814 @ =gUnk_08359EC4
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	bl sub_081251F8
	ldr r0, _08125818 @ =gUnk_08359BE8
	ldrh r1, [r0]
	ldrb r0, [r0, #2]
	movs r2, #8
	add r4, sp, #4
	ldr r3, _0812581C @ =0x06012000
	mov sl, r3
	str r3, [sp, #4]
	movs r5, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	mov sb, r3
	mov r3, sb
	strh r3, [r4, #0x14]
	strh r1, [r4, #0xc]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	mov r8, r0
	mov r3, r8
	strb r3, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	movs r6, #0x81
	lsls r6, r6, #0xc
	str r6, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	ldr r2, _08125820 @ =gUnk_08358D94
	ldr r0, _08125824 @ =gLanguage
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r0]
	ldrb r0, [r0, #2]
	movs r2, #9
	mov r3, sl
	str r3, [sp, #4]
	mov r3, sb
	strh r3, [r4, #0x14]
	strh r1, [r4, #0xc]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	mov r0, r8
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	str r6, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08125808: .4byte 0x040000D4
_0812580C: .4byte gBgPalette
_08125810: .4byte 0x80000001
_08125814: .4byte gUnk_08359EC4
_08125818: .4byte gUnk_08359BE8
_0812581C: .4byte 0x06012000
_08125820: .4byte gUnk_08358D94
_08125824: .4byte gLanguage

	thumb_func_start sub_08125828
sub_08125828: @ 0x08125828
	push {lr}
	movs r0, #2
	movs r1, #2
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _0812583E
	bl sub_081265C8
_0812583E:
	movs r0, #2
	movs r1, #1
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _08125852
	bl sub_08126618
_08125852:
	movs r0, #2
	movs r1, #6
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _08125866
	bl sub_08126668
_08125866:
	movs r0, #2
	movs r1, #5
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _0812587A
	bl sub_081266B8
_0812587A:
	movs r0, #2
	movs r1, #9
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _0812588E
	bl sub_08126708
_0812588E:
	movs r0, #2
	movs r1, #0xa
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _081258A2
	bl sub_08126758
_081258A2:
	movs r0, #2
	movs r1, #0xd
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _081258B6
	bl sub_081267A8
_081258B6:
	movs r0, #2
	movs r1, #0xf
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _081258CA
	bl sub_081267F8
_081258CA:
	movs r0, #2
	movs r1, #7
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _081258DE
	bl sub_08126848
_081258DE:
	movs r0, #2
	movs r1, #8
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _081258F2
	bl sub_08126898
_081258F2:
	movs r0, #2
	movs r1, #0xb
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _08125906
	bl sub_081268E8
_08125906:
	movs r0, #2
	movs r1, #0xc
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _0812591A
	bl sub_08126938
_0812591A:
	movs r0, #2
	movs r1, #3
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _0812592E
	bl sub_08126988
_0812592E:
	movs r0, #2
	movs r1, #4
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _08125942
	bl sub_081269D8
_08125942:
	movs r0, #2
	movs r1, #0xe
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _08125956
	bl sub_08126A28
_08125956:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0812595C
sub_0812595C: @ 0x0812595C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x40
	adds r6, r5, #0
	adds r6, #0x90
	ldrh r1, [r6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08125996
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_081564D8
	ldrh r1, [r6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08125996
	adds r4, #0x28
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_081564D8
_08125996:
	adds r4, r5, #0
	adds r4, #0x94
	adds r6, r5, #0
	adds r6, #0xe4
	ldrh r1, [r6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _081259CC
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_081564D8
	ldrh r1, [r6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _081259CC
	adds r4, #0x28
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_081564D8
_081259CC:
	adds r4, r5, #0
	adds r4, #0xe8
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r6, r5, r0
	ldrh r1, [r6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08125A08
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_081564D8
	ldrh r1, [r6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08125A08
	movs r0, #0x88
	lsls r0, r0, #1
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_081564D8
_08125A08:
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r4, r5, r0
	adds r0, #0x50
	adds r6, r5, r0
	ldrh r1, [r6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08125A44
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_081564D8
	ldrh r1, [r6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08125A44
	movs r0, #0xb2
	lsls r0, r0, #1
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_081564D8
_08125A44:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
