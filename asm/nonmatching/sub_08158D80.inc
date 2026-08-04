	.syntax unified
	.text

	push {r4, r5, r6, lr}
	ldr r0, _08158DB0 @ =gUnk_03000030
	ldr r0, [r0]
	lsrs r4, r0, #4
	movs r5, #0xf
	ands r5, r0
	lsrs r3, r4, #0x18
	movs r0, #6
	movs r6, #0xf
_08158D92:
	subs r0, #1
	lsls r2, r0, #2
	adds r1, r4, #0
	lsrs r1, r2
	ands r1, r6
	eors r3, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08158D92
	cmp r3, r5
	beq _08158DB4
	movs r0, #1
	b _08158DB6
	.align 2, 0
_08158DB0: .4byte gUnk_03000030
_08158DB4:
	movs r0, #0
_08158DB6:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	.syntax divided
