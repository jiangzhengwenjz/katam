	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08E2C80C
sub_08E2C80C: @ 0x08E2C80C
	bx r0
	nop

	thumb_func_start sub_08E2C810
sub_08E2C810: @ 0x08E2C810
	bx r1
	nop

	thumb_func_start sub_08E2C814
sub_08E2C814: @ 0x08E2C814
	bx r2
	nop

	thumb_func_start sub_08E2C818
sub_08E2C818: @ 0x08E2C818
	bx r3
	nop

	thumb_func_start sub_08E2C81C
sub_08E2C81C: @ 0x08E2C81C
	bx r4
	nop

	thumb_func_start sub_08E2C820
sub_08E2C820: @ 0x08E2C820
	bx r5
	nop

	thumb_func_start sub_08E2C824
sub_08E2C824: @ 0x08E2C824
	bx r6
	nop

	thumb_func_start sub_08E2C828
sub_08E2C828: @ 0x08E2C828
	bx r7
	nop

	thumb_func_start sub_08E2C82C
sub_08E2C82C: @ 0x08E2C82C
	bx r8
	nop

	thumb_func_start sub_08E2C830
sub_08E2C830: @ 0x08E2C830
	bx sb
	nop

	thumb_func_start sub_08E2C834
sub_08E2C834: @ 0x08E2C834
	bx sl
	nop

	thumb_func_start sub_08E2C838
sub_08E2C838: @ 0x08E2C838
	bx fp
	nop

	thumb_func_start sub_08E2C83C
sub_08E2C83C: @ 0x08E2C83C
	bx ip
	nop

	thumb_func_start sub_08E2C840
sub_08E2C840: @ 0x08E2C840
	bx sp
	nop

	thumb_func_start nullsub_72
nullsub_72: @ 0x08E2C844
	bx lr
	nop

	thumb_func_start sub_08E2C848
sub_08E2C848: @ 0x08E2C848
	cmp r1, #0
	beq _08E2C8D0
	push {r4}
	adds r4, r0, #0
	eors r4, r1
	mov ip, r4
	movs r3, #1
	movs r2, #0
	cmp r1, #0
	bpl _08E2C85E
	rsbs r1, r1, #0
_08E2C85E:
	cmp r0, #0
	bpl _08E2C864
	rsbs r0, r0, #0
_08E2C864:
	cmp r0, r1
	blo _08E2C8C2
	movs r4, #1
	lsls r4, r4, #0x1c
_08E2C86C:
	cmp r1, r4
	bhs _08E2C87A
	cmp r1, r0
	bhs _08E2C87A
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08E2C86C
_08E2C87A:
	lsls r4, r4, #3
_08E2C87C:
	cmp r1, r4
	bhs _08E2C88A
	cmp r1, r0
	bhs _08E2C88A
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08E2C87C
_08E2C88A:
	cmp r0, r1
	blo _08E2C892
	subs r0, r0, r1
	orrs r2, r3
_08E2C892:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _08E2C89E
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_08E2C89E:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _08E2C8AA
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_08E2C8AA:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _08E2C8B6
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_08E2C8B6:
	cmp r0, #0
	beq _08E2C8C2
	lsrs r3, r3, #4
	beq _08E2C8C2
	lsrs r1, r1, #4
	b _08E2C88A
_08E2C8C2:
	adds r0, r2, #0
	mov r4, ip
	cmp r4, #0
	bpl _08E2C8CC
	rsbs r0, r0, #0
_08E2C8CC:
	pop {r4}
	mov pc, lr
_08E2C8D0:
	push {lr}
	bl nullsub_7
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start nullsub_7
nullsub_7: @ 0x08E2C8DC
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08E2C8E0
sub_08E2C8E0: @ 0x08E2C8E0
	cmp r1, #0
	beq _08E2C94E
	movs r3, #1
	movs r2, #0
	push {r4}
	cmp r0, r1
	blo _08E2C948
	movs r4, #1
	lsls r4, r4, #0x1c
_08E2C8F2:
	cmp r1, r4
	bhs _08E2C900
	cmp r1, r0
	bhs _08E2C900
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08E2C8F2
_08E2C900:
	lsls r4, r4, #3
_08E2C902:
	cmp r1, r4
	bhs _08E2C910
	cmp r1, r0
	bhs _08E2C910
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08E2C902
_08E2C910:
	cmp r0, r1
	blo _08E2C918
	subs r0, r0, r1
	orrs r2, r3
_08E2C918:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _08E2C924
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_08E2C924:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _08E2C930
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_08E2C930:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _08E2C93C
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_08E2C93C:
	cmp r0, #0
	beq _08E2C948
	lsrs r3, r3, #4
	beq _08E2C948
	lsrs r1, r1, #4
	b _08E2C910
_08E2C948:
	adds r0, r2, #0
	pop {r4}
	mov pc, lr
_08E2C94E:
	push {lr}
	bl nullsub_7
	movs r0, #0
	pop {pc}
