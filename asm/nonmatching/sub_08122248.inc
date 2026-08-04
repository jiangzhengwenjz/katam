	.syntax unified
	.text

	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xb6
	ldrb r1, [r5]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _08122280
	adds r0, r4, #0
	bl sub_0812214C
	cmp r0, #0
	bne _081222A0
	movs r0, #8
	strb r0, [r5]
	adds r1, r4, #0
	adds r1, #0xb7
	movs r0, #3
	strb r0, [r1]
	ldr r0, _0812227C @ =sub_08121B70
	str r0, [r4, #0x78]
	b _081222A0
	.align 2, 0
_0812227C: .4byte sub_08121B70
_08122280:
	adds r1, r4, #0
	adds r1, #0xb7
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _081222A0
	ldrb r0, [r5]
	movs r1, #4
	orrs r0, r1
	strb r0, [r5]
	adds r0, r4, #0
	adds r0, #0x83
	strb r2, [r0]
_081222A0:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4, r5}
	pop {r0}
	bx r0

	.syntax divided
