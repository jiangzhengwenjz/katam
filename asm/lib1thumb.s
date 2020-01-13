	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

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
	bl __div0
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start __div0
__div0: @ 0x0815A368
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
	bl __div0
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
	bl __div0
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
	bl __div0
	movs r0, #0
	pop {pc}
