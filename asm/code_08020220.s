	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08020220
sub_08020220: @ 0x08020220
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r2, _08020284 @ =gUnk_03003A00
	ldrb r0, [r2]
	lsls r7, r0, #2
	lsls r1, r0, #1
	adds r6, r1, r0
	ldr r1, _08020288 @ =gUnk_0203A9A0
	strb r0, [r1]
	movs r0, #0
	strb r0, [r2]
	ldrb r5, [r1]
	cmp r5, #0x7f
	bhi _0802027A
_0802023C:
	lsls r4, r7, #1
	ldr r0, _0802028C @ =gOamBuffer
	adds r4, r4, r0
	lsls r1, r6, #1
	ldr r0, _08020290 @ =gUnk_0203A9B0
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #3
	bl CpuSet
	mov r1, sp
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	mov r0, sp
	adds r1, r4, #0
	ldr r2, _08020294 @ =0x01000003
	bl CpuSet
	adds r0, r7, #4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r6, #3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x7f
	bls _0802023C
_0802027A:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020284: .4byte gUnk_03003A00
_08020288: .4byte gUnk_0203A9A0
_0802028C: .4byte gOamBuffer
_08020290: .4byte gUnk_0203A9B0
_08020294: .4byte 0x01000003

	thumb_func_start sub_08020298
sub_08020298: @ 0x08020298
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	ldr r0, [r0, #4]
	mov r8, r0
	ldr r1, _0802032C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08020330 @ =gUnk_03003A04
	ldr r0, _08020334 @ =gUnk_03003790
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08020338 @ =gUnk_030068B0
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0802033C @ =gUnk_03006078
	ldr r0, _08020340 @ =gUnk_030039A4
	ldrb r0, [r0]
	strb r0, [r1]
	bl VramResetHeapState
	ldr r1, _08020344 @ =gVramHeapMaxTileSlots
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08020348 @ =gVramHeapStartAddr
	ldr r0, _0802034C @ =0x06010000
	str r0, [r1]
	bl EwramInitHeap
	ldr r4, _08020350 @ =gMainFlags
	ldr r0, [r4]
	ldr r1, _08020354 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4]
	ldr r1, _08020358 @ =gDispCnt
	movs r0, #0x40
	strh r0, [r1]
	mov r0, sp
	ldr r1, _0802035C @ =0x00007FFF
	adds r5, r1, #0
	strh r5, [r0]
	ldr r1, _08020360 @ =gBgPalette
	ldr r6, _08020364 @ =0x01000100
	adds r2, r6, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r5, [r0]
	ldr r1, _08020368 @ =gObjPalette
	adds r2, r6, #0
	bl CpuSet
	ldr r0, [r4]
	movs r1, #3
	orrs r0, r1
	str r0, [r4]
	ldr r1, _0802036C @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	bl _call_via_r8
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802032C: .4byte 0x0000FFFF
_08020330: .4byte gUnk_03003A04
_08020334: .4byte gUnk_03003790
_08020338: .4byte gUnk_030068B0
_0802033C: .4byte gUnk_03006078
_08020340: .4byte gUnk_030039A4
_08020344: .4byte gVramHeapMaxTileSlots
_08020348: .4byte gVramHeapStartAddr
_0802034C: .4byte 0x06010000
_08020350: .4byte gMainFlags
_08020354: .4byte 0xFFFFFBFF
_08020358: .4byte gDispCnt
_0802035C: .4byte 0x00007FFF
_08020360: .4byte gBgPalette
_08020364: .4byte 0x01000100
_08020368: .4byte gObjPalette
_0802036C: .4byte gBldRegs

	thumb_func_start sub_08020370
sub_08020370: @ 0x08020370
	push {r4, r5, r6, lr}
	ldr r2, _080203B8 @ =gUnk_0203A9A0
	ldrb r0, [r2]
	lsls r6, r0, #2
	lsls r1, r0, #1
	adds r5, r1, r0
	ldr r1, _080203BC @ =gUnk_03003A00
	strb r0, [r1]
	movs r0, #0
	strb r0, [r2]
	ldrb r4, [r1]
	cmp r4, #0x7f
	bhi _080203B2
