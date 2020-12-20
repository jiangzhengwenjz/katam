	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
    
	thumb_func_start CreateShadowKirby
CreateShadowKirby: @ 0x08023810
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _08023844 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _08023848 @ =sub_08023910
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802384C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08023854
	.align 2, 0
_08023844: .4byte ObjectMain
_08023848: .4byte sub_08023910
_0802384C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08023854:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #0xc]
	movs r5, #1
	orrs r0, r5
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x5c]
	movs r2, #5
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r1, [r0]
	ldrh r0, [r1, #0x16]
	cmp r0, #0
	beq _080238CE
	subs r0, #1
	adds r1, r5, #0
	lsls r1, r0
	ldr r0, _080238F8 @ =gUnk_020229D0
	ldr r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _080238CE
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_080238CE:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _08023900
	ldr r2, _080238FC @ =gUnk_08351648
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	b _08023906
	.align 2, 0
_080238F8: .4byte gUnk_020229D0
_080238FC: .4byte gUnk_08351648
_08023900:
	adds r0, r4, #0
	bl sub_08023A6C
_08023906:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08023910
sub_08023910: @ 0x08023910
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrh r1, [r5, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802392A
	ldrh r0, [r5, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08023932
_0802392A:
	ldrh r1, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08023932:
	adds r3, r4, #0
	adds r3, #0xb0
	ldr r1, [r3]
	ldrh r0, [r1, #0x16]
	cmp r0, #0
	beq _0802394C
	ldr r2, _08023984 @ =gUnk_020229D0
	subs r0, #1
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
_0802394C:
	ldr r1, [r3]
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _08023978
	adds r1, r0, #0
	ldr r3, _08023988 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _0802398C @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
_08023978:
	adds r0, r5, #0
	bl ObjectDestroy
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023984: .4byte gUnk_020229D0
_08023988: .4byte gCurLevelInfo
_0802398C: .4byte 0x0000065E

	thumb_func_start sub_08023990
sub_08023990: @ 0x08023990
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	bl sub_0803D368
	adds r6, r0, #0
	adds r7, r5, #0
	adds r7, #0xac
	str r6, [r7]
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r6, #0xc]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _08023A5E
	adds r0, r5, #0
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08023A5E
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x44]
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r4, [r0]
	movs r3, #0x1a
	ldrsh r0, [r4, r3]
	mov ip, r0
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	str r0, [sp]
	ldrh r0, [r4, #0x1e]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #8]
	adds r0, r6, #0
	mov r3, ip
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08023A5E
	ldr r3, _08023A68 @ =gCurLevelInfo
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	movs r2, #0xcd
	lsls r2, r2, #3
	muls r0, r2, r0
	adds r1, r3, #0
	adds r1, #0xa0
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa4
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r2, r0
	adds r1, r3, #0
	adds r1, #0xa4
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa6
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r2, r0
	adds r1, r3, #0
	adds r1, #0xa8
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa8
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r2, r0
	adds r1, r3, #0
	adds r1, #0xac
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r5, #0
	adds r2, #0xaa
	strh r0, [r2]
	adds r0, r5, #0
	bl sub_08024FE4
_08023A5E:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023A68: .4byte gCurLevelInfo

	thumb_func_start sub_08023A6C
sub_08023A6C: @ 0x08023A6C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08023AC0 @ =nullsub_114
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x18]
	ldr r1, _08023AC4 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #3
	beq _08023AE0
	cmp r0, #3
	bgt _08023AC8
	cmp r0, #2
	beq _08023AD8
	b _08023AD0
	.align 2, 0
_08023AC0: .4byte nullsub_114
_08023AC4: .4byte 0xFFFFCFFF
_08023AC8:
	cmp r0, #4
	beq _08023AE8
	cmp r0, #5
	beq _08023AF0
_08023AD0:
	adds r1, r4, #0
	adds r1, #0x84
	movs r0, #0
	b _08023AF6
_08023AD8:
	adds r1, r4, #0
	adds r1, #0x84
	movs r0, #1
	b _08023AF6
_08023AE0:
	adds r1, r4, #0
	adds r1, #0x84
	movs r0, #2
	b _08023AF6
_08023AE8:
	adds r1, r4, #0
	adds r1, #0x84
	movs r0, #6
	b _08023AF6
_08023AF0:
	adds r1, r4, #0
	adds r1, #0x84
	movs r0, #9
_08023AF6:
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08023B14
	cmp r0, #0
	bne _08023B0C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_08023B0C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08023B14
sub_08023B14: @ 0x08023B14
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r5, #0
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrb r0, [r0, #0x10]
	cmp r0, #1
	beq _08023B3A
	cmp r0, #1
	bgt _08023B30
	b _08023C2E
_08023B30:
	cmp r0, #2
	beq _08023B88
	cmp r0, #3
	beq _08023BDC
	b _08023C2E
_08023B3A:
	movs r3, #0
	ldr r0, _08023B80 @ =gUnk_0203AD44
	ldrb r1, [r0]
	adds r7, r2, #0
	cmp r5, r1
	bhs _08023B72
	ldr r0, _08023B84 @ =gKirbys
	mov ip, r0
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r2, [r0]
	movs r6, #0xd4
	lsls r6, r6, #1
_08023B54:
	adds r0, r3, #0
	muls r0, r6, r0
	add r0, ip
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, r2
	bne _08023B68
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08023B68:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r1
	blo _08023B54
_08023B72:
	ldr r0, [r7]
	ldrh r0, [r0, #0x12]
	cmp r0, r5
	bhs _08023C2E
_08023B7A:
	movs r0, #0
	b _08023C4E
	.align 2, 0
_08023B80: .4byte gUnk_0203AD44
_08023B84: .4byte gKirbys
_08023B88:
	movs r3, #0
	ldr r0, _08023BD4 @ =gUnk_0203AD44
	ldrb r1, [r0]
	cmp r5, r1
	bhs _08023C2A
	ldr r2, _08023BD8 @ =gKirbys
	mov ip, r2
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r6, [r0]
	adds r2, r1, #0
_08023B9E:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r3, r0
	mov r7, ip
	adds r1, r0, r7
	adds r0, r1, #0
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, r6
	bne _08023BC8
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	movs r7, #0x81
	lsls r7, r7, #1
	adds r1, r1, r7
	ldrh r0, [r0, #0x12]
	ldrb r1, [r1]
	cmp r0, r1
	bhi _08023BC8
	movs r5, #1
_08023BC8:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r2
	blo _08023B9E
	b _08023C2A
	.align 2, 0
_08023BD4: .4byte gUnk_0203AD44
_08023BD8: .4byte gKirbys
_08023BDC:
	movs r3, #0
	ldr r0, _08023C58 @ =gUnk_0203AD44
	ldrb r1, [r0]
	cmp r5, r1
	bhs _08023C2A
	ldr r0, _08023C5C @ =gKirbys
	mov ip, r0
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	mov r8, r0
	adds r6, r1, #0
_08023BF4:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r3, r0
	mov r2, ip
	adds r1, r0, r2
	adds r0, r1, #0
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, r8
	bne _08023C20
	ldr r7, _08023C60 @ =0x00000101
	adds r2, r1, r7
	subs r7, #1
	adds r0, r1, r7
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bne _08023C20
	movs r5, #1
_08023C20:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r6
	blo _08023BF4
_08023C2A:
	cmp r5, #0
	beq _08023B7A
_08023C2E:
	ldr r2, _08023C64 @ =sub_08023990
	adds r0, r4, #0
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
	movs r0, #1
_08023C4E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08023C58: .4byte gUnk_0203AD44
_08023C5C: .4byte gKirbys
_08023C60: .4byte 0x00000101
_08023C64: .4byte sub_08023990

	thumb_func_start sub_08023C68
sub_08023C68: @ 0x08023C68
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _08023D3C @ =sub_08023D68
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, [r4, #8]
	ldr r0, _08023D40 @ =0xFFFFFBFF
	ands r1, r0
	str r1, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xb0
	ldr r0, [r5]
	ldrb r0, [r0, #0xe]
	cmp r0, #6
	beq _08023C9A
	ldr r0, _08023D44 @ =0xFFFFFDFF
	ands r1, r0
	str r1, [r4, #8]
_08023C9A:
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x3e
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r0, [r5]
	ldrh r0, [r0, #0x14]
	cmp r0, #0
	beq _08023CC4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_08023CC4:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08023D48 @ =gKirbys
	ldr r0, _08023D4C @ =gUnk_0203AD3C
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
	bne _08023D34
	ldrb r0, [r4]
	cmp r0, #0
	bne _08023CF8
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08023D34
_08023CF8:
	ldr r1, _08023D50 @ =gUnk_08D60FA4
	ldr r4, _08023D54 @ =gSongTable
	ldr r2, _08023D58 @ =0x00001134
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08023D1C
	ldr r1, _08023D5C @ =0x00001130
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08023D34
_08023D1C:
	cmp r3, #0
	beq _08023D2E
	ldr r0, _08023D60 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08023D34
_08023D2E:
	ldr r0, _08023D64 @ =0x00000226
	bl m4aSongNumStart
_08023D34:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023D3C: .4byte sub_08023D68
_08023D40: .4byte 0xFFFFFBFF
_08023D44: .4byte 0xFFFFFDFF
_08023D48: .4byte gKirbys
_08023D4C: .4byte gUnk_0203AD3C
_08023D50: .4byte gUnk_08D60FA4
_08023D54: .4byte gSongTable
_08023D58: .4byte 0x00001134
_08023D5C: .4byte 0x00001130
_08023D60: .4byte gUnk_0203AD10
_08023D64: .4byte 0x00000226

	thumb_func_start sub_08023D68
sub_08023D68: @ 0x08023D68
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	adds r0, #0x83
	ldrb r0, [r0]
	subs r0, #1
	cmp r0, #5
	bls _08023D78
	b _08023F2C
_08023D78:
	lsls r0, r0, #2
	ldr r1, _08023D84 @ =_08023D88
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08023D84: .4byte _08023D88
_08023D88: @ jump table
	.4byte _08023DA0 @ case 0
	.4byte _08023F2C @ case 1
	.4byte _08023EA2 @ case 2
	.4byte _08023EC6 @ case 3
	.4byte _08023EF0 @ case 4
	.4byte _08023F12 @ case 5
_08023DA0:
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08023DE0
	adds r0, r2, #0
	adds r0, #0x50
	ldrh r1, [r0]
	adds r1, #0x20
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	ldr r1, _08023DCC @ =0xFFFFFEB4
	adds r5, r0, #0
	cmp r3, r1
	bge _08023DD4
	ldr r0, _08023DD0 @ =0x0000FEB4
	strh r0, [r5]
	b _08023E04
	.align 2, 0
_08023DCC: .4byte 0xFFFFFEB4
_08023DD0: .4byte 0x0000FEB4
_08023DD4:
	movs r0, #0xa6
	lsls r0, r0, #1
	cmp r3, r0
	ble _08023E04
	strh r0, [r5]
	b _08023E04
_08023DE0:
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xa6
	lsls r3, r3, #1
	adds r5, r1, #0
	cmp r0, r3
	ble _08023DFC
	strh r3, [r5]
	b _08023E04
_08023DFC:
	ldr r1, _08023E20 @ =0xFFFFFEB4
	cmp r0, r1
	bge _08023E04
	strh r1, [r5]
_08023E04:
	adds r1, r2, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r4, [r0, #0x40]
	ldr r0, [r2, #0x40]
	subs r3, r4, r0
	adds r6, r1, #0
	cmp r3, #0
	blt _08023E28
	ldr r0, _08023E24 @ =0x00002FFF
	cmp r3, r0
	ble _08023E30
	b _08023E50
	.align 2, 0
_08023E20: .4byte 0xFFFFFEB4
_08023E24: .4byte 0x00002FFF
_08023E28:
	subs r1, r0, r4
	ldr r0, _08023E44 @ =0x00002FFF
	cmp r1, r0
	bgt _08023E50
_08023E30:
	ldr r0, [r6]
	ldr r0, [r0, #0x44]
	ldr r1, [r2, #0x44]
	subs r3, r0, r1
	cmp r3, #0
	blt _08023E48
	ldr r0, _08023E44 @ =0x00002FFF
	cmp r3, r0
	ble _08023E5C
	b _08023E50
	.align 2, 0
_08023E44: .4byte 0x00002FFF
_08023E48:
	subs r1, r1, r0
	ldr r0, _08023E6C @ =0x00002FFF
	cmp r1, r0
	ble _08023E5C
_08023E50:
	adds r0, r2, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #6
	bne _08023E70
_08023E5C:
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	ble _08023F2C
	b _08023E88
	.align 2, 0
_08023E6C: .4byte 0x00002FFF
_08023E70:
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	ble _08023F2C
	adds r0, r2, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	beq _08023E90
_08023E88:
	adds r0, r2, #0
	bl sub_08025040
	b _08023F2C
_08023E90:
	strh r0, [r5]
	adds r1, r2, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	adds r1, #0x31
	movs r0, #3
	b _08023F2A
_08023EA2:
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	adds r0, r2, #0
	adds r0, #0x52
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0x7f
	bgt _08023F2C
	adds r0, r2, #0
	adds r0, #0x83
	strb r1, [r0]
	ldr r0, [r2, #8]
	subs r1, #7
	ands r0, r1
	str r0, [r2, #8]
	b _08023F2C
_08023EC6:
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08023F2C
	adds r1, r2, #0
	adds r1, #0x83
	movs r0, #5
	strb r0, [r1]
	ldr r0, [r2, #0x18]
	ldr r1, _08023EEC @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r2, #0x18]
	adds r1, r2, #0
	adds r1, #0x85
	b _08023F28
	.align 2, 0
_08023EEC: .4byte 0xFFFFCFFF
_08023EF0:
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08023F2C
	adds r3, r2, #0
	adds r3, #0x83
	movs r1, #0
	movs r0, #6
	strb r0, [r3]
	strh r1, [r2, #4]
	b _08023F2C
_08023F12:
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08023F2C
	movs r0, #0
	strh r0, [r2, #4]
	adds r1, r2, #0
	adds r1, #0x83
_08023F28:
	movs r0, #1
_08023F2A:
	strb r0, [r1]
_08023F2C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08023F34
sub_08023F34: @ 0x08023F34
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r3, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	ldr r1, [r4, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _08023F54
	ldr r0, _08023F50 @ =0x00002FFF
	cmp r2, r0
	ble _08023F5C
	b _08023F82
	.align 2, 0
_08023F50: .4byte 0x00002FFF
_08023F54:
	subs r1, r1, r0
	ldr r0, _08023F74 @ =0x00002FFF
	cmp r1, r0
	bgt _08023F82
_08023F5C:
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _08023F78
	ldr r0, _08023F74 @ =0x00002FFF
	cmp r2, r0
	ble _08023F80
	b _08023F82
	.align 2, 0
_08023F74: .4byte 0x00002FFF
_08023F78:
	subs r1, r1, r0
	ldr r0, _08023FB8 @ =0x00002FFF
	cmp r1, r0
	bgt _08023F82
_08023F80:
	movs r3, #1
_08023F82:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	ble _08023F94
	cmp r3, #0
	bne _08023F9C
_08023F94:
	adds r2, r4, #0
	adds r2, #0xb0
	cmp r0, #0x80
	ble _08024068
_08023F9C:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r1, [r1, #0xe]
	subs r1, #1
	adds r2, r0, #0
	cmp r1, #5
	bhi _08023FD8
	lsls r0, r1, #2
	ldr r1, _08023FBC @ =_08023FC0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08023FB8: .4byte 0x00002FFF
_08023FBC: .4byte _08023FC0
_08023FC0: @ jump table
	.4byte _08023FD8 @ case 0
	.4byte _08023FF0 @ case 1
	.4byte _08023FF8 @ case 2
	.4byte _08024000 @ case 3
	.4byte _08024046 @ case 4
	.4byte _08024008 @ case 5
_08023FD8:
	movs r0, #0
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08024068
	b _08024060
_08023FF0:
	adds r0, r4, #0
	bl sub_080250F8
	b _080240E8
_08023FF8:
	adds r0, r4, #0
	bl sub_08025134
	b _080240E8
_08024000:
	adds r0, r4, #0
	bl sub_08025170
	b _080240E8
_08024008:
	movs r2, #0
	ldr r0, _08024050 @ =gUnk_0203AD34
	ldrb r0, [r0]
	cmp r0, #0
	bne _08024060
	ldr r0, _08024054 @ =gUnk_0203AD44
	ldrb r1, [r0]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xff
	beq _08024042
	ldr r6, _08024058 @ =gKirbys
	movs r5, #0xd4
	lsls r5, r5, #1
	ldr r3, _0802405C @ =0x00000103
_08024028:
	adds r0, r1, #0
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0x1a
	bne _08024038
	movs r2, #1
_08024038:
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xff
	bne _08024028
_08024042:
	cmp r2, #0
	bne _08024060
_08024046:
	adds r0, r4, #0
	bl sub_080251AC
	b _080240E8
	.align 2, 0
_08024050: .4byte gUnk_0203AD34
_08024054: .4byte gUnk_0203AD44
_08024058: .4byte gKirbys
_0802405C: .4byte 0x00000103
_08024060:
	adds r0, r4, #0
	bl sub_08024F54
	b _080240E8
_08024068:
	ldr r0, [r2]
	ldrb r0, [r0, #0xe]
	cmp r0, #6
	beq _080240E8
	movs r6, #0
	ldr r0, _080240AC @ =gUnk_0203AD44
	ldrb r1, [r0]
	cmp r6, r1
	bhs _080240E8
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	mov ip, r0
	ldr r5, _080240B0 @ =0x00002FFF
	adds r7, r1, #0
_08024086:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _080240B4 @ =gKirbys
	adds r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, ip
	bne _080240DE
	ldr r3, [r1, #0x40]
	ldr r0, [r4, #0x40]
	subs r2, r3, r0
	cmp r2, #0
	blt _080240B8
	cmp r2, r5
	ble _080240BE
	b _080240DE
	.align 2, 0
_080240AC: .4byte gUnk_0203AD44
_080240B0: .4byte 0x00002FFF
_080240B4: .4byte gKirbys
_080240B8:
	subs r0, r0, r3
	cmp r0, r5
	bgt _080240DE
_080240BE:
	ldr r3, [r1, #0x44]
	ldr r0, [r4, #0x44]
	subs r2, r3, r0
	cmp r2, #0
	blt _080240CE
	cmp r2, r5
	ble _080240D4
	b _080240DE
_080240CE:
	subs r0, r0, r3
	cmp r0, r5
	bgt _080240DE
_080240D4:
	ldr r0, [r1, #0xc]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08024060
_080240DE:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, r7
	blo _08024086
_080240E8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080240F0
sub_080240F0: @ 0x080240F0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #9
	beq _08024112
	cmp r0, #9
	bgt _08024108
	cmp r0, #0
	beq _080241A4
	b _080241B8
_08024108:
	cmp r0, #0xa
	beq _0802412A
	cmp r0, #0xb
	beq _0802418A
	b _080241B8
_08024112:
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080241B8
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	movs r0, #0xa
	strb r0, [r2]
	b _080241B8
_0802412A:
	ldr r1, [r4, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r4, #8]
	ldrb r0, [r4, #1]
	movs r6, #3
	ands r6, r0
	cmp r6, #0
	bne _08024164
	movs r7, #1
	eors r1, r7
	str r1, [r4, #8]
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r1, [r5]
	adds r0, r4, #0
	bl sub_080C3694
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _0802415E
	strb r6, [r5]
_0802415E:
	ldr r0, [r4, #8]
	eors r0, r7
	str r0, [r4, #8]
_08024164:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x30
	ble _080241B8
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xb
	strb r0, [r1]
	movs r0, #0
	strh r0, [r4, #4]
	b _080241B8
_0802418A:
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080241B8
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	movs r0, #0
	strb r0, [r2]
	strh r0, [r4, #4]
	b _080241B8
_080241A4:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	ble _080241B8
	adds r0, r4, #0
	bl sub_08024F54
_080241B8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080241C0
sub_080241C0: @ 0x080241C0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #0xc
	beq _080241E2
	cmp r0, #0xc
	bgt _080241D8
	cmp r0, #0
	beq _0802427E
	b _08024292
_080241D8:
	cmp r0, #0xd
	beq _080241FA
	cmp r0, #0xe
	beq _08024264
	b _08024292
_080241E2:
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08024292
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	movs r0, #0xd
	strb r0, [r2]
	b _08024292
_080241FA:
	ldr r1, [r4, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r4, #8]
	ldrb r0, [r4, #1]
	movs r6, #3
	ands r6, r0
	cmp r6, #0
	bne _08024242
	movs r7, #1
	eors r1, r7
	str r1, [r4, #8]
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r1, [r5]
	adds r0, r4, #0
	bl sub_080BB080
	adds r0, r4, #0
	bl sub_080BB470
	ldrb r1, [r5]
	adds r0, r4, #0
	bl sub_080BB804
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0802423C
	strb r6, [r5]
_0802423C:
	ldr r0, [r4, #8]
	eors r0, r7
	str r0, [r4, #8]
_08024242:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x30
	ble _08024292
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xe
	strb r0, [r1]
	b _08024292
_08024264:
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08024292
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	movs r0, #0
	strb r0, [r2]
	strh r0, [r4, #4]
	b _08024292
_0802427E:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	ble _08024292
	adds r0, r4, #0
	bl sub_08024F54
_08024292:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08024298
sub_08024298: @ 0x08024298
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x83
	ldrb r0, [r6]
	cmp r0, #0xf
	beq _080242B6
	cmp r0, #0xf
	bgt _080242B0
	cmp r0, #0
	beq _08024318
	b _0802432C
_080242B0:
	cmp r0, #0x10
	beq _080242D2
	b _0802432C
_080242B6:
	ldr r1, [r5, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802432C
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #8]
	movs r1, #0
	movs r0, #0x10
	strb r0, [r6]
	strh r1, [r5, #4]
	b _0802432C
_080242D2:
	ldr r1, [r5, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802432C
	movs r2, #4
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bne _080242F6
	movs r4, #1
	eors r1, r4
	str r1, [r5, #8]
	adds r0, r5, #0
	bl sub_080B1850
	ldr r0, [r5, #8]
	eors r0, r4
	str r0, [r5, #8]
_080242F6:
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x58
	ble _0802432C
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	movs r0, #0
	strb r0, [r6]
	movs r0, #0
	strh r0, [r5, #4]
	b _0802432C
_08024318:
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	ble _0802432C
	adds r0, r5, #0
	bl sub_08024F54
_0802432C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08024334
sub_08024334: @ 0x08024334
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #0x11
	beq _08024352
	cmp r0, #0x11
	bgt _0802434C
	cmp r0, #0
	beq _080243B8
	b _080243CC
_0802434C:
	cmp r0, #0x12
	beq _0802436A
	b _080243CC
_08024352:
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080243CC
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	movs r0, #0x12
	strb r0, [r2]
	b _080243CC
_0802436A:
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0802438A
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #6
	bne _0802438A
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0802438A
	adds r0, r4, #0
	bl sub_08024A18
_0802438A:
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080243CC
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	ble _080243CC
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0
	strb r0, [r1]
	movs r0, #0
	strh r0, [r4, #4]
	b _080243CC
_080243B8:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	ble _080243CC
	adds r0, r4, #0
	bl sub_08024F54
_080243CC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080243D4
sub_080243D4: @ 0x080243D4
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080243F6
	adds r0, r2, #0
	adds r0, #0xb0
	ldr r0, [r0]
	movs r3, #6
	ldrsh r1, [r0, r3]
	ldr r0, [r2, #0x40]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08024414
	b _08024408
_080243F6:
	adds r0, r2, #0
	adds r0, #0xb0
	ldr r0, [r0]
	movs r5, #6
	ldrsh r1, [r0, r5]
	ldr r0, [r2, #0x40]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08024414
_08024408:
	lsls r0, r1, #8
	str r0, [r2, #0x40]
	adds r0, r2, #0
	bl sub_08025098
	b _0802463E
_08024414:
	adds r1, r2, #0
	adds r1, #0x83
	ldrb r0, [r1]
	subs r0, #2
	adds r4, r1, #0
	cmp r0, #4
	bls _08024424
	b _0802463E
_08024424:
	lsls r0, r0, #2
	ldr r1, _08024430 @ =_08024434
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08024430: .4byte _08024434
_08024434: @ jump table
	.4byte _08024448 @ case 0
	.4byte _080244C4 @ case 1
	.4byte _08024574 @ case 2
	.4byte _08024582 @ case 3
	.4byte _080245FC @ case 4
_08024448:
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08024488
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	ldr r0, _08024474 @ =0xFFFFFE24
	cmp r3, r0
	bge _0802447C
	ldr r0, _08024478 @ =0x0000FE24
	strh r0, [r1]
	b _080244A6
	.align 2, 0
_08024474: .4byte 0xFFFFFE24
_08024478: .4byte 0x0000FE24
_0802447C:
	movs r0, #0xee
	lsls r0, r0, #1
	cmp r3, r0
	ble _080244A6
	strh r0, [r1]
	b _080244A6
_08024488:
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xee
	lsls r3, r3, #1
	cmp r0, r3
	bgt _080244A4
	ldr r3, _080244C0 @ =0xFFFFFE24
	cmp r0, r3
	bge _080244A6
_080244A4:
	strh r3, [r1]
_080244A6:
	adds r0, r2, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	bne _080244B2
	b _0802463E
_080244B2:
	adds r0, r2, #0
	adds r0, #0x52
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0]
	movs r0, #3
	b _0802463C
	.align 2, 0
_080244C0: .4byte 0xFFFFFE24
_080244C4:
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08024504
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	ldr r0, _080244F0 @ =0xFFFFFE24
	cmp r3, r0
	bge _080244F8
	ldr r0, _080244F4 @ =0x0000FE24
	strh r0, [r1]
	b _08024522
	.align 2, 0
_080244F0: .4byte 0xFFFFFE24
_080244F4: .4byte 0x0000FE24
_080244F8:
	movs r0, #0xee
	lsls r0, r0, #1
	cmp r3, r0
	ble _08024522
	strh r0, [r1]
	b _08024522
_08024504:
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xee
	lsls r3, r3, #1
	cmp r0, r3
	bgt _08024520
	ldr r3, _08024550 @ =0xFFFFFE24
	cmp r0, r3
	bge _08024522
_08024520:
	strh r3, [r1]
_08024522:
	adds r3, r2, #0
	adds r3, #0x85
	ldrb r0, [r3]
	cmp r0, #0
	beq _08024558
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	bgt _0802453C
	b _0802463E
_0802453C:
	ldr r0, [r2, #0x18]
	ldr r1, _08024554 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r2, #0x18]
	movs r0, #0
	strb r0, [r3]
	b _0802463E
	.align 2, 0
_08024550: .4byte 0xFFFFFE24
_08024554: .4byte 0xFFFFCFFF
_08024558:
	adds r0, r2, #0
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x7f
	bgt _0802463E
	movs r0, #4
	strb r0, [r4]
	ldr r0, [r2, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	b _0802463E
_08024574:
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0802463E
	movs r0, #5
	b _0802463C
_08024582:
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080245C0
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	ldr r0, _080245AC @ =0xFFFFFE24
	cmp r3, r0
	bge _080245B4
	ldr r0, _080245B0 @ =0x0000FE24
	strh r0, [r1]
	b _080245DE
	.align 2, 0
_080245AC: .4byte 0xFFFFFE24
_080245B0: .4byte 0x0000FE24
_080245B4:
	movs r0, #0xee
	lsls r0, r0, #1
	cmp r3, r0
	ble _080245DE
	strh r0, [r1]
	b _080245DE
_080245C0:
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xee
	lsls r3, r3, #1
	cmp r0, r3
	bgt _080245DC
	ldr r3, _080245F8 @ =0xFFFFFE24
	cmp r0, r3
	bge _080245DE
_080245DC:
	strh r3, [r1]
_080245DE:
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0802463E
	movs r1, #0
	movs r0, #6
	strb r0, [r4]
	strh r1, [r2, #4]
	b _0802463E
	.align 2, 0
_080245F8: .4byte 0xFFFFFE24
_080245FC:
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r3, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _08024618
	adds r0, r3, #0
	adds r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08024628
	b _08024624
_08024618:
	adds r0, r3, #0
	subs r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08024628
_08024624:
	movs r0, #0
	strh r0, [r1]
_08024628:
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0802463E
	movs r0, #0
	strh r0, [r2, #4]
	movs r0, #2
_0802463C:
	strb r0, [r4]
_0802463E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08024644
sub_08024644: @ 0x08024644
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08024660
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r0, #6
	b _08024666
_08024660:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	subs r0, #6
_08024666:
	mov sb, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	subs r0, #8
	mov ip, r0
	movs r4, #0
	ldr r1, _08024688 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _0802468C @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080246A4
	.align 2, 0
_08024688: .4byte gUnk_020229D4
_0802468C: .4byte gUnk_020229E0
_08024690:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080246AC
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080246A4:
	cmp r0, #0
	bne _08024690
	orrs r2, r3
	str r2, [r1]
_080246AC:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r0, sb
	strh r0, [r1, #6]
	mov r7, ip
	strh r7, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xc9
	strb r0, [r1, #0xc]
	strb r3, [r1, #0xe]
	strb r3, [r1, #0xf]
	ldr r0, [r5, #8]
	ands r0, r4
	strb r0, [r1, #0x10]
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
	mov r2, r8
	ldrb r0, [r2]
	bl CreateObject
	str r5, [r0, #0x70]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802470C
sub_0802470C: @ 0x0802470C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _08024740 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _08024744 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08024748
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08024750
	.align 2, 0
_08024740: .4byte ObjectMain
_08024744: .4byte ObjectDestroy
_08024748:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08024750:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	subs r1, #7
	movs r2, #3
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #0xa
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802479A
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_0802479A:
	adds r0, r4, #0
	bl ObjectInitSprite
	movs r1, #0
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r1, [r0]
	ldr r0, _080247D8 @ =sub_0809F840
	str r0, [r4, #0x7c]
	ldr r2, _080247DC @ =gUnk_08351648
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
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
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080247D8: .4byte sub_0809F840
_080247DC: .4byte gUnk_08351648

	thumb_func_start sub_080247E0
sub_080247E0: @ 0x080247E0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x70]
	adds r0, #0xac
	ldr r4, [r0]
	ldr r2, _08024830 @ =sub_08024998
	adds r0, r5, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r2, [r4, #0x40]
	ldr r1, [r5, #0x40]
	subs r0, r2, r1
	cmp r0, #0
	bge _08024800
	subs r0, r1, r2
_08024800:
	asrs r0, r0, #8
	cmp r0, #0x31
	bgt _08024840
	ldr r2, _08024834 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08024838 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0802483C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x7f
	ands r0, r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r1, r5, #0
	adds r1, #0x50
	strh r0, [r1]
	adds r2, r5, #0
	adds r2, #0x52
	movs r0, #0xc0
	lsls r0, r0, #1
	b _080248E0
	.align 2, 0
_08024830: .4byte sub_08024998
_08024834: .4byte gRngVal
_08024838: .4byte 0x00196225
_0802483C: .4byte 0x3C6EF35F
_08024840:
	cmp r0, #0x63
	bgt _0802487C
	ldr r2, _08024870 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08024874 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08024878 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x7f
	ands r0, r1
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r1, r5, #0
	adds r1, #0x50
	strh r0, [r1]
	adds r2, r5, #0
	adds r2, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
	b _080248E0
	.align 2, 0
_08024870: .4byte gRngVal
_08024874: .4byte 0x00196225
_08024878: .4byte 0x3C6EF35F
_0802487C:
	cmp r0, #0x95
	bgt _080248B8
	ldr r2, _080248AC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080248B0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080248B4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x7f
	ands r0, r1
	movs r2, #0x90
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r1, r5, #0
	adds r1, #0x50
	strh r0, [r1]
	adds r2, r5, #0
	adds r2, #0x52
	movs r0, #0xa0
	lsls r0, r0, #2
	b _080248E0
	.align 2, 0
_080248AC: .4byte gRngVal
_080248B0: .4byte 0x00196225
_080248B4: .4byte 0x3C6EF35F
_080248B8:
	ldr r2, _0802496C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08024970 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08024974 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x7f
	ands r0, r1
	movs r2, #0xb0
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r1, r5, #0
	adds r1, #0x50
	strh r0, [r1]
	adds r2, r5, #0
	adds r2, #0x52
	movs r0, #0xc0
	lsls r0, r0, #2
_080248E0:
	strh r0, [r2]
	adds r2, r1, #0
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080248F4
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080248F4:
	ldr r0, [r5, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	ldr r1, _08024978 @ =gKirbys
	ldr r0, _0802497C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08024966
	ldrb r0, [r5]
	cmp r0, #0
	bne _0802492A
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08024966
_0802492A:
	ldr r1, _08024980 @ =gUnk_08D60FA4
	ldr r4, _08024984 @ =gSongTable
	ldr r2, _08024988 @ =0x00000A4C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0802494E
	ldr r1, _0802498C @ =0x00000A48
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08024966
_0802494E:
	cmp r3, #0
	beq _08024960
	ldr r0, _08024990 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08024966
_08024960:
	ldr r0, _08024994 @ =0x00000149
	bl m4aSongNumStart
_08024966:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802496C: .4byte gRngVal
_08024970: .4byte 0x00196225
_08024974: .4byte 0x3C6EF35F
_08024978: .4byte gKirbys
_0802497C: .4byte gUnk_0203AD3C
_08024980: .4byte gUnk_08D60FA4
_08024984: .4byte gSongTable
_08024988: .4byte 0x00000A4C
_0802498C: .4byte 0x00000A48
_08024990: .4byte gUnk_0203AD10
_08024994: .4byte 0x00000149

	thumb_func_start sub_08024998
sub_08024998: @ 0x08024998
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x70]
	ldr r1, [r0, #8]
	movs r0, #1
	ands r1, r0
	ldr r0, [r4, #8]
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080249C8
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080249D6
	b _080249D2
_080249C8:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080249D6
_080249D2:
	movs r0, #0
	strh r0, [r1]
_080249D6:
	ldrh r1, [r4, #4]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080249EC
	movs r2, #6
	rsbs r2, r2, #0
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_08097E9C
_080249EC:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	beq _08024A10
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_0809DA30
	movs r0, #0
	str r0, [r4, #0x70]
_08024A10:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08024A18
sub_08024A18: @ 0x08024A18
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _08024A48 @ =sub_08024B44
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08024A4C @ =sub_0802525C
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08024A50
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _08024A58
	.align 2, 0
_08024A48: .4byte sub_08024B44
_08024A4C: .4byte sub_0802525C
_08024A50:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_08024A58:
	adds r0, r5, #0
	bl sub_0803E380
	movs r7, #0
	movs r0, #2
	strb r0, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x44]
	str r4, [r5, #0x70]
	strh r7, [r5, #4]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _08024B34 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r6, #1
	adds r0, r6, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08024AA8
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r5, #8]
_08024AA8:
	adds r1, r5, #0
	adds r1, #0x63
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	str r0, [r5, #8]
	movs r0, #0x80
	str r0, [r5, #0x68]
	ldr r0, [r5, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x5c]
	ldr r0, [r4, #0x40]
	ldr r1, _08024B38 @ =0xFFFFFA00
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x44]
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r1]
	subs r1, #2
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	movs r4, #4
	rsbs r4, r4, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_0803E2B0
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_0803E308
	adds r1, r5, #0
	adds r1, #0x10
	ldr r3, _08024B3C @ =0x000003A6
	str r7, [sp]
	movs r0, #0x1a
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0x10
	bl sub_080708DC
	ldr r0, _08024B40 @ =gUnk_0203AD34
	strb r6, [r0]
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08024B34: .4byte gUnk_03000510
_08024B38: .4byte 0xFFFFFA00
_08024B3C: .4byte 0x000003A6
_08024B40: .4byte gUnk_0203AD34

	thumb_func_start sub_08024B44
sub_08024B44: @ 0x08024B44
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	ldr r0, _08024B68 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08024B6C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08024B74
	.align 2, 0
_08024B68: .4byte gCurTask
_08024B6C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08024B74:
	adds r5, r0, #0
	ldr r2, _08024BE0 @ =gKirbys
	ldr r0, _08024BE4 @ =gUnk_0203AD3C
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
	bne _08024C28
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08024BF0
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _08024C4C
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #0x10
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _08024BE8 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _08024BEC @ =0x0400000A
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
	b _08024C4C
	.align 2, 0
_08024BE0: .4byte gKirbys
_08024BE4: .4byte gUnk_0203AD3C
_08024BE8: .4byte 0xFFF7FFFF
_08024BEC: .4byte 0x0400000A
_08024BF0:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _08024C4C
	movs r0, #0x10
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _08024C20 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _08024C24 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _08024C4C
	.align 2, 0
_08024C20: .4byte 0xFFF7FFFF
_08024C24: .4byte 0x0400000A
_08024C28:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _08024C42
	ldr r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _08024C42
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0x10]
_08024C42:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_08024C4C:
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08024C5A
	b _08024E12
_08024C5A:
	ldr r0, [r5, #8]
	movs r7, #4
	orrs r0, r7
	str r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	mov r8, r1
	mov r6, r8
	ands r6, r0
	cmp r6, #0
	bne _08024CDC
	adds r4, r5, #0
	adds r4, #0x52
	ldrh r0, [r4]
	subs r0, #0x20
	strh r0, [r4]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _08024C8A
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r4]
_08024C8A:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08024CAE
	adds r0, r5, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r5, #0x44]
	subs r0, r0, r1
	str r0, [r5, #0x44]
_08024CAE:
	adds r0, r5, #0
	bl sub_0809D8C8
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08024CDC
	ldr r0, _08024D14 @ =0x000003A7
	strh r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x2a
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r5, #8]
	mov r1, r8
	orrs r0, r1
	ldr r1, _08024D18 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r5, #8]
	strh r6, [r4]
_08024CDC:
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08024CEA
	b _08024E0C
_08024CEA:
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _08024D5E
	adds r1, r5, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08024D24
	ldr r2, _08024D1C @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _08024D20 @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _08024D26
	.align 2, 0
_08024D14: .4byte 0x000003A7
_08024D18: .4byte 0xFFFFFDFF
_08024D1C: .4byte gCurLevelInfo
_08024D20: .4byte 0x0000065E
_08024D24:
	movs r1, #0xff
_08024D26:
	cmp r1, #0xff
	beq _08024D5E
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _08024DF0 @ =gUnk_02022EB0
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
	ldr r2, _08024DF4 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_08024D5E:
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _08024E0C
	ldr r2, [r5, #0x6c]
	ldr r0, _08024DF8 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r5, #8]
	cmp r2, #0
	beq _08024E0C
	ldrb r0, [r2]
	cmp r0, #0
	bne _08024E0C
	adds r0, r2, #0
	adds r0, #0x56
	ldr r1, _08024DFC @ =gUnk_0203AD30
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _08024E0C
	ldr r1, _08024E00 @ =0x00000103
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08024E0C
	adds r3, r2, #0
	adds r3, #0xdd
	ldrb r0, [r3]
	cmp r0, #0
	bne _08024E0C
	subs r1, #3
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08024E0C
	adds r4, r2, #0
	adds r4, #0xd4
	ldrh r0, [r4]
	cmp r0, #0x27
	beq _08024E0C
	cmp r0, #0x7a
	bhi _08024E0C
	adds r1, #0x10
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _08024E0C
	ldr r0, [r2, #8]
	ldr r1, _08024E04 @ =0x03800B00
	ands r0, r1
	cmp r0, #0
	bne _08024E0C
	ldr r1, [r2, #0x78]
	ldr r0, _08024E08 @ =sub_0804BD00
	cmp r1, r0
	beq _08024E0C
	movs r0, #0x1a
	strb r0, [r3]
	adds r0, r2, #0
	bl sub_08054C0C
	movs r0, #0xf
	strh r0, [r4]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
	b _08024E12
	.align 2, 0
_08024DF0: .4byte gUnk_02022EB0
_08024DF4: .4byte gUnk_02022F50
_08024DF8: .4byte 0xFFFBFFFF
_08024DFC: .4byte gUnk_0203AD30
_08024E00: .4byte 0x00000103
_08024E04: .4byte 0x03800B00
_08024E08: .4byte sub_0804BD00
_08024E0C:
	adds r0, r5, #0
	bl sub_0806F8BC
_08024E12:
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08024E20
sub_08024E20: @ 0x08024E20
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #4
	beq _08024F22
	ldr r0, _08024E88 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08024F22
	ldr r1, [r5, #0xc]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _08024F22
	orrs r1, r2
	str r1, [r5, #0xc]
	ldr r3, _08024E8C @ =gUnk_082DEAF4
	ldr r2, _08024E90 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08024E94 @ =0x00196225
	muls r0, r1, r0
	ldr r7, _08024E98 @ =0x3C6EF35F
	adds r0, r0, r7
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r0, r0, r3
	ldrb r0, [r0]
	adds r0, #0x5e
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r4, #0
	ldr r1, _08024E9C @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _08024EA0 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov ip, r7
	b _08024EB8
	.align 2, 0
_08024E88: .4byte gUnk_0203AD10
_08024E8C: .4byte gUnk_082DEAF4
_08024E90: .4byte gRngVal
_08024E94: .4byte 0x00196225
_08024E98: .4byte 0x3C6EF35F
_08024E9C: .4byte gUnk_020229D4
_08024EA0: .4byte gUnk_020229E0
_08024EA4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _08024EC0
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_08024EB8:
	cmp r0, #0
	bne _08024EA4
	orrs r2, r3
	str r2, [r1]
_08024EC0:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	movs r3, #0
	strh r0, [r1, #6]
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	mov r0, r8
	strb r0, [r1, #0xc]
	movs r0, #0
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	movs r0, #2
	strb r0, [r1, #0x10]
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
	mov r2, ip
	ldrb r0, [r2]
	bl CreateObject
	movs r2, #0xad
	lsls r2, r2, #2
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
_08024F22:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08024F2C
sub_08024F2C: @ 0x08024F2C
	push {lr}
	adds r2, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _08024F46
	ldr r0, [r2, #8]
	ldr r1, _08024F4C @ =gUnk_02008340
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, _08024F50 @ =nullsub_114
	str r0, [r2, #0x78]
_08024F46:
	pop {r0}
	bx r0
	.align 2, 0
_08024F4C: .4byte gUnk_02008340
_08024F50: .4byte nullsub_114

	thumb_func_start sub_08024F54
sub_08024F54: @ 0x08024F54
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08024FA4 @ =sub_080243D4
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, [r4, #8]
	ldr r0, _08024FA8 @ =0xFFFFFBFF
	ands r1, r0
	str r1, [r4, #8]
	adds r3, r4, #0
	adds r3, #0xb0
	ldr r0, [r3]
	ldrb r0, [r0, #0xe]
	cmp r0, #6
	beq _08024F86
	ldr r0, _08024FAC @ =0xFFFFFDFF
	ands r1, r0
	str r1, [r4, #8]
_08024F86:
	ldr r2, [r4, #8]
	movs r0, #3
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r4, #8]
	ldr r0, [r3]
	movs r3, #6
	ldrsh r1, [r0, r3]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08024FB0
	movs r0, #1
	orrs r2, r0
	b _08024FB6
	.align 2, 0
_08024FA4: .4byte sub_080243D4
_08024FA8: .4byte 0xFFFFFBFF
_08024FAC: .4byte 0xFFFFFDFF
_08024FB0:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_08024FB6:
	str r2, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08024FC0
sub_08024FC0: @ 0x08024FC0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08024FDC @ =sub_08025214
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024FDC: .4byte sub_08025214

	thumb_func_start nullsub_114
nullsub_114: @ 0x08024FE0
	bx lr
	.align 2, 0

	thumb_func_start sub_08024FE4
sub_08024FE4: @ 0x08024FE4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0802502C @ =sub_08025034
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r1, r0
	ldr r0, _08025030 @ =0xFFFFFBFF
	ands r1, r0
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	subs r0, #0x3e
	ands r1, r0
	str r1, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #0x14]
	cmp r0, #0
	beq _08025026
	movs r0, #1
	orrs r1, r0
	str r1, [r4, #8]
_08025026:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802502C: .4byte sub_08025034
_08025030: .4byte 0xFFFFFBFF

	thumb_func_start sub_08025034
sub_08025034: @ 0x08025034
	push {lr}
	bl sub_08023C68
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08025040
sub_08025040: @ 0x08025040
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08025090 @ =sub_08023F34
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrb r0, [r0, #0xe]
	cmp r0, #6
	beq _0802506C
	ldr r0, [r4, #8]
	ldr r1, _08025094 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r4, #8]
_0802506C:
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r2]
	ldrb r0, [r0, #0xe]
	cmp r0, #6
	bne _0802508A
	movs r0, #0x80
	strh r0, [r4, #4]
_0802508A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08025090: .4byte sub_08023F34
_08025094: .4byte 0xFFFFFDFF

	thumb_func_start sub_08025098
sub_08025098: @ 0x08025098
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080250D8 @ =sub_080250EC
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r1, r0
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #0x14]
	cmp r0, #0
	beq _080250DC
	movs r0, #1
	orrs r1, r0
	b _080250E2
	.align 2, 0
_080250D8: .4byte sub_080250EC
_080250DC:
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
_080250E2:
	str r1, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080250EC
sub_080250EC: @ 0x080250EC
	ldr r1, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #5
	orrs r1, r2
	str r1, [r0, #8]
	bx lr

	thumb_func_start sub_080250F8
sub_080250F8: @ 0x080250F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0802512C @ =sub_080240F0
	movs r1, #9
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	ldr r1, _08025130 @ =0xFFFFFDFF
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r4, #0x9f
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802512C: .4byte sub_080240F0
_08025130: .4byte 0xFFFFFDFF

	thumb_func_start sub_08025134
sub_08025134: @ 0x08025134
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08025168 @ =sub_080241C0
	movs r1, #0xc
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	ldr r1, _0802516C @ =0xFFFFFDFF
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r4, #0x9f
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08025168: .4byte sub_080241C0
_0802516C: .4byte 0xFFFFFDFF

	thumb_func_start sub_08025170
sub_08025170: @ 0x08025170
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080251A4 @ =sub_08024298
	movs r1, #0xf
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	ldr r1, _080251A8 @ =0xFFFFFDFF
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r4, #0x9f
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080251A4: .4byte sub_08024298
_080251A8: .4byte 0xFFFFFDFF

	thumb_func_start sub_080251AC
sub_080251AC: @ 0x080251AC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r2, _0802520C @ =sub_08024334
	movs r1, #0x11
	bl ObjectSetFunc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r2, r5, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrb r0, [r0, #0xe]
	cmp r0, #6
	beq _080251D8
	ldr r0, [r5, #8]
	ldr r1, _08025210 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r5, #8]
_080251D8:
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r2]
	ldrb r0, [r0, #0xe]
	cmp r0, #6
	beq _08025206
	ldr r0, [r5, #8]
	movs r4, #1
	eors r0, r4
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_08024644
	ldr r0, [r5, #8]
	eors r0, r4
	str r0, [r5, #8]
_08025206:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802520C: .4byte sub_08024334
_08025210: .4byte 0xFFFFFDFF

	thumb_func_start sub_08025214
sub_08025214: @ 0x08025214
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x70]
	ldr r1, [r0, #8]
	movs r0, #1
	ands r1, r0
	ldr r0, [r4, #8]
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldrh r1, [r4, #4]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08025240
	movs r2, #6
	rsbs r2, r2, #0
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_08097E9C
_08025240:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #6
	ble _08025254
	adds r0, r4, #0
	bl sub_080247E0
_08025254:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802525C
sub_0802525C: @ 0x0802525C
	push {lr}
	ldr r2, _0802526C @ =gUnk_0203AD34
	movs r1, #0
	strb r1, [r2]
	bl sub_0803DCCC
	pop {r0}
	bx r0
	.align 2, 0
_0802526C: .4byte gUnk_0203AD34
