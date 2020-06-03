	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0801A0AC
sub_0801A0AC: @ 0x0801A0AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	movs r0, #0
	strh r0, [r5, #0xe]
	ldrh r1, [r5, #0xc]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _0801A0D2
	bl sub_08030B38
	movs r0, #7
	b _0801A27A
_0801A0D2:
	ldr r1, _0801A128 @ =gUnk_082DE094
	adds r4, r5, #0
	adds r4, #0x80
	ldr r0, [r4]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_08030C40
	ldr r2, _0801A12C @ =gMultiBootStruct
	ldrb r0, [r2, #1]
	mov sl, r4
	cmp r0, #1
	bls _0801A190
	ldrb r0, [r2, #2]
	cmp r0, #3
	bne _0801A190
	ldrb r0, [r2]
	strb r0, [r5, #0x10]
	ldrb r0, [r2, #1]
	strb r0, [r5, #0x11]
	ldr r1, _0801A130 @ =gUnk_0203AD3C
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r1, _0801A134 @ =gUnk_0203AD30
	ldrb r0, [r2, #1]
	strb r0, [r1]
	ldr r1, _0801A138 @ =gUnk_0300050C
	ldr r0, [r1]
	cmp r0, #1
	bne _0801A148
	ldr r2, _0801A13C @ =gUnk_0203AD10
	ldr r0, [r2]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	ldrh r1, [r5, #0xc]
	ldr r0, _0801A140 @ =0x00007FFF
	ands r0, r1
	strh r0, [r5, #0xc]
	ldr r0, _0801A144 @ =sub_0801A800
	str r0, [r5, #0x14]
	b _0801A17A
	.align 2, 0
_0801A128: .4byte gUnk_082DE094
_0801A12C: .4byte gMultiBootStruct
_0801A130: .4byte gUnk_0203AD3C
_0801A134: .4byte gUnk_0203AD30
_0801A138: .4byte gUnk_0300050C
_0801A13C: .4byte gUnk_0203AD10
_0801A140: .4byte 0x00007FFF
_0801A144: .4byte sub_0801A800
_0801A148:
	ldr r0, [r1]
	cmp r0, #2
	bne _0801A17A
	bl m4aSoundVSyncOn
	ldr r2, _0801A180 @ =gUnk_0203AD10
	ldr r0, [r2]
	movs r1, #8
	orrs r0, r1
	str r0, [r2]
	ldrh r0, [r5, #0xc]
	movs r2, #0x80
	lsls r2, r2, #8
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5, #0xc]
	adds r0, r5, #0
	adds r0, #0x9a
	strh r6, [r0]
	ldr r0, _0801A184 @ =sub_0801A868
	str r0, [r5, #0x14]
	ldr r0, _0801A188 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801A18C @ =sub_0801A4E0
	str r0, [r1, #8]
_0801A17A:
	bl sub_08030B38
	b _0801A35E
	.align 2, 0
_0801A180: .4byte gUnk_0203AD10
_0801A184: .4byte sub_0801A868
_0801A188: .4byte gCurTask
_0801A18C: .4byte sub_0801A4E0
_0801A190:
	ldr r0, _0801A228 @ =gUnk_0300050C
	ldr r1, [r0]
	ldr r2, _0801A22C @ =gMultiBootStruct
	mov r8, r2
	cmp r1, #2
	bne _0801A1C8
	ldrh r0, [r2, #6]
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0801A1C8
	ldrh r0, [r2, #8]
	cmp r0, r1
	bne _0801A1C8
	ldrb r0, [r2, #1]
	movs r1, #0xaa
	adds r1, r1, r5
	mov sb, r1
	movs r2, #0xac
	adds r2, r2, r5
	mov ip, r2
	adds r3, r5, #0
	adds r3, #0xb0
	adds r6, r5, #0
	adds r6, #0xb1
	cmp r0, #1
	bhi _0801A204
_0801A1C8:
	adds r0, r5, #0
	adds r0, #0xaa
	mov r1, r8
	ldrh r2, [r1, #6]
	ldrh r1, [r0]
	mov sb, r0
	movs r0, #0xac
	adds r0, r0, r5
	mov ip, r0
	adds r3, r5, #0
	adds r3, #0xb0
	adds r6, r5, #0
	adds r6, #0xb1
	cmp r1, r2
	bne _0801A204
	mov r2, r8
	ldrh r1, [r2, #8]
	ldrh r0, [r0]
	cmp r0, r1
	bne _0801A204
	adds r7, r3, #0
	ldrb r1, [r2, #1]
	ldrb r0, [r7]
	cmp r0, r1
	bne _0801A204
	adds r4, r6, #0
	ldrb r1, [r2, #2]
	ldrb r0, [r4]
	cmp r0, r1
	beq _0801A230
_0801A204:
	mov r1, r8
	ldrh r0, [r1, #6]
	movs r1, #0
	mov r2, sb
	strh r0, [r2]
	mov r2, r8
	ldrh r0, [r2, #8]
	mov r2, ip
	strh r0, [r2]
	adds r0, r5, #0
	adds r0, #0xae
	strh r1, [r0]
	mov r1, r8
	ldrb r0, [r1, #1]
	strb r0, [r3]
	ldrb r0, [r1, #2]
	strb r0, [r6]
	b _0801A254
	.align 2, 0
_0801A228: .4byte gUnk_0300050C
_0801A22C: .4byte gMultiBootStruct
_0801A230:
	adds r1, r5, #0
	adds r1, #0xae
	ldrh r0, [r1]
	cmp r0, #0xb4
	bls _0801A250
	bl sub_08030B38
	movs r0, #0
	strb r0, [r5, #0x10]
	strb r0, [r5, #0x11]
	mov r2, r8
	ldrb r0, [r2, #1]
	strb r0, [r7]
	ldrb r0, [r2, #2]
	strb r0, [r4]
	b _0801A320
_0801A250:
	adds r0, #1
	strh r0, [r1]
_0801A254:
	mov r1, r8
	ldrb r0, [r1, #3]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _0801A274
	mov r2, sl
	ldr r0, [r2]
	cmp r0, #3
	bne _0801A294
	ldr r2, _0801A288 @ =gUnk_0300050C
	ldr r0, [r2]
	cmp r0, #2
	bne _0801A294
	strb r1, [r5, #0x10]
	strb r1, [r5, #0x11]
_0801A274:
	bl sub_08030B38
	movs r0, #8
_0801A27A:
	strh r0, [r5, #0xe]
	ldr r0, _0801A28C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801A290 @ =nullsub_26
	str r0, [r1, #8]
	b _0801A35E
	.align 2, 0
_0801A288: .4byte gUnk_0300050C
_0801A28C: .4byte gCurTask
_0801A290: .4byte nullsub_26
_0801A294:
	mov r1, r8
	ldrb r0, [r1, #3]
	adds r2, r0, #0
	cmp r2, #0
	bne _0801A316
	ldrb r0, [r1]
	strb r0, [r5, #0x10]
	ldrb r0, [r1, #1]
	strb r0, [r5, #0x11]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0801A2B0
	strb r2, [r5, #0x11]
_0801A2B0:
	ldrb r0, [r1]
	adds r2, r0, #0
	cmp r2, #0
	bne _0801A32C
	ldrb r0, [r1, #2]
	cmp r0, #2
	bne _0801A302
	mov r1, sl
	ldr r0, [r1]
	cmp r0, #3
	bne _0801A2CE
	ldr r0, _0801A2F4 @ =gUnk_0300050C
	ldr r0, [r0]
	cmp r0, #2
	beq _0801A32C
_0801A2CE:
	adds r1, r5, #0
	adds r1, #0x9c
	ldrh r0, [r1]
	cmp r0, #0x5a
	bls _0801A2FC
	movs r0, #1
	strh r0, [r5, #0xe]
	ldrh r1, [r5, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _0801A32C
	bl sub_08030C1C
	ldrh r1, [r5, #0xc]
	ldr r0, _0801A2F8 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r5, #0xc]
	b _0801A32C
	.align 2, 0
_0801A2F4: .4byte gUnk_0300050C
_0801A2F8: .4byte 0x0000FFFE
_0801A2FC:
	adds r0, #1
	strh r0, [r1]
	b _0801A32C
_0801A302:
	adds r0, r5, #0
	adds r0, #0x9c
	strh r2, [r0]
	mov r2, r8
	ldrb r0, [r2, #2]
	cmp r0, #0
	bne _0801A32C
	movs r0, #0
	strb r0, [r5, #0x11]
	b _0801A32C
_0801A316:
	bl sub_08030B38
	movs r0, #0
	strb r0, [r5, #0x10]
	strb r0, [r5, #0x11]
_0801A320:
	ldr r0, _0801A328 @ =sub_08019FDC
	str r0, [r5, #0x14]
	b _0801A35E
	.align 2, 0
_0801A328: .4byte sub_08019FDC
_0801A32C:
	adds r0, r5, #0
	adds r0, #0x9e
	ldrh r1, [r0]
	adds r4, r0, #0
	cmp r1, #2
	bne _0801A358
	ldr r0, _0801A36C @ =gUnk_0300050C
	ldr r0, [r0]
	cmp r0, #2
	beq _0801A358
	bl m4aSoundVSyncOn
	movs r0, #2
	bl m4aSongNumStartOrChange
	bl sub_08030B38
	movs r0, #0
	strb r0, [r5, #0x10]
	strb r0, [r5, #0x11]
	ldr r0, _0801A370 @ =sub_08019FDC
	str r0, [r5, #0x14]
_0801A358:
	ldr r0, _0801A36C @ =gUnk_0300050C
	ldr r0, [r0]
	strh r0, [r4]
_0801A35E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801A36C: .4byte gUnk_0300050C
_0801A370: .4byte sub_08019FDC

	thumb_func_start sub_0801A374
sub_0801A374: @ 0x0801A374
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x9a
	ldrh r0, [r1]
	subs r0, #1
	movs r6, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	ldr r1, _0801A3FC @ =0xFFFF0000
	cmp r0, r1
	beq _0801A410
	bl sub_08031C64
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	bne _0801A42C
	ldr r4, _0801A400 @ =gUnk_0203AD30
	ldr r7, _0801A404 @ =gUnk_020382A0
	adds r1, r7, #0
	adds r1, #0x28
	ldrb r0, [r4]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0801A410
	bl sub_08031C3C
	movs r3, #0
	ldrb r0, [r4]
	cmp r6, r0
	bhs _0801A3DC
	adds r6, r5, #0
	adds r6, #0x84
	adds r7, #8
	mov ip, r7
	ldr r7, _0801A408 @ =gUnk_0203AD1C
_0801A3BE:
	lsls r2, r3, #2
	adds r2, r6, r2
	lsls r1, r3, #3
	add r1, ip
	ldr r0, [r1]
	str r0, [r2]
	adds r2, r3, r7
	ldrb r0, [r1, #4]
	strb r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrb r0, [r4]
	cmp r3, r0
	blo _0801A3BE
_0801A3DC:
	ldr r6, _0801A40C @ =sub_0801A824
	cmp r3, #3
	bhi _0801A3F8
	ldr r4, _0801A408 @ =gUnk_0203AD1C
	movs r2, #0xff
_0801A3E6:
	adds r0, r3, r4
	ldrb r1, [r0]
	orrs r1, r2
	strb r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _0801A3E6
_0801A3F8:
	str r6, [r5, #0x14]
	b _0801A462
	.align 2, 0
_0801A3FC: .4byte 0xFFFF0000
_0801A400: .4byte gUnk_0203AD30
_0801A404: .4byte gUnk_020382A0
_0801A408: .4byte gUnk_0203AD1C
_0801A40C: .4byte sub_0801A824
_0801A410:
	ldr r0, _0801A424 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r0, _0801A428 @ =gUnk_02038580
	str r6, [r0]
	bl sub_08032E98
	b _0801A462
	.align 2, 0
_0801A424: .4byte gCurTask
_0801A428: .4byte gUnk_02038580
_0801A42C:
	cmp r0, #1
	bne _0801A448
	adds r0, r5, #0
	adds r0, #0x9c
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #8
	bls _0801A462
	bl sub_08031C54
	b _0801A462
_0801A448:
	cmp r0, #0
	bge _0801A45C
	bl sub_08031C3C
	ldr r0, _0801A458 @ =sub_0801A970
	str r0, [r5, #0x14]
	b _0801A462
	.align 2, 0
_0801A458: .4byte sub_0801A970
_0801A45C:
	adds r0, r5, #0
	adds r0, #0x9c
	strh r6, [r0]
_0801A462:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801A468
sub_0801A468: @ 0x0801A468
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r3, _0801A4C4 @ =gBldRegs
	adds r2, r6, #0
	adds r2, #0x98
	ldrh r1, [r2]
	movs r0, #0x1f
	ands r0, r1
	strh r0, [r3, #4]
	adds r1, #1
	strh r1, [r2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xf
	bls _0801A4BA
	movs r0, #0x10
	strh r0, [r3, #4]
	mov r0, sp
	ldr r1, _0801A4C8 @ =0x00007FFF
	adds r4, r1, #0
	strh r4, [r0]
	ldr r1, _0801A4CC @ =gBgPalette
	ldr r5, _0801A4D0 @ =0x01000100
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _0801A4D4 @ =gObjPalette
	adds r2, r5, #0
	bl CpuSet
	ldr r2, _0801A4D8 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r0, _0801A4DC @ =sub_0801A830
	str r0, [r6, #0x14]
_0801A4BA:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801A4C4: .4byte gBldRegs
_0801A4C8: .4byte 0x00007FFF
_0801A4CC: .4byte gBgPalette
_0801A4D0: .4byte 0x01000100
_0801A4D4: .4byte gObjPalette
_0801A4D8: .4byte gUnk_03002440
_0801A4DC: .4byte sub_0801A830

	thumb_func_start sub_0801A4E0
sub_0801A4E0: @ 0x0801A4E0
	push {r4, r5, r6, lr}
	sub sp, #0xc
	ldr r0, _0801A500 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801A504
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0801A50C
	.align 2, 0
_0801A500: .4byte gCurTask
_0801A504:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0801A50C:
	adds r6, r0, #0
	ldrh r1, [r6, #0xc]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0801A57E
	ldr r2, _0801A5AC @ =gBldRegs
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801A52E
	ldrh r0, [r2, #4]
	cmp r0, #0
	beq _0801A52E
	subs r0, #1
	strh r0, [r2, #4]
_0801A52E:
	ldr r1, _0801A5B0 @ =gBgScrollRegs
	ldrh r0, [r1, #8]
	adds r0, #2
	strh r0, [r1, #8]
	adds r2, r6, #0
	adds r2, #0x68
	movs r0, #0x78
	strh r0, [r2]
	adds r3, r6, #0
	adds r3, #0x6a
	movs r0, #0x58
	strh r0, [r3]
	movs r0, #0x60
	str r0, [r6, #0x60]
	mov r1, sp
	adds r5, r6, #0
	adds r5, #0x94
	ldrh r0, [r5]
	strh r0, [r1]
	mov r0, sp
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	mov r1, sp
	ldrh r0, [r2]
	strh r0, [r1, #6]
	ldrh r0, [r3]
	strh r0, [r1, #8]
	adds r4, r6, #0
	adds r4, #0x58
	adds r0, r4, #0
	bl sub_08155604
	adds r0, r4, #0
	bl sub_0815604C
	ldrh r0, [r5]
	adds r0, #0x20
	strh r0, [r5]
_0801A57E:
	adds r2, r6, #0
	adds r2, #0x9a
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	movs r1, #0x96
	lsls r1, r1, #0x12
	cmp r0, r1
	bls _0801A59C
	ldr r1, _0801A5B4 @ =gUnk_02038580
	movs r0, #1
	str r0, [r1]
	bl sub_08032E98
_0801A59C:
	ldr r1, [r6, #0x14]
	adds r0, r6, #0
	bl _call_via_r1
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801A5AC: .4byte gBldRegs
_0801A5B0: .4byte gBgScrollRegs
_0801A5B4: .4byte gUnk_02038580

	thumb_func_start sub_0801A5B8
sub_0801A5B8: @ 0x0801A5B8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrh r1, [r5, #0xc]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0801A60A
	movs r0, #2
	bl m4aSongNumStart
	adds r4, r5, #0
	adds r4, #0x58
	movs r0, #0x10
	bl sub_081570B0
	str r0, [r5, #0x58]
	movs r2, #0
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x14]
	ldr r0, _0801A610 @ =0x00000365
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	movs r0, #0x78
	strh r0, [r4, #0x10]
	movs r0, #0x58
	strh r0, [r4, #0x12]
	movs r0, #0x60
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	ldr r0, _0801A614 @ =sub_0801A884
	str r0, [r5, #0x14]
_0801A60A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A610: .4byte 0x00000365
_0801A614: .4byte sub_0801A884

	thumb_func_start sub_0801A618
sub_0801A618: @ 0x0801A618
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0801A64C @ =gUnk_03002554
	ldr r1, [r0]
	movs r2, #0x20
	ands r1, r2
	adds r4, r0, #0
	cmp r1, #0
	beq _0801A658
	adds r0, r5, #0
	adds r0, #0x80
	ldr r0, [r0]
	cmp r0, #1
	beq _0801A63C
	cmp r0, #1
	blo _0801A63C
	cmp r0, #2
	bne _0801A63E
_0801A63C:
	movs r3, #9
_0801A63E:
	adds r0, r5, #0
	adds r0, #0xa9
	ldrb r0, [r0]
	cmp r0, r3
	bhs _0801A654
	ldr r0, _0801A650 @ =sub_0801A6BC
	b _0801A656
	.align 2, 0
_0801A64C: .4byte gUnk_03002554
_0801A650: .4byte sub_0801A6BC
_0801A654:
	ldr r0, _0801A6AC @ =sub_0801A8E8
_0801A656:
	str r0, [r5, #0x14]
_0801A658:
	ldr r0, [r4]
	movs r1, #0x10
	ands r0, r1
	adds r2, r5, #0
	adds r2, #0xa8
	cmp r0, #0
	beq _0801A66A
	movs r0, #1
	strb r0, [r2]
_0801A66A:
	ldr r0, _0801A6B0 @ =gUnk_030036B0
	ldr r1, _0801A6B4 @ =gUnk_08D60A80
	ldrh r1, [r1]
	strb r1, [r0]
	ldr r6, _0801A6B8 @ =gUnk_03002490
	ldrb r2, [r2]
	adds r1, r6, #0
	bl MultiSioMain
	str r0, [r4]
	adds r4, r5, #0
	adds r4, #0xa4
	ldr r0, [r4]
	cmp r0, #0
	bne _0801A690
	bl MultiSioStart
	movs r0, #1
	str r0, [r4]
_0801A690:
	adds r2, r5, #0
	adds r2, #0xa9
	ldrb r1, [r6, #2]
	ldrb r0, [r2]
	cmp r0, r1
	beq _0801A6A6
	strb r1, [r2]
	adds r1, r5, #0
	adds r1, #0x9a
	movs r0, #0
	strh r0, [r1]
_0801A6A6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801A6AC: .4byte sub_0801A8E8
_0801A6B0: .4byte gUnk_030036B0
_0801A6B4: .4byte gUnk_08D60A80
_0801A6B8: .4byte gUnk_03002490

	thumb_func_start sub_0801A6BC
sub_0801A6BC: @ 0x0801A6BC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x80
	ldr r0, [r0]
	cmp r0, #1
	beq _0801A6DC
	cmp r0, #1
	blo _0801A6D2
	cmp r0, #2
	beq _0801A6E4
	b _0801A6FC
_0801A6D2:
	ldr r2, _0801A6D8 @ =gUnk_082DE158
	b _0801A6E6
	.align 2, 0
_0801A6D8: .4byte gUnk_082DE158
_0801A6DC:
	ldr r2, _0801A6E0 @ =gUnk_082DE230
	b _0801A6E6
	.align 2, 0
_0801A6E0: .4byte gUnk_082DE230
_0801A6E4:
	ldr r2, _0801A728 @ =gUnk_082DE308
_0801A6E6:
	adds r3, r5, #0
	adds r3, #0xa9
	ldr r0, _0801A72C @ =gUnk_08D60A80
	ldrh r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r3, [r3]
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r4, [r0]
_0801A6FC:
	bl MultiSioStop
	ldr r2, _0801A730 @ =0x04000208
	movs r0, #0
	strh r0, [r2]
	ldr r1, _0801A734 @ =gIntrTable
	ldr r0, _0801A738 @ =Sio32MultiLoadIntr
	str r0, [r1]
	movs r0, #1
	strh r0, [r2]
	ldr r0, _0801A73C @ =gUnk_03002554
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	adds r1, r4, #0
	bl Sio32MultiLoadInit
	ldr r0, _0801A740 @ =sub_0801A8C4
	str r0, [r5, #0x14]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A728: .4byte gUnk_082DE308
_0801A72C: .4byte gUnk_08D60A80
_0801A730: .4byte 0x04000208
_0801A734: .4byte gIntrTable
_0801A738: .4byte Sio32MultiLoadIntr
_0801A73C: .4byte gUnk_03002554
_0801A740: .4byte sub_0801A8C4

	thumb_func_start sub_0801A744
sub_0801A744: @ 0x0801A744
	push {lr}
	ldr r1, _0801A77C @ =gUnk_0203AD10
	movs r2, #4
	str r2, [r1]
	ldr r1, _0801A780 @ =gUnk_0203AD3C
	movs r3, #0
	strb r3, [r1]
	ldr r1, _0801A784 @ =gUnk_0203AD44
	strb r2, [r1]
	ldr r2, _0801A788 @ =gUnk_0203AD30
	movs r1, #1
	strb r1, [r2]
	ldr r1, _0801A78C @ =gUnk_0203AD24
	strb r3, [r1]
	ldr r2, _0801A790 @ =gUnk_0203AD1C
	ldr r1, _0801A794 @ =gUnk_0203ADE0
	ldrh r1, [r1]
	strb r1, [r2]
	movs r1, #0xff
	strb r1, [r2, #3]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r2, #2]
	strb r1, [r2, #1]
	bl sub_0801E630
	pop {r0}
	bx r0
	.align 2, 0
_0801A77C: .4byte gUnk_0203AD10
_0801A780: .4byte gUnk_0203AD3C
_0801A784: .4byte gUnk_0203AD44
_0801A788: .4byte gUnk_0203AD30
_0801A78C: .4byte gUnk_0203AD24
_0801A790: .4byte gUnk_0203AD1C
_0801A794: .4byte gUnk_0203ADE0

	thumb_func_start sub_0801A798
sub_0801A798: @ 0x0801A798
	push {lr}
	ldr r0, _0801A7B4 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801A7B8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0801A7C0
	.align 2, 0
_0801A7B4: .4byte gCurTask
_0801A7B8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0801A7C0:
	ldr r1, [r0, #0x14]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801A7CC
sub_0801A7CC: @ 0x0801A7CC
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801A7E6
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0801A7EE
_0801A7E6:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0801A7EE:
	ldr r0, [r0, #0x58]
	cmp r0, #0
	beq _0801A7F8
	bl sub_08157190
_0801A7F8:
	pop {r0}
	bx r0

	thumb_func_start nullsub_26
nullsub_26: @ 0x0801A7FC
	bx lr
	.align 2, 0

	thumb_func_start sub_0801A800
sub_0801A800: @ 0x0801A800
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08158934
	adds r1, r4, #0
	adds r1, #0x9a
	movs r0, #0x3c
	strh r0, [r1]
	movs r0, #5
	strh r0, [r4, #0xe]
	ldr r0, _0801A820 @ =sub_0801A950
	str r0, [r4, #0x14]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801A820: .4byte sub_0801A950

	thumb_func_start sub_0801A824
sub_0801A824: @ 0x0801A824
	ldr r1, _0801A82C @ =sub_0801A9BC
	str r1, [r0, #0x14]
	bx lr
	.align 2, 0
_0801A82C: .4byte sub_0801A9BC

	thumb_func_start sub_0801A830
sub_0801A830: @ 0x0801A830
	push {r4, lr}
	adds r1, r0, #0
	adds r1, #0x80
	ldr r4, [r1]
	ldr r2, _0801A85C @ =gBldRegs
	movs r1, #0
	strh r1, [r2]
	strh r1, [r2, #4]
	ldr r1, _0801A860 @ =gUnk_030068D8
	adds r0, #0x84
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _0801A864 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	adds r0, r4, #0
	bl sub_0801E6C4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801A85C: .4byte gBldRegs
_0801A860: .4byte gUnk_030068D8
_0801A864: .4byte gCurTask

	thumb_func_start sub_0801A868
sub_0801A868: @ 0x0801A868
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08158934
	movs r0, #5
	strh r0, [r4, #0xe]
	ldr r0, _0801A880 @ =sub_0801A5B8
	str r0, [r4, #0x14]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801A880: .4byte sub_0801A5B8

	thumb_func_start sub_0801A884
sub_0801A884: @ 0x0801A884
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0xc]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0801A8B4
	ldr r1, _0801A8BC @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	bl sub_0801E754
	adds r0, r4, #0
	bl sub_0801A908
	bl MultiSioStart
	ldr r0, _0801A8C0 @ =sub_0801A618
	str r0, [r4, #0x14]
_0801A8B4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801A8BC: .4byte gBldRegs
_0801A8C0: .4byte sub_0801A618

	thumb_func_start sub_0801A8C4
sub_0801A8C4: @ 0x0801A8C4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	mov r0, sp
	bl Sio32MultiLoadMain
	cmp r0, #0
	beq _0801A8DC
	ldr r0, _0801A8E4 @ =sub_0801AA40
	str r0, [r4, #0x14]
_0801A8DC:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801A8E4: .4byte sub_0801AA40

	thumb_func_start sub_0801A8E8
sub_0801A8E8: @ 0x0801A8E8
	push {r4, lr}
	adds r0, #0x80
	ldr r4, [r0]
	ldr r0, _0801A904 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	adds r0, r4, #0
	bl sub_0801FCA8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801A904: .4byte gCurTask

	thumb_func_start sub_0801A908
sub_0801A908: @ 0x0801A908
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, _0801A940 @ =0x04000208
	movs r6, #0
	strh r6, [r2]
	ldr r1, _0801A944 @ =gIntrTable
	ldr r0, _0801A948 @ =gMultiSioIntrFuncBuf
	str r0, [r1]
	movs r0, #1
	strh r0, [r2]
	ldr r5, _0801A94C @ =gUnk_03002554
	ldr r0, [r5]
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r0, r1
	lsrs r0, r0, #8
	bl MultiSioInit
	adds r0, r4, #0
	adds r0, #0xa8
	movs r1, #0
	strb r6, [r0]
	adds r4, #0xa4
	str r1, [r4]
	str r1, [r5]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801A940: .4byte 0x04000208
_0801A944: .4byte gIntrTable
_0801A948: .4byte gMultiSioIntrFuncBuf
_0801A94C: .4byte gUnk_03002554

	thumb_func_start sub_0801A950
sub_0801A950: @ 0x0801A950
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0xc]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0801A966
	bl sub_0815898C
	ldr r0, _0801A96C @ =sub_0801A970
	str r0, [r4, #0x14]
_0801A966:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801A96C: .4byte sub_0801A970

	thumb_func_start sub_0801A970
sub_0801A970: @ 0x0801A970
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9c
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0801A9A8 @ =gUnk_030068D8
	ldr r1, [r2]
	ldr r0, _0801A9AC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0801A9B0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	str r0, [sp]
	mov r1, sp
	ldr r0, _0801A9B4 @ =gUnk_0203ADE0
	ldrh r0, [r0]
	strb r0, [r1, #4]
	movs r0, #1
	bl sub_08030C94
	ldr r0, _0801A9B8 @ =sub_0801A374
	str r0, [r4, #0x14]
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801A9A8: .4byte gUnk_030068D8
_0801A9AC: .4byte 0x00196225
_0801A9B0: .4byte 0x3C6EF35F
_0801A9B4: .4byte gUnk_0203ADE0
_0801A9B8: .4byte sub_0801A374

	thumb_func_start sub_0801A9BC
sub_0801A9BC: @ 0x0801A9BC
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x98
	movs r0, #0
	strh r0, [r1]
	movs r0, #3
	bl sub_08031C70
	bl sub_08031CD4
	ldr r0, _0801A9DC @ =sub_0801A9E0
	str r0, [r4, #0x14]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801A9DC: .4byte sub_0801A9E0

	thumb_func_start sub_0801A9E0
sub_0801A9E0: @ 0x0801A9E0
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x96
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x98
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bls _0801AA16
	movs r0, #0
	strh r0, [r2]
	bl sub_08030D4C
	cmp r0, #0
	bne _0801AA12
	bl sub_08032E98
	b _0801AA16
_0801AA12:
	ldr r0, _0801AA1C @ =sub_0801AA20
	str r0, [r4, #0x14]
_0801AA16:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801AA1C: .4byte sub_0801AA20

	thumb_func_start sub_0801AA20
sub_0801AA20: @ 0x0801AA20
	ldr r2, _0801AA38 @ =gBldRegs
	movs r3, #0
	movs r1, #0xbf
	strh r1, [r2]
	strh r3, [r2, #4]
	adds r1, r0, #0
	adds r1, #0x98
	strh r3, [r1]
	ldr r1, _0801AA3C @ =sub_0801A468
	str r1, [r0, #0x14]
	bx lr
	.align 2, 0
_0801AA38: .4byte gBldRegs
_0801AA3C: .4byte sub_0801A468

	thumb_func_start sub_0801AA40
sub_0801AA40: @ 0x0801AA40
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801A908
	ldr r0, _0801AA54 @ =sub_0801AA58
	str r0, [r4, #0x14]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801AA54: .4byte sub_0801AA58

	thumb_func_start sub_0801AA58
sub_0801AA58: @ 0x0801AA58
	push {lr}
	adds r2, r0, #0
	ldr r0, _0801AA88 @ =gUnk_03002554
	ldr r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801AA7C
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _0801AA78
	ldr r1, _0801AA8C @ =gUnk_030036B0
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
_0801AA78:
	ldr r0, _0801AA90 @ =sub_0801A618
	str r0, [r2, #0x14]
_0801AA7C:
	adds r0, r2, #0
	bl sub_0801A618
	pop {r0}
	bx r0
	.align 2, 0
_0801AA88: .4byte gUnk_03002554
_0801AA8C: .4byte gUnk_030036B0
_0801AA90: .4byte sub_0801A618
