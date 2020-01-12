	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08DA04AC
sub_08DA04AC: @ 0x08DA04AC
	bx r0
	nop

	thumb_func_start sub_08DA04B0
sub_08DA04B0: @ 0x08DA04B0
	bx r1
	nop

	thumb_func_start sub_08DA04B4
sub_08DA04B4: @ 0x08DA04B4
	bx r2
	nop

	thumb_func_start sub_08DA04B8
sub_08DA04B8: @ 0x08DA04B8
	bx r3
	nop

	thumb_func_start sub_08DA04BC
sub_08DA04BC: @ 0x08DA04BC
	bx r4
	nop

	thumb_func_start sub_08DA04C0
sub_08DA04C0: @ 0x08DA04C0
	bx r5
	nop

	thumb_func_start sub_08DA04C4
sub_08DA04C4: @ 0x08DA04C4
	bx r6
	nop

	thumb_func_start sub_08DA04C8
sub_08DA04C8: @ 0x08DA04C8
	bx r7
	nop

	thumb_func_start sub_08DA04CC
sub_08DA04CC: @ 0x08DA04CC
	bx r8
	nop

	thumb_func_start sub_08DA04D0
sub_08DA04D0: @ 0x08DA04D0
	bx sb
	nop

	thumb_func_start sub_08DA04D4
sub_08DA04D4: @ 0x08DA04D4
	bx sl
	nop

	thumb_func_start sub_08DA04D8
sub_08DA04D8: @ 0x08DA04D8
	bx fp
	nop

	thumb_func_start sub_08DA04DC
sub_08DA04DC: @ 0x08DA04DC
	bx ip
	nop

	thumb_func_start sub_08DA04E0
sub_08DA04E0: @ 0x08DA04E0
	bx sp
	nop

	thumb_func_start nullsub_58
nullsub_58: @ 0x08DA04E4
	bx lr
	nop

	thumb_func_start sub_08DA04E8
sub_08DA04E8: @ 0x08DA04E8
	cmp r1, #0
	beq _08DA0570
	push {r4}
	adds r4, r0, #0
	eors r4, r1
	mov ip, r4
	movs r3, #1
	movs r2, #0
	cmp r1, #0
	bpl _08DA04FE
	rsbs r1, r1, #0
_08DA04FE:
	cmp r0, #0
	bpl _08DA0504
	rsbs r0, r0, #0
_08DA0504:
	cmp r0, r1
	blo _08DA0562
	movs r4, #1
	lsls r4, r4, #0x1c
_08DA050C:
	cmp r1, r4
	bhs _08DA051A
	cmp r1, r0
	bhs _08DA051A
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08DA050C
_08DA051A:
	lsls r4, r4, #3
_08DA051C:
	cmp r1, r4
	bhs _08DA052A
	cmp r1, r0
	bhs _08DA052A
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08DA051C
_08DA052A:
	cmp r0, r1
	blo _08DA0532
	subs r0, r0, r1
	orrs r2, r3
_08DA0532:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _08DA053E
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_08DA053E:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _08DA054A
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_08DA054A:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _08DA0556
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_08DA0556:
	cmp r0, #0
	beq _08DA0562
	lsrs r3, r3, #4
	beq _08DA0562
	lsrs r1, r1, #4
	b _08DA052A
_08DA0562:
	adds r0, r2, #0
	mov r4, ip
	cmp r4, #0
	bpl _08DA056C
	rsbs r0, r0, #0
_08DA056C:
	pop {r4}
	mov pc, lr
_08DA0570:
	push {lr}
	bl nullsub_5
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start nullsub_5
nullsub_5: @ 0x08DA057C
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08DA0580
sub_08DA0580: @ 0x08DA0580
	cmp r1, #0
	beq _08DA0636
	movs r3, #1
	cmp r0, r1
	bhs _08DA058C
	mov pc, lr
_08DA058C:
	push {r4}
	movs r4, #1
	lsls r4, r4, #0x1c
_08DA0592:
	cmp r1, r4
	bhs _08DA05A0
	cmp r1, r0
	bhs _08DA05A0
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08DA0592
_08DA05A0:
	lsls r4, r4, #3
_08DA05A2:
	cmp r1, r4
	bhs _08DA05B0
	cmp r1, r0
	bhs _08DA05B0
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08DA05A2
_08DA05B0:
	movs r2, #0
	cmp r0, r1
	blo _08DA05B8
	subs r0, r0, r1
_08DA05B8:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _08DA05CA
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08DA05CA:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _08DA05DC
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08DA05DC:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _08DA05EE
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08DA05EE:
	mov ip, r3
	cmp r0, #0
	beq _08DA05FC
	lsrs r3, r3, #4
	beq _08DA05FC
	lsrs r1, r1, #4
	b _08DA05B0
_08DA05FC:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	bne _08DA0608
	pop {r4}
	mov pc, lr
_08DA0608:
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _08DA0616
	lsrs r4, r1, #3
	adds r0, r0, r4
_08DA0616:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _08DA0624
	lsrs r4, r1, #2
	adds r0, r0, r4
_08DA0624:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _08DA0632
	lsrs r4, r1, #1
	adds r0, r0, r4
_08DA0632:
	pop {r4}
	mov pc, lr
_08DA0636:
	push {lr}
	bl nullsub_5
	movs r0, #0
	pop {pc}
