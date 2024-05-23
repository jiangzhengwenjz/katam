	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08145324
sub_08145324: @ 0x08145324
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x40
	movs r1, #0xe9
	lsls r1, r1, #3
	adds r0, r5, r1
	bl sub_0815604C
	movs r3, #0xee
	lsls r3, r3, #3
	adds r0, r5, r3
	bl sub_0815604C
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r4, [r0]
	cmp r4, #0
	bne _08145374
	ldr r7, _08145370 @ =0x000008D8
	adds r0, r5, r7
	bl sub_0815604C
	adds r0, r5, #0
	adds r0, #0x37
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08145398
	movs r1, #0xf8
	lsls r1, r1, #3
	adds r0, r5, r1
	bl sub_0815604C
	b _08145398
	.align 2, 0
_08145370: .4byte 0x000008D8
_08145374:
	cmp r4, #1
	bne _08145398
	movs r3, #0x90
	lsls r3, r3, #4
	adds r0, r5, r3
	bl sub_0815604C
	adds r0, r5, #0
	adds r0, #0x37
	ldrb r0, [r0]
	ands r4, r0
	cmp r4, #0
	beq _08145398
	movs r7, #0xf3
	lsls r7, r7, #3
	adds r0, r5, r7
	bl sub_0815604C
_08145398:
	movs r2, #0
	ldr r4, _081453B0 @ =gUnk_08386A50
	ldr r0, _081453B4 @ =gUnk_08386B28
	movs r3, #0x2e
	ldrsh r1, [r5, r3]
	lsls r1, r1, #2
	adds r3, r0, #2
	adds r1, r1, r3
	ldrh r0, [r4]
	adds r7, r5, #2
	mov r8, r7
	b _081453D0
	.align 2, 0
_081453B0: .4byte gUnk_08386A50
_081453B4: .4byte gUnk_08386B28
_081453B8:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _081453D6
	lsls r0, r2, #2
	adds r0, r0, r4
	movs r7, #0x2e
	ldrsh r1, [r5, r7]
	lsls r1, r1, #2
	adds r1, r1, r3
	ldrh r0, [r0]
_081453D0:
	ldrh r1, [r1]
	cmp r0, r1
	bne _081453B8
_081453D6:
	mov r1, r8
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08145404
	movs r3, #0x2e
	ldrsh r0, [r5, r3]
	cmp r0, #0x63
	ble _081453F2
	movs r7, #0xf5
	lsls r7, r7, #3
	adds r0, r6, r7
	bl sub_0815604C
_081453F2:
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	cmp r0, #9
	ble _08145404
	movs r3, #0xfa
	lsls r3, r3, #3
	adds r0, r6, r3
	bl sub_0815604C
_08145404:
	movs r7, #0xff
	lsls r7, r7, #3
	adds r0, r6, r7
	bl sub_0815604C
	movs r2, #0
	ldr r4, _08145484 @ =gUnk_08386A50
	ldr r1, _08145488 @ =gUnk_08386BD0
	movs r3, #0x32
	ldrsh r0, [r5, r3]
	lsls r0, r0, #2
	adds r3, r1, #2
	adds r0, r0, r3
	ldrh r1, [r4]
	ldrh r0, [r0]
	cmp r1, r0
	beq _08145444
_08145426:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _08145444
	lsls r0, r2, #2
	adds r0, r0, r4
	movs r7, #0x32
	ldrsh r1, [r5, r7]
	lsls r1, r1, #2
	adds r1, r1, r3
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08145426
_08145444:
	mov r1, r8
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08145470
	movs r3, #0x32
	ldrsh r0, [r5, r3]
	cmp r0, #0x63
	ble _08145460
	movs r7, #0x82
	lsls r7, r7, #4
	adds r0, r6, r7
	bl sub_0815604C
_08145460:
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	cmp r0, #9
	ble _08145470
	ldr r3, _0814548C @ =0x00000848
	adds r0, r6, r3
	bl sub_0815604C
_08145470:
	movs r7, #0x87
	lsls r7, r7, #4
	adds r0, r6, r7
	bl sub_0815604C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08145484: .4byte gUnk_08386A50
