	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start _call_via_r0
_call_via_r0: @ 0x0815A298
	bx r0
	nop

	thumb_func_start _call_via_r1
_call_via_r1: @ 0x0815A29C
	bx r1
	nop

	thumb_func_start _call_via_r2
_call_via_r2: @ 0x0815A2A0
	bx r2
	nop

	thumb_func_start _call_via_r3
_call_via_r3: @ 0x0815A2A4
	bx r3
	nop

	thumb_func_start _call_via_r4
_call_via_r4: @ 0x0815A2A8
	bx r4
	nop

	thumb_func_start _call_via_r5
_call_via_r5: @ 0x0815A2AC
	bx r5
	nop

	thumb_func_start _call_via_r6
_call_via_r6: @ 0x0815A2B0
	bx r6
	nop

	thumb_func_start _call_via_r7
_call_via_r7: @ 0x0815A2B4
	bx r7
	nop

	thumb_func_start _call_via_r8
_call_via_r8: @ 0x0815A2B8
	bx r8
	nop

	thumb_func_start _call_via_r9
_call_via_r9: @ 0x0815A2BC
	bx sb
	nop

	thumb_func_start _call_via_sl
_call_via_sl: @ 0x0815A2C0
	bx sl
	nop

	thumb_func_start _call_via_fp
_call_via_fp: @ 0x0815A2C4
	bx fp
	nop

	thumb_func_start _call_via_ip
_call_via_ip: @ 0x0815A2C8
	bx ip
	nop

	thumb_func_start _call_via_sp
_call_via_sp: @ 0x0815A2CC
	bx sp
	nop

	thumb_func_start _call_via_lr
_call_via_lr: @ 0x0815A2D0
	bx lr
	nop

	thumb_func_start __divsi3
__divsi3: @ 0x0815A2D4
	cmp r1, #0
	beq _0815A35C
	push {r4}
	adds r4, r0, #0
	eors r4, r1
	mov ip, r4
	movs r3, #1
	movs r2, #0
	cmp r1, #0
	bpl _0815A2EA
	rsbs r1, r1, #0
_0815A2EA:
	cmp r0, #0
	bpl _0815A2F0
	rsbs r0, r0, #0
_0815A2F0:
	cmp r0, r1
	blo _0815A34E
	movs r4, #1
	lsls r4, r4, #0x1c
_0815A2F8:
	cmp r1, r4
	bhs _0815A306
	cmp r1, r0
	bhs _0815A306
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _0815A2F8
_0815A306:
	lsls r4, r4, #3
_0815A308:
	cmp r1, r4
	bhs _0815A316
	cmp r1, r0
	bhs _0815A316
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _0815A308
_0815A316:
	cmp r0, r1
	blo _0815A31E
	subs r0, r0, r1
	orrs r2, r3
_0815A31E:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _0815A32A
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_0815A32A:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _0815A336
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_0815A336:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _0815A342
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_0815A342:
	cmp r0, #0
	beq _0815A34E
	lsrs r3, r3, #4
	beq _0815A34E
	lsrs r1, r1, #4
	b _0815A316
_0815A34E:
	adds r0, r2, #0
	mov r4, ip
	cmp r4, #0
	bpl _0815A358
	rsbs r0, r0, #0
_0815A358:
	pop {r4}
	mov pc, lr
_0815A35C:
	push {lr}
	bl nullsub_3
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start nullsub_3
nullsub_3: @ 0x0815A368
	mov pc, lr
	.align 2, 0

	thumb_func_start __modsi3
__modsi3: @ 0x0815A36C
	movs r3, #1
	cmp r1, #0
	beq _0815A430
	bpl _0815A376
	rsbs r1, r1, #0
_0815A376:
	push {r4}
	push {r0}
	cmp r0, #0
	bpl _0815A380
	rsbs r0, r0, #0
_0815A380:
	cmp r0, r1
	blo _0815A424
	movs r4, #1
	lsls r4, r4, #0x1c
_0815A388:
	cmp r1, r4
	bhs _0815A396
	cmp r1, r0
	bhs _0815A396
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _0815A388
_0815A396:
	lsls r4, r4, #3
_0815A398:
	cmp r1, r4
	bhs _0815A3A6
	cmp r1, r0
	bhs _0815A3A6
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _0815A398
_0815A3A6:
	movs r2, #0
	cmp r0, r1
	blo _0815A3AE
	subs r0, r0, r1
_0815A3AE:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _0815A3C0
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0815A3C0:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _0815A3D2
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0815A3D2:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _0815A3E4
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0815A3E4:
	mov ip, r3
	cmp r0, #0
	beq _0815A3F2
	lsrs r3, r3, #4
	beq _0815A3F2
	lsrs r1, r1, #4
	b _0815A3A6
_0815A3F2:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	beq _0815A424
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _0815A408
	lsrs r4, r1, #3
	adds r0, r0, r4
_0815A408:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _0815A416
	lsrs r4, r1, #2
	adds r0, r0, r4
_0815A416:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _0815A424
	lsrs r4, r1, #1
	adds r0, r0, r4
_0815A424:
	pop {r4}
	cmp r4, #0
	bpl _0815A42C
	rsbs r0, r0, #0
_0815A42C:
	pop {r4}
	mov pc, lr
_0815A430:
	push {lr}
	bl nullsub_3
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start __udivsi3
__udivsi3: @ 0x0815A43C
	cmp r1, #0
	beq _0815A4AA
	movs r3, #1
	movs r2, #0
	push {r4}
	cmp r0, r1
	blo _0815A4A4
	movs r4, #1
	lsls r4, r4, #0x1c
_0815A44E:
	cmp r1, r4
	bhs _0815A45C
	cmp r1, r0
	bhs _0815A45C
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _0815A44E
_0815A45C:
	lsls r4, r4, #3
_0815A45E:
	cmp r1, r4
	bhs _0815A46C
	cmp r1, r0
	bhs _0815A46C
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _0815A45E
_0815A46C:
	cmp r0, r1
	blo _0815A474
	subs r0, r0, r1
	orrs r2, r3
_0815A474:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _0815A480
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_0815A480:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _0815A48C
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_0815A48C:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _0815A498
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_0815A498:
	cmp r0, #0
	beq _0815A4A4
	lsrs r3, r3, #4
	beq _0815A4A4
	lsrs r1, r1, #4
	b _0815A46C
_0815A4A4:
	adds r0, r2, #0
	pop {r4}
	mov pc, lr
_0815A4AA:
	push {lr}
	bl nullsub_3
	movs r0, #0
	pop {pc}

	thumb_func_start __umodsi3
__umodsi3: @ 0x0815A4B4
	cmp r1, #0
	beq _0815A56A
	movs r3, #1
	cmp r0, r1
	bhs _0815A4C0
	mov pc, lr
_0815A4C0:
	push {r4}
	movs r4, #1
	lsls r4, r4, #0x1c
_0815A4C6:
	cmp r1, r4
	bhs _0815A4D4
	cmp r1, r0
	bhs _0815A4D4
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _0815A4C6
_0815A4D4:
	lsls r4, r4, #3
_0815A4D6:
	cmp r1, r4
	bhs _0815A4E4
	cmp r1, r0
	bhs _0815A4E4
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _0815A4D6
_0815A4E4:
	movs r2, #0
	cmp r0, r1
	blo _0815A4EC
	subs r0, r0, r1
_0815A4EC:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _0815A4FE
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0815A4FE:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _0815A510
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0815A510:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _0815A522
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0815A522:
	mov ip, r3
	cmp r0, #0
	beq _0815A530
	lsrs r3, r3, #4
	beq _0815A530
	lsrs r1, r1, #4
	b _0815A4E4
_0815A530:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	bne _0815A53C
	pop {r4}
	mov pc, lr
_0815A53C:
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _0815A54A
	lsrs r4, r1, #3
	adds r0, r0, r4
_0815A54A:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _0815A558
	lsrs r4, r1, #2
	adds r0, r0, r4
_0815A558:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _0815A566
	lsrs r4, r1, #1
	adds r0, r0, r4
_0815A566:
	pop {r4}
	mov pc, lr
_0815A56A:
	push {lr}
	bl nullsub_3
	movs r0, #0
	pop {pc}

	thumb_func_start __pack_f