_0802038A:
	lsls r0, r5, #1
	ldr r1, _080203C0 @ =gUnk_0203A9B0
	adds r0, r0, r1
	lsls r1, r6, #1
	ldr r2, _080203C4 @ =gOamBuffer
	adds r1, r1, r2
	movs r2, #3
	bl CpuSet
	adds r0, r6, #4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x7f
	bls _0802038A
_080203B2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080203B8: .4byte gUnk_0203A9A0
_080203BC: .4byte gUnk_03003A00
_080203C0: .4byte gUnk_0203A9B0
_080203C4: .4byte gOamBuffer

	thumb_func_start sub_080203C8
sub_080203C8: @ 0x080203C8
	push {r4, r5, r6, lr}
	sub sp, #8
	mov r0, sp
	movs r1, #0x80
	lsls r1, r1, #2
	adds r4, r1, #0
	strh r4, [r0]
	ldr r6, _08020420 @ =gOamBuffer
	ldr r5, _08020424 @ =0x01000080
	adds r1, r6, #0
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r6, r2
	adds r2, r5, #0
	bl CpuSet
	add r0, sp, #4
	strh r4, [r0]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r6, r2
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #6
	strh r4, [r0]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r6, r2
	adds r2, r5, #0
	bl CpuSet
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08020420: .4byte gOamBuffer
_08020424: .4byte 0x01000080

	thumb_func_start sub_08020428
sub_08020428: @ 0x08020428
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08020458 @ =sub_080205BC
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	movs r2, #1
	movs r3, #4
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802045C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08020464
	.align 2, 0
