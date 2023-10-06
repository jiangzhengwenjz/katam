	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08138438
sub_08138438: @ 0x08138438
	push {r4, r5, lr}
	ldr r0, _08138454 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08138458
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08138460
	.align 2, 0
_08138454: .4byte gCurTask
_08138458:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08138460:
	adds r4, r0, #0
	ldrb r0, [r4, #3]
	cmp r0, #0
	bne _0813850C
	ldr r2, _081384A0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _081384A4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _081384A8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	adds r3, r0, #0
	movs r0, #0x1e
	ands r0, r3
	ldr r2, _081384AC @ =gUnk_083852D0
	adds r1, r0, r2
	ldrb r5, [r1]
	strb r5, [r4]
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4, #1]
	lsrs r0, r3, #3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _081384B0
	lsrs r0, r3, #2
	movs r1, #3
	ands r0, r1
	adds r0, r5, r0
	b _081384B8
	.align 2, 0
_081384A0: .4byte gRngVal
_081384A4: .4byte 0x00196225
_081384A8: .4byte 0x3C6EF35F
_081384AC: .4byte gUnk_083852D0
_081384B0:
	lsrs r0, r3, #2
	movs r1, #3
	ands r0, r1
	subs r0, r5, r0
_081384B8:
	strb r0, [r4]
	lsrs r0, r3, #5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _081384D2
	lsrs r0, r3, #4
	movs r1, #3
	ands r0, r1
	ldrb r1, [r4, #1]
	adds r0, r0, r1
	strb r0, [r4, #1]
	b _081384DE
_081384D2:
	lsrs r0, r3, #4
	movs r1, #3
	ands r0, r1
	ldrb r1, [r4, #1]
	subs r1, r1, r0
	strb r1, [r4, #1]
_081384DE:
	movs r0, #0x1f
	ands r3, r0
	strb r3, [r4, #3]
	ldrb r0, [r4]
	lsls r0, r0, #2
	ldrb r1, [r4, #1]
	lsls r1, r1, #2
	bl sub_081382A0
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0813850C
	ldr r0, _08138508 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08138512
	.align 2, 0
_08138508: .4byte gCurTask
_0813850C:
	ldrb r0, [r4, #3]
	subs r0, #1
	strb r0, [r4, #3]
_08138512:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08138518
sub_08138518: @ 0x08138518
	push {r4, lr}
	sub sp, #4
	ldr r2, _08138538 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813853C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08138544
	.align 2, 0
_08138538: .4byte gCurTask
_0813853C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08138544:
	adds r4, r0, #0
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08138558
	ldr r0, [r2]
	bl TaskDestroy
	b _081385C6
_08138558:
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _081385C6
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _081385C6
	ldr r0, _08138598 @ =sub_08138438
	str r1, [sp]
	movs r1, #4
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813859C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	b _081385A2
	.align 2, 0
_08138598: .4byte sub_08138438
_0813859C:
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
_081385A2:
	adds r2, r0, r1
	movs r1, #0
	strb r1, [r2]
	strb r1, [r2, #1]
	movs r0, #2
	strb r0, [r2, #2]
	strb r1, [r2, #3]
	ldr r2, _081385D0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _081385D4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _081385D8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0x4f
	ands r0, r1
	adds r0, #0x78
	strb r0, [r4, #2]
_081385C6:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081385D0: .4byte gRngVal
_081385D4: .4byte 0x00196225
_081385D8: .4byte 0x3C6EF35F

	thumb_func_start sub_081385DC
sub_081385DC: @ 0x081385DC
	push {lr}
	sub sp, #4
	ldr r0, _0813860C @ =sub_08138438
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08138610
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08138618
	.align 2, 0
_0813860C: .4byte sub_08138438
_08138610:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08138618:
	movs r1, #0
	strb r1, [r2]
	strb r1, [r2, #1]
	movs r0, #2
	strb r0, [r2, #2]
	strb r1, [r2, #3]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0813862C
sub_0813862C: @ 0x0813862C
	push {lr}
	sub sp, #4
	ldr r0, _0813865C @ =sub_08138518
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08138660
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08138668
	.align 2, 0
_0813865C: .4byte sub_08138518
_08138660:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08138668:
	movs r0, #2
	strh r0, [r1]
	movs r0, #1
	strb r0, [r1, #2]
	adds r0, r2, #0
	add sp, #4
	pop {r1}
	bx r1

	thumb_func_start sub_08138678
sub_08138678: @ 0x08138678
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08138692
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _0813869A
_08138692:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_0813869A:
	ldrh r1, [r2]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_081386A8
sub_081386A8: @ 0x081386A8
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081386C2
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _081386CA
_081386C2:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_081386CA:
	ldrh r1, [r2]
	ldr r0, _081386D8 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_081386D8: .4byte 0x0000FFFD

	thumb_func_start sub_081386DC
sub_081386DC: @ 0x081386DC
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081386F6
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _081386FE
_081386F6:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_081386FE:
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0813870C
sub_0813870C: @ 0x0813870C
	push {lr}
	ldr r0, _08138728 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813872C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08138734
	.align 2, 0
_08138728: .4byte gCurTask
_0813872C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08138734:
	adds r2, r1, #0
	adds r2, #0x54
	ldrb r0, [r2]
	cmp r0, #4
	bhi _0813874A
	ldr r0, [r1, #0x4c]
	subs r0, #4
	str r0, [r1, #0x4c]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_0813874A:
	adds r0, r1, #0
	bl sub_0812A2C0
	pop {r0}
	bx r0

	thumb_func_start nullsub_129
nullsub_129: @ 0x08138754
	bx lr
	.align 2, 0

	thumb_func_start nullsub_130
nullsub_130: @ 0x08138758
	bx lr
	.align 2, 0

	thumb_func_start nullsub_131
nullsub_131: @ 0x0813875C
	bx lr
	.align 2, 0

	thumb_func_start nullsub_132
nullsub_132: @ 0x08138760
	bx lr
	.align 2, 0

	thumb_func_start sub_08138764
sub_08138764: @ 0x08138764
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	movs r1, #0
	cmp r1, r4
	bhs _081387A4
	movs r7, #0xf
_08138776:
	adds r2, r5, r1
	subs r0, r4, r1
	subs r0, #1
	lsls r0, r0, #2
	adds r3, r7, #0
	lsls r3, r0
	ands r3, r6
	asrs r3, r0
	adds r0, r3, #0
	adds r0, #0x30
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x39
	bls _0813879A
	adds r0, r3, #0
	adds r0, #0x37
	strb r0, [r2]
_0813879A:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r4
	blo _08138776
_081387A4:
	adds r1, r5, r1
	movs r0, #0
	strb r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
