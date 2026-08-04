	.syntax unified
	.text

	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	mov sb, r6
	adds r0, #0x60
	ldrh r0, [r0]
	mov sl, r0
	adds r0, r6, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #0x14]
	ldr r3, _08121BC0 @ =gCurLevelInfo
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _08121BC4 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	adds r1, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	beq _08121BC8
	adds r2, r6, #0
	adds r2, #0xb6
	ldrb r0, [r2]
	movs r1, #0xf7
	ands r1, r0
	movs r0, #0x20
	orrs r1, r0
	b _08121BD6
	.align 2, 0
_08121BC0: .4byte gCurLevelInfo
_08121BC4: .4byte 0x0000065E
_08121BC8:
	adds r2, r6, #0
	adds r2, #0xb6
	ldrb r0, [r2]
	movs r1, #8
	orrs r1, r0
	movs r0, #0xdf
	ands r1, r0
_08121BD6:
	strb r1, [r2]
	mov r1, sb
	adds r1, #0xb6
	ldrb r2, [r1]
	movs r0, #8
	ands r0, r2
	mov r8, r1
	cmp r0, #0
	bne _08121BEA
	b _08121E46
_08121BEA:
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	bne _08121BF8
	b _08121D74
_08121BF8:
	ldr r1, [r6, #0x6c]
	movs r7, #0
	movs r0, #1
	orrs r0, r2
	mov r2, r8
	strb r0, [r2]
	adds r1, #0x56
	ldr r0, _08121D68 @ =gUnk_0203AD30
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	blo _08121C12
	b _08121E46
_08121C12:
	cmp r0, #0
	beq _08121C58
	ldr r5, _08121D6C @ =gKirbys
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, sl
	bne _08121C58
	mov r4, sb
	adds r4, #0xb8
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08121C58
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0803925C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08121C58
	ldr r0, [r5, #0x6c]
	cmp r0, r6
	bne _08121C58
	adds r0, r5, #0
	bl sub_080510EC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08121C58
	ldrb r0, [r4]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4]
_08121C58:
	ldr r0, _08121D68 @ =gUnk_0203AD30
	ldrb r0, [r0]
	cmp r0, #1
	bls _08121CB0
	ldr r4, _08121D6C @ =gKirbys
	movs r2, #0x82
	lsls r2, r2, #2
	adds r0, r4, r2
	ldrh r0, [r0]
	cmp r0, sl
	bne _08121CB0
	mov r5, sb
	adds r5, #0xb8
	ldrb r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08121CB0
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r7, r4, r0
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_0803925C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08121CB0
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, r6
	bne _08121CB0
	adds r0, r7, #0
	bl sub_080510EC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08121CB0
	ldrb r1, [r5]
	movs r0, #2
	orrs r0, r1
	strb r0, [r5]
_08121CB0:
	ldr r0, _08121D68 @ =gUnk_0203AD30
	ldrb r0, [r0]
	cmp r0, #2
	bls _08121D08
	ldr r4, _08121D6C @ =gKirbys
	movs r2, #0xec
	lsls r2, r2, #2
	adds r0, r4, r2
	ldrh r0, [r0]
	cmp r0, sl
	bne _08121D08
	mov r5, sb
	adds r5, #0xb8
	ldrb r1, [r5]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08121D08
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r7, r4, r0
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_0803925C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08121D08
	movs r1, #0xef
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, r6
	bne _08121D08
	adds r0, r7, #0
	bl sub_080510EC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08121D08
	ldrb r1, [r5]
	movs r0, #4
	orrs r0, r1
	strb r0, [r5]
_08121D08:
	ldr r0, _08121D68 @ =gUnk_0203AD30
	ldrb r0, [r0]
	cmp r0, #3
	bhi _08121D12
	b _08121E46
_08121D12:
	ldr r5, _08121D6C @ =gKirbys
	movs r2, #0xab
	lsls r2, r2, #3
	adds r0, r5, r2
	ldrh r0, [r0]
	cmp r0, sl
	beq _08121D22
	b _08121E46
_08121D22:
	mov r4, sb
	adds r4, #0xb8
	ldrb r1, [r4]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08121D32
	b _08121E46
_08121D32:
	movs r0, #0x9f
	lsls r0, r0, #3
	adds r7, r5, r0
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_0803925C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08121D48
	b _08121E46
_08121D48:
	ldr r1, _08121D70 @ =0x00000564
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, r6
	bne _08121E46
	adds r0, r7, #0
	bl sub_080510EC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08121E46
	ldrb r1, [r4]
	movs r0, #8
	orrs r0, r1
	strb r0, [r4]
	b _08121E46
	.align 2, 0
_08121D68: .4byte gUnk_0203AD30
_08121D6C: .4byte gKirbys
_08121D70: .4byte 0x00000564
_08121D74:
	movs r3, #1
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _08121E46
	mov r2, sb
	adds r2, #0xb8
	ldrb r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _08121DAE
	ldr r2, _08121EFC @ =gKirbys
	movs r1, #0x8d
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08121DAE
	adds r0, r2, #0
	bl sub_08051544
	ldrb r1, [r4]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r4]
