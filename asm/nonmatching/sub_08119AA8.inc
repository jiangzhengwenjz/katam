	.syntax unified
	.text

	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xb0
	ldr r0, [r5]
	ldrb r1, [r0, #4]
	ldr r3, _08119AFC @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _08119B00 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	adds r3, r0, #0
	adds r0, r4, #0
	adds r0, #0xb6
	ldrh r0, [r0]
	movs r4, #1
	ands r4, r0
	cmp r4, #0
	beq _08119B04
	ldr r0, [r5]
	ldrh r0, [r0, #0x14]
	lsrs r0, r0, #8
	movs r1, #0
	strb r0, [r3]
	ldr r0, [r5]
	ldrh r0, [r0, #0x14]
	strb r0, [r3, #1]
	ldr r0, [r5]
	ldrh r0, [r0, #0x12]
	lsrs r0, r0, #8
	strb r0, [r3, #2]
	strb r1, [r3, #3]
	b _08119B34
	.align 2, 0
_08119AFC: .4byte gCurLevelInfo
_08119B00: .4byte 0x0000065E
_08119B04:
	ldr r1, [r5]
	ldrh r0, [r1, #0x14]
	lsrs r2, r0, #8
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldrh r0, [r1, #0x12]
	lsrs r1, r0, #8
	ldrb r0, [r3]
	cmp r0, r2
	bne _08119B34
	ldrb r0, [r3, #1]
	cmp r0, r5
	bne _08119B34
	ldrb r0, [r3, #2]
	movs r2, #1
	cmp r0, r1
	beq _08119B28
	movs r2, #0
_08119B28:
	cmp r2, #0
	beq _08119B34
	strb r4, [r3]
	strb r4, [r3, #1]
	strb r4, [r3, #2]
	strb r4, [r3, #3]
_08119B34:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	.syntax divided
