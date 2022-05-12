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
	ldr r1, _08000D54 @ =gUnk_08D63330
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
_08000D54: .4byte gUnk_08D63330
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
	ldr r6, _080010D0 @ =gUnk_08D63330
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
_080010D0: .4byte gUnk_08D63330
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

	thumb_func_start sub_08001358
sub_08001358: @ 0x08001358
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xcd
	lsls r1, r1, #3
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r1, _08001394 @ =gCurLevelInfo
	adds r4, r2, r1
	ldr r1, _08001398 @ =gUnk_0203AD3C
	ldrb r1, [r1]
	cmp r0, r1
	bne _080013E4
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrh r1, [r0]
	ldr r0, _0800139C @ =0x00000321
	cmp r1, r0
	bne _080013A8
	ldr r0, _080013A0 @ =gUnk_0203AD2C
	ldrh r1, [r0]
	ldr r0, _080013A4 @ =0x0000012B
	cmp r1, r0
	bhi _080013A8
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	b _080013F8
	.align 2, 0
_08001394: .4byte gCurLevelInfo
_08001398: .4byte gUnk_0203AD3C
_0800139C: .4byte 0x00000321
_080013A0: .4byte gUnk_0203AD2C
_080013A4: .4byte 0x0000012B
_080013A8:
	bl m4aSoundVSyncOn
	ldr r1, _080013D4 @ =gUnk_02023518
	ldr r2, _080013D8 @ =0x0000065E
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _080013DC @ =0x0000065C
	adds r2, r4, r1
	strh r0, [r2]
	ldr r0, _080013E0 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080013F8
	ldrh r0, [r2]
	bl m4aSongNumStartOrChange
	b _080013F8
	.align 2, 0
_080013D4: .4byte gUnk_02023518
_080013D8: .4byte 0x0000065E
_080013DC: .4byte 0x0000065C
_080013E0: .4byte gUnk_0203AD20
_080013E4:
	ldr r1, _08001400 @ =gUnk_02023518
	ldr r2, _08001404 @ =0x0000065E
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	subs r2, #2
	adds r0, r4, r2
	strh r1, [r0]
_080013F8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08001400: .4byte gUnk_02023518
_08001404: .4byte 0x0000065E

	thumb_func_start sub_08001408
