	.syntax unified
	.text

	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r4, #0
	movs r0, #0
	mov r8, r0
	movs r7, #0
	movs r0, #0x46
	strh r0, [r4, #4]
	adds r5, r4, #0
	adds r5, #0xb0
	ldr r0, [r5]
	ldrb r0, [r0, #0x14]
	subs r0, #0x38
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1a
	bhi _0811BA5A
	strh r7, [r4, #4]
_0811BA5A:
	ldr r0, [r5]
	ldrh r0, [r0, #0x14]
	lsrs r0, r0, #8
	lsls r0, r0, #3
	bl EwramMalloc
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x8c
	str r1, [r0]
	str r7, [sp]
	ldr r0, [r5]
	ldrh r0, [r0, #0x14]
	lsrs r0, r0, #8
	lsls r0, r0, #2
	lsrs r2, r0, #2
	movs r0, #0xa0
	lsls r0, r0, #0x13
	orrs r2, r0
	mov r0, sp
	bl CpuSet
	ldr r0, _0811BAA8 @ =sub_0811BAAC
	str r0, [r6, #0x78]
	adds r0, r6, #0
	adds r0, #0xde
	mov r1, r8
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	subs r0, #3
	strh r7, [r0]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811BAA8: .4byte sub_0811BAAC

	.syntax divided