_08121DAE:
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08121DDA
	ldr r2, _08121EFC @ =gKirbys
	ldr r1, _08121F00 @ =0x000002C2
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08121DDA
	movs r1, #0xd4
	lsls r1, r1, #1
	adds r0, r2, r1
	bl sub_08051544
	ldrb r1, [r4]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r4]
_08121DDA:
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08121E06
	ldr r2, _08121EFC @ =gKirbys
	ldr r1, _08121F04 @ =0x0000046A
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08121E06
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	bl sub_08051544
	ldrb r1, [r4]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r4]
_08121E06:
	ldrb r1, [r4]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08121E32
	ldr r2, _08121EFC @ =gKirbys
	ldr r1, _08121F08 @ =0x00000612
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08121E32
	movs r1, #0x9f
	lsls r1, r1, #3
	adds r0, r2, r1
	bl sub_08051544
	ldrb r1, [r4]
	movs r0, #0xf7
	ands r0, r1
	strb r0, [r4]
_08121E32:
	ldrb r1, [r4]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08121E46
	mov r2, r8
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
_08121E46:
	mov r0, sb
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #4]
	ldr r3, _08121F0C @ =gCurLevelInfo
	adds r4, r6, #0
	adds r4, #0x56
	ldrb r2, [r4]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _08121F10 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	adds r1, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	beq _08121E82
	subs r0, #1
	str r0, [r1]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #2
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
_08121E82:
	mov r2, r8
	ldrb r1, [r2]
	movs r7, #2
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _08121E92
	b _08121F9C
_08121E92:
	movs r0, #0xf7
	ands r0, r1
	strb r0, [r2]
	movs r5, #1
	ands r0, r5
	cmp r0, #0
	beq _08121F2A
	mov r4, sb
	adds r4, #0xb8
	ldrb r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08121EB4
	ldr r0, _08121EFC @ =gKirbys
	bl sub_0805BE64
_08121EB4:
	ldrb r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08121EC4
	ldr r0, _08121F14 @ =gKirbys+0x1A8
	bl sub_0805BE64
_08121EC4:
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08121ED4
	ldr r0, _08121F18 @ =gKirbys+0x350
	bl sub_0805BE64
_08121ED4:
	ldrb r1, [r4]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08121EE4
	ldr r0, _08121F1C @ =gKirbys+0x4F8
	bl sub_0805BE64
_08121EE4:
	adds r0, r6, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08121F20
	adds r0, r6, #0
	adds r0, #0x83
	strb r7, [r0]
	b _08121F98
	.align 2, 0
_08121EFC: .4byte gKirbys
_08121F00: .4byte 0x000002C2
_08121F04: .4byte 0x0000046A
_08121F08: .4byte 0x00000612
_08121F0C: .4byte gCurLevelInfo
_08121F10: .4byte 0x0000065E
_08121F14: .4byte gKirbys+0x1A8
_08121F18: .4byte gKirbys+0x350
_08121F1C: .4byte gKirbys+0x4F8
_08121F20:
	adds r1, r6, #0
	adds r1, #0x83
	movs r0, #1
	strb r0, [r1]
	b _08121F98
_08121F2A:
	adds r0, r6, #0
	bl sub_08094EDC
	ldr r1, _08121FB0 @ =gKirbys
	ldr r0, _08121FB4 @ =gUnk_0203AD3C
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
	bne _08121F98
	ldrb r0, [r6]
	cmp r0, #0
	bne _08121F58
	ldrb r0, [r4]
	cmp r0, r2
	bne _08121F98
_08121F58:
	ldr r1, _08121FB8 @ =gUnk_08D60FA4
	ldr r4, _08121FBC @ =gSongTable
	ldr r2, _08121FC0 @ =0x00001024
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08121F7E
	movs r1, #0x81
	lsls r1, r1, #5
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08121F98
_08121F7E:
	cmp r3, #0
	beq _08121F90
	ldr r0, _08121FC4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08121F98
_08121F90:
	movs r0, #0x81
	lsls r0, r0, #2
	bl m4aSongNumStart
_08121F98:
	ldr r0, _08121FC8 @ =sub_08121FCC
	str r0, [r6, #0x78]
_08121F9C:
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
_08121FB0: .4byte gKirbys
_08121FB4: .4byte gUnk_0203AD3C
_08121FB8: .4byte gUnk_08D60FA4
_08121FBC: .4byte gSongTable
_08121FC0: .4byte 0x00001024
_08121FC4: .4byte gUnk_0203AD10
_08121FC8: .4byte sub_08121FCC

	.syntax divided