sub_08001408: @ 0x08001408
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r1, #0
	adds r5, r2, #0
	mov ip, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080014BC @ =gCurLevelInfo
	movs r1, #0xcd
	lsls r1, r1, #3
	muls r0, r1, r0
	adds r1, r0, r2
	adds r0, r1, #0
	adds r0, #0xbc
	ldrh r0, [r0]
	lsrs r0, r0, #3
	lsls r7, r0, #0x10
	lsrs r3, r7, #0x10
	mov r8, r3
	movs r2, #0xbf
	lsls r2, r2, #3
	adds r0, r1, r2
	ldrh r0, [r0]
	mov sb, r0
	ldrb r0, [r4]
	cmp r0, #1
	bne _080014CC
	ldr r0, _080014C0 @ =0x0000065E
	adds r6, r1, r0
	ldrb r0, [r6]
	lsls r2, r0, #4
	subs r2, r2, r0
	lsls r0, r2, #6
	adds r2, r2, r0
	lsls r2, r2, #4
	ldrb r0, [r4, #3]
	lsls r0, r0, #1
	adds r1, r0, #0
	muls r1, r3, r1
	ldrb r0, [r4, #2]
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	ldr r0, _080014C4 @ =gUnk_02028EE0
	adds r1, r1, r0
	adds r2, r2, r1
	lsls r3, r3, #1
	cmp r5, #0
	beq _08001480
	ldrh r0, [r2]
	strh r0, [r5]
	ldrh r0, [r2, #2]
	strh r0, [r5, #2]
	adds r1, r3, r2
	ldrh r0, [r1]
	strh r0, [r5, #4]
	ldrh r0, [r1, #2]
	strh r0, [r5, #6]
_08001480:
	ldrh r0, [r4, #8]
	strh r0, [r2]
	ldrh r0, [r4, #0xa]
	strh r0, [r2, #2]
	adds r1, r3, r2
	ldrh r0, [r4, #0xc]
	strh r0, [r1]
	ldrh r0, [r4, #0xe]
	strh r0, [r1, #2]
	ldrb r0, [r6]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r0, r1, #6
	adds r1, r1, r0
	lsls r1, r1, #1
	ldrb r2, [r4, #3]
	lsrs r0, r7, #0x11
	muls r0, r2, r0
	ldrb r2, [r4, #2]
	adds r0, r0, r2
	ldr r2, _080014C8 @ =gUnk_02024ED0
	adds r0, r0, r2
	adds r1, r1, r0
	mov r7, ip
	cmp r7, #0
	beq _080014B8
	ldrb r0, [r1]
	strb r0, [r7]
_080014B8:
	ldrb r0, [r4, #0x10]
	b _08001542
	.align 2, 0
_080014BC: .4byte gCurLevelInfo
_080014C0: .4byte 0x0000065E
_080014C4: .4byte gUnk_02028EE0
_080014C8: .4byte gUnk_02024ED0
_080014CC:
	ldr r0, _08001590 @ =0x0000065E
	adds r6, r1, r0
	ldrb r0, [r6]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r0, r1, #6
	adds r1, r1, r0
	lsls r1, r1, #4
	ldrb r0, [r4, #3]
	lsls r0, r0, #1
	adds r2, r0, #0
	muls r2, r3, r2
	ldrb r0, [r4, #2]
	lsls r0, r0, #1
	adds r2, r2, r0
	ldr r0, _08001594 @ =gUnk_02028EE0
	adds r2, r2, r0
	adds r2, r1, r2
	cmp r5, #0
	beq _08001506
	ldrb r0, [r2]
	strb r0, [r5]
	ldrb r0, [r2, #1]
	strb r0, [r5, #1]
	adds r1, r2, r3
	ldrb r0, [r1]
	strb r0, [r5, #2]
	ldrb r0, [r1, #1]
	strb r0, [r5, #3]
_08001506:
	ldrb r0, [r4, #8]
	strb r0, [r2]
	ldrb r0, [r4, #9]
	strb r0, [r2, #1]
	mov r0, r8
	adds r1, r2, r0
	ldrb r0, [r4, #0xa]
	strb r0, [r1]
	ldrb r0, [r4, #0xb]
	strb r0, [r1, #1]
	ldrb r0, [r6]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r0, r1, #6
	adds r1, r1, r0
	lsls r1, r1, #1
	ldrb r2, [r4, #3]
	lsrs r0, r7, #0x11
	muls r0, r2, r0
	ldrb r2, [r4, #2]
	adds r0, r0, r2
	ldr r2, _08001598 @ =gUnk_02024ED0
	adds r0, r0, r2
	adds r1, r1, r0
	mov r7, ip
	cmp r7, #0
	beq _08001540
	ldrb r0, [r1]
	strb r0, [r7]
_08001540:
	ldrb r0, [r4, #0xc]
_08001542:
	strb r0, [r1]
	movs r2, #0
	ldr r0, _0800159C @ =gUnk_0203AD44
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r2, r0
	bhs _08001584
	ldr r6, _080015A0 @ =gCurLevelInfo
	ldr r3, _080015A4 @ =0x00007FFF
	movs r5, #0xcd
	lsls r5, r5, #3
_08001558:
	adds r0, r2, #0
	muls r0, r5, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, sb
	bne _08001578
	movs r7, #0x9b
	lsls r7, r7, #1
	adds r0, r1, r7
	strh r3, [r0]
	subs r7, #2
	adds r0, r1, r7
	strh r3, [r0]
_08001578:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrb r0, [r4]
	cmp r2, r0
	blo _08001558
_08001584:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001590: .4byte 0x0000065E
_08001594: .4byte gUnk_02028EE0
_08001598: .4byte gUnk_02024ED0
_0800159C: .4byte gUnk_0203AD44
_080015A0: .4byte gCurLevelInfo
_080015A4: .4byte 0x00007FFF

	thumb_func_start sub_080015A8
sub_080015A8: @ 0x080015A8
	push {r4, r5, r6, r7, lr}
	adds r5, r3, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r2, _08001624 @ =gCurLevelInfo
	movs r1, #0xcd
	lsls r1, r1, #3
	muls r0, r1, r0
	adds r4, r0, r2
	adds r0, r4, #0
	adds r0, #0xbc
	ldrh r0, [r0]
	lsrs r6, r0, #3
	ldr r3, _08001628 @ =gForegroundTilemaps
	ldr r2, _0800162C @ =gRoomProps
	subs r1, #0x70
	adds r0, r4, r1
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0, #0x18]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0, #0x1c]
	cmp r0, #0
	bne _08001638
	ldr r3, _08001630 @ =0x0000065E
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r0, r1, #6
	adds r1, r1, r0
	lsls r1, r1, #4
	lsls r0, r7, #1
	muls r0, r6, r0
	mov r3, ip
	lsls r2, r3, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r2, _08001634 @ =gUnk_02028EE0
	adds r0, r0, r2
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r5]
	ldrh r0, [r1, #2]
	strh r0, [r5, #2]
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r5, #4]
	ldrh r0, [r0, #2]
	strh r0, [r5, #6]
	b _0800166A
	.align 2, 0
_08001624: .4byte gCurLevelInfo
_08001628: .4byte gForegroundTilemaps
_0800162C: .4byte gRoomProps
_08001630: .4byte 0x0000065E
_08001634: .4byte gUnk_02028EE0
_08001638:
	ldr r1, _08001670 @ =0x0000065E
	adds r0, r4, r1
	ldrb r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r1, r0, #6
	adds r0, r0, r1
	lsls r0, r0, #4
	lsls r1, r7, #1
	muls r1, r6, r1
	mov r3, ip
	lsls r2, r3, #1
	adds r1, r1, r2
	ldr r2, _08001674 @ =gUnk_02028EE0
	adds r1, r1, r2
	adds r0, r0, r1
	ldrb r1, [r0]
	strb r1, [r5]
	ldrb r1, [r0, #1]
	strb r1, [r5, #1]
	adds r0, r0, r6
	ldrb r1, [r0]
	strb r1, [r5, #2]
	ldrb r0, [r0, #1]
	strb r0, [r5, #3]
_0800166A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001670: .4byte 0x0000065E
_08001674: .4byte gUnk_02028EE0

	thumb_func_start sub_08001678
sub_08001678: @ 0x08001678
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, r3, #0
	lsls r3, r1, #0x10
	lsrs r6, r3, #0x10
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	adds r7, r5, #0
	cmp r4, #1
	beq _080016C8
	cmp r4, #1
	blo _08001696
	cmp r4, #2
	beq _080016FC
	b _0800172C
_08001696:
	cmp r0, #0
	beq _080016B8
	ldr r1, _080016B4 @ =gUnk_02023358
	lsrs r2, r3, #0x13
	lsls r0, r5, #2
	adds r2, r2, r0
	adds r2, r2, r1
	movs r1, #7
	ands r1, r6
	movs r0, #1
	lsls r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	b _0800172A
	.align 2, 0
_080016B4: .4byte gUnk_02023358
_080016B8:
	ldr r1, _080016C4 @ =gUnk_02023358
	lsrs r2, r3, #0x13
	lsls r0, r7, #2
	adds r2, r2, r0
	adds r2, r2, r1
	b _0800171E
	.align 2, 0
_080016C4: .4byte gUnk_02023358
_080016C8:
	cmp r0, #0
	beq _080016E4
	ldr r0, _080016E0 @ =gUnk_02023368
	lsrs r1, r3, #0x13
	adds r1, r1, r0
	movs r0, #7
	ands r0, r6
	lsls r4, r0
	ldrb r0, [r1]
	orrs r4, r0
	strb r4, [r1]
	b _0800172C
	.align 2, 0
_080016E0: .4byte gUnk_02023368
_080016E4:
	ldr r0, _080016F8 @ =gUnk_02023368
	lsrs r1, r3, #0x13
	adds r1, r1, r0
	movs r0, #7
	ands r0, r6
	lsls r4, r0
	ldrb r0, [r1]
	bics r0, r4
	strb r0, [r1]
	b _0800172C
	.align 2, 0
_080016F8: .4byte gUnk_02023368
_080016FC:
	cmp r0, #0
	beq _08001718
	ldr r0, _08001714 @ =gUnk_02028BF0
	lsrs r2, r3, #0x13
	adds r2, r2, r0
	movs r1, #7
	ands r1, r6
	movs r0, #1
	lsls r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	b _0800172A
	.align 2, 0
_08001714: .4byte gUnk_02028BF0
_08001718:
	ldr r0, _08001734 @ =gUnk_02028BF0
	lsrs r2, r3, #0x13
	adds r2, r2, r0
_0800171E:
	movs r0, #7
	ands r0, r6
	movs r1, #1
	lsls r1, r0
	ldrb r0, [r2]
	bics r0, r1
_0800172A:
	strb r0, [r2]
_0800172C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001734: .4byte gUnk_02028BF0

	thumb_func_start sub_08001738
sub_08001738: @ 0x08001738
	push {r4, r5, lr}
	sub sp, #0x20
	adds r4, r0, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r2, [r4, #0x40]
	adds r0, r2, r0
	str r0, [sp, #0x10]
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r4, #0x44]
	adds r0, r1, r0
	str r0, [sp, #0x14]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [sp, #0x1c]
	add r1, sp, #0x10
	mov r0, sp
	movs r2, #0x10
	bl memcpy
	ldr r2, _080017C4 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	adds r1, r0, #0
	adds r1, #0xbc
	ldrh r1, [r1]
	lsls r1, r1, #8
	adds r0, #0xbe
	ldrh r0, [r0]
	lsls r5, r0, #8
	ldr r0, [sp, #8]
	cmp r0, #0
	blt _080017C0
	ldr r3, [sp]
	cmp r1, r3
	ble _080017C0
	ldr r4, [sp, #0xc]
	cmp r4, #0
	blt _080017C0
	ldr r2, [sp, #4]
	cmp r5, r2
	bgt _080017C8
_080017C0:
	movs r0, #0xff
	b _080017DE
	.align 2, 0
_080017C4: .4byte gCurLevelInfo
_080017C8:
	cmp r3, #0
	blt _080017DC
	cmp r0, r1
	bge _080017DC
	cmp r2, #0
	blt _080017DC
	cmp r4, r5
	bge _080017DC
	movs r0, #1
	b _080017DE
_080017DC:
	movs r0, #0
_080017DE:
	add sp, #0x20
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080017E8
sub_080017E8: @ 0x080017E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r4, r0, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r2, [r4, #0x40]
	adds r0, r2, r0
	str r0, [sp, #0x10]
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r4, #0x44]
	adds r0, r1, r0
	str r0, [sp, #0x14]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [sp, #0x1c]
	add r1, sp, #0x10
	mov r0, sp
	movs r2, #0x10
	bl memcpy
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	ldr r0, _08001870 @ =gCurLevelInfo
	adds r0, r1, r0
	ldr r6, [r0, #0x48]
	ldr r7, [sp, #8]
	cmp r6, r7
	bgt _0800186A
	ldr r5, [r0, #0x50]
	ldr r1, [sp]
	cmp r5, r1
	ble _0800186A
	ldr r3, [r0, #0x4c]
	ldr r4, [sp, #0xc]
	cmp r3, r4
	bgt _0800186A
	ldr r0, [r0, #0x54]
	ldr r2, [sp, #4]
	cmp r0, r2
	bgt _08001874
_0800186A:
	movs r0, #0xff
	b _0800188A
	.align 2, 0
_08001870: .4byte gCurLevelInfo
_08001874:
	cmp r6, r1
	bgt _08001888
	cmp r7, r5
	bge _08001888
	cmp r3, r2
	bgt _08001888
	cmp r4, r0
	bge _08001888
	movs r0, #1
	b _0800188A
_08001888:
	movs r0, #0
_0800188A:
	add sp, #0x20
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08001894
sub_08001894: @ 0x08001894
	push {r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r4, r0, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r2, [r4, #0x40]
	adds r0, r2, r0
	str r0, [sp, #0x10]
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r4, #0x44]
	adds r0, r1, r0
	str r0, [sp, #0x14]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [sp, #0x1c]
	add r1, sp, #0x10
	mov r0, sp
	movs r2, #0x10
	bl memcpy
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	ldr r0, _0800191C @ =gCurLevelInfo
	adds r0, r1, r0
	ldr r6, [r0, #0x6c]
	ldr r7, [sp, #8]
	cmp r6, r7
	bgt _08001916
	ldr r5, [r0, #0x74]
	ldr r1, [sp]
	cmp r5, r1
	ble _08001916
	ldr r3, [r0, #0x70]
	ldr r4, [sp, #0xc]
	cmp r3, r4
	bgt _08001916
	ldr r0, [r0, #0x78]
	ldr r2, [sp, #4]
	cmp r0, r2
	bgt _08001920
_08001916:
	movs r0, #0xff
	b _08001936
	.align 2, 0
_0800191C: .4byte gCurLevelInfo
_08001920:
	cmp r6, r1
	bgt _08001934
	cmp r7, r5
	bge _08001934
	cmp r3, r2
	bgt _08001934
	cmp r4, r0
	bge _08001934
	movs r0, #1
	b _08001936
_08001934:
	movs r0, #0
_08001936:
	add sp, #0x20
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08001940
sub_08001940: @ 0x08001940
	push {r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r4, r0, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r2, [r4, #0x40]
	adds r0, r2, r0
	str r0, [sp, #0x10]
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r4, #0x44]
	adds r0, r1, r0
	str r0, [sp, #0x14]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [sp, #0x1c]
	add r1, sp, #0x10
	mov r0, sp
	movs r2, #0x10
	bl memcpy
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	ldr r0, _080019D4 @ =gCurLevelInfo
	adds r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x90
	ldr r7, [r0]
	ldr r0, [sp, #8]
	mov ip, r0
	cmp r7, ip
	bgt _080019D0
	adds r0, r1, #0
	adds r0, #0x98
	ldr r6, [r0]
	ldr r3, [sp]
	cmp r6, r3
	ble _080019D0
	subs r0, #4
	ldr r4, [r0]
	ldr r5, [sp, #0xc]
	cmp r4, r5
	bgt _080019D0
	adds r0, #8
	ldr r0, [r0]
	ldr r2, [sp, #4]
	cmp r0, r2
	bgt _080019D8
_080019D0:
	movs r0, #0xff
	b _080019EE
	.align 2, 0
_080019D4: .4byte gCurLevelInfo
_080019D8:
	cmp r7, r3
	bgt _080019EC
	cmp ip, r6
	bge _080019EC
	cmp r4, r2
	bgt _080019EC
	cmp r5, r0
	bge _080019EC
	movs r0, #1
	b _080019EE
_080019EC:
	movs r0, #0
_080019EE:
	add sp, #0x20
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080019F8
sub_080019F8: @ 0x080019F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r0, #0x80
	lsls r0, r0, #1
	adds r5, r4, r0
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r6, r4, r1
	movs r2, #0xc0
	adds r2, r2, r4
	mov r8, r2
	ldr r2, [r4, #8]
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	bne _08001A54
	ldr r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x44
	asrs r0, r0, #8
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r5, #0x30]
	ldr r0, [r4, #0x10]
	adds r3, r4, #0
	adds r3, #0x46
	asrs r0, r0, #8
	ldrh r7, [r3]
	adds r0, r0, r7
	strh r0, [r5, #0x32]
	strh r2, [r3]
	strh r2, [r1]
	ldr r3, _08001A9C @ =gBgScrollRegs
	ldrh r2, [r5, #0x30]
	movs r1, #7
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3, #0xc]
	ldrh r0, [r5, #0x32]
	ands r1, r0
	strh r1, [r3, #0xe]
	adds r0, r5, #0
	bl sub_08153060
_08001A54:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08001AFE
	ldr r5, _08001AA0 @ =gRoomProps
	movs r0, #0xbf
	lsls r0, r0, #3
	adds r3, r4, r0
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, r0, r5
	ldrh r1, [r2, #0x12]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08001AA4
	movs r7, #0xe
	ldrsh r1, [r2, r7]
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	movs r2, #0x10
	ldrsh r1, [r0, r2]
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	b _08001AFE
	.align 2, 0
_08001A9C: .4byte gBgScrollRegs
_08001AA0: .4byte gRoomProps
_08001AA4:
	ldr r1, [r4, #0xc]
	asrs r1, r1, #4
	adds r0, r4, #0
	adds r0, #0xb8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	muls r1, r0, r1
	ldrh r0, [r2, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r4, #0x34]
	movs r7, #0xd1
	lsls r7, r7, #1
	adds r0, r4, r7
	ldrh r2, [r0]
	lsls r2, r2, #0xb
	ldr r0, _08001B80 @ =0xFFFF6000
	adds r2, r2, r0
	adds r0, r4, #0
	adds r0, #0xbe
	ldrh r1, [r0]
	lsls r1, r1, #4
	ldr r7, _08001B84 @ =0xFFFFF600
	adds r1, r1, r7
	ldr r0, [r4, #0x10]
	asrs r0, r0, #4
	subs r1, r1, r0
	adds r0, r4, #0
	adds r0, #0xba
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	muls r0, r1, r0
	subs r2, r2, r0
	str r2, [r4, #0x38]
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	ldrh r0, [r0, #0xc]
	lsls r0, r0, #8
	subs r2, r2, r0
	str r2, [r4, #0x38]
_08001AFE:
	ldr r2, [r4, #0x34]
	ldr r0, [r4, #0x3c]
	adds r2, r2, r0
	str r2, [r4, #0x34]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	asrs r2, r2, #8
	strh r2, [r6, #0x30]
	ldr r0, [r4, #0x38]
	asrs r3, r0, #8
	strh r3, [r6, #0x32]
	ldr r5, _08001B88 @ =gBgScrollRegs
	strh r2, [r5]
	strh r3, [r5, #2]
	ldrh r1, [r6, #0x2e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08001B32
	movs r0, #7
	ands r2, r0
	strh r2, [r5]
	ands r3, r0
	strh r3, [r5, #2]
_08001B32:
	adds r0, r6, #0
	bl sub_08153060
	ldr r0, [r4, #8]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08001C28
	ldr r5, _08001B8C @ =gRoomProps
	movs r0, #0xbf
	lsls r0, r0, #3
	adds r3, r4, r0
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, r0, r5
	ldrh r1, [r2, #0x12]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08001B90
	movs r7, #6
	ldrsh r1, [r2, r7]
	ldr r0, [r4, #0x24]
	adds r0, r0, r1
	str r0, [r4, #0x24]
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	movs r2, #8
	ldrsh r1, [r0, r2]
	ldr r0, [r4, #0x28]
	adds r0, r0, r1
	str r0, [r4, #0x28]
	b _08001BEA
	.align 2, 0
_08001B80: .4byte 0xFFFF6000
_08001B84: .4byte 0xFFFFF600
_08001B88: .4byte gBgScrollRegs
_08001B8C: .4byte gRoomProps
_08001B90:
	ldr r1, [r4, #0xc]
	asrs r1, r1, #4
	adds r0, r4, #0
	adds r0, #0xb4
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	muls r1, r0, r1
	ldrh r0, [r2, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r4, #0x24]
	movs r7, #0xe1
	lsls r7, r7, #1
	adds r0, r4, r7
	ldrh r2, [r0]
	lsls r2, r2, #0xb
	ldr r0, _08001C34 @ =0xFFFF6000
	adds r2, r2, r0
	adds r0, r4, #0
	adds r0, #0xbe
	ldrh r1, [r0]
	lsls r1, r1, #4
	ldr r7, _08001C38 @ =0xFFFFF600
	adds r1, r1, r7
	ldr r0, [r4, #0x10]
	asrs r0, r0, #4
	subs r1, r1, r0
	adds r0, r4, #0
	adds r0, #0xb6
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	muls r0, r1, r0
	subs r2, r2, r0
	str r2, [r4, #0x28]
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	ldrh r0, [r0, #4]
	lsls r0, r0, #8
	subs r2, r2, r0
	str r2, [r4, #0x28]
_08001BEA:
	ldr r2, [r4, #0x24]
	ldr r0, [r4, #0x2c]
	adds r2, r2, r0
	str r2, [r4, #0x24]
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x30]
	adds r0, r0, r1
	str r0, [r4, #0x28]
	asrs r2, r2, #8
	mov r0, r8
	strh r2, [r0, #0x30]
	ldr r0, [r4, #0x28]
	asrs r3, r0, #8
	mov r1, r8
	strh r3, [r1, #0x32]
	ldr r4, _08001C3C @ =gBgScrollRegs
	strh r2, [r4, #8]
	strh r3, [r4, #0xa]
	ldrh r1, [r1, #0x2e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08001C22
	movs r0, #7
	ands r2, r0
	strh r2, [r4, #8]
	ands r3, r0
	strh r3, [r4, #0xa]
_08001C22:
	mov r0, r8
	bl sub_08153060
_08001C28:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001C34: .4byte 0xFFFF6000
_08001C38: .4byte 0xFFFFF600
_08001C3C: .4byte gBgScrollRegs

	thumb_func_start sub_08001C40
sub_08001C40: @ 0x08001C40
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r6, #0
	movs r7, #0
	movs r1, #0xcc
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, _08001D0C @ =gKirbys
	adds r2, r2, r0
	ldr r0, [r4, #0xc]
	movs r1, #0xf0
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r1, [r2, #0x40]
	subs r3, r1, r0
	str r3, [r4, #0x1c]
	ldr r1, [r4, #0x10]
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r1, r1, r0
	ldr r0, [r2, #0x44]
	subs r0, r0, r1
	str r0, [r4, #0x20]
	ldr r1, _08001D10 @ =0x00000662
	adds r0, r4, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	rsbs r0, r1, #0
	cmp r3, r0
	blt _08001C90
	adds r0, r3, #0
	cmp r0, r1
	ble _08001C90
	adds r0, r1, #0
_08001C90:
	str r0, [r4, #0x1c]
	ldr r1, _08001D14 @ =0x00000664
	adds r0, r4, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r2, [r4, #0x20]
	rsbs r0, r1, #0
	cmp r2, r0
	blt _08001CAA
	adds r0, r2, #0
	cmp r0, r1
	ble _08001CAA
	adds r0, r1, #0
_08001CAA:
	str r0, [r4, #0x20]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08002DA0
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	bge _08001CBC
	rsbs r1, r1, #0
_08001CBC:
	ldr r5, _08001D10 @ =0x00000662
	adds r3, r4, r5
	movs r2, #0
	ldrsh r0, [r3, r2]
	cmp r1, r0
	bge _08001CCA
	movs r6, #1
_08001CCA:
	ldr r1, [r4, #0x20]
	cmp r1, #0
	bge _08001CD2
	rsbs r1, r1, #0
_08001CD2:
	ldr r5, _08001D14 @ =0x00000664
	adds r2, r4, r5
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r1, r0
	bge _08001CE0
	movs r7, #1
_08001CE0:
	ldrh r0, [r3]
	adds r0, #4
	strh r0, [r3]
	ldrh r0, [r2]
	adds r0, #4
	strh r0, [r2]
	cmp r6, #0
	beq _08001D06
	cmp r7, #0
	beq _08001D06
	movs r1, #0xf6
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #1
	str r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r3]
	strh r0, [r2]
_08001D06:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001D0C: .4byte gKirbys
_08001D10: .4byte 0x00000662
_08001D14: .4byte 0x00000664

	thumb_func_start sub_08001D18
sub_08001D18: @ 0x08001D18
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r0, _08001D38 @ =gUnk_02023354
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08001D3C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08001D44
	.align 2, 0
_08001D38: .4byte gUnk_02023354
_08001D3C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08001D44:
	adds r7, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, _08001D78 @ =gCurLevelInfo
	adds r4, r1, r0
	ldr r0, [r4, #8]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08001D5E
	b _08001FBC
_08001D5E:
	ldr r2, [r4, #0x68]
	cmp r2, #0
	bge _08001D7C
	ldr r0, [r4, #0x58]
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x60]
	str r0, [r4, #0x4c]
	ldr r0, [r4, #0x5c]
	str r0, [r4, #0x50]
	ldr r0, [r4, #0x64]
	str r0, [r4, #0x54]
	b _08001DFC
	.align 2, 0
_08001D78: .4byte gCurLevelInfo
_08001D7C:
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x58]
	cmp r0, r1
	bge _08001D8E
	adds r0, r0, r2
	str r0, [r4, #0x48]
	cmp r0, r1
	ble _08001D9C
	b _08001D9A
_08001D8E:
	cmp r0, r1
	ble _08001D9C
	subs r0, r0, r2
	str r0, [r4, #0x48]
	cmp r0, r1
	bge _08001D9C
_08001D9A:
	str r1, [r4, #0x48]
_08001D9C:
	ldr r0, [r4, #0x4c]
	ldr r1, [r4, #0x5c]
	cmp r0, r1
	bge _08001DAE
	adds r0, r0, r2
	str r0, [r4, #0x4c]
	cmp r0, r1
	ble _08001DBC
	b _08001DBA
_08001DAE:
	cmp r0, r1
	ble _08001DBC
	subs r0, r0, r2
	str r0, [r4, #0x4c]
	cmp r0, r1
	bge _08001DBC
_08001DBA:
	str r1, [r4, #0x4c]
_08001DBC:
	ldr r0, [r4, #0x50]
	ldr r1, [r4, #0x60]
	cmp r0, r1
	bge _08001DCE
	adds r0, r0, r2
	str r0, [r4, #0x50]
	cmp r0, r1
	ble _08001DDC
	b _08001DDA
_08001DCE:
	cmp r0, r1
	ble _08001DDC
	subs r0, r0, r2
	str r0, [r4, #0x50]
	cmp r0, r1
	bge _08001DDC
_08001DDA:
	str r1, [r4, #0x50]
_08001DDC:
	ldr r0, [r4, #0x54]
	ldr r1, [r4, #0x64]
	cmp r0, r1
	bge _08001DEE
	adds r0, r0, r2
	str r0, [r4, #0x54]
	cmp r0, r1
	ble _08001DFC
	b _08001DFA
_08001DEE:
	cmp r0, r1
	ble _08001DFC
	subs r0, r0, r2
	str r0, [r4, #0x54]
	cmp r0, r1
	bge _08001DFC
_08001DFA:
	str r1, [r4, #0x54]
_08001DFC:
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r2, [r0]
	adds r3, r0, #0
	cmp r2, #0
	bge _08001E26
	ldr r0, [r4, #0x7c]
	str r0, [r4, #0x6c]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	str r0, [r4, #0x70]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	str r0, [r4, #0x74]
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	str r0, [r4, #0x78]
	b _08001ECA
_08001E26:
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x7c]
	cmp r0, r1
	bge _08001E38
	adds r0, r0, r2
	str r0, [r4, #0x6c]
	cmp r0, r1
	ble _08001E46
	b _08001E44
_08001E38:
	cmp r0, r1
	ble _08001E46
	subs r0, r0, r2
	str r0, [r4, #0x6c]
	cmp r0, r1
	bge _08001E46
_08001E44:
	str r1, [r4, #0x6c]
_08001E46:
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, [r4, #0x70]
	ldr r0, [r2]
	cmp r1, r0
	bge _08001E60
	ldr r0, [r3]
	adds r0, r1, r0
	str r0, [r4, #0x70]
	ldr r1, [r2]
	cmp r0, r1
	ble _08001E72
	b _08001E70
_08001E60:
	cmp r1, r0
	ble _08001E72
	ldr r0, [r3]
	subs r0, r1, r0
	str r0, [r4, #0x70]
	ldr r1, [r2]
	cmp r0, r1
	bge _08001E72
_08001E70:
	str r1, [r4, #0x70]
_08001E72:
	adds r2, r4, #0
	adds r2, #0x84
	ldr r1, [r4, #0x74]
	ldr r0, [r2]
	cmp r1, r0
	bge _08001E8C
	ldr r0, [r3]
	adds r0, r1, r0
	str r0, [r4, #0x74]
	ldr r1, [r2]
	cmp r0, r1
	ble _08001E9E
	b _08001E9C
_08001E8C:
	cmp r1, r0
	ble _08001E9E
	ldr r0, [r3]
	subs r0, r1, r0
	str r0, [r4, #0x74]
	ldr r1, [r2]
	cmp r0, r1
	bge _08001E9E
_08001E9C:
	str r1, [r4, #0x74]
_08001E9E:
	adds r2, r4, #0
	adds r2, #0x88
	ldr r1, [r4, #0x78]
	ldr r0, [r2]
	cmp r1, r0
	bge _08001EB8
	ldr r0, [r3]
	adds r0, r1, r0
	str r0, [r4, #0x78]
	ldr r1, [r2]
	cmp r0, r1
	ble _08001ECA
	b _08001EC8
_08001EB8:
	cmp r1, r0
	ble _08001ECA
	ldr r0, [r3]
	subs r0, r1, r0
	str r0, [r4, #0x78]
	ldr r1, [r2]
	cmp r0, r1
	bge _08001ECA
_08001EC8:
	str r1, [r4, #0x78]
_08001ECA:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r5, [r0]
	adds r6, r0, #0
	cmp r5, #0
	bge _08001F00
	adds r1, r4, #0
	adds r1, #0x90
	subs r0, #0x10
	ldr r0, [r0]
	str r0, [r1]
	adds r1, #4
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	str r0, [r1]
	adds r1, #4
	adds r0, r4, #0
	adds r0, #0xa4
	ldr r0, [r0]
	str r0, [r1]
	adds r1, #4
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	str r0, [r1]
	b _08001FBC
_08001F00:
	adds r3, r4, #0
	adds r3, #0x90
	adds r2, r4, #0
	adds r2, #0xa0
	ldr r0, [r3]
	ldr r1, [r2]
	cmp r0, r1
	bge _08001F1C
	adds r0, r0, r5
	str r0, [r3]
	ldr r1, [r2]
	cmp r0, r1
	ble _08001F2C
	b _08001F2A
_08001F1C:
	cmp r0, r1
	ble _08001F2C
	subs r0, r0, r5
	str r0, [r3]
	ldr r1, [r2]
	cmp r0, r1
	bge _08001F2C
_08001F2A:
	str r1, [r3]
_08001F2C:
	adds r2, r4, #0
	adds r2, #0x94
	adds r3, r4, #0
	adds r3, #0xa4
	ldr r1, [r2]
	ldr r0, [r3]
	cmp r1, r0
	bge _08001F4A
	ldr r0, [r6]
	adds r0, r1, r0
	str r0, [r2]
	ldr r1, [r3]
	cmp r0, r1
	ble _08001F5C
	b _08001F5A
_08001F4A:
	cmp r1, r0
	ble _08001F5C
	ldr r0, [r6]
	subs r0, r1, r0
	str r0, [r2]
	ldr r1, [r3]
	cmp r0, r1
	bge _08001F5C
_08001F5A:
	str r1, [r2]
_08001F5C:
	adds r2, r4, #0
	adds r2, #0x98
	adds r3, r4, #0
	adds r3, #0xa8
	ldr r1, [r2]
	ldr r0, [r3]
	cmp r1, r0
	bge _08001F7A
	ldr r0, [r6]
	adds r0, r1, r0
	str r0, [r2]
	ldr r1, [r3]
	cmp r0, r1
	ble _08001F8C
	b _08001F8A
_08001F7A:
	cmp r1, r0
	ble _08001F8C
	ldr r0, [r6]
	subs r0, r1, r0
	str r0, [r2]
	ldr r1, [r3]
	cmp r0, r1
	bge _08001F8C
_08001F8A:
	str r1, [r2]
_08001F8C:
	adds r2, r4, #0
	adds r2, #0x9c
	adds r3, r4, #0
	adds r3, #0xac
	ldr r1, [r2]
	ldr r0, [r3]
	cmp r1, r0
	bge _08001FAA
	ldr r0, [r6]
	adds r0, r1, r0
	str r0, [r2]
	ldr r1, [r3]
	cmp r0, r1
	ble _08001FBC
	b _08001FBA
_08001FAA:
	cmp r1, r0
	ble _08001FBC
	ldr r0, [r6]
	subs r0, r1, r0
	str r0, [r2]
	ldr r1, [r3]
	cmp r0, r1
	bge _08001FBC
_08001FBA:
	str r1, [r2]
_08001FBC:
	ldr r1, _08001FF4 @ =gUnk_082D8D60
	movs r2, #0xf6
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r4, #0
	bl _call_via_r2
	ldr r1, [r4, #0xc]
	str r1, [r4, #0x14]
	ldr r2, [r4, #0x10]
	str r2, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	adds r1, r1, r0
	str r1, [r4, #0xc]
	ldr r0, [r4, #0x20]
	adds r2, r2, r0
	str r2, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x20]
	str r0, [r4, #0x1c]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001FF4: .4byte gUnk_082D8D60

	thumb_func_start sub_08001FF8
sub_08001FF8: @ 0x08001FF8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r4, #0
	ldr r0, _0800202C @ =gUnk_0203AD44
	adds r6, r0, #0
	ldrb r0, [r6]
	cmp r4, r0
	bhs _08002078
	ldr r5, _08002030 @ =gUnk_02026D50
	movs r2, #2
	mov r8, r2
	ldr r0, _08002034 @ =0x0000FFFC
	mov ip, r0
	ldr r7, _08002038 @ =0x0000FFF3
_08002016:
	lsls r1, r4, #1
	adds r3, r1, r5
	ldrh r2, [r3]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0800203C
	mov r0, ip
	ands r0, r2
	b _08002048
	.align 2, 0
_0800202C: .4byte gUnk_0203AD44
_08002030: .4byte gUnk_02026D50
_08002034: .4byte 0x0000FFFC
_08002038: .4byte 0x0000FFF3
_0800203C:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0800204A
	mov r0, r8
	orrs r0, r2
_08002048:
	strh r0, [r3]
_0800204A:
	adds r1, r1, r5
	ldrh r2, [r1]
	movs r3, #8
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0800205E
	adds r0, r7, #0
	ands r0, r2
	b _0800206A
_0800205E:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0800206C
	adds r0, r2, #0
	orrs r0, r3
_0800206A:
	strh r0, [r1]
_0800206C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r2, [r6]
	cmp r4, r2
	blo _08002016
_08002078:
	movs r4, #0
	ldrb r0, [r6]
	cmp r4, r0
	bhs _080020BE
	ldr r5, _0800210C @ =gCurLevelInfo
	ldr r2, _08002110 @ =0x0000FFFF
	mov r8, r2
	movs r0, #0xf6
	lsls r0, r0, #1
	adds r7, r5, r0
_0800208C:
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r1, r4, #0
	muls r1, r0, r1
	adds r0, r1, r5
	movs r2, #0xbf
	lsls r2, r2, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, r8
	beq _080020B0
	adds r0, r1, r7
	ldr r0, [r0]
	cmp r0, #4
	beq _080020B0
	adds r0, r4, #0
	bl sub_08001D18
_080020B0:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _08002114 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r4, r0
	blo _0800208C
_080020BE:
	movs r4, #0
	ldrb r6, [r6]
	cmp r4, r6
	bhs _08002102
	ldr r5, _0800210C @ =gCurLevelInfo
	ldr r7, _08002110 @ =0x0000FFFF
	movs r0, #0xf6
	lsls r0, r0, #1
	adds r6, r5, r0
_080020D0:
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r1, r4, #0
	muls r1, r0, r1
	adds r0, r1, r5
	movs r2, #0xbf
	lsls r2, r2, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, r7
	beq _080020F4
	adds r0, r1, r6
	ldr r0, [r0]
	cmp r0, #4
	bne _080020F4
	adds r0, r4, #0
	bl sub_08001D18
_080020F4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _08002114 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r4, r0
	blo _080020D0
_08002102:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800210C: .4byte gCurLevelInfo
_08002110: .4byte 0x0000FFFF
_08002114: .4byte gUnk_0203AD44

	thumb_func_start sub_08002118
sub_08002118: @ 0x08002118
	push {r4, r5, r6, r7, lr}
	ldr r0, _08002134 @ =gUnk_02023354
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08002138
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08002140
	.align 2, 0
_08002134: .4byte gUnk_02023354
_08002138:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08002140:
	adds r5, r0, #0
	movs r4, #0
	ldr r0, _080021C8 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r4, r0
	bhs _08002184
	ldr r7, _080021CC @ =gCurLevelInfo
	ldr r6, _080021D0 @ =0x0000FFFF
_08002150:
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r4, r0
	adds r0, r0, r7
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, r6
	beq _08002176
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	ldrb r2, [r5]
	cmp r4, r2
	bne _08002172
	movs r1, #1
_08002172:
	bl sub_08003108
_08002176:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _080021C8 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r4, r0
	blo _08002150
_08002184:
	ldr r3, _080021D4 @ =gUnk_03002470
	ldr r2, _080021D8 @ =gUnk_03006070
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _080021DC @ =sub_080021E4
	str r1, [r0]
	ldr r2, _080021E0 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2]
	ldr r2, _080021CC @ =gCurLevelInfo
	ldrb r1, [r5]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r2, r0, r2
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r1, [r0]
	ldr r0, _080021D0 @ =0x0000FFFF
	cmp r1, r0
	beq _080021C2
	adds r0, r2, #0
	bl sub_080019F8
_080021C2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080021C8: .4byte gUnk_0203AD44
_080021CC: .4byte gCurLevelInfo
_080021D0: .4byte 0x0000FFFF
_080021D4: .4byte gUnk_03002470
_080021D8: .4byte gUnk_03006070
_080021DC: .4byte sub_080021E4
_080021E0: .4byte gUnk_03002440

	thumb_func_start sub_080021E4
sub_080021E4: @ 0x080021E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _0800221C @ =gUnk_03002440
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08002200
	b _08002312
_08002200:
	ldr r0, _08002220 @ =gUnk_02023354
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08002224
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0800222C
	.align 2, 0
_0800221C: .4byte gUnk_03002440
_08002220: .4byte gUnk_02023354
_08002224:
	ldrh r0, [r2, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r0, r0, r2
_0800222C:
	ldrb r3, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, _08002324 @ =gCurLevelInfo
	adds r1, r1, r0
	str r1, [sp]
	movs r2, #0xbf
	lsls r2, r2, #3
	adds r0, r1, r2
	ldrh r4, [r0]
	ldr r0, _08002328 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	bne _08002312
	ldr r2, _0800232C @ =gForegroundInfo
	ldr r1, _08002330 @ =gRoomProps
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	mov r8, r0
	ldrh r3, [r0, #0xc]
	mov sl, r3
	movs r2, #0
	cmp r2, sl
	bhs _08002312
_08002276:
	lsls r1, r2, #2
	ldr r3, _08002334 @ =0x000005FC
	adds r0, r1, r3
	ldr r3, [sp]
	adds r7, r3, r0
	adds r1, r1, r2
	lsls r1, r1, #2
	mov r3, r8
	ldr r0, [r3, #8]
	adds r4, r0, r1
	ldrh r0, [r7, #2]
	adds r2, #1
	mov sb, r2
	cmp r0, #0
	bne _080022DA
	ldrh r0, [r7]
	ldr r1, [r4, #0xc]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r3, #4]
	ldr r0, [r0]
	adds r6, r1, r0
	ldr r0, [r4]
	ldr r1, _08002338 @ =0x06008000
	adds r5, r0, r1
	movs r3, #0
	ldrh r2, [r4, #0x12]
	cmp r3, r2
	bhs _080022DA
_080022B0:
	ldr r2, [r4, #4]
	lsls r2, r2, #9
	lsrs r2, r2, #0xb
	movs r0, #0x80
	lsls r0, r0, #0x13
	orrs r2, r0
	adds r0, r6, #0
	adds r1, r5, #0
	str r3, [sp, #4]
	bl CpuSet
	ldr r0, [r4, #8]
	adds r6, r6, r0
	adds r5, r5, r0
	ldr r3, [sp, #4]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r4, #0x12]
	cmp r3, r0
	blo _080022B0
_080022DA:
	ldrh r0, [r7, #2]
	adds r0, #1
	movs r3, #0
	strh r0, [r7, #2]
	ldrh r1, [r7]
	ldr r2, [r4, #0xc]
	lsls r1, r1, #3
	adds r1, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1, #4]
	cmp r0, r1
	blo _08002308
	strh r3, [r7, #2]
	ldrh r0, [r7]
	adds r0, #1
	strh r0, [r7]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r4, [r4, #0x10]
	cmp r0, r4
	blo _08002308
	strh r3, [r7]
_08002308:
	mov r1, sb
	lsls r0, r1, #0x10
	lsrs r2, r0, #0x10
	cmp r2, sl
	blo _08002276
_08002312:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002324: .4byte gCurLevelInfo
_08002328: .4byte gUnk_03000510
_0800232C: .4byte gForegroundInfo
_08002330: .4byte gRoomProps
_08002334: .4byte 0x000005FC
_08002338: .4byte 0x06008000

	thumb_func_start sub_0800233C
sub_0800233C: @ 0x0800233C
	push {r4, lr}
	ldr r4, _0800236C @ =gUnk_02023350
	ldr r0, [r4]
	cmp r0, #0
	beq _0800234E
	bl TaskDestroy
	movs r0, #0
	str r0, [r4]
_0800234E:
	ldr r4, _08002370 @ =gUnk_02023354
	ldr r0, [r4]
	cmp r0, #0
	beq _08002364
	bl sub_080006EC
	ldr r0, [r4]
	bl TaskDestroy
	movs r0, #0
	str r0, [r4]
_08002364:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800236C: .4byte gUnk_02023350
_08002370: .4byte gUnk_02023354

	thumb_func_start sub_08002374
sub_08002374: @ 0x08002374
	push {lr}
	ldr r0, _08002390 @ =gUnk_02023354
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08002394
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0800239C
	.align 2, 0
_08002390: .4byte gUnk_02023354
_08002394:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0800239C:
	ldrb r0, [r0]
	pop {r1}
	bx r1
	.align 2, 0