_08020458: .4byte sub_080205BC
_0802045C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08020464:
	ldr r0, _08020488 @ =sub_080205F0
	str r0, [r1]
	str r4, [r1, #4]
	movs r0, #0
	strh r0, [r1, #8]
	bl m4aMPlayAllStop
	ldr r2, _0802048C @ =gMainFlags
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
_08020488: .4byte sub_080205F0
_0802048C: .4byte gMainFlags

	thumb_func_start sub_08020490
sub_08020490: @ 0x08020490
	push {lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r1, _080204A8 @ =gUnk_02038990
	ldr r2, _080204AC @ =0x05000804
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080204A8: .4byte gUnk_02038990
_080204AC: .4byte 0x05000804

	thumb_func_start sub_080204B0
sub_080204B0: @ 0x080204B0
	push {r4, r5, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _080204E4 @ =gUnk_02038990
	lsls r1, r0, #9
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r0, r1, r2
	movs r3, #0
	strh r3, [r0]
	adds r0, r2, #2
	adds r0, r1, r0
	strh r3, [r0]
	adds r2, #4
	adds r1, r1, r2
	ldr r2, _080204E8 @ =0x001FFFFF
	ands r2, r4
	adds r0, r5, #0
	bl CpuSet
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080204E4: .4byte gUnk_02038990
_080204E8: .4byte 0x001FFFFF

	thumb_func_start sub_080204EC
sub_080204EC: @ 0x080204EC
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #9
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08020534 @ =gUnk_02038990
	adds r5, r1, r0
	ldrh r4, [r5, #2]
	movs r0, #0
	strh r0, [r5]
	ldr r3, _08020538 @ =0x000003FF
	ands r6, r3
	lsls r0, r4, #1
	adds r2, r0, r5
	ldrh r1, [r2, #4]
	cmp r1, #0
	beq _08020546
	adds r0, r3, #0
	ands r0, r1
	cmp r0, r6
	bne _08020540
	ldrh r3, [r2, #4]
	ldr r0, _0802053C @ =0xFFFFFC00
	ands r0, r3
	movs r1, #0xfc
	lsls r1, r1, #8
	cmp r0, r1
	beq _08020540
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r3, r1
	strh r0, [r2, #4]
	b _08020556
	.align 2, 0
_08020534: .4byte gUnk_02038990
_08020538: .4byte 0x000003FF
_0802053C: .4byte 0xFFFFFC00
_08020540:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08020546:
	lsls r0, r4, #1
	adds r0, r0, r5
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r6, r1
	strh r6, [r0, #4]
	strh r4, [r5, #2]
_08020556:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0802055C
sub_0802055C: @ 0x0802055C
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #9
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08020584 @ =gUnk_02038990
	adds r2, r1, r0
	ldrh r0, [r2, #2]
	lsls r0, r0, #1
	adds r4, r0, r2
	ldrh r1, [r4, #4]
	ldr r5, _08020588 @ =0xFFFFFC00
	adds r0, r1, #0
	ands r0, r5
	cmp r0, #0
	bne _0802058C
	movs r0, #0
	b _080205AE
	.align 2, 0
_08020584: .4byte gUnk_02038990
_08020588: .4byte 0xFFFFFC00
_0802058C:
	ldr r3, _080205B4 @ =0x000003FF
	ands r3, r1
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	ldrh r1, [r2]
	lsls r1, r1, #0xa
	ldrh r0, [r4, #4]
	ands r0, r5
	cmp r1, r0
	bne _080205AC
	ldrh r0, [r2, #2]
	adds r0, #1
	strh r0, [r2, #2]
	movs r0, #0
	strh r0, [r2]
_080205AC:
	adds r0, r3, #0
_080205AE:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080205B4: .4byte 0x000003FF

	thumb_func_start nullsub_112
nullsub_112: @ 0x080205B8
	bx lr
	.align 2, 0

	thumb_func_start sub_080205BC
sub_080205BC: @ 0x080205BC
	push {lr}
	ldr r0, _080205D8 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080205DC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080205E4
	.align 2, 0
_080205D8: .4byte gCurTask
_080205DC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080205E4:
	ldr r1, [r0]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080205F0
sub_080205F0: @ 0x080205F0
	push {lr}
	adds r3, r0, #0
	ldr r0, _08020614 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0802060A
	ldr r2, _08020618 @ =gUnk_020382D0
	ldrh r1, [r2, #4]
	ldr r0, _0802061C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #4]
_0802060A:
	ldr r0, _08020620 @ =sub_08020624
	str r0, [r3]
	pop {r0}
	bx r0
	.align 2, 0
_08020614: .4byte gUnk_0203AD10
_08020618: .4byte gUnk_020382D0
_0802061C: .4byte 0x0000FFFD
_08020620: .4byte sub_08020624

	thumb_func_start sub_08020624
sub_08020624: @ 0x08020624
	ldr r2, _08020638 @ =gBldRegs
	movs r3, #0
	movs r1, #0xbf
	strh r1, [r2]
	strh r3, [r2, #4]
	strh r3, [r0, #8]
	ldr r1, _0802063C @ =sub_08020640
	str r1, [r0]
	bx lr
	.align 2, 0
_08020638: .4byte gBldRegs
_0802063C: .4byte sub_08020640

	thumb_func_start sub_08020640
sub_08020640: @ 0x08020640
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #8]
	adds r1, r0, #1
	strh r1, [r2, #8]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08020668
	ldr r0, _08020660 @ =gBldRegs
	movs r1, #0x10
	strh r1, [r0, #4]
	ldr r0, _08020664 @ =sub_08020674
	str r0, [r2]
	b _0802066C
	.align 2, 0
_08020660: .4byte gBldRegs
_08020664: .4byte sub_08020674
_08020668:
	ldr r0, _08020670 @ =gBldRegs
	strh r1, [r0, #4]
_0802066C:
	pop {r0}
	bx r0
	.align 2, 0
_08020670: .4byte gBldRegs

	thumb_func_start sub_08020674
sub_08020674: @ 0x08020674
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08020698 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0802068C
	bl sub_08031CC8
	bl sub_081589E8
_0802068C:
	ldr r0, _0802069C @ =sub_08020298
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08020698: .4byte gUnk_0203AD10
_0802069C: .4byte sub_08020298
