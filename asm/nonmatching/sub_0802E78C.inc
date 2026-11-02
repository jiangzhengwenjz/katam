	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified
	.text

	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x28
	ldr r2, _0802E7B0 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802E7B4
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0802E7BC
	.align 2, 0
_0802E7B0: .4byte gCurTask
_0802E7B4:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0802E7BC:
	adds r7, r0, #0
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r3, r7, r0
	ldr r1, [r3]
	movs r0, #0x80
	lsls r0, r0, #0x17
	ands r0, r1
	cmp r0, #0
	beq _0802E7D2
	b _0802E958
_0802E7D2:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r1, r0
	cmp r1, #0
	bne _0802E7DE
	b _0802E936
_0802E7DE:
	movs r1, #0xc6
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	movs r3, #0xf
	ands r0, r3
	cmp r0, #0
	beq _0802E7F0
	b _0802E936
_0802E7F0:
	ldr r4, _0802E894 @ =gRngVal
	ldr r0, [r4]
	ldr r6, _0802E898 @ =0x00196225
	adds r1, r0, #0
	muls r1, r6, r1
	ldr r5, _0802E89C @ =0x3C6EF35F
	adds r1, r1, r5
	lsrs r2, r1, #0x10
	movs r0, #0x1f
	ands r2, r0
	mov r8, r2
	adds r0, r1, #0
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r4]
	lsrs r0, r0, #0x10
	ands r0, r3
	adds r0, #0x32
	mov sb, r0
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrh r0, [r0]
	rsbs r0, r0, #0
	add r1, sp, #0x18
	strh r0, [r1]
	movs r2, #0xc1
	lsls r2, r2, #1
	adds r0, r7, r2
	ldrh r0, [r0]
	rsbs r0, r0, #0
	mov r2, sp
	adds r2, #0x1a
	strh r0, [r2]
	add r0, sp, #0x14
	movs r2, #4
	str r3, [sp, #0x24]
	bl memcpy
	ldr r0, [r4]
	adds r2, r0, #0
	muls r2, r6, r2
	adds r2, r2, r5
	str r2, [r4]
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r1, r7, r0
	lsrs r0, r2, #0x10
	ldr r3, [sp, #0x24]
	ands r0, r3
	subs r0, #8
	lsls r0, r0, #8
	ldr r1, [r1]
	adds r0, r1, r0
	str r0, [sp, #0x1c]
	adds r0, r2, #0
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r4]
	movs r2, #0xbe
	lsls r2, r2, #1
	adds r1, r7, r2
	lsrs r0, r0, #0x10
	ands r0, r3
	subs r0, #8
	lsls r0, r0, #8
	ldr r1, [r1]
	adds r0, r1, r0
	str r0, [sp, #0x20]
	add r1, sp, #0x14
	adds r0, r1, #0
	ldrh r2, [r0, #2]
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r1, [r1, r4]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _0802E8A0
	subs r0, r3, r2
	b _0802E8A2
	.align 2, 0
_0802E894: .4byte gRngVal
_0802E898: .4byte 0x00196225
_0802E89C: .4byte 0x3C6EF35F
_0802E8A0:
	subs r0, r2, r3
_0802E8A2:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0802E8B2
	movs r0, #0
	adds r1, r0, #0
_0802E8B2:
	cmp r1, #0xff
	bhi _0802E8C2
	add r1, sp, #0x14
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r1, #2]
	b _0802E8FE
_0802E8C2:
	add r3, sp, #0x14
	adds r0, r3, #0
	ldrh r1, [r0]
	movs r4, #0
	ldrsh r2, [r0, r4]
	ldr r0, _0802E94C @ =0xFFFFFC00
	cmp r2, r0
	blt _0802E8DE
	adds r0, r1, #0
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r2, r1
	ble _0802E8DE
	adds r0, r1, #0
_0802E8DE:
	strh r0, [r3]
	add r3, sp, #0x14
	adds r0, r3, #0
	ldrh r1, [r0, #2]
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	ldr r0, _0802E94C @ =0xFFFFFC00
	cmp r2, r0
	blt _0802E8FC
	adds r0, r1, #0
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r2, r1
	ble _0802E8FC
	adds r0, r1, #0
_0802E8FC:
	strh r0, [r3, #2]
_0802E8FE:
	ldr r2, _0802E950 @ =gUnk_082EB954
	ldr r0, _0802E954 @ =gUnk_082EB984
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, r0, r2
	ldrh r1, [r1]
	adds r2, #2
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r3, [r7, #8]
	ldr r0, [sp, #0x1c]
	str r0, [sp]
	ldr r4, [sp, #0x20]
	str r4, [sp, #4]
	add r0, sp, #0x14
	movs r4, #0
	ldrsh r0, [r0, r4]
	str r0, [sp, #8]
	add r0, sp, #0x14
	movs r4, #2
	ldrsh r0, [r0, r4]
	str r0, [sp, #0xc]
	mov r0, sb
	str r0, [sp, #0x10]
	adds r0, r7, #0
	bl sub_0802F8D8
_0802E936:
	ldr r1, [r7, #4]
	adds r0, r7, #0
	bl _call_via_r1
	movs r2, #0xc6
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	b _0802E96C
	.align 2, 0
_0802E94C: .4byte 0xFFFFFC00
_0802E950: .4byte gUnk_082EB954
_0802E954: .4byte gUnk_082EB984
_0802E958:
	cmp r1, #0
	bge _0802E964
	ldr r0, [r2]
	bl TaskDestroy
	b _0802E96C
_0802E964:
	movs r0, #0xa0
	lsls r0, r0, #0x18
	orrs r1, r0
	str r1, [r3]
_0802E96C:
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	.syntax divided
