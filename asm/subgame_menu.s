	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0801EF64
sub_0801EF64: @ 0x0801EF64
	push {lr}
	adds r2, r0, #0
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r1, r2, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _0801EF98 @ =gBldRegs
	cmp r0, #0
	bne _0801EFAA
	strh r0, [r3]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #3
	beq _0801EFA0
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r0, _0801EF9C @ =sub_0801FDD4
	b _0801EFA8
	.align 2, 0
_0801EF98: .4byte gBldRegs
_0801EF9C: .4byte sub_0801FDD4
_0801EFA0:
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r0, _0801EFBC @ =sub_0801FDE4
_0801EFA8:
	str r0, [r1]
_0801EFAA:
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #0x1f
	ands r0, r1
	strh r0, [r3, #4]
	pop {r0}
	bx r0
	.align 2, 0
_0801EFBC: .4byte sub_0801FDE4

	thumb_func_start sub_0801EFC0
sub_0801EFC0: @ 0x0801EFC0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0801F070 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801EFE8
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r4, r5, r0
	ldrh r0, [r4]
	cmp r0, #0
	beq _0801EFE8
	ldr r0, _0801F074 @ =0x0000021D
	bl m4aSongNumStart
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
_0801EFE8:
	ldr r0, _0801F070 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801F00C
	movs r1, #0xbc
	lsls r1, r1, #1
	adds r4, r5, r1
	ldrh r0, [r4]
	cmp r0, #2
	beq _0801F00C
	ldr r0, _0801F074 @ =0x0000021D
	bl m4aSongNumStart
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
_0801F00C:
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r2, r5, r0
	ldrh r1, [r2]
	adds r3, r5, #0
	adds r3, #0xef
	movs r0, #0xe
	strb r0, [r3]
	subs r3, #0x28
	strb r0, [r3]
	subs r3, #0x28
	strb r0, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r5, r0
	adds r0, #0x9f
	movs r1, #0xf
	strb r1, [r0]
	ldrh r0, [r2]
	movs r2, #0xbb
	lsls r2, r2, #1
	adds r1, r5, r2
	ldrh r1, [r1]
	lsrs r1, r1, #3
	movs r2, #1
	ands r1, r2
	bl sub_0801EC2C
	ldr r0, _0801F070 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0801F080
	ldr r0, _0801F078 @ =0x0000021F
	bl m4aSongNumStart
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #1
	str r0, [r1]
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r0, _0801F07C @ =sub_0801FE10
	b _0801F09E
	.align 2, 0
_0801F070: .4byte gPressedKeys
_0801F074: .4byte 0x0000021D
_0801F078: .4byte 0x0000021F
_0801F07C: .4byte sub_0801FE10
_0801F080:
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0801F0A0
	ldr r0, _0801F0A8 @ =0x0000021E
	bl m4aSongNumStart
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	str r4, [r0]
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r0, _0801F0AC @ =sub_0801FDF4
_0801F09E:
	str r0, [r1]
_0801F0A0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801F0A8: .4byte 0x0000021E
_0801F0AC: .4byte sub_0801FDF4

	thumb_func_start sub_0801F0B0
sub_0801F0B0: @ 0x0801F0B0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrh r1, [r2]
	adds r3, r4, #0
	adds r3, #0xef
	movs r0, #0xe
	strb r0, [r3]
	subs r3, #0x28
	strb r0, [r3]
	subs r3, #0x28
	strb r0, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r4, r0
	adds r0, #0x9f
	movs r1, #0xf
	strb r1, [r0]
	ldrh r0, [r2]
	movs r2, #0xbb
	lsls r2, r2, #1
	adds r1, r4, r2
	ldrh r1, [r1]
	lsrs r1, r1, #2
	movs r2, #1
	ands r1, r2
	bl sub_0801EC2C
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _0801F10C
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, _0801F114 @ =sub_0801FE10
	str r0, [r1]
_0801F10C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F114: .4byte sub_0801FE10

	thumb_func_start sub_0801F118
sub_0801F118: @ 0x0801F118
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r4, [r0]
	ldr r1, _0801F18C @ =gUnk_0203AD14
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r0, r5, r2
	ldrh r0, [r0]
	strb r0, [r1]
	mov r0, sp
	ldr r1, _0801F190 @ =0x00007FFF
	adds r3, r1, #0
	strh r3, [r0]
	ldr r0, _0801F194 @ =0x040000D4
	mov r2, sp
	str r2, [r0]
	ldr r1, _0801F198 @ =gBgPalette
	str r1, [r0, #4]
	ldr r2, _0801F19C @ =0x81000100
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r3, [r1]
	str r1, [r0]
	ldr r1, _0801F1A0 @ =gObjPalette
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldr r2, _0801F1A4 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r1, _0801F1A8 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x1f
	strh r0, [r1, #4]
	ldr r0, _0801F1AC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0801F1B0
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_08138D64
	b _0801F1E8
	.align 2, 0
_0801F18C: .4byte gUnk_0203AD14
_0801F190: .4byte 0x00007FFF
_0801F194: .4byte 0x040000D4
_0801F198: .4byte gBgPalette
_0801F19C: .4byte 0x81000100
_0801F1A0: .4byte gObjPalette
_0801F1A4: .4byte gUnk_03002440
_0801F1A8: .4byte gBldRegs
_0801F1AC: .4byte gCurTask
_0801F1B0:
	cmp r4, #1
	beq _0801F1CC
	cmp r4, #1
	blo _0801F1C2
	cmp r4, #2
	beq _0801F1D6
	cmp r4, #3
	beq _0801F1E0
	b _0801F1E8
_0801F1C2:
	bl sub_08134C58
	bl sub_08134D64
	b _0801F1E8
_0801F1CC:
	bl sub_0812A670
	bl sub_0812A77C
	b _0801F1E8
_0801F1D6:
	bl sub_0812F814
	bl sub_0812F91C
	b _0801F1E8
_0801F1E0:
	ldr r0, _0801F1F0 @ =gUnk_0203AD30
	ldrb r0, [r0]
	bl sub_08025650
_0801F1E8:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801F1F0: .4byte gUnk_0203AD30

	thumb_func_start sub_0801F1F4
sub_0801F1F4: @ 0x0801F1F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0801F218 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801F21C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0801F224
	.align 2, 0
_0801F218: .4byte gCurTask
_0801F21C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0801F224:
	adds r4, r0, #0
	movs r0, #0xbb
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r3, #0
	movs r1, #0xac
	lsls r1, r1, #1
	adds r1, r1, r4
	mov ip, r1
	movs r7, #0xb0
	lsls r7, r7, #1
	adds r7, r7, r4
	mov sl, r7
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r6, r4, r0
	ldr r5, _0801F2A4 @ =gUnk_020382E8
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r1, r1, r5
	mov sb, r1
	movs r7, #8
	rsbs r7, r7, #0
	adds r7, r7, r5
	mov r8, r7
_0801F25C:
	lsls r1, r3, #1
	mov r0, ip
	adds r2, r0, r1
	mov r7, sb
	adds r0, r1, r7
	ldrh r0, [r0]
	strh r0, [r2]
	mov r0, sl
	adds r2, r0, r1
	mov r7, r8
	adds r0, r1, r7
	ldrh r0, [r0]
	strh r0, [r2]
	adds r2, r6, r1
	adds r1, r1, r5
	ldrh r0, [r1]
	strh r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _0801F25C
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0801F2CA
	ldr r0, _0801F2A8 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801F2AC
	adds r0, r4, #0
	bl sub_0801ED08
	b _0801F2CA
	.align 2, 0
_0801F2A4: .4byte gUnk_020382E8
_0801F2A8: .4byte gUnk_0203AD3C
_0801F2AC:
	movs r7, #0xbc
	lsls r7, r7, #1
	adds r0, r4, r7
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x80
	adds r0, r4, r0
	movs r1, #0xa8
	strh r1, [r0, #0x10]
	movs r1, #0xa0
	strh r1, [r0, #0x12]
	bl sub_0815604C
_0801F2CA:
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801F2E8
sub_0801F2E8: @ 0x0801F2E8
	push {r4, lr}
	mov ip, r0
	ldr r1, _0801F318 @ =gDispCnt
	movs r2, #0x82
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r3, _0801F31C @ =gBgCntRegs
	movs r4, #0
	movs r2, #0
	ldr r0, _0801F320 @ =0x00001F0A
	strh r0, [r3]
	ldr r1, _0801F324 @ =gBgScrollRegs
	strh r2, [r1]
	strh r2, [r1, #2]
	movs r0, #0xa8
	lsls r0, r0, #1
	add r0, ip
	ldr r0, [r0]
	cmp r0, #3
	beq _0801F32C
	ldr r0, _0801F328 @ =0x00001C0D
	b _0801F32E
	.align 2, 0
_0801F318: .4byte gDispCnt
_0801F31C: .4byte gBgCntRegs
_0801F320: .4byte 0x00001F0A
_0801F324: .4byte gBgScrollRegs
_0801F328: .4byte 0x00001C0D
_0801F32C:
	ldr r0, _0801F344 @ =0x00001C01
_0801F32E:
	strh r0, [r3, #2]
	strh r2, [r1, #4]
	strh r2, [r1, #6]
	movs r1, #0xaa
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _0801F348 @ =sub_0801F34C
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F344: .4byte 0x00001C01
_0801F348: .4byte sub_0801F34C

	thumb_func_start sub_0801F34C
sub_0801F34C: @ 0x0801F34C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r0, r0, r6
	mov r8, r0
	ldr r0, [r0]
	cmp r0, #3
	beq _0801F376
	adds r0, r6, #0
	bl sub_0801E9DC
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r6, r2
	movs r0, #1
	str r0, [r1]
_0801F376:
	ldr r3, _0801F494 @ =gUnk_082DE8AC
	ldr r0, _0801F498 @ =gUnk_08D60A80
	ldrh r1, [r0]
	lsls r1, r1, #1
	mov r0, r8
	ldr r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r4, [r1]
	ldr r5, _0801F49C @ =0x06008000
	str r5, [r6, #4]
	movs r1, #0
	mov sb, r1
	movs r7, #0
	strh r7, [r6, #0xa]
	ldr r0, _0801F4A0 @ =0x0600F800
	str r0, [r6, #0xc]
	strh r7, [r6, #0x18]
	strh r7, [r6, #0x1a]
	strh r4, [r6, #0x1c]
	strh r7, [r6, #0x1e]
	strh r7, [r6, #0x20]
	strh r7, [r6, #0x22]
	strh r7, [r6, #0x24]
	movs r2, #0x1e
	strh r2, [r6, #0x26]
	movs r0, #0x14
	strh r0, [r6, #0x28]
	adds r0, r6, #0
	adds r0, #0x2a
	mov r1, sb
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	movs r0, #8
	strh r0, [r6, #0x2e]
	strh r7, [r6, #0x30]
	strh r7, [r6, #0x32]
	ldr r2, _0801F4A4 @ =0x00007FFF
	mov sl, r2
	mov r0, sl
	strh r0, [r6, #0x34]
	strh r0, [r6, #0x36]
	adds r0, r6, #0
	bl sub_08153060
	lsls r4, r4, #2
	ldr r1, _0801F4A8 @ =gUnk_082D7850
	adds r4, r4, r1
	ldr r0, [r4]
	ldr r0, [r0, #8]
	adds r1, r5, #0
	bl LZ77UnCompVram
	ldr r2, _0801F4AC @ =gDispCnt
	ldrh r0, [r2]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	ldr r1, _0801F4AC @ =gDispCnt
	strh r0, [r1]
	mov r2, r8
	ldr r0, [r2]
	cmp r0, #3
	bne _0801F47C
	ldr r1, _0801F4B0 @ =gUnk_082DE8DC
	ldr r2, _0801F498 @ =gUnk_08D60A80
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, #0x24
	adds r0, r0, r1
	ldrh r5, [r0]
	adds r4, r6, #0
	adds r4, #0x40
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	strh r7, [r4, #0xa]
	ldr r0, _0801F4B4 @ =0x0600E000
	str r0, [r4, #0xc]
	strh r7, [r4, #0x18]
	strh r7, [r4, #0x1a]
	strh r5, [r4, #0x1c]
	strh r7, [r4, #0x1e]
	strh r7, [r4, #0x20]
	strh r7, [r4, #0x22]
	strh r7, [r4, #0x24]
	movs r0, #0x1e
	strh r0, [r4, #0x26]
	movs r1, #0x14
	strh r1, [r4, #0x28]
	adds r0, r6, #0
	adds r0, #0x6a
	mov r2, sb
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	movs r0, #0x19
	strh r0, [r4, #0x2e]
	strh r7, [r4, #0x30]
	strh r7, [r4, #0x32]
	mov r0, sl
	strh r0, [r4, #0x34]
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_08153060
	lsls r5, r5, #2
	ldr r1, _0801F4A8 @ =gUnk_082D7850
	adds r5, r5, r1
	ldr r0, [r5]
	ldr r0, [r0, #8]
	ldr r1, [r4, #4]
	bl LZ77UnCompVram
	ldr r2, _0801F4AC @ =gDispCnt
	ldrh r0, [r2]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	ldr r1, _0801F4AC @ =gDispCnt
	strh r0, [r1]
_0801F47C:
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r1, r6, r2
	ldr r0, _0801F4B8 @ =sub_0801F4BC
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801F494: .4byte gUnk_082DE8AC
_0801F498: .4byte gUnk_08D60A80
_0801F49C: .4byte 0x06008000
_0801F4A0: .4byte 0x0600F800
_0801F4A4: .4byte 0x00007FFF
_0801F4A8: .4byte gUnk_082D7850
_0801F4AC: .4byte gDispCnt
_0801F4B0: .4byte gUnk_082DE8DC
_0801F4B4: .4byte 0x0600E000
_0801F4B8: .4byte sub_0801F4BC

	thumb_func_start sub_0801F4BC
sub_0801F4BC: @ 0x0801F4BC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r4, [r0]
	cmp r4, #3
	beq _0801F560
	ldr r0, _0801F574 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801F560
	ldr r3, _0801F578 @ =gUnk_082D7850
	ldr r2, _0801F57C @ =gUnk_082DE8DC
	ldr r0, _0801F580 @ =gUnk_08D60A80
	ldrh r1, [r0]
	lsls r1, r1, #1
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r4, [r1, #0x18]
	ldr r1, _0801F584 @ =0x0600C000
	bl LZ77UnCompVram
	movs r2, #0
	str r2, [sp]
	ldr r1, _0801F588 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _0801F58C @ =0x0600CC60
	str r0, [r1, #4]
	ldr r0, _0801F590 @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _0801F594 @ =gUnk_030060A0
	movs r0, #0x63
	strb r0, [r1, #1]
	ldr r1, _0801F598 @ =gUnk_03002E80
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #0xff
	strb r0, [r1, #6]
	movs r0, #0x12
	strb r0, [r1, #7]
	ldr r3, _0801F59C @ =0x0600E480
_0801F526:
	lsls r0, r2, #1
	adds r1, r0, r3
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1d
	bls _0801F526
	ldr r3, _0801F5A0 @ =0x0600E4C0
	movs r2, #0
	ldr r5, _0801F5A4 @ =gDispCnt
_0801F540:
	lsls r0, r2, #1
	adds r1, r0, r3
	adds r0, r0, r4
	ldrh r0, [r0, #0x3c]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1d
	bls _0801F540
	ldrh r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5]
_0801F560:
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, _0801F5A8 @ =sub_0801FE3C
	str r0, [r1]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801F574: .4byte gUnk_0203AD3C
_0801F578: .4byte gUnk_082D7850
_0801F57C: .4byte gUnk_082DE8DC
_0801F580: .4byte gUnk_08D60A80
_0801F584: .4byte 0x0600C000
_0801F588: .4byte 0x040000D4
_0801F58C: .4byte 0x0600CC60
_0801F590: .4byte 0x85000008
_0801F594: .4byte gUnk_030060A0
_0801F598: .4byte gUnk_03002E80
_0801F59C: .4byte 0x0600E480
_0801F5A0: .4byte 0x0600E4C0
_0801F5A4: .4byte gDispCnt
_0801F5A8: .4byte sub_0801FE3C

	thumb_func_start sub_0801F5AC
sub_0801F5AC: @ 0x0801F5AC
	push {lr}
	adds r2, r0, #0
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r1, r2, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _0801F5E0 @ =gBldRegs
	cmp r0, #0
	bne _0801F5F2
	strh r0, [r3]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #3
	beq _0801F5E8
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r0, _0801F5E4 @ =sub_0801FE58
	b _0801F5F0
	.align 2, 0
_0801F5E0: .4byte gBldRegs
_0801F5E4: .4byte sub_0801FE58
_0801F5E8:
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r0, _0801F604 @ =sub_0801FE68
_0801F5F0:
	str r0, [r1]
_0801F5F2:
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #0x1f
	ands r0, r1
	strh r0, [r3, #4]
	pop {r0}
	bx r0
	.align 2, 0
_0801F604: .4byte sub_0801FE68

	thumb_func_start sub_0801F608
sub_0801F608: @ 0x0801F608
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801F634
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r4, r5, r2
	ldrh r0, [r4]
	cmp r0, #0
	beq _0801F634
	ldr r0, _0801F6BC @ =0x0000021D
	bl m4aSongNumStart
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
_0801F634:
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801F65C
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r4, r5, r2
	ldrh r0, [r4]
	cmp r0, #2
	beq _0801F65C
	ldr r0, _0801F6BC @ =0x0000021D
	bl m4aSongNumStart
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
_0801F65C:
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r2, r5, r0
	ldrh r1, [r2]
	adds r3, r5, #0
	adds r3, #0xef
	movs r0, #0xe
	strb r0, [r3]
	subs r3, #0x28
	strb r0, [r3]
	subs r3, #0x28
	strb r0, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r5, r0
	adds r0, #0x9f
	movs r1, #0xf
	strb r1, [r0]
	ldrh r0, [r2]
	movs r2, #0xbb
	lsls r2, r2, #1
	adds r1, r5, r2
	ldrh r1, [r1]
	lsrs r1, r1, #3
	movs r2, #1
	ands r1, r2
	bl sub_0801EC2C
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r1, [r0]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0801F6B6
	ldr r0, _0801F6C0 @ =0x0000021E
	bl m4aSongNumStart
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r0, _0801F6C4 @ =sub_0801FE78
	str r0, [r1]
_0801F6B6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801F6BC: .4byte 0x0000021D
_0801F6C0: .4byte 0x0000021E
_0801F6C4: .4byte sub_0801FE78

	thumb_func_start sub_0801F6C8
sub_0801F6C8: @ 0x0801F6C8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrh r1, [r2]
	adds r3, r4, #0
	adds r3, #0xef
	movs r0, #0xe
	strb r0, [r3]
	subs r3, #0x28
	strb r0, [r3]
	subs r3, #0x28
	strb r0, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r4, r0
	adds r0, #0x9f
	movs r1, #0xf
	strb r1, [r0]
	ldrh r0, [r2]
	movs r2, #0xbb
	lsls r2, r2, #1
	adds r1, r4, r2
	ldrh r1, [r1]
	lsrs r1, r1, #2
	movs r2, #1
	ands r1, r2
	bl sub_0801EC2C
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _0801F724
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, _0801F72C @ =sub_0801FE94
	str r0, [r1]
_0801F724:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F72C: .4byte sub_0801FE94

	thumb_func_start sub_0801F730
sub_0801F730: @ 0x0801F730
	push {r4, lr}
	sub sp, #4
	adds r2, r0, #0
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r4, [r0]
	ldr r1, _0801F7A0 @ =gUnk_0203AD14
	movs r3, #0xbc
	lsls r3, r3, #1
	adds r0, r2, r3
	ldrh r0, [r0]
	strb r0, [r1]
	mov r0, sp
	ldr r1, _0801F7A4 @ =0x00007FFF
	adds r3, r1, #0
	strh r3, [r0]
	ldr r0, _0801F7A8 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _0801F7AC @ =gBgPalette
	str r1, [r0, #4]
	ldr r2, _0801F7B0 @ =0x81000100
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r3, [r1]
	str r1, [r0]
	ldr r1, _0801F7B4 @ =gObjPalette
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldr r2, _0801F7B8 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r1, _0801F7BC @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x1f
	strh r0, [r1, #4]
	ldr r0, _0801F7C0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	cmp r4, #1
	beq _0801F7CE
	cmp r4, #1
	blo _0801F7C4
	cmp r4, #2
	beq _0801F7D8
	cmp r4, #3
	beq _0801F7E2
	b _0801F7EA
	.align 2, 0
_0801F7A0: .4byte gUnk_0203AD14
_0801F7A4: .4byte 0x00007FFF
_0801F7A8: .4byte 0x040000D4
_0801F7AC: .4byte gBgPalette
_0801F7B0: .4byte 0x81000100
_0801F7B4: .4byte gObjPalette
_0801F7B8: .4byte gUnk_03002440
_0801F7BC: .4byte gBldRegs
_0801F7C0: .4byte gCurTask
_0801F7C4:
	bl sub_08134C58
	bl sub_08134D64
	b _0801F7EA
_0801F7CE:
	bl sub_0812A670
	bl sub_0812A77C
	b _0801F7EA
_0801F7D8:
	bl sub_0812F814
	bl sub_0812F91C
	b _0801F7EA
_0801F7E2:
	ldr r0, _0801F7F4 @ =gUnk_0203AD30
	ldrb r0, [r0]
	bl sub_08025650
_0801F7EA:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F7F4: .4byte gUnk_0203AD30

	thumb_func_start sub_0801F7F8
sub_0801F7F8: @ 0x0801F7F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0801F81C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801F820
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0801F828
	.align 2, 0
_0801F81C: .4byte gCurTask
_0801F820:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0801F828:
	adds r4, r0, #0
	movs r0, #0xbb
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r3, #0
	movs r1, #0xac
	lsls r1, r1, #1
	adds r1, r1, r4
	mov ip, r1
	movs r7, #0xb0
	lsls r7, r7, #1
	adds r7, r7, r4
	mov sl, r7
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r6, r4, r0
	ldr r5, _0801F8A8 @ =gUnk_020382E8
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r1, r1, r5
	mov sb, r1
	movs r7, #8
	rsbs r7, r7, #0
	adds r7, r7, r5
	mov r8, r7
_0801F860:
	lsls r1, r3, #1
	mov r0, ip
	adds r2, r0, r1
	mov r7, sb
	adds r0, r1, r7
	ldrh r0, [r0]
	strh r0, [r2]
	mov r0, sl
	adds r2, r0, r1
	mov r7, r8
	adds r0, r1, r7
	ldrh r0, [r0]
	strh r0, [r2]
	adds r2, r6, r1
	adds r1, r1, r5
	ldrh r0, [r1]
	strh r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _0801F860
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0801F8CE
	ldr r0, _0801F8AC @ =gUnk_0203AD3C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801F8B0
	adds r0, r4, #0
	bl sub_0801ED08
	b _0801F8CE
	.align 2, 0
_0801F8A8: .4byte gUnk_020382E8
_0801F8AC: .4byte gUnk_0203AD3C
_0801F8B0:
	movs r7, #0xbc
	lsls r7, r7, #1
	adds r0, r4, r7
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x80
	adds r0, r4, r0
	movs r1, #0xa8
	strh r1, [r0, #0x10]
	movs r1, #0xa0
	strh r1, [r0, #0x12]
	bl sub_0815604C
_0801F8CE:
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801F8EC
sub_0801F8EC: @ 0x0801F8EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov r8, r0
	ldr r4, _0801F9C0 @ =gUnk_082D7850
	ldr r3, _0801F9C4 @ =gUnk_082DE96C
	ldr r0, _0801F9C8 @ =gUnk_08D60A80
	ldrh r1, [r0]
	lsls r1, r1, #1
	movs r0, #0xa8
	lsls r0, r0, #1
	add r0, r8
	ldr r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r7, [r1, #0x18]
	ldr r2, _0801F9CC @ =gBgCntRegs
	movs r4, #0
	ldr r1, _0801F9D0 @ =0x00001E0E
	strh r1, [r2, #2]
	ldr r1, _0801F9D4 @ =gBgScrollRegs
	strh r4, [r1, #4]
	ldr r1, _0801F9D8 @ =0x0600CC80
	bl LZ77UnCompVram
	str r4, [sp]
	ldr r1, _0801F9DC @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _0801F9E0 @ =0x0600DF20
	str r0, [r1, #4]
	ldr r0, _0801F9E4 @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add r2, sp, #4
	movs r0, #0xf9
	strh r0, [r2]
	str r2, [r1]
	ldr r0, _0801F9E8 @ =0x0600F000
	str r0, [r1, #4]
	ldr r0, _0801F9EC @ =0x81000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r6, _0801F9F0 @ =0x0600F1D6
	movs r0, #0
	ldr r1, _0801F9F4 @ =gDispCnt
	mov ip, r1
	ldr r2, _0801F9F8 @ =sub_08020058
	mov sb, r2
_0801F962:
	movs r2, #0
	adds r5, r0, #1
	lsls r4, r0, #5
	lsls r3, r0, #3
_0801F96A:
	adds r1, r4, r2
	lsls r1, r1, #1
	adds r1, r1, r6
	adds r0, r3, r2
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	adds r0, #0x64
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #7
	bls _0801F96A
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bls _0801F962
	mov r1, ip
	ldrh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	mov r1, ip
	strh r0, [r1]
	movs r1, #0xb8
	lsls r1, r1, #1
	add r1, r8
	movs r0, #0
	strh r0, [r1]
	movs r0, #0xaa
	lsls r0, r0, #1
	add r0, r8
	mov r2, sb
	str r2, [r0]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801F9C0: .4byte gUnk_082D7850
_0801F9C4: .4byte gUnk_082DE96C
_0801F9C8: .4byte gUnk_08D60A80
_0801F9CC: .4byte gBgCntRegs
_0801F9D0: .4byte 0x00001E0E
_0801F9D4: .4byte gBgScrollRegs
_0801F9D8: .4byte 0x0600CC80
_0801F9DC: .4byte 0x040000D4
_0801F9E0: .4byte 0x0600DF20
_0801F9E4: .4byte 0x85000008
_0801F9E8: .4byte 0x0600F000
_0801F9EC: .4byte 0x81000400
_0801F9F0: .4byte 0x0600F1D6
_0801F9F4: .4byte gDispCnt
_0801F9F8: .4byte sub_08020058

	thumb_func_start sub_0801F9FC
sub_0801F9FC: @ 0x0801F9FC
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xb9
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r0, [r1]
	subs r0, #1
	movs r5, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	ldr r1, _0801FA28 @ =0xFFFF0000
	cmp r0, r1
	bne _0801FA34
	ldr r0, _0801FA2C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r0, _0801FA30 @ =gUnk_02038580
	str r5, [r0]
	bl sub_08032E98
	b _0801FAD0
	.align 2, 0
_0801FA28: .4byte 0xFFFF0000
_0801FA2C: .4byte gCurTask
_0801FA30: .4byte gUnk_02038580
_0801FA34:
	bl sub_08031C64
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	bne _0801FA90
	bl sub_08031C3C
	ldr r1, _0801FA74 @ =gUnk_0203AD30
	ldr r0, _0801FA78 @ =gUnk_020382A0
	adds r0, #0x28
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0801FA7C @ =gUnk_0203AD3C
	ldr r0, _0801FA80 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1]
	ldr r1, _0801FA84 @ =gUnk_0203AD44
	movs r0, #4
	strb r0, [r1]
	ldr r1, _0801FA88 @ =gUnk_0203AD24
	movs r0, #0
	strb r0, [r1]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, _0801FA8C @ =sub_0801FEFC
	str r0, [r1]
	b _0801FAD0
	.align 2, 0
_0801FA74: .4byte gUnk_0203AD30
_0801FA78: .4byte gUnk_020382A0
_0801FA7C: .4byte gUnk_0203AD3C
_0801FA80: .4byte 0x04000128
_0801FA84: .4byte gUnk_0203AD44
_0801FA88: .4byte gUnk_0203AD24
_0801FA8C: .4byte sub_0801FEFC
_0801FA90:
	cmp r0, #1
	bne _0801FAAE
	movs r1, #0xba
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #8
	bls _0801FAD0
	bl sub_08031C54
	b _0801FAD0
_0801FAAE:
	cmp r0, #0
	bge _0801FAC8
	bl sub_08031C3C
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, _0801FAC4 @ =sub_08020094
	str r0, [r1]
	b _0801FAD0
	.align 2, 0
_0801FAC4: .4byte sub_08020094
_0801FAC8:
	movs r1, #0xba
	lsls r1, r1, #1
	adds r0, r4, r1
	strh r5, [r0]
_0801FAD0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801FAD8
sub_0801FAD8: @ 0x0801FAD8
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801FB04
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r4, r5, r2
	ldrh r0, [r4]
	cmp r0, #0
	beq _0801FB04
	ldr r0, _0801FB8C @ =0x0000021D
	bl m4aSongNumStart
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
_0801FB04:
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801FB2C
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r4, r5, r2
	ldrh r0, [r4]
	cmp r0, #2
	beq _0801FB2C
	ldr r0, _0801FB8C @ =0x0000021D
	bl m4aSongNumStart
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
_0801FB2C:
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r2, r5, r0
	ldrh r1, [r2]
	adds r3, r5, #0
	adds r3, #0xef
	movs r0, #0xe
	strb r0, [r3]
	subs r3, #0x28
	strb r0, [r3]
	subs r3, #0x28
	strb r0, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r5, r0
	adds r0, #0x9f
	movs r1, #0xf
	strb r1, [r0]
	ldrh r0, [r2]
	movs r2, #0xbb
	lsls r2, r2, #1
	adds r1, r5, r2
	ldrh r1, [r1]
	lsrs r1, r1, #3
	movs r2, #1
	ands r1, r2
	bl sub_0801EC2C
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r1, [r0]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0801FB86
	ldr r0, _0801FB90 @ =0x0000021E
	bl m4aSongNumStart
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r0, _0801FB94 @ =sub_0801FF0C
	str r0, [r1]
_0801FB86:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801FB8C: .4byte 0x0000021D
_0801FB90: .4byte 0x0000021E
_0801FB94: .4byte sub_0801FF0C

	thumb_func_start sub_0801FB98
sub_0801FB98: @ 0x0801FB98
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrh r1, [r2]
	adds r3, r4, #0
	adds r3, #0xef
	movs r0, #0xe
	strb r0, [r3]
	subs r3, #0x28
	strb r0, [r3]
	subs r3, #0x28
	strb r0, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r4, r0
	adds r0, #0x9f
	movs r1, #0xf
	strb r1, [r0]
	ldrh r0, [r2]
	movs r2, #0xbb
	lsls r2, r2, #1
	adds r1, r4, r2
	ldrh r1, [r1]
	lsrs r1, r1, #2
	movs r2, #1
	ands r1, r2
	bl sub_0801EC2C
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _0801FBF4
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, _0801FBFC @ =sub_0801FF28
	str r0, [r1]
_0801FBF4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801FBFC: .4byte sub_0801FF28

	thumb_func_start sub_0801FC00
sub_0801FC00: @ 0x0801FC00
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r2, r0, #0
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r6, [r0]
	ldr r1, _0801FC64 @ =gUnk_0203AD14
	movs r3, #0xbc
	lsls r3, r3, #1
	adds r0, r2, r3
	ldrh r0, [r0]
	strb r0, [r1]
	mov r0, sp
	ldr r1, _0801FC68 @ =0x00007FFF
	adds r4, r1, #0
	strh r4, [r0]
	ldr r1, _0801FC6C @ =gBgPalette
	ldr r5, _0801FC70 @ =0x01000100
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _0801FC74 @ =gObjPalette
	adds r2, r5, #0
	bl CpuSet
	ldr r2, _0801FC78 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r1, _0801FC7C @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x1f
	strh r0, [r1, #4]
	ldr r0, _0801FC80 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	cmp r6, #1
	beq _0801FC8E
	cmp r6, #1
	blo _0801FC84
	cmp r6, #2
	beq _0801FC98
	b _0801FCA0
	.align 2, 0
_0801FC64: .4byte gUnk_0203AD14
_0801FC68: .4byte 0x00007FFF
_0801FC6C: .4byte gBgPalette
_0801FC70: .4byte 0x01000100
_0801FC74: .4byte gObjPalette
_0801FC78: .4byte gUnk_03002440
_0801FC7C: .4byte gBldRegs
_0801FC80: .4byte gCurTask
_0801FC84:
	bl sub_08134C58
	bl sub_08134D64
	b _0801FCA0
_0801FC8E:
	bl sub_0812A670
	bl sub_0812A77C
	b _0801FCA0
_0801FC98:
	bl sub_0812F814
	bl sub_0812F91C
_0801FCA0:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0801FCA8
sub_0801FCA8: @ 0x0801FCA8
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0801FCDC @ =sub_0801F7F8
	movs r1, #0xbe
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #2
	ldr r3, _0801FCE0 @ =nullsub_111
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801FCE4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0801FCEC
	.align 2, 0
_0801FCDC: .4byte sub_0801F7F8
_0801FCE0: .4byte nullsub_111
_0801FCE4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0801FCEC:
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0801FD28 @ =0x010000BE
	adds r0, r1, #0
	adds r1, r4, #0
	bl CpuSet
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r4, r1
	str r5, [r0]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, _0801FD2C @ =sub_0801FEC0
	str r0, [r1]
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_0801E9DC
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801FD28: .4byte 0x010000BE
_0801FD2C: .4byte sub_0801FEC0

	thumb_func_start sub_0801FD30
sub_0801FD30: @ 0x0801FD30
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r2, r3, #0
	adds r2, #0xef
	movs r0, #0xe
	strb r0, [r2]
	subs r2, #0x28
	strb r0, [r2]
	subs r2, #0x28
	strb r0, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r3, r0
	adds r0, #0x9f
	movs r1, #0xf
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0801FD58
sub_0801FD58: @ 0x0801FD58
	push {r4, lr}
	ldr r0, _0801FD74 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801FD78
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0801FD80
	.align 2, 0
_0801FD74: .4byte gCurTask
_0801FD78:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0801FD80:
	movs r0, #0xbb
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0801FD9E
	adds r0, r4, #0
	bl sub_0801ED08
_0801FD9E:
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start nullsub_29
nullsub_29: @ 0x0801FDB4
	bx lr
	.align 2, 0

	thumb_func_start sub_0801FDB8
sub_0801FDB8: @ 0x0801FDB8
	adds r2, r0, #0
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #0x10
	strh r0, [r1]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r0, _0801FDD0 @ =sub_0801EF64
	str r0, [r1]
	bx lr
	.align 2, 0
_0801FDD0: .4byte sub_0801EF64

	thumb_func_start sub_0801FDD4
sub_0801FDD4: @ 0x0801FDD4
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _0801FDE0 @ =sub_0801EFC0
	str r1, [r0]
	bx lr
	.align 2, 0
_0801FDE0: .4byte sub_0801EFC0

	thumb_func_start sub_0801FDE4
sub_0801FDE4: @ 0x0801FDE4
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _0801FDF0 @ =sub_0801FF50
	str r1, [r0]
	bx lr
	.align 2, 0
_0801FDF0: .4byte sub_0801FF50

	thumb_func_start sub_0801FDF4
sub_0801FDF4: @ 0x0801FDF4
	adds r2, r0, #0
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r0, _0801FE0C @ =sub_0801F0B0
	str r0, [r1]
	bx lr
	.align 2, 0
_0801FE0C: .4byte sub_0801F0B0

	thumb_func_start sub_0801FE10
sub_0801FE10: @ 0x0801FE10
	adds r3, r0, #0
	ldr r1, _0801FE30 @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #4]
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r3, r1
	strh r2, [r0]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _0801FE34 @ =sub_0801FFB0
	str r0, [r1]
	bx lr
	.align 2, 0
_0801FE30: .4byte gBldRegs
_0801FE34: .4byte sub_0801FFB0

	thumb_func_start nullsub_110
nullsub_110: @ 0x0801FE38
	bx lr
	.align 2, 0

	thumb_func_start sub_0801FE3C
sub_0801FE3C: @ 0x0801FE3C
	adds r2, r0, #0
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #0x10
	strh r0, [r1]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r0, _0801FE54 @ =sub_0801F5AC
	str r0, [r1]
	bx lr
	.align 2, 0
_0801FE54: .4byte sub_0801F5AC

	thumb_func_start sub_0801FE58
sub_0801FE58: @ 0x0801FE58
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _0801FE64 @ =sub_0801F608
	str r1, [r0]
	bx lr
	.align 2, 0
_0801FE64: .4byte sub_0801F608

	thumb_func_start sub_0801FE68
sub_0801FE68: @ 0x0801FE68
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _0801FE74 @ =sub_0801FFEC
	str r1, [r0]
	bx lr
	.align 2, 0
_0801FE74: .4byte sub_0801FFEC

	thumb_func_start sub_0801FE78
sub_0801FE78: @ 0x0801FE78
	adds r2, r0, #0
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r0, _0801FE90 @ =sub_0801F6C8
	str r0, [r1]
	bx lr
	.align 2, 0
_0801FE90: .4byte sub_0801F6C8

	thumb_func_start sub_0801FE94
sub_0801FE94: @ 0x0801FE94
	adds r3, r0, #0
	ldr r1, _0801FEB4 @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #4]
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r3, r1
	strh r2, [r0]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _0801FEB8 @ =sub_0802001C
	str r0, [r1]
	bx lr
	.align 2, 0
_0801FEB4: .4byte gBldRegs
_0801FEB8: .4byte sub_0802001C

	thumb_func_start nullsub_111
nullsub_111: @ 0x0801FEBC
	bx lr
	.align 2, 0

	thumb_func_start sub_0801FEC0
sub_0801FEC0: @ 0x0801FEC0
	push {r4, lr}
	ldr r3, _0801FEEC @ =gDispCnt
	ldrh r1, [r3]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r2, r4, #0
	orrs r1, r2
	ldr r2, _0801FEF0 @ =0x0000F9FF
	ands r1, r2
	strh r1, [r3]
	ldr r2, _0801FEF4 @ =gBgScrollRegs
	movs r1, #0
	strh r1, [r2, #8]
	strh r1, [r2, #0xa]
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _0801FEF8 @ =sub_0801F8EC
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801FEEC: .4byte gDispCnt
_0801FEF0: .4byte 0x0000F9FF
_0801FEF4: .4byte gBgScrollRegs
_0801FEF8: .4byte sub_0801F8EC

	thumb_func_start sub_0801FEFC
sub_0801FEFC: @ 0x0801FEFC
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _0801FF08 @ =sub_080200C0
	str r1, [r0]
	bx lr
	.align 2, 0
_0801FF08: .4byte sub_080200C0

	thumb_func_start sub_0801FF0C
sub_0801FF0C: @ 0x0801FF0C
	adds r2, r0, #0
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r0, _0801FF24 @ =sub_0801FB98
	str r0, [r1]
	bx lr
	.align 2, 0
_0801FF24: .4byte sub_0801FB98

	thumb_func_start sub_0801FF28
sub_0801FF28: @ 0x0801FF28
	adds r3, r0, #0
	ldr r1, _0801FF48 @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #4]
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r3, r1
	strh r2, [r0]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _0801FF4C @ =sub_08020164
	str r0, [r1]
	bx lr
	.align 2, 0
_0801FF48: .4byte gBldRegs
_0801FF4C: .4byte sub_08020164

	thumb_func_start sub_0801FF50
sub_0801FF50: @ 0x0801FF50
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0801FF78 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0801FF80
	ldr r0, _0801FF7C @ =0x0000021F
	bl m4aSongNumStart
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #1
	str r0, [r1]
	b _0801FF96
	.align 2, 0
_0801FF78: .4byte gPressedKeys
_0801FF7C: .4byte 0x0000021F
_0801FF80:
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0801FFA0
	ldr r0, _0801FFA8 @ =0x0000021E
	bl m4aSongNumStart
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	str r5, [r0]
_0801FF96:
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, _0801FFAC @ =sub_0801FE10
	str r0, [r1]
_0801FFA0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801FFA8: .4byte 0x0000021E
_0801FFAC: .4byte sub_0801FE10

	thumb_func_start sub_0801FFB0
sub_0801FFB0: @ 0x0801FFB0
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r5, _0801FFE4 @ =gBldRegs
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r2, r3, r0
	ldrh r1, [r2]
	movs r4, #0x1f
	adds r0, r4, #0
	ands r0, r1
	strh r0, [r5, #4]
	adds r1, #1
	strh r1, [r2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xf
	bls _0801FFDE
	strh r4, [r5, #4]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _0801FFE8 @ =sub_0801F118
	str r0, [r1]
_0801FFDE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801FFE4: .4byte gBldRegs
_0801FFE8: .4byte sub_0801F118

	thumb_func_start sub_0801FFEC
sub_0801FFEC: @ 0x0801FFEC
	push {lr}
	adds r2, r0, #0
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08020014
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #0
	str r0, [r1]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r0, _08020018 @ =sub_0801FE94
	str r0, [r1]
_08020014:
	pop {r0}
	bx r0
	.align 2, 0
_08020018: .4byte sub_0801FE94

	thumb_func_start sub_0802001C
sub_0802001C: @ 0x0802001C
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r5, _08020050 @ =gBldRegs
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r2, r3, r0
	ldrh r1, [r2]
	movs r4, #0x1f
	adds r0, r4, #0
	ands r0, r1
	strh r0, [r5, #4]
	adds r1, #1
	strh r1, [r2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xf
	bls _0802004A
	strh r4, [r5, #4]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _08020054 @ =sub_0801F730
	str r0, [r1]
_0802004A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08020050: .4byte gBldRegs
_08020054: .4byte sub_0801F730

	thumb_func_start sub_08020058
sub_08020058: @ 0x08020058
	push {lr}
	adds r3, r0, #0
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x3c
	bls _08020084
	ldr r2, _08020088 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0802008C @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _08020090 @ =sub_080201A0
	str r0, [r1]
_08020084:
	pop {r0}
	bx r0
	.align 2, 0
_08020088: .4byte gDispCnt
_0802008C: .4byte 0x0000FDFF
_08020090: .4byte sub_080201A0

	thumb_func_start sub_08020094
sub_08020094: @ 0x08020094
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xba
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	movs r0, #2
	movs r1, #0
	bl sub_08030C94
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, _080200BC @ =sub_0801F9FC
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080200BC: .4byte sub_0801F9FC

	thumb_func_start sub_080200C0
sub_080200C0: @ 0x080200C0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	movs r2, #0
	movs r0, #0xac
	lsls r0, r0, #1
	adds r7, r4, r0
	movs r3, #0
	adds r0, #8
	adds r6, r4, r0
	adds r0, #8
	adds r5, r4, r0
_080200E0:
	lsls r1, r2, #1
	adds r0, r7, r1
	strh r3, [r0]
	adds r0, r6, r1
	strh r3, [r0]
	adds r1, r5, r1
	strh r3, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #3
	bls _080200E0
	movs r0, #3
	bl sub_08031C70
	bl sub_08031CD4
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, _08020114 @ =sub_08020118
	str r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020114: .4byte sub_08020118

	thumb_func_start sub_08020118
sub_08020118: @ 0x08020118
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xbb
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bls _08020158
	movs r0, #0
	strh r0, [r2]
	bl sub_08030D4C
	cmp r0, #0
	bne _0802014E
	bl sub_08032E98
	b _08020158
_0802014E:
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, _08020160 @ =sub_080201D0
	str r0, [r1]
_08020158:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08020160: .4byte sub_080201D0

	thumb_func_start sub_08020164
sub_08020164: @ 0x08020164
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r5, _08020198 @ =gBldRegs
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r2, r3, r0
	ldrh r1, [r2]
	movs r4, #0x1f
	adds r0, r4, #0
	ands r0, r1
	strh r0, [r5, #4]
	adds r1, #1
	strh r1, [r2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xf
	bls _08020192
	strh r4, [r5, #4]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _0802019C @ =sub_0801FC00
	str r0, [r1]
_08020192:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08020198: .4byte gBldRegs
_0802019C: .4byte sub_0801FC00

	thumb_func_start sub_080201A0
sub_080201A0: @ 0x080201A0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08158934
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #8
	strh r0, [r1]
	movs r0, #0xb9
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0xb4
	strh r0, [r1]
	adds r0, #0xa0
	adds r1, r4, r0
	ldr r0, _080201CC @ =sub_080201EC
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080201CC: .4byte sub_080201EC

	thumb_func_start sub_080201D0
sub_080201D0: @ 0x080201D0
	adds r2, r0, #0
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #1
	str r0, [r1]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r0, _080201E8 @ =sub_0801FAD8
	str r0, [r1]
	bx lr
	.align 2, 0
_080201E8: .4byte sub_0801FAD8

	thumb_func_start sub_080201EC
sub_080201EC: @ 0x080201EC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08020218 @ =0xFFFF0000
	cmp r1, r0
	bne _08020212
	bl sub_0815898C
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, _0802021C @ =sub_08020094
	str r0, [r1]
_08020212:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08020218: .4byte 0xFFFF0000
_0802021C: .4byte sub_08020094
