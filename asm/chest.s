	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateChest
CreateChest: @ 0x0800AD50
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	ldr r0, _0800AD84 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _0800AD88 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xe8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800AD8C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0800AD94
	.align 2, 0
_0800AD84: .4byte ObjectMain
_0800AD88: .4byte ObjectDestroy
_0800AD8C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0800AD94:
	adds r4, r0, #0
	adds r6, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl InitObject
	adds r1, r4, #0
	adds r1, #0xdc
	movs r0, #0
	str r0, [r1]
	ldrb r1, [r5, #0xe]
	adds r0, r4, #0
	adds r0, #0xe0
	strh r1, [r0]
	ldrb r0, [r5, #0x11]
	adds r1, r4, #0
	adds r1, #0xe2
	strh r0, [r1]
	ldr r2, [r4, #8]
	ldr r0, _0800ADD4 @ =0x02018200
	orrs r2, r0
	str r2, [r4, #8]
	ldrh r1, [r5, #0x22]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0800ADD8
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
	b _0800ADDA
	.align 2, 0
_0800ADD4: .4byte 0x02018200
_0800ADD8:
	orrs r2, r3
_0800ADDA:
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	movs r2, #8
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r4, #0x68]
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x80
	bne _0800AE02
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #8
	bl sub_0803E308
	b _0800AE14
_0800AE02:
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r0, #0x10
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0x10
	bl sub_0803E308
_0800AE14:
	adds r0, r4, #0
	adds r0, #0x3f
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	ldr r0, [r4, #0x44]
	adds r0, r0, r2
	ldr r1, _0800AE54 @ =0x00000FFF
	adds r0, r0, r1
	ldr r1, _0800AE58 @ =0xFFFFF000
	ands r0, r1
	subs r0, r0, r2
	subs r0, #1
	str r0, [r4, #0x44]
	str r0, [r4, #0x4c]
	adds r0, r6, #0
	adds r0, #0xe2
	ldrb r0, [r0]
	bl hasChest
	adds r1, r0, #0
	cmp r1, #0
	beq _0800AE64
	adds r0, r6, #0
	adds r0, #0xe0
	ldrh r0, [r0]
	cmp r0, #0x63
	beq _0800AE5C
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #1
	b _0800AE7C
	.align 2, 0
_0800AE54: .4byte 0x00000FFF
_0800AE58: .4byte 0xFFFFF000
_0800AE5C:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #3
	b _0800AE7C
_0800AE64:
	adds r0, r6, #0
	adds r0, #0xe0
	ldrh r0, [r0]
	cmp r0, #0x63
	beq _0800AE76
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
	b _0800AE7E
_0800AE76:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #2
_0800AE7C:
	strb r0, [r1]
_0800AE7E:
	adds r0, r4, #0
	bl ObjectInitSprite
	movs r0, #0xf0
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	ldr r2, _0800AEAC @ =gUnk_08351648
	ldrb r1, [r5]
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
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800AEAC: .4byte gUnk_08351648

	thumb_func_start sub_0800AEB0
sub_0800AEB0: @ 0x0800AEB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r0
	str r0, [sp]
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	ldr r0, _0800AF90 @ =gCurLevelInfo
	adds r1, r1, r0
	mov ip, r1
	mov r0, ip
	adds r0, #0xbe
	ldrh r0, [r0]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r0, r2
	mov r3, r8
	ldr r0, [r3, #0x44]
	cmp r1, r0
	bge _0800AEE8
	str r1, [r3, #0x44]
_0800AEE8:
	ldr r6, _0800AF94 @ =gKirbys
	mov sb, r6
	mov r0, r8
	adds r0, #0x3c
	movs r3, #0
	ldrsb r3, [r0, r3]
	lsls r1, r3, #8
	mov r2, r8
	ldr r0, [r2, #0x40]
	adds r4, r0, r1
	mov r0, r8
	adds r0, #0x3d
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r1, r2, #8
	mov r6, r8
	ldr r0, [r6, #0x44]
	adds r5, r0, r1
	mov r0, r8
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	lsls r6, r0, #8
	mov r0, r8
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	lsls r7, r0, #8
	movs r2, #0
	ldr r0, _0800AF98 @ =gUnk_0203AD30
	ldrb r0, [r0]
	cmp r2, r0
	bhs _0800AFB4
	movs r0, #0xbf
	lsls r0, r0, #3
	mov sl, r0
	mov r1, ip
	add r1, sl
	str r1, [sp, #4]
_0800AF3E:
	ldr r1, _0800AF90 @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r1
	add r0, sl
	ldr r3, [sp, #4]
	ldrh r1, [r3]
	ldrh r0, [r0]
	cmp r1, r0
	bne _0800AFA0
	mov r0, sb
	ldr r1, [r0, #0x40]
	cmp r4, r1
	bgt _0800AFA0
	adds r0, r4, r6
	cmp r0, r1
	blt _0800AFA0
	mov r3, sb
	ldr r1, [r3, #0x44]
	cmp r5, r1
	bgt _0800AFA0
	adds r0, r5, r7
	cmp r0, r1
	blt _0800AFA0
	mov r0, sb
	str r2, [sp, #8]
	bl sub_0804B6FC
	lsls r0, r0, #0x18
	ldr r2, [sp, #8]
	cmp r0, #0
	beq _0800AFA0
	ldr r0, [sp]
	adds r0, #0xe4
	strh r2, [r0]
	ldr r0, _0800AF9C @ =sub_0800AFC8
	mov r6, r8
	str r0, [r6, #0x78]
	b _0800AFB4
	.align 2, 0
_0800AF90: .4byte gCurLevelInfo
_0800AF94: .4byte gKirbys
_0800AF98: .4byte gUnk_0203AD30
_0800AF9C: .4byte sub_0800AFC8
_0800AFA0:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r0, #0xd4
	lsls r0, r0, #1
	add sb, r0
	ldr r0, _0800AFC4 @ =gUnk_0203AD30
	ldrb r0, [r0]
	cmp r2, r0
	blo _0800AF3E
_0800AFB4:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800AFC4: .4byte gUnk_0203AD30

	thumb_func_start sub_0800AFC8
sub_0800AFC8: @ 0x0800AFC8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r0, #0xe0
	ldrh r0, [r0]
	cmp r0, #0x63
	beq _0800AFDE
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #1
	b _0800AFE4
_0800AFDE:
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #3
_0800AFE4:
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0xe2
	ldrb r0, [r0]
	bl collectChest
	adds r4, r5, #0
	adds r4, #0x60
	ldrh r0, [r4]
	adds r1, r5, #0
	adds r1, #0xb0
	ldr r2, [r1]
	movs r3, #6
	ldrsh r1, [r2, r3]
	movs r3, #8
	ldrsh r2, [r2, r3]
	bl sub_08002B30
	adds r0, r6, #0
	adds r0, #0xe0
	ldrh r1, [r0]
	adds r7, r0, #0
	cmp r1, #0x21
	bgt _0800B054
	cmp r1, #0x14
	blt _0800B01A
	b _0800B164
_0800B01A:
	cmp r1, #6
	beq _0800B068
	cmp r1, #6
	bge _0800B024
	b _0800B314
_0800B024:
	cmp r1, #0xa
	bge _0800B02A
	b _0800B314
_0800B02A:
	ldr r3, _0800B04C @ =gKirbys
	ldr r2, _0800B050 @ =gUnk_0203AD3C
	ldrb r1, [r2]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r3
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r4, [r4]
	cmp r0, r4
	bne _0800B13C
	ldrb r0, [r5]
	cmp r0, #0
	bne _0800B100
	b _0800B0F4
	.align 2, 0
_0800B04C: .4byte gKirbys
_0800B050: .4byte gUnk_0203AD3C
_0800B054:
	cmp r1, #0x28
	bge _0800B05A
	b _0800B314
_0800B05A:
	cmp r1, #0x32
	bgt _0800B060
	b _0800B1F8
_0800B060:
	cmp r1, #0x63
	bne _0800B066
	b _0800B28C
_0800B066:
	b _0800B314
_0800B068:
	ldr r1, _0800B0D4 @ =gKirbys
	ldr r0, _0800B0D8 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r4, [r4]
	cmp r0, r4
	bne _0800B0CC
	ldrb r0, [r5]
	cmp r0, #0
	bne _0800B090
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0800B0CC
_0800B090:
	ldr r1, _0800B0DC @ =gUnk_08D60FA4
	ldr r4, _0800B0E0 @ =gSongTable
	ldr r2, _0800B0E4 @ =0x0000113C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0800B0B4
	ldr r1, _0800B0E8 @ =0x00001138
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0800B0CC
_0800B0B4:
	cmp r3, #0
	beq _0800B0C6
	ldr r0, _0800B0EC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0800B0CC
_0800B0C6:
	ldr r0, _0800B0F0 @ =0x00000227
	bl m4aSongNumStart
_0800B0CC:
	bl sub_08019F18
	b _0800B378
	.align 2, 0
_0800B0D4: .4byte gKirbys
_0800B0D8: .4byte gUnk_0203AD3C
_0800B0DC: .4byte gUnk_08D60FA4
_0800B0E0: .4byte gSongTable
_0800B0E4: .4byte 0x0000113C
_0800B0E8: .4byte 0x00001138
_0800B0EC: .4byte gUnk_0203AD10
_0800B0F0: .4byte 0x00000227
_0800B0F4:
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	ldrb r2, [r2]
	cmp r0, r2
	bne _0800B13C
_0800B100:
	ldr r1, _0800B14C @ =gUnk_08D60FA4
	ldr r4, _0800B150 @ =gSongTable
	ldr r2, _0800B154 @ =0x0000113C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0800B124
	ldr r1, _0800B158 @ =0x00001138
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0800B13C
_0800B124:
	cmp r3, #0
	beq _0800B136
	ldr r0, _0800B15C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0800B13C
_0800B136:
	ldr r0, _0800B160 @ =0x00000227
	bl m4aSongNumStart
_0800B13C:
	ldrb r0, [r7]
	subs r0, #0xa
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08019ED4
	b _0800B378
	.align 2, 0
_0800B14C: .4byte gUnk_08D60FA4
_0800B150: .4byte gSongTable
_0800B154: .4byte 0x0000113C
_0800B158: .4byte 0x00001138
_0800B15C: .4byte gUnk_0203AD10
_0800B160: .4byte 0x00000227
_0800B164:
	ldr r1, _0800B1D8 @ =gKirbys
	ldr r0, _0800B1DC @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r4, [r4]
	cmp r0, r4
	bne _0800B1C8
	ldrb r0, [r5]
	cmp r0, #0
	bne _0800B18C
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0800B1C8
_0800B18C:
	ldr r1, _0800B1E0 @ =gUnk_08D60FA4
	ldr r4, _0800B1E4 @ =gSongTable
	ldr r2, _0800B1E8 @ =0x0000113C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0800B1B0
	ldr r1, _0800B1EC @ =0x00001138
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0800B1C8
_0800B1B0:
	cmp r3, #0
	beq _0800B1C2
	ldr r0, _0800B1F0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0800B1C8
_0800B1C2:
	ldr r0, _0800B1F4 @ =0x00000227
	bl m4aSongNumStart
_0800B1C8:
	ldrb r0, [r7]
	subs r0, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08019DFC
	b _0800B378
	.align 2, 0
_0800B1D8: .4byte gKirbys
_0800B1DC: .4byte gUnk_0203AD3C
_0800B1E0: .4byte gUnk_08D60FA4
_0800B1E4: .4byte gSongTable
_0800B1E8: .4byte 0x0000113C
_0800B1EC: .4byte 0x00001138
_0800B1F0: .4byte gUnk_0203AD10
_0800B1F4: .4byte 0x00000227
_0800B1F8:
	ldr r1, _0800B26C @ =gKirbys
	ldr r0, _0800B270 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r4, [r4]
	cmp r0, r4
	bne _0800B25C
	ldrb r0, [r5]
	cmp r0, #0
	bne _0800B220
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0800B25C
_0800B220:
	ldr r1, _0800B274 @ =gUnk_08D60FA4
	ldr r4, _0800B278 @ =gSongTable
	ldr r2, _0800B27C @ =0x0000113C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0800B244
	ldr r1, _0800B280 @ =0x00001138
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0800B25C
_0800B244:
	cmp r3, #0
	beq _0800B256
	ldr r0, _0800B284 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0800B25C
_0800B256:
	ldr r0, _0800B288 @ =0x00000227
	bl m4aSongNumStart
_0800B25C:
	ldrb r0, [r7]
	subs r0, #0x28
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08019E68
	b _0800B378
	.align 2, 0
_0800B26C: .4byte gKirbys
_0800B270: .4byte gUnk_0203AD3C
_0800B274: .4byte gUnk_08D60FA4
_0800B278: .4byte gSongTable
_0800B27C: .4byte 0x0000113C
_0800B280: .4byte 0x00001138
_0800B284: .4byte gUnk_0203AD10
_0800B288: .4byte 0x00000227
_0800B28C:
	ldr r1, _0800B2F4 @ =gKirbys
	ldr r0, _0800B2F8 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r4, [r4]
	cmp r0, r4
	bne _0800B378
	ldrb r0, [r5]
	cmp r0, #0
	bne _0800B2B4
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0800B378
_0800B2B4:
	ldr r1, _0800B2FC @ =gUnk_08D60FA4
	ldr r4, _0800B300 @ =gSongTable
	ldr r2, _0800B304 @ =0x0000113C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0800B2D8
	ldr r1, _0800B308 @ =0x00001138
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0800B378
_0800B2D8:
	cmp r3, #0
	beq _0800B2EA
	ldr r0, _0800B30C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0800B378
_0800B2EA:
	ldr r0, _0800B310 @ =0x00000227
	bl m4aSongNumStart
	b _0800B378
	.align 2, 0
_0800B2F4: .4byte gKirbys
_0800B2F8: .4byte gUnk_0203AD3C
_0800B2FC: .4byte gUnk_08D60FA4
_0800B300: .4byte gSongTable
_0800B304: .4byte 0x0000113C
_0800B308: .4byte 0x00001138
_0800B30C: .4byte gUnk_0203AD10
_0800B310: .4byte 0x00000227
_0800B314:
	ldr r1, _0800B3AC @ =gKirbys
	ldr r0, _0800B3B0 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r4, [r4]
	cmp r0, r4
	bne _0800B378
	ldrb r0, [r5]
	cmp r0, #0
	bne _0800B33C
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0800B378
_0800B33C:
	ldr r1, _0800B3B4 @ =gUnk_08D60FA4
	ldr r4, _0800B3B8 @ =gSongTable
	ldr r2, _0800B3BC @ =0x0000106C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0800B360
	ldr r1, _0800B3C0 @ =0x00001068
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0800B378
_0800B360:
	cmp r3, #0
	beq _0800B372
	ldr r0, _0800B3C4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0800B378
_0800B372:
	ldr r0, _0800B3C8 @ =0x0000020D
	bl m4aSongNumStart
_0800B378:
	ldr r0, _0800B3C4 @ =gUnk_0203AD10
	ldr r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800B3EE
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _0800B3DC
	ldr r0, _0800B3B0 @ =gUnk_0203AD3C
	ldr r1, _0800B3CC @ =gUnk_0203AD24
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0800B3D4
	ldr r2, _0800B3D0 @ =gSaveID
	ldrh r0, [r2]
	movs r1, #0
	cmp r0, #2
	bhi _0800B3A4
	adds r1, r0, #0
_0800B3A4:
	movs r0, #1
	bl StartSaveGame
	b _0800B3EE
	.align 2, 0
_0800B3AC: .4byte gKirbys
_0800B3B0: .4byte gUnk_0203AD3C
_0800B3B4: .4byte gUnk_08D60FA4
_0800B3B8: .4byte gSongTable
_0800B3BC: .4byte 0x0000106C
_0800B3C0: .4byte 0x00001068
_0800B3C4: .4byte gUnk_0203AD10
_0800B3C8: .4byte 0x0000020D
_0800B3CC: .4byte gUnk_0203AD24
_0800B3D0: .4byte gSaveID
_0800B3D4:
	movs r0, #8
	bl sub_08031CE4
	b _0800B3EE
_0800B3DC:
	ldr r2, _0800B40C @ =gSaveID
	ldrh r0, [r2]
	movs r1, #0
	cmp r0, #2
	bhi _0800B3E8
	adds r1, r0, #0
_0800B3E8:
	movs r0, #1
	bl StartSaveGame
_0800B3EE:
	ldr r1, [r6, #0x40]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r6, #0x44]
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	ldrh r3, [r7]
	adds r0, r6, #0
	bl sub_0800B414
	ldr r0, _0800B410 @ =sub_0800BD9C
	str r0, [r5, #0x78]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B40C: .4byte gSaveID
_0800B410: .4byte sub_0800BD9C

	thumb_func_start sub_0800B414
sub_0800B414: @ 0x0800B414
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	ldr r0, _0800B45C @ =sub_0800B7A4
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0800B460 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800B464
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0800B46C
	.align 2, 0
_0800B45C: .4byte sub_0800B7A4
_0800B460: .4byte sub_0803DCCC
_0800B464:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0800B46C:
	adds r4, r0, #0
	mov r8, r4
	bl sub_0803E3B0
	movs r1, #0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r7, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r7, #0x44]
	str r0, [r4, #0x38]
	str r7, [r4, #0x44]
	adds r0, r7, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r2, r4, #0
	adds r2, #0x42
	strh r0, [r2]
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #8
	str r0, [r4, #0x34]
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #8
	str r0, [r4, #0x38]
	strh r1, [r4, #4]
	ldr r0, _0800B4E4 @ =sub_0800BDB4
	str r0, [r4, #0x48]
	str r7, [r4, #0x4c]
	adds r0, r4, #0
	adds r0, #0x50
	strh r5, [r0]
	ldr r0, _0800B4E8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r7, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0800B4D2
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_0800B4D2:
	cmp r5, #0x63
	bls _0800B4D8
	b _0800B72E
_0800B4D8:
	lsls r0, r5, #2
	ldr r1, _0800B4EC @ =_0800B4F0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800B4E4: .4byte sub_0800BDB4
_0800B4E8: .4byte gUnk_03000510
_0800B4EC: .4byte _0800B4F0
_0800B4F0: @ jump table
	.4byte _0800B680 @ case 0
	.4byte _0800B68C @ case 1
	.4byte _0800B698 @ case 2
	.4byte _0800B6A4 @ case 3
	.4byte _0800B6B0 @ case 4
	.4byte _0800B6BC @ case 5
	.4byte _0800B6C8 @ case 6
	.4byte _0800B72E @ case 7
	.4byte _0800B72E @ case 8
	.4byte _0800B72E @ case 9
	.4byte _0800B6D4 @ case 10
	.4byte _0800B6D4 @ case 11
	.4byte _0800B6D4 @ case 12
	.4byte _0800B6D4 @ case 13
	.4byte _0800B6D4 @ case 14
	.4byte _0800B6D4 @ case 15
	.4byte _0800B6D4 @ case 16
	.4byte _0800B6D4 @ case 17
	.4byte _0800B6D4 @ case 18
	.4byte _0800B6D4 @ case 19
	.4byte _0800B6E4 @ case 20
	.4byte _0800B6E4 @ case 21
	.4byte _0800B6E4 @ case 22
	.4byte _0800B6E4 @ case 23
	.4byte _0800B6E4 @ case 24
	.4byte _0800B6E4 @ case 25
	.4byte _0800B6E4 @ case 26
	.4byte _0800B6E4 @ case 27
	.4byte _0800B6E4 @ case 28
	.4byte _0800B6E4 @ case 29
	.4byte _0800B6E4 @ case 30
	.4byte _0800B6E4 @ case 31
	.4byte _0800B6E4 @ case 32
	.4byte _0800B6E4 @ case 33
	.4byte _0800B72E @ case 34
	.4byte _0800B72E @ case 35
	.4byte _0800B72E @ case 36
	.4byte _0800B72E @ case 37
	.4byte _0800B72E @ case 38
	.4byte _0800B72E @ case 39
	.4byte _0800B6FC @ case 40
	.4byte _0800B70C @ case 41
	.4byte _0800B70C @ case 42
	.4byte _0800B70C @ case 43
	.4byte _0800B70C @ case 44
	.4byte _0800B70C @ case 45
	.4byte _0800B70C @ case 46
	.4byte _0800B70C @ case 47
	.4byte _0800B70C @ case 48
	.4byte _0800B70C @ case 49
	.4byte _0800B70C @ case 50
	.4byte _0800B72E @ case 51
	.4byte _0800B72E @ case 52
	.4byte _0800B72E @ case 53
	.4byte _0800B72E @ case 54
	.4byte _0800B72E @ case 55
	.4byte _0800B72E @ case 56
	.4byte _0800B72E @ case 57
	.4byte _0800B72E @ case 58
	.4byte _0800B72E @ case 59
	.4byte _0800B72E @ case 60
	.4byte _0800B72E @ case 61
	.4byte _0800B72E @ case 62
	.4byte _0800B72E @ case 63
	.4byte _0800B72E @ case 64
	.4byte _0800B72E @ case 65
	.4byte _0800B72E @ case 66
	.4byte _0800B72E @ case 67
	.4byte _0800B72E @ case 68
	.4byte _0800B72E @ case 69
	.4byte _0800B72E @ case 70
	.4byte _0800B72E @ case 71
	.4byte _0800B72E @ case 72
	.4byte _0800B72E @ case 73
	.4byte _0800B72E @ case 74
	.4byte _0800B72E @ case 75
	.4byte _0800B72E @ case 76
	.4byte _0800B72E @ case 77
	.4byte _0800B72E @ case 78
	.4byte _0800B72E @ case 79
	.4byte _0800B72E @ case 80
	.4byte _0800B72E @ case 81
	.4byte _0800B72E @ case 82
	.4byte _0800B72E @ case 83
	.4byte _0800B72E @ case 84
	.4byte _0800B72E @ case 85
	.4byte _0800B72E @ case 86
	.4byte _0800B72E @ case 87
	.4byte _0800B72E @ case 88
	.4byte _0800B72E @ case 89
	.4byte _0800B72E @ case 90
	.4byte _0800B72E @ case 91
	.4byte _0800B72E @ case 92
	.4byte _0800B72E @ case 93
	.4byte _0800B72E @ case 94
	.4byte _0800B72E @ case 95
	.4byte _0800B72E @ case 96
	.4byte _0800B72E @ case 97
	.4byte _0800B72E @ case 98
	.4byte _0800B724 @ case 99
_0800B680:
	ldr r0, _0800B688 @ =0x000002D1
	str r0, [sp, #0xc]
	movs r6, #0
	b _0800B702
	.align 2, 0
_0800B688: .4byte 0x000002D1
_0800B68C:
	ldr r2, _0800B694 @ =0x000002D1
	str r2, [sp, #0xc]
	movs r6, #1
	b _0800B718
	.align 2, 0
_0800B694: .4byte 0x000002D1
_0800B698:
	ldr r1, _0800B6A0 @ =0x000002D1
	str r1, [sp, #0xc]
	movs r6, #3
	b _0800B6F0
	.align 2, 0
_0800B6A0: .4byte 0x000002D1
_0800B6A4:
	ldr r0, _0800B6AC @ =0x000002D1
	str r0, [sp, #0xc]
	movs r6, #5
	b _0800B702
	.align 2, 0
_0800B6AC: .4byte 0x000002D1
_0800B6B0:
	ldr r2, _0800B6B8 @ =0x000002D1
	str r2, [sp, #0xc]
	movs r6, #2
	b _0800B718
	.align 2, 0
_0800B6B8: .4byte 0x000002D1
_0800B6BC:
	ldr r1, _0800B6C4 @ =0x000002D1
	str r1, [sp, #0xc]
	movs r6, #4
	b _0800B6F0
	.align 2, 0
_0800B6C4: .4byte 0x000002D1
_0800B6C8:
	ldr r0, _0800B6D0 @ =0x000002D1
	str r0, [sp, #0xc]
	movs r6, #0xc
	b _0800B702
	.align 2, 0
_0800B6D0: .4byte 0x000002D1
_0800B6D4:
	ldr r2, _0800B6E0 @ =0x000002D2
	str r2, [sp, #0xc]
	adds r0, r5, #0
	adds r0, #0x12
	b _0800B714
	.align 2, 0
_0800B6E0: .4byte 0x000002D2
_0800B6E4:
	ldr r1, _0800B6F8 @ =0x000002D2
	str r1, [sp, #0xc]
	adds r0, r5, #0
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0800B6F0:
	movs r2, #4
	str r2, [sp, #8]
	b _0800B734
	.align 2, 0
_0800B6F8: .4byte 0x000002D2
_0800B6FC:
	ldr r0, _0800B708 @ =0x000002D1
	str r0, [sp, #0xc]
	movs r6, #0xd
_0800B702:
	movs r1, #4
	str r1, [sp, #8]
	b _0800B734
	.align 2, 0
_0800B708: .4byte 0x000002D1
_0800B70C:
	ldr r2, _0800B720 @ =0x000002D2
	str r2, [sp, #0xc]
	adds r0, r5, #0
	subs r0, #0x17
_0800B714:
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0800B718:
	movs r0, #4
	str r0, [sp, #8]
	b _0800B734
	.align 2, 0
_0800B720: .4byte 0x000002D2
_0800B724:
	movs r1, #0
	str r1, [sp, #0xc]
	movs r6, #0
	movs r2, #0
	str r2, [sp, #8]
_0800B72E:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0800B754
_0800B734:
	ldr r0, [sp, #8]
	bl VramMalloc
	adds r2, r0, #0
	mov r1, r8
	adds r1, #0xc
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0xb
	str r0, [sp, #4]
	mov r0, r8
	ldr r3, [sp, #0xc]
	bl sub_080709F8
	b _0800B764
_0800B754:
	mov r2, r8
	ldrh r1, [r2, #6]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #6]
_0800B764:
	adds r0, r5, #0
	subs r0, #0xa
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x17
	bls _0800B77C
	adds r0, r5, #0
	subs r0, #0x29
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bhi _0800B78A
_0800B77C:
	adds r0, r7, #0
	adds r0, #0x2f
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x2b
	strb r1, [r0]
	b _0800B792
_0800B78A:
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xf
	strb r0, [r1]
_0800B792:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800B7A4
sub_0800B7A4: @ 0x0800B7A4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _0800B7C8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _0800B7CC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0800B7D4
	.align 2, 0
_0800B7C8: .4byte gCurTask
_0800B7CC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0800B7D4:
	adds r4, r0, #0
	mov ip, r4
	adds r0, #0x50
	ldrh r1, [r0]
	adds r0, r1, #0
	subs r0, #0xa
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x17
	bls _0800B7F4
	adds r0, r1, #0
	subs r0, #0x29
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bhi _0800B800
_0800B7F4:
	ldr r0, [r4, #0x4c]
	adds r0, #0x2f
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x2b
	b _0800B806
_0800B800:
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xf
_0800B806:
	strb r0, [r1]
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov r8, r1
	cmp r3, #0
	beq _0800B824
	ldr r0, [r5]
	bl TaskDestroy
	b _0800B966
_0800B824:
	ldr r1, [r4, #0x44]
	cmp r1, #0
	beq _0800B870
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800B83C
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	beq _0800B83C
	str r3, [r4, #0x44]
	movs r1, #0
_0800B83C:
	cmp r1, #0
	beq _0800B870
	ldr r0, _0800B86C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0800B8E0
	movs r0, #0x80
	lsls r0, r0, #6
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	bne _0800B8E0
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0800B966
	.align 2, 0
_0800B86C: .4byte gUnk_03000510
_0800B870:
	adds r5, r4, #0
	movs r3, #0
	ldr r2, _0800B8D8 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0800B8B2
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0800B8B2
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _0800B8B2
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0800B8B2
	movs r3, #4
_0800B8B2:
	ldr r0, _0800B8DC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0800B8E0
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0800B8E0
	adds r0, r5, #0
	bl sub_0803DBC8
	b _0800B966
	.align 2, 0
_0800B8D8: .4byte gKirbys
_0800B8DC: .4byte gUnk_03000510
_0800B8E0:
	ldr r0, _0800B970 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800B924
	ldr r6, _0800B974 @ =gCurLevelInfo
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r5, _0800B978 @ =gUnk_02026D50
_0800B8F2:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _0800B91C
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800B936
_0800B91C:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0800B8F2
_0800B924:
	movs r0, #1
	cmp r0, #0
	beq _0800B936
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	mov r6, r8
	orrs r0, r6
	strh r0, [r4, #6]
_0800B936:
	mov r7, ip
	ldr r1, [r7, #0x48]
	mov r0, ip
	bl _call_via_r1
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0800B960
	movs r0, #0x3c
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r6, #0x3e
	ldrsh r1, [r4, r6]
	ldr r0, [r4, #0x38]
	subs r0, r0, r1
	str r0, [r4, #0x38]
_0800B960:
	adds r0, r4, #0
	bl sub_0806FAC8
_0800B966:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B970: .4byte gUnk_0203AD44
_0800B974: .4byte gCurLevelInfo
_0800B978: .4byte gUnk_02026D50

	thumb_func_start sub_0800B97C
sub_0800B97C: @ 0x0800B97C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	movs r0, #0
	mov r1, r8
	strh r0, [r1, #0x3c]
	ldrh r0, [r1, #0x3e]
	subs r0, #8
	strh r0, [r1, #0x3e]
	ldrh r0, [r1, #4]
	adds r1, r0, #1
	mov r2, r8
	strh r1, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1e
	bgt _0800B9A4
	b _0800BD1E
_0800B9A4:
	ldr r4, [r2, #0x4c]
	adds r0, r4, #0
	adds r0, #0xe0
	ldrh r1, [r0]
	cmp r1, #5
	bls _0800B9B2
	b _0800BACC
_0800B9B2:
	adds r0, r1, #0
	cmp r0, #5
	bhi _0800B9F6
	lsls r0, r0, #2
	ldr r1, _0800B9C4 @ =_0800B9C8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800B9C4: .4byte _0800B9C8
_0800B9C8: @ jump table
	.4byte _0800B9E0 @ case 0
	.4byte _0800B9E4 @ case 1
	.4byte _0800B9E8 @ case 2
	.4byte _0800B9EC @ case 3
	.4byte _0800B9F0 @ case 4
	.4byte _0800B9F4 @ case 5
_0800B9E0:
	movs r6, #0x63
	b _0800B9F6
_0800B9E4:
	movs r6, #0x64
	b _0800B9F6
_0800B9E8:
	movs r6, #0x61
	b _0800B9F6
_0800B9EC:
	movs r6, #0x60
	b _0800B9F6
_0800B9F0:
	movs r6, #0x5f
	b _0800B9F6
_0800B9F4:
	movs r6, #0x5e
_0800B9F6:
	movs r4, #0
	ldr r1, _0800BA08 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r5, _0800BA0C @ =gUnk_020229E0
	ldr r7, _0800BA10 @ =gKirbys
	b _0800BA28
	.align 2, 0
_0800BA08: .4byte gUnk_020229D4
_0800BA0C: .4byte gUnk_020229E0
_0800BA10: .4byte gKirbys
_0800BA14:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _0800BA30
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_0800BA28:
	cmp r0, #0
	bne _0800BA14
	orrs r2, r3
	str r2, [r1]
_0800BA30:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	movs r3, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	mov r2, r8
	ldr r0, [r2, #0x4c]
	adds r0, #0xe4
	ldrh r0, [r0]
	movs r5, #0xd4
	lsls r5, r5, #1
	muls r0, r5, r0
	adds r2, r7, #0
	adds r2, #0x40
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	movs r4, #0
	strh r0, [r1, #6]
	mov r2, r8
	ldr r0, [r2, #0x4c]
	adds r0, #0xe4
	ldrh r0, [r0]
	muls r0, r5, r0
	adds r2, r7, #0
	adds r2, #0x44
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	strb r4, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r4, [r1, #4]
	strb r4, [r1, #5]
	strb r6, [r1, #0xc]
	strb r4, [r1, #0xe]
	strb r4, [r1, #0xf]
	movs r0, #2
	strb r0, [r1, #0x10]
	strh r3, [r1, #0x22]
	strh r3, [r1, #0x1a]
	strh r3, [r1, #0x1c]
	strh r3, [r1, #0x1e]
	strh r3, [r1, #0x20]
	strb r4, [r1, #0x11]
	strh r3, [r1, #0x12]
	strh r3, [r1, #0x14]
	strh r3, [r1, #0x16]
	strh r3, [r1, #0x18]
	mov r2, r8
	ldr r0, [r2, #0x4c]
	adds r0, #0x56
	ldrb r0, [r0]
	bl CreateObject
	mov r2, r8
	ldr r1, [r2, #0x4c]
	adds r1, #0xe4
	ldrh r1, [r1]
	muls r1, r5, r1
	adds r1, r1, r7
	str r1, [r0, #0x6c]
	ldr r1, [r0, #8]
	ldr r2, _0800BAC8 @ =0xFFFFF3FF
	ands r1, r2
	movs r2, #0x80
	lsls r2, r2, #0xb
	orrs r1, r2
	str r1, [r0, #8]
	b _0800BD0E
	.align 2, 0
_0800BAC8: .4byte 0xFFFFF3FF
_0800BACC:
	cmp r1, #6
	beq _0800BAD2
	b _0800BC4C
_0800BAD2:
	ldr r0, _0800BB74 @ =gUnk_0203AD10
	mov sb, r0
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0800BB94
	bl sub_08019F0C
	ldr r5, _0800BB78 @ =gKirbys
	ldr r6, _0800BB7C @ =gUnk_0203AD24
	ldrb r1, [r6]
	movs r4, #0xd4
	lsls r4, r4, #1
	muls r1, r4, r1
	adds r1, r1, r5
	adds r0, #6
	ldr r2, _0800BB80 @ =0x00000101
	adds r1, r1, r2
	strb r0, [r1]
	ldrb r0, [r6]
	muls r0, r4, r0
	adds r0, r0, r5
	bl BonusCreateTomato
	ldr r0, _0800BB84 @ =gUnk_0203AD3C
	ldrb r7, [r0]
	adds r1, r7, #0
	muls r1, r4, r1
	adds r1, r1, r5
	adds r1, #0x60
	ldrb r0, [r6]
	muls r0, r4, r0
	adds r3, r0, r5
	adds r2, r3, #0
	adds r2, #0x60
	ldrh r0, [r1]
	ldrh r2, [r2]
	cmp r0, r2
	bne _0800BC12
	ldrb r0, [r3]
	cmp r0, #0
	bne _0800BB32
	adds r0, r3, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r7
	bne _0800BC12
_0800BB32:
	ldr r1, _0800BB88 @ =gUnk_08D60FA4
	ldr r4, _0800BB8C @ =gSongTable
	ldr r2, _0800BB90 @ =0x00000FA4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0800BB58
	movs r1, #0xfa
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0800BC12
_0800BB58:
	cmp r3, #0
	beq _0800BB6A
	mov r2, sb
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0800BC12
_0800BB6A:
	movs r0, #0xfa
	lsls r0, r0, #1
	bl m4aSongNumStart
	b _0800BC12
	.align 2, 0
_0800BB74: .4byte gUnk_0203AD10
_0800BB78: .4byte gKirbys
_0800BB7C: .4byte gUnk_0203AD24
_0800BB80: .4byte 0x00000101
_0800BB84: .4byte gUnk_0203AD3C
_0800BB88: .4byte gUnk_08D60FA4
_0800BB8C: .4byte gSongTable
_0800BB90: .4byte 0x00000FA4
_0800BB94:
	bl sub_08019F0C
	ldr r4, _0800BC2C @ =gKirbys
	adds r0, #6
	ldr r2, _0800BC30 @ =0x00000101
	adds r1, r4, r2
	strb r0, [r1]
	adds r0, r4, #0
	bl BonusCreateTomato
	ldr r0, _0800BC34 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r4
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0800BC12
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800BBD2
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0800BC12
_0800BBD2:
	ldr r1, _0800BC38 @ =gUnk_08D60FA4
	ldr r4, _0800BC3C @ =gSongTable
	ldr r2, _0800BC40 @ =0x00000FA4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0800BBF8
	movs r1, #0xfa
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0800BC12
_0800BBF8:
	cmp r3, #0
	beq _0800BC0A
	mov r2, sb
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0800BC12
_0800BC0A:
	movs r0, #0xfa
	lsls r0, r0, #1
	bl m4aSongNumStart
_0800BC12:
	ldr r2, _0800BC44 @ =gCurLevelInfo
	mov r1, r8
	ldr r0, [r1, #0x4c]
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _0800BC48 @ =0x0000065E
	adds r0, r0, r2
	b _0800BC64
	.align 2, 0
_0800BC2C: .4byte gKirbys
_0800BC30: .4byte 0x00000101
_0800BC34: .4byte gUnk_0203AD3C
_0800BC38: .4byte gUnk_08D60FA4
_0800BC3C: .4byte gSongTable
_0800BC40: .4byte 0x00000FA4
_0800BC44: .4byte gCurLevelInfo
_0800BC48: .4byte 0x0000065E
_0800BC4C:
	cmp r1, #0x63
	bne _0800BC78
	ldr r2, _0800BC70 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _0800BC74 @ =0x0000065E
	adds r0, r0, r1
_0800BC64:
	ldrb r0, [r0]
	movs r1, #1
	bl sub_080029F4
	b _0800BD0E
	.align 2, 0
_0800BC70: .4byte gCurLevelInfo
_0800BC74: .4byte 0x0000065E
_0800BC78:
	ldr r3, _0800BD2C @ =gKirbys
	ldr r0, _0800BD30 @ =gUnk_0203AD3C
	ldrb r5, [r0]
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r1, r5, #0
	muls r1, r2, r1
	adds r1, r1, r3
	adds r1, #0x60
	adds r0, r4, #0
	adds r0, #0xe4
	ldrh r0, [r0]
	muls r0, r2, r0
	adds r3, r0, r3
	adds r2, r3, #0
	adds r2, #0x60
	ldrh r0, [r1]
	ldrh r2, [r2]
	cmp r0, r2
	bne _0800BCF0
	ldrb r0, [r3]
	cmp r0, #0
	bne _0800BCB0
	adds r0, r3, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r5
	bne _0800BCF0
_0800BCB0:
	ldr r1, _0800BD34 @ =gUnk_08D60FA4
	ldr r4, _0800BD38 @ =gSongTable
	ldr r2, _0800BD3C @ =0x00000FA4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0800BCD6
	movs r1, #0xfa
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0800BCF0
_0800BCD6:
	cmp r3, #0
	beq _0800BCE8
	ldr r0, _0800BD40 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0800BCF0
_0800BCE8:
	movs r0, #0xfa
	lsls r0, r0, #1
	bl m4aSongNumStart
_0800BCF0:
	ldr r2, _0800BD44 @ =gCurLevelInfo
	mov r1, r8
	ldr r0, [r1, #0x4c]
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _0800BD48 @ =0x0000065E
	adds r0, r0, r2
	ldrb r0, [r0]
	movs r1, #1
	bl sub_080029F4
_0800BD0E:
	mov r0, r8
	ldrh r1, [r0, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #6]
_0800BD1E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BD2C: .4byte gKirbys
_0800BD30: .4byte gUnk_0203AD3C
_0800BD34: .4byte gUnk_08D60FA4
_0800BD38: .4byte gSongTable
_0800BD3C: .4byte 0x00000FA4
_0800BD40: .4byte gUnk_0203AD10
_0800BD44: .4byte gCurLevelInfo
_0800BD48: .4byte 0x0000065E

	thumb_func_start sub_0800BD4C
sub_0800BD4C: @ 0x0800BD4C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xe2
	ldrb r0, [r0]
	bl hasChest
	cmp r0, #0
	beq _0800BD8C
	ldr r0, _0800BD80 @ =sub_0800BD9C
	str r0, [r4, #0x78]
	ldr r2, _0800BD84 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _0800BD88 @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	bl sub_080029F4
	b _0800BD90
	.align 2, 0
_0800BD80: .4byte sub_0800BD9C
_0800BD84: .4byte gCurLevelInfo
_0800BD88: .4byte 0x0000065E
_0800BD8C:
	ldr r0, _0800BD98 @ =sub_0800AEB0
	str r0, [r4, #0x78]
_0800BD90:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800BD98: .4byte sub_0800AEB0

	thumb_func_start sub_0800BD9C
sub_0800BD9C: @ 0x0800BD9C
	push {lr}
	adds r2, r0, #0
	adds r0, #0xe0
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800BDB0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
_0800BDB0:
	pop {r0}
	bx r0

	thumb_func_start sub_0800BDB4
sub_0800BDB4: @ 0x0800BDB4
	push {lr}
	adds r2, r0, #0
	movs r3, #0
	strh r3, [r2, #0x3c]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2, #0x3e]
	ldrh r0, [r2, #4]
	adds r1, r0, #1
	strh r1, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa
	ble _0800BDD6
	strh r3, [r2, #4]
	ldr r0, _0800BDDC @ =sub_0800BDE0
	str r0, [r2, #0x48]
_0800BDD6:
	pop {r0}
	bx r0
	.align 2, 0
_0800BDDC: .4byte sub_0800BDE0

	thumb_func_start sub_0800BDE0
sub_0800BDE0: @ 0x0800BDE0
	push {lr}
	adds r2, r0, #0
	movs r3, #0
	strh r3, [r2, #0x3c]
	strh r3, [r2, #0x3e]
	ldrh r0, [r2, #4]
	adds r1, r0, #1
	strh r1, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa
	ble _0800BE02
	strh r3, [r2, #4]
	ldr r0, _0800BE08 @ =0x0000FFE0
	strh r0, [r2, #0x3e]
	ldr r0, _0800BE0C @ =sub_0800B97C
	str r0, [r2, #0x48]
_0800BE02:
	pop {r0}
	bx r0
	.align 2, 0
_0800BE08: .4byte 0x0000FFE0
_0800BE0C: .4byte sub_0800B97C
