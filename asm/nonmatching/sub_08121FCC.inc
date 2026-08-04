	.syntax unified
	.text

	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r6
	ldr r0, [r6, #8]
	movs r1, #2
	mov sb, r1
	ands r0, r1
	cmp r0, #0
	bne _08121FEA
	b _08122122
_08121FEA:
	adds r0, r6, #0
	adds r0, #0x83
	movs r4, #0
	mov r2, sb
	strb r2, [r0]
	ldr r0, _08122134 @ =sub_08122248
	str r0, [r6, #0x78]
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r0, r6, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r1, [r0, #0x38]
	ldr r2, _08122138 @ =0xFFFFE000
	adds r1, r1, r2
	str r1, [r0, #0x38]
	movs r0, #3
	adds r1, r6, #0
	bl sub_0806FE64
	adds r0, r6, #0
	adds r0, #0xb5
	strb r4, [r0]
	adds r7, r6, #0
	adds r7, #0xb8
	ldrb r1, [r7]
	movs r0, #1
	mov sl, r0
	ands r0, r1
	cmp r0, #0
	beq _08122062
	ldr r0, _0812213C @ =gKirbys
	adds r1, r6, #0
	adds r1, #0xba
	ldrh r1, [r1]
	adds r2, r6, #0
	adds r2, #0xbc
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r3, r6, #0
	adds r3, #0xbd
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r4, r6, #0
	adds r4, #0xb0
	ldr r4, [r4]
	ldrh r5, [r4, #0x22]
	mov r4, sl
	ands r4, r5
	str r4, [sp]
	bl sub_080515D4
	ldrb r1, [r7]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r7]
_08122062:
	ldrb r1, [r7]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _081220A2
	ldr r0, _08122140 @ =gKirbys+0x1A8
	adds r1, r6, #0
	adds r1, #0xba
	ldrh r1, [r1]
	adds r2, r6, #0
	adds r2, #0xbc
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r3, r6, #0
	adds r3, #0xbd
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r4, r6, #0
	adds r4, #0xb0
	ldr r4, [r4]
	ldrh r5, [r4, #0x22]
	mov r4, sl
	ands r4, r5
	str r4, [sp]
	bl sub_080515D4
	ldrb r1, [r7]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r7]
_081220A2:
	ldrb r1, [r7]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _081220E2
	ldr r0, _08122144 @ =gKirbys+0x350
	adds r1, r6, #0
	adds r1, #0xba
	ldrh r1, [r1]
	adds r2, r6, #0
	adds r2, #0xbc
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r3, r6, #0
	adds r3, #0xbd
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r4, r6, #0
	adds r4, #0xb0
	ldr r4, [r4]
	ldrh r5, [r4, #0x22]
	mov r4, sl
	ands r4, r5
	str r4, [sp]
	bl sub_080515D4
	ldrb r1, [r7]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r7]
_081220E2:
	ldrb r1, [r7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08122122
	ldr r0, _08122148 @ =gKirbys+0x4F8
	mov r1, r8
	adds r1, #0xba
	ldrh r1, [r1]
	mov r2, r8
	adds r2, #0xbc
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	mov r3, r8
	adds r3, #0xbd
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	mov r4, r8
	adds r4, #0xb0
	ldr r4, [r4]
	ldrh r5, [r4, #0x22]
	mov r4, sl
	ands r4, r5
	str r4, [sp]
	bl sub_080515D4
	ldrb r1, [r7]
	movs r0, #0xf7
	ands r0, r1
	strb r0, [r7]
_08122122:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08122134: .4byte sub_08122248
_08122138: .4byte 0xFFFFE000
_0812213C: .4byte gKirbys
_08122140: .4byte gKirbys+0x1A8
_08122144: .4byte gKirbys+0x350
_08122148: .4byte gKirbys+0x4F8

	.syntax divided