_08145488: .4byte gUnk_08386BD0
_0814548C: .4byte 0x00000848

	thumb_func_start sub_08145490
sub_08145490: @ 0x08145490
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, _081454A8 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _081454AC
	movs r0, #0
	b _08145564
	.align 2, 0
_081454A8: .4byte gPressedKeys
_081454AC:
	movs r3, #0
	ldr r7, _08145520 @ =gUnk_08386A50
	ldr r0, _08145524 @ =gUnk_08386B28
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	lsls r1, r1, #2
	adds r5, r0, #2
	adds r1, r1, r5
	ldrh r2, [r7]
	mov r8, r0
	adds r0, r4, #2
	mov ip, r0
	ldr r6, _08145528 @ =gUnk_030016A0
	ldrh r1, [r1]
	cmp r2, r1
	beq _081454EC
	adds r2, r5, #0
_081454CE:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x27
	bhi _081454EC
	lsls r0, r3, #2
	adds r0, r0, r7
	movs r5, #0x2e
	ldrsh r1, [r4, r5]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _081454CE
_081454EC:
	mov r1, ip
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08145558
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	movs r5, #0x30
	ldrsh r0, [r4, r5]
	cmp r1, r0
	beq _08145530
	ldr r1, _0814552C @ =gSongTable
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl MPlayStart
	ldrh r0, [r4, #0x2e]
	b _08145560
	.align 2, 0
_08145520: .4byte gUnk_08386A50
_08145524: .4byte gUnk_08386B28
_08145528: .4byte gUnk_030016A0
_0814552C: .4byte gSongTable
_08145530:
	ldr r0, [r6, #4]
	cmp r0, #0
	bge _08145558
	ldr r1, _08145554 @ =gSongTable
	movs r5, #0x2e
	ldrsh r0, [r4, r5]
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl MPlayStart
	ldrh r0, [r4, #0x2e]
	b _08145560
	.align 2, 0
_08145554: .4byte gSongTable
_08145558:
	adds r0, r6, #0
	bl MPlayStop
	ldr r0, _08145570 @ =0x0000FFFF
_08145560:
	strh r0, [r4, #0x30]
	movs r0, #1
_08145564:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08145570: .4byte 0x0000FFFF

	thumb_func_start sub_08145574
sub_08145574: @ 0x08145574
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, _0814558C @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08145590
	movs r0, #0
	b _08145610
	.align 2, 0
_0814558C: .4byte gPressedKeys
_08145590:
	movs r3, #0
	ldr r6, _081455F4 @ =gUnk_08386A50
	ldr r0, _081455F8 @ =gUnk_08386BD0
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	lsls r1, r1, #2
	adds r5, r0, #2
	adds r1, r1, r5
	ldrh r2, [r6]
	mov r8, r0
	adds r7, r4, #2
	ldr r0, _081455FC @ =gUnk_030016E0
	mov ip, r0
	ldrh r1, [r1]
	cmp r2, r1
	beq _081455D0
	adds r2, r5, #0
_081455B2:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x27
	bhi _081455D0
	lsls r0, r3, #2
	adds r0, r0, r6
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _081455B2
_081455D0:
	adds r0, r7, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08145604
	ldr r1, _08145600 @ =gSongTable
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0]
	mov r0, ip
	bl MPlayStart
	ldrh r0, [r4, #0x32]
	b _0814560C
	.align 2, 0
_081455F4: .4byte gUnk_08386A50
_081455F8: .4byte gUnk_08386BD0
_081455FC: .4byte gUnk_030016E0
_08145600: .4byte gSongTable
_08145604:
	mov r0, ip
	bl MPlayStop
	ldr r0, _0814561C @ =0x0000FFFF
_0814560C:
	strh r0, [r4, #0x34]
	movs r0, #1
_08145610:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0814561C: .4byte 0x0000FFFF

	thumb_func_start sub_08145620
sub_08145620: @ 0x08145620
	push {r4, lr}
	ldr r0, _0814563C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08145640
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08145648
	.align 2, 0
_0814563C: .4byte gCurTask
_08145640:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08145648:
	adds r0, r4, #0
	bl sub_081436D8
	ldr r1, [r4, #0x38]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0814565C
sub_0814565C: @ 0x0814565C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_08145662:
	adds r0, r4, #0
	bl sub_08145B00
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08145662
	movs r4, #0
_08145674:
	adds r0, r4, #0
	bl sub_08145B2C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _08145674
	ldr r0, _08145690 @ =sub_08145694
	str r0, [r5, #0x38]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08145690: .4byte sub_08145694

	thumb_func_start sub_08145694
sub_08145694: @ 0x08145694
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r2, _081456CC @ =gUnk_08386664
	ldr r0, _081456D0 @ =gLanguage
	ldrh r1, [r0]
	movs r0, #0x4e
	muls r0, r1, r0
	adds r0, r0, r2
	ldrh r4, [r0]
	ldr r5, _081456D4 @ =gMainFlags
	ldr r3, [r5]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _081456DC
	ldr r1, _081456D8 @ =gUnk_082D7850
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #0
	movs r2, #0x80
	lsls r2, r2, #1
	bl LoadBgPaletteWithTransformation
	b _081456FA
	.align 2, 0
_081456CC: .4byte gUnk_08386664
_081456D0: .4byte gLanguage
_081456D4: .4byte gMainFlags
_081456D8: .4byte gUnk_082D7850
_081456DC:
	ldr r2, _08145704 @ =0x040000D4
	ldr r1, _08145708 @ =gUnk_082D7850
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	str r0, [r2]
	ldr r0, _0814570C @ =gBgPalette
	str r0, [r2, #4]
	ldr r0, _08145710 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #1
	orrs r3, r0
	str r3, [r5]
_081456FA:
	ldr r0, _08145714 @ =sub_08143E6C
	str r0, [r6, #0x38]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08145704: .4byte 0x040000D4
_08145708: .4byte gUnk_082D7850
_0814570C: .4byte gBgPalette
_08145710: .4byte 0x80000100
_08145714: .4byte sub_08143E6C

	thumb_func_start sub_08145718
sub_08145718: @ 0x08145718
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_0814571E:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0814389C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1e
	bls _0814571E
	ldr r0, _0814573C @ =sub_08145740
	str r0, [r5, #0x38]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814573C: .4byte sub_08145740

	thumb_func_start sub_08145740
sub_08145740: @ 0x08145740
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0x1f
_08145746:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0814389C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _08145746
	adds r0, r5, #0
	bl sub_08143AF8
	adds r0, r5, #0
	bl sub_081439D8
	ldr r0, _08145770 @ =sub_08145774
	str r0, [r5, #0x38]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08145770: .4byte sub_08145774

	thumb_func_start sub_08145774
sub_08145774: @ 0x08145774
	movs r1, #0
	strh r1, [r0, #0x3c]
	ldr r1, _08145780 @ =sub_08145784
	str r1, [r0, #0x38]
	bx lr
	.align 2, 0
_08145780: .4byte sub_08145784

	thumb_func_start sub_08145784
sub_08145784: @ 0x08145784
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r4, [r6, #0x3c]
	adds r4, #1
	strh r4, [r6, #0x3c]
	ldr r5, _081457EC @ =gBldRegs
	movs r1, #0x3c
	ldrsh r0, [r6, r1]
	lsls r0, r0, #4
	movs r1, #0xa
	bl __divsi3
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #9
	ble _081457AE
	ldr r0, _081457F0 @ =sub_081457F4
	str r0, [r6, #0x38]
_081457AE:
	movs r4, #0
	adds r5, r6, #2
	movs r0, #0xd0
	lsls r0, r0, #3
	adds r7, r6, r0
_081457B8:
	adds r0, r5, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _081457CE
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r6, r0
	bl sub_0815604C
_081457CE:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _081457B8
	adds r0, r7, #0
	bl sub_0815604C
	adds r0, r6, #0
	bl sub_08145974
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081457EC: .4byte gBldRegs
_081457F0: .4byte sub_081457F4

	thumb_func_start sub_081457F4
sub_081457F4: @ 0x081457F4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08145840 @ =gBldRegs
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	ldr r0, _08145844 @ =sub_08143F88
	str r0, [r5, #0x38]
	movs r4, #0
_08145808:
	adds r0, r5, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08145820
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r5, r0
	bl sub_0815604C
_08145820:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _08145808
	movs r1, #0xd0
	lsls r1, r1, #3
	adds r0, r5, r1
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_08145974
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08145840: .4byte gBldRegs
_08145844: .4byte sub_08143F88

	thumb_func_start sub_08145848
sub_08145848: @ 0x08145848
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _08145898 @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	strh r2, [r5, #0x3c]
	ldr r0, _0814589C @ =sub_081458A0
	str r0, [r5, #0x38]
	movs r4, #0
_08145860:
	adds r0, r5, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08145878
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r5, r0
	bl sub_0815604C
_08145878:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _08145860
	movs r1, #0xd0
	lsls r1, r1, #3
	adds r0, r5, r1
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_08145974
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08145898: .4byte gBldRegs
_0814589C: .4byte sub_081458A0

	thumb_func_start sub_081458A0
sub_081458A0: @ 0x081458A0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r4, [r6, #0x3c]
	adds r4, #1
	strh r4, [r6, #0x3c]
	ldr r5, _08145904 @ =gBldRegs
	movs r1, #0x3c
	ldrsh r0, [r6, r1]
	lsls r0, r0, #4
	movs r1, #5
	bl __divsi3
	strh r0, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #4
	ble _081458C6
	ldr r0, _08145908 @ =sub_0814590C
	str r0, [r6, #0x38]
_081458C6:
	movs r4, #0
	adds r5, r6, #2
	movs r0, #0xd0
	lsls r0, r0, #3
	adds r7, r6, r0
_081458D0:
	adds r0, r5, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _081458E6
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r6, r0
	bl sub_0815604C
_081458E6:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _081458D0
	adds r0, r7, #0
	bl sub_0815604C
	adds r0, r6, #0
	bl sub_08145974
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08145904: .4byte gBldRegs
_08145908: .4byte sub_0814590C

	thumb_func_start sub_0814590C
sub_0814590C: @ 0x0814590C
	push {lr}
	sub sp, #4
	bl m4aMPlayAllStop
	mov r0, sp
	ldr r1, _08145958 @ =0x00007FFF
	adds r3, r1, #0
	strh r3, [r0]
	ldr r0, _0814595C @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _08145960 @ =gBgPalette
	str r1, [r0, #4]
	ldr r2, _08145964 @ =0x81000100
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r3, [r1]
	str r1, [r0]
	ldr r1, _08145968 @ =gObjPalette
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldr r2, _0814596C @ =gMainFlags
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r0, _08145970 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl sub_08138F68
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08145958: .4byte 0x00007FFF
_0814595C: .4byte 0x040000D4
_08145960: .4byte gBgPalette
_08145964: .4byte 0x81000100
_08145968: .4byte gObjPalette
_0814596C: .4byte gMainFlags
_08145970: .4byte gCurTask

	thumb_func_start sub_08145974
sub_08145974: @ 0x08145974
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x2a
	movs r1, #0
	ldrsb r1, [r5, r1]
	adds r0, r4, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _081459E6
	ldr r6, _081459A0 @ =gUnk_08386A50
	lsls r0, r1, #2
	adds r0, r0, r6
	ldrh r0, [r0]
	lsrs r0, r0, #8
	cmp r0, #1
	beq _081459A4
	cmp r0, #0x10
	beq _081459D2
	b _081459E6
	.align 2, 0
_081459A0: .4byte gUnk_08386A50
_081459A4:
	movs r1, #0xda
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	movs r1, #0xd5
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _081459E6
	movs r1, #0xdf
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	b _081459E6
_081459D2:
	adds r0, r4, #0
	adds r0, #0x37
	ldrb r0, [r0]
	cmp r0, #0
	beq _081459E6
	movs r1, #0xd5
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
_081459E6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_081459EC
sub_081459EC: @ 0x081459EC
	movs r1, #0xe4
	lsls r1, r1, #3
	adds r0, r0, r1
	movs r1, #0x67
	strh r1, [r0, #0x10]
	movs r1, #0x81
	strh r1, [r0, #0x12]
	bx lr

	thumb_func_start sub_081459FC
sub_081459FC: @ 0x081459FC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0xe4
	lsls r0, r0, #3
	adds r6, r4, r0
	ldr r5, _08145A48 @ =gSineTable
	movs r1, #0x3c
	ldrsh r0, [r4, r1]
	lsls r0, r0, #0xb
	movs r1, #0x1e
	bl __udivsi3
	ldr r1, _08145A4C @ =0x000003FF
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r1, r0, #3
	adds r1, r1, r0
	asrs r1, r1, #0xe
	movs r0, #0x70
	subs r0, r0, r1
	strh r0, [r6, #0x10]
	movs r0, #0x3c
	ldrsh r1, [r4, r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0x1e
	bl __divsi3
	adds r0, #0x81
	strh r0, [r6, #0x12]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08145A48: .4byte gSineTable
_08145A4C: .4byte 0x000003FF

	thumb_func_start sub_08145A50
sub_08145A50: @ 0x08145A50
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0xeb
	lsls r1, r1, #3
	adds r0, r5, r1
	movs r1, #0x60
	strh r1, [r0]
	movs r2, #0xf0
	lsls r2, r2, #3
	adds r0, r5, r2
	strh r1, [r0]
	ldr r0, _08145AA4 @ =sub_08144A0C
	str r0, [r5, #0x38]
	movs r4, #0
_08145A6C:
	adds r0, r5, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08145A84
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r5, r0
	bl sub_0815604C
_08145A84:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _08145A6C
	movs r1, #0xd0
	lsls r1, r1, #3
	adds r0, r5, r1
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_08145324
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08145AA4: .4byte sub_08144A0C

	thumb_func_start sub_08145AA8
sub_08145AA8: @ 0x08145AA8
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0xeb
	lsls r1, r1, #3
	adds r0, r5, r1
	movs r1, #0x90
	strh r1, [r0]
	movs r2, #0xf0
	lsls r2, r2, #3
	adds r0, r5, r2
	strh r1, [r0]
	ldr r0, _08145AFC @ =sub_08144AA4
	str r0, [r5, #0x38]
	movs r4, #0
_08145AC4:
	adds r0, r5, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08145ADC
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r5, r0
	bl sub_0815604C
_08145ADC:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _08145AC4
	movs r1, #0xd0
	lsls r1, r1, #3
	adds r0, r5, r1
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_08145324
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08145AFC: .4byte sub_08144AA4

	thumb_func_start sub_08145B00
sub_08145B00: @ 0x08145B00
	sub sp, #4
	lsls r0, r0, #0x18
	mov r2, sp
	movs r1, #0
	strh r1, [r2]
	ldr r2, _08145B24 @ =0x040000D4
	mov r1, sp
	str r1, [r2]
	lsrs r0, r0, #0xa
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08145B28 @ =0x81002000
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	add sp, #4
	bx lr
	.align 2, 0
_08145B24: .4byte 0x040000D4
_08145B28: .4byte 0x81002000

	thumb_func_start sub_08145B2C
sub_08145B2C: @ 0x08145B2C
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r2, sp
	ldr r3, _08145B58 @ =0x000001FF
	adds r1, r3, #0
	strh r1, [r2]
	ldr r2, _08145B5C @ =0x040000D4
	mov r1, sp
	str r1, [r2]
	movs r1, #0x1f
	subs r1, r1, r0
	lsls r1, r1, #0xb
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r1, r1, r3
	str r1, [r2, #4]
	ldr r0, _08145B60 @ =0x81000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	add sp, #4
	bx lr
	.align 2, 0
_08145B58: .4byte 0x000001FF
_08145B5C: .4byte 0x040000D4
_08145B60: .4byte 0x81000400
