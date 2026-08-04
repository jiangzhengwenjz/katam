	.syntax unified
	.text

	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0xb6
	ldrh r1, [r4]
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #6
	cmp r0, r2
	bne _08119B5E
	ldr r0, [r5, #8]
	movs r1, #0xf4
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r5, #8]
_08119B5E:
	ldrh r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08119B74
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	orrs r0, r2
	strh r0, [r4]
_08119B74:
	ldrh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08119BA4
	bl sub_080395D4
	cmp r0, #0
	beq _08119BA4
	ldr r1, _08119BAC @ =gUnk_08357B8C
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldrh r1, [r4]
	ldr r0, _08119BB0 @ =0x0000EFFF
	ands r0, r1
	strh r0, [r4]
_08119BA4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08119BAC: .4byte gUnk_08357B8C
_08119BB0: .4byte 0x0000EFFF

	.syntax divided
