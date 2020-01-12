	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08E64900
sub_08E64900: @ 0x08E64900
	bx r0
	nop

	thumb_func_start sub_08E64904
sub_08E64904: @ 0x08E64904
	bx r1
	nop

	thumb_func_start sub_08E64908
sub_08E64908: @ 0x08E64908
	bx r2
	nop

	thumb_func_start sub_08E6490C
sub_08E6490C: @ 0x08E6490C
	bx r3
	nop

	thumb_func_start sub_08E64910
sub_08E64910: @ 0x08E64910
	bx r4
	nop

	thumb_func_start sub_08E64914
sub_08E64914: @ 0x08E64914
	bx r5
	nop

	thumb_func_start sub_08E64918
sub_08E64918: @ 0x08E64918
	bx r6
	nop

	thumb_func_start sub_08E6491C
sub_08E6491C: @ 0x08E6491C
	bx r7
	nop

	thumb_func_start sub_08E64920
sub_08E64920: @ 0x08E64920
	bx r8
	nop

	thumb_func_start sub_08E64924
sub_08E64924: @ 0x08E64924
	bx sb
	nop

	thumb_func_start sub_08E64928
sub_08E64928: @ 0x08E64928
	bx sl
	nop

	thumb_func_start sub_08E6492C
sub_08E6492C: @ 0x08E6492C
	bx fp
	nop

	thumb_func_start sub_08E64930
sub_08E64930: @ 0x08E64930
	bx ip
	nop

	thumb_func_start sub_08E64934
sub_08E64934: @ 0x08E64934
	bx sp
	nop

	thumb_func_start nullsub_45
nullsub_45: @ 0x08E64938
	bx lr
	nop

	thumb_func_start sub_08E6493C
sub_08E6493C: @ 0x08E6493C
	cmp r1, #0
	beq _08E649C4
	push {r4}
	adds r4, r0, #0
	eors r4, r1
	mov ip, r4
	movs r3, #1
	movs r2, #0
	cmp r1, #0
	bpl _08E64952
	rsbs r1, r1, #0
_08E64952:
	cmp r0, #0
	bpl _08E64958
	rsbs r0, r0, #0
_08E64958:
	cmp r0, r1
	blo _08E649B6
	movs r4, #1
	lsls r4, r4, #0x1c
_08E64960:
	cmp r1, r4
	bhs _08E6496E
	cmp r1, r0
	bhs _08E6496E
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08E64960
_08E6496E:
	lsls r4, r4, #3
_08E64970:
	cmp r1, r4
	bhs _08E6497E
	cmp r1, r0
	bhs _08E6497E
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08E64970
_08E6497E:
	cmp r0, r1
	blo _08E64986
	subs r0, r0, r1
	orrs r2, r3
_08E64986:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _08E64992
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_08E64992:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _08E6499E
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_08E6499E:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _08E649AA
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_08E649AA:
	cmp r0, #0
	beq _08E649B6
	lsrs r3, r3, #4
	beq _08E649B6
	lsrs r1, r1, #4
	b _08E6497E
_08E649B6:
	adds r0, r2, #0
	mov r4, ip
	cmp r4, #0
	bpl _08E649C0
	rsbs r0, r0, #0
_08E649C0:
	pop {r4}
	mov pc, lr
_08E649C4:
	push {lr}
	bl nullsub_6
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start nullsub_6
nullsub_6: @ 0x08E649D0
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08E649D4
sub_08E649D4: @ 0x08E649D4
	cmp r1, #0
	beq _08E64A42
	movs r3, #1
	movs r2, #0
	push {r4}
	cmp r0, r1
	blo _08E64A3C
	movs r4, #1
	lsls r4, r4, #0x1c
_08E649E6:
	cmp r1, r4
	bhs _08E649F4
	cmp r1, r0
	bhs _08E649F4
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08E649E6
_08E649F4:
	lsls r4, r4, #3
_08E649F6:
	cmp r1, r4
	bhs _08E64A04
	cmp r1, r0
	bhs _08E64A04
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08E649F6
_08E64A04:
	cmp r0, r1
	blo _08E64A0C
	subs r0, r0, r1
	orrs r2, r3
_08E64A0C:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _08E64A18
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_08E64A18:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _08E64A24
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_08E64A24:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _08E64A30
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_08E64A30:
	cmp r0, #0
	beq _08E64A3C
	lsrs r3, r3, #4
	beq _08E64A3C
	lsrs r1, r1, #4
	b _08E64A04
_08E64A3C:
	adds r0, r2, #0
	pop {r4}
	mov pc, lr
_08E64A42:
	push {lr}
	bl nullsub_6
	movs r0, #0
	pop {pc}

	thumb_func_start sub_08E64A4C
sub_08E64A4C: @ 0x08E64A4C
	cmp r1, #0
	beq _08E64B02
	movs r3, #1
	cmp r0, r1
	bhs _08E64A58
	mov pc, lr
_08E64A58:
	push {r4}
	movs r4, #1
	lsls r4, r4, #0x1c
_08E64A5E:
	cmp r1, r4
	bhs _08E64A6C
	cmp r1, r0
	bhs _08E64A6C
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08E64A5E
_08E64A6C:
	lsls r4, r4, #3
_08E64A6E:
	cmp r1, r4
	bhs _08E64A7C
	cmp r1, r0
	bhs _08E64A7C
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08E64A6E
_08E64A7C:
	movs r2, #0
	cmp r0, r1
	blo _08E64A84
	subs r0, r0, r1
_08E64A84:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _08E64A96
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08E64A96:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _08E64AA8
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08E64AA8:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _08E64ABA
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08E64ABA:
	mov ip, r3
	cmp r0, #0
	beq _08E64AC8
	lsrs r3, r3, #4
	beq _08E64AC8
	lsrs r1, r1, #4
	b _08E64A7C
_08E64AC8:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	bne _08E64AD4
	pop {r4}
	mov pc, lr
_08E64AD4:
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _08E64AE2
	lsrs r4, r1, #3
	adds r0, r0, r4
_08E64AE2:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _08E64AF0
	lsrs r4, r1, #2
	adds r0, r0, r4
_08E64AF0:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _08E64AFE
	lsrs r4, r1, #1
	adds r0, r0, r4
_08E64AFE:
	pop {r4}
	mov pc, lr
_08E64B02:
	push {lr}
	bl nullsub_6
	movs r0, #0
	pop {pc}
