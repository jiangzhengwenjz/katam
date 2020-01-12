	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08D7D8BC
sub_08D7D8BC: @ 0x08D7D8BC
	bx r0
	nop

	thumb_func_start sub_08D7D8C0
sub_08D7D8C0: @ 0x08D7D8C0
	bx r1
	nop

	thumb_func_start sub_08D7D8C4
sub_08D7D8C4: @ 0x08D7D8C4
	bx r2
	nop

	thumb_func_start sub_08D7D8C8
sub_08D7D8C8: @ 0x08D7D8C8
	bx r3
	nop

	thumb_func_start sub_08D7D8CC
sub_08D7D8CC: @ 0x08D7D8CC
	bx r4
	nop

	thumb_func_start sub_08D7D8D0
sub_08D7D8D0: @ 0x08D7D8D0
	bx r5
	nop

	thumb_func_start sub_08D7D8D4
sub_08D7D8D4: @ 0x08D7D8D4
	bx r6
	nop

	thumb_func_start sub_08D7D8D8
sub_08D7D8D8: @ 0x08D7D8D8
	bx r7
	nop

	thumb_func_start sub_08D7D8DC
sub_08D7D8DC: @ 0x08D7D8DC
	bx r8
	nop

	thumb_func_start sub_08D7D8E0
sub_08D7D8E0: @ 0x08D7D8E0
	bx sb
	nop

	thumb_func_start sub_08D7D8E4
sub_08D7D8E4: @ 0x08D7D8E4
	bx sl
	nop

	thumb_func_start sub_08D7D8E8
sub_08D7D8E8: @ 0x08D7D8E8
	bx fp
	nop

	thumb_func_start sub_08D7D8EC
sub_08D7D8EC: @ 0x08D7D8EC
	bx ip
	nop

	thumb_func_start sub_08D7D8F0
sub_08D7D8F0: @ 0x08D7D8F0
	bx sp
	nop

	thumb_func_start nullsub_99
nullsub_99: @ 0x08D7D8F4
	bx lr
	nop

	thumb_func_start sub_08D7D8F8
sub_08D7D8F8: @ 0x08D7D8F8
	cmp r1, #0
	beq _08D7D980
	push {r4}
	adds r4, r0, #0
	eors r4, r1
	mov ip, r4
	movs r3, #1
	movs r2, #0
	cmp r1, #0
	bpl _08D7D90E
	rsbs r1, r1, #0
_08D7D90E:
	cmp r0, #0
	bpl _08D7D914
	rsbs r0, r0, #0
_08D7D914:
	cmp r0, r1
	blo _08D7D972
	movs r4, #1
	lsls r4, r4, #0x1c
_08D7D91C:
	cmp r1, r4
	bhs _08D7D92A
	cmp r1, r0
	bhs _08D7D92A
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08D7D91C
_08D7D92A:
	lsls r4, r4, #3
_08D7D92C:
	cmp r1, r4
	bhs _08D7D93A
	cmp r1, r0
	bhs _08D7D93A
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08D7D92C
_08D7D93A:
	cmp r0, r1
	blo _08D7D942
	subs r0, r0, r1
	orrs r2, r3
_08D7D942:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _08D7D94E
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_08D7D94E:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _08D7D95A
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_08D7D95A:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _08D7D966
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_08D7D966:
	cmp r0, #0
	beq _08D7D972
	lsrs r3, r3, #4
	beq _08D7D972
	lsrs r1, r1, #4
	b _08D7D93A
_08D7D972:
	adds r0, r2, #0
	mov r4, ip
	cmp r4, #0
	bpl _08D7D97C
	rsbs r0, r0, #0
_08D7D97C:
	pop {r4}
	mov pc, lr
_08D7D980:
	push {lr}
	bl nullsub_14
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start nullsub_14
nullsub_14: @ 0x08D7D98C
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08D7D990
sub_08D7D990: @ 0x08D7D990
	cmp r1, #0
	beq _08D7DA46
	movs r3, #1
	cmp r0, r1
	bhs _08D7D99C
	mov pc, lr
_08D7D99C:
	push {r4}
	movs r4, #1
	lsls r4, r4, #0x1c
_08D7D9A2:
	cmp r1, r4
	bhs _08D7D9B0
	cmp r1, r0
	bhs _08D7D9B0
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08D7D9A2
_08D7D9B0:
	lsls r4, r4, #3
_08D7D9B2:
	cmp r1, r4
	bhs _08D7D9C0
	cmp r1, r0
	bhs _08D7D9C0
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08D7D9B2
_08D7D9C0:
	movs r2, #0
	cmp r0, r1
	blo _08D7D9C8
	subs r0, r0, r1
_08D7D9C8:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _08D7D9DA
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08D7D9DA:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _08D7D9EC
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08D7D9EC:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _08D7D9FE
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08D7D9FE:
	mov ip, r3
	cmp r0, #0
	beq _08D7DA0C
	lsrs r3, r3, #4
	beq _08D7DA0C
	lsrs r1, r1, #4
	b _08D7D9C0
_08D7DA0C:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	bne _08D7DA18
	pop {r4}
	mov pc, lr
_08D7DA18:
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _08D7DA26
	lsrs r4, r1, #3
	adds r0, r0, r4
_08D7DA26:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _08D7DA34
	lsrs r4, r1, #2
	adds r0, r0, r4
_08D7DA34:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _08D7DA42
	lsrs r4, r1, #1
	adds r0, r0, r4
_08D7DA42:
	pop {r4}
	mov pc, lr
_08D7DA46:
	push {lr}
	bl nullsub_14
	movs r0, #0
	pop {pc}
