	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08000460
sub_08000460: @ 0x08000460
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r1, _080004B8 @ =gDispCnt
	movs r2, #0x94
	lsls r2, r2, #4
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080004BC @ =sub_08001FF8
	ldr r1, _080004C0 @ =sub_08002E3C
	str r1, [sp]
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl TaskCreate
	ldr r1, _080004C4 @ =gUnk_02023350
	str r0, [r1]
	ldr r0, _080004C8 @ =sub_08002118
	ldr r2, _080004CC @ =0x00007FFF
	ldr r1, _080004D0 @ =sub_08002E48
	str r1, [sp]
	movs r1, #0x28
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldr r0, _080004D4 @ =gUnk_02023354
	str r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080004D8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _080004E0
	.align 2, 0
_080004B8: .4byte gDispCnt
_080004BC: .4byte sub_08001FF8
_080004C0: .4byte sub_08002E3C
_080004C4: .4byte gUnk_02023350
_080004C8: .4byte sub_08002118
_080004CC: .4byte 0x00007FFF
_080004D0: .4byte sub_08002E48
_080004D4: .4byte gUnk_02023354
_080004D8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_080004E0:
	ldr r1, _08000688 @ =gBgCntRegs
	movs r4, #0
	ldr r0, _0800068C @ =0x00001F03
	strh r0, [r1]
	subs r0, #0xf9
	strh r0, [r1, #6]
	ldr r0, _08000690 @ =0x00001D09
	strh r0, [r1, #4]
	ldr r0, _08000694 @ =gBgScrollRegs
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #0xc]
	strh r4, [r0, #0xe]
	strh r4, [r0, #8]
	strh r4, [r0, #0xa]
	ldr r1, _08000698 @ =gUnk_03002E60
	ldr r0, [r1]
	str r0, [r5, #0x24]
	ldr r0, _0800069C @ =gUnk_082D8D74
	str r0, [r1]
	str r4, [sp, #4]
	ldr r1, _080006A0 @ =gUnk_02028EE0
	ldr r2, _080006A4 @ =0x05003CF0
	add r0, sp, #4
	bl CpuSet
	str r4, [sp, #8]
	add r0, sp, #8
	ldr r1, _080006A8 @ =gUnk_02024ED0
	ldr r2, _080006AC @ =0x0500079E
	bl CpuSet
	str r4, [sp, #0xc]
	add r0, sp, #0xc
	ldr r1, _080006B0 @ =gUnk_02026D60
	ldr r2, _080006B4 @ =0x050007A2
	bl CpuSet
	add r0, sp, #0x10
	strh r4, [r0]
	ldr r1, _080006B8 @ =gUnk_02026D50
	ldr r2, _080006BC @ =0x01000004
	bl CpuSet
	bl sub_080027A8
	ldr r0, _080006C0 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	strb r0, [r5]
	mov r0, sp
	adds r0, #0x12
	strh r4, [r0]
	ldr r1, _080006C4 @ =gCurLevelInfo
	ldr r2, _080006C8 @ =0x01000CD0
	bl CpuSet
	movs r5, #0
	ldr r7, _080006CC @ =0x0000FFFF
	mov sb, r7
	ldr r0, _080006D0 @ =0x06008000
	mov r8, r0
	movs r3, #0
	movs r2, #0x1f
	mov ip, r2
	movs r7, #0x15
	mov sl, r7
	ldr r6, _080006D4 @ =0x00007FFF
_08000566:
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, _080006C4 @ =gCurLevelInfo
	adds r2, r1, r0
	movs r0, #0xbf
	lsls r0, r0, #3
	adds r1, r2, r0
	ldrh r0, [r1]
	mov r7, sb
	orrs r0, r7
	strh r0, [r1]
	ldr r0, _080006D8 @ =0x0000065C
	adds r1, r2, r0
	ldrh r0, [r1]
	orrs r0, r7
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r2, r0
	mov r7, r8
	str r7, [r1, #4]
	strh r3, [r1, #0xa]
	ldr r0, _080006DC @ =0x0600F000
	str r0, [r1, #0xc]
	strh r3, [r1, #0x18]
	strh r3, [r1, #0x1a]
	strh r5, [r1, #0x1c]
	strh r3, [r1, #0x1e]
	strh r3, [r1, #0x20]
	strh r3, [r1, #0x22]
	strh r3, [r1, #0x24]
	mov r0, ip
	strh r0, [r1, #0x26]
	mov r7, sl
	strh r7, [r1, #0x28]
	movs r7, #0x95
	lsls r7, r7, #1
	adds r0, r2, r7
	strb r4, [r0]
	adds r7, #1
	adds r0, r2, r7
	strb r4, [r0]
	adds r7, #1
	adds r0, r2, r7
	strb r4, [r0]
	movs r0, #0x3b
	strh r0, [r1, #0x2e]
	strh r3, [r1, #0x30]
	strh r3, [r1, #0x32]
	strh r6, [r1, #0x34]
	strh r6, [r1, #0x36]
	movs r0, #0xa0
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	strh r3, [r1, #0xa]
	ldr r0, _080006E0 @ =0x0600F800
	str r0, [r1, #0xc]
	strh r3, [r1, #0x18]
	strh r3, [r1, #0x1a]
	adds r0, r5, #4
	strh r0, [r1, #0x1c]
	strh r3, [r1, #0x1e]
	strh r3, [r1, #0x20]
	strh r3, [r1, #0x22]
	strh r3, [r1, #0x24]
	mov r7, ip
	strh r7, [r1, #0x26]
	mov r0, sl
	strh r0, [r1, #0x28]
	movs r7, #0xb5
	lsls r7, r7, #1
	adds r0, r2, r7
	strb r4, [r0]
	adds r7, #1
	adds r0, r2, r7
	strb r4, [r0]
	adds r7, #1
	adds r0, r2, r7
	strb r4, [r0]
	movs r0, #0x38
	strh r0, [r1, #0x2e]
	strh r3, [r1, #0x30]
	strh r3, [r1, #0x32]
	strh r6, [r1, #0x34]
	strh r6, [r1, #0x36]
	adds r1, r2, #0
	adds r1, #0xc0
	mov r0, r8
	str r0, [r1, #4]
	strh r3, [r1, #0xa]
	ldr r0, _080006E4 @ =0x0600E800
	str r0, [r1, #0xc]
	strh r3, [r1, #0x18]
	strh r3, [r1, #0x1a]
	adds r0, r5, #0
	adds r0, #8
	strh r0, [r1, #0x1c]
	strh r3, [r1, #0x1e]
	strh r3, [r1, #0x20]
	strh r3, [r1, #0x22]
	strh r3, [r1, #0x24]
	mov r7, ip
	strh r7, [r1, #0x26]
	mov r0, sl
	strh r0, [r1, #0x28]
	adds r0, r2, #0
	adds r0, #0xea
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	movs r0, #0x3a
	strh r0, [r1, #0x2e]
	strh r3, [r1, #0x30]
	strh r3, [r1, #0x32]
	strh r6, [r1, #0x34]
	strh r6, [r1, #0x36]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bhi _08000668
	b _08000566
_08000668:
	ldr r0, _080006E8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08000678
	bl sub_0800A820
_08000678:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000688: .4byte gBgCntRegs
_0800068C: .4byte 0x00001F03
_08000690: .4byte 0x00001D09
_08000694: .4byte gBgScrollRegs
_08000698: .4byte gUnk_03002E60
_0800069C: .4byte gUnk_082D8D74
_080006A0: .4byte gUnk_02028EE0
_080006A4: .4byte 0x05003CF0
_080006A8: .4byte gUnk_02024ED0
_080006AC: .4byte 0x0500079E
_080006B0: .4byte gUnk_02026D60
_080006B4: .4byte 0x050007A2
_080006B8: .4byte gUnk_02026D50
_080006BC: .4byte 0x01000004
_080006C0: .4byte gUnk_0203AD3C
_080006C4: .4byte gCurLevelInfo
_080006C8: .4byte 0x01000CD0
_080006CC: .4byte 0x0000FFFF
_080006D0: .4byte 0x06008000
_080006D4: .4byte 0x00007FFF
_080006D8: .4byte 0x0000065C
_080006DC: .4byte 0x0600F000
_080006E0: .4byte 0x0600F800
_080006E4: .4byte 0x0600E800
_080006E8: .4byte gUnk_0203AD10

	thumb_func_start sub_080006EC
sub_080006EC: @ 0x080006EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08000710 @ =gUnk_02023354
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08000714
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0800071C
	.align 2, 0
_08000710: .4byte gUnk_02023354
_08000714:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0800071C:
	adds r4, r0, #0
	ldr r0, _08000784 @ =gDispCnt
	ldrh r0, [r0]
	strh r0, [r4, #2]
	movs r3, #0
	ldr r0, _08000788 @ =gBldRegs
	mov sb, r0
	adds r7, r4, #4
	ldr r5, _0800078C @ =gBgScrollRegs
	adds r0, r5, #2
	mov r8, r0
	ldr r0, _08000790 @ =gBgCntRegs
	mov ip, r0
	adds r6, r4, #0
	adds r6, #0xc
_0800073A:
	lsls r0, r3, #1
	adds r1, r7, r0
	add r0, ip
	ldrh r0, [r0]
	strh r0, [r1]
	lsls r2, r3, #2
	adds r1, r6, r2
	adds r0, r2, r5
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0xe
	adds r1, r1, r2
	add r2, r8
	ldrh r0, [r2]
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _0800073A
	adds r1, r4, #0
	adds r1, #0x1c
	mov r0, sb
	movs r2, #2
	bl CpuSet
	ldr r1, _08000794 @ =gUnk_03002E60
	ldr r0, [r4, #0x24]
	str r0, [r1]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000784: .4byte gDispCnt
_08000788: .4byte gBldRegs
_0800078C: .4byte gBgScrollRegs
_08000790: .4byte gBgCntRegs
_08000794: .4byte gUnk_03002E60

	thumb_func_start sub_08000798
sub_08000798: @ 0x08000798
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	bl sub_08002374
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r0, _080007C8 @ =gUnk_02023354
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080007CC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080007D4
	.align 2, 0
_080007C8: .4byte gUnk_02023354
_080007CC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080007D4:
	mov ip, r0
	ldr r1, _0800088C @ =gUnk_03002E60
	ldr r0, _08000890 @ =gUnk_082D8D74
	str r0, [r1]
	ldr r1, _08000894 @ =gDispCnt
	mov r2, ip
	ldrh r0, [r2, #2]
	strh r0, [r1]
	movs r3, #0
	ldr r0, _08000898 @ =gBldRegs
	mov sl, r0
	ldr r1, _0800089C @ =gBgCntRegs
	mov r8, r1
	ldr r4, _080008A0 @ =gBgScrollRegs
	adds r7, r4, #2
	mov r6, ip
	adds r6, #4
	mov r5, ip
	adds r5, #0xc
_080007FA:
	lsls r0, r3, #1
	mov r2, r8
	adds r1, r0, r2
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r1]
	lsls r1, r3, #2
	adds r2, r1, r4
	adds r0, r5, r1
	ldrh r0, [r0]
	strh r0, [r2]
	adds r2, r1, r7
	mov r0, ip
	adds r0, #0xe
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _080007FA
	mov r0, ip
	adds r0, #0x1c
	mov r1, sl
	movs r2, #2
	bl CpuSet
	mov r0, sb
	movs r1, #0
	movs r2, #0
	bl LoadLevelGfx
	bl sub_08003438
	ldr r1, _080008A4 @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r3, sb
	muls r3, r0, r3
	adds r0, r3, #0
	adds r2, r0, r1
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r1, _080008A8 @ =0x00007FFF
	strh r1, [r0]
	movs r3, #0x9b
	lsls r3, r3, #1
	adds r0, r2, r3
	strh r1, [r0]
	adds r3, #0x3e
	adds r0, r2, r3
	strh r1, [r0]
	adds r3, #2
	adds r0, r2, r3
	strh r1, [r0]
	adds r0, r2, #0
	adds r0, #0xf4
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, r2, #0
	bl sub_080019F8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800088C: .4byte gUnk_03002E60
_08000890: .4byte gUnk_082D8D74
_08000894: .4byte gDispCnt
_08000898: .4byte gBldRegs
_0800089C: .4byte gBgCntRegs
_080008A0: .4byte gBgScrollRegs
_080008A4: .4byte gCurLevelInfo
_080008A8: .4byte 0x00007FFF

	thumb_func_start LoadLevelGfx
LoadLevelGfx: @ 0x080008AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r1, #0
	str r2, [sp]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r0, _080008DC @ =gUnk_02023354
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080008E0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _080008E8
	.align 2, 0
_080008DC: .4byte gUnk_02023354
_080008E0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_080008E8:
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, _080009D0 @ =gCurLevelInfo
	adds r6, r1, r0
	movs r0, #0
	mov r8, r0
	strb r3, [r2]
	ldr r1, _080009D4 @ =gDispCnt
	mov sb, r1
	ldrh r0, [r1]
	movs r2, #0xb0
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	mov r1, sb
	strh r0, [r1]
	ldr r2, _080009D8 @ =gForegroundInfo
	ldr r0, _080009DC @ =gRoomProps
	mov sl, r0
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r7, r6, r1
	ldrh r1, [r7]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	ldrh r0, [r0, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r0, [r0]
	ldr r1, _080009E0 @ =0x06008000
	bl LZ77UnCompVram
	cmp r4, #0
	beq _0800094E
	ldr r2, _080009E4 @ =gForegroundPalettes
	ldrh r1, [r7]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	ldrh r0, [r0, #0x16]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r0, [r0]
	str r0, [r4]
_0800094E:
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r0, r6, r2
	ldr r5, _080009E8 @ =0x00007FFF
	strh r5, [r0]
	movs r1, #0x9b
	lsls r1, r1, #1
	adds r0, r6, r1
	strh r5, [r0]
	ldr r4, _080009EC @ =gBgScrollRegs
	mov r2, r8
	strh r2, [r4, #0xc]
	strh r2, [r4, #0xe]
	adds r1, #0x72
	adds r0, r6, r1
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	ldr r2, [sp]
	cmp r2, #0
	beq _08000986
	movs r1, #0xd8
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	str r0, [r2]
_08000986:
	movs r2, #0xba
	lsls r2, r2, #1
	adds r0, r6, r2
	strh r5, [r0]
	movs r1, #0xbb
	lsls r1, r1, #1
	adds r0, r6, r1
	strh r5, [r0]
	mov r2, r8
	strh r2, [r4]
	strh r2, [r4, #2]
	adds r0, r6, #0
	adds r0, #0xf4
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	strh r2, [r4, #8]
	strh r2, [r4, #0xa]
	ldrh r1, [r7]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	ldrh r1, [r0, #0x1c]
	ldr r0, _080009F0 @ =0x0000FFFF
	cmp r1, r0
	beq _080009F4
	mov r1, sb
	ldrh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	mov r1, sb
	strh r0, [r1]
	b _080009FE
	.align 2, 0
_080009D0: .4byte gCurLevelInfo
_080009D4: .4byte gDispCnt
_080009D8: .4byte gForegroundInfo
_080009DC: .4byte gRoomProps
_080009E0: .4byte 0x06008000
_080009E4: .4byte gForegroundPalettes
_080009E8: .4byte 0x00007FFF
_080009EC: .4byte gBgScrollRegs
_080009F0: .4byte 0x0000FFFF
_080009F4:
	mov r2, sb
	ldrh r1, [r2]
	ldr r0, _08000A40 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2]
_080009FE:
	ldr r5, _08000A44 @ =gBgCntRegs
	ldrh r0, [r5, #6]
	ldr r1, _08000A48 @ =0x0000FFFC
	adds r3, r1, #0
	ands r3, r0
	movs r7, #0
	strh r3, [r5, #6]
	ldrh r0, [r5, #4]
	adds r4, r1, #0
	ands r4, r0
	strh r4, [r5, #4]
	ldr r2, _08000A4C @ =gRoomProps
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r6, r1
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r1, [r0, #0x12]
	movs r2, #1
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08000A50
	movs r0, #2
	adds r1, r3, #0
	orrs r1, r0
	strh r1, [r5, #6]
	adds r0, r4, #0
	orrs r0, r2
	b _08000A5C
	.align 2, 0
_08000A40: .4byte 0x0000FBFF
_08000A44: .4byte gBgCntRegs
_08000A48: .4byte 0x0000FFFC
_08000A4C: .4byte gRoomProps
_08000A50:
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r5, #6]
	movs r1, #2
	adds r0, r4, #0
	orrs r0, r1
_08000A5C:
	strh r0, [r5, #4]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FillLevelInfo
FillLevelInfo: @ 0x08000A70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x10]
	ldr r0, _08000AA8 @ =gUnk_02023354
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08000AAC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08000AB4
	.align 2, 0
_08000AA8: .4byte gUnk_02023354
_08000AAC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08000AB4:
	str r0, [sp, #0x1c]
	movs r0, #0xcd
	lsls r0, r0, #3
	ldr r2, [sp, #0xc]
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _08000B70 @ =gCurLevelInfo
	adds r7, r1, r0
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r3, r3, r7
	mov sb, r3
	movs r6, #0xc0
	adds r6, r6, r7
	mov sl, r6
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r7, r1
	ldrh r0, [r0]
	str r0, [sp, #0x20]
	movs r2, #0
	str r2, [sp, #0x24]
	ldr r0, _08000B74 @ =0x0000FFFF
	ldr r3, [sp, #0x20]
	cmp r3, r0
	beq _08000AFC
	movs r1, #0
	ldr r0, [sp, #0xc]
	ldr r6, [sp, #0x1c]
	ldrb r6, [r6]
	cmp r0, r6
	bne _08000AF6
	movs r1, #1
_08000AF6:
	ldr r0, [sp, #0xc]
	bl sub_08003028
_08000AFC:
	movs r0, #0xbf
	lsls r0, r0, #3
	adds r2, r7, r0
	ldrh r1, [r2]
	ldr r3, _08000B78 @ =0x000005FA
	adds r0, r7, r3
	strh r1, [r0]
	mov r6, sp
	ldrh r6, [r6, #0x10]
	strh r6, [r2]
	ldr r6, _08000B74 @ =0x0000FFFF
	ldr r0, [sp, #0x10]
	cmp r0, r6
	bne _08000B1A
	b _08000ED8
_08000B1A:
	ldr r2, _08000B7C @ =gForegroundTilemaps
	ldr r1, _08000B80 @ =gRoomProps
	lsls r4, r0, #2
	adds r0, r4, r0
	lsls r0, r0, #3
	adds r5, r0, r1
	ldrh r0, [r5, #0x18]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r2, #0x10
	bl CpuSet
	ldr r1, _08000B84 @ =gBackgrounds
	ldrh r0, [r5, #0x1e]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r3, #0xd0
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r2, #0x10
	bl CpuSet
	ldrh r1, [r5, #0x1c]
	str r4, [sp, #0x2c]
	cmp r1, r6
	beq _08000B8C
	ldr r1, _08000B88 @ =gLevelObjLists
	ldrh r0, [r5, #0x1c]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r6, #0xe0
	lsls r6, r6, #1
	adds r1, r7, r6
	movs r2, #0x10
	bl CpuSet
	b _08000B9E
	.align 2, 0
_08000B70: .4byte gCurLevelInfo
_08000B74: .4byte 0x0000FFFF
_08000B78: .4byte 0x000005FA
_08000B7C: .4byte gForegroundTilemaps
_08000B80: .4byte gRoomProps
_08000B84: .4byte gBackgrounds
_08000B88: .4byte gLevelObjLists
_08000B8C:
	mov r0, sp
	strh r1, [r0]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r2, _08000D48 @ =0x01000010
	mov r0, sp
	bl CpuSet
_08000B9E:
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r1, r7, #0
	adds r1, #0xbc
	movs r4, #0
	strh r0, [r1]
	movs r2, #0xc1
	lsls r2, r2, #1
	adds r0, r7, r2
	ldrh r0, [r0]
	lsls r0, r0, #3
	movs r3, #0xbe
	adds r3, r3, r7
	mov ip, r3
	strh r0, [r3]
	movs r2, #0x80
	lsls r2, r2, #4
	str r2, [r7, #0x48]
	str r2, [r7, #0x4c]
	ldrh r1, [r1]
	subs r1, #8
	lsls r1, r1, #8
	str r1, [r7, #0x50]
	ldrh r0, [r3]
	subs r0, #2
	lsls r0, r0, #8
	str r0, [r7, #0x54]
	str r2, [r7, #0x58]
	str r2, [r7, #0x5c]
	str r1, [r7, #0x60]
	str r0, [r7, #0x64]
	movs r6, #0x80
	lsls r6, r6, #2
	mov r8, r6
	str r6, [r7, #0x68]
	str r2, [r7, #0x6c]
	str r2, [r7, #0x70]
	str r1, [r7, #0x74]
	ldrh r0, [r3]
	subs r0, #0x28
	lsls r0, r0, #8
	str r0, [r7, #0x78]
	str r2, [r7, #0x7c]
	adds r0, r7, #0
	adds r0, #0x80
	str r2, [r0]
	adds r1, r7, #0
	adds r1, #0x84
	ldr r0, [r7, #0x74]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r7, #0x78]
	str r0, [r1]
	adds r0, r7, #0
	adds r0, #0x8c
	str r6, [r0]
	adds r2, r7, #0
	adds r2, #0x90
	ldr r0, [r7, #0x48]
	str r0, [r2]
	adds r3, r7, #0
	adds r3, #0x94
	ldr r0, [r7, #0x4c]
	str r0, [r3]
	adds r5, r7, #0
	adds r5, #0x98
	ldr r0, [r7, #0x50]
	str r0, [r5]
	adds r6, r7, #0
	adds r6, #0x9c
	mov r1, ip
	ldrh r0, [r1]
	subs r0, #1
	lsls r0, r0, #8
	str r0, [r6]
	adds r1, r7, #0
	adds r1, #0xa0
	ldr r0, [r2]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r3]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r5]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r6]
	str r0, [r1]
	adds r0, r7, #0
	adds r0, #0xb0
	mov r2, r8
	str r2, [r0]
	str r4, [r7, #8]
	str r4, [r7, #0xc]
	str r4, [r7, #0x10]
	str r4, [r7, #0x14]
	str r4, [r7, #0x18]
	str r4, [r7, #0x1c]
	str r4, [r7, #0x20]
	str r4, [r7, #0x24]
	movs r3, #0xe1
	lsls r3, r3, #1
	adds r0, r7, r3
	ldrh r0, [r0]
	lsls r0, r0, #0xb
	ldr r6, _08000D4C @ =0xFFFF6000
	adds r0, r0, r6
	str r0, [r7, #0x28]
	str r4, [r7, #0x2c]
	str r4, [r7, #0x30]
	ldr r6, _08000D50 @ =gRoomProps
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x10]
	adds r2, r0, r1
	lsls r2, r2, #3
	adds r2, r2, r6
	ldrh r0, [r2, #0xa]
	str r0, [r7, #0x34]
	subs r3, #0x20
	adds r3, r3, r7
	mov r8, r3
	ldrh r0, [r3]
	lsls r0, r0, #3
	ldrh r1, [r2, #0xc]
	adds r1, #0xa0
	subs r0, r0, r1
	lsls r0, r0, #8
	str r0, [r7, #0x38]
	str r4, [r7, #0x3c]
	str r4, [r7, #0x40]
	adds r0, r7, #0
	adds r0, #0x44
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r3, r7, r0
	ldr r1, _08000D54 @ =gSolidityMaps
	ldrh r0, [r2, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #4]
	str r0, [r3]
	movs r1, #0xf2
	lsls r1, r1, #1
	adds r5, r7, r1
	ldr r2, _08000D58 @ =gLevelObjLists
	movs r0, #0xbf
	lsls r0, r0, #3
	adds r3, r7, r0
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
	ldrh r0, [r0, #0x20]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r5]
	movs r1, #0xf4
	lsls r1, r1, #1
	adds r5, r7, r1
	ldr r2, _08000D5C @ =gUnk_08D63C28
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
	ldrh r0, [r0, #0x22]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r5]
	str r4, [sp, #4]
	add r0, sp, #4
	ldr r2, _08000D60 @ =0x000005FC
	adds r1, r7, r2
	ldr r2, _08000D64 @ =0x05000010
	bl CpuSet
	str r4, [sp, #8]
	add r0, sp, #8
	ldr r3, _08000D68 @ =0x0000063C
	adds r1, r7, r3
	ldr r2, _08000D6C @ =0x05000008
	bl CpuSet
	movs r6, #0xd0
	lsls r6, r6, #1
	adds r0, r7, r6
	ldrh r1, [r0]
	cmp r1, #0x20
	bhi _08000D74
	mov r2, r8
	ldrh r0, [r2]
	cmp r0, #0x20
	bhi _08000D74
	mov r3, sb
	strh r1, [r3, #0x26]
	ldrh r0, [r2]
	strh r0, [r3, #0x28]
	ldrh r1, [r3, #0x2e]
	ldr r0, _08000D70 @ =0x0000FFDF
	ands r0, r1
	strh r0, [r3, #0x2e]
	b _08000D86
	.align 2, 0
_08000D48: .4byte 0x01000010
_08000D4C: .4byte 0xFFFF6000
_08000D50: .4byte gRoomProps
_08000D54: .4byte gSolidityMaps
_08000D58: .4byte gLevelObjLists
_08000D5C: .4byte gUnk_08D63C28
_08000D60: .4byte 0x000005FC
_08000D64: .4byte 0x05000010
_08000D68: .4byte 0x0000063C
_08000D6C: .4byte 0x05000008
_08000D70: .4byte 0x0000FFDF
_08000D74:
	movs r0, #0x1f
	mov r6, sb
	strh r0, [r6, #0x26]
	movs r0, #0x15
	strh r0, [r6, #0x28]
	ldrh r1, [r6, #0x2e]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r6, #0x2e]
_08000D86:
	movs r1, #0
	mov r0, sb
	strh r1, [r0, #0x30]
	movs r2, #0xd1
	lsls r2, r2, #1
	adds r6, r7, r2
	ldrh r0, [r6]
	lsls r0, r0, #3
	subs r0, #0xa0
	mov r3, sb
	strh r0, [r3, #0x32]
	strh r1, [r3, #0x18]
	strh r1, [r3, #0x1a]
	ldr r0, _08000DD0 @ =0x00007FFF
	strh r0, [r3, #0x34]
	strh r0, [r3, #0x36]
	ldr r2, _08000DD4 @ =gRoomProps
	ldr r1, [sp, #0x2c]
	ldr r3, [sp, #0x10]
	adds r0, r1, r3
	lsls r0, r0, #3
	adds r3, r0, r2
	ldrh r1, [r3, #0x12]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r8, r2
	cmp r1, #0
	beq _08000DD8
	ldrh r0, [r3, #0xe]
	adds r1, r7, #0
	adds r1, #0xb8
	strh r0, [r1]
	ldrh r0, [r3, #0x10]
	adds r1, #2
	b _08000E64
	.align 2, 0
_08000DD0: .4byte 0x00007FFF
_08000DD4: .4byte gRoomProps
_08000DD8:
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r0, r7, r2
	ldrh r0, [r0]
	lsls r0, r0, #0xb
	ldr r2, _08000E14 @ =0xFFFF1000
	adds r5, r0, r2
	ldrh r0, [r6]
	lsls r0, r0, #0xb
	ldr r2, _08000E18 @ =0xFFFF6000
	adds r6, r0, r2
	cmp r5, #0
	ble _08000E24
	ldrh r2, [r3, #0xe]
	movs r0, #0xe
	ldrsh r1, [r3, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08000E1C
	movs r1, #0x87
	lsls r1, r1, #4
	adds r0, r5, #0
	bl __divsi3
	adds r1, r7, #0
	adds r1, #0xb8
	strh r0, [r1]
	b _08000E2A
	.align 2, 0
_08000E14: .4byte 0xFFFF1000
_08000E18: .4byte 0xFFFF6000
_08000E1C:
	adds r0, r7, #0
	adds r0, #0xb8
	strh r2, [r0]
	b _08000E2A
_08000E24:
	adds r0, r7, #0
	adds r0, #0xb8
	strh r1, [r0]
_08000E2A:
	cmp r6, #0
	ble _08000E5E
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x10]
	adds r0, r1, r2
	lsls r0, r0, #3
	add r0, r8
	ldrh r2, [r0, #0x10]
	movs r3, #0x10
	ldrsh r1, [r0, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08000E56
	movs r1, #0xb4
	lsls r1, r1, #3
	adds r0, r6, #0
	bl __divsi3
	adds r1, r7, #0
	adds r1, #0xba
	b _08000E64
_08000E56:
	adds r0, r7, #0
	adds r0, #0xba
	strh r2, [r0]
	b _08000E66
_08000E5E:
	adds r1, r7, #0
	adds r1, #0xba
	movs r0, #0
_08000E64:
	strh r0, [r1]
_08000E66:
	movs r6, #0xe0
	lsls r6, r6, #1
	adds r0, r7, r6
	ldr r1, [r0]
	ldr r0, _08000E88 @ =0x00200020
	cmp r1, r0
	bne _08000E90
	movs r0, #0x20
	mov r1, sl
	strh r0, [r1, #0x26]
	strh r0, [r1, #0x28]
	ldrh r1, [r1, #0x2e]
	ldr r0, _08000E8C @ =0x0000FFDF
	ands r0, r1
	mov r2, sl
	strh r0, [r2, #0x2e]
	b _08000EA2
	.align 2, 0
_08000E88: .4byte 0x00200020
_08000E8C: .4byte 0x0000FFDF
_08000E90:
	movs r0, #0x1f
	mov r3, sl
	strh r0, [r3, #0x26]
	movs r0, #0x15
	strh r0, [r3, #0x28]
	ldrh r1, [r3, #0x2e]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r3, #0x2e]
_08000EA2:
	movs r1, #0
	mov r6, sl
	strh r1, [r6, #0x30]
	movs r2, #0xe1
	lsls r2, r2, #1
	adds r0, r7, r2
	ldrh r0, [r0]
	lsls r0, r0, #3
	subs r0, #0xa0
	strh r0, [r6, #0x32]
	strh r1, [r6, #0x18]
	strh r1, [r6, #0x1a]
	ldr r0, _08000F70 @ =0x00007FFF
	strh r0, [r6, #0x34]
	strh r0, [r6, #0x36]
	ldr r3, [sp, #0x2c]
	ldr r6, [sp, #0x10]
	adds r0, r3, r6
	lsls r0, r0, #3
	add r0, r8
	ldrh r2, [r0, #6]
	adds r1, r7, #0
	adds r1, #0xb4
	strh r2, [r1]
	ldrh r0, [r0, #8]
	adds r1, #2
	strh r0, [r1]
_08000ED8:
	ldr r0, _08000F74 @ =0x0000FFFF
	ldr r1, [sp, #0x20]
	cmp r1, r0
	beq _08000F9C
	movs r2, #0
	str r2, [sp, #0x24]
	ldr r0, _08000F78 @ =gUnk_0203AD44
	adds r3, r0, #0
	ldrb r6, [r3]
	cmp r2, r6
	bhs _08000F80
	ldr r0, [sp, #0xc]
	cmp r2, r0
	beq _08000F04
	ldr r0, _08000F7C @ =gCurLevelInfo
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r2, [sp, #0x20]
	cmp r0, r2
	beq _08000F34
_08000F04:
	ldr r0, [sp, #0x24]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x24]
	ldrb r6, [r3]
	cmp r0, r6
	bhs _08000F80
	ldr r1, [sp, #0xc]
	cmp r0, r1
	beq _08000F04
	ldr r1, _08000F7C @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	ldr r2, [sp, #0x24]
	muls r0, r2, r0
	adds r0, r0, r1
	movs r6, #0xbf
	lsls r6, r6, #3
	adds r0, r0, r6
	ldrh r0, [r0]
	ldr r1, [sp, #0x20]
	cmp r0, r1
	bne _08000F04
_08000F34:
	ldr r2, [sp, #0x24]
	ldrb r3, [r3]
	cmp r2, r3
	bhs _08000F80
	movs r3, #0xf8
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, #0
	beq _08000F9C
	adds r5, r7, r3
_08000F4A:
	ldr r0, [sp, #0x24]
	bl sub_08002958
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #8]
	str r0, [r4, #8]
	ldr r1, [r5]
	ldr r0, [sp, #0xc]
	bl sub_080028CC
	ldr r0, [sp, #0x24]
	adds r1, r4, #0
	bl sub_08002918
	ldr r0, [r5]
	cmp r0, #0
	bne _08000F4A
	b _08000F9C
	.align 2, 0
_08000F70: .4byte 0x00007FFF
_08000F74: .4byte 0x0000FFFF
_08000F78: .4byte gUnk_0203AD44
_08000F7C: .4byte gCurLevelInfo
_08000F80:
	movs r6, #0xf8
	lsls r6, r6, #1
	adds r1, r7, r6
	ldr r0, [r1]
	cmp r0, #0
	beq _08000F9C
	adds r4, r1, #0
_08000F8E:
	ldr r1, [r4]
	ldr r0, [sp, #0xc]
	bl sub_080028CC
	ldr r0, [r4]
	cmp r0, #0
	bne _08000F8E
_08000F9C:
	ldr r0, _08001034 @ =0x0000FFFF
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _08000FA6
	b _080012D0
_08000FA6:
	movs r2, #0
	str r2, [sp, #0x24]
	ldr r0, _08001038 @ =gUnk_0203AD44
	adds r3, r0, #0
	ldrb r6, [r3]
	cmp r2, r6
	bhs _08001048
	ldr r0, [sp, #0xc]
	cmp r2, r0
	beq _08000FCC
	ldr r0, _0800103C @ =gCurLevelInfo
	movs r2, #0xbf
	lsls r2, r2, #3
	adds r1, r0, r2
	ldrh r1, [r1]
	adds r2, r0, #0
	ldr r6, [sp, #0x10]
	cmp r1, r6
	beq _08000FFE
_08000FCC:
	ldr r0, [sp, #0x24]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x24]
	ldrb r1, [r3]
	cmp r0, r1
	bhs _08001048
	ldr r2, [sp, #0xc]
	cmp r0, r2
	beq _08000FCC
	ldr r1, _0800103C @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	ldr r6, [sp, #0x24]
	muls r0, r6, r0
	adds r0, r0, r1
	movs r2, #0xbf
	lsls r2, r2, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r2, r1, #0
	ldr r6, [sp, #0x10]
	cmp r0, r6
	bne _08000FCC
_08000FFE:
	ldr r0, [sp, #0x24]
	ldrb r1, [r3]
	cmp r0, r1
	bhs _08001048
	movs r0, #0xcd
	lsls r0, r0, #3
	ldr r3, [sp, #0x24]
	muls r0, r3, r0
	adds r0, r0, r2
	ldr r1, _08001040 @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r7, r1
	strb r0, [r1]
	movs r6, #0xcc
	lsls r6, r6, #1
	adds r2, r7, r6
	ldrb r1, [r1]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r1, r0, #6
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08001044 @ =gUnk_02028EE0
	adds r0, r0, r1
	str r0, [r2]
	b _0800120E
	.align 2, 0
_08001034: .4byte 0x0000FFFF
_08001038: .4byte gUnk_0203AD44
_0800103C: .4byte gCurLevelInfo
_08001040: .4byte 0x0000065E
_08001044: .4byte gUnk_02028EE0
_08001048:
	movs r2, #0
	movs r0, #0
	str r0, [sp, #0x24]
	ldrb r0, [r3]
	ldr r1, _080010CC @ =gRoomProps
	mov r8, r1
	ldr r3, [sp, #0x10]
	lsls r3, r3, #2
	str r3, [sp, #0x2c]
	ldr r6, _080010D0 @ =gSolidityMaps
	mov sl, r6
	mov r1, sp
	adds r1, #4
	str r1, [sp, #0x28]
	add r3, sp, #8
	mov sb, r3
	ldr r6, _080010D4 @ =gUnk_02024ED0
	mov ip, r6
	ldr r1, [sp, #0x24]
	cmp r1, r0
	bhs _080010B4
	ldr r4, _080010D8 @ =gCurLevelInfo
	adds r3, r0, #0
	movs r5, #0xcd
	lsls r5, r5, #3
_0800107A:
	ldr r6, [sp, #0x24]
	ldr r0, [sp, #0xc]
	cmp r6, r0
	beq _080010A6
	adds r0, r6, #0
	muls r0, r5, r0
	adds r1, r0, r4
	movs r6, #0xbf
	lsls r6, r6, #3
	adds r0, r1, r6
	ldrh r0, [r0]
	ldr r6, _080010DC @ =0x0000FFFF
	cmp r0, r6
	beq _080010A6
	ldr r6, _080010E0 @ =0x0000065E
	adds r0, r1, r6
	movs r1, #1
	ldrb r0, [r0]
	lsls r1, r0
	orrs r2, r1
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
_080010A6:
	ldr r0, [sp, #0x24]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x24]
	cmp r0, r3
	blo _0800107A
_080010B4:
	movs r0, #0
	str r0, [sp, #0x24]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _080010E4
	ldr r1, _080010E0 @ =0x0000065E
	adds r0, r7, r1
	add r2, sp, #0x24
	ldrb r2, [r2]
	strb r2, [r0]
	b _08001106
	.align 2, 0
_080010CC: .4byte gRoomProps
_080010D0: .4byte gSolidityMaps
_080010D4: .4byte gUnk_02024ED0
_080010D8: .4byte gCurLevelInfo
_080010DC: .4byte 0x0000FFFF
_080010E0: .4byte 0x0000065E
_080010E4:
	ldr r0, [sp, #0x24]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x24]
	cmp r0, #3
	bhi _08001106
	adds r0, r2, #0
	ldr r3, [sp, #0x24]
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080010E4
	ldr r6, _08001308 @ =0x0000065E
	adds r0, r7, r6
	strb r3, [r0]
_08001106:
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x10]
	adds r0, r2, r3
	lsls r0, r0, #3
	add r8, r0
	mov r6, r8
	ldrh r0, [r6, #0x1a]
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	ldr r0, [r0]
	ldr r1, _08001308 @ =0x0000065E
	adds r6, r7, r1
	ldrb r2, [r6]
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r2, r1, #6
	adds r1, r1, r2
	lsls r1, r1, #1
	add r1, ip
	bl RLUnCompWram
	ldr r1, _0800130C @ =gUnk_08D63C28
	mov r2, r8
	ldrh r0, [r2, #0x22]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	ldrb r3, [r6]
	lsls r2, r3, #5
	subs r2, r2, r3
	lsls r1, r2, #6
	subs r1, r1, r2
	adds r1, r1, r3
	ldr r2, _08001310 @ =gUnk_02026D60
	adds r1, r1, r2
	bl RLUnCompWram
	movs r3, #0xcc
	lsls r3, r3, #1
	adds r5, r7, r3
	ldr r0, [r5]
	ldrb r2, [r6]
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r2, r1, #6
	adds r1, r1, r2
	lsls r1, r1, #4
	ldr r4, _08001314 @ =gUnk_02028EE0
	adds r1, r1, r4
	bl LZ77UnCompWram
	ldrb r1, [r6]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r1, r0, #6
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r4
	str r0, [r5]
	movs r4, #0
	str r4, [sp, #8]
	ldrb r1, [r6]
	lsls r1, r1, #2
	ldr r0, _08001318 @ =gUnk_02023358
	adds r1, r1, r0
	ldr r2, _0800131C @ =0x05000001
	mov r0, sb
	bl CpuSet
	str r4, [sp, #4]
	ldrb r1, [r6]
	lsls r1, r1, #6
	ldr r0, _08001320 @ =gUnk_02023388
	adds r1, r1, r0
	ldr r2, _08001324 @ =0x05000010
	ldr r0, [sp, #0x28]
	bl CpuSet
	ldr r1, _08001328 @ =gUnk_02023508
	ldrb r0, [r6]
	lsls r0, r0, #1
	adds r0, r0, r1
	strh r4, [r0]
	ldr r1, _0800132C @ =gUnk_02023510
	ldrb r0, [r6]
	lsls r0, r0, #1
	adds r0, r0, r1
	strh r4, [r0]
	ldr r2, _08001330 @ =gUnk_02026D50
	ldrb r0, [r6]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #1
	strh r1, [r0]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x10]
	cmp r0, r1
	bne _080011DC
	ldrb r0, [r6]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	movs r2, #4
	orrs r1, r2
	strh r1, [r0]
_080011DC:
	ldr r0, _08001334 @ =gUnk_02023518
	ldrb r1, [r6]
	lsls r1, r1, #1
	adds r1, r1, r0
	mov r2, r8
	ldrh r0, [r2]
	strh r0, [r1]
	movs r2, #0
	ldr r5, _08001338 @ =gUnk_02023520
	adds r3, r6, #0
	ldr r6, _0800133C @ =0x0000FFFF
	adds r4, r6, #0
_080011F4:
	lsls r1, r2, #1
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r5
	ldrh r0, [r1]
	orrs r0, r4
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _080011F4
_0800120E:
	ldr r0, _0800133C @ =0x0000FFFF
	ldr r1, [sp, #0x10]
	cmp r1, r0
	beq _080012D0
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r1, #0
	ldr r2, _08001340 @ =0x00007FFF
	strh r2, [r0]
	movs r3, #0x9b
	lsls r3, r3, #1
	adds r0, r7, r3
	strh r2, [r0]
	movs r6, #0x8d
	lsls r6, r6, #1
	adds r0, r7, r6
	strh r1, [r0]
	subs r3, #0x1e
	adds r0, r7, r3
	strh r1, [r0]
	adds r6, #0x16
	adds r0, r7, r6
	strh r1, [r0]
	adds r3, #0x1a
	adds r0, r7, r3
	strh r1, [r0]
	adds r6, #0x44
	adds r0, r7, r6
	strh r2, [r0]
	adds r3, #0x44
	adds r0, r7, r3
	strh r2, [r0]
	subs r6, #0x1c
	adds r0, r7, r6
	strh r1, [r0]
	subs r3, #0x1c
	adds r0, r7, r3
	strh r1, [r0]
	adds r6, #0x18
	adds r0, r7, r6
	strh r1, [r0]
	adds r3, #0x18
	adds r0, r7, r3
	strh r1, [r0]
	adds r0, r7, #0
	adds r0, #0xf4
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	subs r0, #0x1e
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x16
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r6, #0x7c
	adds r1, r7, r6
	movs r0, #1
	str r0, [r1]
	ldr r1, _08001344 @ =0x00000662
	adds r0, r7, r1
	movs r1, #0xc0
	lsls r1, r1, #1
	strh r1, [r0]
	ldr r2, _08001348 @ =0x00000664
	adds r0, r7, r2
	strh r1, [r0]
	ldr r6, [sp, #0xc]
	ldr r3, [sp, #0x1c]
	ldrb r3, [r3]
	cmp r6, r3
	bne _080012AE
	adds r0, r6, #0
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	bl LoadLevelGfx
_080012AE:
	ldr r0, [sp, #0xc]
	bl sub_08001D18
	ldr r0, [r7, #0xc]
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x10]
	str r0, [r7, #0x18]
	movs r1, #0
	ldr r0, [sp, #0xc]
	ldr r6, [sp, #0x1c]
	ldrb r6, [r6]
	cmp r0, r6
	bne _080012CA
	movs r1, #1
_080012CA:
	ldr r0, [sp, #0xc]
	bl sub_08002EC4
_080012D0:
	ldr r0, _0800134C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080012F6
	ldr r0, _08001350 @ =gUnk_0203AD30
	ldr r1, [sp, #0xc]
	ldrb r0, [r0]
	cmp r1, r0
	bhs _080012F6
	ldr r0, _08001354 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	ldr r2, [sp, #0x24]
	cmp r0, r2
	beq _080012F6
	movs r0, #8
	bl sub_08031CE4
_080012F6:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001308: .4byte 0x0000065E
_0800130C: .4byte gUnk_08D63C28
_08001310: .4byte gUnk_02026D60
_08001314: .4byte gUnk_02028EE0
_08001318: .4byte gUnk_02023358
_0800131C: .4byte 0x05000001
_08001320: .4byte gUnk_02023388
_08001324: .4byte 0x05000010
_08001328: .4byte gUnk_02023508
_0800132C: .4byte gUnk_02023510
_08001330: .4byte gUnk_02026D50
_08001334: .4byte gUnk_02023518
_08001338: .4byte gUnk_02023520
_0800133C: .4byte 0x0000FFFF
_08001340: .4byte 0x00007FFF
_08001344: .4byte 0x00000662
_08001348: .4byte 0x00000664
_0800134C: .4byte gUnk_0203AD10
_08001350: .4byte gUnk_0203AD30
_08001354: .4byte gUnk_0203AD3C
