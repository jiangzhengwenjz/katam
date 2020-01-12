	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08E91998
sub_08E91998: @ 0x08E91998
	bx r0
	nop

	thumb_func_start sub_08E9199C
sub_08E9199C: @ 0x08E9199C
	bx r1
	nop

	thumb_func_start sub_08E919A0
sub_08E919A0: @ 0x08E919A0
	bx r2
	nop

	thumb_func_start sub_08E919A4
sub_08E919A4: @ 0x08E919A4
	bx r3
	nop

	thumb_func_start sub_08E919A8
sub_08E919A8: @ 0x08E919A8
	bx r4
	nop

	thumb_func_start sub_08E919AC
sub_08E919AC: @ 0x08E919AC
	bx r5
	nop

	thumb_func_start sub_08E919B0
sub_08E919B0: @ 0x08E919B0
	bx r6
	nop

	thumb_func_start sub_08E919B4
sub_08E919B4: @ 0x08E919B4
	bx r7
	nop

	thumb_func_start sub_08E919B8
sub_08E919B8: @ 0x08E919B8
	bx r8
	nop

	thumb_func_start sub_08E919BC
sub_08E919BC: @ 0x08E919BC
	bx sb
	nop

	thumb_func_start sub_08E919C0
sub_08E919C0: @ 0x08E919C0
	bx sl
	nop

	thumb_func_start sub_08E919C4
sub_08E919C4: @ 0x08E919C4
	bx fp
	nop

	thumb_func_start sub_08E919C8
sub_08E919C8: @ 0x08E919C8
	bx ip
	nop

	thumb_func_start sub_08E919CC
sub_08E919CC: @ 0x08E919CC
	bx sp
	nop

	thumb_func_start nullsub_57
nullsub_57: @ 0x08E919D0
	bx lr
	nop

	thumb_func_start sub_08E919D4
sub_08E919D4: @ 0x08E919D4
	cmp r1, #0
	beq _08E91A5C
	push {r4}
	adds r4, r0, #0
	eors r4, r1
	mov ip, r4
	movs r3, #1
	movs r2, #0
	cmp r1, #0
	bpl _08E919EA
	rsbs r1, r1, #0
_08E919EA:
	cmp r0, #0
	bpl _08E919F0
	rsbs r0, r0, #0
_08E919F0:
	cmp r0, r1
	blo _08E91A4E
	movs r4, #1
	lsls r4, r4, #0x1c
_08E919F8:
	cmp r1, r4
	bhs _08E91A06
	cmp r1, r0
	bhs _08E91A06
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08E919F8
_08E91A06:
	lsls r4, r4, #3
_08E91A08:
	cmp r1, r4
	bhs _08E91A16
	cmp r1, r0
	bhs _08E91A16
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08E91A08
_08E91A16:
	cmp r0, r1
	blo _08E91A1E
	subs r0, r0, r1
	orrs r2, r3
_08E91A1E:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _08E91A2A
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_08E91A2A:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _08E91A36
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_08E91A36:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _08E91A42
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_08E91A42:
	cmp r0, #0
	beq _08E91A4E
	lsrs r3, r3, #4
	beq _08E91A4E
	lsrs r1, r1, #4
	b _08E91A16
_08E91A4E:
	adds r0, r2, #0
	mov r4, ip
	cmp r4, #0
	bpl _08E91A58
	rsbs r0, r0, #0
_08E91A58:
	pop {r4}
	mov pc, lr
_08E91A5C:
	push {lr}
	bl nullsub_25
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start nullsub_25
nullsub_25: @ 0x08E91A68
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08E91A6C
sub_08E91A6C: @ 0x08E91A6C
	cmp r1, #0
	beq _08E91ADA
	movs r3, #1
	movs r2, #0
	push {r4}
	cmp r0, r1
	blo _08E91AD4
	movs r4, #1
	lsls r4, r4, #0x1c
_08E91A7E:
	cmp r1, r4
	bhs _08E91A8C
	cmp r1, r0
	bhs _08E91A8C
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08E91A7E
_08E91A8C:
	lsls r4, r4, #3
_08E91A8E:
	cmp r1, r4
	bhs _08E91A9C
	cmp r1, r0
	bhs _08E91A9C
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08E91A8E
_08E91A9C:
	cmp r0, r1
	blo _08E91AA4
	subs r0, r0, r1
	orrs r2, r3
_08E91AA4:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _08E91AB0
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_08E91AB0:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _08E91ABC
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_08E91ABC:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _08E91AC8
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_08E91AC8:
	cmp r0, #0
	beq _08E91AD4
	lsrs r3, r3, #4
	beq _08E91AD4
	lsrs r1, r1, #4
	b _08E91A9C
_08E91AD4:
	adds r0, r2, #0
	pop {r4}
	mov pc, lr
_08E91ADA:
	push {lr}
	bl nullsub_25
	movs r0, #0
	pop {pc}

	thumb_func_start sub_08E91AE4
sub_08E91AE4: @ 0x08E91AE4
	cmp r1, #0
	beq _08E91B9A
	movs r3, #1
	cmp r0, r1
	bhs _08E91AF0
	mov pc, lr
_08E91AF0:
	push {r4}
	movs r4, #1
	lsls r4, r4, #0x1c
_08E91AF6:
	cmp r1, r4
	bhs _08E91B04
	cmp r1, r0
	bhs _08E91B04
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08E91AF6
_08E91B04:
	lsls r4, r4, #3
_08E91B06:
	cmp r1, r4
	bhs _08E91B14
	cmp r1, r0
	bhs _08E91B14
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08E91B06
_08E91B14:
	movs r2, #0
	cmp r0, r1
	blo _08E91B1C
	subs r0, r0, r1
_08E91B1C:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _08E91B2E
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08E91B2E:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _08E91B40
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08E91B40:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _08E91B52
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08E91B52:
	mov ip, r3
	cmp r0, #0
	beq _08E91B60
	lsrs r3, r3, #4
	beq _08E91B60
	lsrs r1, r1, #4
	b _08E91B14
_08E91B60:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	bne _08E91B6C
	pop {r4}
	mov pc, lr
_08E91B6C:
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _08E91B7A
	lsrs r4, r1, #3
	adds r0, r0, r4
_08E91B7A:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _08E91B88
	lsrs r4, r1, #2
	adds r0, r0, r4
_08E91B88:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _08E91B96
	lsrs r4, r1, #1
	adds r0, r0, r4
_08E91B96:
	pop {r4}
	mov pc, lr
_08E91B9A:
	push {lr}
	bl nullsub_25
	movs r0, #0
	pop {pc}
