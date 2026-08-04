	.syntax unified
	.text

	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	bl sub_081197D4
	adds r2, r4, #0
	adds r2, #0xb6
	ldrh r0, [r2]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _081199B8
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #1
	strb r0, [r1]
	ldrh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _081199D0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r4, #8]
	b _081199D0
_081199B8:
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _081199D0
	ldr r0, _081199E8 @ =0xFFFEFFFF
	ands r1, r0
	str r1, [r4, #8]
_081199D0:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _081199EC
	adds r0, r5, #0
	bl sub_08119AA8
	b _08119A14
	.align 2, 0
_081199E8: .4byte 0xFFFEFFFF
_081199EC:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _081199FC
	adds r0, r5, #0
	bl sub_08119B3C
	b _08119A14
_081199FC:
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08119A0E
	adds r0, r5, #0
	bl sub_08119BB8
	b _08119A14
_08119A0E:
	adds r0, r5, #0
	bl sub_08119A20
_08119A14:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4, r5}
	pop {r0}
	bx r0

	.syntax divided