__pack_f: @ 0x0815A574
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r1, r0, #0
	ldr r4, [r1, #0xc]
	ldr r5, [r1, #0x10]
	ldr r7, [r1, #4]
	movs r6, #0
	movs r2, #0
	ldr r0, [r1]
	cmp r0, #1
	bhi _0815A58C
	movs r2, #1
_0815A58C:
	cmp r2, #0
	beq _0815A5AC
	ldr r6, _0815A5A0 @ =0x000007FF
	ldr r2, _0815A5A4 @ =0x00000000
	ldr r3, _0815A5A8 @ =0x00080000
	adds r0, r4, #0
	adds r1, r5, #0
	orrs r1, r3
	b _0815A664
	.align 2, 0
_0815A5A0: .4byte 0x000007FF
_0815A5A4: .4byte 0x00000000
_0815A5A8: .4byte 0x00080000
_0815A5AC:
	movs r2, #0
	cmp r0, #4
	bne _0815A5B4
	movs r2, #1
_0815A5B4:
	cmp r2, #0
	bne _0815A600
	movs r2, #0
	cmp r0, #2
	bne _0815A5C0
	movs r2, #1
_0815A5C0:
	cmp r2, #0
	beq _0815A5CA
	movs r4, #0
	movs r5, #0
	b _0815A668
_0815A5CA:
	adds r0, r5, #0
	orrs r0, r4
	cmp r0, #0
	beq _0815A668
	ldr r2, [r1, #8]
	ldr r0, _0815A5E8 @ =0xFFFFFC02
	cmp r2, r0
	bge _0815A5FA
	subs r2, r0, r2
	cmp r2, #0x38
	ble _0815A5EC
	movs r4, #0
	movs r5, #0
	b _0815A65A
	.align 2, 0
_0815A5E8: .4byte 0xFFFFFC02
_0815A5EC:
	adds r1, r5, #0
	adds r0, r4, #0
	bl __lshrdi3
	adds r5, r1, #0
	adds r4, r0, #0
	b _0815A65A
_0815A5FA:
	ldr r0, _0815A608 @ =0x000003FF
	cmp r2, r0
	ble _0815A610
_0815A600:
	ldr r6, _0815A60C @ =0x000007FF
	movs r4, #0
	movs r5, #0
	b _0815A668
	.align 2, 0
_0815A608: .4byte 0x000003FF
_0815A60C: .4byte 0x000007FF
_0815A610:
	ldr r0, _0815A638 @ =0x000003FF
	adds r6, r2, r0
	movs r0, #0xff
	adds r1, r4, #0
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _0815A63C
	cmp r2, #0
	bne _0815A63C
	adds r0, #1
	adds r1, r4, #0
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	beq _0815A644
	movs r0, #0x80
	movs r1, #0
	b _0815A640
	.align 2, 0
_0815A638: .4byte 0x000003FF
_0815A63C:
	movs r0, #0x7f
	movs r1, #0
_0815A640:
	adds r4, r4, r0
	adcs r5, r1
_0815A644:
	ldr r0, _0815A6A8 @ =0x1FFFFFFF
	cmp r5, r0
	bls _0815A65A
	lsls r3, r5, #0x1f
	lsrs r2, r4, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #1
	adds r5, r1, #0
	adds r4, r0, #0
	adds r6, #1
_0815A65A:
	lsls r3, r5, #0x18
	lsrs r2, r4, #8
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #8
_0815A664:
	adds r5, r1, #0
	adds r4, r0, #0
_0815A668:
	str r4, [sp]
	ldr r2, _0815A6AC @ =0x000FFFFF
	ands r2, r5
	ldr r0, [sp, #4]
	ldr r1, _0815A6B0 @ =0xFFF00000
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	mov r2, sp
	ldr r1, _0815A6B4 @ =0x000007FF
	adds r0, r1, #0
	ands r6, r0
	lsls r1, r6, #4
	ldr r0, _0815A6B8 @ =0xFFFF800F
	ldrh r3, [r2, #6]
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, #6]
	lsls r1, r7, #7
	movs r0, #0x7f
	ldrb r3, [r2, #7]
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #7]
	ldr r1, [sp]
	ldr r0, [sp, #4]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0815A6A8: .4byte 0x1FFFFFFF
_0815A6AC: .4byte 0x000FFFFF
_0815A6B0: .4byte 0xFFF00000
_0815A6B4: .4byte 0x000007FF
_0815A6B8: .4byte 0xFFFF800F

	thumb_func_start __unpack_f
__unpack_f: @ 0x0815A6BC
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r2, r0, #0
	adds r6, r1, #0
	ldr r1, [r2, #4]
	str r1, [sp]
	ldr r0, [r2]
	str r0, [sp, #4]
	mov r2, sp
	adds r4, r1, #0
	lsls r0, r0, #0xc
	lsrs r5, r0, #0xc
	ldrh r3, [r2, #6]
	lsls r0, r3, #0x11
	lsrs r3, r0, #0x15
	ldrb r2, [r2, #7]
	lsrs r0, r2, #7
	str r0, [r6, #4]
	cmp r3, #0
	bne _0815A730
	orrs r1, r5
	cmp r1, #0
	bne _0815A6F0
	movs r0, #2
	str r0, [r6]
	b _0815A784
_0815A6F0:
	ldr r0, _0815A728 @ =0xFFFFFC02
	str r0, [r6, #8]
	lsrs r3, r4, #0x18
	lsls r2, r5, #8
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #8
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #3
	str r0, [r6]
	ldr r0, _0815A72C @ =0x0FFFFFFF
	cmp r5, r0
	bhi _0815A760
	adds r7, r0, #0
_0815A70E:
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [r6, #8]
	subs r0, #1
	str r0, [r6, #8]
	cmp r5, r7
	bls _0815A70E
	b _0815A760
	.align 2, 0
_0815A728: .4byte 0xFFFFFC02
_0815A72C: .4byte 0x0FFFFFFF
_0815A730:
	ldr r0, _0815A744 @ =0x000007FF
	cmp r3, r0
	bne _0815A766
	orrs r1, r5
	cmp r1, #0
	bne _0815A748
	movs r0, #4
	str r0, [r6]
	b _0815A784
	.align 2, 0
_0815A744: .4byte 0x000007FF
_0815A748:
	movs r2, #0x80
	lsls r2, r2, #0xc
	movs r0, #0
	adds r1, r5, #0
	ands r1, r2
	orrs r1, r0
	cmp r1, #0
	beq _0815A75E
	movs r0, #1
	str r0, [r6]
	b _0815A760
_0815A75E:
	str r1, [r6]
_0815A760:
	str r4, [r6, #0xc]
	str r5, [r6, #0x10]
	b _0815A784
_0815A766:
	ldr r1, _0815A788 @ =0xFFFFFC01
	adds r0, r3, r1
	str r0, [r6, #8]
	movs r0, #3
	str r0, [r6]
	lsrs r3, r4, #0x18
	lsls r2, r5, #8
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #8
	ldr r2, _0815A78C @ =0x00000000
	ldr r3, _0815A790 @ =0x10000000
	orrs r1, r3
	str r0, [r6, #0xc]
	str r1, [r6, #0x10]
_0815A784:
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0815A788: .4byte 0xFFFFFC01
_0815A78C: .4byte 0x00000000
_0815A790: .4byte 0x10000000

	thumb_func_start _fpadd_parts
_fpadd_parts: @ 0x0815A794
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r3, r0, #0
	adds r4, r1, #0
	mov sl, r2
	movs r0, #0
	ldr r2, [r3]
	cmp r2, #1
	bhi _0815A7B0
	movs r0, #1
_0815A7B0:
	cmp r0, #0
	beq _0815A7B8
_0815A7B4:
	adds r0, r3, #0
	b _0815A9F0
_0815A7B8:
	movs r1, #0
	ldr r0, [r4]
	cmp r0, #1
	bhi _0815A7C2
	movs r1, #1
_0815A7C2:
	cmp r1, #0
	bne _0815A83A
	movs r1, #0
	cmp r2, #4
	bne _0815A7CE
	movs r1, #1
_0815A7CE:
	cmp r1, #0
	beq _0815A7F0
	movs r1, #0
	cmp r0, #4
	bne _0815A7DA
	movs r1, #1
_0815A7DA:
	cmp r1, #0
	beq _0815A7B4
	ldr r1, [r3, #4]
	ldr r0, [r4, #4]
	cmp r1, r0
	beq _0815A7B4
	ldr r0, _0815A7EC @ =gUnk_03000038
	b _0815A9F0
	.align 2, 0
_0815A7EC: .4byte gUnk_03000038
_0815A7F0:
	movs r1, #0
	cmp r0, #4
	bne _0815A7F8
	movs r1, #1
_0815A7F8:
	cmp r1, #0
	bne _0815A83A
	movs r1, #0
	cmp r0, #2
	bne _0815A804
	movs r1, #1
_0815A804:
	cmp r1, #0
	beq _0815A82C
	movs r0, #0
	cmp r2, #2
	bne _0815A810
	movs r0, #1
_0815A810:
	cmp r0, #0
	beq _0815A7B4
	mov r1, sl
	adds r0, r3, #0
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r2, r5}
	stm r1!, {r2, r5}
	ldr r0, [r3, #4]
	ldr r1, [r4, #4]
	ands r0, r1
	mov r6, sl
	str r0, [r6, #4]
	b _0815A9EE
_0815A82C:
	movs r1, #0
	ldr r0, [r3]
	cmp r0, #2
	bne _0815A836
	movs r1, #1
_0815A836:
	cmp r1, #0
	beq _0815A83E
_0815A83A:
	adds r0, r4, #0
	b _0815A9F0
_0815A83E:
	ldr r0, [r3, #8]
	mov sb, r0
	ldr r1, [r4, #8]
	mov r8, r1
	ldr r6, [r3, #0xc]
	ldr r7, [r3, #0x10]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	str r0, [sp]
	str r1, [sp, #4]
	mov r1, sb
	mov r2, r8
	subs r0, r1, r2
	cmp r0, #0
	bge _0815A85E
	rsbs r0, r0, #0
_0815A85E:
	cmp r0, #0x3f
	bgt _0815A8DC
	ldr r3, [r3, #4]
	mov ip, r3
	ldr r4, [r4, #4]
	str r4, [sp, #8]
	cmp sb, r8
	ble _0815A8A8
	mov r3, sb
	mov r4, r8
	subs r3, r3, r4
	mov r8, r3
_0815A876:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	ldr r2, [sp]
	movs r0, #1
	ands r2, r0
	movs r3, #0
	ldr r1, [sp, #4]
	lsls r5, r1, #0x1f
	ldr r0, [sp]
	lsrs r4, r0, #1
	adds r0, r5, #0
	orrs r0, r4
	adds r4, r1, #0
	lsrs r1, r4, #1
	adds r5, r2, #0
	orrs r5, r0
	str r5, [sp]
	adds r4, r3, #0
	orrs r4, r1
	str r4, [sp, #4]
	mov r5, r8
	cmp r5, #0
	bne _0815A876
	mov r8, sb
_0815A8A8:
	cmp r8, sb
	ble _0815A8F8
	mov r0, r8
	mov r1, sb
	subs r0, r0, r1
	mov sb, r0
_0815A8B4:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	movs r2, #1
	ands r2, r6
	movs r3, #0
	lsls r5, r7, #0x1f
	lsrs r4, r6, #1
	adds r0, r5, #0
	orrs r0, r4
	lsrs r1, r7, #1
	adds r6, r2, #0
	orrs r6, r0
	adds r7, r3, #0
	orrs r7, r1
	mov r3, sb
	cmp r3, #0
	bne _0815A8B4
	mov sb, r8
	b _0815A8F8
_0815A8DC:
	cmp sb, r8
	ble _0815A8EA
	movs r0, #0
	movs r1, #0
	str r0, [sp]
	str r1, [sp, #4]
	b _0815A8F0
_0815A8EA:
	mov sb, r8
	movs r6, #0
	movs r7, #0
_0815A8F0:
	ldr r3, [r3, #4]
	mov ip, r3
	ldr r4, [r4, #4]
	str r4, [sp, #8]
_0815A8F8:
	ldr r1, [sp, #8]
	cmp ip, r1
	beq _0815A9A0
	mov r2, ip
	cmp r2, #0
	beq _0815A91A
	adds r1, r7, #0
	adds r0, r6, #0
	bl __negdi2
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r4, [sp]
	ldr r5, [sp, #4]
	adds r2, r2, r4
	adcs r3, r5
	b _0815A926
_0815A91A:
	adds r3, r7, #0
	adds r2, r6, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	subs r2, r2, r0
	sbcs r3, r1
_0815A926:
	cmp r3, #0
	blt _0815A93C
	movs r0, #0
	mov r1, sl
	str r0, [r1, #4]
	mov r4, sb
	str r4, [r1, #8]
	mov r5, sl
	str r2, [r5, #0xc]
	str r3, [r5, #0x10]
	b _0815A954
_0815A93C:
	movs r0, #1
	mov r6, sl
	str r0, [r6, #4]
	mov r0, sb
	str r0, [r6, #8]
	adds r1, r3, #0
	adds r0, r2, #0
	bl __negdi2
	mov r2, sl
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
_0815A954:
	mov r4, sl
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x10]
	movs r0, #1
	rsbs r0, r0, #0
	asrs r1, r0, #0x1f
_0815A960:
	adds r2, r2, r0
	adcs r3, r1
	ldr r0, _0815A99C @ =0x0FFFFFFF
	cmp r3, r0
	bhi _0815A9B8
	cmp r3, r0
	bne _0815A976
	movs r0, #2
	rsbs r0, r0, #0
	cmp r2, r0
	bhi _0815A9B8
_0815A976:
	mov r5, sl
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	lsrs r3, r0, #0x1f
	lsls r2, r1, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r0, #1
	mov r6, sl
	str r0, [r6, #0xc]
	str r1, [r6, #0x10]
	ldr r2, [r6, #8]
	subs r2, #1
	str r2, [r6, #8]
	movs r2, #1
	rsbs r2, r2, #0
	asrs r3, r2, #0x1f
	b _0815A960
	.align 2, 0
_0815A99C: .4byte 0x0FFFFFFF
_0815A9A0:
	mov r0, ip
	mov r1, sl
	str r0, [r1, #4]
	mov r2, sb
	str r2, [r1, #8]
	ldr r3, [sp]
	ldr r4, [sp, #4]
	adds r6, r6, r3
	adcs r7, r4
	mov r4, sl
	str r6, [r4, #0xc]
	str r7, [r4, #0x10]
_0815A9B8:
	movs r0, #3
	mov r5, sl
	str r0, [r5]
	ldr r1, [r5, #0x10]
	ldr r0, _0815A9FC @ =0x1FFFFFFF
	cmp r1, r0
	bls _0815A9EE
	ldr r4, [r5, #0xc]
	ldr r5, [r5, #0x10]
	movs r2, #1
	adds r0, r4, #0
	ands r0, r2
	movs r1, #0
	lsls r6, r5, #0x1f
	mov r8, r6
	lsrs r6, r4, #1
	mov r2, r8
	orrs r2, r6
	lsrs r3, r5, #1
	orrs r0, r2
	orrs r1, r3
	mov r2, sl
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
	ldr r0, [r2, #8]
	adds r0, #1
	str r0, [r2, #8]
_0815A9EE:
	mov r0, sl
_0815A9F0:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0815A9FC: .4byte 0x1FFFFFFF

	thumb_func_start __addsf3
__addsf3: @ 0x0815AA00
	push {r4, lr}
	sub sp, #0x4c
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_f
	add r2, sp, #0x28
	mov r0, sp
	adds r1, r4, #0
	bl _fpadd_parts
	bl __pack_f
	add sp, #0x4c
	pop {r4, pc}

	thumb_func_start __subsf3
__subsf3: @ 0x0815AA30
	push {r4, lr}
	sub sp, #0x4c
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_f
	ldr r0, [r4, #4]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #4]
	add r2, sp, #0x28
	mov r0, sp
	adds r1, r4, #0
	bl _fpadd_parts
	bl __pack_f
	add sp, #0x4c
	pop {r4, pc}

	thumb_func_start __mulsf3
__mulsf3: @ 0x0815AA68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_f
	mov r8, sp
	add r0, sp, #0x28
	mov sl, r0
	movs r0, #0
	ldr r1, [sp]
	cmp r1, #1
	bhi _0815AA9E
	movs r0, #1
_0815AA9E:
	cmp r0, #0
	bne _0815AB02
	movs r2, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0815AAAC
	movs r2, #1
_0815AAAC:
	cmp r2, #0
	beq _0815AAB4
	ldr r0, [sp, #4]
	b _0815AB24
_0815AAB4:
	movs r2, #0
	cmp r1, #4
	bne _0815AABC
	movs r2, #1
_0815AABC:
	cmp r2, #0
	beq _0815AACE
	movs r1, #0
	cmp r0, #2
	bne _0815AAC8
	movs r1, #1
_0815AAC8:
	cmp r1, #0
	bne _0815AAE6
	b _0815AB02
_0815AACE:
	movs r2, #0
	cmp r0, #4
	bne _0815AAD6
	movs r2, #1
_0815AAD6:
	cmp r2, #0
	beq _0815AAF6
	movs r0, #0
	cmp r1, #2
	bne _0815AAE2
	movs r0, #1
_0815AAE2:
	cmp r0, #0
	beq _0815AAF0
_0815AAE6:
	ldr r0, _0815AAEC @ =gUnk_03000038
	b _0815ACEE
	.align 2, 0
_0815AAEC: .4byte gUnk_03000038
_0815AAF0:
	mov r1, r8
	ldr r0, [r1, #4]
	b _0815AB24
_0815AAF6:
	movs r2, #0
	cmp r1, #2
	bne _0815AAFE
	movs r2, #1
_0815AAFE:
	cmp r2, #0
	beq _0815AB14
_0815AB02:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	mov r0, sp
	b _0815ACEE
_0815AB14:
	movs r1, #0
	cmp r0, #2
	bne _0815AB1C
	movs r1, #1
_0815AB1C:
	cmp r1, #0
	beq _0815AB34
	mov r2, r8
	ldr r0, [r2, #4]
_0815AB24:
	ldr r1, [sp, #0x18]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x18]
	adds r0, r4, #0
	b _0815ACEE
_0815AB34:
	mov r4, r8
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	adds r6, r0, #0
	movs r7, #0
	str r1, [sp, #0x4c]
	movs r5, #0
	str r5, [sp, #0x50]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	adds r4, r0, #0
	str r1, [sp, #0x54]
	movs r0, #0
	str r0, [sp, #0x58]
	adds r1, r5, #0
	adds r0, r4, #0
	adds r3, r7, #0
	adds r2, r6, #0
	bl __muldi3
	str r0, [sp, #0x5c]
	str r1, [sp, #0x60]
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r3, r7, #0
	adds r2, r6, #0
	bl __muldi3
	adds r7, r1, #0
	adds r6, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x50]
	bl __muldi3
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x50]
	bl __muldi3
	str r0, [sp, #0x64]
	str r1, [sp, #0x68]
	movs r1, #0
	movs r2, #0
	str r1, [sp, #0x6c]
	str r2, [sp, #0x70]
	adds r3, r7, #0
	adds r2, r6, #0
	adds r2, r2, r4
	adcs r3, r5
	cmp r7, r3
	bhi _0815ABAC
	cmp r7, r3
	bne _0815ABB4
	cmp r6, r2
	bls _0815ABB4
_0815ABAC:
	ldr r5, _0815AD04 @ =0x00000001
	ldr r4, _0815AD00 @ =0x00000000
	str r4, [sp, #0x6c]
	str r5, [sp, #0x70]
_0815ABB4:
	adds r1, r2, #0
	movs r6, #0
	adds r7, r1, #0
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	adds r6, r6, r0
	adcs r7, r1
	cmp r1, r7
	bhi _0815ABD0
	ldr r1, [sp, #0x60]
	cmp r1, r7
	bne _0815ABE0
	cmp r0, r6
	bls _0815ABE0
_0815ABD0:
	movs r0, #1
	movs r1, #0
	ldr r4, [sp, #0x6c]
	ldr r5, [sp, #0x70]
	adds r4, r4, r0
	adcs r5, r1
	str r4, [sp, #0x6c]
	str r5, [sp, #0x70]
_0815ABE0:
	adds r0, r3, #0
	adds r2, r0, #0
	movs r3, #0
	adds r5, r3, #0
	adds r4, r2, #0
	ldr r0, [sp, #0x64]
	ldr r1, [sp, #0x68]
	adds r4, r4, r0
	adcs r5, r1
	ldr r1, [sp, #0x6c]
	ldr r2, [sp, #0x70]
	adds r4, r4, r1
	adcs r5, r2
	mov r0, r8
	ldr r2, [r0, #8]
	ldr r0, [sp, #0x1c]
	adds r2, r2, r0
	str r2, [sp, #0x30]
	mov r0, r8
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x18]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x2c]
	adds r2, #4
	str r2, [sp, #0x30]
	ldr r0, _0815AD08 @ =0x1FFFFFFF
	cmp r5, r0
	bls _0815AC62
	movs r1, #1
	mov sb, r1
	mov r8, r0
	mov ip, r2
_0815AC26:
	movs r2, #1
	add ip, r2
	mov r0, sb
	ands r0, r4
	cmp r0, #0
	beq _0815AC4C
	lsls r3, r7, #0x1f
	lsrs r2, r6, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r7, #1
	adds r7, r1, #0
	adds r6, r0, #0
	adds r0, r6, #0
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r1, r7
	adds r7, r1, #0
	adds r6, r0, #0
_0815AC4C:
	lsls r3, r5, #0x1f
	lsrs r2, r4, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #1
	adds r5, r1, #0
	adds r4, r0, #0
	cmp r5, r8
	bhi _0815AC26
	mov r0, ip
	str r0, [sp, #0x30]
_0815AC62:
	ldr r0, _0815AD0C @ =0x0FFFFFFF
	cmp r5, r0
	bhi _0815ACB4
	movs r1, #0x80
	lsls r1, r1, #0x18
	mov sb, r1
	mov r8, r0
	ldr r2, [sp, #0x30]
	mov ip, r2
_0815AC74:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #0
	mov r1, sb
	ands r1, r7
	orrs r0, r1
	cmp r0, #0
	beq _0815AC9E
	movs r0, #1
	orrs r0, r4
	adds r1, r5, #0
	adds r5, r1, #0
	adds r4, r0, #0
_0815AC9E:
	lsrs r3, r6, #0x1f
	lsls r2, r7, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r6, #1
	adds r7, r1, #0
	adds r6, r0, #0
	cmp r5, r8
	bls _0815AC74
	mov r1, ip
	str r1, [sp, #0x30]
_0815ACB4:
	movs r0, #0xff
	adds r1, r4, #0
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _0815ACE2
	cmp r2, #0
	bne _0815ACE2
	adds r0, #1
	adds r1, r4, #0
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _0815ACDA
	adds r0, r7, #0
	orrs r0, r6
	cmp r0, #0
	beq _0815ACE2
_0815ACDA:
	movs r0, #0x80
	movs r1, #0
	adds r4, r4, r0
	adcs r5, r1
_0815ACE2:
	str r4, [sp, #0x34]
	str r5, [sp, #0x38]
	movs r0, #3
	mov r2, sl
	str r0, [r2]
	add r0, sp, #0x28
_0815ACEE:
	bl __pack_f
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0815AD00: .4byte 0x00000000
_0815AD04: .4byte 0x00000001
_0815AD08: .4byte 0x1FFFFFFF
_0815AD0C: .4byte 0x0FFFFFFF

	thumb_func_start __divsf3
__divsf3: @ 0x0815AD10
	push {r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_f
	mov ip, sp
	movs r0, #0
	ldr r3, [sp]
	cmp r3, #1
	bhi _0815AD3A
	movs r0, #1
_0815AD3A:
	cmp r0, #0
	beq _0815AD42
	mov r1, sp
	b _0815AE84
_0815AD42:
	movs r0, #0
	ldr r2, [sp, #0x14]
	adds r5, r2, #0
	cmp r2, #1
	bhi _0815AD4E
	movs r0, #1
_0815AD4E:
	cmp r0, #0
	beq _0815AD56
	adds r1, r4, #0
	b _0815AE84
_0815AD56:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18]
	eors r0, r1
	str r0, [sp, #4]
	movs r0, #0
	cmp r3, #4
	bne _0815AD66
	movs r0, #1
_0815AD66:
	cmp r0, #0
	bne _0815AD76
	movs r4, #0
	cmp r3, #2
	bne _0815AD72
	movs r4, #1
_0815AD72:
	cmp r4, #0
	beq _0815AD88
_0815AD76:
	mov r1, ip
	ldr r0, [r1]
	cmp r0, r5
	beq _0815AD80
	b _0815AE84
_0815AD80:
	ldr r1, _0815AD84 @ =gUnk_03000038
	b _0815AE84
	.align 2, 0
_0815AD84: .4byte gUnk_03000038
_0815AD88:
	movs r0, #0
	cmp r2, #4
	bne _0815AD90
	movs r0, #1
_0815AD90:
	cmp r0, #0
	beq _0815ADA2
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r4, [sp, #8]
	mov r1, sp
	b _0815AE84
_0815ADA2:
	movs r0, #0
	cmp r2, #2
	bne _0815ADAA
	movs r0, #1
_0815ADAA:
	cmp r0, #0
	beq _0815ADB6
	movs r0, #4
	mov r2, ip
	str r0, [r2]
	b _0815AE82
_0815ADB6:
	mov r3, ip
	ldr r1, [r3, #8]
	ldr r0, [sp, #0x1c]
	subs r6, r1, r0
	str r6, [r3, #8]
	ldr r4, [r3, #0xc]
	ldr r5, [r3, #0x10]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x38]
	str r1, [sp, #0x3c]
	cmp r1, r5
	bhi _0815ADDA
	ldr r1, [sp, #0x3c]
	cmp r1, r5
	bne _0815ADEE
	cmp r0, r4
	bls _0815ADEE
_0815ADDA:
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	subs r0, r6, #1
	mov r2, ip
	str r0, [r2, #8]
_0815ADEE:
	ldr r7, _0815AE94 @ =0x10000000
	ldr r6, _0815AE90 @ =0x00000000
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_0815ADFA:
	ldr r1, [sp, #0x3c]
	cmp r1, r5
	bhi _0815AE1E
	cmp r1, r5
	bne _0815AE0A
	ldr r2, [sp, #0x38]
	cmp r2, r4
	bhi _0815AE1E
_0815AE0A:
	ldr r0, [sp, #0x40]
	orrs r0, r6
	ldr r1, [sp, #0x44]
	orrs r1, r7
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	subs r4, r4, r0
	sbcs r5, r1
_0815AE1E:
	lsls r3, r7, #0x1f
	lsrs r2, r6, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r7, #1
	adds r7, r1, #0
	adds r6, r0, #0
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r7, #0
	orrs r0, r6
	cmp r0, #0
	bne _0815ADFA
	movs r0, #0xff
	ldr r1, [sp, #0x40]
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _0815AE78
	cmp r2, #0
	bne _0815AE78
	adds r0, #1
	ldr r1, [sp, #0x40]
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _0815AE68
	adds r0, r5, #0
	orrs r0, r4
	cmp r0, #0
	beq _0815AE78
_0815AE68:
	movs r0, #0x80
	movs r1, #0
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [sp, #0x40]
	str r3, [sp, #0x44]
_0815AE78:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	mov r2, ip
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
_0815AE82:
	mov r1, ip
_0815AE84:
	adds r0, r1, #0
	bl __pack_f
	add sp, #0x48
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0815AE90: .4byte 0x00000000
_0815AE94: .4byte 0x10000000

	thumb_func_start __fpcmp_parts_f
__fpcmp_parts_f: @ 0x0815AE98
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0
	ldr r1, [r5]
	cmp r1, #1
	bhi _0815AEA8
	movs r0, #1
_0815AEA8:
	cmp r0, #0
	bne _0815AEBA
	movs r0, #0
	ldr r2, [r6]
	cmp r2, #1
	bhi _0815AEB6
	movs r0, #1
_0815AEB6:
	cmp r0, #0
	beq _0815AEBE
_0815AEBA:
	movs r0, #1
	b _0815AF94
_0815AEBE:
	movs r0, #0
	cmp r1, #4
	bne _0815AEC6
	movs r0, #1
_0815AEC6:
	cmp r0, #0
	beq _0815AEDE
	movs r0, #0
	cmp r2, #4
	bne _0815AED2
	movs r0, #1
_0815AED2:
	cmp r0, #0
	beq _0815AEDE
	ldr r0, [r6, #4]
	ldr r1, [r5, #4]
	subs r0, r0, r1
	b _0815AF94
_0815AEDE:
	movs r1, #0
	ldr r0, [r5]
	cmp r0, #4
	bne _0815AEE8
	movs r1, #1
_0815AEE8:
	cmp r1, #0
	bne _0815AF36
	movs r1, #0
	cmp r2, #4
	bne _0815AEF4
	movs r1, #1
_0815AEF4:
	cmp r1, #0
	beq _0815AF06
_0815AEF8:
	ldr r0, [r6, #4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	beq _0815AF40
	movs r1, #1
	b _0815AF40
_0815AF06:
	movs r1, #0
	cmp r0, #2
	bne _0815AF0E
	movs r1, #1
_0815AF0E:
	cmp r1, #0
	beq _0815AF1E
	movs r1, #0
	cmp r2, #2
	bne _0815AF1A
	movs r1, #1
_0815AF1A:
	cmp r1, #0
	bne _0815AF92
_0815AF1E:
	movs r1, #0
	cmp r0, #2
	bne _0815AF26
	movs r1, #1
_0815AF26:
	cmp r1, #0
	bne _0815AEF8
	movs r0, #0
	cmp r2, #2
	bne _0815AF32
	movs r0, #1
_0815AF32:
	cmp r0, #0
	beq _0815AF44
_0815AF36:
	ldr r0, [r5, #4]
	movs r1, #1
	cmp r0, #0
	beq _0815AF40
	subs r1, #2
_0815AF40:
	adds r0, r1, #0
	b _0815AF94
_0815AF44:
	ldr r0, [r6, #4]
	ldr r4, [r5, #4]
	cmp r4, r0
	beq _0815AF56
_0815AF4C:
	movs r0, #1
	cmp r4, #0
	beq _0815AF94
	subs r0, #2
	b _0815AF94
_0815AF56:
	ldr r1, [r5, #8]
	ldr r0, [r6, #8]
	cmp r1, r0
	bgt _0815AF4C
	cmp r1, r0
	bge _0815AF6E
_0815AF62:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, #0
	beq _0815AF94
	movs r0, #1
	b _0815AF94
_0815AF6E:
	ldr r3, [r5, #0x10]
	ldr r2, [r6, #0x10]
	cmp r3, r2
	bhi _0815AF4C
	cmp r3, r2
	bne _0815AF82
	ldr r1, [r5, #0xc]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	bhi _0815AF4C
_0815AF82:
	cmp r2, r3
	bhi _0815AF62
	cmp r2, r3
	bne _0815AF92
	ldr r1, [r6, #0xc]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	bhi _0815AF62
_0815AF92:
	movs r0, #0
_0815AF94:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start __cmpsf2
__cmpsf2: @ 0x0815AF98
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_f
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0815AFC4
sub_0815AFC4: @ 0x0815AFC4
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0815AFEC
	movs r1, #1
_0815AFEC:
	cmp r1, #0
	bne _0815AFFE
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0815AFFA
	movs r1, #1
_0815AFFA:
	cmp r1, #0
	beq _0815B002
_0815AFFE:
	movs r0, #1
	b _0815B00A
_0815B002:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_0815B00A:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0815B010
sub_0815B010: @ 0x0815B010
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0815B038
	movs r1, #1
_0815B038:
	cmp r1, #0
	bne _0815B04A
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0815B046
	movs r1, #1
_0815B046:
	cmp r1, #0
	beq _0815B04E
_0815B04A:
	movs r0, #1
	b _0815B056
_0815B04E:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_0815B056:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0815B05C
sub_0815B05C: @ 0x0815B05C
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0815B084
	movs r1, #1
_0815B084:
	cmp r1, #0
	bne _0815B096
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0815B092
	movs r1, #1
_0815B092:
	cmp r1, #0
	beq _0815B09C
_0815B096:
	movs r0, #1
	rsbs r0, r0, #0
	b _0815B0A4
_0815B09C:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_0815B0A4:
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start sub_0815B0A8
sub_0815B0A8: @ 0x0815B0A8
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0815B0D0
	movs r1, #1
_0815B0D0:
	cmp r1, #0
	bne _0815B0E2
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0815B0DE
	movs r1, #1
_0815B0DE:
	cmp r1, #0
	beq _0815B0E8
_0815B0E2:
	movs r0, #1
	rsbs r0, r0, #0
	b _0815B0F0
_0815B0E8:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_0815B0F0:
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start sub_0815B0F4
sub_0815B0F4: @ 0x0815B0F4
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0815B11C
	movs r1, #1
_0815B11C:
	cmp r1, #0
	bne _0815B12E
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0815B12A
	movs r1, #1
_0815B12A:
	cmp r1, #0
	beq _0815B132
_0815B12E:
	movs r0, #1
	b _0815B13A
_0815B132:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_0815B13A:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0815B140
sub_0815B140: @ 0x0815B140
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0815B168
	movs r1, #1
_0815B168:
	cmp r1, #0
	bne _0815B17A
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0815B176
	movs r1, #1
_0815B176:
	cmp r1, #0
	beq _0815B17E
_0815B17A:
	movs r0, #1
	b _0815B186
_0815B17E:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_0815B186:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __floatsisf
__floatsisf: @ 0x0815B18C
	push {r4, r5, lr}
	sub sp, #0x14
	adds r2, r0, #0
	movs r0, #3
	str r0, [sp]
	lsrs r1, r2, #0x1f
	str r1, [sp, #4]
	cmp r2, #0
	bne _0815B1A4
	movs r0, #2
	str r0, [sp]
	b _0815B1FA
_0815B1A4:
	movs r0, #0x3c
	str r0, [sp, #8]
	cmp r1, #0
	beq _0815B1CA
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r2, r0
	bne _0815B1C4
	ldr r1, _0815B1C0 @ =0x00000000
	ldr r0, _0815B1BC @ =0xC1E00000
	b _0815B200
	.align 2, 0
_0815B1BC: .4byte 0xC1E00000
_0815B1C0: .4byte 0x00000000
_0815B1C4:
	rsbs r0, r2, #0
	asrs r1, r0, #0x1f
	b _0815B1CE
_0815B1CA:
	adds r0, r2, #0
	asrs r1, r2, #0x1f
_0815B1CE:
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [sp, #0x10]
	ldr r1, _0815B204 @ =0x0FFFFFFF
	cmp r0, r1
	bhi _0815B1FA
	adds r5, r1, #0
	ldr r4, [sp, #8]
_0815B1DE:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	lsrs r3, r0, #0x1f
	lsls r2, r1, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r0, #1
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	subs r4, #1
	ldr r0, [sp, #0x10]
	cmp r0, r5
	bls _0815B1DE
	str r4, [sp, #8]
_0815B1FA:
	mov r0, sp
	bl __pack_f
_0815B200:
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_0815B204: .4byte 0x0FFFFFFF

	thumb_func_start __fixsfsi
__fixsfsi: @ 0x0815B208
	push {lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #2
	bne _0815B222
	movs r1, #1
_0815B222:
	cmp r1, #0
	bne _0815B256
	movs r1, #0
	cmp r0, #1
	bhi _0815B22E
	movs r1, #1
_0815B22E:
	cmp r1, #0
	bne _0815B256
	movs r1, #0
	cmp r0, #4
	bne _0815B23A
	movs r1, #1
_0815B23A:
	cmp r1, #0
	beq _0815B250
_0815B23E:
	ldr r0, [sp, #4]
	ldr r1, _0815B24C @ =0x7FFFFFFF
	cmp r0, #0
	beq _0815B274
	adds r1, #1
	b _0815B274
	.align 2, 0
_0815B24C: .4byte 0x7FFFFFFF
_0815B250:
	ldr r0, [sp, #8]
	cmp r0, #0
	bge _0815B25A
_0815B256:
	movs r0, #0
	b _0815B276
_0815B25A:
	cmp r0, #0x1e
	bgt _0815B23E
	movs r2, #0x3c
	subs r2, r2, r0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl __lshrdi3
	adds r1, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0815B274
	rsbs r1, r1, #0
_0815B274:
	adds r0, r1, #0
_0815B276:
	add sp, #0x1c
	pop {pc}
	.align 2, 0

	thumb_func_start __negsf2
__negsf2: @ 0x0815B27C
	push {lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0815B296
	movs r1, #1
_0815B296:
	str r1, [sp, #4]
	mov r0, sp
	bl __pack_f
	add sp, #0x1c
	pop {pc}
	.align 2, 0

	thumb_func_start __make_fp
__make_fp: @ 0x0815B2A4
	sub sp, #4
	push {r4, lr}
	sub sp, #0x14
	str r3, [sp, #0x1c]
	ldr r3, [sp, #0x1c]
	ldr r4, [sp, #0x20]
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	str r4, [sp, #0x10]
	mov r0, sp
	bl __pack_f
	add sp, #0x14
	pop {r4}
	pop {r3}
	add sp, #4
	bx r3
	.align 2, 0

	thumb_func_start __extendsfdf2
__extendsfdf2: @ 0x0815B2CC
	push {r4, r5, lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl __unpack_f
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	lsls r5, r3, #2
	lsrs r4, r2, #0x1e
	adds r0, r5, #0
	orrs r0, r4
	adds r5, r0, #0
	ldr r4, _0815B30C @ =0x3FFFFFFF
	adds r0, r2, #0
	ands r0, r4
	movs r1, #0
	orrs r0, r1
	cmp r0, #0
	beq _0815B2FC
	movs r0, #1
	orrs r5, r0
_0815B2FC:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	adds r3, r5, #0
	bl __make_dp
	add sp, #0x1c
	pop {r4, r5, pc}
	.align 2, 0
_0815B30C: .4byte 0x3FFFFFFF

	thumb_func_start __pack_d
__pack_d: @ 0x0815B310
	push {r4, r5, r6, lr}
	ldr r2, [r0, #0xc]
	ldr r6, [r0, #4]
	movs r5, #0
	movs r1, #0
	ldr r3, [r0]
	cmp r3, #1
	bhi _0815B322
	movs r1, #1
_0815B322:
	cmp r1, #0
	beq _0815B330
	movs r5, #0xff
	movs r0, #0x80
	lsls r0, r0, #0xd
	orrs r2, r0
	b _0815B396
_0815B330:
	movs r1, #0
	cmp r3, #4
	bne _0815B338
	movs r1, #1
_0815B338:
	cmp r1, #0
	bne _0815B36C
	movs r1, #0
	cmp r3, #2
	bne _0815B344
	movs r1, #1
_0815B344:
	cmp r1, #0
	beq _0815B34C
	movs r2, #0
	b _0815B396
_0815B34C:
	cmp r2, #0
	beq _0815B396
	ldr r0, [r0, #8]
	movs r3, #0x7e
	rsbs r3, r3, #0
	cmp r0, r3
	bge _0815B368
	subs r0, r3, r0
	cmp r0, #0x19
	ble _0815B364
	movs r2, #0
	b _0815B394
_0815B364:
	lsrs r2, r0
	b _0815B394
_0815B368:
	cmp r0, #0x7f
	ble _0815B372
_0815B36C:
	movs r5, #0xff
	movs r2, #0
	b _0815B396
_0815B372:
	adds r5, r0, #0
	adds r5, #0x7f
	movs r0, #0x7f
	ands r0, r2
	cmp r0, #0x40
	bne _0815B38A
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0815B38C
	adds r2, #0x40
	b _0815B38C
_0815B38A:
	adds r2, #0x3f
_0815B38C:
	cmp r2, #0
	bge _0815B394
	lsrs r2, r2, #1
	adds r5, #1
_0815B394:
	lsrs r2, r2, #7
_0815B396:
	ldr r0, _0815B3B8 @ =0x007FFFFF
	ands r2, r0
	ldr r0, _0815B3BC @ =0xFF800000
	ands r4, r0
	orrs r4, r2
	movs r0, #0xff
	ands r5, r0
	lsls r1, r5, #0x17
	ldr r0, _0815B3C0 @ =0x807FFFFF
	ands r4, r0
	orrs r4, r1
	lsls r1, r6, #0x1f
	ldr r0, _0815B3C4 @ =0x7FFFFFFF
	ands r4, r0
	orrs r4, r1
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0815B3B8: .4byte 0x007FFFFF
_0815B3BC: .4byte 0xFF800000
_0815B3C0: .4byte 0x807FFFFF
_0815B3C4: .4byte 0x7FFFFFFF

	thumb_func_start __unpack_d
__unpack_d: @ 0x0815B3C8
	push {r4, lr}
	adds r3, r1, #0
	ldr r0, [r0]
	lsls r1, r0, #9
	lsrs r2, r1, #9
	lsls r1, r0, #1
	lsrs r1, r1, #0x18
	lsrs r0, r0, #0x1f
	str r0, [r3, #4]
	cmp r1, #0
	bne _0815B40C
	cmp r2, #0
	bne _0815B3E8
	movs r0, #2
	str r0, [r3]
	b _0815B440
_0815B3E8:
	adds r4, r1, #0
	subs r4, #0x7e
	str r4, [r3, #8]
	lsls r2, r2, #7
	movs r0, #3
	str r0, [r3]
	ldr r1, _0815B408 @ =0x3FFFFFFF
	cmp r2, r1
	bhi _0815B428
	adds r0, r4, #0
_0815B3FC:
	lsls r2, r2, #1
	subs r0, #1
	cmp r2, r1
	bls _0815B3FC
	str r0, [r3, #8]
	b _0815B428
	.align 2, 0
_0815B408: .4byte 0x3FFFFFFF
_0815B40C:
	cmp r1, #0xff
	bne _0815B42C
	cmp r2, #0
	bne _0815B41A
	movs r0, #4
	str r0, [r3]
	b _0815B440
_0815B41A:
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r2
	cmp r0, #0
	beq _0815B426
	movs r0, #1
_0815B426:
	str r0, [r3]
_0815B428:
	str r2, [r3, #0xc]
	b _0815B440
_0815B42C:
	adds r0, r1, #0
	subs r0, #0x7f
	str r0, [r3, #8]
	movs r0, #3
	str r0, [r3]
	lsls r0, r2, #7
	movs r1, #0x80
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [r3, #0xc]
_0815B440:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start _fpadd_parts_0
_fpadd_parts_0: @ 0x0815B444
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r5, r2, #0
	movs r0, #0
	ldr r2, [r6]
	cmp r2, #1
	bhi _0815B45A
	movs r0, #1
_0815B45A:
	cmp r0, #0
	beq _0815B462
_0815B45E:
	adds r0, r6, #0
	b _0815B5B8
_0815B462:
	movs r1, #0
	ldr r0, [r7]
	cmp r0, #1
	bhi _0815B46C
	movs r1, #1
_0815B46C:
	cmp r1, #0
	bne _0815B4E0
	movs r1, #0
	cmp r2, #4
	bne _0815B478
	movs r1, #1
_0815B478:
	cmp r1, #0
	beq _0815B498
	movs r1, #0
	cmp r0, #4
	bne _0815B484
	movs r1, #1
_0815B484:
	cmp r1, #0
	beq _0815B45E
	ldr r1, [r6, #4]
	ldr r0, [r7, #4]
	cmp r1, r0
	beq _0815B45E
	ldr r0, _0815B494 @ =gUnk_03000050
	b _0815B5B8
	.align 2, 0
_0815B494: .4byte gUnk_03000050
_0815B498:
	movs r1, #0
	cmp r0, #4
	bne _0815B4A0
	movs r1, #1
_0815B4A0:
	cmp r1, #0
	bne _0815B4E0
	movs r1, #0
	cmp r0, #2
	bne _0815B4AC
	movs r1, #1
_0815B4AC:
	cmp r1, #0
	beq _0815B4D2
	movs r0, #0
	cmp r2, #2
	bne _0815B4B8
	movs r0, #1
_0815B4B8:
	cmp r0, #0
	beq _0815B45E
	adds r1, r5, #0
	adds r0, r6, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r6, #4]
	ldr r1, [r7, #4]
	ands r0, r1
	str r0, [r5, #4]
	b _0815B5B6
_0815B4D2:
	movs r1, #0
	ldr r0, [r6]
	cmp r0, #2
	bne _0815B4DC
	movs r1, #1
_0815B4DC:
	cmp r1, #0
	beq _0815B4E4
_0815B4E0:
	adds r0, r7, #0
	b _0815B5B8
_0815B4E4:
	ldr r1, [r6, #8]
	ldr r3, [r7, #8]
	ldr r2, [r6, #0xc]
	ldr r4, [r7, #0xc]
	subs r0, r1, r3
	cmp r0, #0
	bge _0815B4F4
	rsbs r0, r0, #0
_0815B4F4:
	cmp r0, #0x1f
	bgt _0815B538
	ldr r6, [r6, #4]
	ldr r7, [r7, #4]
	mov r8, r7
	cmp r1, r3
	ble _0815B51A
	movs r7, #1
	mov ip, r7
	subs r3, r1, r3
_0815B508:
	subs r3, #1
	adds r0, r4, #0
	mov r7, ip
	ands r0, r7
	lsrs r4, r4, #1
	orrs r4, r0
	cmp r3, #0
	bne _0815B508
	adds r3, r1, #0
_0815B51A:
	cmp r3, r1
	ble _0815B54A
	movs r0, #1
	mov ip, r0
	subs r1, r3, r1
_0815B524:
	subs r1, #1
	adds r0, r2, #0
	mov r7, ip
	ands r0, r7
	lsrs r2, r2, #1
	orrs r2, r0
	cmp r1, #0
	bne _0815B524
	adds r1, r3, #0
	b _0815B54A
_0815B538:
	cmp r1, r3
	ble _0815B540
	movs r4, #0
	b _0815B544
_0815B540:
	adds r1, r3, #0
	movs r2, #0
_0815B544:
	ldr r6, [r6, #4]
	ldr r7, [r7, #4]
	mov r8, r7
_0815B54A:
	cmp r6, r8
	beq _0815B594
	cmp r6, #0
	beq _0815B556
	subs r3, r4, r2
	b _0815B558
_0815B556:
	subs r3, r2, r4
_0815B558:
	cmp r3, #0
	blt _0815B566
	movs r0, #0
	str r0, [r5, #4]
	str r1, [r5, #8]
	str r3, [r5, #0xc]
	b _0815B570
_0815B566:
	movs r0, #1
	str r0, [r5, #4]
	str r1, [r5, #8]
	rsbs r0, r3, #0
	str r0, [r5, #0xc]
_0815B570:
	ldr r1, [r5, #0xc]
	subs r0, r1, #1
	ldr r2, _0815B590 @ =0x3FFFFFFE
	cmp r0, r2
	bhi _0815B59C
_0815B57A:
	lsls r0, r1, #1
	str r0, [r5, #0xc]
	ldr r1, [r5, #8]
	subs r1, #1
	str r1, [r5, #8]
	adds r1, r0, #0
	subs r0, r1, #1
	cmp r0, r2
	bls _0815B57A
	b _0815B59C
	.align 2, 0
_0815B590: .4byte 0x3FFFFFFE
_0815B594:
	str r6, [r5, #4]
	str r1, [r5, #8]
	adds r0, r2, r4
	str r0, [r5, #0xc]
_0815B59C:
	movs r0, #3
	str r0, [r5]
	ldr r1, [r5, #0xc]
	cmp r1, #0
	bge _0815B5B6
	movs r0, #1
	ands r0, r1
	lsrs r1, r1, #1
	orrs r0, r1
	str r0, [r5, #0xc]
	ldr r0, [r5, #8]
	adds r0, #1
	str r0, [r5, #8]
_0815B5B6:
	adds r0, r5, #0
_0815B5B8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start __adddf3
__adddf3: @ 0x0815B5C0
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_d
	add r2, sp, #0x20
	mov r0, sp
	adds r1, r4, #0
	bl _fpadd_parts_0
	bl __pack_d
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start __subdf3
__subdf3: @ 0x0815B5EC
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_d
	ldr r0, [r4, #4]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #4]
	add r2, sp, #0x20
	mov r0, sp
	adds r1, r4, #0
	bl _fpadd_parts_0
	bl __pack_d
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start __muldf3
__muldf3: @ 0x0815B620
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_d
	mov r7, sp
	add r0, sp, #0x20
	mov r8, r0
	movs r0, #0
	ldr r1, [sp]
	mov sb, r8
	cmp r1, #1
	bhi _0815B652
	movs r0, #1
_0815B652:
	cmp r0, #0
	bne _0815B6B0
	movs r2, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0815B660
	movs r2, #1
_0815B660:
	cmp r2, #0
	beq _0815B668
	ldr r0, [sp, #4]
	b _0815B6D0
_0815B668:
	movs r2, #0
	cmp r1, #4
	bne _0815B670
	movs r2, #1
_0815B670:
	cmp r2, #0
	beq _0815B682
	movs r1, #0
	cmp r0, #2
	bne _0815B67C
	movs r1, #1
_0815B67C:
	cmp r1, #0
	bne _0815B69A
	b _0815B6B0
_0815B682:
	movs r2, #0
	cmp r0, #4
	bne _0815B68A
	movs r2, #1
_0815B68A:
	cmp r2, #0
	beq _0815B6A4
	movs r0, #0
	cmp r1, #2
	bne _0815B696
	movs r0, #1
_0815B696:
	cmp r0, #0
	beq _0815B6CE
_0815B69A:
	ldr r0, _0815B6A0 @ =gUnk_03000050
	b _0815B772
	.align 2, 0
_0815B6A0: .4byte gUnk_03000050
_0815B6A4:
	movs r2, #0
	cmp r1, #2
	bne _0815B6AC
	movs r2, #1
_0815B6AC:
	cmp r2, #0
	beq _0815B6C2
_0815B6B0:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	mov r0, sp
	b _0815B772
_0815B6C2:
	movs r1, #0
	cmp r0, #2
	bne _0815B6CA
	movs r1, #1
_0815B6CA:
	cmp r1, #0
	beq _0815B6E0
_0815B6CE:
	ldr r0, [r7, #4]
_0815B6D0:
	ldr r1, [sp, #0x14]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x14]
	adds r0, r4, #0
	b _0815B772
_0815B6E0:
	ldr r0, [r7, #0xc]
	movs r1, #0
	ldr r2, [sp, #0x1c]
	movs r3, #0
	bl __muldi3
	adds r2, r1, #0
	adds r5, r2, #0
	adds r6, r0, #0
	ldr r4, [r7, #8]
	ldr r0, [sp, #0x18]
	adds r4, r4, r0
	str r4, [sp, #0x28]
	ldr r1, [r7, #4]
	ldr r0, [sp, #0x14]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x24]
	adds r4, #2
	str r4, [sp, #0x28]
	cmp r2, #0
	bge _0815B72C
	movs r2, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
_0815B716:
	adds r4, #1
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #0
	beq _0815B724
	lsrs r6, r6, #1
	orrs r6, r1
_0815B724:
	lsrs r5, r5, #1
	cmp r5, #0
	blt _0815B716
	str r4, [sp, #0x28]
_0815B72C:
	ldr r0, _0815B780 @ =0x3FFFFFFF
	cmp r5, r0
	bhi _0815B752
	movs r4, #0x80
	lsls r4, r4, #0x18
	movs r3, #1
	adds r2, r0, #0
	ldr r1, [sp, #0x28]
_0815B73C:
	subs r1, #1
	lsls r5, r5, #1
	adds r0, r6, #0
	ands r0, r4
	cmp r0, #0
	beq _0815B74A
	orrs r5, r3
_0815B74A:
	lsls r6, r6, #1
	cmp r5, r2
	bls _0815B73C
	str r1, [sp, #0x28]
_0815B752:
	movs r0, #0x7f
	ands r0, r5
	cmp r0, #0x40
	bne _0815B768
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	bne _0815B766
	cmp r6, #0
	beq _0815B768
_0815B766:
	adds r5, #0x40
_0815B768:
	str r5, [sp, #0x2c]
	movs r0, #3
	mov r1, r8
	str r0, [r1]
	mov r0, sb
_0815B772:
	bl __pack_d
	add sp, #0x38
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0815B780: .4byte 0x3FFFFFFF

	thumb_func_start __divdf3
__divdf3: @ 0x0815B784
	push {r4, r5, r6, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x24
	add r5, sp, #0x10
	adds r1, r5, #0
	bl __unpack_d
	mov r4, sp
	movs r0, #0
	ldr r3, [sp]
	cmp r3, #1
	bhi _0815B7AA
	movs r0, #1
_0815B7AA:
	cmp r0, #0
	beq _0815B7B2
	mov r1, sp
	b _0815B864
_0815B7B2:
	movs r0, #0
	ldr r2, [sp, #0x10]
	adds r6, r2, #0
	cmp r2, #1
	bhi _0815B7BE
	movs r0, #1
_0815B7BE:
	cmp r0, #0
	beq _0815B7C6
	adds r1, r5, #0
	b _0815B864
_0815B7C6:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	eors r0, r1
	str r0, [sp, #4]
	movs r0, #0
	cmp r3, #4
	bne _0815B7D6
	movs r0, #1
_0815B7D6:
	cmp r0, #0
	bne _0815B7E6
	movs r0, #0
	cmp r3, #2
	bne _0815B7E2
	movs r0, #1
_0815B7E2:
	cmp r0, #0
	beq _0815B7F8
_0815B7E6:
	ldr r0, [r4]
	adds r1, r4, #0
	cmp r0, r6
	bne _0815B864
	ldr r1, _0815B7F4 @ =gUnk_03000050
	b _0815B864
	.align 2, 0
_0815B7F4: .4byte gUnk_03000050
_0815B7F8:
	movs r1, #0
	cmp r2, #4
	bne _0815B800
	movs r1, #1
_0815B800:
	cmp r1, #0
	beq _0815B80C
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	mov r1, sp
	b _0815B864
_0815B80C:
	movs r0, #0
	cmp r2, #2
	bne _0815B814
	movs r0, #1
_0815B814:
	cmp r0, #0
	beq _0815B81E
	movs r0, #4
	str r0, [r4]
	b _0815B862
_0815B81E:
	ldr r1, [r4, #8]
	ldr r0, [sp, #0x18]
	subs r0, r1, r0
	str r0, [r4, #8]
	ldr r2, [r4, #0xc]
	ldr r3, [sp, #0x1c]
	cmp r2, r3
	bhs _0815B834
	lsls r2, r2, #1
	subs r0, #1
	str r0, [r4, #8]
_0815B834:
	movs r0, #0x80
	lsls r0, r0, #0x17
	movs r1, #0
_0815B83A:
	cmp r2, r3
	blo _0815B842
	orrs r1, r0
	subs r2, r2, r3
_0815B842:
	lsrs r0, r0, #1
	lsls r2, r2, #1
	cmp r0, #0
	bne _0815B83A
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x40
	bne _0815B860
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0815B85E
	cmp r2, #0
	beq _0815B860
_0815B85E:
	adds r1, #0x40
_0815B860:
	str r1, [r4, #0xc]
_0815B862:
	adds r1, r4, #0
_0815B864:
	adds r0, r1, #0
	bl __pack_d
	add sp, #0x28
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start __fpcmp_parts_d
__fpcmp_parts_d: @ 0x0815B870
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	ldr r2, [r4]
	cmp r2, #1
	bhi _0815B87E
	movs r0, #1
_0815B87E:
	cmp r0, #0
	bne _0815B890
	movs r0, #0
	ldr r3, [r1]
	cmp r3, #1
	bhi _0815B88C
	movs r0, #1
_0815B88C:
	cmp r0, #0
	beq _0815B894
_0815B890:
	movs r0, #1
	b _0815B952
_0815B894:
	movs r0, #0
	cmp r2, #4
	bne _0815B89C
	movs r0, #1
_0815B89C:
	cmp r0, #0
	beq _0815B8B4
	movs r0, #0
	cmp r3, #4
	bne _0815B8A8
	movs r0, #1
_0815B8A8:
	cmp r0, #0
	beq _0815B8B4
	ldr r0, [r1, #4]
	ldr r1, [r4, #4]
	subs r0, r0, r1
	b _0815B952
_0815B8B4:
	movs r2, #0
	ldr r0, [r4]
	cmp r0, #4
	bne _0815B8BE
	movs r2, #1
_0815B8BE:
	cmp r2, #0
	bne _0815B90C
	movs r2, #0
	cmp r3, #4
	bne _0815B8CA
	movs r2, #1
_0815B8CA:
	cmp r2, #0
	beq _0815B8DC
_0815B8CE:
	ldr r0, [r1, #4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	beq _0815B916
	movs r1, #1
	b _0815B916
_0815B8DC:
	movs r2, #0
	cmp r0, #2
	bne _0815B8E4
	movs r2, #1
_0815B8E4:
	cmp r2, #0
	beq _0815B8F4
	movs r2, #0
	cmp r3, #2
	bne _0815B8F0
	movs r2, #1
_0815B8F0:
	cmp r2, #0
	bne _0815B950
_0815B8F4:
	movs r2, #0
	cmp r0, #2
	bne _0815B8FC
	movs r2, #1
_0815B8FC:
	cmp r2, #0
	bne _0815B8CE
	movs r0, #0
	cmp r3, #2
	bne _0815B908
	movs r0, #1
_0815B908:
	cmp r0, #0
	beq _0815B91A
_0815B90C:
	ldr r0, [r4, #4]
	movs r1, #1
	cmp r0, #0
	beq _0815B916
	subs r1, #2
_0815B916:
	adds r0, r1, #0
	b _0815B952
_0815B91A:
	ldr r3, [r4, #4]
	ldr r0, [r1, #4]
	cmp r3, r0
	beq _0815B92C
_0815B922:
	movs r0, #1
	cmp r3, #0
	beq _0815B952
	subs r0, #2
	b _0815B952
_0815B92C:
	ldr r2, [r4, #8]
	ldr r0, [r1, #8]
	cmp r2, r0
	bgt _0815B922
	cmp r2, r0
	bge _0815B944
_0815B938:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, #0
	beq _0815B952
	movs r0, #1
	b _0815B952
_0815B944:
	ldr r0, [r4, #0xc]
	ldr r1, [r1, #0xc]
	cmp r0, r1
	bhi _0815B922
	cmp r0, r1
	blo _0815B938
_0815B950:
	movs r0, #0
_0815B952:
	pop {r4, pc}

	thumb_func_start __cmpdf2
__cmpdf2: @ 0x0815B954
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_d
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0815B97C
sub_0815B97C: @ 0x0815B97C
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0815B9A0
	movs r1, #1
_0815B9A0:
	cmp r1, #0
	bne _0815B9B2
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0815B9AE
	movs r1, #1
_0815B9AE:
	cmp r1, #0
	beq _0815B9B6
_0815B9B2:
	movs r0, #1
	b _0815B9BE
_0815B9B6:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_0815B9BE:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0815B9C4
sub_0815B9C4: @ 0x0815B9C4
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0815B9E8
	movs r1, #1
_0815B9E8:
	cmp r1, #0
	bne _0815B9FA
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0815B9F6
	movs r1, #1
_0815B9F6:
	cmp r1, #0
	beq _0815B9FE
_0815B9FA:
	movs r0, #1
	b _0815BA06
_0815B9FE:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_0815BA06:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0815BA0C
sub_0815BA0C: @ 0x0815BA0C
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0815BA30
	movs r1, #1
_0815BA30:
	cmp r1, #0
	bne _0815BA42
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0815BA3E
	movs r1, #1
_0815BA3E:
	cmp r1, #0
	beq _0815BA48
_0815BA42:
	movs r0, #1
	rsbs r0, r0, #0
	b _0815BA50
_0815BA48:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_0815BA50:
	add sp, #0x28
	pop {r4, pc}

	thumb_func_start sub_0815BA54
sub_0815BA54: @ 0x0815BA54
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0815BA78
	movs r1, #1
_0815BA78:
	cmp r1, #0
	bne _0815BA8A
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0815BA86
	movs r1, #1
_0815BA86:
	cmp r1, #0
	beq _0815BA90
_0815BA8A:
	movs r0, #1
	rsbs r0, r0, #0
	b _0815BA98
_0815BA90:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_0815BA98:
	add sp, #0x28
	pop {r4, pc}

	thumb_func_start sub_0815BA9C
sub_0815BA9C: @ 0x0815BA9C
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0815BAC0
	movs r1, #1
_0815BAC0:
	cmp r1, #0
	bne _0815BAD2
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0815BACE
	movs r1, #1
_0815BACE:
	cmp r1, #0
	beq _0815BAD6
_0815BAD2:
	movs r0, #1
	b _0815BADE
_0815BAD6:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_0815BADE:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0815BAE4
sub_0815BAE4: @ 0x0815BAE4
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0815BB08
	movs r1, #1
_0815BB08:
	cmp r1, #0
	bne _0815BB1A
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0815BB16
	movs r1, #1
_0815BB16:
	cmp r1, #0
	beq _0815BB1E
_0815BB1A:
	movs r0, #1
	b _0815BB26
_0815BB1E:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_0815BB26:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __floatsidf
__floatsidf: @ 0x0815BB2C
	push {lr}
	sub sp, #0x10
	adds r1, r0, #0
	movs r0, #3
	str r0, [sp]
	lsrs r2, r1, #0x1f
	str r2, [sp, #4]
	cmp r1, #0
	bne _0815BB44
	movs r0, #2
	str r0, [sp]
	b _0815BB7C
_0815BB44:
	movs r0, #0x1e
	str r0, [sp, #8]
	cmp r2, #0
	beq _0815BB62
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bne _0815BB5C
	ldr r0, _0815BB58 @ =0xCF000000
	b _0815BB82
	.align 2, 0
_0815BB58: .4byte 0xCF000000
_0815BB5C:
	rsbs r0, r1, #0
	str r0, [sp, #0xc]
	b _0815BB64
_0815BB62:
	str r1, [sp, #0xc]
_0815BB64:
	ldr r2, [sp, #0xc]
	ldr r3, _0815BB88 @ =0x3FFFFFFF
	cmp r2, r3
	bhi _0815BB7C
	ldr r1, [sp, #8]
_0815BB6E:
	lsls r0, r2, #1
	subs r1, #1
	adds r2, r0, #0
	cmp r0, r3
	bls _0815BB6E
	str r1, [sp, #8]
	str r0, [sp, #0xc]
_0815BB7C:
	mov r0, sp
	bl __pack_d
_0815BB82:
	add sp, #0x10
	pop {pc}
	.align 2, 0
_0815BB88: .4byte 0x3FFFFFFF

	thumb_func_start __fixdfsi
__fixdfsi: @ 0x0815BB8C
	push {lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	mov r1, sp
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #2
	bne _0815BBA4
	movs r1, #1
_0815BBA4:
	cmp r1, #0
	bne _0815BBD6
	movs r1, #0
	cmp r0, #1
	bhi _0815BBB0
	movs r1, #1
_0815BBB0:
	cmp r1, #0
	bne _0815BBD6
	movs r1, #0
	cmp r0, #4
	bne _0815BBBC
	movs r1, #1
_0815BBBC:
	cmp r1, #0
	beq _0815BBD0
_0815BBC0:
	ldr r0, [sp, #4]
	ldr r1, _0815BBCC @ =0x7FFFFFFF
	cmp r0, #0
	beq _0815BBEE
	adds r1, #1
	b _0815BBEE
	.align 2, 0
_0815BBCC: .4byte 0x7FFFFFFF
_0815BBD0:
	ldr r1, [sp, #8]
	cmp r1, #0
	bge _0815BBDA
_0815BBD6:
	movs r0, #0
	b _0815BBF0
_0815BBDA:
	cmp r1, #0x1e
	bgt _0815BBC0
	movs r0, #0x1e
	subs r0, r0, r1
	ldr r1, [sp, #0xc]
	lsrs r1, r0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0815BBEE
	rsbs r1, r1, #0
_0815BBEE:
	adds r0, r1, #0
_0815BBF0:
	add sp, #0x14
	pop {pc}

	thumb_func_start __negdf2
__negdf2: @ 0x0815BBF4
	push {lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	mov r1, sp
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0815BC0C
	movs r1, #1
_0815BC0C:
	str r1, [sp, #4]
	mov r0, sp
	bl __pack_d
	add sp, #0x14
	pop {pc}

	thumb_func_start __make_dp
__make_dp: @ 0x0815BC18
	push {lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, sp
	bl __pack_d
	add sp, #0x10
	pop {pc}
	.align 2, 0

	thumb_func_start __truncdfsf2
__truncdfsf2: @ 0x0815BC30
	push {r4, r5, r6, lr}
	sub sp, #0x18
	str r0, [sp, #0x14]
	add r0, sp, #0x14
	add r1, sp, #4
	bl __unpack_d
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	movs r4, #0
	lsrs r6, r3, #2
	lsls r5, r4, #0x1e
	adds r4, r6, #0
	orrs r4, r5
	lsls r3, r3, #0x1e
	str r4, [sp]
	bl __make_fp
	add sp, #0x18
	pop {r4, r5, r6, pc}

	thumb_func_start __lshrdi3
__lshrdi3: @ 0x0815BC5C
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	cmp r2, #0
	beq _0815BC8C
	movs r0, #0x20
	subs r0, r0, r2
	cmp r0, #0
	bgt _0815BC78
	movs r4, #0
	rsbs r0, r0, #0
	adds r3, r6, #0
	lsrs r3, r0
	b _0815BC88
_0815BC78:
	adds r1, r6, #0
	lsls r1, r0
	adds r4, r6, #0
	lsrs r4, r2
	adds r0, r5, #0
	lsrs r0, r2
	adds r3, r0, #0
	orrs r3, r1
_0815BC88:
	adds r1, r4, #0
	adds r0, r3, #0
_0815BC8C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start __muldi3
__muldi3: @ 0x0815BC90
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r3, [sp]
	ldr r0, _0815BCFC @ =0x0000FFFF
	mov ip, r0
	adds r2, r3, #0
	ands r2, r0
	lsrs r3, r3, #0x10
	ldr r1, [sp, #8]
	adds r0, r1, #0
	mov r4, ip
	ands r0, r4
	lsrs r1, r1, #0x10
	adds r5, r2, #0
	muls r5, r0, r5
	adds r4, r2, #0
	muls r4, r1, r4
	adds r2, r3, #0
	muls r2, r0, r2
	muls r3, r1, r3
	lsrs r0, r5, #0x10
	adds r4, r4, r0
	adds r4, r4, r2
	cmp r4, r2
	bhs _0815BCD0
	movs r0, #0x80
	lsls r0, r0, #9
	adds r3, r3, r0
_0815BCD0:
	lsrs r0, r4, #0x10
	adds r7, r3, r0
	mov r1, ip
	ands r4, r1
	lsls r0, r4, #0x10
	ands r5, r1
	adds r6, r0, #0
	orrs r6, r5
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r3, [sp]
	ldr r4, [sp, #0xc]
	adds r2, r3, #0
	muls r2, r4, r2
	ldr r5, [sp, #4]
	ldr r4, [sp, #8]
	adds r3, r5, #0
	muls r3, r4, r3
	adds r2, r2, r3
	adds r1, r7, r2
	add sp, #0x10
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0815BCFC: .4byte 0x0000FFFF

	thumb_func_start __negdi2
__negdi2: @ 0x0815BD00
	push {r4, lr}
	rsbs r2, r0, #0
	adds r3, r2, #0
	rsbs r1, r1, #0
	cmp r2, #0
	beq _0815BD0E
	subs r1, #1
_0815BD0E:
	adds r4, r1, #0
	adds r1, r4, #0
	adds r0, r3, #0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0815BD18
sub_0815BD18: @ 0x0815BD18
	ldr r0, _0815BD20 @ =gUnk_08F330A4
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0815BD20: .4byte gUnk_08F330A4
