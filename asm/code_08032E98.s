	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08032E98
sub_08032E98: @ 0x08032E98
	push {r4, r5, lr}
	sub sp, #8
	ldr r1, _08032EFC @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08032F00 @ =gUnk_03003A04
	ldr r0, _08032F04 @ =gUnk_03003790
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08032F08 @ =gUnk_030068B0
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08032F0C @ =gUnk_03006078
	ldr r0, _08032F10 @ =gUnk_030039A4
	ldrb r0, [r0]
	strb r0, [r1]
	bl VramResetHeapState
	ldr r1, _08032F14 @ =gVramHeapMaxTileSlots
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08032F18 @ =gVramHeapStartAddr
	ldr r0, _08032F1C @ =0x06010000
	str r0, [r1]
	bl EwramInitHeap
	ldr r0, _08032F20 @ =sub_080331E0
	movs r1, #0
	str r1, [sp]
	movs r1, #0x48
	movs r2, #1
	movs r3, #0xc
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08032F24
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08032F2C
	.align 2, 0
_08032EFC: .4byte 0x0000FFFF
_08032F00: .4byte gUnk_03003A04
_08032F04: .4byte gUnk_03003790
_08032F08: .4byte gUnk_030068B0
_08032F0C: .4byte gUnk_03006078
_08032F10: .4byte gUnk_030039A4
_08032F14: .4byte gVramHeapMaxTileSlots
_08032F18: .4byte gVramHeapStartAddr
_08032F1C: .4byte 0x06010000
_08032F20: .4byte sub_080331E0
_08032F24:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08032F2C:
	ldr r0, _08032FD8 @ =sub_08033008
	str r0, [r2, #0x40]
	adds r0, r2, #0
	adds r0, #0x44
	movs r4, #0
	strh r4, [r0]
	ldr r0, _08032FDC @ =gUnk_02038580
	ldr r1, [r0]
	adds r0, r2, #0
	adds r0, #0x46
	strh r1, [r0]
	bl sub_08031CC8
	bl sub_081589E8
	str r4, [sp, #4]
	ldr r1, _08032FE0 @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	ldr r0, _08032FE4 @ =gMultiSioSend
	str r0, [r1, #4]
	ldr r0, _08032FE8 @ =0x85000005
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08032F6E
_08032F66:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08032F66
_08032F6E:
	movs r0, #0
	str r0, [sp, #4]
	ldr r1, _08032FE0 @ =0x040000D4
	add r2, sp, #4
	str r2, [r1]
	ldr r0, _08032FEC @ =gMultiSioRecv
	str r0, [r1, #4]
	ldr r0, _08032FF0 @ =0x85000014
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	ldr r3, _08032FF4 @ =gMultiSioStatusFlags
	ldr r5, _08032FF8 @ =gUnk_03002558
	cmp r0, #0
	bge _08032F98
_08032F90:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08032F90
_08032F98:
	movs r4, #0
	str r4, [r3]
	strb r4, [r5]
	movs r0, #0
	bl MultiSioInit
	bl sub_08031BFC
	bl m4aMPlayAllStop
	ldr r0, _08032FFC @ =0x04000208
	strh r4, [r0]
	movs r2, #0
	ldr r4, _08033000 @ =gIntrTable
	ldr r3, _08033004 @ =gIntrTableTemplate
_08032FB6:
	lsls r0, r2, #2
	adds r1, r0, r4
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xe
	bls _08032FB6
	ldr r1, _08032FFC @ =0x04000208
	movs r0, #1
	strh r0, [r1]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08032FD8: .4byte sub_08033008
_08032FDC: .4byte gUnk_02038580
_08032FE0: .4byte 0x040000D4
_08032FE4: .4byte gMultiSioSend
_08032FE8: .4byte 0x85000005
_08032FEC: .4byte gMultiSioRecv
_08032FF0: .4byte 0x85000014
_08032FF4: .4byte gMultiSioStatusFlags
_08032FF8: .4byte gUnk_03002558
_08032FFC: .4byte 0x04000208
_08033000: .4byte gIntrTable
_08033004: .4byte gIntrTableTemplate

	thumb_func_start sub_08033008
sub_08033008: @ 0x08033008
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	bl sub_08031CC8
	bl sub_081589E8
	bl m4aMPlayAllStop
	ldr r0, _08033074 @ =gUnk_0203AD10
	movs r3, #0
	str r3, [r0]
	ldr r2, _08033078 @ =gUnk_03002440
	ldr r0, [r2]
	ldr r1, _0803307C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2]
	ldr r0, _08033080 @ =gBldRegs
	strh r3, [r0]
	ldr r1, _08033084 @ =gDispCnt
	movs r0, #0x40
	strh r0, [r1]
	ldr r1, _08033088 @ =gBgCntRegs
	ldr r0, _0803308C @ =0x00001F03
	strh r0, [r1]
	mov r0, sp
	strh r3, [r0]
	ldr r1, _08033090 @ =0x040000D4
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08033094 @ =0x8100C000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, sp
	strh r3, [r0]
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08033098 @ =0x81000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0803309C @ =gBgScrollRegs
	strh r3, [r0]
	strh r3, [r0, #2]
	ldr r0, _080330A0 @ =sub_080330A4
	str r0, [r4, #0x40]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08033074: .4byte gUnk_0203AD10
_08033078: .4byte gUnk_03002440
_0803307C: .4byte 0xFFFFFBFF
_08033080: .4byte gBldRegs
_08033084: .4byte gDispCnt
_08033088: .4byte gBgCntRegs
_0803308C: .4byte 0x00001F03
_08033090: .4byte 0x040000D4
_08033094: .4byte 0x8100C000
_08033098: .4byte 0x81000200
_0803309C: .4byte gBgScrollRegs
_080330A0: .4byte sub_080330A4

	thumb_func_start sub_080330A4
sub_080330A4: @ 0x080330A4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r3, r6, #0
	ldr r0, _080330B8 @ =gUnk_02038580
	ldr r0, [r0]
	cmp r0, #1
	bne _080330C0
	ldr r1, _080330BC @ =gUnk_082EC784
	b _080330C2
	.align 2, 0
_080330B8: .4byte gUnk_02038580
_080330BC: .4byte gUnk_082EC784
_080330C0:
	ldr r1, _0803313C @ =gUnk_082EC778
_080330C2:
	ldr r0, _08033140 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	movs r4, #0xc0
	lsls r4, r4, #0x13
	str r4, [r3, #4]
	movs r2, #0
	movs r1, #0
	strh r1, [r3, #0xa]
	ldr r0, _08033144 @ =0x0600F800
	str r0, [r3, #0xc]
	strh r1, [r3, #0x18]
	strh r1, [r3, #0x1a]
	strh r5, [r3, #0x1c]
	strh r1, [r3, #0x1e]
	strh r1, [r3, #0x20]
	strh r1, [r3, #0x22]
	strh r1, [r3, #0x24]
	movs r0, #0x1e
	strh r0, [r3, #0x26]
	movs r0, #0x14
	strh r0, [r3, #0x28]
	adds r0, r3, #0
	adds r0, #0x2a
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	movs r0, #8
	strh r0, [r3, #0x2e]
	strh r1, [r3, #0x30]
	strh r1, [r3, #0x32]
	ldr r0, _08033148 @ =0x00007FFF
	strh r0, [r3, #0x34]
	strh r0, [r3, #0x36]
	adds r0, r3, #0
	bl sub_08153060
	ldr r1, _0803314C @ =gUnk_082D7850
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #8]
	adds r1, r4, #0
	bl LZ77UnCompVram
	ldr r2, _08033150 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08033154 @ =sub_0803329C
	str r0, [r6, #0x40]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803313C: .4byte gUnk_082EC778
_08033140: .4byte gUnk_08D60A80
_08033144: .4byte 0x0600F800
_08033148: .4byte 0x00007FFF
_0803314C: .4byte gUnk_082D7850
_08033150: .4byte gDispCnt
_08033154: .4byte sub_0803329C

	thumb_func_start sub_08033158
sub_08033158: @ 0x08033158
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x44
	ldrh r0, [r1]
	adds r2, r0, #1
	strh r2, [r1]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _080331D0
	ldr r1, _080331B0 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	mov r0, sp
	ldr r1, _080331B4 @ =0x00007FFF
	adds r3, r1, #0
	strh r3, [r0]
	ldr r0, _080331B8 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _080331BC @ =gBgPalette
	str r1, [r0, #4]
	ldr r2, _080331C0 @ =0x81000100
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r3, [r1]
	str r1, [r0]
	ldr r1, _080331C4 @ =gObjPalette
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldr r2, _080331C8 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080331CC @ =sub_08033234
	str r0, [r4, #0x40]
	b _080331D4
	.align 2, 0
_080331B0: .4byte gBldRegs
_080331B4: .4byte 0x00007FFF
_080331B8: .4byte 0x040000D4
_080331BC: .4byte gBgPalette
_080331C0: .4byte 0x81000100
_080331C4: .4byte gObjPalette
_080331C8: .4byte gUnk_03002440
_080331CC: .4byte sub_08033234
_080331D0:
	ldr r0, _080331DC @ =gBldRegs
	strh r2, [r0, #4]
_080331D4:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080331DC: .4byte gBldRegs

	thumb_func_start sub_080331E0
sub_080331E0: @ 0x080331E0
	push {lr}
	ldr r0, _080331FC @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08033200
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08033208
	.align 2, 0
_080331FC: .4byte gCurTask
_08033200:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08033208:
	ldr r1, [r0, #0x40]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08033214
sub_08033214: @ 0x08033214
	ldr r2, _0803322C @ =gBldRegs
	movs r3, #0
	movs r1, #0xbf
	strh r1, [r2]
	strh r3, [r2, #4]
	adds r1, r0, #0
	adds r1, #0x44
	strh r3, [r1]
	ldr r1, _08033230 @ =sub_08033158
	str r1, [r0, #0x40]
	bx lr
	.align 2, 0
_0803322C: .4byte gBldRegs
_08033230: .4byte sub_08033158

	thumb_func_start sub_08033234
sub_08033234: @ 0x08033234
	push {lr}
	ldr r1, _08033278 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0803327C @ =gUnk_03003A04
	ldr r0, _08033280 @ =gUnk_03003790
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08033284 @ =gUnk_030068B0
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08033288 @ =gUnk_03006078
	ldr r0, _0803328C @ =gUnk_030039A4
	ldrb r0, [r0]
	strb r0, [r1]
	bl m4aSoundVSyncOn
	ldr r2, _08033290 @ =gUnk_0203AD10
	ldr r0, [r2]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	ldr r2, _08033294 @ =gUnk_03002440
	ldr r0, [r2]
	ldr r1, _08033298 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2]
	bl CreateTitleScreen
	pop {r0}
	bx r0
	.align 2, 0
_08033278: .4byte 0x0000FFFF
_0803327C: .4byte gUnk_03003A04
_08033280: .4byte gUnk_03003790
_08033284: .4byte gUnk_030068B0
_08033288: .4byte gUnk_03006078
_0803328C: .4byte gUnk_030039A4
_08033290: .4byte gUnk_0203AD10
_08033294: .4byte gUnk_03002440
_08033298: .4byte 0xFFFFFBFF

	thumb_func_start sub_0803329C
sub_0803329C: @ 0x0803329C
	push {lr}
	adds r2, r0, #0
	ldr r0, _080332B4 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080332B0
	ldr r0, _080332B8 @ =sub_08033214
	str r0, [r2, #0x40]
_080332B0:
	pop {r0}
	bx r0
	.align 2, 0
_080332B4: .4byte gPressedKeys
_080332B8: .4byte sub_08033214

	thumb_func_start sub_080332BC
sub_080332BC: @ 0x080332BC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r2, #0
	mov r8, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	ldr r1, _08033310 @ =gDispCnt
	movs r3, #0x82
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _08033314 @ =gVramHeapMaxTileSlots
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r7, #0
	strh r0, [r1]
	ldr r1, _08033318 @ =gVramHeapStartAddr
	ldr r0, _0803331C @ =0x06014000
	str r0, [r1]
	ldr r1, _08033320 @ =gUnk_0203AD44
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08033324 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08033330
	ldr r1, _08033328 @ =gUnk_0203AD3C
	ldr r0, _0803332C @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1]
	b _08033334
	.align 2, 0
_08033310: .4byte gDispCnt
_08033314: .4byte gVramHeapMaxTileSlots
_08033318: .4byte gVramHeapStartAddr
_0803331C: .4byte 0x06014000
_08033320: .4byte gUnk_0203AD44
_08033324: .4byte gUnk_0203AD10
_08033328: .4byte gUnk_0203AD3C
_0803332C: .4byte 0x04000128
_08033330:
	ldr r0, _08033458 @ =gUnk_0203AD3C
	strb r2, [r0]
_08033334:
	ldr r0, _0803345C @ =gUnk_0203AD30
	mov r1, sb
	strb r1, [r0]
	ldr r0, _08033460 @ =gUnk_0203AD2C
	ldrh r0, [r0]
	ldr r6, _08033464 @ =0x00000323
	cmp r0, #0xc7
	bls _08033346
	subs r6, #2
_08033346:
	bl sub_080395C0
	bl sub_08000460
	movs r4, #0
_08033350:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, _08033468 @ =gKirbys
	adds r1, r1, r0
	lsls r0, r4, #1
	adds r0, r0, r5
	ldrh r2, [r0]
	lsls r3, r4, #3
	add r3, r8
	lsls r0, r4, #2
	ldr r7, [sp, #0x20]
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [sp]
	adds r0, r4, #0
	bl CreateKirby
	adds r0, r4, #0
	bl sub_0803E558
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08033350
	mov r4, sb
	cmp r4, #3
	bhi _080333A4
_0803338C:
	lsls r0, r4, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r2, r6, #0
	bl sub_0800ECAC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0803338C
_080333A4:
	bl sub_080334E8
	bl sub_080027A8
	bl sub_08002848
	ldr r5, _08033468 @ =gKirbys
	ldr r0, _08033458 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r5
	adds r0, #0x60
	ldrh r0, [r0]
	bl sub_0803E050
	bl sub_0803641C
	bl sub_080338B4
	movs r4, #0
	ldr r0, _0803346C @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r4, r0
	bhs _0803343A
	ldr r6, _08033470 @ =gCurLevelInfo
	movs r0, #0x44
	adds r0, r0, r5
	mov r8, r0
_080333E0:
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r2, r4, #0
	muls r2, r0, r2
	movs r1, #0xf6
	lsls r1, r1, #1
	adds r0, r6, r1
	adds r0, r2, r0
	movs r1, #1
	str r1, [r0]
	adds r2, r2, r6
	movs r3, #0xcc
	lsls r3, r3, #3
	adds r2, r2, r3
	strb r4, [r2]
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r3, r4, #0
	muls r3, r0, r3
	adds r0, r3, r5
	adds r1, r5, #0
	adds r1, #0x40
	adds r1, r3, r1
	ldr r1, [r1]
	asrs r1, r1, #0xc
	movs r7, #0x84
	lsls r7, r7, #1
	adds r2, r0, r7
	strh r1, [r2]
	add r3, r8
	ldr r1, [r3]
	asrs r1, r1, #0xc
	movs r3, #0x85
	lsls r3, r3, #1
	adds r2, r0, r3
	strh r1, [r2]
	bl sub_08055920
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _0803346C @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r4, r0
	blo _080333E0
_0803343A:
	ldr r0, _08033474 @ =gDispCnt
	ldrh r1, [r0]
	movs r7, #0x80
	lsls r7, r7, #5
	adds r2, r7, #0
	orrs r1, r2
	strh r1, [r0]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033458: .4byte gUnk_0203AD3C
_0803345C: .4byte gUnk_0203AD30
_08033460: .4byte gUnk_0203AD2C
_08033464: .4byte 0x00000323
_08033468: .4byte gKirbys
_0803346C: .4byte gUnk_0203AD44
_08033470: .4byte gCurLevelInfo
_08033474: .4byte gDispCnt

	thumb_func_start sub_08033478
sub_08033478: @ 0x08033478
	push {r4, lr}
	sub sp, #4
	ldr r0, _080334BC @ =gUnk_0203AD20
	movs r1, #0
	str r1, [r0]
	ldr r0, _080334C0 @ =gUnk_0203AD10
	str r1, [r0]
	ldr r0, _080334C4 @ =gUnk_0203AD18
	movs r4, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	ldr r2, _080334C8 @ =gUnk_0203AD38
	movs r0, #0xff
	strb r0, [r2]
	ldr r0, _080334CC @ =gUnk_02022920
	str r1, [r0]
	mov r0, sp
	strh r1, [r0]
	ldr r1, _080334D0 @ =gUnk_02022930
	ldr r2, _080334D4 @ =0x01000050
	bl CpuSet
	ldr r1, _080334D8 @ =gUnk_03002E60
	ldr r0, _080334DC @ =gUnk_082D7850
	str r0, [r1]
	ldr r0, _080334E0 @ =gUnk_03000558
	strb r4, [r0]
	ldr r0, _080334E4 @ =gUnk_03000554
	strb r4, [r0]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080334BC: .4byte gUnk_0203AD20
_080334C0: .4byte gUnk_0203AD10
_080334C4: .4byte gUnk_0203AD18
_080334C8: .4byte gUnk_0203AD38
_080334CC: .4byte gUnk_02022920
_080334D0: .4byte gUnk_02022930
_080334D4: .4byte 0x01000050
_080334D8: .4byte gUnk_03002E60
_080334DC: .4byte gUnk_082D7850
_080334E0: .4byte gUnk_03000558
_080334E4: .4byte gUnk_03000554

	thumb_func_start sub_080334E8
sub_080334E8: @ 0x080334E8
	push {r4, r5, lr}
	ldr r0, _08033528 @ =gUnk_0203AD20
	movs r4, #0
	str r4, [r0]
	ldr r0, _0803352C @ =gUnk_0203AD18
	movs r1, #0
	strh r4, [r0]
	strh r4, [r0, #2]
	ldr r0, _08033530 @ =gUnk_0203AD34
	strb r1, [r0]
	ldr r0, _08033534 @ =gUnk_0203AD38
	movs r5, #0xff
	strb r5, [r0]
	bl sub_08033638
	bl sub_0803E41C
	bl sub_0803E498
	bl sub_0806F734
	bl sub_0808838C
	bl sub_0806FDF4
	ldr r0, _08033538 @ =gUnk_020229D4
	str r4, [r0]
	ldr r0, _0803353C @ =gUnk_02021580
	strb r5, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08033528: .4byte gUnk_0203AD20
_0803352C: .4byte gUnk_0203AD18
_08033530: .4byte gUnk_0203AD34
_08033534: .4byte gUnk_0203AD38
_08033538: .4byte gUnk_020229D4
_0803353C: .4byte gUnk_02021580

	thumb_func_start sub_08033540
sub_08033540: @ 0x08033540
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r6, _080335A8 @ =gUnk_03000510
	ldr r2, _080335AC @ =gKirbys
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r5, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r7, [r0]
	ldr r0, _080335B0 @ =gUnk_0203AD44
	ldrb r1, [r0]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xff
	beq _080335A0
	mov ip, r2
_08033566:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	add r0, ip
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r7, r0
	bne _08033596
	ldrb r2, [r6, #4]
	adds r0, r2, #0
	asrs r0, r1
	movs r4, #1
	ands r0, r4
	adds r3, r6, r1
	cmp r0, #0
	beq _0803358C
	ldrb r0, [r3]
	cmp r0, r1
	beq _08033596
_0803358C:
	adds r0, r4, #0
	lsls r0, r1
	orrs r2, r0
	strb r2, [r6, #4]
	strb r5, [r3]
_08033596:
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xff
	bne _08033566
_080335A0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080335A8: .4byte gUnk_03000510
_080335AC: .4byte gKirbys
_080335B0: .4byte gUnk_0203AD44

	thumb_func_start sub_080335B4
sub_080335B4: @ 0x080335B4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	movs r5, #0
	mov r0, sp
	movs r1, #0
	movs r2, #4
	bl memset
	ldr r3, _08033630 @ =gUnk_03000510
	ldr r0, _08033634 @ =gUnk_0203AD44
	ldrb r4, [r0]
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xff
	beq _0803360C
	movs r0, #1
	mov ip, r0
	movs r7, #0xff
_080335DE:
	adds r2, r3, r4
	ldrb r0, [r2]
	cmp r0, r6
	bne _08033602
	mov r1, ip
	lsls r1, r4
	ldrb r0, [r3, #4]
	bics r0, r1
	strb r0, [r3, #4]
	ldrb r0, [r2]
	orrs r0, r7
	strb r0, [r2]
	mov r1, sp
	adds r0, r1, r5
	strb r4, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08033602:
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xff
	bne _080335DE
_0803360C:
	movs r4, #0
	cmp r4, r5
	bhs _08033626
_08033612:
	mov r1, sp
	adds r0, r1, r4
	ldrb r0, [r0]
	bl sub_08033674
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r5
	blo _08033612
_08033626:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033630: .4byte gUnk_03000510
_08033634: .4byte gUnk_0203AD44

	thumb_func_start sub_08033638
sub_08033638: @ 0x08033638
	ldr r1, _08033650 @ =gUnk_03000510
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	movs r0, #0
	strb r0, [r1, #4]
	bx lr
	.align 2, 0
_08033650: .4byte gUnk_03000510

	thumb_func_start sub_08033654
sub_08033654: @ 0x08033654
	ldr r2, _08033660 @ =gUnk_03000510
	ldrb r1, [r2, #4]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2, #4]
	bx lr
	.align 2, 0
_08033660: .4byte gUnk_03000510

	thumb_func_start sub_08033664
sub_08033664: @ 0x08033664
	ldr r2, _08033670 @ =gUnk_03000510
	ldrb r1, [r2, #4]
	movs r0, #0xef
	ands r0, r1
	strb r0, [r2, #4]
	bx lr
	.align 2, 0
_08033670: .4byte gUnk_03000510

	thumb_func_start sub_08033674
sub_08033674: @ 0x08033674
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r3, _080336D0 @ =gUnk_03000510
	ldr r1, _080336D4 @ =gKirbys
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r4, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r7, [r0]
	movs r2, #0
	ldr r0, _080336D8 @ =gUnk_0203AD44
	mov r8, r3
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r2, r0
	bhs _080336E8
	mov ip, r1
	adds r6, r4, r3
_080336A0:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	add r0, ip
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r7, r0
	bne _080336DC
	mov r1, r8
	ldrb r0, [r1, #4]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080336DC
	adds r0, r1, #0
	lsls r0, r4
	ldrb r1, [r3, #4]
	orrs r0, r1
	strb r0, [r3, #4]
	adds r0, r3, r2
	ldrb r0, [r0]
	strb r0, [r6]
	b _080336E8
	.align 2, 0
_080336D0: .4byte gUnk_03000510
_080336D4: .4byte gKirbys
_080336D8: .4byte gUnk_0203AD44
_080336DC:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldrb r0, [r5]
	cmp r2, r0
	blo _080336A0
_080336E8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080336F4
sub_080336F4: @ 0x080336F4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r4, [r0]
	ldr r0, _08033754 @ =gUnk_0203AD40
	ldr r1, [r0]
	movs r3, #3
	adds r0, r1, #0
	ands r0, r3
	movs r6, #0xd0
	lsls r6, r6, #1
	adds r2, r5, r6
	adds r0, r2, r0
	strb r4, [r0]
	subs r0, r1, #1
	ands r0, r3
	adds r0, r2, r0
	ldrb r0, [r0]
	orrs r4, r0
	subs r1, #2
	ands r1, r3
	adds r2, r2, r1
	ldrb r0, [r2]
	orrs r4, r0
	movs r1, #0xd2
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r2, #0x92
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, r4
	bne _08033758
	subs r6, #0x7b
	adds r2, r1, r6
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _08033758
	adds r0, r1, #1
	strb r0, [r2]
	b _08033784
	.align 2, 0
_08033754: .4byte gUnk_0203AD40
_08033758:
	movs r0, #0xd2
	lsls r0, r0, #1
	adds r2, r5, r0
	ldrb r0, [r2]
	adds r0, #1
	movs r3, #0
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0x92
	lsls r1, r1, #1
	adds r0, r0, r1
	strb r4, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r5, r0
	ldr r2, _0803378C @ =0x00000125
	adds r0, r0, r2
	strb r3, [r0]
_08033784:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803378C: .4byte 0x00000125

	thumb_func_start sub_08033790
sub_08033790: @ 0x08033790
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r0
	movs r0, #1
	str r0, [sp]
	movs r1, #0
	str r1, [sp, #4]
	movs r0, #0xd2
	lsls r0, r0, #1
	add r0, r8
	ldrb r0, [r0]
	mov ip, r0
	ldr r0, _08033860 @ =0x000001A5
	add r0, r8
	strb r1, [r0]
	ldr r1, _08033864 @ =gUnk_08D60B44
	ldr r6, [r1]
	cmp r6, #0
	beq _0803384E
	str r0, [sp, #8]
_080337C0:
	ldrb r5, [r6]
	adds r6, #1
	adds r1, #4
	mov sb, r1
	ldr r3, [sp]
	adds r3, #1
	mov sl, r3
	cmp r5, #0
	beq _08033830
_080337D2:
	movs r0, #0
	str r0, [sp, #4]
	lsls r0, r5, #1
	adds r0, r0, r5
	adds r0, r0, r6
	subs r1, r0, #3
	ldrb r4, [r1]
	subs r1, r0, #2
	ldrb r1, [r1]
	subs r0, #1
	ldrb r7, [r0]
	mov r2, ip
	lsls r0, r2, #2
	mov r3, r8
	adds r2, r3, r0
	ldr r3, _08033868 @ =0x00000125
	adds r0, r2, r3
	ldrb r3, [r0]
	cmp r1, r3
	blo _08033810
	movs r1, #0x92
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r0, [r0]
	ands r4, r0
	cmp r4, #0
	beq _08033810
	cmp r7, r3
	bhi _08033810
	movs r2, #1
	str r2, [sp, #4]
_08033810:
	ldr r3, [sp, #4]
	cmp r3, #0
	beq _0803383E
	mov r0, ip
	subs r0, #1
	lsls r0, r0, #0x18
	movs r1, #0xf8
	lsls r1, r1, #0x15
	ands r1, r0
	lsrs r1, r1, #0x18
	mov ip, r1
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _080337D2
_08033830:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0803383E
	mov r1, sp
	ldrb r2, [r1]
	ldr r1, [sp, #8]
	strb r2, [r1]
_0803383E:
	mov r1, sb
	mov r3, sl
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r6, [r1]
	cmp r6, #0
	bne _080337C0
_0803384E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033860: .4byte 0x000001A5
_08033864: .4byte gUnk_08D60B44
_08033868: .4byte 0x00000125

	thumb_func_start sub_0803386C
sub_0803386C: @ 0x0803386C
	push {r4, lr}
	sub sp, #4
	adds r3, r0, #0
	movs r2, #0
	str r2, [sp]
	ldr r1, _080338AC @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	movs r4, #0x92
	lsls r4, r4, #1
	adds r0, r3, r4
	str r0, [r1, #4]
	ldr r0, _080338B0 @ =0x85000020
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r0, r3, r1
	strb r2, [r0]
	adds r4, #0x7d
	adds r0, r3, r4
	strb r2, [r0]
	adds r1, #2
	adds r0, r3, r1
	strb r2, [r0]
	adds r4, #3
	adds r0, r3, r4
	strb r2, [r0]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080338AC: .4byte 0x040000D4
_080338B0: .4byte 0x85000020

	thumb_func_start sub_080338B4
sub_080338B4: @ 0x080338B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r1, _08033920 @ =gBgCntRegs
	movs r4, #0
	ldr r0, _08033924 @ =0x00001C04
	strh r0, [r1, #2]
	add r1, sp, #4
	movs r2, #0xc2
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08033928 @ =0x0600E000
	ldr r2, _0803392C @ =0x01000400
	add r0, sp, #4
	bl CpuSet
	mov r0, sp
	adds r0, #6
	strh r4, [r0]
	ldr r1, _08033930 @ =0x06007080
	ldr r2, _08033934 @ =0x01000300
	bl CpuSet
	ldr r0, _08033938 @ =gBgScrollRegs
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	ldr r0, _0803393C @ =sub_08033B9C
	movs r1, #0x80
	lsls r1, r1, #2
	movs r2, #0xf5
	lsls r2, r2, #8
	ldr r3, _08033940 @ =nullsub_30
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	adds r5, r0, #0
	ldr r0, _08033944 @ =gUnk_03000010
	str r5, [r0]
	ldrh r1, [r5, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08033948
	ldrh r0, [r5, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08033950
	.align 2, 0
_08033920: .4byte gBgCntRegs
_08033924: .4byte 0x00001C04
_08033928: .4byte 0x0600E000
_0803392C: .4byte 0x01000400
_08033930: .4byte 0x06007080
_08033934: .4byte 0x01000300
_08033938: .4byte gBgScrollRegs
_0803393C: .4byte sub_08033B9C
_08033940: .4byte nullsub_30
_08033944: .4byte gUnk_03000010
_08033948:
	ldrh r1, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08033950:
	adds r6, r1, #0
	add r0, sp, #8
	movs r3, #0
	mov r8, r3
	strh r3, [r0]
	ldr r2, _08033984 @ =0x01000100
	bl CpuSet
	ldr r4, _08033988 @ =gUnk_0203AD3C
	ldrb r1, [r4]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	ldr r1, _0803398C @ =gKirbys
	adds r4, r0, r1
	ldr r0, _08033990 @ =gUnk_0203AD10
	ldr r7, [r0]
	movs r0, #0x10
	ands r7, r0
	cmp r7, #0
	beq _08033998
	bl sub_08036114
	ldr r0, _08033994 @ =sub_08034034
	str r0, [r5, #8]
	b _08033B82
	.align 2, 0
_08033984: .4byte 0x01000100
_08033988: .4byte gUnk_0203AD3C
_0803398C: .4byte gKirbys
_08033990: .4byte gUnk_0203AD10
_08033994: .4byte sub_08034034
_08033998:
	bl sub_08035FDC
	ldr r2, _08033A90 @ =0x00000103
	adds r0, r4, r2
	ldrb r0, [r0]
	bl sub_08035E28
	bl sub_08036048
	adds r0, r4, #0
	bl sub_08036088
	adds r0, r4, #0
	bl sub_0803518C
	movs r0, #2
	bl sub_08034C9C
	bl sub_08036194
	adds r0, r4, #0
	bl sub_08034D68
	bl sub_080361C8
	movs r0, #0
	bl sub_08034FA8
	mov r0, sp
	adds r0, #0xa
	strh r7, [r0]
	ldr r1, _08033A94 @ =0x060077A0
	ldr r2, _08033A98 @ =0x01000080
	bl CpuSet
	adds r0, r4, #0
	adds r0, #0xec
	ldr r0, [r0]
	str r0, [r6]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r4, r3
	ldrb r0, [r0]
	strb r0, [r6, #6]
	movs r1, #0x81
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	strb r0, [r6, #7]
	adds r0, r4, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	strb r0, [r6, #0xc]
	ldr r2, _08033A9C @ =gRoomProps
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r1, [r0, #0x12]
	movs r0, #8
	ands r0, r1
	strb r0, [r6, #0xb]
	movs r0, #0x80
	strh r0, [r6, #4]
	mov r2, r8
	strb r2, [r6, #9]
	strb r2, [r6, #0xa]
	strb r2, [r6, #0xf]
	str r7, [r6, #0x1c]
	strb r2, [r6, #0xe]
	str r7, [r6, #0x10]
	strb r2, [r6, #0xd]
	movs r7, #0
	ldr r0, _08033AA0 @ =gUnk_0203AD44
	ldrb r3, [r0]
	cmp r7, r3
	blo _08033A3A
	b _08033B82
_08033A3A:
	movs r5, #0
	movs r4, #0x80
	mov sl, r4
	movs r1, #0xff
	mov sb, r1
	movs r2, #0x10
	mov r8, r2
	ldr r3, _08033AA4 @ =gKirbys
	mov ip, r3
_08033A4C:
	ldr r4, _08033AA8 @ =gUnk_0203AD3C
	ldrb r0, [r4]
	cmp r0, r7
	bne _08033AB0
	lsls r2, r7, #2
	adds r0, r2, r7
	lsls r0, r0, #3
	adds r0, r0, r6
	adds r1, r0, #0
	adds r1, #0x20
	str r5, [r0, #0x20]
	mov r0, sl
	strh r0, [r1, #0x14]
	ldr r0, _08033AAC @ =0x000002DB
	strh r0, [r1, #0xc]
	movs r0, #1
	strb r0, [r1, #0x1a]
	strh r5, [r1, #0x16]
	ldrb r0, [r1, #0x1b]
	mov r3, sb
	orrs r0, r3
	strb r0, [r1, #0x1b]
	mov r4, r8
	strb r4, [r1, #0x1c]
	strb r5, [r1, #0x1f]
	movs r0, #8
	strh r0, [r1, #0x10]
	movs r0, #0xf
	strh r0, [r1, #0x12]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r1, #8]
	b _08033AF8
	.align 2, 0
_08033A90: .4byte 0x00000103
_08033A94: .4byte 0x060077A0
_08033A98: .4byte 0x01000080
_08033A9C: .4byte gRoomProps
_08033AA0: .4byte gUnk_0203AD44
_08033AA4: .4byte gKirbys
_08033AA8: .4byte gUnk_0203AD3C
_08033AAC: .4byte 0x000002DB
_08033AB0:
	lsls r4, r7, #2
	adds r1, r4, r7
	lsls r1, r1, #3
	adds r1, r1, r6
	adds r2, r1, #0
	adds r2, #0x20
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r3, r7, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x10
	adds r0, r3, r0
	ldr r0, [r0]
	str r0, [r1, #0x20]
	mov r0, sl
	strh r0, [r2, #0x14]
	strh r5, [r2, #0xc]
	strb r5, [r2, #0x1a]
	strh r5, [r2, #0x16]
	ldrb r0, [r2, #0x1b]
	mov r1, sb
	orrs r0, r1
	strb r0, [r2, #0x1b]
	mov r0, r8
	strb r0, [r2, #0x1c]
	add r3, ip
	adds r3, #0x2f
	ldrb r0, [r3]
	strb r0, [r2, #0x1f]
	strh r5, [r2, #0x10]
	strh r5, [r2, #0x12]
	movs r1, #0x84
	lsls r1, r1, #0xb
	str r1, [r2, #8]
	adds r2, r4, #0
_08033AF8:
	adds r0, r2, r7
	lsls r0, r0, #3
	adds r3, r0, r6
	adds r1, r3, #0
	adds r1, #0xc0
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r2, r7, #0
	muls r2, r0, r2
	mov r0, ip
	adds r0, #0x10
	adds r0, r2, r0
	ldr r0, [r0]
	adds r0, #0x80
	str r0, [r1]
	mov r4, sl
	strh r4, [r1, #0x14]
	strh r5, [r1, #0xc]
	strb r5, [r1, #0x1a]
	strh r5, [r1, #0x16]
	ldrb r0, [r1, #0x1b]
	mov r4, sb
	orrs r0, r4
	strb r0, [r1, #0x1b]
	mov r0, r8
	strb r0, [r1, #0x1c]
	mov r4, ip
	adds r0, r2, r4
	adds r0, #0xc3
	ldrb r0, [r0]
	strb r0, [r1, #0x1f]
	strh r5, [r1, #0x10]
	strh r5, [r1, #0x12]
	movs r0, #0x84
	lsls r0, r0, #0xb
	str r0, [r1, #8]
	movs r4, #0xb0
	lsls r4, r4, #1
	adds r1, r3, r4
	ldr r0, _08033B94 @ =gKirbys+0x7C
	adds r2, r2, r0
	ldr r0, [r2]
	str r0, [r1]
	mov r2, sl
	strh r2, [r1, #0x14]
	strh r5, [r1, #0xc]
	strb r5, [r1, #0x1a]
	strh r5, [r1, #0x16]
	ldrb r0, [r1, #0x1b]
	mov r3, sb
	orrs r0, r3
	strb r0, [r1, #0x1b]
	mov r4, r8
	strb r4, [r1, #0x1c]
	movs r0, #0xf
	strb r0, [r1, #0x1f]
	strh r5, [r1, #0x10]
	strh r5, [r1, #0x12]
	movs r0, #0x84
	lsls r0, r0, #0xb
	str r0, [r1, #8]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r1, _08033B98 @ =gUnk_0203AD44
	ldrb r1, [r1]
	cmp r7, r1
	bhs _08033B82
	b _08033A4C
_08033B82:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033B94: .4byte gKirbys+0x7C
_08033B98: .4byte gUnk_0203AD44

	thumb_func_start sub_08033B9C
sub_08033B9C: @ 0x08033B9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08033BC0 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08033BC4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08033BCC
	.align 2, 0
_08033BC0: .4byte gCurTask
_08033BC4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08033BCC:
	adds r5, r0, #0
	ldr r0, _08033C7C @ =gUnk_0203AD3C
	ldrb r0, [r0]
	movs r7, #0xd4
	lsls r7, r7, #1
	muls r0, r7, r0
	ldr r4, _08033C80 @ =gKirbys
	adds r6, r0, r4
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r6, r1
	movs r1, #6
	ldrsb r1, [r5, r1]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	beq _08033BF6
	adds r0, r6, #0
	bl sub_0803518C
_08033BF6:
	movs r2, #0x81
	lsls r2, r2, #1
	adds r1, r6, r2
	ldrb r0, [r5, #7]
	ldrb r1, [r1]
	cmp r0, r1
	beq _08033C0A
	adds r0, r6, #0
	bl sub_08036088
_08033C0A:
	ldr r2, _08033C84 @ =gUnk_02021580
	ldr r1, _08033C88 @ =gUnk_0203AD44
	ldrb r0, [r2]
	movs r3, #0x60
	adds r3, r3, r6
	mov r8, r3
	movs r3, #0xdc
	adds r3, r3, r6
	mov sb, r3
	movs r3, #0xec
	adds r3, r3, r6
	mov sl, r3
	ldrb r1, [r1]
	cmp r0, r1
	blo _08033C2A
	b _08033EC2
_08033C2A:
	adds r2, r0, #0
	muls r2, r7, r2
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r2, r0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	bne _08033C50
	adds r0, r2, r4
	adds r0, #0x60
	ldrh r0, [r0]
	mov r4, r8
	ldrh r4, [r4]
	cmp r0, r4
	bne _08033C50
	b _08033EC2
_08033C50:
	ldr r2, _08033C8C @ =gRoomProps
	mov r0, r8
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	movs r1, #0xdc
	adds r1, r1, r6
	mov sb, r1
	movs r2, #0xec
	adds r2, r2, r6
	mov sl, r2
	cmp r0, #0
	bne _08033C76
	b _08033EC2
_08033C76:
	movs r7, #1
	movs r4, #1
	b _08033C96
	.align 2, 0
_08033C7C: .4byte gUnk_0203AD3C
_08033C80: .4byte gKirbys
_08033C84: .4byte gUnk_02021580
_08033C88: .4byte gUnk_0203AD44
_08033C8C: .4byte gRoomProps
_08033C90:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08033C96:
	cmp r4, #8
	bhi _08033CBC
	ldr r0, _08033CC0 @ =gUnk_0835105C
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	mov r3, r8
	ldrh r3, [r3]
	cmp r0, r3
	bne _08033C90
	movs r0, #1
	adds r1, r4, #0
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	beq _08033C90
	movs r7, #0
_08033CBC:
	movs r4, #9
	b _08033CCA
	.align 2, 0
_08033CC0: .4byte gUnk_0835105C
_08033CC4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08033CCA:
	cmp r4, #0xd
	bhi _08033CF4
	ldr r0, _08033D90 @ =gUnk_0835105C
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	mov r1, r8
	ldrh r1, [r1]
	cmp r0, r1
	bne _08033CC4
	adds r1, r4, #3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	beq _08033CC4
	movs r7, #0
_08033CF4:
	cmp r7, #0
	bne _08033CFA
	b _08033EC2
_08033CFA:
	ldr r1, _08033D94 @ =gKirbys
	ldr r0, _08033D98 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	mov r3, r8
	ldrh r3, [r3]
	cmp r0, r3
	bne _08033D52
	ldrb r0, [r6]
	cmp r0, #0
	bne _08033D24
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08033D52
_08033D24:
	ldr r1, _08033D9C @ =gUnk_08D60FA4
	ldr r3, _08033DA0 @ =gSongTable
	ldr r4, _08033DA4 @ =0x00000FE4
	adds r0, r3, r4
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08033D4A
	movs r1, #0xfe
	lsls r1, r1, #4
	adds r0, r3, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhs _08033D52
_08033D4A:
	movs r0, #0xfe
	lsls r0, r0, #1
	bl m4aSongNumStart
_08033D52:
	ldr r2, _08033D94 @ =gKirbys
	ldr r3, _08033DA8 @ =gUnk_02021580
	ldrb r1, [r3]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r1, r2, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r1, r0
	cmp r1, #0
	beq _08033D7E
	movs r4, #0x81
	lsls r4, r4, #1
	adds r0, r6, r4
	ldrb r4, [r0]
	cmp r4, #0
	bne _08033D7E
	b _08033EA0
_08033D7E:
	ldrb r0, [r5, #0xe]
	cmp r0, #0x60
	beq _08033DCA
	cmp r0, #0x60
	bgt _08033DAC
	cmp r0, #0
	beq _08033DB6
	b _08033E14
	.align 2, 0
_08033D90: .4byte gUnk_0835105C
_08033D94: .4byte gKirbys
_08033D98: .4byte gUnk_0203AD3C
_08033D9C: .4byte gUnk_08D60FA4
_08033DA0: .4byte gSongTable
_08033DA4: .4byte 0x00000FE4
_08033DA8: .4byte gUnk_02021580
_08033DAC:
	cmp r0, #0x80
	beq _08033E02
	cmp r0, #0xe0
	beq _08033DCA
	b _08033E14
_08033DB6:
	cmp r1, #0
	beq _08033DC2
	movs r0, #1
	bl sub_08034924
	b _08033E14
_08033DC2:
	movs r0, #1
	bl sub_08034828
	b _08033E14
_08033DCA:
	ldrb r1, [r3]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r1, r2, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08033DEC
	movs r0, #0
	bl sub_08034924
	b _08033DF2
_08033DEC:
	movs r0, #0
	bl sub_08034828
_08033DF2:
	bl sub_08036194
	adds r0, r6, #0
	bl sub_08034D68
	movs r0, #0
	strb r0, [r5, #0xd]
	b _08033E14
_08033E02:
	cmp r1, #0
	beq _08033E0E
	movs r0, #2
	bl sub_08034924
	b _08033E14
_08033E0E:
	movs r0, #2
	bl sub_08034828
_08033E14:
	ldrb r0, [r5, #0xe]
	cmp r0, #0x5f
	bls _08033E24
	adds r0, #0x80
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x5f
	bhi _08033EB2
_08033E24:
	ldr r0, _08033E70 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x20
	adds r4, r5, r0
	ldr r1, _08033E74 @ =gKirbys
	ldr r3, _08033E78 @ =gUnk_02021580
	ldrb r2, [r3]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4]
	ldrb r0, [r3]
	strb r0, [r4, #0x1f]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, _08033E7C @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08033E80
	movs r0, #0x91
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _08033E8A
	.align 2, 0
_08033E70: .4byte gUnk_0203AD3C
_08033E74: .4byte gKirbys
_08033E78: .4byte gUnk_02021580
_08033E7C: .4byte gUnk_0203AD20
_08033E80:
	movs r0, #0xf
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	ldr r1, _08033E9C @ =0xFFFFF7FF
	ands r0, r1
_08033E8A:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_0815604C
	b _08033EB2
	.align 2, 0
_08033E9C: .4byte 0xFFFFF7FF
_08033EA0:
	movs r0, #0
	bl sub_08034924
	bl sub_08036194
	adds r0, r6, #0
	bl sub_08034D68
	strb r4, [r5, #0xd]
_08033EB2:
	ldrb r0, [r5, #0xe]
	adds r0, #1
	strb r0, [r5, #0xe]
	ldr r0, [r5, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #0x10]
	b _08033F5C
_08033EC2:
	ldr r0, [r5, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08033F02
	adds r0, r6, #0
	adds r0, #0x56
	ldr r1, _08033F18 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08033EE2
	movs r0, #0xfe
	lsls r0, r0, #1
	bl m4aSongNumStop
_08033EE2:
	movs r0, #0
	bl sub_08034828
	bl sub_08036194
	adds r0, r6, #0
	bl sub_08034D68
	movs r0, #0
	strb r0, [r5, #0xd]
	strb r0, [r5, #0xe]
	ldr r0, [r5, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_08033F02:
	ldrb r0, [r5, #0xc]
	mov r2, sb
	ldrb r2, [r2]
	cmp r0, r2
	beq _08033F1C
	adds r0, r6, #0
	bl sub_08034D68
	movs r0, #0
	strb r0, [r5, #0xd]
	b _08033F2C
	.align 2, 0
_08033F18: .4byte gUnk_0203AD3C
_08033F1C:
	cmp r0, #1
	bne _08033F2C
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	adds r0, r6, #0
	bl sub_08034D68
_08033F2C:
	ldr r2, _08033F54 @ =gRoomProps
	mov r3, r8
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r1, [r0, #0x12]
	movs r0, #8
	ands r0, r1
	ldrb r1, [r5, #0xb]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	beq _08033F5C
	cmp r0, #0
	beq _08033F58
	bl sub_08036194
	b _08033F5C
	.align 2, 0
_08033F54: .4byte gRoomProps
_08033F58:
	bl sub_080361B0
_08033F5C:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _08033F68
	adds r0, r5, #0
	bl sub_0803533C
_08033F68:
	adds r0, r5, #0
	bl sub_0803557C
	ldrh r0, [r5, #4]
	cmp r0, #0x7d
	bhi _08033FE4
	cmp r0, #8
	bne _08033F7E
	movs r0, #2
	bl sub_08034C9C
_08033F7E:
	ldrh r0, [r5, #4]
	cmp r0, #9
	bne _08033F8A
	movs r0, #3
	bl sub_08034C9C
_08033F8A:
	ldrh r0, [r5, #4]
	cmp r0, #0xa
	bne _08033F96
	movs r0, #4
	bl sub_08034C9C
_08033F96:
	ldrh r0, [r5, #4]
	cmp r0, #0xb
	bne _08033FA2
	movs r0, #5
	bl sub_08034C9C
_08033FA2:
	ldrh r0, [r5, #4]
	cmp r0, #0xc
	bne _08033FAE
	movs r0, #6
	bl sub_08034C9C
_08033FAE:
	ldrh r0, [r5, #4]
	cmp r0, #0x79
	bne _08033FBA
	movs r0, #5
	bl sub_08034C9C
_08033FBA:
	ldrh r0, [r5, #4]
	cmp r0, #0x7a
	bne _08033FC6
	movs r0, #4
	bl sub_08034C9C
_08033FC6:
	ldrh r0, [r5, #4]
	cmp r0, #0x7b
	bne _08033FD2
	movs r0, #3
	bl sub_08034C9C
_08033FD2:
	ldrh r0, [r5, #4]
	cmp r0, #0x7c
	bne _08033FDE
	movs r0, #2
	bl sub_08034C9C
_08033FDE:
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
_08033FE4:
	mov r4, sl
	ldr r0, [r4]
	str r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	strb r0, [r5, #6]
	movs r2, #0x81
	lsls r2, r2, #1
	adds r0, r6, r2
	ldrb r0, [r0]
	strb r0, [r5, #7]
	mov r3, sb
	ldrb r0, [r3]
	strb r0, [r5, #0xc]
	ldr r2, _08034030 @ =gRoomProps
	mov r4, r8
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r1, [r0, #0x12]
	movs r0, #8
	ands r0, r1
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	bl sub_08034304
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034030: .4byte gRoomProps

	thumb_func_start sub_08034034
sub_08034034: @ 0x08034034
	push {r4, r5, r6, r7, lr}
	movs r3, #0
	ldr r0, _0803409C @ =gUnk_0203AD44
	mov ip, r0
	ldrb r0, [r0]
	cmp r3, r0
	bhs _08034094
	ldr r7, _080340A0 @ =gUnk_0203AD3C
	movs r6, #0xd4
	lsls r6, r6, #1
	ldr r5, _080340A4 @ =gKirbys
	movs r4, #0x80
	lsls r4, r4, #0xc
_0803404E:
	ldrb r1, [r7]
	cmp r3, r1
	beq _08034086
	adds r0, r3, #0
	muls r0, r6, r0
	adds r2, r0, r5
	ldrb r0, [r7]
	muls r0, r6, r0
	adds r0, r0, r5
	adds r0, #0x60
	adds r1, r2, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08034086
	ldr r0, [r2, #0x18]
	orrs r0, r4
	str r0, [r2, #0x18]
	adds r1, r2, #0
	adds r1, #0xac
	ldr r0, [r1]
	orrs r0, r4
	str r0, [r1]
	subs r1, #0x28
	ldr r0, [r1]
	orrs r0, r4
	str r0, [r1]
_08034086:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	mov r0, ip
	ldrb r0, [r0]
	cmp r3, r0
	blo _0803404E
_08034094:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803409C: .4byte gUnk_0203AD44
_080340A0: .4byte gUnk_0203AD3C
_080340A4: .4byte gKirbys

	thumb_func_start sub_080340A8
sub_080340A8: @ 0x080340A8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080340CC @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080340D0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080340D8
	.align 2, 0
_080340CC: .4byte gCurTask
_080340D0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080340D8:
	adds r6, r0, #0
	ldr r0, _08034104 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r1, r0, r1
	ldr r0, _08034108 @ =gKirbys
	adds r7, r1, r0
	adds r0, r7, #0
	adds r0, #0x60
	ldrh r1, [r0]
	ldr r0, _0803410C @ =0x00000397
	cmp r1, r0
	beq _08034114
	adds r0, r7, #0
	adds r0, #0xd9
	ldrb r0, [r0]
	cmp r0, #0
	beq _08034110
	bl sub_08034BB4
	b _08034114
	.align 2, 0
_08034104: .4byte gUnk_0203AD3C
_08034108: .4byte gKirbys
_0803410C: .4byte 0x00000397
_08034110:
	bl sub_08034C28
_08034114:
	adds r0, r7, #0
	adds r0, #0xdc
	ldrb r1, [r6, #0xc]
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r1, r0
	beq _08034128
	adds r0, r7, #0
	bl sub_08034D68
_08034128:
	ldr r2, _0803414C @ =gRoomProps
	adds r3, r7, #0
	adds r3, #0x60
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r1, [r0, #0x12]
	movs r0, #8
	ands r0, r1
	adds r5, r3, #0
	cmp r0, #0
	beq _08034150
	bl sub_08036194
	b _08034154
	.align 2, 0
_0803414C: .4byte gRoomProps
_08034150:
	bl sub_080361B0
_08034154:
	adds r0, r6, #0
	bl sub_08034304
	ldrb r0, [r4]
	strb r0, [r6, #0xc]
	ldr r4, _080341D0 @ =gRoomProps
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrb r1, [r0, #0x12]
	movs r0, #8
	ands r0, r1
	strb r0, [r6, #0xb]
	ldr r2, _080341D4 @ =gUnk_02021580
	ldr r1, _080341D8 @ =gUnk_0203AD44
	ldrb r0, [r2]
	ldrb r1, [r1]
	cmp r0, r1
	blo _08034180
	b _080342C4
_08034180:
	ldr r3, _080341DC @ =gKirbys
	adds r1, r0, #0
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r2, r1, #0
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0xc
	adds r0, r2, r0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	bne _080341AC
	adds r0, r2, r3
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r5]
	cmp r0, r1
	bne _080341AC
	b _080342C4
_080341AC:
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080341C2
	b _080342C4
_080341C2:
	movs r2, #1
	mov r8, r2
	movs r4, #1
	ldr r0, _080341E0 @ =gUnk_0835105C
	mov sb, r0
	b _080341EA
	.align 2, 0
_080341D0: .4byte gRoomProps
_080341D4: .4byte gUnk_02021580
_080341D8: .4byte gUnk_0203AD44
_080341DC: .4byte gKirbys
_080341E0: .4byte gUnk_0835105C
_080341E4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_080341EA:
	cmp r4, #8
	bhi _0803420E
	lsls r0, r4, #1
	add r0, sb
	ldrh r0, [r0]
	ldrh r1, [r5]
	cmp r0, r1
	bne _080341E4
	movs r0, #1
	adds r1, r4, #0
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	beq _080341E4
	movs r2, #0
	mov r8, r2
_0803420E:
	movs r4, #9
	b _08034218
_08034212:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08034218:
	cmp r4, #0xd
	bhi _08034242
	ldr r0, _080342AC @ =gUnk_0835105C
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	ldrh r1, [r5]
	cmp r0, r1
	bne _08034212
	adds r1, r4, #3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	beq _08034212
	movs r2, #0
	mov r8, r2
_08034242:
	mov r0, r8
	cmp r0, #0
	beq _080342C4
	ldr r1, _080342B0 @ =gKirbys
	ldr r0, _080342B4 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r5, [r5]
	cmp r0, r5
	bne _0803429E
	ldrb r0, [r7]
	cmp r0, #0
	bne _08034270
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0803429E
_08034270:
	ldr r1, _080342B8 @ =gUnk_08D60FA4
	ldr r3, _080342BC @ =gSongTable
	ldr r2, _080342C0 @ =0x00000FE4
	adds r0, r3, r2
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08034296
	movs r1, #0xfe
	lsls r1, r1, #4
	adds r0, r3, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhs _0803429E
_08034296:
	movs r0, #0xfe
	lsls r0, r0, #1
	bl m4aSongNumStart
_0803429E:
	ldrb r0, [r6, #0xe]
	adds r0, #1
	strb r0, [r6, #0xe]
	ldr r0, [r6, #0x10]
	movs r1, #1
	orrs r0, r1
	b _080342F0
	.align 2, 0
_080342AC: .4byte gUnk_0835105C
_080342B0: .4byte gKirbys
_080342B4: .4byte gUnk_0203AD3C
_080342B8: .4byte gUnk_08D60FA4
_080342BC: .4byte gSongTable
_080342C0: .4byte 0x00000FE4
_080342C4:
	ldr r0, [r6, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080342F2
	adds r0, r7, #0
	adds r0, #0x56
	ldr r1, _08034300 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080342E4
	movs r0, #0xfe
	lsls r0, r0, #1
	bl m4aSongNumStop
_080342E4:
	movs r0, #0
	strb r0, [r6, #0xe]
	ldr r0, [r6, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080342F0:
	str r0, [r6, #0x10]
_080342F2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034300: .4byte gUnk_0203AD3C

	thumb_func_start sub_08034304
sub_08034304: @ 0x08034304
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	mov sl, r0
	movs r0, #0
	mov sb, r0
	mov r8, r0
	b _08034804
_0803431A:
	ldr r1, _080343AC @ =gUnk_0203AD3C
	ldrb r1, [r1]
	cmp sb, r1
	bne _08034324
	b _080347FA
_08034324:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r2, #0xd4
	lsls r2, r2, #1
	mov r0, sb
	muls r0, r2, r0
	ldr r1, _080343B0 @ =gKirbys
	adds r6, r0, r1
	mov r3, sb
	lsls r0, r3, #2
	add r0, sb
	lsls r3, r0, #3
	adds r0, r3, #0
	adds r0, #0x20
	mov r5, sl
	adds r4, r5, r0
	adds r0, #0xa0
	adds r7, r5, r0
	movs r5, #0xb0
	lsls r5, r5, #1
	adds r0, r3, r5
	mov r3, sl
	adds r5, r3, r0
	ldr r3, _080343AC @ =gUnk_0203AD3C
	ldrb r0, [r3]
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08034370
	b _08034620
_08034370:
	adds r0, r6, #0
	bl sub_0803D938
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _08034380
	b _080345B8
_08034380:
	ldr r0, _080343AC @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	ldr r0, _080343B4 @ =gCurLevelInfo
	adds r1, r1, r0
	movs r0, #0xb7
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	movs r2, #0
	strb r2, [r4, #0x1a]
	ldr r3, [r1, #0xc]
	movs r2, #0xc0
	lsls r2, r2, #3
	adds r0, r3, r2
	ldr r2, [r6, #0x40]
	cmp r0, r2
	ble _080343B8
	movs r0, #6
	b _080343CC
	.align 2, 0
_080343AC: .4byte gUnk_0203AD3C
_080343B0: .4byte gKirbys
_080343B4: .4byte gCurLevelInfo
_080343B8:
	movs r0, #0xe8
	lsls r0, r0, #8
	adds r0, r0, r3
	mov ip, r0
	cmp ip, r2
	bge _080343C8
	movs r0, #0xe8
	b _080343CC
_080343C8:
	subs r0, r2, r3
	asrs r0, r0, #8
_080343CC:
	strh r0, [r4, #0x10]
	ldr r1, [r1, #0x10]
	movs r2, #0xa0
	lsls r2, r2, #4
	adds r0, r1, r2
	ldr r2, [r6, #0x44]
	cmp r0, r2
	ble _080343E0
	movs r0, #0xa
	b _080343F2
_080343E0:
	movs r3, #0x8c
	lsls r3, r3, #8
	adds r0, r1, r3
	cmp r0, r2
	bge _080343EE
	movs r0, #0x8c
	b _080343F2
_080343EE:
	subs r0, r2, r1
	asrs r0, r0, #8
_080343F2:
	strh r0, [r4, #0x12]
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	ldrh r2, [r4, #0x10]
	mov ip, r2
	cmp r0, #0x15
	bgt _08034468
	movs r3, #0x12
	ldrsh r0, [r4, r3]
	cmp r0, #0x19
	bgt _08034428
	movs r0, #3
	strb r0, [r4, #0x1a]
	movs r0, #0x12
	ldrsh r2, [r4, r0]
	ldr r1, _08034424 @ =gUnk_0834BD80
	mov r3, r8
	adds r0, r3, r1
	ldrb r0, [r0]
	adds r0, #0xa
	cmp r2, r0
	bge _08034456
	strh r0, [r4, #0x12]
	b _08034456
	.align 2, 0
_08034424: .4byte gUnk_0834BD80
_08034428:
	cmp r0, #0x7c
	ble _08034450
	movs r0, #7
	strb r0, [r4, #0x1a]
	movs r0, #0x12
	ldrsh r2, [r4, r0]
	ldr r1, _0803444C @ =gUnk_0834BD80
	mov r3, r8
	adds r0, r3, r1
	ldrb r3, [r0]
	movs r0, #0x8c
	subs r0, r0, r3
	cmp r2, r0
	ble _08034456
	movs r0, #0x8c
	subs r0, r0, r3
	strh r0, [r4, #0x12]
	b _08034456
	.align 2, 0
_0803444C: .4byte gUnk_0834BD80
_08034450:
	movs r0, #1
	strb r0, [r4, #0x1a]
	ldr r1, _08034464 @ =gUnk_0834BD80
_08034456:
	mov r2, r8
	adds r0, r2, r1
	ldrb r0, [r0]
	add r0, ip
	strh r0, [r4, #0x10]
	b _080344FE
	.align 2, 0
_08034464: .4byte gUnk_0834BD80
_08034468:
	cmp r0, #0xd8
	ble _080344D4
	movs r3, #0x12
	ldrsh r0, [r4, r3]
	cmp r0, #0x19
	bgt _08034494
	movs r0, #2
	strb r0, [r4, #0x1a]
	movs r0, #0x12
	ldrsh r2, [r4, r0]
	ldr r1, _08034490 @ =gUnk_0834BD80
	mov r3, r8
	adds r0, r3, r1
	ldrb r0, [r0]
	adds r0, #0xa
	cmp r2, r0
	bge _080344C2
	strh r0, [r4, #0x12]
	b _080344C2
	.align 2, 0
_08034490: .4byte gUnk_0834BD80
_08034494:
	cmp r0, #0x7c
	ble _080344BC
	movs r0, #6
	strb r0, [r4, #0x1a]
	movs r0, #0x12
	ldrsh r2, [r4, r0]
	ldr r1, _080344B8 @ =gUnk_0834BD80
	mov r3, r8
	adds r0, r3, r1
	ldrb r3, [r0]
	movs r0, #0x8c
	subs r0, r0, r3
	cmp r2, r0
	ble _080344C2
	movs r0, #0x8c
	subs r0, r0, r3
	strh r0, [r4, #0x12]
	b _080344C2
	.align 2, 0
_080344B8: .4byte gUnk_0834BD80
_080344BC:
	movs r0, #0
	strb r0, [r4, #0x1a]
	ldr r1, _080344D0 @ =gUnk_0834BD80
_080344C2:
	mov r2, r8
	adds r0, r2, r1
	ldrb r0, [r0]
	mov r3, ip
	subs r0, r3, r0
	strh r0, [r4, #0x10]
	b _080344FE
	.align 2, 0
_080344D0: .4byte gUnk_0834BD80
_080344D4:
	ldrh r1, [r4, #0x12]
	movs r2, #0x12
	ldrsh r0, [r4, r2]
	cmp r0, #0x19
	bgt _080344F0
	movs r0, #4
	strb r0, [r4, #0x1a]
	ldr r0, _080344EC @ =gUnk_0834BD80
	add r0, r8
	ldrb r0, [r0]
	adds r0, r1, r0
	b _080344FC
	.align 2, 0
_080344EC: .4byte gUnk_0834BD80
_080344F0:
	movs r0, #5
	strb r0, [r4, #0x1a]
	ldr r0, _080345A0 @ =gUnk_0834BD80
	add r0, r8
	ldrb r0, [r0]
	subs r0, r1, r0
_080344FC:
	strh r0, [r4, #0x12]
_080344FE:
	mov r0, sl
	adds r0, #0x15
	mov r3, sb
	adds r1, r0, r3
	ldrb r0, [r1]
	cmp r0, #1
	beq _08034520
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r0, #0
	strh r0, [r5, #0xc]
	strb r0, [r5, #0x1a]
	movs r0, #1
	strb r0, [r1]
_08034520:
	ldr r0, _080345A4 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _08034534
	ldr r0, [r4, #8]
	ldr r1, _080345A8 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
_08034534:
	ldr r0, [r6, #0x18]
	movs r2, #0x80
	lsls r2, r2, #0xc
	orrs r0, r2
	str r0, [r6, #0x18]
	adds r1, r6, #0
	adds r1, #0xac
	ldr r0, [r1]
	orrs r0, r2
	str r0, [r1]
	subs r1, #0x28
	ldr r0, [r1]
	orrs r0, r2
	str r0, [r1]
	adds r0, r4, #0
	bl sub_08155128
	ldr r0, _080345AC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08034564
	b _080347FA
_08034564:
	adds r1, #0xe0
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bgt _08034574
	b _080347FA
_08034574:
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r1, [r0]
	ldr r2, _080345B0 @ =0xFFFFFC6C
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bhi _08034588
	b _080347FA
_08034588:
	ldr r0, _080345B4 @ =0x0000038D
	cmp r1, r0
	bne _08034590
	b _080347FA
_08034590:
	adds r0, #0x46
	cmp r1, r0
	bls _08034598
	b _080347FA
_08034598:
	adds r0, r4, #0
	bl sub_0815604C
	b _080347FA
	.align 2, 0
_080345A0: .4byte gUnk_0834BD80
_080345A4: .4byte gUnk_0203AD20
_080345A8: .4byte 0xFFFFF7FF
_080345AC: .4byte gUnk_0203AD10
_080345B0: .4byte 0xFFFFFC6C
_080345B4: .4byte 0x0000038D
_080345B8:
	mov r0, sl
	adds r0, #0x15
	mov r1, sb
	adds r7, r0, r1
	ldrb r0, [r7]
	cmp r0, #0
	bne _080345C8
	b _080347FA
_080345C8:
	ldr r0, [r6, #0x18]
	ldr r2, _08034618 @ =0xFFF7FFFF
	ands r0, r2
	str r0, [r6, #0x18]
	adds r1, r6, #0
	adds r1, #0xac
	ldr r0, [r1]
	ands r0, r2
	str r0, [r1]
	subs r1, #0x28
	ldr r0, [r1]
	ands r0, r2
	str r0, [r1]
	strh r3, [r5, #0xc]
	movs r2, #0
	strb r2, [r5, #0x1a]
	adds r0, r6, #0
	adds r0, #0x10
	ldr r4, _0803461C @ =0x0400000A
	mov r1, sp
	adds r2, r4, #0
	bl CpuSet
	ldrb r1, [r6, #1]
	mov r0, sp
	bl sub_0815521C
	adds r0, r6, #0
	adds r0, #0xa4
	mov r1, sp
	adds r2, r4, #0
	bl CpuSet
	ldrb r1, [r6, #1]
	mov r0, sp
	bl sub_0815521C
	movs r3, #0
	strb r3, [r7]
	b _080347FA
	.align 2, 0
_08034618: .4byte 0xFFF7FFFF
_0803461C: .4byte 0x0400000A
_08034620:
	ldr r0, [r6, #0x18]
	ldr r1, _08034680 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r6, #0x18]
	adds r3, r6, #0
	adds r3, #0xac
	ldr r0, [r3]
	ands r0, r1
	str r0, [r3]
	adds r2, r6, #0
	adds r2, #0x84
	ldr r0, [r2]
	ands r0, r1
	str r0, [r2]
	ldr r0, _08034684 @ =gUnk_0203AD20
	ldr r1, [r0]
	movs r0, #8
	ands r1, r0
	str r3, [sp, #0x28]
	str r2, [sp, #0x2c]
	cmp r1, #0
	beq _0803468C
	ldr r0, _08034688 @ =gUnk_0834BD84
	add r0, r8
	ldrb r1, [r0]
	strh r1, [r4, #0x10]
	movs r0, #0x91
	strh r0, [r4, #0x12]
	strh r1, [r7, #0x10]
	ldrh r0, [r4, #0x12]
	strh r0, [r7, #0x12]
	ldrh r0, [r4, #0x10]
	strh r0, [r5, #0x10]
	ldrh r0, [r4, #0x12]
	subs r0, #6
	strh r0, [r5, #0x12]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r7, #8]
	orrs r0, r1
	str r0, [r7, #8]
	ldr r0, [r5, #8]
	orrs r0, r1
	b _080346BA
	.align 2, 0
_08034680: .4byte 0xFFF7FFFF
_08034684: .4byte gUnk_0203AD20
_08034688: .4byte gUnk_0834BD84
_0803468C:
	ldr r0, _0803470C @ =gUnk_0834BD84
	add r0, r8
	ldrb r1, [r0]
	strh r1, [r4, #0x10]
	movs r0, #0xf
	strh r0, [r4, #0x12]
	strh r1, [r7, #0x10]
	ldrh r0, [r4, #0x12]
	strh r0, [r7, #0x12]
	ldrh r0, [r4, #0x10]
	strh r0, [r5, #0x10]
	ldrh r0, [r4, #0x12]
	subs r0, #6
	strh r0, [r5, #0x12]
	ldr r0, [r4, #8]
	ldr r1, _08034710 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r7, #8]
	ands r0, r1
	str r0, [r7, #8]
	ldr r0, [r5, #8]
	ands r0, r1
_080346BA:
	str r0, [r5, #8]
	mov r0, sl
	adds r0, #0x15
	mov r2, sb
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #2
	beq _080346E0
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r0, #0
	strh r0, [r5, #0xc]
	movs r3, #0
	strb r3, [r5, #0x1a]
	movs r0, #2
	strb r0, [r1]
_080346E0:
	ldr r2, _08034714 @ =gRoomProps
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r1, [r0, #0x12]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _0803471C
	ldr r0, _08034718 @ =0x000002DB
	strh r0, [r4, #0xc]
	movs r0, #0
	strb r0, [r4, #0x1a]
	strh r1, [r7, #0xc]
	b _0803474A
	.align 2, 0
_0803470C: .4byte gUnk_0834BD84
_08034710: .4byte 0xFFFFF7FF
_08034714: .4byte gRoomProps
_08034718: .4byte 0x000002DB
_0803471C:
	ldr r1, _08034780 @ =gUnk_08350AAC
	ldr r3, _08034784 @ =0x00000103
	adds r2, r6, r3
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	ldr r1, _08034788 @ =gUnk_08350B30
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #2]
_0803474A:
	strb r0, [r7, #0x1a]
	ldr r0, [r6, #0xc]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08034762
	movs r0, #0xae
	lsls r0, r0, #2
	strh r0, [r5, #0xc]
	movs r0, #0
	strb r0, [r5, #0x1a]
_08034762:
	ldrh r0, [r5, #0xc]
	cmp r0, #0
	beq _080347AA
	adds r0, r5, #0
	bl sub_08155128
	adds r1, r0, #0
	cmp r1, #0
	bne _08034792
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	bne _0803478C
	movs r0, #1
	strb r0, [r5, #0x1a]
	b _08034792
	.align 2, 0
_08034780: .4byte gUnk_08350AAC
_08034784: .4byte 0x00000103
_08034788: .4byte gUnk_08350B30
_0803478C:
	strh r1, [r5, #0xc]
	movs r1, #0
	strb r1, [r5, #0x1a]
_08034792:
	ldr r0, _08034820 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080347AA
	ldrh r0, [r5, #0xc]
	cmp r0, #0
	beq _080347AA
	adds r0, r5, #0
	bl sub_0815604C
_080347AA:
	ldrh r0, [r7, #0xc]
	cmp r0, #0
	beq _080347C8
	adds r0, r7, #0
	bl sub_08155128
	ldr r0, _08034820 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080347C8
	adds r0, r7, #0
	bl sub_0815604C
_080347C8:
	adds r0, r4, #0
	bl sub_08155128
	ldr r0, _08034820 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080347E0
	adds r0, r4, #0
	bl sub_0815604C
_080347E0:
	ldr r0, [r6, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r6, #0x18]
	ldr r2, [sp, #0x28]
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	ldr r3, [sp, #0x2c]
	ldr r0, [r3]
	orrs r0, r1
	str r0, [r3]
_080347FA:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_08034804:
	ldr r0, _08034824 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp sb, r0
	bhs _0803480E
	b _0803431A
_0803480E:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034820: .4byte gUnk_0203AD10
_08034824: .4byte gUnk_0203AD44

	thumb_func_start sub_08034828
sub_08034828: @ 0x08034828
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r4, _08034860 @ =0x0600E000
	cmp r0, #1
	beq _08034868
	cmp r0, #1
	ble _0803483C
	cmp r0, #2
	beq _080348C4
_0803483C:
	movs r2, #0
	ldr r0, _08034864 @ =0x0000F184
	adds r5, r0, #0
_08034842:
	movs r1, #0
	adds r3, r2, #1
_08034846:
	strh r5, [r4]
	adds r4, #2
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xd
	bls _08034846
	adds r4, #0x24
	lsls r0, r3, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _08034842
	b _0803490A
	.align 2, 0
_08034860: .4byte 0x0600E000
_08034864: .4byte 0x0000F184
_08034868:
	ldr r1, _080348B0 @ =gUnk_08D60F2C
	ldr r0, _080348B4 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _080348B8 @ =0x06007C60
	movs r2, #0xe8
	lsls r2, r2, #1
	bl CpuSet
	movs r2, #0
	ldr r0, _080348BC @ =0x000001E3
	adds r6, r0, #0
	ldr r0, _080348C0 @ =0xFFFFF000
	adds r5, r0, #0
_08034888:
	movs r1, #0
	adds r3, r2, #1
	lsls r0, r2, #4
	subs r2, r0, r2
_08034890:
	adds r0, r1, r6
	adds r0, r2, r0
	orrs r0, r5
	strh r0, [r4]
	adds r4, #2
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xd
	bls _08034890
	adds r4, #0x24
	lsls r0, r3, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _08034888
	b _0803490A
	.align 2, 0
_080348B0: .4byte gUnk_08D60F2C
_080348B4: .4byte gUnk_08D60A80
_080348B8: .4byte 0x06007C60
_080348BC: .4byte 0x000001E3
_080348C0: .4byte 0xFFFFF000
_080348C4:
	ldr r1, _08034910 @ =gUnk_08D60F44
	ldr r0, _08034914 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08034918 @ =0x06007C60
	movs r2, #0xe8
	lsls r2, r2, #1
	bl CpuSet
	movs r2, #0
	ldr r0, _0803491C @ =0x000001E3
	adds r6, r0, #0
	ldr r0, _08034920 @ =0xFFFFF000
	adds r5, r0, #0
_080348E4:
	movs r1, #0
	adds r3, r2, #1
	lsls r0, r2, #4
	subs r2, r0, r2
_080348EC:
	adds r0, r1, r6
	adds r0, r2, r0
	orrs r0, r5
	strh r0, [r4]
	adds r4, #2
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xd
	bls _080348EC
	adds r4, #0x24
	lsls r0, r3, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _080348E4
_0803490A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08034910: .4byte gUnk_08D60F44
_08034914: .4byte gUnk_08D60A80
_08034918: .4byte 0x06007C60
_0803491C: .4byte 0x000001E3
_08034920: .4byte 0xFFFFF000

	thumb_func_start sub_08034924
sub_08034924: @ 0x08034924
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r4, _0803495C @ =0x0600E000
	cmp r0, #1
	beq _08034964
	cmp r0, #1
	ble _08034938
	cmp r0, #2
	beq _080349C0
_08034938:
	movs r2, #0
	ldr r0, _08034960 @ =0x0000F184
	adds r5, r0, #0
_0803493E:
	movs r1, #0
	adds r3, r2, #1
_08034942:
	strh r5, [r4]
	adds r4, #2
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xd
	bls _08034942
	adds r4, #0x24
	lsls r0, r3, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _0803493E
	b _08034A06
	.align 2, 0
_0803495C: .4byte 0x0600E000
_08034960: .4byte 0x0000F184
_08034964:
	ldr r1, _080349AC @ =gUnk_08D60EFC
	ldr r0, _080349B0 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _080349B4 @ =0x06007C60
	movs r2, #0xe8
	lsls r2, r2, #1
	bl CpuSet
	movs r2, #0
	ldr r0, _080349B8 @ =0x000001E3
	adds r6, r0, #0
	ldr r0, _080349BC @ =0xFFFFF000
	adds r5, r0, #0
_08034984:
	movs r1, #0
	adds r3, r2, #1
	lsls r0, r2, #4
	subs r2, r0, r2
_0803498C:
	adds r0, r1, r6
	adds r0, r2, r0
	orrs r0, r5
	strh r0, [r4]
	adds r4, #2
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xd
	bls _0803498C
	adds r4, #0x24
	lsls r0, r3, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _08034984
	b _08034A06
	.align 2, 0
_080349AC: .4byte gUnk_08D60EFC
_080349B0: .4byte gUnk_08D60A80
_080349B4: .4byte 0x06007C60
_080349B8: .4byte 0x000001E3
_080349BC: .4byte 0xFFFFF000
_080349C0:
	ldr r1, _08034A0C @ =gUnk_08D60F14
	ldr r0, _08034A10 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08034A14 @ =0x06007C60
	movs r2, #0xe8
	lsls r2, r2, #1
	bl CpuSet
	movs r2, #0
	ldr r0, _08034A18 @ =0x000001E3
	adds r6, r0, #0
	ldr r0, _08034A1C @ =0xFFFFF000
	adds r5, r0, #0
_080349E0:
	movs r1, #0
	adds r3, r2, #1
	lsls r0, r2, #4
	subs r2, r0, r2
_080349E8:
	adds r0, r1, r6
	adds r0, r2, r0
	orrs r0, r5
	strh r0, [r4]
	adds r4, #2
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xd
	bls _080349E8
	adds r4, #0x24
	lsls r0, r3, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _080349E0
_08034A06:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08034A0C: .4byte gUnk_08D60F14
_08034A10: .4byte gUnk_08D60A80
_08034A14: .4byte 0x06007C60
_08034A18: .4byte 0x000001E3
_08034A1C: .4byte 0xFFFFF000

	thumb_func_start sub_08034A20
sub_08034A20: @ 0x08034A20
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08034B28 @ =gUnk_0203AD3C
	mov r8, r0
	ldrb r0, [r0]
	movs r6, #0xd4
	lsls r6, r6, #1
	muls r0, r6, r0
	ldr r5, _08034B2C @ =gKirbys
	adds r0, r0, r5
	mov sb, r0
	ldr r7, _08034B30 @ =0x0600E190
	ldr r1, _08034B34 @ =gUnk_08D60F5C
	ldr r4, _08034B38 @ =gUnk_08D60A80
	ldrh r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08034B3C @ =0x060070A0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	ldr r1, _08034B40 @ =gUnk_08D60F74
	ldrh r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08034B44 @ =0x06007C60
	movs r2, #0xe8
	lsls r2, r2, #1
	bl CpuSet
	mov r1, r8
	ldrb r0, [r1]
	muls r0, r6, r0
	adds r0, r0, r5
	adds r0, #0x60
	ldrh r1, [r0]
	ldr r0, _08034B48 @ =0x00000397
	cmp r1, r0
	beq _08034B64
	movs r2, #0
	ldr r0, _08034B4C @ =0x00000185
	adds r5, r0, #0
	ldr r1, _08034B50 @ =0xFFFFF000
	adds r4, r1, #0
_08034A82:
	movs r1, #0
	lsls r3, r2, #4
_08034A86:
	adds r0, r1, r5
	adds r0, r3, r0
	orrs r0, r4
	strh r0, [r7]
	adds r7, #2
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xf
	bls _08034A86
	adds r7, #0x20
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _08034A82
	ldr r7, _08034B54 @ =0x0600E294
	movs r2, #0
	ldr r0, _08034B58 @ =0x000001E3
	adds r5, r0, #0
	ldr r1, _08034B50 @ =0xFFFFF000
	adds r4, r1, #0
_08034AB2:
	movs r1, #0
	lsls r0, r2, #4
	subs r3, r0, r2
_08034AB8:
	adds r0, r1, r5
	adds r0, r3, r0
	orrs r0, r4
	strh r0, [r7]
	adds r7, #2
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #5
	bls _08034AB8
	adds r7, #0x34
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _08034AB2
	ldr r7, _08034B5C @ =0x0600E354
	movs r2, #0
	ldr r0, _08034B58 @ =0x000001E3
	adds r5, r0, #0
	ldr r1, _08034B50 @ =0xFFFFF000
	adds r4, r1, #0
_08034AE4:
	movs r1, #6
	lsls r0, r2, #4
	adds r3, r2, #1
	subs r2, r0, r2
_08034AEC:
	adds r0, r1, r5
	adds r0, r2, r0
	orrs r0, r4
	strh r0, [r7]
	adds r7, #2
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xb
	bls _08034AEC
	adds r7, #0x34
	lsls r0, r3, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _08034AE4
	ldr r2, _08034B2C @ =gKirbys
	ldr r0, _08034B28 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0xd9
	ldrb r0, [r0]
	cmp r0, #0
	beq _08034B60
	bl sub_08034BB4
	b _08034B64
	.align 2, 0
_08034B28: .4byte gUnk_0203AD3C
_08034B2C: .4byte gKirbys
_08034B30: .4byte 0x0600E190
_08034B34: .4byte gUnk_08D60F5C
_08034B38: .4byte gUnk_08D60A80
_08034B3C: .4byte 0x060070A0
_08034B40: .4byte gUnk_08D60F74
_08034B44: .4byte 0x06007C60
_08034B48: .4byte 0x00000397
_08034B4C: .4byte 0x00000185
_08034B50: .4byte 0xFFFFF000
_08034B54: .4byte 0x0600E294
_08034B58: .4byte 0x000001E3
_08034B5C: .4byte 0x0600E354
_08034B60:
	bl sub_08034C28
_08034B64:
	ldr r3, _08034B90 @ =gRoomProps
	ldr r2, _08034B94 @ =gKirbys
	ldr r0, _08034B98 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r1, [r0, #0x12]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08034B9C
	bl sub_08036194
	b _08034BA0
	.align 2, 0
_08034B90: .4byte gRoomProps
_08034B94: .4byte gKirbys
_08034B98: .4byte gUnk_0203AD3C
_08034B9C:
	bl sub_080361B0
_08034BA0:
	mov r0, sb
	bl sub_08034D68
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08034BB4
sub_08034BB4: @ 0x08034BB4
	push {r4, r5, r6, lr}
	ldr r3, _08034C14 @ =0x0600E350
	movs r2, #0
	ldr r0, _08034C18 @ =0x000001E3
	adds r6, r0, #0
	ldr r0, _08034C1C @ =0xFFFFF000
	adds r5, r0, #0
_08034BC2:
	movs r1, #0xc
	lsls r0, r2, #4
	subs r4, r0, r2
_08034BC8:
	adds r0, r1, r6
	adds r0, r4, r0
	orrs r0, r5
	strh r0, [r3]
	adds r3, #2
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xd
	bls _08034BC8
	adds r3, #0x3c
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _08034BC2
	ldr r3, _08034C20 @ =0x0600E290
	movs r2, #0
	ldr r0, _08034C24 @ =0x0000F184
	adds r4, r0, #0
_08034BF0:
	movs r1, #0xc
	adds r2, #1
_08034BF4:
	strh r4, [r3]
	adds r3, #2
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xd
	bls _08034BF4
	adds r3, #0x3c
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _08034BF0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08034C14: .4byte 0x0600E350
_08034C18: .4byte 0x000001E3
_08034C1C: .4byte 0xFFFFF000
_08034C20: .4byte 0x0600E290
_08034C24: .4byte 0x0000F184

	thumb_func_start sub_08034C28
sub_08034C28: @ 0x08034C28
	push {r4, r5, r6, lr}
	ldr r3, _08034C88 @ =0x0600E290
	movs r2, #0
	ldr r0, _08034C8C @ =0x000001E3
	adds r6, r0, #0
	ldr r0, _08034C90 @ =0xFFFFF000
	adds r5, r0, #0
_08034C36:
	movs r1, #0xc
	lsls r0, r2, #4
	subs r4, r0, r2
_08034C3C:
	adds r0, r1, r6
	adds r0, r4, r0
	orrs r0, r5
	strh r0, [r3]
	adds r3, #2
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xd
	bls _08034C3C
	adds r3, #0x3c
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _08034C36
	ldr r3, _08034C94 @ =0x0600E350
	movs r2, #0
	ldr r0, _08034C98 @ =0x0000F184
	adds r4, r0, #0
_08034C64:
	movs r1, #0xc
	adds r2, #1
_08034C68:
	strh r4, [r3]
	adds r3, #2
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xd
	bls _08034C68
	adds r3, #0x3c
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _08034C64
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08034C88: .4byte 0x0600E290
_08034C8C: .4byte 0x000001E3
_08034C90: .4byte 0xFFFFF000
_08034C94: .4byte 0x0600E350
_08034C98: .4byte 0x0000F184

	thumb_func_start sub_08034C9C
sub_08034C9C: @ 0x08034C9C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r0, _08034CC8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r4, #0x10
	ands r0, r4
	cmp r0, #0
	bne _08034D58
	ldr r0, _08034CCC @ =gUnk_03000010
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08034CD0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08034CD8
	.align 2, 0
_08034CC8: .4byte gUnk_0203AD10
_08034CCC: .4byte gUnk_03000010
_08034CD0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08034CD8:
	strb r3, [r0, #0x14]
	ldr r1, _08034D60 @ =0x0600E380
	movs r4, #0
	movs r0, #6
	subs r0, r0, r3
	lsls r5, r3, #0x10
	cmp r4, r0
	bge _08034D0E
	movs r3, #0xc2
	lsls r3, r3, #1
	adds r2, r3, #0
	adds r3, r0, #0
_08034CF0:
	strh r2, [r1]
	adds r1, #2
	strh r2, [r1]
	adds r1, #2
	strh r2, [r1]
	adds r1, #2
	strh r2, [r1]
	adds r1, #2
	strh r2, [r1]
	adds r1, #0x38
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r3
	blt _08034CF0
_08034D0E:
	movs r4, #0
	cmp r5, #0
	beq _08034D58
	movs r0, #0xe
	lsls r3, r0, #0xc
_08034D18:
	lsls r0, r4, #2
	adds r2, r0, r4
	ldr r6, _08034D64 @ =0x000001C5
	adds r0, r2, r6
	orrs r0, r3
	strh r0, [r1]
	adds r1, #2
	adds r6, #1
	adds r0, r2, r6
	orrs r0, r3
	strh r0, [r1]
	adds r1, #2
	adds r6, #1
	adds r0, r2, r6
	orrs r0, r3
	strh r0, [r1]
	adds r1, #2
	adds r6, #1
	adds r0, r2, r6
	orrs r0, r3
	strh r0, [r1]
	adds r1, #2
	adds r6, #1
	adds r0, r2, r6
	orrs r0, r3
	strh r0, [r1]
	adds r1, #0x38
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, r5
	blo _08034D18
_08034D58:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08034D60: .4byte 0x0600E380
_08034D64: .4byte 0x000001C5

	thumb_func_start sub_08034D68
sub_08034D68: @ 0x08034D68
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _08034D88 @ =gUnk_03000010
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08034D8C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08034D94
	.align 2, 0
_08034D88: .4byte gUnk_03000010
_08034D8C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08034D94:
	ldr r5, _08034DAC @ =0x0600E004
	adds r0, r3, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #1
	beq _08034DBC
	cmp r0, #1
	bgt _08034DB0
	cmp r0, #0
	beq _08034DB6
	b _08034DD6
	.align 2, 0
_08034DAC: .4byte 0x0600E004
_08034DB0:
	cmp r0, #2
	beq _08034DD2
	b _08034DD6
_08034DB6:
	movs r0, #0x30
	movs r4, #0x31
	b _08034DDA
_08034DBC:
	ldrb r1, [r1, #0xd]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08034DCC
	movs r0, #0x35
	movs r4, #0x37
	b _08034DDA
_08034DCC:
	movs r0, #0x35
	movs r4, #0x36
	b _08034DDA
_08034DD2:
	movs r0, #0x34
	b _08034DD8
_08034DD6:
	movs r0, #0x32
_08034DD8:
	movs r4, #0x33
_08034DDA:
	ldr r2, _08034E08 @ =0x00000185
	adds r1, r2, #0
	adds r2, r1, r0
	ldr r0, _08034E0C @ =0xFFFFF000
	adds r3, r0, #0
	adds r0, r2, #0
	orrs r0, r3
	strh r0, [r5]
	adds r5, #2
	adds r1, r1, r4
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r5]
	adds r5, #0x3e
	ldr r3, _08034E10 @ =0xFFFFF800
	adds r0, r3, #0
	orrs r2, r0
	strh r2, [r5]
	orrs r1, r0
	strh r1, [r5, #2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08034E08: .4byte 0x00000185
_08034E0C: .4byte 0xFFFFF000
_08034E10: .4byte 0xFFFFF800

	thumb_func_start sub_08034E14
sub_08034E14: @ 0x08034E14
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _08034E34 @ =gUnk_03000010
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08034E38
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08034E40
	.align 2, 0
_08034E34: .4byte gUnk_03000010
_08034E38:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08034E40:
	adds r5, r0, #0
	ldr r0, _08034EA0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08034E9A
	ldr r0, _08034EA4 @ =gCurTask
	ldr r0, [r0]
	ldr r1, [r0, #8]
	ldr r0, _08034EA8 @ =sub_08035FA8
	cmp r1, r0
	beq _08034E9A
	ldr r0, _08034EAC @ =sub_080340A8
	cmp r1, r0
	beq _08034E9A
	movs r0, #0x82
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	cmp r0, #0x5d
	bhi _08034E9A
	ldr r2, _08034EB0 @ =gKirbys
	ldr r0, _08034EB4 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08034E9A
	ldr r0, [r5, #0x1c]
	cmp r0, r3
	beq _08034E9A
	cmp r3, #0
	bne _08034EB8
	str r3, [r5, #0x1c]
	movs r0, #0
	bl sub_08034FA8
_08034E9A:
	movs r0, #0
	b _08034F9E
	.align 2, 0
_08034EA0: .4byte gUnk_0203AD10
_08034EA4: .4byte gCurTask
_08034EA8: .4byte sub_08035FA8
_08034EAC: .4byte sub_080340A8
_08034EB0: .4byte gKirbys
_08034EB4: .4byte gUnk_0203AD3C
_08034EB8:
	adds r0, r3, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _08034E9A
	ldr r4, [r3, #8]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r4, r0
	cmp r4, #0
	bne _08034E9A
	str r3, [r5, #0x1c]
	ldr r1, _08034F24 @ =gUnk_08D60EE4
	ldr r0, _08034F28 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	mov r2, ip
	ldrb r1, [r2]
	lsls r1, r1, #8
	ldr r0, [r0]
	adds r0, r0, r1
	ldr r1, _08034F2C @ =0x060077A0
	movs r2, #0x80
	bl CpuSet
	strb r4, [r5, #0xf]
	ldr r0, [r5, #0x1c]
	mov ip, r0
	mov r4, ip
	adds r4, #0x82
	ldrb r1, [r4]
	adds r0, r1, #0
	subs r0, #0x38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1a
	bhi _08034F68
	cmp r1, #0x4f
	bne _08034F38
	mov r0, ip
	adds r0, #0x80
	movs r1, #0
	ldrsh r3, [r0, r1]
	ldr r2, _08034F30 @ =gUnk_08351628
	ldr r0, _08034F34 @ =gUnk_0203AD30
	ldrb r1, [r0]
	subs r1, #1
	lsls r1, r1, #1
	mov r0, ip
	adds r0, #0x87
	ldrb r0, [r0]
	b _08034F4E
	.align 2, 0
_08034F24: .4byte gUnk_08D60EE4
_08034F28: .4byte gUnk_08D60A80
_08034F2C: .4byte 0x060077A0
_08034F30: .4byte gUnk_08351628
_08034F34: .4byte gUnk_0203AD30
_08034F38:
	mov r0, ip
	adds r0, #0x80
	movs r2, #0
	ldrsh r3, [r0, r2]
	ldr r2, _08034F60 @ =gUnk_08351458
	ldr r0, _08034F64 @ =gUnk_0203AD30
	ldrb r1, [r0]
	subs r1, #1
	lsls r1, r1, #1
	ldrb r0, [r4]
	subs r0, #0x38
_08034F4E:
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r0, [r1]
	muls r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #0x10
	b _08034F80
	.align 2, 0
_08034F60: .4byte gUnk_08351458
_08034F64: .4byte gUnk_0203AD30
_08034F68:
	mov r0, ip
	adds r0, #0x80
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r1, _08034FA4 @ =gUnk_083513E8
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r2, #0
	muls r1, r0, r1
	lsls r1, r1, #0x10
_08034F80:
	asrs r2, r1, #0x18
	strb r2, [r5, #0xa]
	movs r0, #0xff
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08034F92
	adds r0, r2, #1
	strb r0, [r5, #0xa]
_08034F92:
	ldrb r0, [r5, #0xa]
	strb r0, [r5, #9]
	adds r0, r5, #0
	bl sub_08034FA8
	adds r0, r5, #0
_08034F9E:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08034FA4: .4byte gUnk_083513E8

	thumb_func_start sub_08034FA8
sub_08034FA8: @ 0x08034FA8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	ldr r0, _080350AC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08034FC2
	b _08035174
_08034FC2:
	ldr r0, _080350B0 @ =gUnk_03000010
	ldr r0, [r0]
	ldr r1, [r0, #8]
	ldr r0, _080350B4 @ =sub_08035FA8
	cmp r1, r0
	bne _08034FD0
	b _08035174
_08034FD0:
	ldr r0, _080350B8 @ =sub_080340A8
	cmp r1, r0
	bne _08034FD8
	b _08035174
_08034FD8:
	ldr r7, _080350BC @ =0x0600E4E8
	cmp r4, #0
	beq _08034FE0
	b _080350E8
_08034FE0:
	ldr r0, _080350C0 @ =gUnk_08D60EE4
	mov sb, r0
	ldr r6, _080350C4 @ =gUnk_08D60A80
	ldrh r2, [r6]
	lsls r2, r2, #2
	add r2, sb
	ldr r1, _080350C8 @ =gUnk_08D6CD0C
	mov sl, r1
	ldr r3, _080350CC @ =gKirbys
	mov r8, r3
	ldr r5, _080350D0 @ =gUnk_0203AD3C
	ldrb r0, [r5]
	movs r4, #0xd4
	lsls r4, r4, #1
	muls r0, r4, r0
	add r0, r8
	adds r0, #0x60
	ldrh r0, [r0]
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	adds r0, #0x46
	ldrb r1, [r0]
	lsls r1, r1, #9
	movs r0, #0xa6
	lsls r0, r0, #7
	adds r1, r1, r0
	ldr r0, [r2]
	adds r0, r0, r1
	ldr r1, _080350D4 @ =0x060077A0
	movs r2, #0x80
	bl CpuSet
	ldrh r2, [r6]
	lsls r2, r2, #2
	add r2, sb
	ldrb r0, [r5]
	muls r0, r4, r0
	add r0, r8
	adds r0, #0x60
	ldrh r0, [r0]
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	adds r0, #0x46
	ldrb r1, [r0]
	lsls r1, r1, #9
	movs r3, #0xa8
	lsls r3, r3, #7
	adds r1, r1, r3
	ldr r0, [r2]
	adds r0, r0, r1
	ldr r1, _080350D8 @ =0x060074A0
	movs r2, #0x80
	bl CpuSet
	ldr r1, _080350DC @ =0x0000F184
	adds r0, r1, #0
	strh r0, [r7]
	adds r7, #2
	strh r0, [r7]
	adds r7, #2
	ldr r2, _080350E0 @ =0x00000185
	adds r1, r2, #0
	adds r0, r1, #0
	adds r0, #0x20
	ldr r3, _080350E4 @ =0xFFFFF000
	adds r2, r3, #0
	orrs r0, r2
	strh r0, [r7]
	adds r7, #2
	adds r0, r1, #0
	adds r0, #0x21
	orrs r0, r2
	strh r0, [r7]
	adds r7, #2
	adds r0, r1, #0
	adds r0, #0x22
	orrs r0, r2
	strh r0, [r7]
	adds r7, #2
	orrs r4, r2
	strh r4, [r7]
	adds r7, #2
	adds r0, r1, #0
	adds r0, #0x24
	orrs r0, r2
	strh r0, [r7]
	adds r7, #2
	adds r0, r1, #0
	adds r0, #0x25
	orrs r0, r2
	strh r0, [r7]
	adds r7, #2
	adds r0, r1, #0
	adds r0, #0x26
	orrs r0, r2
	strh r0, [r7]
	adds r1, #0x27
	orrs r1, r2
	strh r1, [r7, #2]
	b _08035174
	.align 2, 0
_080350AC: .4byte gUnk_0203AD10
_080350B0: .4byte gUnk_03000010
_080350B4: .4byte sub_08035FA8
_080350B8: .4byte sub_080340A8
_080350BC: .4byte 0x0600E4E8
_080350C0: .4byte gUnk_08D60EE4
_080350C4: .4byte gUnk_08D60A80
_080350C8: .4byte gUnk_08D6CD0C
_080350CC: .4byte gKirbys
_080350D0: .4byte gUnk_0203AD3C
_080350D4: .4byte 0x060077A0
_080350D8: .4byte 0x060074A0
_080350DC: .4byte 0x0000F184
_080350E0: .4byte 0x00000185
_080350E4: .4byte 0xFFFFF000
_080350E8:
	ldr r0, _08035124 @ =gUnk_082ECBA0
	ldr r1, _08035128 @ =0x060074A0
	movs r2, #0x80
	bl CpuSet
	ldr r1, _0803512C @ =0x0000F1A5
	adds r0, r1, #0
	strh r0, [r7]
	ldr r7, _08035130 @ =0x0600E4EA
	movs r0, #9
	ldrsb r0, [r4, r0]
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r3, #8
_08035104:
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	movs r0, #0xf8
	ands r0, r1
	cmp r0, #0
	beq _08035138
	ldr r2, _08035134 @ =0x0000F1A7
	adds r0, r2, #0
	strh r0, [r7]
	adds r7, #2
	adds r0, r1, #0
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _08035164
	.align 2, 0
_08035124: .4byte gUnk_082ECBA0
_08035128: .4byte 0x060074A0
_0803512C: .4byte 0x0000F1A5
_08035130: .4byte 0x0600E4EA
_08035134: .4byte 0x0000F1A7
_08035138:
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	beq _0803515C
	ldr r2, _08035154 @ =0x000001AF
	adds r0, r2, #0
	subs r0, r0, r1
	ldr r2, _08035158 @ =0xFFFFF000
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r7]
	adds r7, #2
	movs r2, #0
	b _08035164
	.align 2, 0
_08035154: .4byte 0x000001AF
_08035158: .4byte 0xFFFFF000
_0803515C:
	ldr r1, _08035184 @ =0x0000F1AF
	adds r0, r1, #0
	strh r0, [r7]
	adds r7, #2
_08035164:
	subs r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _08035104
	ldr r2, _08035188 @ =0x0000F1A6
	adds r0, r2, #0
	strh r0, [r7]
_08035174:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035184: .4byte 0x0000F1AF
_08035188: .4byte 0x0000F1A6

	thumb_func_start sub_0803518C
sub_0803518C: @ 0x0803518C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	ldr r0, _0803521C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080351A8
	b _08035310
_080351A8:
	ldr r0, _08035220 @ =0x00000101
	add r0, sl
	ldrb r4, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	add r0, sl
	ldrb r7, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _080351C2
	movs r7, #0
_080351C2:
	lsls r0, r4, #0x18
	asrs r1, r0, #0x18
	asrs r0, r0, #0x19
	movs r2, #1
	ands r1, r2
	adds r0, r0, r1
	movs r1, #0
	mov r8, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r8, r0
	blt _080351DC
	b _080352E8
_080351DC:
	movs r2, #0xfe
	mov sb, r2
	str r0, [sp]
_080351E2:
	mov r0, r8
	adds r0, #0xd
	lsls r5, r0, #1
	ldr r3, _08035224 @ =0x0600E480
	adds r2, r5, r3
	lsls r1, r7, #0x18
	asrs r3, r1, #0x18
	adds r0, r3, #0
	mov r6, sb
	ands r0, r6
	mov ip, r1
	cmp r0, #0
	beq _08035230
	ldr r1, _08035228 @ =0x0000F192
	adds r0, r1, #0
	strh r0, [r2]
	ldr r6, _0803522C @ =0x0600E4C0
	adds r2, r5, r6
	adds r1, #0x10
	adds r0, r1, #0
	strh r0, [r2]
	subs r0, r3, #2
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r0, r4, #0x18
	movs r2, #0xfe
	lsls r2, r2, #0x18
	adds r0, r0, r2
	b _080352D4
	.align 2, 0
_0803521C: .4byte gUnk_0203AD10
_08035220: .4byte 0x00000101
_08035224: .4byte 0x0600E480
_08035228: .4byte 0x0000F192
_0803522C: .4byte 0x0600E4C0
_08035230:
	movs r6, #1
	adds r0, r3, #0
	ands r0, r6
	cmp r0, #0
	beq _0803528C
	lsls r1, r4, #0x18
	asrs r3, r1, #0x18
	adds r0, r3, #0
	mov r4, sb
	ands r0, r4
	cmp r0, #0
	bne _0803526C
	adds r0, r3, #0
	ands r0, r6
	cmp r0, #0
	beq _0803526C
	ldr r6, _08035260 @ =0x0000F1B2
	adds r0, r6, #0
	strh r0, [r2]
	ldr r0, _08035264 @ =0x0600E4C0
	adds r2, r5, r0
	ldr r3, _08035268 @ =0x0000F1A4
	adds r0, r3, #0
	b _08035278
	.align 2, 0
_08035260: .4byte 0x0000F1B2
_08035264: .4byte 0x0600E4C0
_08035268: .4byte 0x0000F1A4
_0803526C:
	ldr r4, _08035284 @ =0x0000F193
	adds r0, r4, #0
	strh r0, [r2]
	adds r2, #0x40
	ldr r6, _08035288 @ =0x0000F1A3
	adds r0, r6, #0
_08035278:
	strh r0, [r2]
	movs r0, #0xff
	lsls r0, r0, #0x18
	add r0, ip
	lsrs r7, r0, #0x18
	b _080352CE
	.align 2, 0
_08035284: .4byte 0x0000F193
_08035288: .4byte 0x0000F1A3
_0803528C:
	lsls r1, r4, #0x18
	asrs r3, r1, #0x18
	adds r0, r3, #0
	mov r4, sb
	ands r0, r4
	cmp r0, #0
	bne _080352C0
	adds r0, r3, #0
	ands r0, r6
	cmp r0, #0
	beq _080352C0
	ldr r6, _080352B4 @ =0x0000F9B4
	adds r0, r6, #0
	strh r0, [r2]
	ldr r0, _080352B8 @ =0x0600E4C0
	adds r2, r5, r0
	ldr r3, _080352BC @ =0x0000F1B4
	adds r0, r3, #0
	b _080352CC
	.align 2, 0
_080352B4: .4byte 0x0000F9B4
_080352B8: .4byte 0x0600E4C0
_080352BC: .4byte 0x0000F1B4
_080352C0:
	ldr r4, _08035320 @ =0x0000F194
	adds r0, r4, #0
	strh r0, [r2]
	adds r2, #0x40
	ldr r6, _08035324 @ =0x0000F994
	adds r0, r6, #0
_080352CC:
	strh r0, [r2]
_080352CE:
	movs r2, #0xfe
	lsls r2, r2, #0x18
	adds r0, r1, r2
_080352D4:
	lsrs r4, r0, #0x18
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r3, [sp]
	cmp r8, r3
	bge _080352E8
	b _080351E2
_080352E8:
	ldr r0, _08035328 @ =0x00000101
	add r0, sl
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08035310
	mov r0, r8
	adds r0, #0xd
	lsls r0, r0, #1
	ldr r4, _0803532C @ =0x0600E480
	adds r2, r0, r4
	ldr r6, _08035330 @ =0x0000F9B3
	adds r1, r6, #0
	strh r1, [r2]
	ldr r1, _08035334 @ =0x0600E4C0
	adds r2, r0, r1
	ldr r3, _08035338 @ =0x0000F1B3
	adds r0, r3, #0
	strh r0, [r2]
_08035310:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035320: .4byte 0x0000F194
_08035324: .4byte 0x0000F994
_08035328: .4byte 0x00000101
_0803532C: .4byte 0x0600E480
_08035330: .4byte 0x0000F9B3
_08035334: .4byte 0x0600E4C0
_08035338: .4byte 0x0000F1B3

	thumb_func_start sub_0803533C
sub_0803533C: @ 0x0803533C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r5, [r6, #0x1c]
	adds r1, r5, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bgt _08035354
	movs r0, #0
	b _080353D8
_08035354:
	adds r4, r5, #0
	adds r4, #0x82
	ldrb r2, [r4]
	adds r0, r2, #0
	subs r0, #0x38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1a
	bhi _080353B4
	cmp r2, #0x4f
	bne _08035388
	movs r0, #0
	ldrsh r3, [r1, r0]
	ldr r2, _08035380 @ =gUnk_08351628
	ldr r0, _08035384 @ =gUnk_0203AD30
	ldrb r1, [r0]
	subs r1, #1
	lsls r1, r1, #1
	adds r0, r5, #0
	adds r0, #0x87
	ldrb r0, [r0]
	b _0803539A
	.align 2, 0
_08035380: .4byte gUnk_08351628
_08035384: .4byte gUnk_0203AD30
_08035388:
	movs r2, #0
	ldrsh r3, [r1, r2]
	ldr r2, _080353AC @ =gUnk_08351458
	ldr r0, _080353B0 @ =gUnk_0203AD30
	ldrb r1, [r0]
	subs r1, #1
	lsls r1, r1, #1
	ldrb r0, [r4]
	subs r0, #0x38
_0803539A:
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r0, [r1]
	muls r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #0x10
	b _080353C8
	.align 2, 0
_080353AC: .4byte gUnk_08351458
_080353B0: .4byte gUnk_0203AD30
_080353B4:
	movs r5, #0
	ldrsh r2, [r1, r5]
	ldr r1, _080353FC @ =gUnk_083513E8
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r2, #0
	muls r1, r0, r1
	lsls r1, r1, #0x10
_080353C8:
	asrs r2, r1, #0x18
	strb r2, [r6, #0xa]
	movs r0, #0xff
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080353DA
	adds r0, r2, #1
_080353D8:
	strb r0, [r6, #0xa]
_080353DA:
	ldr r2, [r6, #0x1c]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _08035428
	adds r0, r4, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _08035400
	movs r0, #0
	strb r0, [r6, #0xa]
	b _08035418
	.align 2, 0
_080353FC: .4byte gUnk_083513E8
_08035400:
	mov r0, sp
	movs r4, #0
	strh r4, [r0]
	ldr r1, _08035420 @ =0x060077A0
	ldr r2, _08035424 @ =0x01000080
	bl CpuSet
	strb r4, [r6, #9]
	strb r4, [r6, #0xa]
	movs r0, #0
	bl sub_08034FA8
_08035418:
	movs r0, #0
	str r0, [r6, #0x1c]
	b _0803556A
	.align 2, 0
_08035420: .4byte 0x060077A0
_08035424: .4byte 0x01000080
_08035428:
	ldr r1, _0803546C @ =gKirbys
	ldr r2, _08035470 @ =gUnk_0203AD3C
	ldrb r5, [r2]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r5, r0
	adds r3, r0, r1
	adds r0, r3, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r7, r2, #0
	ldrh r1, [r1]
	cmp r0, r1
	bne _08035464
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08035464
	ldr r0, _08035474 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08035478
_08035464:
	mov r0, sp
	adds r0, #2
	b _08035550
	.align 2, 0
_0803546C: .4byte gKirbys
_08035470: .4byte gUnk_0203AD3C
_08035474: .4byte gUnk_0203AD10
_08035478:
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	subs r0, #0x38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1a
	bhi _080354E8
	ldr r2, _080354D4 @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r1, r5, #0
	muls r1, r0, r1
	adds r0, r2, #0
	adds r0, #0xc
	adds r1, r1, r0
	ldr r0, [r4, #0x40]
	ldr r5, _080354D8 @ =0xFFFF8800
	adds r3, r0, r5
	ldr r0, [r1]
	subs r1, r0, r3
	cmp r1, #0
	bge _080354A8
	subs r1, r3, r0
_080354A8:
	movs r0, #0xf0
	lsls r0, r0, #8
	cmp r1, r0
	bgt _0803554E
	ldrb r1, [r7]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	adds r0, r2, #0
	adds r0, #0x10
	adds r1, r1, r0
	ldr r0, [r4, #0x44]
	ldr r2, _080354DC @ =0xFFFFB000
	adds r3, r0, r2
	ldr r0, [r1]
	subs r1, r0, r3
	cmp r1, #0
	blt _080354E0
	movs r0, #0xc8
	lsls r0, r0, #8
	b _08035530
	.align 2, 0
_080354D4: .4byte gCurLevelInfo
_080354D8: .4byte 0xFFFF8800
_080354DC: .4byte 0xFFFFB000
_080354E0:
	subs r1, r3, r0
	movs r0, #0xc8
	lsls r0, r0, #8
	b _0803554A
_080354E8:
	ldr r2, _08035538 @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r1, r5, #0
	muls r1, r0, r1
	adds r0, r2, #0
	adds r0, #0xc
	adds r1, r1, r0
	ldr r0, [r4, #0x40]
	ldr r5, _0803553C @ =0xFFFF8800
	adds r3, r0, r5
	ldr r0, [r1]
	subs r1, r0, r3
	cmp r1, #0
	bge _08035508
	subs r1, r3, r0
_08035508:
	movs r0, #0xa8
	lsls r0, r0, #8
	cmp r1, r0
	bgt _0803554E
	ldrb r1, [r7]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	adds r0, r2, #0
	adds r0, #0x10
	adds r1, r1, r0
	ldr r0, [r4, #0x44]
	ldr r2, _08035540 @ =0xFFFFB000
	adds r3, r0, r2
	ldr r0, [r1]
	subs r1, r0, r3
	cmp r1, #0
	blt _08035544
	movs r0, #0x80
	lsls r0, r0, #8
_08035530:
	cmp r1, r0
	bgt _0803554E
	b _0803556A
	.align 2, 0
_08035538: .4byte gCurLevelInfo
_0803553C: .4byte 0xFFFF8800
_08035540: .4byte 0xFFFFB000
_08035544:
	subs r1, r3, r0
	movs r0, #0x80
	lsls r0, r0, #8
_0803554A:
	cmp r1, r0
	ble _0803556A
_0803554E:
	add r0, sp, #4
_08035550:
	movs r4, #0
	strh r4, [r0]
	ldr r1, _08035574 @ =0x060077A0
	ldr r2, _08035578 @ =0x01000080
	bl CpuSet
	movs r5, #0
	strb r4, [r6, #9]
	strb r4, [r6, #0xa]
	movs r0, #0
	bl sub_08034FA8
	str r5, [r6, #0x1c]
_0803556A:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035574: .4byte 0x060077A0
_08035578: .4byte 0x01000080

	thumb_func_start sub_0803557C
sub_0803557C: @ 0x0803557C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrb r2, [r5, #0xf]
	cmp r2, #0
	beq _080355C2
	ldr r0, _080355E8 @ =gUnk_03000510
	ldrb r6, [r0, #4]
	ldr r1, _080355EC @ =gUnk_0203AD3C
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r6, r0
	cmp r6, #0
	bne _080355C2
	adds r0, r2, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x30
	bls _080355C2
	mov r0, sp
	movs r4, #0
	strh r6, [r0]
	ldr r1, _080355F0 @ =0x060077A0
	ldr r2, _080355F4 @ =0x01000080
	bl CpuSet
	strb r4, [r5, #0xf]
	movs r0, #0
	bl sub_08034FA8
	str r6, [r5, #0x1c]
_080355C2:
	ldrb r2, [r5, #9]
	movs r1, #9
	ldrsb r1, [r5, r1]
	movs r0, #0xa
	ldrsb r0, [r5, r0]
	cmp r1, r0
	beq _08035686
	cmp r1, r0
	ble _0803560E
	adds r0, r1, #0
	movs r1, #0xa
	ldrsb r1, [r5, r1]
	subs r0, r0, r1
	asrs r0, r0, #3
	cmp r0, #0
	beq _080355F8
	subs r0, r2, r0
	b _080355FA
	.align 2, 0
_080355E8: .4byte gUnk_03000510
_080355EC: .4byte gUnk_0203AD3C
_080355F0: .4byte 0x060077A0
_080355F4: .4byte 0x01000080
_080355F8:
	subs r0, r2, #1
_080355FA:
	strb r0, [r5, #9]
	movs r0, #9
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bgt _08035680
	movs r0, #0
	strb r0, [r5, #9]
	movs r0, #1
	strb r0, [r5, #0xf]
	b _08035680
_0803560E:
	cmp r1, r0
	bge _08035680
	ldr r0, _08035690 @ =gUnk_0203AD40
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08035680
	adds r0, r2, #1
	strb r0, [r5, #9]
	ldr r1, _08035694 @ =gKirbys
	ldr r0, _08035698 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #0
	bne _08035640
	adds r0, r1, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08035680
_08035640:
	ldr r1, _0803569C @ =gUnk_08D60FA4
	ldr r4, _080356A0 @ =gSongTable
	ldr r2, _080356A4 @ =0x00000FB4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08035666
	movs r1, #0xfb
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08035680
_08035666:
	cmp r3, #0
	beq _08035678
	ldr r0, _080356A8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08035680
_08035678:
	movs r0, #0xfb
	lsls r0, r0, #1
	bl m4aSongNumStart
_08035680:
	adds r0, r5, #0
	bl sub_08034FA8
_08035686:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08035690: .4byte gUnk_0203AD40
_08035694: .4byte gKirbys
_08035698: .4byte gUnk_0203AD3C
_0803569C: .4byte gUnk_08D60FA4
_080356A0: .4byte gSongTable
_080356A4: .4byte 0x00000FB4
_080356A8: .4byte gUnk_0203AD10

	thumb_func_start sub_080356AC
sub_080356AC: @ 0x080356AC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r2, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08035714 @ =gUnk_08D60B64
	lsls r5, r4, #2
	adds r0, r5, r0
	ldr r0, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x18
	movs r2, #0x10
	bl sub_0803D21C
	ldr r2, _08035718 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	cmp r4, #0x1b
	bls _0803572C
	ldr r4, _0803571C @ =gUnk_03002EC0
	ldr r3, _08035720 @ =gUnk_030039A4
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r4
	ldr r2, _08035724 @ =gUnk_08D60BE4
	ldr r0, _08035728 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #7
	adds r0, r5, r0
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r4, #4
	adds r0, r0, r1
	str r6, [r0]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	movs r1, #0xa0
	lsls r1, r1, #1
	b _08035766
	.align 2, 0
_08035714: .4byte gUnk_08D60B64
_08035718: .4byte gUnk_03002440
_0803571C: .4byte gUnk_03002EC0
_08035720: .4byte gUnk_030039A4
_08035724: .4byte gUnk_08D60BE4
_08035728: .4byte gUnk_08D60A80
_0803572C:
	ldr r4, _08035778 @ =gUnk_03002EC0
	ldr r3, _0803577C @ =gUnk_030039A4
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r4
	ldr r2, _08035780 @ =gUnk_08D60BE4
	ldr r0, _08035784 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #7
	adds r0, r5, r0
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r4, #4
	adds r0, r0, r1
	str r6, [r0]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	movs r1, #0xf0
	lsls r1, r1, #2
_08035766:
	strh r1, [r0, #8]
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r3]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08035778: .4byte gUnk_03002EC0
_0803577C: .4byte gUnk_030039A4
_08035780: .4byte gUnk_08D60BE4
_08035784: .4byte gUnk_08D60A80

	thumb_func_start sub_08035788
sub_08035788: @ 0x08035788
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #4]
	ldr r2, _080357C4 @ =gKirbys
	ldr r0, _080357C8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0xdf
	ldrb r4, [r0]
	ldr r0, _080357CC @ =gUnk_03000010
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080357D0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080357D8
	.align 2, 0
_080357C4: .4byte gKirbys
_080357C8: .4byte gUnk_0203AD3C
_080357CC: .4byte gUnk_03000010
_080357D0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080357D8:
	mov sb, r0
	mov r1, sp
	movs r2, #0xc2
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08035850 @ =0x0600E000
	ldr r2, _08035854 @ =0x01000280
	mov r0, sp
	bl CpuSet
	ldr r0, _08035858 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08035880
	ldr r2, _0803585C @ =gKirbys
	ldr r0, _08035860 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0xdf
	ldrb r0, [r0]
	ldr r4, _08035864 @ =0x0600E198
	lsls r0, r0, #5
	ldr r1, _08035868 @ =gUnk_0834BB20
	adds r0, r0, r1
	movs r1, #0xf0
	movs r2, #0x10
	bl sub_0803D21C
	ldr r1, _0803586C @ =gUnk_08D60F8C
	ldr r0, _08035870 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08035874 @ =0x060070A0
	movs r2, #0x80
	lsls r2, r2, #3
	bl CpuSet
	movs r1, #0
	ldr r0, _08035878 @ =0x000001B5
	adds r3, r0, #0
	ldr r0, _0803587C @ =0xFFFFF000
	adds r2, r0, #0
_0803583C:
	adds r0, r1, r3
	orrs r0, r2
	strh r0, [r4]
	adds r4, #2
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #5
	bls _0803583C
	b _08035E0C
	.align 2, 0
_08035850: .4byte 0x0600E000
_08035854: .4byte 0x01000280
_08035858: .4byte gUnk_0203AD10
_0803585C: .4byte gKirbys
_08035860: .4byte gUnk_0203AD3C
_08035864: .4byte 0x0600E198
_08035868: .4byte gUnk_0834BB20
_0803586C: .4byte gUnk_08D60F8C
_08035870: .4byte gUnk_08D60A80
_08035874: .4byte 0x060070A0
_08035878: .4byte 0x000001B5
_0803587C: .4byte 0xFFFFF000
_08035880:
	lsls r0, r4, #5
	ldr r5, _080358E4 @ =gUnk_0834BB20
	adds r0, r0, r5
	movs r1, #0xf0
	movs r2, #0x10
	bl sub_0803D21C
	ldr r1, _080358E8 @ =gUnk_03000010
	mov r8, r1
	ldr r0, [r1]
	ldr r1, [r0, #8]
	ldr r0, _080358EC @ =sub_08035FA8
	cmp r1, r0
	bne _08035908
	ldr r4, _080358F0 @ =0x0600E18E
	ldr r1, _080358F4 @ =gUnk_08D60F8C
	ldr r0, _080358F8 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _080358FC @ =0x060070A0
	movs r2, #0x80
	lsls r2, r2, #3
	bl CpuSet
	movs r0, #0
	ldr r2, _08035900 @ =0x00000185
	adds r6, r2, #0
	ldr r3, _08035904 @ =0xFFFFF000
	adds r5, r3, #0
_080358BE:
	movs r1, #0
	adds r3, r0, #1
	lsls r2, r0, #4
_080358C4:
	adds r0, r1, r6
	adds r0, r2, r0
	orrs r0, r5
	strh r0, [r4]
	adds r4, #2
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xf
	bls _080358C4
	adds r4, #0x20
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _080358BE
	b _08035E0C
	.align 2, 0
_080358E4: .4byte gUnk_0834BB20
_080358E8: .4byte gUnk_03000010
_080358EC: .4byte sub_08035FA8
_080358F0: .4byte 0x0600E18E
_080358F4: .4byte gUnk_08D60F8C
_080358F8: .4byte gUnk_08D60A80
_080358FC: .4byte 0x060070A0
_08035900: .4byte 0x00000185
_08035904: .4byte 0xFFFFF000
_08035908:
	ldr r0, _08035960 @ =gKirbys
	mov sl, r0
	ldr r7, _08035964 @ =gUnk_0203AD3C
	ldrb r0, [r7]
	movs r6, #0xd4
	lsls r6, r6, #1
	muls r0, r6, r0
	add r0, sl
	adds r0, #0xdf
	ldrb r0, [r0]
	ldr r4, _08035968 @ =0x060070A0
	lsls r0, r0, #5
	adds r0, r0, r5
	movs r1, #0xf0
	movs r2, #0x10
	bl sub_0803D21C
	ldr r0, _0803596C @ =gUnk_082EC7A0
	adds r1, r4, #0
	movs r2, #0xe0
	lsls r2, r2, #2
	bl CpuSet
	ldr r4, _08035970 @ =0x060077A0
	ldr r1, _08035974 @ =gUnk_08D60EE4
	ldr r0, _08035978 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r4, #0
	movs r2, #0x80
	bl CpuSet
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r0, #8]
	ldr r0, _0803597C @ =sub_080340A8
	cmp r1, r0
	bne _08035980
	bl sub_08034A20
	b _08035E0C
	.align 2, 0
_08035960: .4byte gKirbys
_08035964: .4byte gUnk_0203AD3C
_08035968: .4byte 0x060070A0
_0803596C: .4byte gUnk_082EC7A0
_08035970: .4byte 0x060077A0
_08035974: .4byte gUnk_08D60EE4
_08035978: .4byte gUnk_08D60A80
_0803597C: .4byte sub_080340A8
_08035980:
	ldrb r0, [r7]
	muls r0, r6, r0
	mov r3, sl
	adds r2, r0, r3
	adds r1, r2, #0
	adds r1, #0xdb
	ldrb r0, [r1]
	cmp r0, #0
	beq _080359A4
	adds r2, r0, #0
	ldr r0, _080359A0 @ =0x060078A0
	movs r1, #0xe
	bl sub_080356AC
	b _080359B2
	.align 2, 0
_080359A0: .4byte 0x060078A0
_080359A4:
	ldr r1, _08035A9C @ =0x00000103
	adds r0, r2, r1
	ldrb r2, [r0]
	ldr r0, _08035AA0 @ =0x060078A0
	movs r1, #0xe
	bl sub_080356AC
_080359B2:
	ldr r1, _08035AA4 @ =0x0600E48E
	ldr r2, _08035AA8 @ =0x0000F18F
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r3, _08035AAC @ =0x0000F190
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #2
	adds r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #0x3c
	adds r3, #0xf
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08035AB0 @ =0x0000F59F
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	adds r3, #2
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _08035AB4 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	ldr r1, _08035AB8 @ =gKirbys
	adds r0, r0, r1
	movs r1, #0x81
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r7, [r0]
	cmp r7, #0x63
	bls _080359FE
	movs r7, #0x63
_080359FE:
	movs r3, #0
	ldr r2, _08035ABC @ =gUnk_0834BD60
	mov sl, r2
	ldr r0, _08035AC0 @ =0xFFFFF000
	mov r8, r0
_08035A08:
	adds r5, r3, #0
	adds r5, #0xa
	lsls r5, r5, #1
	ldr r1, _08035AC4 @ =0x0600E480
	adds r6, r5, r1
	adds r4, r3, #6
	lsls r4, r4, #2
	add r4, sl
	ldr r1, [r4]
	adds r0, r7, #0
	str r3, [sp, #8]
	bl __udivsi3
	lsls r1, r0, #0x10
	lsrs r2, r1, #0x10
	ldr r1, [r4]
	muls r0, r1, r0
	subs r0, r7, r0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r1, _08035AC8 @ =0x00000185
	adds r0, r2, r1
	mov r1, r8
	orrs r0, r1
	strh r0, [r6]
	ldr r0, _08035ACC @ =0x0600E4C0
	adds r6, r5, r0
	ldr r1, _08035AD0 @ =0x00000195
	adds r0, r2, r1
	mov r2, r8
	orrs r0, r2
	strh r0, [r6]
	ldr r3, [sp, #8]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #1
	bls _08035A08
	ldr r6, _08035AB4 @ =gUnk_0203AD3C
	ldrb r0, [r6]
	movs r5, #0xd4
	lsls r5, r5, #1
	muls r0, r5, r0
	ldr r4, _08035AB8 @ =gKirbys
	adds r0, r0, r4
	bl sub_0803518C
	mov r3, sb
	ldrb r0, [r3, #0x14]
	bl sub_08034C9C
	ldr r2, _08035AD4 @ =gRoomProps
	ldrb r0, [r6]
	muls r0, r5, r0
	adds r0, r0, r4
	adds r0, #0x60
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r1, [r0, #0x12]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08035AE4
	ldr r1, _08035AD8 @ =0x0600E002
	ldr r2, _08035ADC @ =0x0000F1B0
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #0x40
	ldr r3, _08035AE0 @ =0x0000F1B1
	adds r0, r3, #0
	b _08035AEE
	.align 2, 0
_08035A9C: .4byte 0x00000103
_08035AA0: .4byte 0x060078A0
_08035AA4: .4byte 0x0600E48E
_08035AA8: .4byte 0x0000F18F
_08035AAC: .4byte 0x0000F190
_08035AB0: .4byte 0x0000F59F
_08035AB4: .4byte gUnk_0203AD3C
_08035AB8: .4byte gKirbys
_08035ABC: .4byte gUnk_0834BD60
_08035AC0: .4byte 0xFFFFF000
_08035AC4: .4byte 0x0600E480
_08035AC8: .4byte 0x00000185
_08035ACC: .4byte 0x0600E4C0
_08035AD0: .4byte 0x00000195
_08035AD4: .4byte gRoomProps
_08035AD8: .4byte 0x0600E002
_08035ADC: .4byte 0x0000F1B0
_08035AE0: .4byte 0x0000F1B1
_08035AE4:
	ldr r1, _08035B5C @ =0x0600E002
	ldr r2, _08035B60 @ =0x0000F184
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #0x40
_08035AEE:
	strh r0, [r1]
	ldr r0, _08035B64 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	ldr r1, _08035B68 @ =gKirbys
	adds r0, r0, r1
	bl sub_08034D68
	ldr r0, _08035B6C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08035B2C
	ldr r2, _08035B70 @ =0x0600E4AA
	movs r1, #0
	ldr r3, _08035B74 @ =0x000001BD
	adds r4, r3, #0
	ldr r0, _08035B78 @ =0xFFFFF000
	adds r3, r0, #0
_08035B1A:
	adds r0, r1, r4
	orrs r0, r3
	strh r0, [r2]
	adds r2, #2
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #7
	bls _08035B1A
_08035B2C:
	mov r1, sb
	ldr r2, [r1, #0x1c]
	cmp r2, #0
	beq _08035B88
	ldr r1, _08035B7C @ =gUnk_08D60EE4
	ldr r0, _08035B80 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r1, r2, #0
	adds r1, #0x82
	ldrb r1, [r1]
	lsls r1, r1, #8
	ldr r0, [r0]
	adds r0, r0, r1
	ldr r1, _08035B84 @ =0x060077A0
	movs r2, #0x80
	bl CpuSet
	mov r0, sb
	bl sub_08034FA8
	b _08035B9C
	.align 2, 0
_08035B5C: .4byte 0x0600E002
_08035B60: .4byte 0x0000F184
_08035B64: .4byte gUnk_0203AD3C
_08035B68: .4byte gKirbys
_08035B6C: .4byte gUnk_0203AD10
_08035B70: .4byte 0x0600E4AA
_08035B74: .4byte 0x000001BD
_08035B78: .4byte 0xFFFFF000
_08035B7C: .4byte gUnk_08D60EE4
_08035B80: .4byte gUnk_08D60A80
_08035B84: .4byte 0x060077A0
_08035B88:
	mov r0, sp
	adds r0, #2
	strh r2, [r0]
	ldr r1, _08035BFC @ =0x060077A0
	ldr r2, _08035C00 @ =0x01000080
	bl CpuSet
	movs r0, #0
	bl sub_08034FA8
_08035B9C:
	ldr r2, _08035C04 @ =gUnk_02021580
	ldr r1, _08035C08 @ =gUnk_0203AD44
	ldrb r0, [r2]
	ldrb r1, [r1]
	cmp r0, r1
	blo _08035BAA
	b _08035E0C
_08035BAA:
	ldr r3, _08035C0C @ =gKirbys
	adds r1, r0, #0
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r2, r1, #0
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0xc
	adds r0, r2, r0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	ldr r5, [sp, #4]
	adds r5, #0x60
	cmp r0, #0
	bne _08035BDA
	adds r0, r2, r3
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r2, [r5]
	cmp r0, r2
	bne _08035BDA
	b _08035E0C
_08035BDA:
	ldr r2, _08035C10 @ =gRoomProps
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08035BF2
	b _08035E0C
_08035BF2:
	movs r6, #1
	movs r4, #1
	ldr r7, _08035C14 @ =gUnk_0835105C
	b _08035C1E
	.align 2, 0
_08035BFC: .4byte 0x060077A0
_08035C00: .4byte 0x01000080
_08035C04: .4byte gUnk_02021580
_08035C08: .4byte gUnk_0203AD44
_08035C0C: .4byte gKirbys
_08035C10: .4byte gRoomProps
_08035C14: .4byte gUnk_0835105C
_08035C18:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08035C1E:
	cmp r4, #8
	bhi _08035C40
	lsls r0, r4, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	ldrh r3, [r5]
	cmp r0, r3
	bne _08035C18
	movs r0, #1
	adds r1, r4, #0
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	beq _08035C18
	movs r6, #0
_08035C40:
	movs r4, #9
	b _08035C4A
_08035C44:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08035C4A:
	cmp r4, #0xd
	bhi _08035C72
	ldr r0, _08035CB8 @ =gUnk_0835105C
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	ldrh r1, [r5]
	cmp r0, r1
	bne _08035C44
	adds r1, r4, #3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	beq _08035C44
	movs r6, #0
_08035C72:
	cmp r6, #0
	bne _08035C78
	b _08035E0C
_08035C78:
	ldr r1, _08035CBC @ =gKirbys
	ldr r0, _08035CC0 @ =gUnk_02021580
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r1, r0
	cmp r1, #0
	beq _08035CA4
	ldr r2, [sp, #4]
	movs r3, #0x81
	lsls r3, r3, #1
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _08035CA4
	b _08035E02
_08035CA4:
	mov r2, sb
	ldrb r0, [r2, #0xe]
	cmp r0, #0x5f
	bhi _08035CCC
	cmp r1, #0
	beq _08035CC4
	movs r0, #1
	bl sub_08034924
	b _08035D18
	.align 2, 0
_08035CB8: .4byte gUnk_0835105C
_08035CBC: .4byte gKirbys
_08035CC0: .4byte gUnk_02021580
_08035CC4:
	movs r0, #1
	bl sub_08034828
	b _08035D18
_08035CCC:
	adds r0, #0x80
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x5f
	bhi _08035CEA
	cmp r1, #0
	beq _08035CE2
	movs r0, #2
	bl sub_08034924
	b _08035D18
_08035CE2:
	movs r0, #2
	bl sub_08034828
	b _08035D18
_08035CEA:
	cmp r1, #0
	beq _08035CF6
	movs r0, #0
	bl sub_08034924
	b _08035CFC
_08035CF6:
	movs r0, #0
	bl sub_08034828
_08035CFC:
	ldr r1, _08035D78 @ =0x0600E002
	ldr r3, _08035D7C @ =0x0000F1B0
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #0x40
	ldr r2, _08035D80 @ =0x0000F1B1
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, [sp, #4]
	bl sub_08034D68
	movs r0, #0
	mov r3, sb
	strb r0, [r3, #0xd]
_08035D18:
	mov r1, sb
	ldrb r0, [r1, #0xe]
	cmp r0, #0x5f
	bls _08035D2A
	adds r0, #0x80
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x5f
	bhi _08035DB4
_08035D2A:
	ldr r0, _08035D84 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x20
	mov r2, sb
	adds r4, r2, r0
	ldr r1, _08035D88 @ =gKirbys
	ldr r3, _08035D8C @ =gUnk_02021580
	ldrb r2, [r3]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4]
	ldrb r0, [r3]
	strb r0, [r4, #0x1f]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, _08035D90 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08035D94
	movs r0, #0x91
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _08035D9E
	.align 2, 0
_08035D78: .4byte 0x0600E002
_08035D7C: .4byte 0x0000F1B0
_08035D80: .4byte 0x0000F1B1
_08035D84: .4byte gUnk_0203AD3C
_08035D88: .4byte gKirbys
_08035D8C: .4byte gUnk_02021580
_08035D90: .4byte gUnk_0203AD20
_08035D94:
	movs r0, #0xf
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	ldr r1, _08035DB0 @ =0xFFFFF7FF
	ands r0, r1
_08035D9E:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_0815604C
	b _08035E02
	.align 2, 0
_08035DB0: .4byte 0xFFFFF7FF
_08035DB4:
	ldr r1, _08035DD8 @ =gKirbys
	ldr r0, _08035DDC @ =gUnk_02021580
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08035DE0
	movs r0, #0
	bl sub_08034924
	b _08035DE6
	.align 2, 0
_08035DD8: .4byte gKirbys
_08035DDC: .4byte gUnk_02021580
_08035DE0:
	movs r0, #0
	bl sub_08034828
_08035DE6:
	ldr r1, _08035E1C @ =0x0600E002
	ldr r2, _08035E20 @ =0x0000F1B0
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #0x40
	ldr r3, _08035E24 @ =0x0000F1B1
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, [sp, #4]
	bl sub_08034D68
	movs r0, #0
	mov r1, sb
	strb r0, [r1, #0xd]
_08035E02:
	mov r2, sb
	ldr r0, [r2, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x10]
_08035E0C:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035E1C: .4byte 0x0600E002
_08035E20: .4byte 0x0000F1B0
_08035E24: .4byte 0x0000F1B1

	thumb_func_start sub_08035E28
sub_08035E28: @ 0x08035E28
	push {lr}
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, _08035E3C @ =0x060078A0
	movs r1, #0xe
	bl sub_080356AC
	pop {r0}
	bx r0
	.align 2, 0
_08035E3C: .4byte 0x060078A0

	thumb_func_start sub_08035E40
sub_08035E40: @ 0x08035E40
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08035E60 @ =gUnk_03000010
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08035E64
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r3, r0, r1
	b _08035E6C
	.align 2, 0
_08035E60: .4byte gUnk_03000010
_08035E64:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
_08035E6C:
	ldr r0, _08035E94 @ =gUnk_0203AD10
	ldr r2, [r0]
	movs r0, #0x10
	ands r2, r0
	cmp r2, #0
	bne _08035E8E
	adds r0, r4, #0
	adds r0, #0x56
	ldr r1, _08035E98 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08035E8E
	strh r2, [r3, #4]
	movs r0, #2
	bl sub_08034C9C
_08035E8E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08035E94: .4byte gUnk_0203AD10
_08035E98: .4byte gUnk_0203AD3C

	thumb_func_start sub_08035E9C
sub_08035E9C: @ 0x08035E9C
	push {lr}
	adds r3, r0, #0
	ldr r0, _08035EBC @ =gUnk_03000010
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08035EC0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08035EC8
	.align 2, 0
_08035EBC: .4byte gUnk_03000010
_08035EC0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08035EC8:
	ldr r0, _08035EF0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08035EEC
	adds r0, r3, #0
	adds r0, #0x56
	ldr r1, _08035EF4 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08035EEC
	movs r0, #0x80
	strh r0, [r2, #4]
	movs r0, #6
	bl sub_08034C9C
_08035EEC:
	pop {r0}
	bx r0
	.align 2, 0
_08035EF0: .4byte gUnk_0203AD10
_08035EF4: .4byte gUnk_0203AD3C

	thumb_func_start sub_08035EF8
sub_08035EF8: @ 0x08035EF8
	push {lr}
	adds r3, r0, #0
	ldr r0, _08035F18 @ =gUnk_03000010
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08035F1C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08035F24
	.align 2, 0
_08035F18: .4byte gUnk_03000010
_08035F1C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08035F24:
	ldr r0, _08035F48 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08035F42
	adds r0, r3, #0
	adds r0, #0x56
	ldr r1, _08035F4C @ =gUnk_0203AD3C
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08035F42
	movs r0, #0xc
	strh r0, [r2, #4]
_08035F42:
	pop {r0}
	bx r0
	.align 2, 0
_08035F48: .4byte gUnk_0203AD10
_08035F4C: .4byte gUnk_0203AD3C

	thumb_func_start sub_08035F50
sub_08035F50: @ 0x08035F50
	push {lr}
	adds r3, r0, #0
	ldr r0, _08035F70 @ =gUnk_03000010
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08035F74
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08035F7C
	.align 2, 0
_08035F70: .4byte gUnk_03000010
_08035F74:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08035F7C:
	ldr r0, _08035FA0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08035F9A
	adds r0, r3, #0
	adds r0, #0x56
	ldr r1, _08035FA4 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08035F9A
	movs r0, #0x7c
	strh r0, [r2, #4]
_08035F9A:
	pop {r0}
	bx r0
	.align 2, 0
_08035FA0: .4byte gUnk_0203AD10
_08035FA4: .4byte gUnk_0203AD3C

	thumb_func_start sub_08035FA8
sub_08035FA8: @ 0x08035FA8
	push {lr}
	ldr r0, _08035FC4 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08035FC8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08035FD0
	.align 2, 0
_08035FC4: .4byte gCurTask
_08035FC8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08035FD0:
	bl sub_08034304
	pop {r0}
	bx r0

	thumb_func_start nullsub_30
nullsub_30: @ 0x08035FD8
	bx lr
	.align 2, 0

	thumb_func_start sub_08035FDC
sub_08035FDC: @ 0x08035FDC
	push {r4, lr}
	ldr r2, _0803602C @ =gKirbys
	ldr r0, _08036030 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0xdf
	ldrb r0, [r0]
	ldr r4, _08036034 @ =0x060070A0
	lsls r0, r0, #5
	ldr r1, _08036038 @ =gUnk_0834BB20
	adds r0, r0, r1
	movs r1, #0xf0
	movs r2, #0x10
	bl sub_0803D21C
	ldr r0, _0803603C @ =gUnk_082EC7A0
	movs r2, #0xe0
	lsls r2, r2, #2
	adds r1, r4, #0
	bl CpuSet
	movs r0, #0xe0
	lsls r0, r0, #3
	adds r4, r4, r0
	ldr r1, _08036040 @ =gUnk_08D60EE4
	ldr r0, _08036044 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r4, #0
	movs r2, #0x80
	bl CpuSet
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803602C: .4byte gKirbys
_08036030: .4byte gUnk_0203AD3C
_08036034: .4byte 0x060070A0
_08036038: .4byte gUnk_0834BB20
_0803603C: .4byte gUnk_082EC7A0
_08036040: .4byte gUnk_08D60EE4
_08036044: .4byte gUnk_08D60A80

	thumb_func_start sub_08036048
sub_08036048: @ 0x08036048
	ldr r0, _08036078 @ =0x0600E48E
	ldr r2, _0803607C @ =0x0000F18F
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #2
	adds r2, #1
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #2
	adds r2, #1
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #0x3c
	adds r2, #0xe
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #2
	ldr r2, _08036080 @ =0x0000F59F
	adds r1, r2, #0
	strh r1, [r0]
	ldr r2, _08036084 @ =0x0000F1A1
	adds r1, r2, #0
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_08036078: .4byte 0x0600E48E
_0803607C: .4byte 0x0000F18F
_08036080: .4byte 0x0000F59F
_08036084: .4byte 0x0000F1A1

	thumb_func_start sub_08036088
sub_08036088: @ 0x08036088
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	movs r1, #0x81
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r7, [r0]
	cmp r7, #0x63
	bls _0803609E
	movs r7, #0x63
_0803609E:
	movs r2, #0
	ldr r4, _08036100 @ =gUnk_0834BD60
	mov r8, r4
	ldr r0, _08036104 @ =0xFFFFF000
	adds r3, r0, #0
_080360A8:
	adds r5, r2, #0
	adds r5, #0xa
	lsls r5, r5, #1
	ldr r1, _08036108 @ =0x0600E480
	adds r6, r5, r1
	adds r0, r2, #6
	lsls r0, r0, #2
	add r0, r8
	ldr r4, [r0]
	adds r0, r7, #0
	adds r1, r4, #0
	str r2, [sp]
	str r3, [sp, #4]
	bl __udivsi3
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	muls r0, r4, r0
	subs r0, r7, r0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r4, _0803610C @ =0x00000185
	adds r0, r1, r4
	ldr r3, [sp, #4]
	orrs r0, r3
	strh r0, [r6]
	ldr r0, _08036110 @ =0x0600E4C0
	adds r6, r5, r0
	adds r4, #0x10
	adds r0, r1, r4
	orrs r0, r3
	strh r0, [r6]
	ldr r2, [sp]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #1
	bls _080360A8
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036100: .4byte gUnk_0834BD60
_08036104: .4byte 0xFFFFF000
_08036108: .4byte 0x0600E480
_0803610C: .4byte 0x00000185
_08036110: .4byte 0x0600E4C0

	thumb_func_start sub_08036114
sub_08036114: @ 0x08036114
	push {r4, lr}
	ldr r2, _08036170 @ =gKirbys
	ldr r0, _08036174 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0xdf
	ldrb r0, [r0]
	ldr r4, _08036178 @ =0x0600E198
	lsls r0, r0, #5
	ldr r1, _0803617C @ =gUnk_0834BB20
	adds r0, r0, r1
	movs r1, #0xf0
	movs r2, #0x10
	bl sub_0803D21C
	ldr r1, _08036180 @ =gUnk_08D60F8C
	ldr r0, _08036184 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08036188 @ =0x060070A0
	movs r2, #0x80
	lsls r2, r2, #3
	bl CpuSet
	movs r1, #0
	ldr r0, _0803618C @ =0x000001B5
	adds r3, r0, #0
	ldr r0, _08036190 @ =0xFFFFF000
	adds r2, r0, #0
_08036158:
	adds r0, r1, r3
	orrs r0, r2
	strh r0, [r4]
	adds r4, #2
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #5
	bls _08036158
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08036170: .4byte gKirbys
_08036174: .4byte gUnk_0203AD3C
_08036178: .4byte 0x0600E198
_0803617C: .4byte gUnk_0834BB20
_08036180: .4byte gUnk_08D60F8C
_08036184: .4byte gUnk_08D60A80
_08036188: .4byte 0x060070A0
_0803618C: .4byte 0x000001B5
_08036190: .4byte 0xFFFFF000

	thumb_func_start sub_08036194
sub_08036194: @ 0x08036194
	ldr r0, _080361A8 @ =0x0600E002
	ldr r2, _080361AC @ =0x0000F1B0
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #0x40
	adds r2, #1
	adds r1, r2, #0
	strh r1, [r0]
	bx lr
	.align 2, 0
_080361A8: .4byte 0x0600E002
_080361AC: .4byte 0x0000F1B0

	thumb_func_start sub_080361B0
sub_080361B0: @ 0x080361B0
	ldr r0, _080361C0 @ =0x0600E002
	ldr r2, _080361C4 @ =0x0000F184
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #0x40
	strh r1, [r0]
	bx lr
	.align 2, 0
_080361C0: .4byte 0x0600E002
_080361C4: .4byte 0x0000F184

	thumb_func_start sub_080361C8
sub_080361C8: @ 0x080361C8
	push {r4, lr}
	ldr r0, _080361FC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080361F4
	ldr r2, _08036200 @ =0x0600E4AA
	movs r1, #0
	ldr r0, _08036204 @ =0x000001BD
	adds r4, r0, #0
	ldr r0, _08036208 @ =0xFFFFF000
	adds r3, r0, #0
_080361E2:
	adds r0, r1, r4
	orrs r0, r3
	strh r0, [r2]
	adds r2, #2
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #7
	bls _080361E2
_080361F4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080361FC: .4byte gUnk_0203AD10
_08036200: .4byte 0x0600E4AA
_08036204: .4byte 0x000001BD
_08036208: .4byte 0xFFFFF000

	thumb_func_start sub_0803620C
sub_0803620C: @ 0x0803620C
	push {lr}
	sub sp, #4
	ldr r0, _08036244 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0803623C
	mov r1, sp
	movs r2, #0xc2
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08036248 @ =0x0600E000
	ldr r2, _0803624C @ =0x01000280
	mov r0, sp
	bl CpuSet
	bl sub_080363B4
	ldr r0, _08036250 @ =gUnk_03000010
	ldr r1, [r0]
	ldr r0, _08036254 @ =sub_08035FA8
	str r0, [r1, #8]
_0803623C:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08036244: .4byte gUnk_0203AD10
_08036248: .4byte 0x0600E000
_0803624C: .4byte 0x01000280
_08036250: .4byte gUnk_03000010
_08036254: .4byte sub_08035FA8

	thumb_func_start sub_08036258
sub_08036258: @ 0x08036258
	push {lr}
	sub sp, #4
	ldr r0, _08036290 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08036288
	mov r1, sp
	movs r2, #0xc2
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08036294 @ =0x0600E000
	ldr r2, _08036298 @ =0x01000280
	mov r0, sp
	bl CpuSet
	bl sub_08034A20
	ldr r0, _0803629C @ =gUnk_03000010
	ldr r1, [r0]
	ldr r0, _080362A0 @ =sub_080340A8
	str r0, [r1, #8]
_08036288:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08036290: .4byte gUnk_0203AD10
_08036294: .4byte 0x0600E000
_08036298: .4byte 0x01000280
_0803629C: .4byte gUnk_03000010
_080362A0: .4byte sub_080340A8

	thumb_func_start sub_080362A4
sub_080362A4: @ 0x080362A4
	push {r4, lr}
	sub sp, #4
	ldr r0, _080362F4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080362EC
	ldr r4, _080362F8 @ =gUnk_03000010
	ldr r0, [r4]
	ldr r1, [r0, #8]
	ldr r0, _080362FC @ =sub_080340A8
	cmp r1, r0
	bne _080362EC
	mov r1, sp
	movs r2, #0xc2
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08036300 @ =0x0600E000
	ldr r2, _08036304 @ =0x01000280
	mov r0, sp
	bl CpuSet
	ldr r1, [r4]
	ldr r0, _08036308 @ =sub_08033B9C
	str r0, [r1, #8]
	ldr r0, _0803630C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	ldr r1, _08036310 @ =gKirbys
	adds r0, r0, r1
	bl sub_08035788
_080362EC:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080362F4: .4byte gUnk_0203AD10
_080362F8: .4byte gUnk_03000010
_080362FC: .4byte sub_080340A8
_08036300: .4byte 0x0600E000
_08036304: .4byte 0x01000280
_08036308: .4byte sub_08033B9C
_0803630C: .4byte gUnk_0203AD3C
_08036310: .4byte gKirbys

	thumb_func_start sub_08036314
sub_08036314: @ 0x08036314
	push {lr}
	sub sp, #4
	ldr r0, _0803635C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08036356
	ldr r0, _08036360 @ =gUnk_03000010
	ldr r0, [r0]
	ldr r1, [r0, #8]
	ldr r0, _08036364 @ =sub_080340A8
	cmp r1, r0
	bne _08036356
	mov r1, sp
	movs r2, #0xc2
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08036368 @ =0x0600E000
	ldr r2, _0803636C @ =0x01000280
	mov r0, sp
	bl CpuSet
	ldr r0, _08036370 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	ldr r1, _08036374 @ =gKirbys
	adds r0, r0, r1
	bl sub_08034D68
_08036356:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0803635C: .4byte gUnk_0203AD10
_08036360: .4byte gUnk_03000010
_08036364: .4byte sub_080340A8
_08036368: .4byte 0x0600E000
_0803636C: .4byte 0x01000280
_08036370: .4byte gUnk_0203AD3C
_08036374: .4byte gKirbys

	thumb_func_start sub_08036378
sub_08036378: @ 0x08036378
	push {lr}
	ldr r0, _08036394 @ =gUnk_03000010
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08036398
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _080363A0
	.align 2, 0
_08036394: .4byte gUnk_03000010
_08036398:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_080363A0:
	cmp r1, #0
	beq _080363AE
	ldrb r0, [r1, #0xf]
	cmp r0, #0
	beq _080363AE
	movs r0, #0x31
	strb r0, [r1, #0xf]
_080363AE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080363B4
sub_080363B4: @ 0x080363B4
	push {r4, r5, r6, lr}
	ldr r4, _08036404 @ =0x0600E18E
	ldr r1, _08036408 @ =gUnk_08D60F8C
	ldr r0, _0803640C @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08036410 @ =0x060070A0
	movs r2, #0x80
	lsls r2, r2, #3
	bl CpuSet
	movs r0, #0
	ldr r1, _08036414 @ =0x00000185
	adds r6, r1, #0
	ldr r1, _08036418 @ =0xFFFFF000
	adds r5, r1, #0
_080363D8:
	movs r1, #0
	adds r3, r0, #1
	lsls r2, r0, #4
_080363DE:
	adds r0, r1, r6
	adds r0, r2, r0
	orrs r0, r5
	strh r0, [r4]
	adds r4, #2
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xf
	bls _080363DE
	adds r4, #0x20
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _080363D8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08036404: .4byte 0x0600E18E
_08036408: .4byte gUnk_08D60F8C
_0803640C: .4byte gUnk_08D60A80
_08036410: .4byte 0x060070A0
_08036414: .4byte 0x00000185
_08036418: .4byte 0xFFFFF000

	thumb_func_start sub_0803641C
sub_0803641C: @ 0x0803641C
	push {lr}
	sub sp, #4
	ldr r0, _08036458 @ =sub_08036470
	ldr r2, _0803645C @ =0x0000FFFD
	ldr r1, _08036460 @ =nullsub_119
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl TaskCreate
	ldr r0, _08036464 @ =gUnk_0203AD40
	movs r1, #0
	str r1, [r0]
	ldr r0, _08036468 @ =gUnk_02022EB0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	ldr r0, _0803646C @ =gUnk_02022F40
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08036458: .4byte sub_08036470
_0803645C: .4byte 0x0000FFFD
_08036460: .4byte nullsub_119
_08036464: .4byte gUnk_0203AD40
_08036468: .4byte gUnk_02022EB0
_0803646C: .4byte gUnk_02022F40

	thumb_func_start sub_08036470
sub_08036470: @ 0x08036470
	push {lr}
	bl sub_08037314
	bl sub_08038B34
	bl sub_0808838C
	ldr r1, _080364D0 @ =gUnk_02022EB0
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	strb r0, [r1, #4]
	strb r0, [r1, #5]
	strb r0, [r1, #6]
	strb r0, [r1, #7]
	ldr r1, _080364D4 @ =gUnk_02022F40
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	ldr r2, _080364D8 @ =gUnk_02022F50
	str r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r2, r3
	str r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r2, r3
	str r0, [r1]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r2, r3
	str r0, [r1]
	ldr r1, _080364DC @ =gUnk_02022EC0
	str r0, [r1]
	str r0, [r1, #0x20]
	str r0, [r1, #0x40]
	str r0, [r1, #0x60]
	ldr r1, _080364E0 @ =gUnk_0203AD40
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080364D0: .4byte gUnk_02022EB0
_080364D4: .4byte gUnk_02022F40
_080364D8: .4byte gUnk_02022F50
_080364DC: .4byte gUnk_02022EC0
_080364E0: .4byte gUnk_0203AD40

	thumb_func_start sub_080364E4
sub_080364E4: @ 0x080364E4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	ldr r6, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080365BA
	ldr r4, [r7, #0x70]
	cmp r4, r5
	beq _080365BA
	ldr r3, [r7, #0x68]
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _08036578
	ldr r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	bne _080365BA
	ldr r2, [r5, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	ldr r0, _08036570 @ =0x003FFFF8
	bics r0, r1
	ands r0, r3
	cmp r0, #0
	beq _080365BA
	movs r0, #7
	ands r3, r0
	ands r2, r0
	cmp r3, r2
	blo _080365BA
	movs r0, #0x80
	lsls r0, r0, #8
	ands r6, r0
	cmp r6, #0
	bne _080365BA
	cmp r4, #0
	beq _08036554
	ldrb r0, [r4]
	cmp r0, #1
	bne _08036554
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x32
	bne _08036554
	ldr r1, _08036574 @ =0x00000103
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080365BA
_08036554:
	str r4, [r5, #0x6c]
	cmp r4, #0
	bne _0803655C
	str r7, [r5, #0x6c]
_0803655C:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_0804E09C
	b _080365BA
	.align 2, 0
_08036570: .4byte 0x003FFFF8
_08036574: .4byte 0x00000103
_08036578:
	str r7, [r5, #0x6c]
	movs r4, #0x80
	lsls r4, r4, #0xb
	orrs r4, r6
	str r4, [r5, #8]
	ldr r2, [r5, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	ldr r0, _080365C4 @ =0x003FFFF8
	bics r0, r1
	ands r0, r3
	cmp r0, #0
	beq _080365BA
	movs r1, #7
	adds r0, r3, #0
	ands r0, r1
	ands r2, r1
	cmp r0, r2
	blo _080365BA
	movs r0, #0x80
	lsls r0, r0, #8
	ands r4, r0
	cmp r4, #0
	bne _080365BA
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r3, r0
	cmp r3, #0
	bne _080365BA
	adds r0, r5, #0
	bl sub_0804A728
_080365BA:
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080365C4: .4byte 0x003FFFF8

	thumb_func_start sub_080365C8
sub_080365C8: @ 0x080365C8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	adds r5, r1, #0
	ldrb r0, [r7]
	cmp r0, #2
	bne _08036600
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x46
	bne _080365F2
	adds r0, r7, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _080365F2
	b _0803698E
_080365F2:
	ldrb r0, [r7]
	cmp r0, #2
	bne _08036600
	ldr r0, [r7, #0x70]
	cmp r0, r5
	bne _08036600
	b _0803698E
_08036600:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	beq _08036626
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _0803661A
	b _0803698E
_0803661A:
	ldr r0, [r7, #0x68]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08036626
	b _0803698E
_08036626:
	ldr r0, [r7, #0x70]
	cmp r0, #0
	beq _08036646
	ldrb r0, [r0]
	cmp r0, #0
	bne _08036646
	adds r0, r7, #0
	adds r0, #0x56
	ldr r1, _080366B0 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08036646
	adds r0, r5, #0
	bl sub_08034E14
_08036646:
	ldr r1, [r7, #0x68]
	movs r0, #0x20
	ands r0, r1
	adds r6, r1, #0
	cmp r0, #0
	bne _08036654
	b _08036864
_08036654:
	adds r4, r5, #0
	ldr r2, [r7, #0x70]
	mov ip, r2
	cmp r2, #0
	bne _08036660
	b _0803698E
_08036660:
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #1
	bne _080366B4
	mov r0, ip
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #7
	beq _08036678
	cmp r0, #0xe
	beq _08036678
	b _0803698E
_08036678:
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r0, [r0]
	subs r0, #0x5e
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0803668A
	b _0803698E
_0803668A:
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	bne _080366A4
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r5, #8]
	mov r2, ip
	str r2, [r5, #0x6c]
_080366A4:
	adds r0, r5, #0
	bl sub_0809CFC4
	movs r0, #1
	b _08036990
	.align 2, 0
_080366B0: .4byte gUnk_0203AD3C
_080366B4:
	adds r0, r7, #0
	adds r0, #0x56
	ldr r1, _08036750 @ =gUnk_0203AD30
	ldrb r2, [r0]
	ldrb r3, [r1]
	mov r8, r0
	cmp r2, r3
	blo _080366F0
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r1, [r0]
	adds r0, r1, #0
	subs r0, #0x5e
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bhi _080366D8
	b _0803698E
_080366D8:
	adds r0, r1, #0
	cmp r0, #0xa4
	bne _080366E0
	b _0803698E
_080366E0:
	cmp r0, #0xa3
	bne _080366F0
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r3
	bhs _080366F0
	b _0803698E
_080366F0:
	ldr r1, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	mov sb, r1
	cmp r0, #0
	bne _08036766
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	cmp r0, #0
	bne _08036766
	movs r0, #0x80
	lsls r0, r0, #0xd
	mov r2, sb
	ands r0, r2
	cmp r0, #0
	bne _08036720
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r1, r0
	cmp r1, #0
	beq _08036758
_08036720:
	ldr r2, [r5, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	ldr r0, _08036754 @ =0x003FFFF8
	bics r0, r1
	ands r0, r6
	cmp r0, #0
	beq _08036766
	movs r1, #7
	adds r0, r6, #0
	ands r0, r1
	ands r2, r1
	cmp r0, r2
	blo _08036766
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r4, #8]
	mov r0, ip
	str r0, [r4, #0x6c]
	b _08036766
	.align 2, 0
_08036750: .4byte gUnk_0203AD30
_08036754: .4byte 0x003FFFF8
_08036758:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r4, #8]
	mov r1, ip
	str r1, [r4, #0x6c]
_08036766:
	ldr r0, _08036788 @ =0x20000023
	cmp r6, r0
	bne _0803678C
	adds r3, r4, #0
	adds r3, #0x90
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, r0, #1
	movs r1, #3
	lsls r1, r0
	ldrb r2, [r3]
	bics r2, r1
	mov r0, r8
	ldrb r1, [r0]
	lsls r1, r1, #1
	movs r0, #2
	b _080367A6
	.align 2, 0
_08036788: .4byte 0x20000023
_0803678C:
	adds r3, r4, #0
	adds r3, #0x90
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #1
	movs r1, #3
	lsls r1, r0
	ldrb r2, [r3]
	bics r2, r1
	mov r0, r8
	ldrb r1, [r0]
	lsls r1, r1, #1
	movs r0, #1
_080367A6:
	lsls r0, r1
	orrs r2, r0
	strb r2, [r3]
	ldr r1, [r5, #0x5c]
	movs r0, #0x20
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _080367D0
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0xd4
	bhi _080367C4
	b _0803698E
_080367C4:
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r6
	cmp r0, #0
	bne _080367DA
	b _0803698E
_080367D0:
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r6
	cmp r0, #0
	beq _080367F8
_080367DA:
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	subs r0, #0x5e
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bhi _080367F8
	ldr r0, _080367F4 @ =0xFFFBFFFF
	mov r1, sb
	ands r0, r1
	str r0, [r7, #8]
	b _0803698E
	.align 2, 0
_080367F4: .4byte 0xFFFBFFFF
_080367F8:
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r3
	ldr r0, _08036828 @ =0x003FFFF8
	bics r0, r1
	ands r0, r6
	cmp r0, #0
	beq _0803682C
	movs r0, #7
	ands r3, r0
	ands r0, r6
	cmp r0, r3
	blo _0803682C
	movs r0, #0x80
	lsls r0, r0, #0xb
	mov r2, sb
	orrs r0, r2
	str r0, [r7, #8]
	mov r0, ip
	str r0, [r4, #0x6c]
	adds r0, r4, #0
	bl sub_0809C380
	b _0803698E
	.align 2, 0
_08036828: .4byte 0x003FFFF8
_0803682C:
	ldr r0, _0803685C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r5, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08036846
	b _0803698E
_08036846:
	adds r2, r5, #0
	adds r2, #0x54
	ldr r0, _08036860 @ =gUnk_0203AD40
	ldr r1, [r0]
	movs r0, #2
	ands r1, r0
	lsls r1, r1, #1
	ldrb r0, [r2]
	adds r0, r0, r1
	strb r0, [r2]
	b _0803698E
	.align 2, 0
_0803685C: .4byte gUnk_03000510
_08036860: .4byte gUnk_0203AD40
_08036864:
	ldr r2, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	ldr r3, [r5, #0x5c]
	cmp r0, #0
	bne _080368BC
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	adds r4, r1, #0
	cmp r0, #0
	bne _080368BC
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r2, r0
	cmp r2, #0
	bne _08036894
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r4
	cmp r0, #0
	beq _080368B2
_08036894:
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r3
	ldr r0, _080368F4 @ =0x003FFFF8
	bics r0, r1
	ands r0, r6
	cmp r0, #0
	beq _0803690E
	movs r2, #7
	adds r1, r6, #0
	ands r1, r2
	adds r0, r3, #0
	ands r0, r2
	cmp r1, r0
	blo _080368BC
_080368B2:
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r0, r4
	str r0, [r5, #8]
	str r7, [r5, #0x6c]
_080368BC:
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r3
	ldr r0, _080368F4 @ =0x003FFFF8
	bics r0, r1
	ands r0, r6
	ldr r4, [r5, #8]
	cmp r0, #0
	beq _0803690E
	movs r1, #7
	adds r0, r6, #0
	ands r0, r1
	ands r3, r1
	cmp r0, r3
	blo _0803690E
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _0803690E
	ands r6, r1
	cmp r6, #0
	beq _080368F8
	adds r0, r5, #0
	bl sub_0809C6D0
	b _080368FE
	.align 2, 0
_080368F4: .4byte 0x003FFFF8
_080368F8:
	adds r0, r5, #0
	bl sub_0809B1E4
_080368FE:
	ldr r0, [r5, #0x68]
	movs r1, #0x80
	lsls r1, r1, #0x16
	ands r0, r1
	cmp r0, #0
	bne _0803698E
	movs r0, #1
	b _08036990
_0803690E:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r4
	cmp r0, #0
	beq _0803698E
	adds r4, r5, #0
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r6
	cmp r0, #0
	bne _0803698E
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	adds r0, r1, #0
	subs r0, #0x38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1a
	bls _08036960
	cmp r1, #0x6d
	bne _08036942
	movs r0, #0x80
	ands r0, r6
	cmp r0, #0
	bne _0803694A
_08036942:
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_0808845C
_0803694A:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0803697C
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_0808520C
	b _0803697C
_08036960:
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_0808845C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0803697C
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_0808520C
_0803697C:
	ldr r0, [r7, #0x68]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0803698E
	adds r0, r4, #0
	bl sub_080884C4
_0803698E:
	movs r0, #0
_08036990:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0803699C
sub_0803699C: @ 0x0803699C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r7, r1, #0
	ldrb r0, [r4]
	cmp r0, #1
	bne _080369C4
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x46
	bne _080369C4
	adds r0, r7, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _080369C4
	b _08036CB0
_080369C4:
	ldr r5, [r7, #0x70]
	cmp r5, r4
	bne _080369CC
	b _08036CB0
_080369CC:
	ldrb r0, [r4]
	cmp r0, #1
	bne _080369EC
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	beq _080369EC
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080369EC
	b _08036CB0
_080369EC:
	ldr r1, [r7, #0x68]
	movs r0, #0x20
	ands r0, r1
	adds r6, r1, #0
	cmp r0, #0
	bne _080369FA
	b _08036BB2
_080369FA:
	str r4, [r7, #0x6c]
	ldr r2, [r4, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	ldr r0, _08036A70 @ =0x003FFFF8
	bics r0, r1
	ands r0, r6
	cmp r0, #0
	bne _08036A10
	b _08036CB0
_08036A10:
	movs r0, #7
	ands r2, r0
	ands r0, r6
	cmp r0, r2
	bhs _08036A1C
	b _08036CB0
_08036A1C:
	ldr r0, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #8
	ands r0, r2
	cmp r0, #0
	beq _08036A2A
	b _08036CB0
_08036A2A:
	adds r3, r5, #0
	cmp r5, #0
	bne _08036A32
	b _08036CB0
_08036A32:
	ldr r0, [r5, #0xc]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0xc]
	ldrb r0, [r5]
	cmp r0, #1
	beq _08036A44
	b _08036CB0
_08036A44:
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x3c
	bne _08036A50
	b _08036B8E
_08036A50:
	cmp r0, #0x3c
	bgt _08036A8E
	cmp r0, #0x32
	beq _08036ABE
	cmp r0, #0x32
	bgt _08036A7A
	cmp r0, #0xe
	bne _08036A62
	b _08036BA2
_08036A62:
	cmp r0, #0xe
	bgt _08036A74
	cmp r0, #7
	bne _08036A6C
	b _08036BA2
_08036A6C:
	b _08036CB0
	.align 2, 0
_08036A70: .4byte 0x003FFFF8
_08036A74:
	cmp r0, #0xf
	beq _08036B26
	b _08036CB0
_08036A7A:
	cmp r0, #0x38
	beq _08036AE6
	cmp r0, #0x38
	bgt _08036A88
	cmp r0, #0x33
	beq _08036AD2
	b _08036CB0
_08036A88:
	cmp r0, #0x3a
	beq _08036B12
	b _08036CB0
_08036A8E:
	cmp r0, #0x4d
	beq _08036B76
	cmp r0, #0x4d
	bgt _08036AAA
	cmp r0, #0x47
	beq _08036B76
	cmp r0, #0x47
	bgt _08036AA4
	cmp r0, #0x3e
	beq _08036B62
	b _08036CB0
_08036AA4:
	cmp r0, #0x48
	beq _08036B3A
	b _08036CB0
_08036AAA:
	cmp r0, #0x9f
	beq _08036B4E
	cmp r0, #0x9f
	bgt _08036AB8
	cmp r0, #0x9e
	beq _08036AFA
	b _08036CB0
_08036AB8:
	cmp r0, #0xae
	beq _08036AFA
	b _08036CB0
_08036ABE:
	ldr r0, [r4, #8]
	ands r0, r2
	cmp r0, #0
	beq _08036AC8
	b _08036CB0
_08036AC8:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080A049C
	b _08036BAA
_08036AD2:
	ldr r0, [r4, #8]
	ands r0, r2
	cmp r0, #0
	beq _08036ADC
	b _08036CB0
_08036ADC:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080A1804
	b _08036BAA
_08036AE6:
	ldr r0, [r4, #8]
	ands r0, r2
	cmp r0, #0
	beq _08036AF0
	b _08036CB0
_08036AF0:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080CC6F0
	b _08036BAA
_08036AFA:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08036B08
	b _08036CB0
_08036B08:
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_080B6368
	b _08036BAA
_08036B12:
	ldr r0, [r4, #8]
	ands r0, r2
	cmp r0, #0
	beq _08036B1C
	b _08036CB0
_08036B1C:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080CE94C
	b _08036BAA
_08036B26:
	ldr r0, [r4, #8]
	ands r0, r2
	cmp r0, #0
	beq _08036B30
	b _08036CB0
_08036B30:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080B0758
	b _08036BAA
_08036B3A:
	ldr r0, [r4, #8]
	ands r0, r2
	cmp r0, #0
	beq _08036B44
	b _08036CB0
_08036B44:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080E588C
	b _08036BAA
_08036B4E:
	ldr r0, [r4, #8]
	ands r0, r2
	cmp r0, #0
	beq _08036B58
	b _08036CB0
_08036B58:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080E74E4
	b _08036BAA
_08036B62:
	ldr r0, [r4, #8]
	ands r0, r2
	cmp r0, #0
	beq _08036B6C
	b _08036CB0
_08036B6C:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080D4004
	b _08036BAA
_08036B76:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08036B84
	b _08036CB0
_08036B84:
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_080E1B8C
	b _08036BAA
_08036B8E:
	ldr r0, [r4, #8]
	ands r0, r2
	cmp r0, #0
	beq _08036B98
	b _08036CB0
_08036B98:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080C8548
	b _08036BAA
_08036BA2:
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_080AC5E0
_08036BAA:
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08036CA6
	b _08036CB0
_08036BB2:
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	mov ip, r1
	cmp r0, #0
	bne _08036C08
	ldr r2, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	bne _08036C08
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r1
	cmp r0, #0
	bne _08036BE0
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r2
	cmp r0, #0
	beq _08036BFE
_08036BE0:
	ldr r3, [r4, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r3
	ldr r0, _08036CAC @ =0x003FFFF8
	bics r0, r1
	ands r0, r6
	cmp r0, #0
	beq _08036C08
	movs r1, #7
	adds r0, r6, #0
	ands r0, r1
	ands r3, r1
	cmp r0, r3
	blo _08036C08
_08036BFE:
	movs r0, #0x80
	lsls r0, r0, #0x13
	orrs r2, r0
	str r2, [r7, #8]
	str r4, [r7, #0x6c]
_08036C08:
	adds r3, r6, #0
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r3
	cmp r0, #0
	beq _08036C70
	movs r0, #0x80
	lsls r0, r0, #0xf
	mov r8, r0
	mov r0, ip
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	bne _08036C70
	movs r0, #0x80
	lsls r0, r0, #9
	mov r1, ip
	ands r0, r1
	cmp r0, #0
	bne _08036C70
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r1
	cmp r0, #0
	beq _08036C56
	ldr r2, [r4, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	ldr r0, _08036CAC @ =0x003FFFF8
	bics r0, r1
	ands r0, r3
	cmp r0, #0
	beq _08036CB0
	movs r0, #7
	ands r3, r0
	ands r2, r0
	cmp r3, r2
	blo _08036C70
_08036C56:
	mov r0, r8
	ands r6, r0
	cmp r6, #0
	beq _08036C68
	ldr r0, [r4, #0x5c]
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	bne _08036C70
_08036C68:
	adds r0, r5, #0
	movs r1, #4
	bl sub_080853C8
_08036C70:
	ldr r2, [r4, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	ldr r0, _08036CAC @ =0x003FFFF8
	bics r0, r1
	ldr r3, [r7, #0x68]
	ands r0, r3
	cmp r0, #0
	beq _08036CB0
	movs r1, #7
	adds r0, r3, #0
	ands r0, r1
	ands r2, r1
	cmp r0, r2
	blo _08036CB0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _08036CB0
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r3, r0
	cmp r3, #0
	bne _08036CB0
_08036CA6:
	movs r0, #1
	b _08036CB2
	.align 2, 0
_08036CAC: .4byte 0x003FFFF8
_08036CB0:
	movs r0, #0
_08036CB2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08036CBC
sub_08036CBC: @ 0x08036CBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r6, r0, #0
	ldr r0, [r6, #0x68]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08036CD6
	b _08036EAA
_08036CD6:
	movs r0, #1
	str r0, [sp, #0x1c]
	ldr r1, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	adds r4, r1, #0
	cmp r0, #0
	beq _08036CEA
	b _080372E8
_08036CEA:
	ldr r3, _08036D54 @ =gCurLevelInfo
	adds r2, r6, #0
	adds r2, #0x56
	ldrb r1, [r2]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x50
	adds r0, r1, r0
	ldr r0, [r0]
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	adds r0, r3, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r0, [r0]
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	adds r0, r3, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	adds r0, r3, #0
	adds r0, #0x4c
	adds r1, r1, r0
	ldr r0, [r1]
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18]
	adds r0, r4, #0
	ldr r1, [sp, #0x1c]
	ands r0, r1
	str r2, [sp, #0x28]
	cmp r0, #0
	beq _08036D58
	mov r1, sp
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	rsbs r0, r0, #0
	strb r0, [r1, #2]
	adds r0, r6, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	rsbs r0, r0, #0
	strb r0, [r1]
	b _08036D6A
	.align 2, 0
_08036D54: .4byte gCurLevelInfo
_08036D58:
	mov r1, sp
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	strb r0, [r1, #2]
_08036D6A:
	mov r1, sp
	adds r0, r6, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	strb r0, [r1, #1]
	adds r0, r6, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	strb r0, [r1, #3]
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08036D88
	movs r2, #0xff
	str r2, [sp, #0x1c]
_08036D88:
	ldr r0, [r6, #0x40]
	asrs r1, r0, #8
	movs r0, #0xf
	ands r1, r0
	mov r0, sp
	movs r3, #2
	ldrsb r3, [r0, r3]
	movs r2, #0
	ldrsb r2, [r0, r2]
	subs r0, r3, r2
	cmp r0, #0
	bge _08036DA2
	subs r0, r2, r3
_08036DA2:
	adds r0, r0, r1
	asrs r0, r0, #4
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r2, [r6, #0x44]
	asrs r1, r2, #8
	mov r0, sp
	movs r3, #1
	ldrsb r3, [r0, r3]
	adds r1, r1, r3
	movs r0, #0xf
	ands r1, r0
	mov r0, sp
	movs r4, #3
	ldrsb r4, [r0, r4]
	subs r0, r4, r3
	cmp r0, #0
	bge _08036DCC
	subs r0, r3, r4
_08036DCC:
	adds r0, r0, r1
	asrs r0, r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	lsls r0, r2, #4
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r3, #0
	str r3, [sp, #4]
	cmp r3, sl
	bls _08036DE6
	b _080372E8
_08036DE6:
	ldr r4, [sp, #0x14]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp sb, r0
	bgt _08036E9A
	ldr r1, [sp, #0x18]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp sb, r0
	blt _08036E9A
	ldr r0, [r6, #0x40]
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r7, [sp, #8]
	cmp r7, #0
	beq _08036E72
	subs r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r2, [sp, #0xc]
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	adds r3, r0, #0
	cmp r8, r1
	bgt _08036E72
	ldr r4, [sp, #0x10]
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	adds r5, r0, #0
	cmp r8, r1
	blt _08036E72
	ldr r1, [sp, #0x1c]
	lsls r0, r1, #0x18
	asrs r4, r0, #0x18
_08036E2C:
	ldr r2, [sp, #0x28]
	ldrb r0, [r2]
	mov r1, r8
	mov r2, sb
	str r3, [sp, #0x2c]
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	ldr r1, _08036E84 @ =gUnk_082D88B8
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08036E88 @ =0x00F01000
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #5
	ldr r3, [sp, #0x2c]
	cmp r1, r0
	beq _08036F38
	mov r2, r8
	adds r0, r2, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r7, #0
	beq _08036E72
	subs r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	asrs r0, r3, #0x10
	cmp r8, r0
	bgt _08036E72
	asrs r0, r5, #0x10
	cmp r8, r0
	bge _08036E2C
_08036E72:
	movs r0, #1
	ldr r3, [sp, #4]
	ands r0, r3
	cmp r0, #0
	beq _08036E8C
	mov r0, sb
	adds r0, #1
	adds r0, r0, r3
	b _08036E94
	.align 2, 0
_08036E84: .4byte gUnk_082D88B8
_08036E88: .4byte 0x00F01000
_08036E8C:
	mov r0, sb
	subs r0, #1
	ldr r4, [sp, #4]
	subs r0, r0, r4
_08036E94:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
_08036E9A:
	ldr r0, [sp, #4]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	cmp r0, sl
	bls _08036DE6
	b _080372E8
_08036EAA:
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08036ECC
	mov r1, sp
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	rsbs r0, r0, #0
	strb r0, [r1, #2]
	adds r0, r6, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	rsbs r0, r0, #0
	strb r0, [r1]
	b _08036EDE
_08036ECC:
	mov r1, sp
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	strb r0, [r1, #2]
_08036EDE:
	mov r1, sp
	adds r0, r6, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	strb r0, [r1, #1]
	adds r0, r6, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	strb r0, [r1, #3]
	ldr r2, [r6, #0x40]
	asrs r1, r2, #8
	mov r0, sp
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r1, r1, r3
	movs r0, #0xf
	ands r1, r0
	mov r0, sp
	movs r4, #2
	ldrsb r4, [r0, r4]
	subs r0, r4, r3
	adds r5, r2, #0
	cmp r0, #0
	bge _08036F10
	subs r0, r3, r4
_08036F10:
	adds r0, r0, r1
	asrs r0, r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r2, [r6, #0x44]
	asrs r1, r2, #8
	mov r0, sp
	movs r3, #1
	ldrsb r3, [r0, r3]
	adds r1, r1, r3
	movs r0, #0xf
	ands r1, r0
	mov r0, sp
	movs r4, #3
	ldrsb r4, [r0, r4]
	subs r0, r4, r3
	cmp r0, #0
	blt _08036F78
	b _08036F7A
_08036F38:
	ldr r0, [sp, #0x28]
	ldrb r4, [r0]
	mov r2, r8
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	mov r3, sb
	lsls r2, r3, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	ldr r0, [r6, #0x70]
	mov r4, r8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	mov r3, sb
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	bl sub_08088F84
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r6, #8]
	b _080372E8
_08036F78:
	subs r0, r3, r4
_08036F7A:
	adds r0, r0, r1
	asrs r0, r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	asrs r0, r5, #8
	mov r1, sp
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x10
	mov r8, r0
	asrs r0, r2, #8
	mov r1, sp
	ldrb r1, [r1, #1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r4, _08037118 @ =gCurLevelInfo
	adds r2, r6, #0
	adds r2, #0x56
	ldrb r1, [r2]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r1, #0
	muls r3, r0, r3
	adds r0, r4, #0
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	ldr r1, [sp, #8]
	add r1, r8
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	movs r5, #0x80
	lsls r5, r5, #8
	ands r0, r5
	str r2, [sp, #0x28]
	cmp r0, #0
	beq _08036FF0
	ldr r2, [sp, #8]
	adds r0, r2, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r0, #0x80
	ldr r1, [sp, #8]
	ands r0, r1
	cmp r0, #0
	beq _08036FF0
	b _080372E8
_08036FF0:
	adds r0, r4, #0
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	mov r2, r8
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	beq _08037028
	ldr r0, [sp, #8]
	cmn r0, r2
	bge _08037014
	b _080372E8
_08037014:
	mov r2, r8
	subs r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r2, [sp, #8]
	adds r0, r2, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
_08037028:
	adds r0, r4, #0
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	mov r1, sb
	add r1, sl
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ands r0, r5
	cmp r0, #0
	beq _0803705A
	mov r2, sl
	adds r0, r2, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	movs r0, #0x80
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _0803705A
	b _080372E8
_0803705A:
	adds r0, r4, #0
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	mov r2, sb
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	beq _08037090
	mov r3, sl
	cmn r3, r2
	bge _0803707E
	b _080372E8
_0803707E:
	mov r4, sb
	subs r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	adds r0, r3, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
_08037090:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	cmp r0, #0
	bne _080370A0
	b _080372E8
_080370A0:
	ldr r0, [sp, #4]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0
	bne _080370B8
	b _080372E0
_080370B8:
	ldr r0, [sp, #4]
	add r0, sb
	mov sl, r0
	lsls r0, r0, #0x10
	str r0, [sp, #0x20]
	mov r1, sl
	lsls r1, r1, #0xc
	str r1, [sp, #0x24]
_080370C8:
	subs r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r4, _0803711C @ =gUnk_082D88B8
	ldr r2, [sp, #0x28]
	ldrb r0, [r2]
	mov r3, r8
	adds r1, r3, r7
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [sp, #0x20]
	lsrs r2, r3, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r2, [r0]
	adds r0, r2, #0
	movs r4, #0x80
	lsls r4, r4, #5
	ands r0, r4
	cmp r0, #0
	bne _080370FA
	b _080372DA
_080370FA:
	movs r1, #0xf0
	lsls r1, r1, #0x10
	ands r1, r2
	movs r0, #0xc0
	lsls r0, r0, #0xe
	cmp r1, r0
	beq _08037132
	cmp r1, r0
	bhi _08037120
	movs r0, #0x80
	lsls r0, r0, #0xe
	cmp r1, r0
	beq _0803712A
	b _08037148
	.align 2, 0
_08037118: .4byte gCurLevelInfo
_0803711C: .4byte gUnk_082D88B8
_08037120:
	movs r0, #0x80
	lsls r0, r0, #0xf
	cmp r1, r0
	beq _0803713A
	b _08037148
_0803712A:
	ldr r0, [r6, #0x68]
	movs r1, #0x80
	lsls r1, r1, #5
	b _08037140
_08037132:
	ldr r0, [r6, #0x68]
	movs r1, #0x80
	lsls r1, r1, #7
	b _08037140
_0803713A:
	ldr r0, [r6, #0x68]
	movs r1, #0x80
	lsls r1, r1, #4
_08037140:
	ands r0, r1
	cmp r0, #0
	bne _08037148
	b _080372DA
_08037148:
	movs r0, #0x20
	ands r2, r0
	cmp r2, #0
	beq _0803720C
	ldr r2, [sp, #0x28]
	ldrb r5, [r2]
	mov r3, r8
	adds r4, r7, r3
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	mov r0, sl
	lsls r2, r0, #0x18
	adds r0, r5, #0
	lsrs r2, r2, #0x18
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	ldr r3, [sp, #0x20]
	asrs r2, r3, #0x10
	bl sub_0800E0E4
	ldr r1, _080371F4 @ =gKirbys
	ldr r0, _080371F8 @ =gUnk_0203AD3C
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
	beq _080371A2
	b _080372D0
_080371A2:
	ldrb r0, [r6]
	cmp r0, #0
	bne _080371B2
	ldr r4, [sp, #0x28]
	ldrb r0, [r4]
	cmp r0, r2
	beq _080371B2
	b _080372D0
_080371B2:
	ldr r1, _080371FC @ =gSongTable
	ldr r2, _08037200 @ =0x00000FF4
	adds r0, r1, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	ldr r4, _08037204 @ =gUnk_08D60FA4
	adds r0, r0, r4
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080371D8
	movs r4, #0xff
	lsls r4, r4, #4
	adds r0, r1, r4
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080372D0
_080371D8:
	cmp r3, #0
	beq _080371EA
	ldr r0, _08037208 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080372D0
_080371EA:
	movs r0, #0xff
	lsls r0, r0, #1
	bl m4aSongNumStart
	b _080372D0
	.align 2, 0
_080371F4: .4byte gKirbys
_080371F8: .4byte gUnk_0203AD3C
_080371FC: .4byte gSongTable
_08037200: .4byte 0x00000FF4
_08037204: .4byte gUnk_08D60FA4
_08037208: .4byte gUnk_0203AD10
_0803720C:
	ldr r0, [sp, #0x28]
	ldrb r5, [r0]
	mov r1, r8
	adds r4, r7, r1
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	mov r3, sl
	lsls r2, r3, #0x18
	adds r0, r5, #0
	lsrs r2, r2, #0x18
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	adds r0, r6, #0
	movs r1, #0
	ldr r2, _080372F8 @ =0x0000028D
	movs r3, #0
	bl sub_0808AE30
	lsls r4, r4, #0xc
	movs r1, #0x80
	lsls r1, r1, #4
	adds r4, r4, r1
	str r4, [r0, #0x34]
	ldr r4, [sp, #0x24]
	adds r1, r4, r1
	str r1, [r0, #0x38]
	ldr r1, _080372FC @ =gKirbys
	ldr r0, _08037300 @ =gUnk_0203AD3C
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
	bne _080372B6
	ldrb r0, [r6]
	cmp r0, #0
	bne _08037276
	ldr r1, [sp, #0x28]
	ldrb r0, [r1]
	cmp r0, r2
	bne _080372B6
_08037276:
	ldr r1, _08037304 @ =gSongTable
	ldr r2, _08037308 @ =0x00000FF4
	adds r0, r1, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	ldr r4, _0803730C @ =gUnk_08D60FA4
	adds r0, r0, r4
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0803729C
	movs r4, #0xff
	lsls r4, r4, #4
	adds r0, r1, r4
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080372B6
_0803729C:
	cmp r3, #0
	beq _080372AE
	ldr r0, _08037310 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080372B6
_080372AE:
	movs r0, #0xff
	lsls r0, r0, #1
	bl m4aSongNumStart
_080372B6:
	ldr r0, [r6, #0x68]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	beq _080372D0
	ldr r0, [r6, #0x70]
	bl sub_08085328
	movs r0, #2
	adds r1, r6, #0
	bl sub_0806FE64
_080372D0:
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r6, #8]
_080372DA:
	cmp r7, #0
	beq _080372E0
	b _080370C8
_080372E0:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _080372E8
	b _080370A0
_080372E8:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080372F8: .4byte 0x0000028D
_080372FC: .4byte gKirbys
_08037300: .4byte gUnk_0203AD3C
_08037304: .4byte gSongTable
_08037308: .4byte 0x00000FF4
_0803730C: .4byte gUnk_08D60FA4
_08037310: .4byte gUnk_0203AD10

	thumb_func_start sub_08037314
sub_08037314: @ 0x08037314
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	movs r2, #0
	bl sub_08037FF0
_08037326:
	lsls r1, r2, #5
	ldr r0, _0803735C @ =gUnk_02022EC0
	adds r7, r1, r0
	ldr r0, _08037360 @ =gUnk_02022F40
	adds r0, r2, r0
	ldrb r3, [r0]
	lsls r0, r2, #6
	str r0, [sp, #0x10]
	lsls r1, r2, #8
	str r1, [sp, #0x14]
	lsls r0, r2, #1
	str r0, [sp, #0xc]
	adds r2, #1
	str r2, [sp, #4]
	cmp r3, #0
	beq _0803740C
_08037346:
	adds r1, r7, #0
	ldm r1!, {r0}
	str r1, [sp, #8]
	subs r3, #1
	str r3, [sp]
	cmp r0, #0
	beq _08037400
	movs r2, #0
	mov sl, r2
	b _080373A0
	.align 2, 0
_0803735C: .4byte gUnk_02022EC0
_08037360: .4byte gUnk_02022F40
_08037364:
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r1, sl
	muls r1, r0, r1
	ldr r0, _08037464 @ =gKirbys
	adds r4, r1, r0
	ldr r2, [r7]
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08037396
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r1, r0
	cmp r1, #0
	bne _08037396
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_08038010
_08037396:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
_080373A0:
	ldr r0, _08037468 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp sl, r0
	blo _08037364
	ldr r0, _0803746C @ =gUnk_02022F50
	ldr r1, [sp, #0x14]
	adds r6, r1, r0
	ldr r0, _08037470 @ =gUnk_02022EB0
	ldr r2, [sp, #0xc]
	adds r0, r2, r0
	ldrb r0, [r0]
	mov sl, r0
	cmp r0, #0
	beq _08037400
_080373BC:
	ldr r2, [r6]
	ldr r1, [r2, #0xc]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	beq _080373F0
	ldr r3, [r7]
	adds r0, r3, #0
	adds r0, #0x60
	adds r1, r2, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080373F0
	ldr r1, [r2, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r1, r0
	cmp r1, #0
	bne _080373F0
	adds r0, r2, #0
	adds r1, r3, #0
	bl sub_08038010
_080373F0:
	mov r0, sl
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	adds r6, #4
	cmp r0, #0
	bne _080373BC
_08037400:
	ldr r1, [sp]
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
	ldr r7, [sp, #8]
	cmp r3, #0
	bne _08037346
_0803740C:
	movs r0, #0x20
	ldr r2, [sp, #0x10]
	orrs r0, r2
	lsls r0, r0, #2
	ldr r1, _0803746C @ =gUnk_02022F50
	adds r7, r0, r1
	ldr r1, _08037470 @ =gUnk_02022EB0
	ldr r0, [sp, #0xc]
	adds r0, #1
	adds r0, r0, r1
	ldrb r3, [r0]
	cmp r3, #0
	bne _08037428
	b _08037B72
_08037428:
	adds r1, r7, #0
	ldm r1!, {r0}
	mov ip, r0
	str r1, [sp, #8]
	subs r2, r3, #1
	str r2, [sp]
	cmp r0, #0
	bne _0803743A
	b _08037B64
_0803743A:
	ldr r0, [r0, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0803747A
	mov r0, ip
	ldr r2, [r0, #0x40]
	asrs r2, r2, #8
	adds r0, #0x38
	movs r1, #0
	ldrsb r1, [r0, r1]
	rsbs r1, r1, #0
	adds r0, #2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	subs r1, r1, r0
	adds r2, r2, r1
	mov r8, r2
	b _0803748C
	.align 2, 0
_08037464: .4byte gKirbys
_08037468: .4byte gUnk_0203AD44
_0803746C: .4byte gUnk_02022F50
_08037470: .4byte gUnk_02022EB0
_08037474:
	movs r0, #0
	str r0, [r6]
	b _08037B34
_0803747A:
	mov r1, ip
	ldr r0, [r1, #0x40]
	asrs r0, r0, #8
	adds r1, #0x38
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	mov r8, r0
_0803748C:
	mov r2, ip
	ldr r0, [r2, #0x44]
	asrs r0, r0, #8
	mov r1, ip
	adds r1, #0x39
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	mov sb, r0
	ldr r1, [r2, #8]
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r0, r1
	subs r3, #1
	str r3, [sp]
	adds r2, r7, #4
	str r2, [sp, #8]
	cmp r0, #0
	bne _080374B6
	b _080376D2
_080374B6:
	ldr r0, _08037514 @ =gUnk_02022F50
	ldr r2, [sp, #0x14]
	adds r6, r2, r0
	ldr r0, _08037518 @ =gUnk_02022EB0
	ldr r2, [sp, #0xc]
	adds r0, r2, r0
	ldrb r0, [r0]
	mov sl, r0
	cmp r0, #0
	bne _080374CC
	b _080376B0
_080374CC:
	ldr r3, [r6]
	adds r4, r3, #0
	cmp r4, #0
	bne _080374D6
	b _08037688
_080374D6:
	movs r2, #0x80
	lsls r2, r2, #2
	ands r1, r2
	cmp r1, #0
	beq _080374E2
	b _080376B0
_080374E2:
	ldr r1, [r3, #8]
	ands r2, r1
	cmp r2, #0
	beq _080374EC
	b _08037688
_080374EC:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0803751C
	ldr r2, [r3, #0x40]
	asrs r2, r2, #8
	adds r0, r3, #0
	adds r0, #0x38
	movs r1, #0
	ldrsb r1, [r0, r1]
	rsbs r1, r1, #0
	adds r0, #2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	subs r1, r1, r0
	adds r2, r2, r1
	b _0803752C
	.align 2, 0
_08037514: .4byte gUnk_02022F50
_08037518: .4byte gUnk_02022EB0
_0803751C:
	ldr r0, [r3, #0x40]
	asrs r0, r0, #8
	adds r1, r3, #0
	adds r1, #0x38
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
_0803752C:
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x39
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r5, r0, r1
	mov r1, ip
	adds r1, #0x3a
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _080375A8
	mov r0, ip
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080375A8
	cmp r8, r2
	bgt _0803756A
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #1
	add r0, r8
	cmp r0, r2
	bge _0803757C
	cmp r8, r2
	blt _080375A8
_0803756A:
	adds r0, r4, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r2, r0
	cmp r0, r8
	blt _080375A8
_0803757C:
	cmp sb, r5
	bgt _08037596
	mov r0, ip
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	add r0, sb
	cmp r0, r5
	bge _08037626
	cmp sb, r5
	blt _080375A8
_08037596:
	adds r0, r4, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r5, r0
	cmp r0, sb
	bge _08037626
_080375A8:
	mov r1, ip
	ldr r0, [r1, #0x30]
	cmp r0, #0
	bne _08037688
	ldr r1, [r1, #0x40]
	asrs r1, r1, #8
	mov r0, ip
	adds r0, #0x34
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r1, r1, r3
	cmp r1, r2
	bgt _080375D6
	adds r0, #2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	bge _080375E8
	cmp r1, r2
	blt _08037688
_080375D6:
	adds r0, r4, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r2, r0
	cmp r0, r1
	blt _08037688
_080375E8:
	mov r2, ip
	ldr r0, [r2, #0x44]
	asrs r0, r0, #8
	mov r1, ip
	adds r1, #0x35
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	cmp r2, r5
	bgt _08037614
	mov r0, ip
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	adds r0, r2, r0
	cmp r0, r5
	bge _08037626
	cmp r2, r5
	blt _08037688
_08037614:
	adds r0, r4, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r5, r0
	cmp r0, r2
	blt _08037688
_08037626:
	ldr r1, [r7]
	ldrb r0, [r1]
	lsls r0, r0, #2
	ldr r2, _08037680 @ =gUnk_0834BD88
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r1, [r6]
	ldrb r2, [r1]
	lsls r2, r2, #2
	ldr r0, _08037680 @ =gUnk_0834BD88
	adds r2, r2, r0
	ldr r0, [r7]
	ldr r2, [r2]
	bl _call_via_r2
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08037658
	movs r0, #0
	str r0, [r6]
_08037658:
	ldr r1, [r7]
	mov ip, r1
	cmp r4, #0
	beq _08037688
	ldr r1, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r1
	cmp r0, #0
	beq _0803767A
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r1, r0
	ldr r0, _08037684 @ =0xFBFFFFFF
	ands r1, r0
	mov r2, ip
	str r1, [r2, #8]
_0803767A:
	movs r0, #0
	str r0, [r7]
	b _080376B0
	.align 2, 0
_08037680: .4byte gUnk_0834BD88
_08037684: .4byte 0xFBFFFFFF
_08037688:
	mov r0, sl
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	adds r6, #4
	cmp r0, #0
	beq _080376B0
	ldr r4, [r6]
	adds r3, r4, #0
	cmp r4, #0
	beq _08037688
	mov r1, ip
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #2
	ands r0, r2
	cmp r0, #0
	bne _080376B0
	b _080374E2
_080376B0:
	ldr r2, [r7]
	mov ip, r2
	cmp r2, #0
	bne _080376BA
	b _08037B64
_080376BA:
	ldr r1, [r2, #8]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r1
	cmp r0, #0
	beq _080376D2
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r1, r0
	ldr r0, _08037754 @ =0xFBFFFFFF
	ands r1, r0
	str r1, [r2, #8]
_080376D2:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	bne _080376E2
	b _08037944
_080376E2:
	movs r2, #0
	mov sl, r2
	ldr r0, _08037758 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp sl, r0
	blo _080376F0
	b _08037920
_080376F0:
	ldr r6, _0803775C @ =gUnk_0834BD88
_080376F2:
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r1, sl
	muls r1, r0, r1
	ldr r0, _08037760 @ =gKirbys
	adds r4, r1, r0
	mov r0, ip
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08037710
	b _0803790C
_08037710:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #2
	ands r0, r2
	cmp r0, #0
	beq _08037720
	b _08037920
_08037720:
	ldr r1, [r4, #8]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0803772C
	b _0803790C
_0803772C:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08037764
	ldr r2, [r4, #0x40]
	asrs r2, r2, #8
	adds r0, r4, #0
	adds r0, #0x38
	movs r1, #0
	ldrsb r1, [r0, r1]
	rsbs r1, r1, #0
	adds r0, #2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	subs r1, r1, r0
	adds r2, r2, r1
	b _08037774
	.align 2, 0
_08037754: .4byte 0xFBFFFFFF
_08037758: .4byte gUnk_0203AD44
_0803775C: .4byte gUnk_0834BD88
_08037760: .4byte gKirbys
_08037764:
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
_08037774:
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x39
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r5, r0, r1
	mov r1, ip
	adds r1, #0x3a
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0803783C
	mov r0, ip
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0803783C
	cmp r8, r2
	bgt _080377B2
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #1
	add r0, r8
	cmp r0, r2
	bge _080377C4
	cmp r8, r2
	blt _0803783C
_080377B2:
	adds r0, r4, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r2, r0
	cmp r0, r8
	blt _0803783C
_080377C4:
	cmp sb, r5
	bgt _080377DE
	mov r0, ip
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	add r0, sb
	cmp r0, r5
	bge _080377F0
	cmp sb, r5
	blt _0803783C
_080377DE:
	adds r0, r4, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r5, r0
	cmp r0, sb
	blt _0803783C
_080377F0:
	ldr r1, [r7]
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r2, [r0]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldrb r1, [r4]
	lsls r1, r1, #2
	adds r1, r1, r6
	ldr r0, [r7]
	ldr r2, [r1]
	adds r1, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	ldr r2, [r7]
	mov ip, r2
	cmp r5, #0
	beq _0803790C
	ldr r1, [r2, #8]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r1
	cmp r0, #0
	beq _08037902
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r1, r0
	ldr r0, _08037838 @ =0xFBFFFFFF
	ands r1, r0
	b _08037900
	.align 2, 0
_08037838: .4byte 0xFBFFFFFF
_0803783C:
	mov r1, ip
	ldr r0, [r1, #0x30]
	cmp r0, #0
	bne _0803790C
	ldr r1, [r1, #0x40]
	asrs r1, r1, #8
	mov r0, ip
	adds r0, #0x34
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r1, r1, r3
	cmp r1, r2
	bgt _0803786A
	adds r0, #2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	bge _0803787C
	cmp r1, r2
	blt _0803790C
_0803786A:
	adds r0, r4, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r2, r0
	cmp r0, r1
	blt _0803790C
_0803787C:
	mov r2, ip
	ldr r0, [r2, #0x44]
	asrs r0, r0, #8
	mov r1, ip
	adds r1, #0x35
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	cmp r2, r5
	bgt _080378A8
	mov r0, ip
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	adds r0, r2, r0
	cmp r0, r5
	bge _080378BA
	cmp r2, r5
	blt _0803790C
_080378A8:
	adds r0, r4, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r5, r0
	cmp r0, r2
	blt _0803790C
_080378BA:
	ldr r1, [r7]
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r2, [r0]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldrb r1, [r4]
	lsls r1, r1, #2
	adds r1, r1, r6
	ldr r0, [r7]
	ldr r2, [r1]
	adds r1, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	ldr r0, [r7]
	mov ip, r0
	cmp r5, #0
	beq _0803790C
	ldr r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r1
	cmp r0, #0
	beq _08037902
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r1, r0
	ldr r0, _08037908 @ =0xFBFFFFFF
	ands r1, r0
	mov r2, ip
_08037900:
	str r1, [r2, #8]
_08037902:
	movs r0, #0
	str r0, [r7]
	b _08037920
	.align 2, 0
_08037908: .4byte 0xFBFFFFFF
_0803790C:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r0, _080379C0 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp sl, r0
	bhs _08037920
	b _080376F2
_08037920:
	ldr r0, [r7]
	mov ip, r0
	cmp r0, #0
	bne _0803792A
	b _08037B64
_0803792A:
	ldr r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r1
	cmp r0, #0
	beq _08037944
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r1, r0
	ldr r0, _080379C4 @ =0xFBFFFFFF
	ands r1, r0
	mov r2, ip
	str r1, [r2, #8]
_08037944:
	mov r0, ip
	ldr r5, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #0x17
	ands r0, r5
	cmp r0, #0
	bne _08037954
	b _08037B56
_08037954:
	movs r0, #0x20
	ldr r1, [sp, #0x10]
	orrs r0, r1
	lsls r0, r0, #2
	ldr r1, _080379C8 @ =gUnk_02022F50
	adds r6, r0, r1
	ldr r1, _080379CC @ =gUnk_02022EB0
	ldr r0, [sp, #0xc]
	adds r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	mov sl, r0
	cmp r0, #0
	bne _08037972
	b _08037B34
_08037972:
	ldr r3, [r6]
	adds r4, r3, #0
	cmp r4, #0
	bne _0803797C
	b _08037B06
_0803797C:
	cmp r4, ip
	bne _08037982
	b _08037B06
_08037982:
	movs r2, #0x80
	lsls r2, r2, #2
	ands r5, r2
	cmp r5, #0
	beq _0803798E
	b _08037B34
_0803798E:
	ldr r1, [r3, #8]
	ands r2, r1
	cmp r2, #0
	beq _08037998
	b _08037B06
_08037998:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080379D0
	ldr r2, [r3, #0x40]
	asrs r2, r2, #8
	adds r0, r3, #0
	adds r0, #0x38
	movs r1, #0
	ldrsb r1, [r0, r1]
	rsbs r1, r1, #0
	adds r0, #2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	subs r1, r1, r0
	adds r2, r2, r1
	b _080379E0
	.align 2, 0
_080379C0: .4byte gUnk_0203AD44
_080379C4: .4byte 0xFBFFFFFF
_080379C8: .4byte gUnk_02022F50
_080379CC: .4byte gUnk_02022EB0
_080379D0:
	ldr r0, [r3, #0x40]
	asrs r0, r0, #8
	adds r1, r3, #0
	adds r1, #0x38
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
_080379E0:
	ldr r1, [r4, #0x44]
	asrs r1, r1, #8
	adds r0, r4, #0
	adds r0, #0x39
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r1, r0
	cmp r8, r2
	bgt _08037A0A
	mov r0, ip
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	add r0, r8
	cmp r0, r2
	bge _08037A1C
	cmp r8, r2
	blt _08037A88
_08037A0A:
	adds r0, r4, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r2, r0
	cmp r0, r8
	blt _08037A88
_08037A1C:
	cmp sb, r5
	bgt _08037A36
	mov r0, ip
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	add r0, sb
	cmp r0, r5
	bge _08037A48
	cmp sb, r5
	blt _08037A88
_08037A36:
	adds r0, r4, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r5, r0
	cmp r0, sb
	blt _08037A88
_08037A48:
	ldr r1, [r7]
	ldrb r0, [r1]
	lsls r0, r0, #2
	ldr r2, _08037A84 @ =gUnk_0834BD88
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r1, [r6]
	ldrb r2, [r1]
	lsls r2, r2, #2
	ldr r0, _08037A84 @ =gUnk_0834BD88
	adds r2, r2, r0
	ldr r0, [r7]
	ldr r2, [r2]
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08037A7A
	b _08037474
_08037A7A:
	cmp r4, #0
	beq _08037B06
	str r0, [r7]
	b _08037B34
	.align 2, 0
_08037A84: .4byte gUnk_0834BD88
_08037A88:
	mov r1, ip
	ldr r0, [r1, #0x30]
	cmp r0, #0
	bne _08037B06
	ldr r1, [r1, #0x40]
	asrs r1, r1, #8
	mov r0, ip
	adds r0, #0x34
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r1, r1, r3
	cmp r1, r2
	bgt _08037AB6
	adds r0, #2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	bge _08037AC8
	cmp r1, r2
	blt _08037B06
_08037AB6:
	adds r0, r4, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r2, r0
	cmp r0, r1
	blt _08037B06
_08037AC8:
	mov r2, ip
	ldr r0, [r2, #0x44]
	asrs r0, r0, #8
	mov r1, ip
	adds r1, #0x35
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	cmp r2, r5
	bgt _08037AF4
	mov r0, ip
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	adds r0, r2, r0
	cmp r0, r5
	bge _08037A48
	cmp r2, r5
	blt _08037B06
_08037AF4:
	adds r0, r4, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r5, r0
	cmp r0, r2
	bge _08037A48
_08037B06:
	mov r0, sl
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	adds r6, #4
	cmp r0, #0
	beq _08037B34
	ldr r4, [r6]
	adds r3, r4, #0
	cmp r4, #0
	beq _08037B06
	ldr r1, [r7]
	mov ip, r1
	cmp r4, ip
	beq _08037B06
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #2
	ands r0, r2
	cmp r0, #0
	bne _08037B34
	b _0803798E
_08037B34:
	ldr r7, [r7]
	mov ip, r7
	mov r2, ip
	cmp r2, #0
	beq _08037B64
	ldr r1, [r2, #8]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r1
	cmp r0, #0
	beq _08037B56
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r1, r0
	ldr r0, _08037BC4 @ =0xFBFFFFFF
	ands r1, r0
	str r1, [r2, #8]
_08037B56:
	mov r1, ip
	ldr r0, [r1, #8]
	cmp r0, #0
	bge _08037B64
	mov r0, ip
	bl sub_08036CBC
_08037B64:
	ldr r2, [sp]
	lsls r0, r2, #0x18
	lsrs r3, r0, #0x18
	ldr r7, [sp, #8]
	cmp r3, #0
	beq _08037B72
	b _08037428
_08037B72:
	ldr r0, _08037BC8 @ =gUnk_02022F50
	ldr r1, [sp, #0x14]
	adds r7, r1, r0
	ldr r0, _08037BCC @ =gUnk_02022EB0
	ldr r2, [sp, #0xc]
	adds r0, r2, r0
	ldrb r3, [r0]
	cmp r3, #0
	bne _08037B86
	b _08037FEA
_08037B86:
	adds r1, r7, #0
	ldm r1!, {r0}
	mov ip, r0
	str r1, [sp, #8]
	subs r2, r3, #1
	str r2, [sp]
	cmp r0, #0
	bne _08037B98
	b _08037FDC
_08037B98:
	ldr r0, [r0, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08037BD6
	mov r0, ip
	ldr r2, [r0, #0x40]
	asrs r2, r2, #8
	adds r0, #0x38
	movs r1, #0
	ldrsb r1, [r0, r1]
	rsbs r1, r1, #0
	adds r0, #2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	subs r1, r1, r0
	adds r2, r2, r1
	mov r8, r2
	b _08037BE8
	.align 2, 0
_08037BC4: .4byte 0xFBFFFFFF
_08037BC8: .4byte gUnk_02022F50
_08037BCC: .4byte gUnk_02022EB0
_08037BD0:
	movs r0, #0
	str r0, [r6]
	b _08037DE0
_08037BD6:
	mov r1, ip
	ldr r0, [r1, #0x40]
	asrs r0, r0, #8
	adds r1, #0x38
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	mov r8, r0
_08037BE8:
	mov r2, ip
	ldr r0, [r2, #0x44]
	asrs r0, r0, #8
	mov r1, ip
	adds r1, #0x39
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	mov sb, r0
	ldr r1, [r2, #8]
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r0, r1
	subs r3, #1
	str r3, [sp]
	adds r2, r7, #4
	str r2, [sp, #8]
	cmp r0, #0
	bne _08037C12
	b _08037DEA
_08037C12:
	ldr r0, _08037C74 @ =gUnk_02022F50
	ldr r2, [sp, #0x14]
	adds r6, r2, r0
	ldr r0, _08037C78 @ =gUnk_02022EB0
	ldr r2, [sp, #0xc]
	adds r0, r2, r0
	ldrb r0, [r0]
	mov sl, r0
	cmp r0, #0
	bne _08037C28
	b _08037DE0
_08037C28:
	ldr r3, [r6]
	adds r4, r3, #0
	cmp r3, #0
	bne _08037C32
	b _08037DB2
_08037C32:
	cmp r3, ip
	bne _08037C38
	b _08037DB2
_08037C38:
	movs r2, #0x80
	lsls r2, r2, #2
	ands r1, r2
	cmp r1, #0
	beq _08037C44
	b _08037DE0
_08037C44:
	ldr r1, [r3, #8]
	ands r2, r1
	cmp r2, #0
	beq _08037C4E
	b _08037DB2
_08037C4E:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08037C7C
	ldr r2, [r3, #0x40]
	asrs r2, r2, #8
	adds r0, r3, #0
	adds r0, #0x38
	movs r1, #0
	ldrsb r1, [r0, r1]
	rsbs r1, r1, #0
	adds r0, #2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	subs r1, r1, r0
	adds r2, r2, r1
	b _08037C8C
	.align 2, 0
_08037C74: .4byte gUnk_02022F50
_08037C78: .4byte gUnk_02022EB0
_08037C7C:
	ldr r0, [r3, #0x40]
	asrs r0, r0, #8
	adds r1, r3, #0
	adds r1, #0x38
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
_08037C8C:
	ldr r1, [r4, #0x44]
	asrs r1, r1, #8
	adds r0, r4, #0
	adds r0, #0x39
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r1, r0
	cmp r8, r2
	bgt _08037CB6
	mov r0, ip
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	add r0, r8
	cmp r0, r2
	bge _08037CC8
	cmp r8, r2
	blt _08037D34
_08037CB6:
	adds r0, r4, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r2, r0
	cmp r0, r8
	blt _08037D34
_08037CC8:
	cmp sb, r5
	bgt _08037CE2
	mov r0, ip
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	add r0, sb
	cmp r0, r5
	bge _08037CF4
	cmp sb, r5
	blt _08037D34
_08037CE2:
	adds r0, r4, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r5, r0
	cmp r0, sb
	blt _08037D34
_08037CF4:
	ldr r1, [r7]
	ldrb r0, [r1]
	lsls r0, r0, #2
	ldr r2, _08037D30 @ =gUnk_0834BD88
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r1, [r6]
	ldrb r2, [r1]
	lsls r2, r2, #2
	ldr r0, _08037D30 @ =gUnk_0834BD88
	adds r2, r2, r0
	ldr r0, [r7]
	ldr r2, [r2]
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08037D26
	b _08037BD0
_08037D26:
	cmp r4, #0
	beq _08037DB2
	str r0, [r7]
	b _08037DE0
	.align 2, 0
_08037D30: .4byte gUnk_0834BD88
_08037D34:
	mov r1, ip
	ldr r0, [r1, #0x30]
	cmp r0, #0
	bne _08037DB2
	ldr r1, [r1, #0x40]
	asrs r1, r1, #8
	mov r0, ip
	adds r0, #0x34
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r1, r1, r3
	cmp r1, r2
	bgt _08037D62
	adds r0, #2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	bge _08037D74
	cmp r1, r2
	blt _08037DB2
_08037D62:
	adds r0, r4, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r2, r0
	cmp r0, r1
	blt _08037DB2
_08037D74:
	mov r2, ip
	ldr r0, [r2, #0x44]
	asrs r0, r0, #8
	mov r1, ip
	adds r1, #0x35
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	cmp r2, r5
	bgt _08037DA0
	mov r0, ip
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	adds r0, r2, r0
	cmp r0, r5
	bge _08037CF4
	cmp r2, r5
	blt _08037DB2
_08037DA0:
	adds r0, r4, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r5, r0
	cmp r0, r2
	bge _08037CF4
_08037DB2:
	mov r0, sl
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	adds r6, #4
	cmp r0, #0
	beq _08037DE0
	ldr r3, [r6]
	adds r4, r3, #0
	cmp r3, #0
	beq _08037DB2
	ldr r1, [r7]
	mov ip, r1
	cmp r3, ip
	beq _08037DB2
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #2
	ands r0, r2
	cmp r0, #0
	bne _08037DE0
	b _08037C44
_08037DE0:
	ldr r2, [r7]
	mov ip, r2
	cmp r2, #0
	bne _08037DEA
	b _08037FDC
_08037DEA:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	bne _08037DFA
	b _08037FC4
_08037DFA:
	movs r2, #0
	mov sl, r2
	ldr r0, _08037E6C @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp sl, r0
	blo _08037E08
	b _08037FBA
_08037E08:
	ldr r6, _08037E70 @ =gUnk_0834BD88
_08037E0A:
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r1, sl
	muls r1, r0, r1
	ldr r0, _08037E74 @ =gKirbys
	adds r4, r1, r0
	mov r0, ip
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08037E28
	b _08037FA2
_08037E28:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #2
	ands r0, r2
	cmp r0, #0
	beq _08037E38
	b _08037FBA
_08037E38:
	ldr r1, [r4, #8]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08037E44
	b _08037FA2
_08037E44:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08037E78
	ldr r2, [r4, #0x40]
	asrs r2, r2, #8
	adds r0, r4, #0
	adds r0, #0x38
	movs r1, #0
	ldrsb r1, [r0, r1]
	rsbs r1, r1, #0
	adds r0, #2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	subs r1, r1, r0
	adds r2, r2, r1
	b _08037E88
	.align 2, 0
_08037E6C: .4byte gUnk_0203AD44
_08037E70: .4byte gUnk_0834BD88
_08037E74: .4byte gKirbys
_08037E78:
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
_08037E88:
	ldr r1, [r4, #0x44]
	asrs r1, r1, #8
	adds r0, r4, #0
	adds r0, #0x39
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r1, r0
	cmp r8, r2
	bgt _08037EB2
	mov r0, ip
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	add r0, r8
	cmp r0, r2
	bge _08037EC4
	cmp r8, r2
	blt _08037F24
_08037EB2:
	adds r0, r4, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r2, r0
	cmp r0, r8
	blt _08037F24
_08037EC4:
	cmp sb, r5
	bgt _08037EDE
	mov r0, ip
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	add r0, sb
	cmp r0, r5
	bge _08037EF0
	cmp sb, r5
	blt _08037F24
_08037EDE:
	adds r0, r4, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r5, r0
	cmp r0, sb
	blt _08037F24
_08037EF0:
	ldr r1, [r7]
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r2, [r0]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldrb r1, [r4]
	lsls r1, r1, #2
	adds r1, r1, r6
	ldr r0, [r7]
	ldr r2, [r1]
	adds r1, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _08037FBA
	cmp r5, #0
	beq _08037FA2
	str r0, [r7]
	b _08037FBA
_08037F24:
	mov r1, ip
	ldr r0, [r1, #0x30]
	cmp r0, #0
	bne _08037FA2
	ldr r1, [r1, #0x40]
	asrs r1, r1, #8
	mov r0, ip
	adds r0, #0x34
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r1, r1, r3
	cmp r1, r2
	bgt _08037F52
	adds r0, #2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	bge _08037F64
	cmp r1, r2
	blt _08037FA2
_08037F52:
	adds r0, r4, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r2, r0
	cmp r0, r1
	blt _08037FA2
_08037F64:
	mov r2, ip
	ldr r0, [r2, #0x44]
	asrs r0, r0, #8
	mov r1, ip
	adds r1, #0x35
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	cmp r2, r5
	bgt _08037F90
	mov r0, ip
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	adds r0, r2, r0
	cmp r0, r5
	bge _08037EF0
	cmp r2, r5
	blt _08037FA2
_08037F90:
	adds r0, r4, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r5, r0
	cmp r0, r2
	bge _08037EF0
_08037FA2:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r0, _0803800C @ =gUnk_0203AD44
	ldr r1, [r7]
	mov ip, r1
	ldrb r0, [r0]
	cmp sl, r0
	bhs _08037FBA
	b _08037E0A
_08037FBA:
	ldr r7, [r7]
	mov ip, r7
	mov r2, ip
	cmp r2, #0
	beq _08037FDC
_08037FC4:
	mov r0, ip
	ldr r1, [r0, #8]
	cmp r1, #0
	bge _08037FDC
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r1, r0
	cmp r1, #0
	bne _08037FDC
	mov r0, ip
	bl sub_08036CBC
_08037FDC:
	ldr r1, [sp]
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
	ldr r7, [sp, #8]
	cmp r3, #0
	beq _08037FEA
	b _08037B86
_08037FEA:
	ldr r2, [sp, #4]
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18

	thumb_func_start sub_08037FF0
sub_08037FF0: @ 0x08037FF0
	ldr r0, _0803800C @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r2, r0
	bhs _08037FFC
	bl _08037326
_08037FFC:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803800C: .4byte gUnk_0203AD44

	thumb_func_start sub_08038010
sub_08038010: @ 0x08038010
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	mov ip, r0
	adds r5, r1, #0
	ldr r0, [r0, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08038042
	mov r1, sp
	mov r0, ip
	adds r0, #0x3c
	ldrb r0, [r0]
	rsbs r0, r0, #0
	strb r0, [r1, #2]
	mov r0, ip
	adds r0, #0x3e
	ldrb r0, [r0]
	rsbs r0, r0, #0
	strb r0, [r1]
	b _08038054
_08038042:
	mov r1, sp
	mov r0, ip
	adds r0, #0x3c
	ldrb r0, [r0]
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x3e
	ldrb r0, [r0]
	strb r0, [r1, #2]
_08038054:
	mov r1, sp
	mov r0, ip
	adds r0, #0x3d
	ldrb r0, [r0]
	strb r0, [r1, #1]
	mov r0, ip
	adds r0, #0x3f
	ldrb r0, [r0]
	strb r0, [r1, #3]
	ldr r1, [r5, #8]
	movs r0, #1
	ands r0, r1
	str r1, [sp, #0x1c]
	cmp r0, #0
	beq _0803808A
	add r1, sp, #4
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	rsbs r0, r0, #0
	strb r0, [r1, #2]
	adds r0, r5, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	rsbs r0, r0, #0
	strb r0, [r1]
	b _0803809C
_0803808A:
	add r1, sp, #4
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	strb r0, [r1, #2]
_0803809C:
	mov sb, r1
	adds r0, r5, #0
	adds r0, #0x3d
	ldrb r3, [r0]
	mov r0, sb
	strb r3, [r0, #1]
	adds r0, r5, #0
	adds r0, #0x3f
	ldrb r2, [r0]
	mov r1, sb
	strb r2, [r1, #3]
	mov r0, sp
	mov r1, sp
	ldrb r0, [r0, #2]
	ldrb r1, [r1]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	mov r4, sb
	ldrb r0, [r4, #2]
	ldrb r1, [r4]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	mov r0, sp
	mov r1, sp
	ldrb r0, [r0, #3]
	ldrb r1, [r1, #1]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	subs r2, r2, r3
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x18]
	movs r4, #0
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	mov r2, ip
	ldr r1, [r2, #0x48]
	adds r2, r1, r0
	mov r3, sb
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	ldr r1, [r5, #0x48]
	adds r1, r1, r0
	cmp r2, r1
	bgt _08038118
	mov r3, r8
	lsls r0, r3, #8
	adds r0, r2, r0
	cmp r0, r1
	bge _08038122
	cmp r2, r1
	blt _08038124
_08038118:
	ldr r3, [sp, #0x10]
	lsls r0, r3, #8
	adds r0, r1, r0
	cmp r0, r2
	blt _08038124
_08038122:
	movs r4, #1
_08038124:
	str r4, [sp, #8]
	movs r4, #0
	mov r0, sp
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	mov r2, ip
	ldr r1, [r2, #0x4c]
	adds r2, r1, r0
	mov r3, sb
	movs r0, #1
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	ldr r1, [r5, #0x4c]
	adds r1, r1, r0
	cmp r2, r1
	bgt _08038156
	ldr r3, [sp, #0x14]
	lsls r0, r3, #8
	adds r0, r2, r0
	cmp r0, r1
	bge _08038160
	cmp r2, r1
	blt _08038162
_08038156:
	ldr r3, [sp, #0x18]
	lsls r0, r3, #8
	adds r0, r1, r0
	cmp r0, r2
	blt _08038162
_08038160:
	movs r4, #1
_08038162:
	str r4, [sp, #0xc]
	movs r7, #0
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	mov r4, ip
	ldr r2, [r4, #0x40]
	adds r4, r2, r0
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #8
	ldr r1, [r5, #0x40]
	adds r3, r1, r0
	adds r6, r2, #0
	mov sl, r1
	cmp r4, r3
	bgt _08038198
	mov r2, r8
	lsls r0, r2, #8
	adds r0, r4, r0
	cmp r0, r3
	bge _080381A2
	cmp r4, r3
	blt _080381A4
_08038198:
	ldr r1, [sp, #0x10]
	lsls r0, r1, #8
	adds r0, r3, r0
	cmp r0, r4
	blt _080381A4
_080381A2:
	movs r7, #1
_080381A4:
	movs r2, #0
	mov r8, r2
	mov r0, sp
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	mov r3, ip
	ldr r2, [r3, #0x44]
	adds r4, r2, r0
	mov r1, sb
	movs r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #8
	ldr r1, [r5, #0x44]
	adds r3, r1, r0
	str r1, [sp, #0x20]
	cmp r4, r3
	bgt _080381D8
	ldr r1, [sp, #0x14]
	lsls r0, r1, #8
	adds r0, r4, r0
	cmp r0, r3
	bge _080381E2
	cmp r4, r3
	blt _080381E6
_080381D8:
	ldr r1, [sp, #0x18]
	lsls r0, r1, #8
	adds r0, r3, r0
	cmp r0, r4
	blt _080381E6
_080381E2:
	movs r3, #1
	mov r8, r3
_080381E6:
	cmp r7, #0
	bne _080381EE
	bl _08038B20
_080381EE:
	mov r4, r8
	cmp r4, #0
	bne _080381F8
	bl _08038B20
_080381F8:
	movs r0, #0x80
	ldr r1, [sp, #0x1c]
	ands r0, r1
	cmp r0, #0
	beq _08038216
	mov r2, ip
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
	mov r2, ip
	str r5, [r2, #0x6c]
	bl _08038B20
_08038216:
	ldr r3, [sp, #8]
	cmp r3, #0
	bne _0803821E
	b _0803838C
_0803821E:
	ldr r4, [sp, #0xc]
	cmp r4, #0
	beq _08038226
	b _08038384
_08038226:
	mov r1, sb
	movs r0, #2
	ldrsb r0, [r1, r0]
	mov r1, sp
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	lsls r0, r0, #8
	add r0, sl
	cmp r6, r0
	bne _08038240
	b _08038384
_08038240:
	mov r3, sb
	movs r0, #0
	ldrsb r0, [r3, r0]
	mov r1, sp
	ldrb r1, [r1, #2]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	lsls r0, r0, #8
	add r0, sl
	cmp r6, r0
	bne _0803825A
	b _08038384
_0803825A:
	mov r0, ip
	adds r0, #0x52
	movs r4, #0
	ldrsh r1, [r0, r4]
	adds r4, r0, #0
	cmp r1, #0
	ble _080382F6
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r6, r0, r3
	mov r0, sp
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	adds r1, r2, r0
	mov r2, sb
	movs r0, #3
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	ldr r3, [sp, #0x20]
	adds r0, r3, r0
	subs r3, r1, r0
	cmp r3, #0
	blt _08038296
	cmp r3, r6
	blt _0803829C
	b _080382E2
_08038296:
	subs r0, r0, r1
	cmp r0, r6
	bge _080382E2
_0803829C:
	mov r3, ip
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #8
	movs r2, #0
	orrs r0, r1
	strb r0, [r3]
	adds r3, r5, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #4
	orrs r0, r1
	strb r0, [r3]
	mov r0, sb
	movs r1, #3
	ldrsb r1, [r0, r1]
	mov r0, sp
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x52
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r0, r0, r1
	mov r1, ip
	str r0, [r1, #0x44]
	strh r2, [r4]
_080382E2:
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _080382F6
	adds r0, r5, #0
	adds r0, #0x52
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _08038384
_080382F6:
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #0xc0
	lsls r0, r0, #2
	subs r6, r0, r1
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	mov r2, ip
	ldr r1, [r2, #0x44]
	adds r3, r1, r0
	mov r1, sb
	movs r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #8
	ldr r1, [r5, #0x44]
	adds r0, r1, r0
	subs r2, r3, r0
	cmp r2, #0
	blt _08038328
	cmp r2, r6
	blt _0803832E
	b _08038384
_08038328:
	subs r0, r0, r3
	cmp r0, r6
	bge _08038384
_0803832E:
	mov r2, ip
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
	mov r2, sb
	movs r1, #1
	ldrsb r1, [r2, r1]
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	adds r1, #1
	lsls r1, r1, #8
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	mov r3, ip
	str r0, [r3, #0x44]
	ldr r0, [r3, #8]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803837C
	ldrh r1, [r4]
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _0803837C
	movs r0, #0xff
	ands r0, r1
	b _0803837E
_0803837C:
	movs r0, #0
_0803837E:
	strh r0, [r4]
	mov r3, ip
	str r5, [r3, #0x74]
_08038384:
	ldr r4, [sp, #8]
	cmp r4, #0
	beq _0803838C
	b _08038824
_0803838C:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _08038394
	b _0803853C
_08038394:
	mov r2, ip
	adds r2, #0x52
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r0, #0x80
	lsls r0, r0, #2
	subs r7, r0, r1
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	mov r4, ip
	ldr r1, [r4, #0x44]
	adds r6, r1, r0
	mov r1, sb
	movs r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #8
	ldr r1, [r5, #0x44]
	adds r0, r1, r0
	subs r3, r6, r0
	adds r4, r2, #0
	cmp r3, #0
	blt _080383CC
	cmp r3, r7
	bgt _080383D4
	b _0803853C
_080383CC:
	subs r0, r0, r6
	cmp r0, r7
	bgt _080383D4
	b _0803853C
_080383D4:
	ldr r7, [r5, #0x40]
	mov r2, ip
	ldr r6, [r2, #0x40]
	cmp r6, r7
	ble _0803848A
	adds r0, r5, #0
	adds r0, #0x50
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	mov r1, ip
	adds r1, #0x50
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r3, r0, r1
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	adds r2, r6, r0
	mov r1, sb
	movs r0, #2
	ldrsb r0, [r1, r0]
	lsls r0, r0, #8
	adds r0, r7, r0
	subs r1, r2, r0
	cmp r1, #0
	blt _08038418
	cmp r1, r3
	blt _0803841E
	b _08038476
_08038418:
	subs r0, r0, r2
	cmp r0, r3
	bge _08038476
_0803841E:
	mov r2, ip
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08038432
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	b _0803843A
_08038432:
	mov r2, ip
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
_0803843A:
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08038452
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	b _0803845A
_08038452:
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
_0803845A:
	orrs r0, r1
	strb r0, [r2]
	mov r3, sb
	movs r1, #2
	ldrsb r1, [r3, r1]
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	b _08038538
_08038476:
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0803853C
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r6, r2
	mov r3, ip
	str r0, [r3, #0x40]
	b _0803853C
_0803848A:
	mov r0, ip
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r5, #0
	adds r0, #0x50
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r2, _080384C4 @ =0xFFFFFC00
	adds r0, r0, r2
	subs r1, r1, r0
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	adds r3, r6, r0
	mov r2, sb
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r0, r7, r0
	subs r2, r3, r0
	cmp r2, #0
	blt _080384C8
	cmp r2, r1
	blt _080384CE
	b _0803852C
	.align 2, 0
_080384C4: .4byte 0xFFFFFC00
_080384C8:
	subs r0, r0, r3
	cmp r0, r1
	bge _0803852C
_080384CE:
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080384E4
	mov r2, ip
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	b _080384EC
_080384E4:
	mov r2, ip
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
_080384EC:
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08038504
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	b _0803850C
_08038504:
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
_0803850C:
	orrs r0, r1
	strb r0, [r2]
	mov r4, sb
	movs r1, #0
	ldrsb r1, [r4, r1]
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	mov r1, ip
	str r0, [r1, #0x40]
	b _0803853C
_0803852C:
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _0803853C
	ldr r3, _08038594 @ =0xFFFFFF00
	adds r0, r6, r3
_08038538:
	mov r4, ip
	str r0, [r4, #0x40]
_0803853C:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _08038544
	b _08038824
_08038544:
	ldr r1, [sp, #0xc]
	cmp r1, #0
	beq _0803854C
	b _0803881C
_0803854C:
	mov r3, ip
	ldr r2, [r3, #0x44]
	ldr r3, [r5, #0x44]
	cmp r2, r3
	ble _080385E6
	mov r0, ip
	adds r0, #0x52
	movs r4, #0
	ldrsh r1, [r0, r4]
	adds r4, r0, #0
	cmp r1, #0
	bgt _08038566
	b _0803867C
_08038566:
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r6, r0, r1
	mov r0, sp
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r1, sb
	movs r0, #3
	ldrsb r0, [r1, r0]
	lsls r0, r0, #8
	adds r0, r3, r0
	subs r1, r2, r0
	cmp r1, #0
	blt _08038598
	cmp r1, r6
	blt _0803859E
	b _0803867C
	.align 2, 0
_08038594: .4byte 0xFFFFFF00
_08038598:
	subs r0, r0, r2
	cmp r0, r6
	bge _0803867C
_0803859E:
	mov r3, ip
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #8
	movs r2, #0
	orrs r0, r1
	strb r0, [r3]
	adds r3, r5, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #4
	orrs r0, r1
	strb r0, [r3]
	mov r3, sb
	movs r1, #3
	ldrsb r1, [r3, r1]
	mov r0, sp
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x52
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r0, r0, r1
	mov r1, ip
	str r0, [r1, #0x44]
	strh r2, [r4]
	b _0803867C
_080385E6:
	mov r0, ip
	adds r0, #0x52
	movs r4, #0
	ldrsh r1, [r0, r4]
	adds r4, r0, #0
	cmp r1, #0
	bgt _0803867C
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #0xc0
	lsls r0, r0, #2
	subs r6, r0, r1
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r1, sb
	movs r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #8
	adds r0, r3, r0
	subs r1, r2, r0
	cmp r1, #0
	blt _08038620
	cmp r1, r6
	blt _08038626
	b _0803867C
_08038620:
	subs r0, r0, r2
	cmp r0, r6
	bge _0803867C
_08038626:
	mov r2, ip
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
	mov r2, sb
	movs r1, #1
	ldrsb r1, [r2, r1]
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	adds r1, #1
	lsls r1, r1, #8
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	mov r3, ip
	str r0, [r3, #0x44]
	ldr r0, [r3, #8]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08038674
	ldrh r1, [r4]
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _08038674
	movs r0, #0xff
	ands r0, r1
	b _08038676
_08038674:
	movs r0, #0
_08038676:
	strh r0, [r4]
	mov r3, ip
	str r5, [r3, #0x74]
_0803867C:
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #0x80
	lsls r0, r0, #2
	subs r6, r0, r1
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	mov r2, ip
	ldr r1, [r2, #0x44]
	adds r3, r1, r0
	mov r1, sb
	movs r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #8
	ldr r1, [r5, #0x44]
	adds r0, r1, r0
	subs r2, r3, r0
	cmp r2, #0
	blt _080386AE
	cmp r2, r6
	bgt _080386B6
	b _0803881C
_080386AE:
	subs r0, r0, r3
	cmp r0, r6
	bgt _080386B6
	b _0803881C
_080386B6:
	ldr r7, [r5, #0x40]
	mov r2, ip
	ldr r6, [r2, #0x40]
	cmp r6, r7
	ble _0803876C
	adds r0, r5, #0
	adds r0, #0x50
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	mov r1, ip
	adds r1, #0x50
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r3, r0, r1
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	adds r2, r6, r0
	mov r1, sb
	movs r0, #2
	ldrsb r0, [r1, r0]
	lsls r0, r0, #8
	adds r0, r7, r0
	subs r1, r2, r0
	cmp r1, #0
	blt _080386FA
	cmp r1, r3
	blt _08038700
	b _08038758
_080386FA:
	subs r0, r0, r2
	cmp r0, r3
	bge _08038758
_08038700:
	mov r2, ip
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08038714
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	b _0803871C
_08038714:
	mov r2, ip
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
_0803871C:
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08038734
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	b _0803873C
_08038734:
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
_0803873C:
	orrs r0, r1
	strb r0, [r2]
	mov r3, sb
	movs r1, #2
	ldrsb r1, [r3, r1]
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	b _08038818
_08038758:
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0803881C
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r6, r2
	mov r3, ip
	str r0, [r3, #0x40]
	b _0803881C
_0803876C:
	mov r0, ip
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r5, #0
	adds r0, #0x50
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r2, _080387A4 @ =0xFFFFFC00
	adds r0, r0, r2
	subs r1, r1, r0
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	adds r3, r6, r0
	mov r2, sb
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r0, r7, r0
	subs r2, r3, r0
	cmp r2, #0
	blt _080387A8
	cmp r2, r1
	blt _080387AE
	b _0803880C
	.align 2, 0
_080387A4: .4byte 0xFFFFFC00
_080387A8:
	subs r0, r0, r3
	cmp r0, r1
	bge _0803880C
_080387AE:
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080387C4
	mov r2, ip
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	b _080387CC
_080387C4:
	mov r2, ip
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
_080387CC:
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080387E4
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	b _080387EC
_080387E4:
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
_080387EC:
	orrs r0, r1
	strb r0, [r2]
	mov r4, sb
	movs r1, #0
	ldrsb r1, [r4, r1]
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	mov r1, ip
	str r0, [r1, #0x40]
	b _0803881C
_0803880C:
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _0803881C
	ldr r3, _0803889C @ =0xFFFFFF00
	adds r0, r6, r3
_08038818:
	mov r4, ip
	str r0, [r4, #0x40]
_0803881C:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _08038824
	b _08038B20
_08038824:
	ldr r1, [sp, #0xc]
	cmp r1, #0
	bne _0803882C
	b _08038B20
_0803882C:
	mov r2, sb
	movs r0, #2
	ldrsb r0, [r2, r0]
	mov r1, sp
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	lsls r0, r0, #8
	ldr r3, [r5, #0x40]
	adds r0, r3, r0
	mov r4, ip
	ldr r2, [r4, #0x40]
	adds r4, #0x52
	cmp r2, r0
	bne _0803884E
	b _08038980
_0803884E:
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	mov r1, sp
	ldrb r1, [r1, #2]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	lsls r0, r0, #8
	adds r0, r3, r0
	cmp r2, r0
	bne _08038868
	b _08038980
_08038868:
	movs r2, #0
	ldrsh r1, [r4, r2]
	movs r0, #0xc0
	lsls r0, r0, #2
	subs r6, r0, r1
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	mov r3, ip
	ldr r1, [r3, #0x44]
	adds r3, r1, r0
	mov r1, sb
	movs r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #8
	ldr r1, [r5, #0x44]
	adds r0, r1, r0
	subs r2, r3, r0
	cmp r2, #0
	blt _080388A0
	cmp r2, r6
	blt _080388A6
	b _080388FE
	.align 2, 0
_0803889C: .4byte 0xFFFFFF00
_080388A0:
	subs r0, r0, r3
	cmp r0, r6
	bge _080388FE
_080388A6:
	mov r2, ip
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
	mov r2, sb
	movs r1, #1
	ldrsb r1, [r2, r1]
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	adds r1, #1
	lsls r1, r1, #8
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	mov r3, ip
	str r0, [r3, #0x44]
	ldr r0, [r3, #8]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080388F4
	ldrh r1, [r4]
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _080388F4
	movs r0, #0xff
	ands r0, r1
	b _080388F6
_080388F4:
	movs r0, #0
_080388F6:
	strh r0, [r4]
	mov r3, ip
	str r5, [r3, #0x74]
	b _08038980
_080388FE:
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _08038980
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r6, r0, r3
	mov r0, sp
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	mov r2, ip
	ldr r1, [r2, #0x44]
	adds r3, r1, r0
	mov r1, sb
	movs r0, #3
	ldrsb r0, [r1, r0]
	lsls r0, r0, #8
	ldr r1, [r5, #0x44]
	adds r0, r1, r0
	subs r2, r3, r0
	cmp r2, #0
	blt _08038934
	cmp r2, r6
	blt _0803893A
	b _08038980
_08038934:
	subs r0, r0, r3
	cmp r0, r6
	bge _08038980
_0803893A:
	mov r3, ip
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #8
	movs r2, #0
	orrs r0, r1
	strb r0, [r3]
	adds r3, r5, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #4
	orrs r0, r1
	strb r0, [r3]
	mov r3, sb
	movs r1, #3
	ldrsb r1, [r3, r1]
	mov r0, sp
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x52
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r0, r0, r1
	mov r1, ip
	str r0, [r1, #0x44]
	strh r2, [r4]
_08038980:
	movs r2, #0
	ldrsh r1, [r4, r2]
	movs r0, #0x80
	lsls r0, r0, #2
	subs r6, r0, r1
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	mov r3, ip
	ldr r1, [r3, #0x44]
	adds r3, r1, r0
	mov r1, sb
	movs r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #8
	ldr r1, [r5, #0x44]
	adds r0, r1, r0
	subs r2, r3, r0
	cmp r2, #0
	blt _080389B2
	cmp r2, r6
	bgt _080389BA
	b _08038B20
_080389B2:
	subs r0, r0, r3
	cmp r0, r6
	bgt _080389BA
	b _08038B20
_080389BA:
	ldr r7, [r5, #0x40]
	mov r2, ip
	ldr r6, [r2, #0x40]
	cmp r6, r7
	ble _08038A70
	adds r0, r5, #0
	adds r0, #0x50
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	mov r1, ip
	adds r1, #0x50
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r3, r0, r1
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	adds r2, r6, r0
	mov r1, sb
	movs r0, #2
	ldrsb r0, [r1, r0]
	lsls r0, r0, #8
	adds r0, r7, r0
	subs r1, r2, r0
	cmp r1, #0
	blt _080389FE
	cmp r1, r3
	blt _08038A04
	b _08038A5C
_080389FE:
	subs r0, r0, r2
	cmp r0, r3
	bge _08038A5C
_08038A04:
	mov r2, ip
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08038A18
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	b _08038A20
_08038A18:
	mov r2, ip
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
_08038A20:
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08038A38
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	b _08038A40
_08038A38:
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
_08038A40:
	orrs r0, r1
	strb r0, [r2]
	mov r3, sb
	movs r1, #2
	ldrsb r1, [r3, r1]
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	b _08038B1C
_08038A5C:
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08038B20
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r6, r2
	mov r3, ip
	str r0, [r3, #0x40]
	b _08038B20
_08038A70:
	mov r0, ip
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r5, #0
	adds r0, #0x50
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r2, _08038AA8 @ =0xFFFFFC00
	adds r0, r0, r2
	subs r1, r1, r0
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	adds r3, r6, r0
	mov r2, sb
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r0, r7, r0
	subs r2, r3, r0
	cmp r2, #0
	blt _08038AAC
	cmp r2, r1
	blt _08038AB2
	b _08038B10
	.align 2, 0
_08038AA8: .4byte 0xFFFFFC00
_08038AAC:
	subs r0, r0, r3
	cmp r0, r1
	bge _08038B10
_08038AB2:
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08038AC8
	mov r2, ip
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	b _08038AD0
_08038AC8:
	mov r2, ip
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
_08038AD0:
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08038AE8
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	b _08038AF0
_08038AE8:
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
_08038AF0:
	orrs r0, r1
	strb r0, [r2]
	mov r4, sb
	movs r1, #0
	ldrsb r1, [r4, r1]
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	mov r1, ip
	str r0, [r1, #0x40]
	b _08038B20
_08038B10:
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _08038B20
	ldr r3, _08038B30 @ =0xFFFFFF00
	adds r0, r6, r3
_08038B1C:
	mov r4, ip
	str r0, [r4, #0x40]
_08038B20:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08038B30: .4byte 0xFFFFFF00

	thumb_func_start sub_08038B34
sub_08038B34: @ 0x08038B34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r0, #0
	str r0, [sp]
	ldr r6, _08038D54 @ =gUnk_0203AD44
	ldrb r1, [r6]
	cmp r0, r1
	blo _08038B4E
	b _08039116
_08038B4E:
	movs r4, #0xd4
	lsls r4, r4, #1
	ldr r2, [sp]
	adds r0, r2, #0
	muls r0, r4, r0
	ldr r3, _08038D58 @ =gKirbys
	adds r7, r0, r3
	mov sb, r7
	ldr r0, _08038D5C @ =gUnk_03000510
	ldrb r1, [r0, #4]
	movs r2, #1
	ldr r0, [sp]
	lsls r2, r0
	movs r0, #0x10
	orrs r0, r2
	ands r1, r0
	ldr r0, [sp]
	adds r0, #1
	str r0, [sp, #8]
	cmp r1, #0
	beq _08038B7A
	b _08039104
_08038B7A:
	ldr r0, [r7, #8]
	ldr r1, _08038D60 @ =0x03800F00
	ands r0, r1
	cmp r0, #0
	beq _08038B86
	b _08039104
_08038B86:
	ldr r1, [r7, #0x78]
	ldr r0, _08038D64 @ =sub_080566E0
	cmp r1, r0
	bne _08038B90
	b _08039104
_08038B90:
	adds r0, r7, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	subs r0, #0x4a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bhi _08038BA2
	b _08039104
_08038BA2:
	ldrh r1, [r7, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #2
	cmp r1, r0
	bne _08038BAE
	b _08039104
_08038BAE:
	ldr r1, [sp, #8]
	lsls r0, r1, #0x18
	lsrs r5, r0, #0x18
	ldrb r6, [r6]
	cmp r5, r6
	blo _08038BBC
	b _08039104
_08038BBC:
	mov sl, r4
	str r2, [sp, #4]
_08038BC0:
	mov r2, sl
	muls r2, r5, r2
	ldr r3, _08038D58 @ =gKirbys
	adds r3, r3, r2
	mov r8, r3
	ldr r0, [r3, #8]
	ldr r1, _08038D60 @ =0x03800F00
	ands r0, r1
	cmp r0, #0
	beq _08038BD6
	b _080390F4
_08038BD6:
	ldr r6, _08038D68 @ =gKirbys+0x78
	adds r0, r2, r6
	ldr r1, [r0]
	ldr r0, _08038D64 @ =sub_080566E0
	cmp r1, r0
	bne _08038BE4
	b _080390F4
_08038BE4:
	mov r1, sb
	adds r1, #0xd4
	ldrh r0, [r1]
	subs r0, #0x4a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, r1, #0
	cmp r0, #0xf
	bhi _08038BF8
	b _080390F4
_08038BF8:
	ldrh r1, [r3, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #2
	cmp r1, r0
	bne _08038C04
	b _080390F4
_08038C04:
	mov r0, r8
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08038C16
	b _080390F4
_08038C16:
	adds r0, r7, #0
	mov r1, r8
	bl sub_0803912C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r0, #0
	bne _08038C2A
	b _08038EA4
_08038C2A:
	ldr r0, _08038D6C @ =0x00000103
	add r0, sb
	ldrb r2, [r0]
	cmp r2, #0x17
	bne _08038C36
	b _08038EA4
_08038C36:
	ldr r0, _08038D6C @ =0x00000103
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0x17
	bne _08038C42
	b _08038D74
_08038C42:
	mov r0, sb
	adds r0, #0xe5
	ldrb r0, [r0]
	cmp r0, #0
	bne _08038C4E
	b _08038D74
_08038C4E:
	mov r1, sb
	adds r1, #0xe1
	ldrb r0, [r1]
	asrs r0, r5
	movs r3, #1
	ands r0, r3
	adds r6, r1, #0
	cmp r0, #0
	beq _08038C62
	b _08038D74
_08038C62:
	cmp r2, #0xe
	beq _08038C92
	ldrh r0, [r4]
	cmp r0, #0x15
	bls _08038C74
	cmp r0, #0x19
	beq _08038C74
	cmp r0, #0x2f
	bne _08038C7A
_08038C74:
	ldrh r0, [r4]
	cmp r0, #0xd
	bne _08038CA4
_08038C7A:
	ldrh r0, [r4]
	subs r0, #0x38
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bls _08038CA4
	ldr r0, _08038D6C @ =0x00000103
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _08038C92
	b _08038EA4
_08038C92:
	ldrh r0, [r4]
	cmp r0, #0x12
	bls _08038CA4
	subs r0, #0x21
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xd
	bls _08038CA4
	b _08038EA4
_08038CA4:
	mov r0, sl
	muls r0, r5, r0
	ldr r2, _08038D58 @ =gKirbys
	adds r1, r0, r2
	ldr r3, _08038D6C @ =0x00000103
	adds r0, r1, r3
	ldrb r0, [r0]
	adds r3, r2, #0
	cmp r0, #0xe
	beq _08038CFA
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x15
	bls _08038CCA
	cmp r0, #0x19
	beq _08038CCA
	cmp r0, #0x2f
	bne _08038CD8
_08038CCA:
	mov r0, sl
	muls r0, r5, r0
	adds r0, r0, r3
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0xd
	bne _08038D14
_08038CD8:
	mov r0, sl
	muls r0, r5, r0
	adds r1, r0, r3
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	subs r0, #0x38
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bls _08038D14
	ldr r2, _08038D6C @ =0x00000103
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _08038CFA
	b _08038EA4
_08038CFA:
	mov r0, sl
	muls r0, r5, r0
	adds r0, r0, r3
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x12
	bls _08038D14
	subs r0, #0x21
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xd
	bls _08038D14
	b _08038EA4
_08038D14:
	mov r1, sb
	adds r1, #0x56
	ldr r0, _08038D70 @ =gUnk_0203AD30
	ldrb r1, [r1]
	ldrb r2, [r0]
	cmp r1, r2
	blo _08038D32
	mov r0, sl
	muls r0, r5, r0
	adds r0, r0, r3
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	blo _08038D32
	b _08038EA4
_08038D32:
	mov r0, sb
	adds r1, r5, #0
	bl sub_08053DAC
	mov r0, sl
	muls r0, r5, r0
	ldr r3, _08038D58 @ =gKirbys
	adds r0, r0, r3
	ldr r1, [sp]
	bl sub_08054414
	movs r0, #1
	lsls r0, r5
	ldrb r1, [r6]
	orrs r0, r1
	strb r0, [r6]
	b _080390F4
	.align 2, 0
_08038D54: .4byte gUnk_0203AD44
_08038D58: .4byte gKirbys
_08038D5C: .4byte gUnk_03000510
_08038D60: .4byte 0x03800F00
_08038D64: .4byte sub_080566E0
_08038D68: .4byte gKirbys+0x78
_08038D6C: .4byte 0x00000103
_08038D70: .4byte gUnk_0203AD30
_08038D74:
	ldr r0, _08038E98 @ =0x00000103
	add r0, sb
	ldrb r2, [r0]
	cmp r2, #0x17
	bne _08038D80
	b _08038EA4
_08038D80:
	mov r0, sl
	muls r0, r5, r0
	ldr r6, _08038E9C @ =gKirbys
	adds r1, r0, r6
	ldr r3, _08038E98 @ =0x00000103
	adds r0, r1, r3
	ldrb r0, [r0]
	adds r3, r6, #0
	cmp r0, #0x17
	bne _08038D96
	b _08038EA4
_08038D96:
	adds r0, r1, #0
	adds r0, #0xe5
	ldrb r0, [r0]
	cmp r0, #0
	bne _08038DA2
	b _08038EA4
_08038DA2:
	adds r0, r1, #0
	adds r0, #0xe1
	ldrb r0, [r0]
	ldr r6, [sp]
	asrs r0, r6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08038EA4
	cmp r2, #0xe
	beq _08038DE2
	ldrh r0, [r4]
	cmp r0, #0x15
	bls _08038DC6
	cmp r0, #0x19
	beq _08038DC6
	cmp r0, #0x2f
	bne _08038DCC
_08038DC6:
	ldrh r0, [r4]
	cmp r0, #0xd
	bne _08038DF2
_08038DCC:
	ldrh r0, [r4]
	subs r0, #0x38
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bls _08038DF2
	ldr r0, _08038E98 @ =0x00000103
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0xe
	bne _08038EA4
_08038DE2:
	ldrh r0, [r4]
	cmp r0, #0x12
	bls _08038DF2
	subs r0, #0x21
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xd
	bhi _08038EA4
_08038DF2:
	mov r0, sl
	muls r0, r5, r0
	adds r1, r0, r3
	ldr r2, _08038E98 @ =0x00000103
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _08038E42
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x15
	bls _08038E14
	cmp r0, #0x19
	beq _08038E14
	cmp r0, #0x2f
	bne _08038E22
_08038E14:
	mov r0, sl
	muls r0, r5, r0
	adds r0, r0, r3
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0xd
	bne _08038E5A
_08038E22:
	mov r0, sl
	muls r0, r5, r0
	adds r1, r0, r3
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	subs r0, #0x38
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bls _08038E5A
	ldr r6, _08038E98 @ =0x00000103
	adds r0, r1, r6
	ldrb r0, [r0]
	cmp r0, #0xe
	bne _08038EA4
_08038E42:
	mov r0, sl
	muls r0, r5, r0
	adds r0, r0, r3
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x12
	bls _08038E5A
	subs r0, #0x21
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xd
	bhi _08038EA4
_08038E5A:
	mov r1, sb
	adds r1, #0x56
	ldr r0, _08038EA0 @ =gUnk_0203AD30
	ldrb r1, [r1]
	ldrb r2, [r0]
	cmp r1, r2
	blo _08038E76
	mov r0, sl
	muls r0, r5, r0
	adds r0, r0, r3
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bhs _08038EA4
_08038E76:
	mov r4, sl
	muls r4, r5, r4
	adds r4, r4, r3
	adds r0, r4, #0
	ldr r1, [sp]
	bl sub_08053DAC
	mov r0, sb
	adds r1, r5, #0
	bl sub_08054414
	adds r4, #0xe1
	ldrb r1, [r4]
	ldr r0, [sp, #4]
	orrs r0, r1
	strb r0, [r4]
	b _080390F4
	.align 2, 0
_08038E98: .4byte 0x00000103
_08038E9C: .4byte gKirbys
_08038EA0: .4byte gUnk_0203AD30
_08038EA4:
	adds r1, r7, #0
	adds r1, #0x62
	ldrb r2, [r1]
	movs r3, #4
	adds r0, r3, #0
	ands r0, r2
	adds r4, r1, #0
	cmp r0, #0
	beq _08038FA8
	mov r0, r8
	adds r0, #0x62
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08038FA8
	mov r0, ip
	cmp r0, #0
	beq _08038F94
	ldr r1, [r7, #0x40]
	mov r3, r8
	ldr r0, [r3, #0x40]
	cmp r1, r0
	ble _08038F34
	movs r1, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08038EE6
	ldr r0, [r7, #8]
	ands r0, r1
	cmp r0, #0
	beq _08038F00
_08038EE6:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08038EF6
	ldr r0, [r7, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038F00
_08038EF6:
	mov r1, sb
	adds r1, #0xf4
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
_08038F00:
	ldrb r1, [r4]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08038F16
	ldr r0, [r7, #8]
	ands r0, r2
	cmp r0, #0
	beq _08038F16
	b _080390F4
_08038F16:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08038F28
	ldr r0, [r7, #8]
	ands r0, r2
	cmp r0, #0
	bne _08038F28
	b _080390F4
_08038F28:
	mov r1, r8
	adds r1, #0xf4
	ldrh r0, [r1]
	subs r0, #0x40
	strh r0, [r1]
	b _080390F4
_08038F34:
	movs r1, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08038F46
	ldr r0, [r7, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038F60
_08038F46:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08038F56
	ldr r0, [r7, #8]
	ands r0, r1
	cmp r0, #0
	beq _08038F60
_08038F56:
	mov r1, sb
	adds r1, #0xf4
	ldrh r0, [r1]
	subs r0, #0x80
	strh r0, [r1]
_08038F60:
	ldrb r1, [r4]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08038F76
	ldr r0, [r7, #8]
	ands r0, r2
	cmp r0, #0
	bne _08038F76
	b _080390F4
_08038F76:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08038F88
	ldr r0, [r7, #8]
	ands r0, r2
	cmp r0, #0
	beq _08038F88
	b _080390F4
_08038F88:
	mov r1, r8
	adds r1, #0xf4
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	b _080390F4
_08038F94:
	movs r2, #0x82
	lsls r2, r2, #1
	add r2, sb
	lsls r1, r5, #2
	movs r0, #7
	lsls r0, r1
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	b _080390F4
_08038FA8:
	movs r3, #0x82
	lsls r3, r3, #1
	add r3, sb
	ldrh r2, [r3]
	lsls r1, r5, #2
	movs r0, #7
	lsls r0, r1
	ands r2, r0
	adds r6, r1, #0
	cmp r2, #0
	beq _08038FFE
	mov r0, ip
	cmp r0, #0
	beq _08039004
	ldr r1, [r7, #0x44]
	mov r2, r8
	ldr r0, [r2, #0x44]
	cmp r1, r0
	bge _08038FF4
	ldr r0, [r7, #0xc]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r7, #0xc]
	ldrb r1, [r4]
	movs r0, #4
	movs r2, #0
	orrs r0, r1
	strb r0, [r4]
	adds r0, r7, #0
	adds r0, #0x52
	strh r2, [r0]
	movs r1, #1
	lsls r1, r6
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r3]
	b _08038FFE
_08038FF4:
	adds r1, r7, #0
	adds r1, #0x55
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08038FFE:
	mov r3, ip
	cmp r3, #0
	bne _08039038
_08039004:
	movs r4, #0x82
	lsls r4, r4, #1
	add r4, sb
	ldrh r2, [r4]
	movs r3, #7
	lsls r3, r6
	adds r0, r2, #0
	ands r0, r3
	cmp r0, r3
	beq _08039034
	mov r6, r8
	ldr r0, [r6, #0x44]
	ldr r1, _0803902C @ =0xFFFFF000
	adds r0, r0, r1
	ldr r1, [r7, #0x44]
	cmp r1, r0
	ble _08039030
	bics r2, r3
	b _08039036
	.align 2, 0
_0803902C: .4byte 0xFFFFF000
_08039030:
	orrs r2, r3
	b _08039036
_08039034:
	orrs r2, r0
_08039036:
	strh r2, [r4]
_08039038:
	mov r0, r8
	adds r1, r7, #0
	bl sub_0803912C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	mov r0, sl
	muls r0, r5, r0
	ldr r2, _080390A0 @ =gKirbys
	adds r0, r0, r2
	movs r3, #0x82
	lsls r3, r3, #1
	adds r4, r0, r3
	ldrh r2, [r4]
	ldr r6, [sp]
	lsls r1, r6, #2
	movs r0, #7
	lsls r0, r1
	ands r2, r0
	adds r6, r1, #0
	cmp r2, #0
	beq _080390AE
	mov r0, ip
	cmp r0, #0
	beq _080390B4
	ldr r1, [r7, #0x44]
	mov r2, r8
	ldr r0, [r2, #0x44]
	cmp r1, r0
	ble _080390A4
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r2, #0xc]
	mov r3, r8
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #4
	movs r2, #0
	orrs r0, r1
	strb r0, [r3]
	mov r0, r8
	adds r0, #0x52
	strh r2, [r0]
	movs r1, #1
	lsls r1, r6
	ldrh r0, [r4]
	subs r0, r0, r1
	strh r0, [r4]
	b _080390AE
	.align 2, 0
_080390A0: .4byte gKirbys
_080390A4:
	mov r1, r8
	adds r1, #0x55
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080390AE:
	mov r3, ip
	cmp r3, #0
	bne _080390F4
_080390B4:
	mov r0, sl
	muls r0, r5, r0
	ldr r1, _080390E4 @ =gKirbys
	adds r0, r0, r1
	movs r2, #0x82
	lsls r2, r2, #1
	adds r4, r0, r2
	ldrh r2, [r4]
	movs r3, #7
	lsls r3, r6
	adds r0, r2, #0
	ands r0, r3
	cmp r0, r3
	beq _080390F0
	ldr r0, [r7, #0x44]
	ldr r6, _080390E8 @ =0xFFFFF000
	adds r0, r0, r6
	mov r6, r8
	ldr r1, [r6, #0x44]
	cmp r1, r0
	ble _080390EC
	bics r2, r3
	b _080390F2
	.align 2, 0
_080390E4: .4byte gKirbys
_080390E8: .4byte 0xFFFFF000
_080390EC:
	orrs r2, r3
	b _080390F2
_080390F0:
	orrs r2, r0
_080390F2:
	strh r2, [r4]
_080390F4:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _08039128 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r5, r0
	bhs _08039104
	b _08038BC0
_08039104:
	ldr r1, [sp, #8]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r6, _08039128 @ =gUnk_0203AD44
	ldrb r2, [r6]
	cmp r0, r2
	bhs _08039116
	b _08038B4E
_08039116:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039128: .4byte gUnk_0203AD44

	thumb_func_start sub_0803912C
sub_0803912C: @ 0x0803912C
	push {r4, r5, r6, lr}
	sub sp, #8
	mov ip, r0
	adds r3, r1, #0
	ldr r0, [r0, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08039156
	mov r1, sp
	mov r0, ip
	adds r0, #0x3c
	ldrb r0, [r0]
	rsbs r0, r0, #0
	strb r0, [r1, #2]
	mov r0, ip
	adds r0, #0x3e
	ldrb r0, [r0]
	rsbs r0, r0, #0
	strb r0, [r1]
	b _08039168
_08039156:
	mov r1, sp
	mov r0, ip
	adds r0, #0x3c
	ldrb r0, [r0]
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x3e
	ldrb r0, [r0]
	strb r0, [r1, #2]
_08039168:
	mov r1, sp
	mov r0, ip
	adds r0, #0x3d
	ldrb r0, [r0]
	strb r0, [r1, #1]
	mov r0, ip
	adds r0, #0x3f
	ldrb r0, [r0]
	strb r0, [r1, #3]
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0803919C
	add r1, sp, #4
	adds r0, r3, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	rsbs r0, r0, #0
	strb r0, [r1, #2]
	adds r0, r3, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	rsbs r0, r0, #0
	strb r0, [r1]
	b _080391AE
_0803919C:
	add r1, sp, #4
	adds r0, r3, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	strb r0, [r1, #2]
_080391AE:
	adds r6, r1, #0
	adds r0, r3, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	strb r0, [r6, #1]
	adds r0, r3, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	strb r0, [r6, #3]
	mov r0, sp
	movs r4, #0
	ldrsb r4, [r0, r4]
	lsls r1, r4, #8
	mov r2, ip
	ldr r0, [r2, #0x40]
	adds r2, r0, r1
	movs r5, #0
	ldrsb r5, [r6, r5]
	lsls r1, r5, #8
	ldr r0, [r3, #0x40]
	adds r1, r0, r1
	cmp r2, r1
	bgt _080391F2
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	lsls r0, r0, #8
	adds r0, r2, r0
	cmp r0, r1
	bge _08039200
	cmp r2, r1
	blt _08039252
_080391F2:
	movs r0, #2
	ldrsb r0, [r6, r0]
	subs r0, r0, r5
	lsls r0, r0, #8
	adds r0, r1, r0
	cmp r0, r2
	blt _08039252
_08039200:
	mov r0, sp
	movs r4, #1
	ldrsb r4, [r0, r4]
	lsls r1, r4, #8
	mov r2, ip
	ldr r0, [r2, #0x44]
	adds r2, r0, r1
	adds r0, r6, #0
	movs r5, #1
	ldrsb r5, [r0, r5]
	lsls r1, r5, #8
	ldr r0, [r3, #0x44]
	adds r1, r0, r1
	cmp r2, r1
	bgt _08039234
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	lsls r0, r0, #8
	adds r0, r2, r0
	cmp r0, r1
	bge _08039242
	cmp r2, r1
	blt _08039252
_08039234:
	movs r0, #3
	ldrsb r0, [r6, r0]
	subs r0, r0, r5
	lsls r0, r0, #8
	adds r0, r1, r0
	cmp r0, r2
	blt _08039252
_08039242:
	mov r0, ip
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _08039252
	movs r0, #1
	b _08039254
_08039252:
	movs r0, #0
_08039254:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0803925C
sub_0803925C: @ 0x0803925C
	push {r4, r5, lr}
	adds r3, r0, #0
	mov ip, r1
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0803928A
	ldr r2, [r3, #0x40]
	asrs r2, r2, #8
	adds r0, r3, #0
	adds r0, #0x38
	movs r1, #0
	ldrsb r1, [r0, r1]
	rsbs r1, r1, #0
	adds r0, #2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	subs r1, r1, r0
	adds r4, r2, r1
	b _0803929A
_0803928A:
	ldr r0, [r3, #0x40]
	asrs r0, r0, #8
	adds r1, r3, #0
	adds r1, #0x38
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r4, r0, r1
_0803929A:
	ldr r0, [r3, #0x44]
	asrs r0, r0, #8
	adds r1, r3, #0
	adds r1, #0x39
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r5, r0, r1
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080392D4
	mov r0, ip
	ldr r2, [r0, #0x40]
	asrs r2, r2, #8
	adds r0, #0x38
	movs r1, #0
	ldrsb r1, [r0, r1]
	rsbs r1, r1, #0
	adds r0, #2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	subs r1, r1, r0
	adds r2, r2, r1
	b _080392E4
_080392D4:
	mov r1, ip
	ldr r0, [r1, #0x40]
	asrs r0, r0, #8
	adds r1, #0x38
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
_080392E4:
	mov r1, ip
	ldr r0, [r1, #0x44]
	asrs r0, r0, #8
	adds r1, #0x39
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r1, r0, r1
	cmp r4, r2
	bgt _0803930E
	adds r0, r3, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r4, r0
	cmp r0, r2
	bge _08039320
	cmp r4, r2
	blt _08039350
_0803930E:
	mov r0, ip
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r2, r0
	cmp r0, r4
	blt _08039350
_08039320:
	cmp r5, r1
	bgt _0803933A
	adds r0, r3, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r5, r0
	cmp r0, r1
	bge _0803934C
	cmp r5, r1
	blt _08039350
_0803933A:
	mov r0, ip
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r1, r0
	cmp r0, r5
	blt _08039350
_0803934C:
	movs r0, #1
	b _08039352
_08039350:
	movs r0, #0
_08039352:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08039358
sub_08039358: @ 0x08039358
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080393AA
	mov r0, ip
	ldr r2, [r0, #0x40]
	asrs r2, r2, #8
	adds r0, #0x38
	movs r1, #0
	ldrsb r1, [r0, r1]
	rsbs r1, r1, #0
	adds r0, #2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	subs r1, r1, r0
	adds r2, r2, r1
	b _080393BA
_080393AA:
	mov r1, ip
	ldr r0, [r1, #0x40]
	asrs r0, r0, #8
	adds r1, #0x38
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
_080393BA:
	mov r1, ip
	ldr r0, [r1, #0x44]
	asrs r0, r0, #8
	adds r1, #0x39
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r4, r0, r1
	asrs r1, r6, #8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r3, r1, r0
	asrs r1, r7, #8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	cmp r2, r3
	bgt _080393F4
	mov r0, ip
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r2, r0
	cmp r0, r3
	bge _080393FC
	cmp r2, r3
	blt _08039422
_080393F4:
	mov r5, r8
	adds r0, r3, r5
	cmp r0, r2
	blt _08039422
_080393FC:
	cmp r4, r1
	bgt _08039416
	mov r0, ip
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r4, r0
	cmp r0, r1
	bge _0803941E
	cmp r4, r1
	blt _08039422
_08039416:
	mov r2, sb
	adds r0, r1, r2
	cmp r0, r4
	blt _08039422
_0803941E:
	movs r0, #1
	b _08039424
_08039422:
	movs r0, #0
_08039424:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08039430
sub_08039430: @ 0x08039430
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r5, [sp, #0x14]
	ldr r0, [sp, #0x18]
	ldr r4, [sp, #0x1c]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	asrs r1, r1, #8
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r1, r1, r3
	asrs r2, r2, #8
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r2, r2, r5
	ldr r0, [r7, #0x40]
	asrs r3, r0, #8
	cmp r3, r1
	bgt _08039464
	adds r0, r3, #1
	cmp r0, r1
	bge _0803946A
	cmp r3, r1
	blt _08039486
_08039464:
	adds r0, r1, r6
	cmp r0, r3
	blt _08039486
_0803946A:
	ldr r0, [r7, #0x44]
	asrs r1, r0, #8
	cmp r1, r2
	bgt _0803947C
	adds r0, r1, #1
	cmp r0, r2
	bge _08039482
	cmp r1, r2
	blt _08039486
_0803947C:
	adds r0, r2, r4
	cmp r0, r1
	blt _08039486
_08039482:
	movs r0, #1
	b _08039488
_08039486:
	movs r0, #0
_08039488:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08039490
sub_08039490: @ 0x08039490
	push {lr}
	adds r1, r0, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080394B8
	ldr r2, _080394B0 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080394B4 @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	b _080394BA
	.align 2, 0
_080394B0: .4byte gCurLevelInfo
_080394B4: .4byte 0x0000065E
_080394B8:
	movs r0, #0xff
_080394BA:
	lsls r0, r0, #8
	ldr r1, _080394C4 @ =gUnk_02022F50
	adds r0, r0, r1
	pop {r1}
	bx r1
	.align 2, 0
_080394C4: .4byte gUnk_02022F50

	thumb_func_start sub_080394C8
sub_080394C8: @ 0x080394C8
	push {lr}
	adds r1, r0, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080394F0
	ldr r2, _080394E8 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080394EC @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	b _080394F2
	.align 2, 0
_080394E8: .4byte gCurLevelInfo
_080394EC: .4byte 0x0000065E
_080394F0:
	movs r0, #0xff
_080394F2:
	lsls r0, r0, #5
	ldr r1, _080394FC @ =gUnk_02022EC0
	adds r0, r0, r1
	pop {r1}
	bx r1
	.align 2, 0
_080394FC: .4byte gUnk_02022EC0

	thumb_func_start nullsub_119
nullsub_119: @ 0x08039500
	bx lr
	.align 2, 0

	thumb_func_start sub_08039504
sub_08039504: @ 0x08039504
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	ldr r2, _0803956C @ =gUnk_03002440
	ldr r0, [r2]
	ldr r1, _08039570 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2]
	movs r0, #0
	mov r1, r8
	strh r0, [r1, #0xa]
	ldr r0, _08039574 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r3, #2
	ands r0, r3
	cmp r0, #0
	beq _08039588
	movs r3, #0
	ldr r4, _08039578 @ =gUnk_0203AD30
	ldr r0, _0803957C @ =sub_08039F74
	mov sb, r0
	ldrb r1, [r4]
	cmp r3, r1
	bhs _080395A2
	movs r0, #0xd4
	lsls r0, r0, #1
	mov ip, r0
	ldr r7, _08039580 @ =gUnk_020382D0 + 8
	ldr r6, _08039584 @ =gKirbys
	movs r5, #0x8c
	lsls r5, r5, #1
_08039546:
	mov r2, ip
	muls r2, r3, r2
	adds r2, r2, r6
	lsls r0, r3, #1
	adds r0, r0, r7
	ldrh r1, [r0]
	adds r2, r2, r5
	movs r0, #2
	ands r1, r0
	ldrh r0, [r2]
	orrs r1, r0
	strh r1, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrb r1, [r4]
	cmp r3, r1
	blo _08039546
	b _080395A2
	.align 2, 0
_0803956C: .4byte gUnk_03002440
_08039570: .4byte 0xFFFFFBFF
_08039574: .4byte gUnk_0203AD10
_08039578: .4byte gUnk_0203AD30
_0803957C: .4byte sub_08039F74
_08039580: .4byte gUnk_020382D0 + 8
_08039584: .4byte gKirbys
_08039588:
	ldr r2, _080395B4 @ =gKirbys
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r2, r0
	ldr r0, _080395B8 @ =gInput
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080395BC @ =sub_08039F74
	mov sb, r1
_080395A2:
	mov r0, sb
	mov r1, r8
	str r0, [r1]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080395B4: .4byte gKirbys
_080395B8: .4byte gInput
_080395BC: .4byte sub_08039F74

	thumb_func_start sub_080395C0
sub_080395C0: @ 0x080395C0
	push {lr}
	ldr r1, _080395D0 @ =gUnk_0203AD4C
	movs r0, #0
	str r0, [r1]
	bl sub_08124E80
	pop {r0}
	bx r0
	.align 2, 0
_080395D0: .4byte gUnk_0203AD4C

	thumb_func_start sub_080395D4
sub_080395D4: @ 0x080395D4
	push {lr}
	ldr r0, _080395F0 @ =gUnk_03002440
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080395EC
	ldr r0, _080395F4 @ =gUnk_0203AD4C
	ldr r0, [r0]
	cmp r0, #0
	beq _080395F8
_080395EC:
	movs r0, #0
	b _080395FA
	.align 2, 0
_080395F0: .4byte gUnk_03002440
_080395F4: .4byte gUnk_0203AD4C
_080395F8:
	movs r0, #1
_080395FA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08039600
sub_08039600: @ 0x08039600
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08039634 @ =sub_08039D7C
	ldr r1, _08039638 @ =sub_08039DB0
	str r1, [sp]
	movs r1, #0xc
	movs r2, #1
	movs r3, #4
	bl TaskCreate
	adds r2, r0, #0
	ldr r0, _0803963C @ =gUnk_0203AD4C
	str r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08039640
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08039648
	.align 2, 0
_08039634: .4byte sub_08039D7C
_08039638: .4byte sub_08039DB0
_0803963C: .4byte gUnk_0203AD4C
_08039640:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08039648:
	ldr r0, _08039668 @ =sub_08039E04
	str r0, [r1]
	movs r0, #0
	strh r4, [r1, #8]
	str r0, [r1, #4]
	ldr r2, _0803966C @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08039668: .4byte sub_08039E04
_0803966C: .4byte gUnk_03002440

	thumb_func_start sub_08039670
sub_08039670: @ 0x08039670
	push {lr}
	sub sp, #4
	ldr r0, _08039690 @ =gUnk_0203AD4C
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08039694
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _0803969C
	.align 2, 0
_08039690: .4byte gUnk_0203AD4C
_08039694:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_0803969C:
	movs r0, #1
	str r0, [r1, #4]
	movs r0, #0
	str r0, [sp]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _080396B8 @ =0x05004000
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080396B8: .4byte 0x05004000

	thumb_func_start sub_080396BC
sub_080396BC: @ 0x080396BC
	push {lr}
	sub sp, #4
	ldr r0, _080396EC @ =sub_08039D7C
	ldr r1, _080396F0 @ =sub_08039DB0
	str r1, [sp]
	movs r1, #0xc
	movs r2, #1
	movs r3, #4
	bl TaskCreate
	adds r2, r0, #0
	ldr r0, _080396F4 @ =gUnk_0203AD4C
	str r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080396F8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	b _080396FE
	.align 2, 0
_080396EC: .4byte sub_08039D7C
_080396F0: .4byte sub_08039DB0
_080396F4: .4byte gUnk_0203AD4C
_080396F8:
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
_080396FE:
	adds r2, r0, r1
	ldr r0, _08039720 @ =sub_08039E04
	str r0, [r2]
	movs r1, #0
	movs r0, #9
	strh r0, [r2, #8]
	str r1, [r2, #4]
	ldr r2, _08039724 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08039720: .4byte sub_08039E04
_08039724: .4byte gUnk_03002440

	thumb_func_start sub_08039728
sub_08039728: @ 0x08039728
	push {lr}
	sub sp, #4
	ldr r0, _08039758 @ =sub_08039D7C
	ldr r1, _0803975C @ =sub_08039DB0
	str r1, [sp]
	movs r1, #0xc
	movs r2, #1
	movs r3, #4
	bl TaskCreate
	adds r2, r0, #0
	ldr r0, _08039760 @ =gUnk_0203AD4C
	str r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08039764
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	b _0803976A
	.align 2, 0
_08039758: .4byte sub_08039D7C
_0803975C: .4byte sub_08039DB0
_08039760: .4byte gUnk_0203AD4C
_08039764:
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
_0803976A:
	adds r2, r0, r1
	ldr r0, _0803978C @ =sub_08039E04
	str r0, [r2]
	movs r1, #0
	movs r0, #0xa
	strh r0, [r2, #8]
	str r1, [r2, #4]
	ldr r2, _08039790 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0803978C: .4byte sub_08039E04
_08039790: .4byte gUnk_03002440

	thumb_func_start sub_08039794
sub_08039794: @ 0x08039794
	push {lr}
	sub sp, #4
	ldr r0, _080397C4 @ =sub_08039D7C
	ldr r1, _080397C8 @ =sub_08039DB0
	str r1, [sp]
	movs r1, #0xc
	movs r2, #1
	movs r3, #4
	bl TaskCreate
	adds r2, r0, #0
	ldr r0, _080397CC @ =gUnk_0203AD4C
	str r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080397D0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	b _080397D6
	.align 2, 0
_080397C4: .4byte sub_08039D7C
_080397C8: .4byte sub_08039DB0
_080397CC: .4byte gUnk_0203AD4C
_080397D0:
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
_080397D6:
	adds r2, r0, r1
	ldr r0, _080397F8 @ =sub_08039E04
	str r0, [r2]
	movs r1, #0
	movs r0, #0xb
	strh r0, [r2, #8]
	str r1, [r2, #4]
	ldr r2, _080397FC @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080397F8: .4byte sub_08039E04
_080397FC: .4byte gUnk_03002440

	thumb_func_start sub_08039800
sub_08039800: @ 0x08039800
	push {lr}
	sub sp, #4
	ldr r0, _08039830 @ =sub_08039D7C
	ldr r1, _08039834 @ =sub_08039DB0
	str r1, [sp]
	movs r1, #0xc
	movs r2, #1
	movs r3, #4
	bl TaskCreate
	adds r2, r0, #0
	ldr r0, _08039838 @ =gUnk_0203AD4C
	str r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803983C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	b _08039842
	.align 2, 0
_08039830: .4byte sub_08039D7C
_08039834: .4byte sub_08039DB0
_08039838: .4byte gUnk_0203AD4C
_0803983C:
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
_08039842:
	adds r2, r0, r1
	ldr r0, _08039864 @ =sub_08039E04
	str r0, [r2]
	movs r1, #0
	movs r0, #0xc
	strh r0, [r2, #8]
	str r1, [r2, #4]
	ldr r2, _08039868 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08039864: .4byte sub_08039E04
_08039868: .4byte gUnk_03002440

	thumb_func_start sub_0803986C
sub_0803986C: @ 0x0803986C
	push {lr}
	sub sp, #4
	ldr r0, _0803989C @ =sub_08039D7C
	ldr r1, _080398A0 @ =sub_08039DB0
	str r1, [sp]
	movs r1, #0xc
	movs r2, #1
	movs r3, #4
	bl TaskCreate
	adds r2, r0, #0
	ldr r0, _080398A4 @ =gUnk_0203AD4C
	str r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080398A8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	b _080398AE
	.align 2, 0
_0803989C: .4byte sub_08039D7C
_080398A0: .4byte sub_08039DB0
_080398A4: .4byte gUnk_0203AD4C
_080398A8:
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
_080398AE:
	adds r2, r0, r1
	ldr r0, _080398D0 @ =sub_08039E04
	str r0, [r2]
	movs r1, #0
	movs r0, #0xd
	strh r0, [r2, #8]
	str r1, [r2, #4]
	ldr r2, _080398D4 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080398D0: .4byte sub_08039E04
_080398D4: .4byte gUnk_03002440

	thumb_func_start sub_080398D8
sub_080398D8: @ 0x080398D8
	push {lr}
	sub sp, #4
	ldr r0, _08039908 @ =sub_08039D7C
	ldr r1, _0803990C @ =sub_08039DB0
	str r1, [sp]
	movs r1, #0xc
	movs r2, #1
	movs r3, #4
	bl TaskCreate
	adds r2, r0, #0
	ldr r0, _08039910 @ =gUnk_0203AD4C
	str r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08039914
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	b _0803991A
	.align 2, 0
_08039908: .4byte sub_08039D7C
_0803990C: .4byte sub_08039DB0
_08039910: .4byte gUnk_0203AD4C
_08039914:
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
_0803991A:
	adds r2, r0, r1
	ldr r0, _0803993C @ =sub_08039E04
	str r0, [r2]
	movs r1, #0
	movs r0, #0xe
	strh r0, [r2, #8]
	str r1, [r2, #4]
	ldr r2, _08039940 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0803993C: .4byte sub_08039E04
_08039940: .4byte gUnk_03002440

	thumb_func_start sub_08039944
sub_08039944: @ 0x08039944
	push {lr}
	sub sp, #4
	ldr r0, _08039974 @ =sub_08039D7C
	ldr r1, _08039978 @ =sub_08039DB0
	str r1, [sp]
	movs r1, #0xc
	movs r2, #1
	movs r3, #4
	bl TaskCreate
	adds r2, r0, #0
	ldr r0, _0803997C @ =gUnk_0203AD4C
	str r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08039980
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	b _08039986
	.align 2, 0
_08039974: .4byte sub_08039D7C
_08039978: .4byte sub_08039DB0
_0803997C: .4byte gUnk_0203AD4C
_08039980:
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
_08039986:
	adds r2, r0, r1
	ldr r0, _080399A8 @ =sub_08039E04
	str r0, [r2]
	movs r1, #0
	movs r0, #0xf
	strh r0, [r2, #8]
	str r1, [r2, #4]
	ldr r2, _080399AC @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080399A8: .4byte sub_08039E04
_080399AC: .4byte gUnk_03002440

	thumb_func_start sub_080399B0
sub_080399B0: @ 0x080399B0
	push {r4, lr}
	sub sp, #4
	movs r4, #0x10
	ldr r0, _080399E0 @ =sub_08039D7C
	ldr r1, _080399E4 @ =sub_08039DB0
	str r1, [sp]
	movs r1, #0xc
	movs r2, #1
	movs r3, #4
	bl TaskCreate
	adds r2, r0, #0
	ldr r0, _080399E8 @ =gUnk_0203AD4C
	str r2, [r0]
	ldrh r1, [r2, #0x12]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080399EC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r2, #0x80
	lsls r2, r2, #0x12
	b _080399F2
	.align 2, 0
_080399E0: .4byte sub_08039D7C
_080399E4: .4byte sub_08039DB0
_080399E8: .4byte gUnk_0203AD4C
_080399EC:
	ldrh r0, [r2, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
_080399F2:
	adds r1, r0, r2
	ldr r0, _08039A14 @ =sub_08039E04
	str r0, [r1]
	movs r0, #0
	strh r4, [r1, #8]
	str r0, [r1, #4]
	ldr r2, _08039A18 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08039A14: .4byte sub_08039E04
_08039A18: .4byte gUnk_03002440

	thumb_func_start sub_08039A1C
sub_08039A1C: @ 0x08039A1C
	push {lr}
	sub sp, #4
	ldr r0, _08039A4C @ =sub_08039D7C
	ldr r1, _08039A50 @ =sub_08039DB0
	str r1, [sp]
	movs r1, #0xc
	movs r2, #1
	movs r3, #4
	bl TaskCreate
	adds r2, r0, #0
	ldr r0, _08039A54 @ =gUnk_0203AD4C
	str r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08039A58
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	b _08039A5E
	.align 2, 0
_08039A4C: .4byte sub_08039D7C
_08039A50: .4byte sub_08039DB0
_08039A54: .4byte gUnk_0203AD4C
_08039A58:
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
_08039A5E:
	adds r2, r0, r1
	ldr r0, _08039A80 @ =sub_08039E04
	str r0, [r2]
	movs r1, #0
	movs r0, #0x11
	strh r0, [r2, #8]
	str r1, [r2, #4]
	ldr r2, _08039A84 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08039A80: .4byte sub_08039E04
_08039A84: .4byte gUnk_03002440

	thumb_func_start sub_08039A88
sub_08039A88: @ 0x08039A88
	push {lr}
	sub sp, #4
	ldr r0, _08039AB8 @ =sub_08039D7C
	ldr r1, _08039ABC @ =sub_08039DB0
	str r1, [sp]
	movs r1, #0xc
	movs r2, #1
	movs r3, #4
	bl TaskCreate
	adds r2, r0, #0
	ldr r0, _08039AC0 @ =gUnk_0203AD4C
	str r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08039AC4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	b _08039ACA
	.align 2, 0
_08039AB8: .4byte sub_08039D7C
_08039ABC: .4byte sub_08039DB0
_08039AC0: .4byte gUnk_0203AD4C
_08039AC4:
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
_08039ACA:
	adds r2, r0, r1
	ldr r0, _08039AEC @ =sub_08039E04
	str r0, [r2]
	movs r1, #0
	movs r0, #0x12
	strh r0, [r2, #8]
	str r1, [r2, #4]
	ldr r2, _08039AF0 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08039AEC: .4byte sub_08039E04
_08039AF0: .4byte gUnk_03002440

	thumb_func_start sub_08039AF4
sub_08039AF4: @ 0x08039AF4
	push {lr}
	sub sp, #4
	ldr r0, _08039B24 @ =sub_08039D7C
	ldr r1, _08039B28 @ =sub_08039DB0
	str r1, [sp]
	movs r1, #0xc
	movs r2, #1
	movs r3, #4
	bl TaskCreate
	adds r2, r0, #0
	ldr r0, _08039B2C @ =gUnk_0203AD4C
	str r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08039B30
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	b _08039B36
	.align 2, 0
_08039B24: .4byte sub_08039D7C
_08039B28: .4byte sub_08039DB0
_08039B2C: .4byte gUnk_0203AD4C
_08039B30:
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
_08039B36:
	adds r2, r0, r1
	ldr r0, _08039B58 @ =sub_08039E04
	str r0, [r2]
	movs r1, #0
	movs r0, #0x13
	strh r0, [r2, #8]
	str r1, [r2, #4]
	ldr r2, _08039B5C @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08039B58: .4byte sub_08039E04
_08039B5C: .4byte gUnk_03002440

	thumb_func_start sub_08039B60
sub_08039B60: @ 0x08039B60
	push {lr}
	sub sp, #4
	ldr r0, _08039B90 @ =sub_08039D7C
	ldr r1, _08039B94 @ =sub_08039DB0
	str r1, [sp]
	movs r1, #0xc
	movs r2, #1
	movs r3, #4
	bl TaskCreate
	adds r2, r0, #0
	ldr r0, _08039B98 @ =gUnk_0203AD4C
	str r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08039B9C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	b _08039BA2
	.align 2, 0
_08039B90: .4byte sub_08039D7C
_08039B94: .4byte sub_08039DB0
_08039B98: .4byte gUnk_0203AD4C
_08039B9C:
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
_08039BA2:
	adds r2, r0, r1
	ldr r0, _08039BC4 @ =sub_08039E04
	str r0, [r2]
	movs r1, #0
	movs r0, #0x14
	strh r0, [r2, #8]
	str r1, [r2, #4]
	ldr r2, _08039BC8 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08039BC4: .4byte sub_08039E04
_08039BC8: .4byte gUnk_03002440

	thumb_func_start sub_08039BCC
sub_08039BCC: @ 0x08039BCC
	push {lr}
	sub sp, #4
	ldr r0, _08039BFC @ =sub_08039D7C
	ldr r1, _08039C00 @ =sub_08039DB0
	str r1, [sp]
	movs r1, #0xc
	movs r2, #1
	movs r3, #4
	bl TaskCreate
	adds r2, r0, #0
	ldr r0, _08039C04 @ =gUnk_0203AD4C
	str r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08039C08
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	b _08039C0E
	.align 2, 0
_08039BFC: .4byte sub_08039D7C
_08039C00: .4byte sub_08039DB0
_08039C04: .4byte gUnk_0203AD4C
_08039C08:
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
_08039C0E:
	adds r2, r0, r1
	ldr r0, _08039C30 @ =sub_08039E04
	str r0, [r2]
	movs r1, #0
	movs r0, #0x15
	strh r0, [r2, #8]
	str r1, [r2, #4]
	ldr r2, _08039C34 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08039C30: .4byte sub_08039E04
_08039C34: .4byte gUnk_03002440

	thumb_func_start sub_08039C38
sub_08039C38: @ 0x08039C38
	push {lr}
	sub sp, #4
	ldr r0, _08039C68 @ =sub_08039D7C
	ldr r1, _08039C6C @ =sub_08039DB0
	str r1, [sp]
	movs r1, #0xc
	movs r2, #1
	movs r3, #4
	bl TaskCreate
	adds r2, r0, #0
	ldr r0, _08039C70 @ =gUnk_0203AD4C
	str r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08039C74
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	b _08039C7A
	.align 2, 0
_08039C68: .4byte sub_08039D7C
_08039C6C: .4byte sub_08039DB0
_08039C70: .4byte gUnk_0203AD4C
_08039C74:
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
_08039C7A:
	adds r2, r0, r1
	ldr r0, _08039C9C @ =sub_08039E04
	str r0, [r2]
	movs r1, #0
	movs r0, #0x16
	strh r0, [r2, #8]
	str r1, [r2, #4]
	ldr r2, _08039CA0 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08039C9C: .4byte sub_08039E04
_08039CA0: .4byte gUnk_03002440

	thumb_func_start sub_08039CA4
sub_08039CA4: @ 0x08039CA4
	push {lr}
	sub sp, #4
	ldr r0, _08039CD4 @ =sub_08039D7C
	ldr r1, _08039CD8 @ =sub_08039DB0
	str r1, [sp]
	movs r1, #0xc
	movs r2, #1
	movs r3, #4
	bl TaskCreate
	adds r2, r0, #0
	ldr r0, _08039CDC @ =gUnk_0203AD4C
	str r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08039CE0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	b _08039CE6
	.align 2, 0
_08039CD4: .4byte sub_08039D7C
_08039CD8: .4byte sub_08039DB0
_08039CDC: .4byte gUnk_0203AD4C
_08039CE0:
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
_08039CE6:
	adds r2, r0, r1
	ldr r0, _08039D08 @ =sub_08039E04
	str r0, [r2]
	movs r1, #0
	movs r0, #0x17
	strh r0, [r2, #8]
	str r1, [r2, #4]
	ldr r2, _08039D0C @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08039D08: .4byte sub_08039E04
_08039D0C: .4byte gUnk_03002440

	thumb_func_start sub_08039D10
sub_08039D10: @ 0x08039D10
	push {lr}
	sub sp, #4
	ldr r0, _08039D40 @ =sub_08039D7C
	ldr r1, _08039D44 @ =sub_08039DB0
	str r1, [sp]
	movs r1, #0xc
	movs r2, #1
	movs r3, #4
	bl TaskCreate
	adds r2, r0, #0
	ldr r0, _08039D48 @ =gUnk_0203AD4C
	str r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08039D4C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	b _08039D52
	.align 2, 0
_08039D40: .4byte sub_08039D7C
_08039D44: .4byte sub_08039DB0
_08039D48: .4byte gUnk_0203AD4C
_08039D4C:
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
_08039D52:
	adds r2, r0, r1
	ldr r0, _08039D74 @ =sub_08039E04
	str r0, [r2]
	movs r1, #0
	movs r0, #0x18
	strh r0, [r2, #8]
	str r1, [r2, #4]
	ldr r2, _08039D78 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08039D74: .4byte sub_08039E04
_08039D78: .4byte gUnk_03002440

	thumb_func_start sub_08039D7C
sub_08039D7C: @ 0x08039D7C
	push {lr}
	ldr r0, _08039D98 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08039D9C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08039DA4
	.align 2, 0
_08039D98: .4byte gCurTask
_08039D9C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08039DA4:
	ldr r1, [r0]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08039DB0
sub_08039DB0: @ 0x08039DB0
	push {r4, r5, lr}
	movs r0, #0x16
	bl m4aSongNumContinue
	movs r0, #0x17
	bl m4aSongNumContinue
	ldr r0, _08039DF0 @ =gUnk_030016E0
	ldr r4, _08039DF4 @ =0x0000FFFF
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r4, #0
	adds r2, r5, #0
	bl m4aMPlayVolumeControl
	ldr r0, _08039DF8 @ =gUnk_03001720
	adds r1, r4, #0
	adds r2, r5, #0
	bl m4aMPlayVolumeControl
	ldr r0, _08039DFC @ =gUnk_03001770
	adds r1, r4, #0
	adds r2, r5, #0
	bl m4aMPlayVolumeControl
	ldr r1, _08039E00 @ =gUnk_0203AD4C
	movs r0, #0
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08039DF0: .4byte gUnk_030016E0
_08039DF4: .4byte 0x0000FFFF
_08039DF8: .4byte gUnk_03001720
_08039DFC: .4byte gUnk_03001770
_08039E00: .4byte gUnk_0203AD4C

	thumb_func_start sub_08039E04
sub_08039E04: @ 0x08039E04
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	cmp r0, #0
	bne _08039E16
	movs r0, #0xfc
	lsls r0, r0, #1
	bl m4aSongNumStart
_08039E16:
	ldr r0, _08039E20 @ =sub_08039E24
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08039E20: .4byte sub_08039E24

	thumb_func_start sub_08039E24
sub_08039E24: @ 0x08039E24
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r4, #0xa]
	movs r0, #7
	bl sub_0803CA20
	ldrh r2, [r0, #8]
	movs r1, #0x80
	orrs r1, r2
	strh r1, [r0, #8]
	ldr r1, _08039E50 @ =0x0000FFFF
	strh r1, [r0, #4]
	movs r1, #1
	rsbs r1, r1, #0
	strh r1, [r0, #6]
	ldr r0, _08039E54 @ =sub_08039E58
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08039E50: .4byte 0x0000FFFF
_08039E54: .4byte sub_08039E58

	thumb_func_start sub_08039E58
sub_08039E58: @ 0x08039E58
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r4, #0xa]
	adds r0, #1
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bls _08039EB2
	ldr r1, _08039EBC @ =0x00007FFF
	mov r0, sp
	strh r1, [r0]
	movs r1, #0
	movs r2, #1
	bl sub_0803D21C
	ldr r0, _08039EC0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08039E8C
	movs r0, #8
	bl sub_08031CE4
_08039E8C:
	ldr r0, _08039EC4 @ =sub_08039ED4
	str r0, [r4]
	movs r0, #0x16
	bl m4aSongNumStop
	movs r0, #0x17
	bl m4aSongNumStop
	ldr r0, _08039EC8 @ =gUnk_030016E0
	ldr r4, _08039ECC @ =0x0000FFFF
	adds r1, r4, #0
	movs r2, #0
	bl m4aMPlayVolumeControl
	ldr r0, _08039ED0 @ =gUnk_03001720
	adds r1, r4, #0
	movs r2, #0
	bl m4aMPlayVolumeControl
_08039EB2:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08039EBC: .4byte 0x00007FFF
_08039EC0: .4byte gUnk_0203AD10
_08039EC4: .4byte sub_08039ED4
_08039EC8: .4byte gUnk_030016E0
_08039ECC: .4byte 0x0000FFFF
_08039ED0: .4byte gUnk_03001720

	thumb_func_start sub_08039ED4
sub_08039ED4: @ 0x08039ED4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08020220
	bl sub_0803D2D0
	bl sub_080006EC
	ldr r1, _08039EFC @ =gUnk_0834BD94
	ldrh r0, [r4, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldr r0, _08039F00 @ =sub_08039F04
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08039EFC: .4byte gUnk_0834BD94
_08039F00: .4byte sub_08039F04

	thumb_func_start sub_08039F04
sub_08039F04: @ 0x08039F04
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080203C8
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _08039F28
	ldr r0, _08039F30 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08039F24
	movs r0, #8
	bl sub_08031CE4
_08039F24:
	ldr r0, _08039F34 @ =sub_08039F38
	str r0, [r4]
_08039F28:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08039F30: .4byte gUnk_0203AD10
_08039F34: .4byte sub_08039F38

	thumb_func_start sub_08039F38
sub_08039F38: @ 0x08039F38
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08020370
	bl sub_0803D2EC
	bl sub_08000798
	ldr r0, _08039F68 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	ldr r1, _08039F6C @ =gKirbys
	adds r0, r0, r1
	bl sub_08035788
	bl sub_0806F734
	ldr r0, _08039F70 @ =sub_08039504
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08039F68: .4byte gUnk_0203AD3C
_08039F6C: .4byte gKirbys
_08039F70: .4byte sub_08039504

	thumb_func_start sub_08039F74
sub_08039F74: @ 0x08039F74
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0xa]
	adds r1, r0, #1
	strh r1, [r2, #0xa]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _08039F8A
	ldr r0, _08039F90 @ =sub_08039F94
	str r0, [r2]
_08039F8A:
	pop {r0}
	bx r0
	.align 2, 0
_08039F90: .4byte sub_08039F94

	thumb_func_start sub_08039F94
sub_08039F94: @ 0x08039F94
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r4, #0xa]
	movs r0, #7
	bl sub_0803C95C
	ldrh r2, [r0, #8]
	movs r1, #0x80
	orrs r1, r2
	strh r1, [r0, #8]
	ldr r1, _08039FD8 @ =0x0000FFFF
	strh r1, [r0, #4]
	movs r1, #1
	rsbs r1, r1, #0
	strh r1, [r0, #6]
	ldr r1, _08039FDC @ =0x00007FFF
	mov r0, sp
	strh r1, [r0]
	movs r1, #0
	movs r2, #1
	bl sub_0803D21C
	ldr r1, _08039FE0 @ =sub_08039FE4
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08039FD8: .4byte 0x0000FFFF
_08039FDC: .4byte 0x00007FFF
_08039FE0: .4byte sub_08039FE4

	thumb_func_start sub_08039FE4
sub_08039FE4: @ 0x08039FE4
	push {lr}
	ldr r0, _08039FF4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_08039FF4: .4byte gCurTask

	thumb_func_start sub_08039FF8
sub_08039FF8: @ 0x08039FF8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r4, _0803A050 @ =gUnk_02022920
	ldr r0, [r4]
	ldr r6, _0803A054 @ =gUnk_02022930
	cmp r0, #0
	bne _0803A032
	ldr r0, _0803A058 @ =sub_0803A1F4
	ldr r2, _0803A05C @ =0x0000FFFE
	ldr r1, _0803A060 @ =sub_0803D318
	str r1, [sp]
	movs r1, #0
	movs r3, #4
	bl TaskCreate
	str r0, [r4]
	movs r1, #0
	adds r3, r6, #0
	adds r3, #0x80
	movs r2, #0
_0803A022:
	lsls r0, r1, #2
	adds r0, r3, r0
	str r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #7
	bls _0803A022
_0803A032:
	adds r4, r6, #0
	adds r4, #0x80
	ldr r1, [r4]
	cmp r1, #0
	beq _0803A06C
	ldrb r0, [r1, #3]
	ldrb r2, [r5, #3]
	cmp r0, r2
	bhi _0803A064
	adds r0, r5, #0
	movs r1, #1
	bl sub_0803D324
	b _0803A06E
	.align 2, 0
_0803A050: .4byte gUnk_02022920
_0803A054: .4byte gUnk_02022930
_0803A058: .4byte sub_0803A1F4
_0803A05C: .4byte 0x0000FFFE
_0803A060: .4byte sub_0803D318
_0803A064:
	adds r0, r1, #0
	movs r1, #1
	bl sub_0803D324
_0803A06C:
	str r5, [r4]
_0803A06E:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803A078
sub_0803A078: @ 0x0803A078
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r2, _0803A1F0 @ =gUnk_02022930
	adds r0, r2, #0
	adds r0, #0x80
	ldr r0, [r0]
	cmp r0, #0
	bne _0803A0D8
	adds r0, r2, #0
	adds r0, #0x84
	ldr r1, [r0]
	str r0, [sp]
	cmp r1, #0
	bne _0803A0D8
	adds r0, #4
	ldr r1, [r0]
	str r0, [sp, #4]
	cmp r1, #0
	bne _0803A0D8
	adds r0, #4
	ldr r1, [r0]
	mov sl, r0
	cmp r1, #0
	bne _0803A0D8
	adds r0, #4
	ldr r1, [r0]
	mov sb, r0
	cmp r1, #0
	bne _0803A0D8
	adds r0, #4
	ldr r1, [r0]
	mov r8, r0
	cmp r1, #0
	bne _0803A0D8
	adds r0, #4
	ldr r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	bne _0803A10C
	adds r0, #4
	ldr r0, [r0]
	cmp r0, #0
	bne _0803A0D8
	b _0803A1E0
_0803A0D8:
	adds r0, r2, #0
	adds r0, #0x98
	ldr r3, [r0]
	adds r1, r2, #0
	adds r1, #0x84
	str r1, [sp]
	adds r4, r2, #0
	adds r4, #0x88
	str r4, [sp, #4]
	movs r1, #0x8c
	adds r1, r1, r2
	mov sl, r1
	movs r4, #0x90
	adds r4, r4, r2
	mov sb, r4
	movs r1, #0x94
	adds r1, r1, r2
	mov r8, r1
	adds r7, r0, #0
	cmp r3, #0
	bne _0803A10C
	adds r1, r2, #0
	adds r1, #0x9c
	ldr r0, [r1]
	str r0, [r7]
	str r3, [r1]
_0803A10C:
	mov r3, r8
	ldr r4, [r3]
	cmp r4, #0
	bne _0803A122
	ldr r0, [r7]
	str r0, [r3]
	adds r1, r2, #0
	adds r1, #0x9c
	ldr r0, [r1]
	str r0, [r7]
	str r4, [r1]
_0803A122:
	mov r4, sb
	ldr r5, [r4]
	cmp r5, #0
	bne _0803A13C
	ldr r0, [r3]
	str r0, [r4]
	ldr r0, [r7]
	str r0, [r3]
	adds r1, r2, #0
	adds r1, #0x9c
	ldr r0, [r1]
	str r0, [r7]
	str r5, [r1]
_0803A13C:
	mov r6, sl
	ldr r5, [r6]
	cmp r5, #0
	bne _0803A15A
	ldr r0, [r4]
	str r0, [r6]
	ldr r0, [r3]
	str r0, [r4]
	ldr r0, [r7]
	str r0, [r3]
	adds r1, r2, #0
	adds r1, #0x9c
	ldr r0, [r1]
	str r0, [r7]
	str r5, [r1]
_0803A15A:
	ldr r5, [sp, #4]
	ldr r0, [r5]
	mov ip, r0
	cmp r0, #0
	bne _0803A180
	ldr r0, [r6]
	str r0, [r5]
	ldr r0, [r4]
	str r0, [r6]
	ldr r0, [r3]
	str r0, [r4]
	ldr r0, [r7]
	str r0, [r3]
	adds r1, r2, #0
	adds r1, #0x9c
	ldr r0, [r1]
	str r0, [r7]
	mov r0, ip
	str r0, [r1]
_0803A180:
	ldr r1, [sp]
	ldr r0, [r1]
	mov ip, r0
	cmp r0, #0
	bne _0803A1AA
	ldr r0, [r5]
	str r0, [r1]
	ldr r0, [r6]
	str r0, [r5]
	ldr r0, [r4]
	str r0, [r6]
	ldr r0, [r3]
	str r0, [r4]
	ldr r0, [r7]
	str r0, [r3]
	adds r1, r2, #0
	adds r1, #0x9c
	ldr r0, [r1]
	str r0, [r7]
	mov r4, ip
	str r4, [r1]
_0803A1AA:
	adds r1, r2, #0
	adds r1, #0x80
	ldr r3, [r1]
	cmp r3, #0
	bne _0803A1E0
	ldr r4, [sp]
	ldr r0, [r4]
	str r0, [r1]
	ldr r1, [sp, #4]
	ldr r0, [r1]
	str r0, [r4]
	mov r4, sl
	ldr r0, [r4]
	str r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	str r0, [r4]
	mov r4, r8
	ldr r0, [r4]
	str r0, [r1]
	ldr r0, [r7]
	str r0, [r4]
	adds r1, r2, #0
	adds r1, #0x9c
	ldr r0, [r1]
	str r0, [r7]
	str r3, [r1]
_0803A1E0:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A1F0: .4byte gUnk_02022930

	thumb_func_start sub_0803A1F4
sub_0803A1F4: @ 0x0803A1F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r7, _0803A350 @ =gUnk_02022930
	movs r0, #0
	mov r8, r0
	mov sl, r0
	ldrh r1, [r7, #8]
	ldrh r0, [r7, #0x18]
	adds r4, r1, #0
	orrs r4, r0
	ldrh r0, [r7, #0x28]
	orrs r4, r0
	ldrh r0, [r7, #0x38]
	orrs r4, r0
	adds r0, r7, #0
	adds r0, #0x48
	ldrh r0, [r0]
	orrs r4, r0
	adds r0, r7, #0
	adds r0, #0x58
	ldrh r0, [r0]
	orrs r4, r0
	adds r0, r7, #0
	adds r0, #0x68
	ldrh r0, [r0]
	orrs r4, r0
	adds r0, r7, #0
	adds r0, #0x78
	ldrh r0, [r0]
	orrs r4, r0
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _0803A2C6
	movs r6, #0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
_0803A250:
	lsls r0, r6, #4
	adds r1, r7, r0
	ldrh r2, [r1, #8]
	movs r1, #0x10
	ands r1, r2
	adds r5, r0, #0
	cmp r1, #0
	bne _0803A2BC
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0803A2BC
	ldr r0, _0803A354 @ =gUnk_03002440
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0803A284
	mov r0, sb
	cmp r0, #0
	beq _0803A284
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0803A2BC
_0803A284:
	adds r0, r7, r5
	ldrh r0, [r0, #6]
	cmp r0, #0
	beq _0803A2A0
	mov r1, sl
	cmp r1, #0
	bne _0803A2A0
	ldr r0, _0803A358 @ =gUnk_02022120
	ldr r1, _0803A35C @ =gBgPalette
	ldr r2, _0803A360 @ =0x04000080
	bl CpuSet
	movs r2, #1
	mov sl, r2
_0803A2A0:
	adds r0, r7, r5
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _0803A2BC
	mov r0, r8
	cmp r0, #0
	bne _0803A2BC
	ldr r0, _0803A364 @ =gUnk_02022320
	ldr r1, _0803A368 @ =gObjPalette
	ldr r2, _0803A360 @ =0x04000080
	bl CpuSet
	movs r1, #1
	mov r8, r1
_0803A2BC:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #7
	bls _0803A250
_0803A2C6:
	ldr r0, _0803A354 @ =gUnk_03002440
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0803A2DE
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	bne _0803A2DE
	b _0803A434
_0803A2DE:
	movs r6, #0
	adds r5, r7, #0
	adds r5, #0x80
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ands r4, r0
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
_0803A2F2:
	lsls r1, r6, #2
	adds r0, r5, r1
	ldr r2, [r0]
	adds r3, r1, #0
	cmp r2, #0
	beq _0803A390
	ldr r0, _0803A354 @ =gUnk_03002440
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0803A31C
	mov r0, sb
	cmp r0, #0
	beq _0803A31C
	ldrh r1, [r2, #8]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803A390
_0803A31C:
	adds r4, r5, r3
	ldr r0, [r4]
	ldrb r1, [r0]
	lsls r1, r1, #2
	ldr r2, _0803A36C @ =gUnk_0834C120
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	ldr r0, [r4]
	ldrh r1, [r0, #8]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _0803A370
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803A348
	str r2, [r4]
_0803A348:
	movs r0, #0
	mov r8, r0
	b _0803A390
	.align 2, 0
_0803A350: .4byte gUnk_02022930
_0803A354: .4byte gUnk_03002440
_0803A358: .4byte gUnk_02022120
_0803A35C: .4byte gBgPalette
_0803A360: .4byte 0x04000080
_0803A364: .4byte gUnk_02022320
_0803A368: .4byte gObjPalette
_0803A36C: .4byte gUnk_0834C120
_0803A370:
	lsls r0, r6, #4
	adds r2, r7, r0
	ldrh r1, [r2, #8]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0803A390
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0803A390
	ldrh r0, [r2, #4]
	cmp r0, #0
	beq _0803A390
	movs r1, #1
	mov r8, r1
_0803A390:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #7
	bls _0803A2F2
	bl sub_0803A078
	ldr r3, _0803A3CC @ =gUnk_03002440
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _0803A434
	mov r0, r8
	cmp r0, #0
	beq _0803A3E8
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _0803A3D4
	ldr r0, _0803A3D0 @ =gObjPalette
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl sub_0815828C
	b _0803A3E8
	.align 2, 0
_0803A3CC: .4byte gUnk_03002440
_0803A3D0: .4byte gObjPalette
_0803A3D4:
	ldr r1, _0803A40C @ =0x040000D4
	ldr r0, _0803A410 @ =gObjPalette
	str r0, [r1]
	str r0, [r1, #4]
	ldr r0, _0803A414 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #2
	orrs r2, r0
	str r2, [r3]
_0803A3E8:
	mov r1, sl
	cmp r1, #0
	beq _0803A434
	ldr r3, _0803A418 @ =gUnk_03002440
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _0803A420
	ldr r0, _0803A41C @ =gBgPalette
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl sub_08158334
	b _0803A434
	.align 2, 0
_0803A40C: .4byte 0x040000D4
_0803A410: .4byte gObjPalette
_0803A414: .4byte 0x80000100
_0803A418: .4byte gUnk_03002440
_0803A41C: .4byte gBgPalette
_0803A420:
	ldr r1, _0803A444 @ =0x040000D4
	ldr r0, _0803A448 @ =gBgPalette
	str r0, [r1]
	str r0, [r1, #4]
	ldr r0, _0803A44C @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r3]
_0803A434:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A444: .4byte 0x040000D4
_0803A448: .4byte gBgPalette
_0803A44C: .4byte 0x80000100

	thumb_func_start sub_0803A450
sub_0803A450: @ 0x0803A450
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldrh r1, [r7, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0803A46A
	bl _0803AF7E
_0803A46A:
	ldr r5, _0803A7D0 @ =gBgPalette
	movs r0, #0
	mov sb, r0
	ldr r1, _0803A7D4 @ =gObjPalette
	mov sl, r1
_0803A474:
	ldrh r0, [r7, #6]
	mov r1, sb
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0803A484
	b _0803A9E4
_0803A484:
	adds r5, #2
	ldrh r4, [r5]
	movs r0, #0x1f
	ands r0, r4
	movs r3, #1
	ldrsb r3, [r7, r3]
	subs r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r6, #0x80
	lsls r6, r6, #8
	adds r0, r1, #0
	ands r0, r6
	adds r2, r1, #0
	cmp r0, #0
	beq _0803A4A6
	movs r2, #0
_0803A4A6:
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x15
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803A4C4
	lsls r0, r1, #5
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803A4C4:
	lsrs r0, r4, #0x1a
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803A4E0
	lsls r0, r1, #0xa
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803A4E0:
	strh r2, [r5]
	adds r5, #2
	ldrh r3, [r5]
	movs r0, #0x1f
	ands r0, r3
	movs r4, #1
	ldrsb r4, [r7, r4]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	adds r2, r1, #0
	cmp r0, #0
	beq _0803A500
	movs r2, #0
_0803A500:
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x15
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803A51E
	lsls r0, r1, #5
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803A51E:
	lsrs r0, r3, #0x1a
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803A53A
	lsls r0, r1, #0xa
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803A53A:
	strh r2, [r5]
	adds r5, #2
	ldrh r3, [r5]
	movs r0, #0x1f
	ands r0, r3
	movs r4, #1
	ldrsb r4, [r7, r4]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	adds r2, r1, #0
	cmp r0, #0
	beq _0803A55A
	movs r2, #0
_0803A55A:
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x15
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803A578
	lsls r0, r1, #5
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803A578:
	lsrs r0, r3, #0x1a
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803A594
	lsls r0, r1, #0xa
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803A594:
	strh r2, [r5]
	adds r5, #2
	ldrh r3, [r5]
	movs r0, #0x1f
	ands r0, r3
	movs r4, #1
	ldrsb r4, [r7, r4]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	adds r2, r1, #0
	cmp r0, #0
	beq _0803A5B4
	movs r2, #0
_0803A5B4:
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x15
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803A5D2
	lsls r0, r1, #5
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803A5D2:
	lsrs r0, r3, #0x1a
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803A5EE
	lsls r0, r1, #0xa
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803A5EE:
	strh r2, [r5]
	adds r5, #2
	ldrh r3, [r5]
	movs r0, #0x1f
	ands r0, r3
	movs r4, #1
	ldrsb r4, [r7, r4]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	adds r2, r1, #0
	cmp r0, #0
	beq _0803A60E
	movs r2, #0
_0803A60E:
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x15
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803A62C
	lsls r0, r1, #5
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803A62C:
	lsrs r0, r3, #0x1a
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803A648
	lsls r0, r1, #0xa
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803A648:
	strh r2, [r5]
	adds r5, #2
	ldrh r3, [r5]
	movs r0, #0x1f
	ands r0, r3
	movs r4, #1
	ldrsb r4, [r7, r4]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	adds r2, r1, #0
	cmp r0, #0
	beq _0803A668
	movs r2, #0
_0803A668:
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x15
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803A686
	lsls r0, r1, #5
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803A686:
	lsrs r0, r3, #0x1a
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803A6A2
	lsls r0, r1, #0xa
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803A6A2:
	strh r2, [r5]
	adds r5, #2
	ldrh r3, [r5]
	movs r0, #0x1f
	ands r0, r3
	movs r4, #1
	ldrsb r4, [r7, r4]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	adds r2, r1, #0
	cmp r0, #0
	beq _0803A6C2
	movs r2, #0
_0803A6C2:
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x15
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803A6E0
	lsls r0, r1, #5
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803A6E0:
	lsrs r0, r3, #0x1a
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803A6FC
	lsls r0, r1, #0xa
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803A6FC:
	strh r2, [r5]
	adds r5, #2
	ldrh r3, [r5]
	movs r0, #0x1f
	ands r0, r3
	movs r4, #1
	ldrsb r4, [r7, r4]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	adds r2, r1, #0
	cmp r0, #0
	beq _0803A71C
	movs r2, #0
_0803A71C:
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x15
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803A73A
	lsls r0, r1, #5
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803A73A:
	lsrs r0, r3, #0x1a
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803A756
	lsls r0, r1, #0xa
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803A756:
	strh r2, [r5]
	adds r5, #2
	ldrh r3, [r5]
	movs r0, #0x1f
	ands r0, r3
	movs r4, #1
	ldrsb r4, [r7, r4]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	adds r2, r1, #0
	cmp r0, #0
	beq _0803A776
	movs r2, #0
_0803A776:
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x15
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803A794
	lsls r0, r1, #5
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803A794:
	lsrs r0, r3, #0x1a
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803A7B0
	lsls r0, r1, #0xa
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803A7B0:
	strh r2, [r5]
	adds r5, #2
	ldrh r3, [r5]
	movs r0, #0x1f
	ands r0, r3
	movs r4, #1
	ldrsb r4, [r7, r4]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	adds r2, r1, #0
	cmp r0, #0
	b _0803A7D8
	.align 2, 0
_0803A7D0: .4byte gBgPalette
_0803A7D4: .4byte gObjPalette
_0803A7D8:
	beq _0803A7DC
	movs r2, #0
_0803A7DC:
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x15
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803A7FA
	lsls r0, r1, #5
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803A7FA:
	lsrs r0, r3, #0x1a
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803A816
	lsls r0, r1, #0xa
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803A816:
	strh r2, [r5]
	adds r5, #2
	ldrh r3, [r5]
	movs r0, #0x1f
	ands r0, r3
	movs r4, #1
	ldrsb r4, [r7, r4]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	adds r2, r1, #0
	cmp r0, #0
	beq _0803A836
	movs r2, #0
_0803A836:
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x15
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803A854
	lsls r0, r1, #5
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803A854:
	lsrs r0, r3, #0x1a
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803A870
	lsls r0, r1, #0xa
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803A870:
	strh r2, [r5]
	adds r5, #2
	ldrh r3, [r5]
	movs r0, #0x1f
	mov r8, r0
	ands r0, r3
	movs r4, #1
	ldrsb r4, [r7, r4]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	adds r2, r1, #0
	cmp r0, #0
	beq _0803A892
	movs r2, #0
_0803A892:
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x15
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803A8B0
	lsls r0, r1, #5
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803A8B0:
	lsrs r0, r3, #0x1a
	movs r1, #0x1f
	mov ip, r1
	mov r1, ip
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803A8D0
	lsls r0, r1, #0xa
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803A8D0:
	strh r2, [r5]
	adds r5, #2
	ldrh r3, [r5]
	mov r0, r8
	ands r0, r3
	movs r4, #1
	ldrsb r4, [r7, r4]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	adds r2, r1, #0
	cmp r0, #0
	beq _0803A8F0
	movs r2, #0
_0803A8F0:
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x15
	mov r1, ip
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803A90E
	lsls r0, r1, #5
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803A90E:
	lsrs r0, r3, #0x1a
	mov r1, ip
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803A92A
	lsls r0, r1, #0xa
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803A92A:
	strh r2, [r5]
	adds r5, #2
	ldrh r3, [r5]
	mov r0, r8
	ands r0, r3
	movs r4, #1
	ldrsb r4, [r7, r4]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	adds r2, r1, #0
	cmp r0, #0
	beq _0803A94A
	movs r2, #0
_0803A94A:
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x15
	mov r1, ip
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803A968
	lsls r0, r1, #5
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803A968:
	lsrs r0, r3, #0x1a
	mov r1, ip
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803A984
	lsls r0, r1, #0xa
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803A984:
	strh r2, [r5]
	adds r5, #2
	ldrh r3, [r5]
	mov r0, r8
	ands r0, r3
	movs r4, #1
	ldrsb r4, [r7, r4]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	adds r2, r1, #0
	cmp r0, #0
	beq _0803A9A4
	movs r2, #0
_0803A9A4:
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x15
	mov r1, ip
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803A9C2
	lsls r0, r1, #5
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803A9C2:
	lsrs r0, r3, #0x1a
	mov r1, ip
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803A9DE
	lsls r0, r1, #0xa
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803A9DE:
	strh r2, [r5]
	adds r5, #2
	b _0803A9E6
_0803A9E4:
	adds r5, #0x20
_0803A9E6:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #0xf
	bhi _0803A9F6
	b _0803A474
_0803A9F6:
	mov r5, sl
	movs r0, #0
	mov sb, r0
_0803A9FC:
	ldrh r0, [r7, #4]
	mov r1, sb
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0803AA0C
	b _0803AF60
_0803AA0C:
	adds r5, #2
	ldrh r4, [r5]
	movs r0, #0x1f
	ands r0, r4
	movs r3, #1
	ldrsb r3, [r7, r3]
	subs r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r6, #0x80
	lsls r6, r6, #8
	adds r0, r1, #0
	ands r0, r6
	adds r2, r1, #0
	cmp r0, #0
	beq _0803AA2E
	movs r2, #0
_0803AA2E:
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x15
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803AA4C
	lsls r0, r1, #5
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803AA4C:
	lsrs r0, r4, #0x1a
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803AA68
	lsls r0, r1, #0xa
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803AA68:
	strh r2, [r5]
	adds r5, #2
	ldrh r3, [r5]
	movs r0, #0x1f
	ands r0, r3
	movs r4, #1
	ldrsb r4, [r7, r4]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	adds r2, r1, #0
	cmp r0, #0
	beq _0803AA88
	movs r2, #0
_0803AA88:
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x15
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803AAA6
	lsls r0, r1, #5
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803AAA6:
	lsrs r0, r3, #0x1a
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803AAC2
	lsls r0, r1, #0xa
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803AAC2:
	strh r2, [r5]
	adds r5, #2
	ldrh r3, [r5]
	movs r0, #0x1f
	ands r0, r3
	movs r4, #1
	ldrsb r4, [r7, r4]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	adds r2, r1, #0
	cmp r0, #0
	beq _0803AAE2
	movs r2, #0
_0803AAE2:
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x15
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803AB00
	lsls r0, r1, #5
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803AB00:
	lsrs r0, r3, #0x1a
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803AB1C
	lsls r0, r1, #0xa
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803AB1C:
	strh r2, [r5]
	adds r5, #2
	ldrh r3, [r5]
	movs r0, #0x1f
	ands r0, r3
	movs r4, #1
	ldrsb r4, [r7, r4]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	adds r2, r1, #0
	cmp r0, #0
	beq _0803AB3C
	movs r2, #0
_0803AB3C:
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x15
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803AB5A
	lsls r0, r1, #5
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803AB5A:
	lsrs r0, r3, #0x1a
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803AB76
	lsls r0, r1, #0xa
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803AB76:
	strh r2, [r5]
	adds r5, #2
	ldrh r3, [r5]
	movs r0, #0x1f
	ands r0, r3
	movs r4, #1
	ldrsb r4, [r7, r4]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	adds r2, r1, #0
	cmp r0, #0
	beq _0803AB96
	movs r2, #0
_0803AB96:
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x15
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803ABB4
	lsls r0, r1, #5
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803ABB4:
	lsrs r0, r3, #0x1a
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803ABD0
	lsls r0, r1, #0xa
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803ABD0:
	strh r2, [r5]
	adds r5, #2
	ldrh r3, [r5]
	movs r0, #0x1f
	ands r0, r3
	movs r4, #1
	ldrsb r4, [r7, r4]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	adds r2, r1, #0
	cmp r0, #0
	beq _0803ABF0
	movs r2, #0
_0803ABF0:
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x15
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803AC0E
	lsls r0, r1, #5
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803AC0E:
	lsrs r0, r3, #0x1a
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803AC2A
	lsls r0, r1, #0xa
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803AC2A:
	strh r2, [r5]
	adds r5, #2
	ldrh r3, [r5]
	movs r0, #0x1f
	ands r0, r3
	movs r4, #1
	ldrsb r4, [r7, r4]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	adds r2, r1, #0
	cmp r0, #0
	beq _0803AC4A
	movs r2, #0
_0803AC4A:
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x15
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803AC68
	lsls r0, r1, #5
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803AC68:
	lsrs r0, r3, #0x1a
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803AC84
	lsls r0, r1, #0xa
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803AC84:
	strh r2, [r5]
	adds r5, #2
	ldrh r3, [r5]
	movs r0, #0x1f
	ands r0, r3
	movs r4, #1
	ldrsb r4, [r7, r4]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	adds r2, r1, #0
	cmp r0, #0
	beq _0803ACA4
	movs r2, #0
_0803ACA4:
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x15
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803ACC2
	lsls r0, r1, #5
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803ACC2:
	lsrs r0, r3, #0x1a
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803ACDE
	lsls r0, r1, #0xa
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803ACDE:
	strh r2, [r5]
	adds r5, #2
	ldrh r3, [r5]
	movs r0, #0x1f
	ands r0, r3
	movs r4, #1
	ldrsb r4, [r7, r4]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	adds r2, r1, #0
	cmp r0, #0
	beq _0803ACFE
	movs r2, #0
_0803ACFE:
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x15
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803AD1C
	lsls r0, r1, #5
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803AD1C:
	lsrs r0, r3, #0x1a
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803AD38
	lsls r0, r1, #0xa
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803AD38:
	strh r2, [r5]
	adds r5, #2
	ldrh r3, [r5]
	movs r0, #0x1f
	ands r0, r3
	movs r4, #1
	ldrsb r4, [r7, r4]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	adds r2, r1, #0
	cmp r0, #0
	beq _0803AD58
	movs r2, #0
_0803AD58:
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x15
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803AD76
	lsls r0, r1, #5
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803AD76:
	lsrs r0, r3, #0x1a
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803AD92
	lsls r0, r1, #0xa
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803AD92:
	strh r2, [r5]
	adds r5, #2
	ldrh r3, [r5]
	movs r0, #0x1f
	ands r0, r3
	movs r4, #1
	ldrsb r4, [r7, r4]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	adds r2, r1, #0
	cmp r0, #0
	beq _0803ADB2
	movs r2, #0
_0803ADB2:
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x15
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803ADD0
	lsls r0, r1, #5
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803ADD0:
	lsrs r0, r3, #0x1a
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803ADEC
	lsls r0, r1, #0xa
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803ADEC:
	strh r2, [r5]
	adds r5, #2
	ldrh r3, [r5]
	movs r0, #0x1f
	mov r8, r0
	ands r0, r3
	movs r4, #1
	ldrsb r4, [r7, r4]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	adds r2, r1, #0
	cmp r0, #0
	beq _0803AE0E
	movs r2, #0
_0803AE0E:
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x15
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803AE2C
	lsls r0, r1, #5
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803AE2C:
	lsrs r0, r3, #0x1a
	movs r1, #0x1f
	mov ip, r1
	mov r1, ip
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803AE4C
	lsls r0, r1, #0xa
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803AE4C:
	strh r2, [r5]
	adds r5, #2
	ldrh r3, [r5]
	mov r0, r8
	ands r0, r3
	movs r4, #1
	ldrsb r4, [r7, r4]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	adds r2, r1, #0
	cmp r0, #0
	beq _0803AE6C
	movs r2, #0
_0803AE6C:
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x15
	mov r1, ip
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803AE8A
	lsls r0, r1, #5
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803AE8A:
	lsrs r0, r3, #0x1a
	mov r1, ip
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803AEA6
	lsls r0, r1, #0xa
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803AEA6:
	strh r2, [r5]
	adds r5, #2
	ldrh r3, [r5]
	mov r0, r8
	ands r0, r3
	movs r4, #1
	ldrsb r4, [r7, r4]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	adds r2, r1, #0
	cmp r0, #0
	beq _0803AEC6
	movs r2, #0
_0803AEC6:
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x15
	mov r1, ip
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803AEE4
	lsls r0, r1, #5
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803AEE4:
	lsrs r0, r3, #0x1a
	mov r1, ip
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803AF00
	lsls r0, r1, #0xa
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803AF00:
	strh r2, [r5]
	adds r5, #2
	ldrh r3, [r5]
	mov r0, r8
	ands r0, r3
	movs r4, #1
	ldrsb r4, [r7, r4]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	adds r2, r1, #0
	cmp r0, #0
	beq _0803AF20
	movs r2, #0
_0803AF20:
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x15
	mov r1, ip
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803AF3E
	lsls r0, r1, #5
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803AF3E:
	lsrs r0, r3, #0x1a
	mov r1, ip
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0803AF5A
	lsls r0, r1, #0xa
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803AF5A:
	strh r2, [r5]
	adds r5, #2
	b _0803AF62
_0803AF60:
	adds r5, #0x20
_0803AF62:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #0xf
	bhi _0803AF72
	b _0803A9FC
_0803AF72:
	ldr r1, _0803AFB8 @ =gUnk_03002440
	ldr r0, [r1]
	movs r1, #3
	orrs r0, r1
	ldr r1, _0803AFB8 @ =gUnk_03002440
	str r0, [r1]
_0803AF7E:
	ldrh r2, [r7, #8]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _0803AFD8
	ldr r0, _0803AFB8 @ =gUnk_03002440
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0803AF9E
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0803AFD8
_0803AF9E:
	movs r1, #1
	ldrsb r1, [r7, r1]
	ldrb r3, [r7, #2]
	movs r0, #2
	ldrsb r0, [r7, r0]
	cmp r1, r0
	bne _0803AFCC
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _0803AFBC
	strb r3, [r7, #1]
	b _0803AFD8
	.align 2, 0
_0803AFB8: .4byte gUnk_03002440
_0803AFBC:
	movs r0, #1
	orrs r0, r2
	ldr r1, _0803AFC8 @ =0x0000FF79
	ands r0, r1
	strh r0, [r7, #8]
	b _0803AFD8
	.align 2, 0
_0803AFC8: .4byte 0x0000FF79
_0803AFCC:
	ldrh r0, [r7, #0xa]
	ldrh r1, [r7, #0xc]
	adds r0, r0, r1
	strh r0, [r7, #0xc]
	lsrs r0, r0, #8
	strb r0, [r7, #1]
_0803AFD8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803AFE8
sub_0803AFE8: @ 0x0803AFE8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldrh r1, [r5, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0803B000
	b _0803B6F4
_0803B000:
	ldr r4, _0803B370 @ =gBgPalette
	movs r0, #0
	mov sl, r0
	ldr r1, _0803B374 @ =gUnk_0834BE20
	mov r8, r1
	movs r6, #0x1f
	movs r2, #0x1f
	mov sb, r2
	ldr r0, _0803B378 @ =gUnk_0834BEA0
	mov ip, r0
	ldr r7, _0803B37C @ =gUnk_0834BF20
_0803B016:
	ldrh r0, [r5, #6]
	mov r1, sl
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0803B026
	b _0803B380
_0803B026:
	mov r2, sl
	cmp r2, #0
	bne _0803B05E
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
_0803B05E:
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	b _0803B382
	.align 2, 0
_0803B370: .4byte gBgPalette
_0803B374: .4byte gUnk_0834BE20
_0803B378: .4byte gUnk_0834BEA0
_0803B37C: .4byte gUnk_0834BF20
_0803B380:
	adds r4, #0x20
_0803B382:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #0xf
	bhi _0803B392
	b _0803B016
_0803B392:
	ldr r4, _0803B6C8 @ =gObjPalette
	movs r0, #0
	mov sl, r0
	ldr r1, _0803B6CC @ =gUnk_0834BE20
	mov sb, r1
	movs r6, #0x1f
	movs r2, #0x1f
	mov ip, r2
	ldr r0, _0803B6D0 @ =gUnk_0834BEA0
	mov r8, r0
	ldr r7, _0803B6D4 @ =gUnk_0834BF20
_0803B3A8:
	ldrh r0, [r5, #4]
	mov r1, sl
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0803B3B8
	b _0803B6D8
_0803B3B8:
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	b _0803B6DA
	.align 2, 0
_0803B6C8: .4byte gObjPalette
_0803B6CC: .4byte gUnk_0834BE20
_0803B6D0: .4byte gUnk_0834BEA0
_0803B6D4: .4byte gUnk_0834BF20
_0803B6D8:
	adds r4, #0x20
_0803B6DA:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #0xf
	bhi _0803B6EA
	b _0803B3A8
_0803B6EA:
	ldr r2, _0803B75C @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
_0803B6F4:
	ldrh r1, [r5, #8]
	movs r0, #1
	ands r0, r1
	adds r4, r1, #0
	cmp r0, #0
	bne _0803B778
	ldr r0, _0803B75C @ =gUnk_03002440
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0803B716
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	beq _0803B778
_0803B716:
	ldrh r1, [r5, #0xa]
	ldrh r2, [r5, #0xc]
	adds r0, r1, r2
	strh r0, [r5, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strb r0, [r5, #1]
	adds r3, r0, #0
	movs r2, #2
	ldrsb r2, [r5, r2]
	ldrb r6, [r5, #2]
	cmp r3, r2
	bgt _0803B73A
	lsls r0, r1, #0x10
	cmp r0, #0
	blt _0803B740
	cmp r3, r2
	blt _0803B778
_0803B73A:
	lsls r0, r1, #0x10
	cmp r0, #0
	ble _0803B778
_0803B740:
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _0803B770
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _0803B760
	movs r0, #2
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	strh r0, [r5, #0xc]
	strb r6, [r5, #1]
	b _0803B778
	.align 2, 0
_0803B75C: .4byte gUnk_03002440
_0803B760:
	movs r0, #1
	orrs r0, r4
	ldr r1, _0803B76C @ =0x0000FF59
	ands r0, r1
	b _0803B776
	.align 2, 0
_0803B76C: .4byte 0x0000FF59
_0803B770:
	strb r6, [r5, #1]
	movs r0, #0x20
	orrs r0, r4
_0803B776:
	strh r0, [r5, #8]
_0803B778:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803B788
sub_0803B788: @ 0x0803B788
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldrh r1, [r5, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0803B7A0
	b _0803BED4
_0803B7A0:
	ldr r4, _0803BB30 @ =gBgPalette
	movs r0, #0
	mov sl, r0
	ldr r1, _0803BB34 @ =gUnk_0834BFA0
	mov r8, r1
	movs r6, #0x1f
	movs r2, #0x1f
	mov sb, r2
	ldr r0, _0803BB38 @ =gUnk_0834C020
	mov ip, r0
	ldr r7, _0803BB3C @ =gUnk_0834C0A0
_0803B7B6:
	ldrh r0, [r5, #6]
	mov r1, sl
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0803B7C6
	b _0803BB40
_0803B7C6:
	mov r2, sl
	cmp r2, #0
	bne _0803B800
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
_0803B800:
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	b _0803BB42
	.align 2, 0
_0803BB30: .4byte gBgPalette
_0803BB34: .4byte gUnk_0834BFA0
_0803BB38: .4byte gUnk_0834C020
_0803BB3C: .4byte gUnk_0834C0A0
_0803BB40:
	adds r4, #0x20
_0803BB42:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #0xf
	bhi _0803BB52
	b _0803B7B6
_0803BB52:
	ldr r4, _0803BEA8 @ =gObjPalette
	movs r0, #0
	mov sl, r0
	ldr r1, _0803BEAC @ =gUnk_0834BFA0
	mov sb, r1
	movs r6, #0x1f
	movs r2, #0x1f
	mov ip, r2
	ldr r0, _0803BEB0 @ =gUnk_0834C020
	mov r8, r0
	ldr r7, _0803BEB4 @ =gUnk_0834C0A0
_0803BB68:
	ldrh r0, [r5, #4]
	mov r1, sl
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0803BB78
	b _0803BEB8
_0803BB78:
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	b _0803BEBA
	.align 2, 0
_0803BEA8: .4byte gObjPalette
_0803BEAC: .4byte gUnk_0834BFA0
_0803BEB0: .4byte gUnk_0834C020
_0803BEB4: .4byte gUnk_0834C0A0
_0803BEB8:
	adds r4, #0x20
_0803BEBA:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #0xf
	bhi _0803BECA
	b _0803BB68
_0803BECA:
	ldr r2, _0803BF3C @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
_0803BED4:
	ldrh r1, [r5, #8]
	movs r0, #1
	ands r0, r1
	adds r4, r1, #0
	cmp r0, #0
	bne _0803BF58
	ldr r0, _0803BF3C @ =gUnk_03002440
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0803BEF6
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	beq _0803BF58
_0803BEF6:
	ldrh r1, [r5, #0xa]
	ldrh r2, [r5, #0xc]
	adds r0, r1, r2
	strh r0, [r5, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strb r0, [r5, #1]
	adds r3, r0, #0
	movs r2, #2
	ldrsb r2, [r5, r2]
	ldrb r6, [r5, #2]
	cmp r3, r2
	bgt _0803BF1A
	lsls r0, r1, #0x10
	cmp r0, #0
	blt _0803BF20
	cmp r3, r2
	blt _0803BF58
_0803BF1A:
	lsls r0, r1, #0x10
	cmp r0, #0
	ble _0803BF58
_0803BF20:
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _0803BF50
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _0803BF40
	movs r0, #2
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	strh r0, [r5, #0xc]
	strb r6, [r5, #1]
	b _0803BF58
	.align 2, 0
_0803BF3C: .4byte gUnk_03002440
_0803BF40:
	movs r0, #1
	orrs r0, r4
	ldr r1, _0803BF4C @ =0x0000FF59
	ands r0, r1
	b _0803BF56
	.align 2, 0
_0803BF4C: .4byte 0x0000FF59
_0803BF50:
	strb r6, [r5, #1]
	movs r0, #0x20
	orrs r0, r4
_0803BF56:
	strh r0, [r5, #8]
_0803BF58:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803BF68
sub_0803BF68: @ 0x0803BF68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldrh r1, [r5, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0803BF80
	b _0803C6B4
_0803BF80:
	ldr r4, _0803C310 @ =gBgPalette
	movs r0, #0
	mov sl, r0
	ldr r1, _0803C314 @ =gUnk_0834BE20
	mov r8, r1
	movs r6, #0x1f
	movs r2, #0x1f
	mov sb, r2
	ldr r0, _0803C318 @ =gUnk_0834C020
	mov ip, r0
	ldr r7, _0803C31C @ =gUnk_0834C0A0
_0803BF96:
	ldrh r0, [r5, #6]
	mov r1, sl
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0803BFA6
	b _0803C320
_0803BFA6:
	mov r2, sl
	cmp r2, #0
	bne _0803BFE0
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
_0803BFE0:
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, sb
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	b _0803C322
	.align 2, 0
_0803C310: .4byte gBgPalette
_0803C314: .4byte gUnk_0834BE20
_0803C318: .4byte gUnk_0834C020
_0803C31C: .4byte gUnk_0834C0A0
_0803C320:
	adds r4, #0x20
_0803C322:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #0xf
	bhi _0803C332
	b _0803BF96
_0803C332:
	ldr r4, _0803C688 @ =gObjPalette
	movs r0, #0
	mov sl, r0
	ldr r1, _0803C68C @ =gUnk_0834BE20
	mov sb, r1
	movs r6, #0x1f
	movs r2, #0x1f
	mov ip, r2
	ldr r0, _0803C690 @ =gUnk_0834C020
	mov r8, r0
	ldr r7, _0803C694 @ =gUnk_0834C0A0
_0803C348:
	ldrh r0, [r5, #4]
	mov r1, sl
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0803C358
	b _0803C698
_0803C358:
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	movs r2, #1
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	subs r2, #0x1f
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	orrs r3, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	b _0803C69A
	.align 2, 0
_0803C688: .4byte gObjPalette
_0803C68C: .4byte gUnk_0834BE20
_0803C690: .4byte gUnk_0834C020
_0803C694: .4byte gUnk_0834C0A0
_0803C698:
	adds r4, #0x20
_0803C69A:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #0xf
	bhi _0803C6AA
	b _0803C348
_0803C6AA:
	ldr r2, _0803C71C @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
_0803C6B4:
	ldrh r1, [r5, #8]
	movs r0, #1
	ands r0, r1
	adds r4, r1, #0
	cmp r0, #0
	bne _0803C738
	ldr r0, _0803C71C @ =gUnk_03002440
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0803C6D6
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	beq _0803C738
_0803C6D6:
	ldrh r1, [r5, #0xa]
	ldrh r2, [r5, #0xc]
	adds r0, r1, r2
	strh r0, [r5, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strb r0, [r5, #1]
	adds r3, r0, #0
	movs r2, #2
	ldrsb r2, [r5, r2]
	ldrb r6, [r5, #2]
	cmp r3, r2
	bgt _0803C6FA
	lsls r0, r1, #0x10
	cmp r0, #0
	blt _0803C700
	cmp r3, r2
	blt _0803C738
_0803C6FA:
	lsls r0, r1, #0x10
	cmp r0, #0
	ble _0803C738
_0803C700:
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _0803C730
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _0803C720
	movs r0, #2
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	strh r0, [r5, #0xc]
	strb r6, [r5, #1]
	b _0803C738
	.align 2, 0
_0803C71C: .4byte gUnk_03002440
_0803C720:
	movs r0, #1
	orrs r0, r4
	ldr r1, _0803C72C @ =0x0000FF59
	ands r0, r1
	b _0803C736
	.align 2, 0
_0803C72C: .4byte 0x0000FF59
_0803C730:
	strb r6, [r5, #1]
	movs r0, #0x20
	orrs r0, r4
_0803C736:
	strh r0, [r5, #8]
_0803C738:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803C748
sub_0803C748: @ 0x0803C748
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldrh r1, [r6, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803C7BA
	ldr r4, _0803C80C @ =gBgPalette
	movs r5, #0
_0803C75C:
	ldrh r0, [r6, #6]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0803C778
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	mov r0, sp
	adds r1, r4, #0
	ldr r2, _0803C810 @ =0x05000008
	bl CpuSet
_0803C778:
	adds r4, #0x20
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xf
	bls _0803C75C
	ldr r4, _0803C814 @ =gObjPalette
	movs r5, #0
_0803C788:
	ldrh r0, [r6, #4]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0803C7A4
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	mov r0, sp
	adds r1, r4, #0
	ldr r2, _0803C810 @ =0x05000008
	bl CpuSet
_0803C7A4:
	adds r4, #0x20
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xf
	bls _0803C788
	ldr r0, _0803C818 @ =gUnk_03002440
	ldr r1, [r0]
	movs r2, #3
	orrs r1, r2
	str r1, [r0]
_0803C7BA:
	ldrh r1, [r6, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0803C834
	ldrh r2, [r6, #0xa]
	ldrh r3, [r6, #0xc]
	adds r0, r2, r3
	strh r0, [r6, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strb r0, [r6, #1]
	adds r4, r0, #0
	movs r3, #2
	ldrsb r3, [r6, r3]
	ldrb r5, [r6, #2]
	cmp r4, r3
	bgt _0803C7E8
	lsls r0, r2, #0x10
	cmp r0, #0
	blt _0803C7EE
	cmp r4, r3
	blt _0803C834
_0803C7E8:
	lsls r0, r2, #0x10
	cmp r0, #0
	ble _0803C834
_0803C7EE:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803C82C
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803C81C
	movs r0, #2
	ldrsb r0, [r6, r0]
	lsls r0, r0, #8
	strh r0, [r6, #0xc]
	strb r5, [r6, #1]
	b _0803C834
	.align 2, 0
_0803C80C: .4byte gBgPalette
_0803C810: .4byte 0x05000008
_0803C814: .4byte gObjPalette
_0803C818: .4byte gUnk_03002440
_0803C81C:
	movs r0, #1
	orrs r0, r1
	ldr r1, _0803C828 @ =0x0000FF59
	ands r0, r1
	b _0803C832
	.align 2, 0
_0803C828: .4byte 0x0000FF59
_0803C82C:
	strb r5, [r6, #1]
	movs r0, #0x20
	orrs r0, r1
_0803C832:
	strh r0, [r6, #8]
_0803C834:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0803C83C
sub_0803C83C: @ 0x0803C83C
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r6, _0803C8BC @ =gUnk_02022930
	lsrs r0, r0, #0x14
	adds r4, r0, r6
	movs r5, #0
_0803C84C:
	lsls r0, r5, #2
	adds r1, r6, #0
	adds r1, #0x80
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _0803C862
	movs r0, #0
	str r0, [r1]
	bl sub_0803A078
_0803C862:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _0803C84C
	movs r0, #0xc
	strh r0, [r4, #8]
	ldr r2, _0803C8C0 @ =gKirbys
	ldr r0, _0803C8C4 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, r7
	bne _0803C88A
	movs r0, #0xe
	strh r0, [r4, #8]
_0803C88A:
	strh r7, [r4, #0xe]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	movs r0, #0
	strh r0, [r4, #0xc]
	strb r0, [r4, #1]
	movs r0, #0x1f
	strb r0, [r4, #2]
	movs r0, #1
	strb r0, [r4]
	movs r0, #0xf
	strb r0, [r4, #3]
	ldr r0, _0803C8C8 @ =0x0000FFFF
	strh r0, [r4, #4]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r4, #6]
	adds r0, r4, #0
	bl sub_08039FF8
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803C8BC: .4byte gUnk_02022930
_0803C8C0: .4byte gKirbys
_0803C8C4: .4byte gUnk_0203AD3C
_0803C8C8: .4byte 0x0000FFFF

	thumb_func_start sub_0803C8CC
sub_0803C8CC: @ 0x0803C8CC
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r6, _0803C94C @ =gUnk_02022930
	lsrs r0, r0, #0x14
	adds r4, r0, r6
	movs r5, #0
_0803C8DC:
	lsls r0, r5, #2
	adds r1, r6, #0
	adds r1, #0x80
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _0803C8F2
	movs r0, #0
	str r0, [r1]
	bl sub_0803A078
_0803C8F2:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _0803C8DC
	movs r0, #0xc
	strh r0, [r4, #8]
	ldr r2, _0803C950 @ =gKirbys
	ldr r0, _0803C954 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, r7
	bne _0803C91A
	movs r0, #0xe
	strh r0, [r4, #8]
_0803C91A:
	strh r7, [r4, #0xe]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	movs r0, #0
	strh r0, [r4, #0xc]
	strb r0, [r4, #1]
	movs r0, #0x1f
	strb r0, [r4, #2]
	movs r0, #1
	strb r0, [r4]
	movs r0, #8
	strb r0, [r4, #3]
	ldr r0, _0803C958 @ =0x0000FFFF
	strh r0, [r4, #4]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r4, #6]
	adds r0, r4, #0
	bl sub_08039FF8
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803C94C: .4byte gUnk_02022930
_0803C950: .4byte gKirbys
_0803C954: .4byte gUnk_0203AD3C
_0803C958: .4byte 0x0000FFFF

	thumb_func_start sub_0803C95C
sub_0803C95C: @ 0x0803C95C
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r6, _0803C9A0 @ =gUnk_02022930
	lsls r0, r7, #4
	adds r5, r0, r6
	movs r4, #0
_0803C96A:
	lsls r0, r4, #2
	adds r1, r6, #0
	adds r1, #0x80
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, r5
	bne _0803C980
	movs r0, #0
	str r0, [r1]
	bl sub_0803A078
_0803C980:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0803C96A
	movs r0, #4
	strh r0, [r5, #8]
	ldr r0, _0803C9A4 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r7, r0
	blo _0803C9AC
	movs r0, #6
	strh r0, [r5, #8]
	ldr r3, _0803C9A8 @ =gKirbys
	b _0803C9D2
	.align 2, 0
_0803C9A0: .4byte gUnk_02022930
_0803C9A4: .4byte gUnk_0203AD44
_0803C9A8: .4byte gKirbys
_0803C9AC:
	ldr r3, _0803CA14 @ =gKirbys
	ldr r0, _0803CA18 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r1, r0, #0
	muls r1, r2, r1
	adds r1, r1, r3
	adds r1, #0x60
	adds r0, r7, #0
	muls r0, r2, r0
	adds r0, r0, r3
	adds r0, #0x60
	ldrh r1, [r1]
	ldrh r0, [r0]
	cmp r1, r0
	bne _0803C9D2
	movs r0, #6
	strh r0, [r5, #8]
_0803C9D2:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r7, r0
	adds r0, r0, r3
	adds r0, #0x60
	ldrh r0, [r0]
	movs r1, #0
	strh r0, [r5, #0xe]
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r5, #0xa]
	movs r0, #0xf8
	lsls r0, r0, #5
	strh r0, [r5, #0xc]
	movs r0, #0x1f
	strb r0, [r5, #1]
	strb r1, [r5, #2]
	movs r0, #1
	strb r0, [r5]
	ldr r0, _0803CA1C @ =0x0000FFFF
	strh r0, [r5, #4]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r5, #6]
	movs r0, #0xa
	strb r0, [r5, #3]
	adds r0, r5, #0
	bl sub_08039FF8
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803CA14: .4byte gKirbys
_0803CA18: .4byte gUnk_0203AD3C
_0803CA1C: .4byte 0x0000FFFF

	thumb_func_start sub_0803CA20
sub_0803CA20: @ 0x0803CA20
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r6, _0803CA64 @ =gUnk_02022930
	lsls r0, r7, #4
	adds r5, r0, r6
	movs r4, #0
_0803CA2E:
	lsls r0, r4, #2
	adds r1, r6, #0
	adds r1, #0x80
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, r5
	bne _0803CA44
	movs r0, #0
	str r0, [r1]
	bl sub_0803A078
_0803CA44:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0803CA2E
	movs r0, #0x4c
	strh r0, [r5, #8]
	ldr r0, _0803CA68 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r7, r0
	blo _0803CA70
	movs r0, #0x4e
	strh r0, [r5, #8]
	ldr r3, _0803CA6C @ =gKirbys
	b _0803CA96
	.align 2, 0
_0803CA64: .4byte gUnk_02022930
_0803CA68: .4byte gUnk_0203AD44
_0803CA6C: .4byte gKirbys
_0803CA70:
	ldr r3, _0803CAD8 @ =gKirbys
	ldr r0, _0803CADC @ =gUnk_0203AD3C
	ldrb r0, [r0]
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r1, r0, #0
	muls r1, r2, r1
	adds r1, r1, r3
	adds r1, #0x60
	adds r0, r7, #0
	muls r0, r2, r0
	adds r0, r0, r3
	adds r0, #0x60
	ldrh r1, [r1]
	ldrh r0, [r0]
	cmp r1, r0
	bne _0803CA96
	movs r0, #0x4e
	strh r0, [r5, #8]
_0803CA96:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r7, r0
	adds r0, r0, r3
	adds r0, #0x60
	ldrh r0, [r0]
	movs r2, #0
	movs r1, #0
	strh r0, [r5, #0xe]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #0xa]
	strh r1, [r5, #0xc]
	strb r2, [r5, #1]
	movs r0, #0x1f
	strb r0, [r5, #2]
	movs r0, #1
	strb r0, [r5]
	movs r0, #0xa
	strb r0, [r5, #3]
	ldr r0, _0803CAE0 @ =0x0000FFFF
	strh r0, [r5, #4]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r5, #6]
	adds r0, r5, #0
	bl sub_08039FF8
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803CAD8: .4byte gKirbys
_0803CADC: .4byte gUnk_0203AD3C
_0803CAE0: .4byte 0x0000FFFF

	thumb_func_start sub_0803CAE4
sub_0803CAE4: @ 0x0803CAE4
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r6, _0803CB58 @ =gUnk_02022930
	lsls r0, r7, #4
	adds r4, r0, r6
	movs r5, #0
_0803CAF2:
	lsls r0, r5, #2
	adds r1, r6, #0
	adds r1, #0x80
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _0803CB08
	movs r0, #0
	str r0, [r1]
	bl sub_0803A078
_0803CB08:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _0803CAF2
	movs r3, #0
	movs r2, #0
	movs r0, #0x14
	strh r0, [r4, #8]
	ldr r1, _0803CB5C @ =gKirbys
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r7, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	strh r0, [r4, #0xe]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	strh r2, [r4, #0xc]
	strb r3, [r4, #1]
	movs r0, #0x1f
	strb r0, [r4, #2]
	movs r0, #1
	strb r0, [r4]
	movs r0, #0xa
	strb r0, [r4, #3]
	ldr r0, _0803CB60 @ =0x0000FFFF
	strh r0, [r4, #4]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r4, #6]
	adds r0, r4, #0
	bl sub_08039FF8
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803CB58: .4byte gUnk_02022930
_0803CB5C: .4byte gKirbys
_0803CB60: .4byte 0x0000FFFF

	thumb_func_start sub_0803CB64
sub_0803CB64: @ 0x0803CB64
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r1, _0803CBB4 @ =gUnk_02022930
	lsls r0, r4, #4
	adds r5, r0, r1
	movs r0, #4
	strh r0, [r5, #8]
	ldr r0, _0803CBB8 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r4, r0
	bhs _0803CB9E
	ldr r3, _0803CBBC @ =gKirbys
	ldr r0, _0803CBC0 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r1, r0, #0
	muls r1, r2, r1
	adds r1, r1, r3
	adds r1, #0x60
	adds r0, r4, #0
	muls r0, r2, r0
	adds r0, r0, r3
	adds r0, #0x60
	ldrh r1, [r1]
	ldrh r0, [r0]
	cmp r1, r0
	bne _0803CBA2
_0803CB9E:
	movs r0, #6
	strh r0, [r5, #8]
_0803CBA2:
	movs r0, #0
	strh r0, [r5, #0xa]
	movs r0, #0xff
	strb r0, [r5, #2]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0803CBB4: .4byte gUnk_02022930
_0803CBB8: .4byte gUnk_0203AD44
_0803CBBC: .4byte gKirbys
_0803CBC0: .4byte gUnk_0203AD3C

	thumb_func_start sub_0803CBC4
sub_0803CBC4: @ 0x0803CBC4
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r6, _0803CC08 @ =gUnk_02022930
	lsls r0, r7, #4
	adds r4, r0, r6
	movs r5, #0
_0803CBD2:
	lsls r0, r5, #2
	adds r1, r6, #0
	adds r1, #0x80
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _0803CBE8
	movs r0, #0
	str r0, [r1]
	bl sub_0803A078
_0803CBE8:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _0803CBD2
	movs r0, #0x4c
	strh r0, [r4, #8]
	ldr r0, _0803CC0C @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r7, r0
	blo _0803CC14
	movs r0, #0x4e
	strh r0, [r4, #8]
	ldr r3, _0803CC10 @ =gKirbys
	b _0803CC3A
	.align 2, 0
_0803CC08: .4byte gUnk_02022930
_0803CC0C: .4byte gUnk_0203AD44
_0803CC10: .4byte gKirbys
_0803CC14:
	ldr r3, _0803CC78 @ =gKirbys
	ldr r0, _0803CC7C @ =gUnk_0203AD3C
	ldrb r0, [r0]
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r1, r0, #0
	muls r1, r2, r1
	adds r1, r1, r3
	adds r1, #0x60
	adds r0, r7, #0
	muls r0, r2, r0
	adds r0, r0, r3
	adds r0, #0x60
	ldrh r1, [r1]
	ldrh r0, [r0]
	cmp r1, r0
	bne _0803CC3A
	movs r0, #0x4e
	strh r0, [r4, #8]
_0803CC3A:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r7, r0
	adds r0, r0, r3
	adds r0, #0x60
	ldrh r0, [r0]
	movs r2, #0
	movs r1, #0
	strh r0, [r4, #0xe]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0xa]
	strh r1, [r4, #0xc]
	strb r2, [r4, #1]
	movs r0, #0xa
	strb r0, [r4, #2]
	strb r2, [r4]
	movs r0, #0xfc
	lsls r0, r0, #6
	strh r0, [r4, #4]
	adds r0, #0xff
	strh r0, [r4, #6]
	movs r0, #5
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_08039FF8
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803CC78: .4byte gKirbys
_0803CC7C: .4byte gUnk_0203AD3C

	thumb_func_start sub_0803CC80
sub_0803CC80: @ 0x0803CC80
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r6, _0803CCC4 @ =gUnk_02022930
	lsls r0, r7, #4
	adds r4, r0, r6
	movs r5, #0
_0803CC8E:
	lsls r0, r5, #2
	adds r1, r6, #0
	adds r1, #0x80
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _0803CCA4
	movs r0, #0
	str r0, [r1]
	bl sub_0803A078
_0803CCA4:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _0803CC8E
	movs r0, #4
	strh r0, [r4, #8]
	ldr r0, _0803CCC8 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r7, r0
	blo _0803CCD0
	movs r0, #6
	strh r0, [r4, #8]
	ldr r3, _0803CCCC @ =gKirbys
	b _0803CCF6
	.align 2, 0
_0803CCC4: .4byte gUnk_02022930
_0803CCC8: .4byte gUnk_0203AD44
_0803CCCC: .4byte gKirbys
_0803CCD0:
	ldr r3, _0803CD38 @ =gKirbys
	ldr r0, _0803CD3C @ =gUnk_0203AD3C
	ldrb r0, [r0]
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r1, r0, #0
	muls r1, r2, r1
	adds r1, r1, r3
	adds r1, #0x60
	adds r0, r7, #0
	muls r0, r2, r0
	adds r0, r0, r3
	adds r0, #0x60
	ldrh r1, [r1]
	ldrh r0, [r0]
	cmp r1, r0
	bne _0803CCF6
	movs r0, #6
	strh r0, [r4, #8]
_0803CCF6:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r7, r0
	adds r0, r0, r3
	adds r0, #0x60
	ldrh r0, [r0]
	movs r1, #0
	strh r0, [r4, #0xe]
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r4, #0xa]
	movs r0, #0xa0
	lsls r0, r0, #4
	strh r0, [r4, #0xc]
	movs r0, #0xa
	strb r0, [r4, #1]
	strb r1, [r4, #2]
	strb r1, [r4]
	movs r0, #0xfc
	lsls r0, r0, #6
	strh r0, [r4, #4]
	adds r0, #0xff
	strh r0, [r4, #6]
	movs r0, #5
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_08039FF8
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803CD38: .4byte gKirbys
_0803CD3C: .4byte gUnk_0203AD3C

	thumb_func_start sub_0803CD40
sub_0803CD40: @ 0x0803CD40
	push {r4, r5, r6, r7, lr}
	ldr r6, _0803CD8C @ =gUnk_02022930
	movs r4, #0
	ldr r5, _0803CD90 @ =gKirbys
_0803CD48:
	lsls r0, r4, #4
	adds r3, r6, r0
	ldrh r2, [r3, #8]
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0803CD7C
	ldr r0, _0803CD94 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r5
	adds r0, #0x60
	ldrh r1, [r0]
	movs r7, #0xe
	ldrsh r0, [r3, r7]
	cmp r1, r0
	bne _0803CD7C
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	bne _0803CD7C
	movs r0, #2
	orrs r0, r2
	strh r0, [r3, #8]
_0803CD7C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0803CD48
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803CD8C: .4byte gUnk_02022930
_0803CD90: .4byte gKirbys
_0803CD94: .4byte gUnk_0203AD3C

	thumb_func_start sub_0803CD98
sub_0803CD98: @ 0x0803CD98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x78
	ldr r4, [sp, #0x98]
	ldr r5, [sp, #0x9c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x68]
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r8, r4
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #0x6c]
	add r1, sp, #0x40
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp, #0x40]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0
	strh r0, [r1, #0x10]
	strh r0, [r1, #0x12]
	strh r0, [r1, #0x14]
	strh r0, [r1, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r0, sl
	strb r0, [r1, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [r1, #8]
	adds r7, r1, #0
	add r5, sp, #0x20
	cmp r3, #0
	bne _0803CE0A
	cmp r4, #0
	bne _0803CE0A
	mov r1, sl
	lsls r0, r1, #5
	ldr r1, _0803CF6C @ =gObjPalette
	adds r0, r0, r1
	adds r1, r5, #0
	movs r2, #0x10
	bl CpuSet
_0803CE0A:
	ldr r2, [sp, #0x68]
	cmp r2, #0
	bne _0803CE14
	cmp r6, #0
	beq _0803CE22
_0803CE14:
	add r3, sp, #0x68
	ldrh r3, [r3]
	strh r3, [r7, #0xc]
	strb r6, [r7, #0x1a]
	adds r0, r7, #0
	bl sub_08155128
_0803CE22:
	mov r0, sl
	lsls r4, r0, #5
	ldr r0, _0803CF6C @ =gObjPalette
	adds r6, r4, r0
	adds r0, r6, #0
	mov r1, sp
	movs r2, #0x10
	bl CpuSet
	str r4, [sp, #0x70]
	mov r1, sb
	cmp r1, #0
	bne _0803CE42
	mov r2, r8
	cmp r2, #0
	beq _0803CE5A
_0803CE42:
	mov r3, sb
	strh r3, [r7, #0xc]
	mov r4, r8
	strb r4, [r7, #0x1a]
	adds r0, r7, #0
	bl sub_08155128
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0x10
	bl CpuSet
_0803CE5A:
	movs r7, #1
	mov r8, r7
	ldr r0, _0803CF70 @ =gUnk_03002440
	mov ip, r0
	mov r1, sl
	lsls r1, r1, #0x1c
	mov sl, r1
	movs r6, #0x1f
	str r5, [sp, #0x74]
	movs r2, #0xe0
	mov sb, r2
	movs r5, #0x80
_0803CE72:
	mov r3, r8
	lsls r2, r3, #1
	mov r4, sp
	adds r0, r4, r2
	ldrb r3, [r0]
	ldr r7, [sp, #0x74]
	adds r0, r7, r2
	ldrb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	adds r1, r6, #0
	ands r1, r3
	subs r0, r0, r1
	ldr r3, [sp, #0x6c]
	muls r0, r3, r0
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r1, #0
	mov r4, sb
	ands r0, r4
	adds r4, r2, #0
	cmp r0, #0
	beq _0803CEB0
	ands r1, r5
	movs r3, #0x1f
	cmp r1, #0
	beq _0803CEB0
	movs r3, #0
_0803CEB0:
	lsls r0, r3, #0x18
	asrs r0, r0, #8
	lsrs r2, r0, #0x10
	mov r7, sp
	adds r0, r7, r4
	ldrh r1, [r0]
	lsrs r1, r1, #5
	ldr r3, [sp, #0x74]
	adds r0, r3, r4
	ldrh r0, [r0]
	lsrs r0, r0, #5
	ands r0, r6
	ands r1, r6
	subs r0, r0, r1
	ldr r7, [sp, #0x6c]
	muls r0, r7, r0
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r1, #0
	mov r7, sb
	ands r0, r7
	cmp r0, #0
	beq _0803CEEE
	ands r1, r5
	movs r3, #0x1f
	cmp r1, #0
	beq _0803CEEE
	movs r3, #0
_0803CEEE:
	lsls r0, r3, #0x18
	asrs r0, r0, #0x13
	orrs r2, r0
	lsls r0, r2, #0x10
	lsrs r2, r0, #0x10
	mov r1, sp
	adds r0, r1, r4
	ldrh r1, [r0]
	lsrs r1, r1, #0xa
	ldr r3, [sp, #0x74]
	adds r0, r3, r4
	ldrh r0, [r0]
	lsrs r0, r0, #0xa
	ands r0, r6
	ands r1, r6
	subs r0, r0, r1
	ldr r7, [sp, #0x6c]
	muls r0, r7, r0
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r1, #0
	mov r7, sb
	ands r0, r7
	cmp r0, #0
	beq _0803CF30
	ands r1, r5
	movs r3, #0x1f
	cmp r1, #0
	beq _0803CF30
	movs r3, #0
_0803CF30:
	lsls r0, r3, #0x18
	asrs r0, r0, #0xe
	orrs r2, r0
	mov r1, sp
	adds r0, r1, r4
	strh r2, [r0]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r0, #0xf0
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	beq _0803CE72
	mov r3, ip
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ands r0, r1
	cmp r0, #0
	beq _0803CF74
	mov r4, sl
	lsrs r1, r4, #0x18
	mov r0, sp
	movs r2, #0x10
	bl sub_0815828C
	b _0803CF92
	.align 2, 0
_0803CF6C: .4byte gObjPalette
_0803CF70: .4byte gUnk_03002440
_0803CF74:
	ldr r1, _0803CFB4 @ =0x040000D4
	mov r7, sp
	str r7, [r1]
	ldr r0, _0803CFB8 @ =gObjPalette
	ldr r2, [sp, #0x70]
	adds r0, r2, r0
	str r0, [r1, #4]
	ldr r0, _0803CFBC @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r3, ip
	ldr r0, [r3]
	movs r1, #2
	orrs r0, r1
	str r0, [r3]
_0803CF92:
	mov r4, sl
	lsrs r1, r4, #0x17
	ldr r0, _0803CFB8 @ =gObjPalette
	adds r0, r1, r0
	ldr r2, _0803CFC0 @ =gUnk_02022320
	adds r1, r1, r2
	movs r2, #0x10
	bl CpuSet
	add sp, #0x78
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803CFB4: .4byte 0x040000D4
_0803CFB8: .4byte gObjPalette
_0803CFBC: .4byte 0x80000010
_0803CFC0: .4byte gUnk_02022320

	thumb_func_start sub_0803CFC4
sub_0803CFC4: @ 0x0803CFC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	ldr r4, [sp, #0x78]
	ldr r5, [sp, #0x7c]
	ldr r6, [sp, #0x80]
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #0x48]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov sl, r4
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov sb, r5
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	add r3, sp, #0x20
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp, #0x20]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0
	strh r0, [r3, #0x10]
	strh r0, [r3, #0x12]
	strh r0, [r3, #0x14]
	strh r0, [r3, #0x16]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r7, [r3, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [r3, #8]
	cmp r1, #0
	bne _0803D024
	cmp r2, #0
	beq _0803D030
_0803D024:
	strh r1, [r3, #0xc]
	mov r0, r8
	strb r0, [r3, #0x1a]
	adds r0, r3, #0
	bl sub_08155128
_0803D030:
	lsls r4, r7, #5
	ldr r0, _0803D140 @ =gObjPalette
	adds r0, r4, r0
	mov r1, sp
	movs r2, #0x10
	bl CpuSet
	movs r5, #1
	str r4, [sp, #0x4c]
	ldr r1, [sp, #0x48]
	lsls r1, r1, #0x18
	str r1, [sp, #0x54]
	mov r2, sl
	lsls r2, r2, #0x18
	mov sl, r2
	mov r4, sb
	lsls r4, r4, #0x18
	mov sb, r4
	lsls r0, r7, #0x1c
	str r0, [sp, #0x50]
	movs r1, #0x1f
	mov r8, r1
	movs r2, #0xe0
	mov ip, r2
_0803D060:
	lsls r3, r5, #1
	mov r4, sp
	adds r0, r4, r3
	ldrb r2, [r0]
	ldr r7, [sp, #0x54]
	asrs r0, r7, #0x18
	adds r1, r0, #0
	muls r1, r6, r1
	asrs r1, r1, #8
	mov r0, r8
	ands r0, r2
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	asrs r1, r0, #0x18
	adds r0, r1, #0
	mov r4, ip
	ands r0, r4
	adds r4, r3, #0
	cmp r0, #0
	beq _0803D096
	movs r7, #0x80
	ands r1, r7
	movs r2, #0x1f
	cmp r1, #0
	beq _0803D096
	movs r2, #0
_0803D096:
	lsls r0, r2, #0x18
	asrs r0, r0, #8
	lsrs r3, r0, #0x10
	mov r1, sp
	adds r0, r1, r4
	ldrh r0, [r0]
	lsrs r0, r0, #5
	mov r2, sl
	asrs r1, r2, #0x18
	muls r1, r6, r1
	asrs r1, r1, #8
	mov r7, r8
	ands r0, r7
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	asrs r1, r0, #0x18
	adds r0, r1, #0
	mov r7, ip
	ands r0, r7
	cmp r0, #0
	beq _0803D0CE
	movs r0, #0x80
	ands r1, r0
	movs r2, #0x1f
	cmp r1, #0
	beq _0803D0CE
	movs r2, #0
_0803D0CE:
	lsls r0, r2, #0x18
	asrs r0, r0, #0x13
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
	mov r1, sp
	adds r0, r1, r4
	ldrh r0, [r0]
	lsrs r0, r0, #0xa
	mov r2, sb
	asrs r1, r2, #0x18
	muls r1, r6, r1
	asrs r1, r1, #8
	mov r7, r8
	ands r0, r7
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	asrs r1, r0, #0x18
	adds r0, r1, #0
	mov r7, ip
	ands r0, r7
	cmp r0, #0
	beq _0803D10A
	movs r0, #0x80
	ands r1, r0
	movs r2, #0x1f
	cmp r1, #0
	beq _0803D10A
	movs r2, #0
_0803D10A:
	lsls r0, r2, #0x18
	asrs r0, r0, #0xe
	orrs r3, r0
	mov r1, sp
	adds r0, r1, r4
	strh r3, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r0, #0xf0
	ands r0, r5
	cmp r0, #0
	beq _0803D060
	ldr r3, _0803D144 @ =gUnk_03002440
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _0803D148
	ldr r2, [sp, #0x50]
	lsrs r1, r2, #0x18
	mov r0, sp
	movs r2, #0x10
	bl sub_0815828C
	b _0803D162
	.align 2, 0
_0803D140: .4byte gObjPalette
_0803D144: .4byte gUnk_03002440
_0803D148:
	ldr r1, _0803D190 @ =0x040000D4
	mov r4, sp
	str r4, [r1]
	ldr r0, _0803D194 @ =gObjPalette
	ldr r7, [sp, #0x4c]
	adds r0, r7, r0
	str r0, [r1, #4]
	ldr r0, _0803D198 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #2
	orrs r2, r0
	str r2, [r3]
_0803D162:
	ldr r2, _0803D19C @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, [sp, #0x50]
	lsrs r1, r0, #0x17
	ldr r0, _0803D194 @ =gObjPalette
	adds r0, r1, r0
	ldr r2, _0803D1A0 @ =gUnk_02022320
	adds r1, r1, r2
	movs r2, #0x10
	bl CpuSet
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803D190: .4byte 0x040000D4
_0803D194: .4byte gObjPalette
_0803D198: .4byte 0x80000010
_0803D19C: .4byte gUnk_03002440
_0803D1A0: .4byte gUnk_02022320

	thumb_func_start sub_0803D1A4
sub_0803D1A4: @ 0x0803D1A4
	push {lr}
	lsls r0, r0, #0x18
	ldr r1, _0803D1BC @ =gUnk_02022930
	lsrs r0, r0, #0x14
	adds r0, r0, r1
	ldrh r1, [r0, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0803D1C0
	movs r0, #0
	b _0803D1C2
	.align 2, 0
_0803D1BC: .4byte gUnk_02022930
_0803D1C0:
	movs r0, #1
_0803D1C2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803D1C8
sub_0803D1C8: @ 0x0803D1C8
	push {lr}
	ldr r2, _0803D1FC @ =gUnk_02022930
	ldrh r1, [r2, #8]
	movs r3, #4
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0803D200
	ldrh r1, [r2, #0x18]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0803D200
	ldrh r1, [r2, #0x28]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0803D200
	ldrh r1, [r2, #0x38]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0803D200
	movs r0, #1
	b _0803D202
	.align 2, 0
_0803D1FC: .4byte gUnk_02022930
_0803D200:
	movs r0, #0
_0803D202:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803D208
sub_0803D208: @ 0x0803D208
	push {lr}
	ldr r0, _0803D218 @ =gUnk_02022920
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_0803D218: .4byte gUnk_02022920

	thumb_func_start sub_0803D21C
sub_0803D21C: @ 0x0803D21C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r5, r5, #0x18
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r1, _0803D248 @ =gBgPalette
	lsrs r5, r5, #0x17
	adds r1, r5, r1
	adds r2, r6, #0
	bl CpuSet
	ldr r1, _0803D24C @ =gUnk_02022120
	adds r1, r5, r1
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803D248: .4byte gBgPalette
_0803D24C: .4byte gUnk_02022120

	thumb_func_start sub_0803D250
sub_0803D250: @ 0x0803D250
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r0, [r0]
	ldr r4, _0803D274 @ =gUnk_02022120
	ldr r2, _0803D278 @ =0x04000030
	adds r1, r4, #0
	bl CpuSet
	ldr r0, [r5]
	adds r4, #0xc0
	ldr r2, _0803D27C @ =0x04000040
	adds r1, r4, #0
	bl CpuSet
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803D274: .4byte gUnk_02022120
_0803D278: .4byte 0x04000030
_0803D27C: .4byte 0x04000040

	thumb_func_start sub_0803D280
sub_0803D280: @ 0x0803D280
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	lsls r3, r3, #0x18
	lsls r2, r2, #0x18
	lsrs r3, r3, #0x17
	ldr r0, _0803D2A0 @ =gObjPalette
	adds r0, r3, r0
	ldr r1, _0803D2A4 @ =gUnk_02022320
	adds r3, r3, r1
	lsrs r2, r2, #0x18
	adds r1, r3, #0
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_0803D2A0: .4byte gObjPalette
_0803D2A4: .4byte gUnk_02022320

	thumb_func_start sub_0803D2A8
sub_0803D2A8: @ 0x0803D2A8
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	lsls r3, r3, #0x18
	lsls r2, r2, #0x18
	lsrs r3, r3, #0x17
	ldr r0, _0803D2C8 @ =gBgPalette
	adds r0, r3, r0
	ldr r1, _0803D2CC @ =gUnk_02022120
	adds r3, r3, r1
	lsrs r2, r2, #0x18
	adds r1, r3, #0
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_0803D2C8: .4byte gBgPalette
_0803D2CC: .4byte gUnk_02022120

	thumb_func_start sub_0803D2D0
sub_0803D2D0: @ 0x0803D2D0
	push {lr}
	ldr r0, _0803D2E4 @ =gUnk_02022120
	ldr r1, _0803D2E8 @ =gUnk_02022520
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuFastSet
	pop {r0}
	bx r0
	.align 2, 0
_0803D2E4: .4byte gUnk_02022120
_0803D2E8: .4byte gUnk_02022520

	thumb_func_start sub_0803D2EC
sub_0803D2EC: @ 0x0803D2EC
	push {lr}
	ldr r0, _0803D300 @ =gUnk_02022520
	ldr r1, _0803D304 @ =gUnk_02022120
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuFastSet
	pop {r0}
	bx r0
	.align 2, 0
_0803D300: .4byte gUnk_02022520
_0803D304: .4byte gUnk_02022120

	thumb_func_start sub_0803D308
sub_0803D308: @ 0x0803D308
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x14
	ldr r1, _0803D314 @ =gUnk_02022930
	adds r0, r0, r1
	bx lr
	.align 2, 0
_0803D314: .4byte gUnk_02022930

	thumb_func_start sub_0803D318
sub_0803D318: @ 0x0803D318
	ldr r1, _0803D320 @ =gUnk_02022920
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_0803D320: .4byte gUnk_02022920

	thumb_func_start sub_0803D324
sub_0803D324: @ 0x0803D324
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	ldr r0, _0803D350 @ =gUnk_02022930
	lsls r1, r3, #2
	adds r0, #0x80
	adds r4, r1, r0
	ldr r2, [r4]
	cmp r2, #0
	beq _0803D360
	ldrb r0, [r2, #3]
	ldrb r1, [r5, #3]
	cmp r0, r1
	bhi _0803D354
	adds r1, r3, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl sub_0803D324
	b _0803D362
	.align 2, 0
_0803D350: .4byte gUnk_02022930
_0803D354:
	adds r1, r3, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r2, #0
	bl sub_0803D324
_0803D360:
	str r5, [r4]
_0803D362:
	pop {r4, r5}
	pop {r0}
	bx r0
