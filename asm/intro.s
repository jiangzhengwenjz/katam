	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08146E3C
sub_08146E3C: @ 0x08146E3C
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x24
	ldrh r0, [r2, #0xe]
	ldrh r1, [r2, #0xa]
	adds r0, r0, r1
	strh r0, [r2, #0xa]
	ldr r5, [r2, #0x20]
	ldr r1, _08146E98 @ =gUnk_083877E0
	ldrb r4, [r3, #1]
	lsls r0, r4, #1
	adds r0, r0, r1
	ldr r1, [r5]
	ldrh r0, [r0]
	cmp r1, r0
	blo _08146EA4
	adds r0, r4, #1
	strb r0, [r3, #1]
	movs r0, #0
	strb r0, [r3, #0xa]
	ldr r0, _08146E9C @ =sub_08149880
	str r0, [r2, #0x1c]
	ldrh r0, [r2, #0xe]
	strh r0, [r3, #2]
	ldrh r0, [r2, #0xe]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r2, #0xe]
	movs r0, #3
	ldrsb r0, [r2, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r2, #0x20]
	adds r0, r0, r1
	ldr r2, _08146EA0 @ =gUnk_08387208
	ldrh r1, [r2, #0xc]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0xe]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	b _08146EDC
	.align 2, 0
_08146E98: .4byte gUnk_083877E0
_08146E9C: .4byte sub_08149880
_08146EA0: .4byte gUnk_08387208
_08146EA4:
	adds r6, r5, #0
	ldrb r5, [r2, #3]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x48
	adds r4, r6, r0
	ldr r1, _08146EE4 @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #1
	beq _08146EDC
	ldr r0, [r4]
	cmp r0, #0
	beq _08146ED2
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08146ED2
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_08146ED2:
	ldr r1, _08146EE4 @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	movs r1, #1
	strb r1, [r0]
_08146EDC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08146EE4: .4byte 0x000005CC

	thumb_func_start sub_08146EE8
sub_08146EE8: @ 0x08146EE8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x24
	ldr r2, [r5, #0x20]
	ldr r1, _08146FA4 @ =gUnk_083877E0
	ldrb r3, [r4, #1]
	lsls r0, r3, #1
	adds r0, r0, r1
	ldr r1, [r2]
	ldrh r0, [r0]
	cmp r1, r0
	blo _08146F9E
	adds r0, r3, #1
	strb r0, [r4, #1]
	adds r0, r5, #0
	bl sub_08146BEC
	adds r6, r0, #0
	ldr r1, [r5, #0x20]
	ldr r2, _08146FA8 @ =0x000013EC
	adds r0, r1, r2
	ldr r3, [r0]
	cmp r3, #0
	beq _08146F48
	adds r4, r1, #0
	adds r4, #0x48
_08146F1E:
	cmp r3, r5
	beq _08146F42
	movs r0, #3
	ldrsb r0, [r3, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r4, r1
	movs r2, #3
	ldrsb r2, [r5, r2]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r4, r0
	ldr r1, [r1]
	ldr r0, [r0]
	cmp r1, r0
	beq _08146F56
_08146F42:
	ldr r3, [r3, #0x18]
	cmp r3, #0
	bne _08146F1E
_08146F48:
	ldr r0, [r6]
	cmp r0, #0
	beq _08146F56
	bl VramFree
	movs r0, #0
	str r0, [r6]
_08146F56:
	ldr r3, [r5, #0x20]
	movs r2, #0
	ldr r7, _08146FAC @ =sub_08146FB0
	movs r4, #3
	ldrsb r4, [r5, r4]
_08146F60:
	cmp r2, r4
	beq _08146F7C
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, #0x48
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _08146F7C
	ldrb r0, [r1, #0x1f]
	ldrb r1, [r6, #0x1f]
	cmp r0, r1
	beq _08146F98
_08146F7C:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x1f
	bls _08146F60
	adds r0, r3, #0
	adds r0, #0x12
	ldrb r6, [r6, #0x1f]
	adds r0, r0, r6
	movs r1, #0xff
	strb r1, [r0]
	ldrb r0, [r3, #0x11]
	subs r0, #1
	strb r0, [r3, #0x11]
_08146F98:
	movs r0, #0xff
	strb r0, [r5, #3]
	str r7, [r5, #0x1c]
_08146F9E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08146FA4: .4byte gUnk_083877E0
_08146FA8: .4byte 0x000013EC
_08146FAC: .4byte sub_08146FB0

	thumb_func_start sub_08146FB0
sub_08146FB0: @ 0x08146FB0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x24
	ldr r2, [r4, #0x20]
	ldr r1, _08147008 @ =gUnk_083877E0
	ldrb r3, [r5, #1]
	lsls r0, r3, #1
	adds r0, r0, r1
	ldr r1, [r2]
	ldrh r0, [r0]
	cmp r1, r0
	blo _08147000
	adds r0, r3, #1
	strb r0, [r5, #1]
	ldr r0, [r4, #0x20]
	adds r1, r4, #0
	bl sub_081469D4
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	ldr r2, _0814700C @ =gUnk_08387208
	ldrh r1, [r2, #0x10]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0x12]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldrb r0, [r4, #3]
	strb r0, [r5, #7]
	movs r0, #1
	strb r0, [r5, #6]
	ldr r0, _08147010 @ =sub_08147014
	str r0, [r4, #0x1c]
_08147000:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08147008: .4byte gUnk_083877E0
_0814700C: .4byte gUnk_08387208
_08147010: .4byte sub_08147014

	thumb_func_start sub_08147014
sub_08147014: @ 0x08147014
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r3, r5, #0
	adds r3, #0x24
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08147046
	movs r0, #0
	strh r0, [r3, #4]
	movs r1, #0
	ldrb r0, [r3, #6]
	cmp r0, #0
	bne _08147038
	movs r1, #1
_08147038:
	strb r1, [r3, #6]
	cmp r1, #0
	beq _08147042
	ldrb r0, [r3, #7]
	b _08147044
_08147042:
	movs r0, #0xff
_08147044:
	strb r0, [r5, #3]
_08147046:
	ldr r2, [r5, #0x20]
	ldr r1, _08147070 @ =gUnk_083877E0
	ldrb r4, [r3, #1]
	lsls r0, r4, #1
	adds r0, r0, r1
	ldr r1, [r2]
	ldrh r0, [r0]
	cmp r1, r0
	blo _08147068
	adds r0, r4, #1
	strb r0, [r3, #1]
	ldrb r0, [r3, #7]
	strb r0, [r5, #3]
	movs r0, #1
	strb r0, [r3, #6]
	ldr r0, _08147074 @ =sub_081498B4
	str r0, [r5, #0x1c]
_08147068:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08147070: .4byte gUnk_083877E0
_08147074: .4byte sub_081498B4

	thumb_func_start sub_08147078
sub_08147078: @ 0x08147078
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x24
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r1, [r5, #0x20]
	adds r4, r1, r0
	ldrb r0, [r2, #0xa]
	adds r0, #1
	strb r0, [r2, #0xa]
	movs r1, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x18
	bls _081470BC
	movs r0, #0
	strb r0, [r2, #0xa]
	ldrb r0, [r2, #9]
	adds r0, #1
	strb r0, [r2, #9]
	ands r0, r1
	cmp r0, #3
	bls _081470B4
	ldr r0, _081470E0 @ =sub_08149910
	str r0, [r5, #0x1c]
_081470B4:
	movs r0, #0x96
	lsls r0, r0, #2
	bl m4aSongNumStart
_081470BC:
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _081470DA
	ldr r1, _081470E4 @ =gUnk_08387208
	ldrh r0, [r1]
	strh r0, [r4, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_08155128
	ldr r0, _081470E8 @ =sub_081470EC
	str r0, [r5, #0x1c]
_081470DA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081470E0: .4byte sub_08149910
_081470E4: .4byte gUnk_08387208
_081470E8: .4byte sub_081470EC

	thumb_func_start sub_081470EC
sub_081470EC: @ 0x081470EC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x24
	ldr r2, [r4, #0x20]
	ldr r1, _08147144 @ =gUnk_083877E0
	ldrb r3, [r5, #1]
	lsls r0, r3, #1
	adds r0, r0, r1
	ldr r1, [r2]
	ldrh r0, [r0]
	cmp r1, r0
	blo _0814713C
	adds r0, r3, #1
	movs r1, #0
	strb r0, [r5, #1]
	strb r1, [r5, #0xa]
	ldr r0, _08147148 @ =0x0000025A
	bl m4aSongNumStart
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	ldr r2, _0814714C @ =gUnk_08387208
	ldrh r1, [r2, #8]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0xa]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldrh r0, [r5, #2]
	lsls r0, r0, #1
	strh r0, [r4, #0xe]
	ldr r0, _08147150 @ =sub_08147154
	str r0, [r4, #0x1c]
_0814713C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08147144: .4byte gUnk_083877E0
_08147148: .4byte 0x0000025A
_0814714C: .4byte gUnk_08387208
_08147150: .4byte sub_08147154

	thumb_func_start sub_08147154
sub_08147154: @ 0x08147154
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0xe]
	ldrh r2, [r4, #0xa]
	adds r1, r0, r2
	strh r1, [r4, #0xa]
	ldrb r0, [r4]
	cmp r0, #0
	beq _081471A0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _081471E0 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _081471A0
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _081471A0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _081471A0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_081471A0:
	ldr r6, [r4, #0x20]
	ldrb r5, [r4, #3]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x48
	adds r4, r6, r0
	ldr r1, _081471E4 @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #1
	beq _081471D8
	ldr r0, [r4]
	cmp r0, #0
	beq _081471CE
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _081471CE
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_081471CE:
	ldr r2, _081471E4 @ =0x000005CC
	adds r0, r6, r2
	adds r0, r0, r5
	movs r1, #1
	strb r1, [r0]
_081471D8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081471E0: .4byte gUnk_08387348
_081471E4: .4byte 0x000005CC

	thumb_func_start sub_081471E8
sub_081471E8: @ 0x081471E8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r5, r7, #0
	adds r5, #0x24
	ldrh r0, [r7, #0xe]
	ldrh r1, [r7, #0xa]
	adds r0, r0, r1
	strh r0, [r7, #0xa]
	ldrb r0, [r5, #1]
	mov r8, r0
	ldr r6, _081472CC @ =gSineTable
	ldrh r0, [r5, #4]
	lsls r0, r0, #0xa
	ldrh r4, [r5, #2]
	adds r1, r4, #0
	bl __divsi3
	ldr r1, _081472D0 @ =0x000003FF
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r6
	movs r0, #0
	ldrsh r1, [r1, r0]
	movs r0, #0x64
	muls r0, r1, r0
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	asrs r0, r0, #8
	rsbs r0, r0, #0
	lsls r4, r4, #4
	adds r1, r4, #0
	bl __divsi3
	ldrh r1, [r7, #0xc]
	adds r1, r1, r0
	strh r1, [r7, #0xc]
	ldrh r0, [r5, #4]
	adds r0, #1
	ldrh r1, [r5, #2]
	bl __modsi3
	strh r0, [r5, #4]
	ldrb r0, [r7]
	cmp r0, #0
	beq _0814728A
	ldrh r1, [r7, #0xa]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _081472D4 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _0814728A
	adds r0, r7, #0
	bl sub_08146B68
	adds r0, r7, #0
	bl sub_08146BEC
	adds r4, r0, #0
	cmp r4, #0
	beq _0814728A
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_081497B4
	cmp r0, #0
	beq _0814728A
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08149814
_0814728A:
	ldr r6, [r7, #0x20]
	ldrb r5, [r7, #3]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x48
	adds r4, r6, r0
	ldr r1, _081472D8 @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #1
	beq _081472C2
	ldr r0, [r4]
	cmp r0, #0
	beq _081472B8
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _081472B8
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_081472B8:
	ldr r1, _081472D8 @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	movs r1, #1
	strb r1, [r0]
_081472C2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081472CC: .4byte gSineTable
_081472D0: .4byte 0x000003FF
_081472D4: .4byte gUnk_08387348
_081472D8: .4byte 0x000005CC

	thumb_func_start sub_081472DC
sub_081472DC: @ 0x081472DC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0xe]
	adds r1, r0, #3
	movs r5, #0
	strh r1, [r4, #0xe]
	lsls r0, r1, #0x10
	cmp r0, #0
	blt _08147354
	ldrh r0, [r4, #0x24]
	strh r0, [r4, #0xe]
	ldr r2, _08147310 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08147314 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08147318 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #3
	bl __umodsi3
	cmp r0, #0
	beq _08147320
	ldr r0, _0814731C @ =0x0000FFCE
	b _08147322
	.align 2, 0
_08147310: .4byte gRngVal
_08147314: .4byte 0x00196225
_08147318: .4byte 0x3C6EF35F
_0814731C: .4byte 0x0000FFCE
_08147320:
	ldr r0, _08147348 @ =0x0000FF9C
_08147322:
	strh r0, [r4, #0x10]
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	ldr r2, _0814734C @ =gUnk_08387220
	ldrh r1, [r2, #4]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #6]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, _08147350 @ =sub_081473E0
	str r0, [r4, #0x1c]
	b _081473D2
	.align 2, 0
_08147348: .4byte 0x0000FF9C
_0814734C: .4byte gUnk_08387220
_08147350: .4byte sub_081473E0
_08147354:
	ldrh r0, [r4, #0xa]
	adds r1, r0, r1
	strh r1, [r4, #0xa]
	ldrb r0, [r4]
	cmp r0, #0
	beq _0814739A
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _081473D8 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _0814739A
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _0814739A
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _0814739A
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_0814739A:
	ldr r6, [r4, #0x20]
	ldrb r5, [r4, #3]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x48
	adds r4, r6, r0
	ldr r1, _081473DC @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #1
	beq _081473D2
	ldr r0, [r4]
	cmp r0, #0
	beq _081473C8
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _081473C8
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_081473C8:
	ldr r1, _081473DC @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	movs r1, #1
	strb r1, [r0]
_081473D2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081473D8: .4byte gUnk_08387348
_081473DC: .4byte 0x000005CC

	thumb_func_start sub_081473E0
sub_081473E0: @ 0x081473E0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x10]
	adds r1, #9
	strh r1, [r4, #0x10]
	ldrh r0, [r4, #0xe]
	ldrh r3, [r4, #0xa]
	adds r2, r0, r3
	strh r2, [r4, #0xa]
	ldrh r0, [r4, #0xc]
	adds r0, r0, r1
	strh r0, [r4, #0xc]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08147438
	lsls r1, r2, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08147470 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _08147438
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _08147438
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _08147438
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_08147438:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	ldr r0, _08147474 @ =0x00001DFF
	cmp r1, r0
	ble _08147480
	movs r1, #0
	adds r0, #1
	strh r0, [r4, #0xc]
	strh r1, [r4, #0x10]
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	ldr r2, _08147478 @ =gUnk_08387220
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #2]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, _0814747C @ =sub_081472DC
	str r0, [r4, #0x1c]
	b _081474B8
	.align 2, 0
_08147470: .4byte gUnk_08387348
_08147474: .4byte 0x00001DFF
_08147478: .4byte gUnk_08387220
_0814747C: .4byte sub_081472DC
_08147480:
	ldr r6, [r4, #0x20]
	ldrb r5, [r4, #3]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x48
	adds r4, r6, r0
	ldr r1, _081474C0 @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #1
	beq _081474B8
	ldr r0, [r4]
	cmp r0, #0
	beq _081474AE
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _081474AE
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_081474AE:
	ldr r3, _081474C0 @ =0x000005CC
	adds r0, r6, r3
	adds r0, r0, r5
	movs r1, #1
	strb r1, [r0]
_081474B8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081474C0: .4byte 0x000005CC

	thumb_func_start sub_081474C4
sub_081474C4: @ 0x081474C4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r5, #0
	adds r7, #0x24
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r1, [r5, #0x20]
	adds r6, r1, r0
	ldrh r1, [r5, #0xe]
	movs r2, #0xe
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bge _081474F4
	adds r0, r1, #3
	strh r0, [r5, #0xe]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _081474F4
	movs r0, #0
	strh r0, [r5, #0xe]
_081474F4:
	ldrh r0, [r5, #0xe]
	ldrh r2, [r5, #0xa]
	adds r1, r0, r2
	strh r1, [r5, #0xa]
	ldrb r0, [r5]
	cmp r0, #0
	beq _0814753C
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08147574 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _0814753C
	adds r0, r5, #0
	bl sub_08146B68
	adds r0, r5, #0
	bl sub_08146BEC
	adds r4, r0, #0
	cmp r4, #0
	beq _0814753C
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_081497B4
	cmp r0, #0
	beq _0814753C
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08149814
_0814753C:
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814756E
	ldrh r0, [r7]
	movs r4, #0
	strh r0, [r5, #0xe]
	ldrh r0, [r7, #2]
	strh r0, [r5, #0x10]
	ldr r1, _08147578 @ =gUnk_08387230
	ldrh r0, [r1, #8]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0xa]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	movs r0, #0x97
	lsls r0, r0, #2
	bl m4aSongNumStart
	strb r4, [r7, #4]
	ldr r0, _0814757C @ =sub_08147580
	str r0, [r5, #0x1c]
_0814756E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08147574: .4byte gUnk_08387348
_08147578: .4byte gUnk_08387230
_0814757C: .4byte sub_08147580

	thumb_func_start sub_08147580
sub_08147580: @ 0x08147580
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x24
	ldrh r1, [r4, #0x10]
	adds r1, #9
	strh r1, [r4, #0x10]
	ldrh r0, [r4, #0xe]
	ldrh r3, [r4, #0xa]
	adds r2, r0, r3
	strh r2, [r4, #0xa]
	ldrh r0, [r4, #0xc]
	adds r0, r0, r1
	strh r0, [r4, #0xc]
	ldrb r0, [r4]
	cmp r0, #0
	beq _081475DC
	lsls r1, r2, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08147614 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _081475DC
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _081475DC
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _081475DC
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_081475DC:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	ldr r0, _08147618 @ =0x00001DFF
	cmp r1, r0
	ble _08147624
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	movs r2, #0
	movs r1, #0xf0
	lsls r1, r1, #5
	strh r1, [r4, #0xc]
	strh r2, [r4, #0x10]
	ldr r2, _0814761C @ =gUnk_08387230
	ldrh r1, [r2, #0x14]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0x16]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, _08147620 @ =sub_08147858
	str r0, [r4, #0x1c]
	b _0814769E
	.align 2, 0
_08147614: .4byte gUnk_08387348
_08147618: .4byte 0x00001DFF
_0814761C: .4byte gUnk_08387230
_08147620: .4byte sub_08147858
_08147624:
	ldrb r0, [r6, #4]
	adds r0, #1
	strb r0, [r6, #4]
	movs r7, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r6, [r6, #5]
	cmp r0, r6
	blo _08147664
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	ldr r2, _0814765C @ =gUnk_08387230
	ldrh r1, [r2, #0xc]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0xe]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, _08147660 @ =sub_081476A8
	str r0, [r4, #0x1c]
	b _0814769E
	.align 2, 0
_0814765C: .4byte gUnk_08387230
_08147660: .4byte sub_081476A8
_08147664:
	ldr r6, [r4, #0x20]
	ldrb r5, [r4, #3]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x48
	adds r4, r6, r0
	ldr r1, _081476A4 @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #1
	beq _0814769E
	ldr r0, [r4]
	cmp r0, #0
	beq _08147694
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08147694
	ldrb r0, [r4, #0x1b]
	orrs r0, r7
	strb r0, [r4, #0x1b]
_08147694:
	ldr r3, _081476A4 @ =0x000005CC
	adds r0, r6, r3
	adds r0, r0, r5
	movs r1, #1
	strb r1, [r0]
_0814769E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081476A4: .4byte 0x000005CC

	thumb_func_start sub_081476A8
sub_081476A8: @ 0x081476A8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #3
	ldrsb r1, [r4, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r1, [r4, #0x20]
	adds r6, r1, r0
	ldrh r1, [r4, #0x10]
	adds r1, #9
	strh r1, [r4, #0x10]
	ldrh r0, [r4, #0xe]
	ldrh r3, [r4, #0xa]
	adds r2, r0, r3
	strh r2, [r4, #0xa]
	ldrh r0, [r4, #0xc]
	adds r0, r0, r1
	strh r0, [r4, #0xc]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08147710
	lsls r1, r2, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08147738 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _08147710
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _08147710
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _08147710
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_08147710:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	ldr r0, _0814773C @ =0x00001DFF
	cmp r1, r0
	ble _08147748
	movs r1, #0
	adds r0, #1
	strh r0, [r4, #0xc]
	strh r1, [r4, #0x10]
	ldr r1, _08147740 @ =gUnk_08387230
	ldrh r0, [r1, #0x14]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0x16]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	ldr r0, _08147744 @ =sub_08147858
	b _08147764
	.align 2, 0
_08147738: .4byte gUnk_08387348
_0814773C: .4byte 0x00001DFF
_08147740: .4byte gUnk_08387230
_08147744: .4byte sub_08147858
_08147748:
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _08147766
	ldr r1, _0814776C @ =gUnk_08387230
	ldrh r0, [r1, #0x10]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0x12]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	ldr r0, _08147770 @ =sub_08147774
_08147764:
	str r0, [r4, #0x1c]
_08147766:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814776C: .4byte gUnk_08387230
_08147770: .4byte sub_08147774

	thumb_func_start sub_08147774
sub_08147774: @ 0x08147774
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x10]
	adds r1, #9
	strh r1, [r4, #0x10]
	ldrh r0, [r4, #0xe]
	ldrh r3, [r4, #0xa]
	adds r2, r0, r3
	strh r2, [r4, #0xa]
	ldrh r0, [r4, #0xc]
	adds r0, r0, r1
	strh r0, [r4, #0xc]
	ldrb r0, [r4]
	cmp r0, #0
	beq _081477CC
	lsls r1, r2, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08147804 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _081477CC
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _081477CC
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _081477CC
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_081477CC:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	ldr r0, _08147808 @ =0x00001DFF
	cmp r1, r0
	ble _08147814
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	movs r2, #0
	movs r1, #0xf0
	lsls r1, r1, #5
	strh r1, [r4, #0xc]
	strh r2, [r4, #0x10]
	ldr r2, _0814780C @ =gUnk_08387230
	ldrh r1, [r2, #0x14]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0x16]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, _08147810 @ =sub_08147858
	str r0, [r4, #0x1c]
	b _0814784C
	.align 2, 0
_08147804: .4byte gUnk_08387348
_08147808: .4byte 0x00001DFF
_0814780C: .4byte gUnk_08387230
_08147810: .4byte sub_08147858
_08147814:
	ldr r6, [r4, #0x20]
	ldrb r5, [r4, #3]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x48
	adds r4, r6, r0
	ldr r1, _08147854 @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #1
	beq _0814784C
	ldr r0, [r4]
	cmp r0, #0
	beq _08147842
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08147842
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_08147842:
	ldr r3, _08147854 @ =0x000005CC
	adds r0, r6, r3
	adds r0, r0, r5
	movs r1, #1
	strb r1, [r0]
_0814784C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08147854: .4byte 0x000005CC

	thumb_func_start sub_08147858
sub_08147858: @ 0x08147858
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #3
	ldrsb r1, [r4, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r1, [r4, #0x20]
	adds r6, r1, r0
	ldrh r1, [r4, #0xe]
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _08147884
	adds r0, r1, #3
	strh r0, [r4, #0xe]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08147884
	movs r0, #0
	strh r0, [r4, #0xe]
_08147884:
	ldrh r0, [r4, #0xe]
	ldrh r2, [r4, #0xa]
	adds r1, r0, r2
	strh r1, [r4, #0xa]
	ldrb r0, [r4]
	cmp r0, #0
	beq _081478CC
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _081478F0 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _081478CC
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _081478CC
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _081478CC
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_081478CC:
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _081478EA
	ldr r1, _081478F4 @ =gUnk_08387230
	ldrh r0, [r1, #4]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #6]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	ldr r0, _081478F8 @ =sub_081474C4
	str r0, [r4, #0x1c]
_081478EA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081478F0: .4byte gUnk_08387348
_081478F4: .4byte gUnk_08387230
_081478F8: .4byte sub_081474C4

	thumb_func_start sub_081478FC
sub_081478FC: @ 0x081478FC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x24
	ldrh r0, [r4, #0xe]
	ldrh r2, [r4, #0xa]
	adds r1, r0, r2
	strh r1, [r4, #0xa]
	ldrb r0, [r4]
	cmp r0, #0
	beq _0814794C
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08147998 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _0814794C
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _0814794C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _0814794C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_0814794C:
	ldrh r0, [r6, #6]
	adds r0, #1
	strh r0, [r6, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r6, #8]
	cmp r0, r1
	blo _081479A4
	movs r0, #0
	strh r0, [r6, #6]
	ldrb r2, [r6, #0xb]
	cmp r2, #0
	beq _081479A4
	ldrb r0, [r6, #0xa]
	adds r1, r0, #1
	strb r1, [r6, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r2
	bhs _081479A4
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	ldr r2, _0814799C @ =gUnk_08387248
	ldrh r1, [r2, #8]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0xa]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, _081479A0 @ =sub_081479E8
	str r0, [r4, #0x1c]
	b _081479DC
	.align 2, 0
_08147998: .4byte gUnk_08387348
_0814799C: .4byte gUnk_08387248
_081479A0: .4byte sub_081479E8
_081479A4:
	ldr r6, [r4, #0x20]
	ldrb r5, [r4, #3]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x48
	adds r4, r6, r0
	ldr r2, _081479E4 @ =0x000005CC
	adds r0, r6, r2
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #1
	beq _081479DC
	ldr r0, [r4]
	cmp r0, #0
	beq _081479D2
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _081479D2
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_081479D2:
	ldr r1, _081479E4 @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	movs r1, #1
	strb r1, [r0]
_081479DC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081479E4: .4byte 0x000005CC

	thumb_func_start sub_081479E8
sub_081479E8: @ 0x081479E8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r4, #0
	adds r7, #0x24
	movs r1, #3
	ldrsb r1, [r4, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r1, [r4, #0x20]
	adds r6, r1, r0
	ldrh r1, [r4, #0xe]
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _08147A18
	adds r0, r1, #3
	strh r0, [r4, #0xe]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08147A18
	movs r0, #0
	strh r0, [r4, #0xe]
_08147A18:
	ldrh r0, [r4, #0xe]
	ldrh r2, [r4, #0xa]
	adds r1, r0, r2
	strh r1, [r4, #0xa]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08147A60
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08147A8C @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _08147A60
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _08147A60
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _08147A60
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_08147A60:
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _08147A86
	ldrh r0, [r7]
	strh r0, [r4, #0xe]
	ldrh r0, [r7, #2]
	strh r0, [r4, #0x10]
	ldr r1, _08147A90 @ =gUnk_08387248
	ldrh r0, [r1, #0xc]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0xe]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	ldr r0, _08147A94 @ =sub_08147A98
	str r0, [r4, #0x1c]
_08147A86:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08147A8C: .4byte gUnk_08387348
_08147A90: .4byte gUnk_08387248
_08147A94: .4byte sub_08147A98

	thumb_func_start sub_08147A98
sub_08147A98: @ 0x08147A98
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x10]
	adds r1, #9
	strh r1, [r4, #0x10]
	ldrh r0, [r4, #0xe]
	ldrh r3, [r4, #0xa]
	adds r2, r0, r3
	strh r2, [r4, #0xa]
	ldrh r0, [r4, #0xc]
	adds r0, r0, r1
	strh r0, [r4, #0xc]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08147AF0
	lsls r1, r2, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08147B28 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _08147AF0
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _08147AF0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _08147AF0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_08147AF0:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	ldr r0, _08147B2C @ =0x00001DFF
	cmp r1, r0
	ble _08147B38
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	movs r2, #0
	movs r1, #0xf0
	lsls r1, r1, #5
	strh r1, [r4, #0xc]
	strh r2, [r4, #0x10]
	ldr r2, _08147B30 @ =gUnk_08387248
	ldrh r1, [r2, #0x10]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0x12]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, _08147B34 @ =sub_08147B7C
	str r0, [r4, #0x1c]
	b _08147B70
	.align 2, 0
_08147B28: .4byte gUnk_08387348
_08147B2C: .4byte 0x00001DFF
_08147B30: .4byte gUnk_08387248
_08147B34: .4byte sub_08147B7C
_08147B38:
	ldr r6, [r4, #0x20]
	ldrb r5, [r4, #3]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x48
	adds r4, r6, r0
	ldr r1, _08147B78 @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #1
	beq _08147B70
	ldr r0, [r4]
	cmp r0, #0
	beq _08147B66
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08147B66
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_08147B66:
	ldr r3, _08147B78 @ =0x000005CC
	adds r0, r6, r3
	adds r0, r0, r5
	movs r1, #1
	strb r1, [r0]
_08147B70:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08147B78: .4byte 0x000005CC

	thumb_func_start sub_08147B7C
sub_08147B7C: @ 0x08147B7C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r4, #0
	adds r7, #0x24
	movs r1, #3
	ldrsb r1, [r4, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r1, [r4, #0x20]
	adds r6, r1, r0
	ldrh r1, [r4, #0xe]
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _08147BAC
	adds r0, r1, #3
	strh r0, [r4, #0xe]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08147BAC
	movs r0, #0
	strh r0, [r4, #0xe]
_08147BAC:
	ldrh r0, [r4, #0xe]
	ldrh r2, [r4, #0xa]
	adds r1, r0, r2
	strh r1, [r4, #0xa]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08147BF4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08147C1C @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _08147BF4
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _08147BF4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _08147BF4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_08147BF4:
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _08147C16
	ldrh r0, [r7]
	strh r0, [r4, #0xe]
	ldr r1, _08147C20 @ =gUnk_08387248
	ldrh r0, [r1, #4]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #6]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	ldr r0, _08147C24 @ =sub_081478FC
	str r0, [r4, #0x1c]
_08147C16:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08147C1C: .4byte gUnk_08387348
_08147C20: .4byte gUnk_08387248
_08147C24: .4byte sub_081478FC

	thumb_func_start sub_08147C28
sub_08147C28: @ 0x08147C28
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r5, #0
	adds r7, #0x24
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r1, [r5, #0x20]
	adds r6, r1, r0
	ldrh r1, [r5, #0xe]
	movs r2, #0xe
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bge _08147C58
	adds r0, r1, #3
	strh r0, [r5, #0xe]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08147C58
	movs r0, #0
	strh r0, [r5, #0xe]
_08147C58:
	ldrh r0, [r5, #0xe]
	ldrh r2, [r5, #0xa]
	adds r1, r0, r2
	strh r1, [r5, #0xa]
	ldrb r0, [r5]
	cmp r0, #0
	beq _08147CA0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08147CD8 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _08147CA0
	adds r0, r5, #0
	bl sub_08146B68
	adds r0, r5, #0
	bl sub_08146BEC
	adds r4, r0, #0
	cmp r4, #0
	beq _08147CA0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_081497B4
	cmp r0, #0
	beq _08147CA0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08149814
_08147CA0:
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _08147CD0
	ldrh r0, [r7]
	movs r4, #0
	strh r0, [r5, #0xe]
	ldrh r0, [r7, #2]
	strh r0, [r5, #0x10]
	ldr r1, _08147CDC @ =gUnk_0838725C
	ldrh r0, [r1, #8]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0xa]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	ldr r0, _08147CE0 @ =0x0000025D
	bl m4aSongNumStart
	strb r4, [r7, #4]
	ldr r0, _08147CE4 @ =sub_08147CE8
	str r0, [r5, #0x1c]
_08147CD0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08147CD8: .4byte gUnk_08387348
_08147CDC: .4byte gUnk_0838725C
_08147CE0: .4byte 0x0000025D
_08147CE4: .4byte sub_08147CE8

	thumb_func_start sub_08147CE8
sub_08147CE8: @ 0x08147CE8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x24
	ldrh r1, [r4, #0x10]
	adds r1, #9
	strh r1, [r4, #0x10]
	ldrh r0, [r4, #0xe]
	ldrh r3, [r4, #0xa]
	adds r2, r0, r3
	strh r2, [r4, #0xa]
	ldrh r0, [r4, #0xc]
	adds r0, r0, r1
	strh r0, [r4, #0xc]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08147D44
	lsls r1, r2, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08147D7C @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _08147D44
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _08147D44
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _08147D44
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_08147D44:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	ldr r0, _08147D80 @ =0x00001DFF
	cmp r1, r0
	ble _08147D8C
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	movs r2, #0
	movs r1, #0xf0
	lsls r1, r1, #5
	strh r1, [r4, #0xc]
	strh r2, [r4, #0x10]
	ldr r2, _08147D84 @ =gUnk_0838725C
	ldrh r1, [r2, #0x14]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0x16]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, _08147D88 @ =sub_08147FC0
	str r0, [r4, #0x1c]
	b _08147E06
	.align 2, 0
_08147D7C: .4byte gUnk_08387348
_08147D80: .4byte 0x00001DFF
_08147D84: .4byte gUnk_0838725C
_08147D88: .4byte sub_08147FC0
_08147D8C:
	ldrb r0, [r6, #4]
	adds r0, #1
	strb r0, [r6, #4]
	movs r7, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r6, [r6, #5]
	cmp r0, r6
	blo _08147DCC
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	ldr r2, _08147DC4 @ =gUnk_0838725C
	ldrh r1, [r2, #0xc]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0xe]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, _08147DC8 @ =sub_08147E10
	str r0, [r4, #0x1c]
	b _08147E06
	.align 2, 0
_08147DC4: .4byte gUnk_0838725C
_08147DC8: .4byte sub_08147E10
_08147DCC:
	ldr r6, [r4, #0x20]
	ldrb r5, [r4, #3]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x48
	adds r4, r6, r0
	ldr r1, _08147E0C @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #1
	beq _08147E06
	ldr r0, [r4]
	cmp r0, #0
	beq _08147DFC
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08147DFC
	ldrb r0, [r4, #0x1b]
	orrs r0, r7
	strb r0, [r4, #0x1b]
_08147DFC:
	ldr r3, _08147E0C @ =0x000005CC
	adds r0, r6, r3
	adds r0, r0, r5
	movs r1, #1
	strb r1, [r0]
_08147E06:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08147E0C: .4byte 0x000005CC

	thumb_func_start sub_08147E10
sub_08147E10: @ 0x08147E10
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #3
	ldrsb r1, [r4, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r1, [r4, #0x20]
	adds r6, r1, r0
	ldrh r1, [r4, #0x10]
	adds r1, #9
	strh r1, [r4, #0x10]
	ldrh r0, [r4, #0xe]
	ldrh r3, [r4, #0xa]
	adds r2, r0, r3
	strh r2, [r4, #0xa]
	ldrh r0, [r4, #0xc]
	adds r0, r0, r1
	strh r0, [r4, #0xc]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08147E78
	lsls r1, r2, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08147EA0 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _08147E78
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _08147E78
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _08147E78
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_08147E78:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	ldr r0, _08147EA4 @ =0x00001DFF
	cmp r1, r0
	ble _08147EB0
	movs r1, #0
	adds r0, #1
	strh r0, [r4, #0xc]
	strh r1, [r4, #0x10]
	ldr r1, _08147EA8 @ =gUnk_0838725C
	ldrh r0, [r1, #0x14]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0x16]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	ldr r0, _08147EAC @ =sub_08147FC0
	b _08147ECC
	.align 2, 0
_08147EA0: .4byte gUnk_08387348
_08147EA4: .4byte 0x00001DFF
_08147EA8: .4byte gUnk_0838725C
_08147EAC: .4byte sub_08147FC0
_08147EB0:
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _08147ECE
	ldr r1, _08147ED4 @ =gUnk_0838725C
	ldrh r0, [r1, #0x10]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0x12]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	ldr r0, _08147ED8 @ =sub_08147EDC
_08147ECC:
	str r0, [r4, #0x1c]
_08147ECE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08147ED4: .4byte gUnk_0838725C
_08147ED8: .4byte sub_08147EDC

	thumb_func_start sub_08147EDC
sub_08147EDC: @ 0x08147EDC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x10]
	adds r1, #9
	strh r1, [r4, #0x10]
	ldrh r0, [r4, #0xe]
	ldrh r3, [r4, #0xa]
	adds r2, r0, r3
	strh r2, [r4, #0xa]
	ldrh r0, [r4, #0xc]
	adds r0, r0, r1
	strh r0, [r4, #0xc]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08147F34
	lsls r1, r2, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08147F6C @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _08147F34
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _08147F34
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _08147F34
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_08147F34:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	ldr r0, _08147F70 @ =0x00001DFF
	cmp r1, r0
	ble _08147F7C
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	movs r2, #0
	movs r1, #0xf0
	lsls r1, r1, #5
	strh r1, [r4, #0xc]
	strh r2, [r4, #0x10]
	ldr r2, _08147F74 @ =gUnk_0838725C
	ldrh r1, [r2, #0x14]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0x16]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, _08147F78 @ =sub_08147FC0
	str r0, [r4, #0x1c]
	b _08147FB4
	.align 2, 0
_08147F6C: .4byte gUnk_08387348
_08147F70: .4byte 0x00001DFF
_08147F74: .4byte gUnk_0838725C
_08147F78: .4byte sub_08147FC0
_08147F7C:
	ldr r6, [r4, #0x20]
	ldrb r5, [r4, #3]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x48
	adds r4, r6, r0
	ldr r1, _08147FBC @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #1
	beq _08147FB4
	ldr r0, [r4]
	cmp r0, #0
	beq _08147FAA
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08147FAA
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_08147FAA:
	ldr r3, _08147FBC @ =0x000005CC
	adds r0, r6, r3
	adds r0, r0, r5
	movs r1, #1
	strb r1, [r0]
_08147FB4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08147FBC: .4byte 0x000005CC

	thumb_func_start sub_08147FC0
sub_08147FC0: @ 0x08147FC0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #3
	ldrsb r1, [r4, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r1, [r4, #0x20]
	adds r6, r1, r0
	ldrh r1, [r4, #0xe]
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _08147FEC
	adds r0, r1, #3
	strh r0, [r4, #0xe]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08147FEC
	movs r0, #0
	strh r0, [r4, #0xe]
_08147FEC:
	ldrh r0, [r4, #0xe]
	ldrh r2, [r4, #0xa]
	adds r1, r0, r2
	strh r1, [r4, #0xa]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08148034
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08148058 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _08148034
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _08148034
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _08148034
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_08148034:
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _08148052
	ldr r1, _0814805C @ =gUnk_0838725C
	ldrh r0, [r1, #4]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #6]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	ldr r0, _08148060 @ =sub_08147C28
	str r0, [r4, #0x1c]
_08148052:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08148058: .4byte gUnk_08387348
_0814805C: .4byte gUnk_0838725C
_08148060: .4byte sub_08147C28

	thumb_func_start sub_08148064
sub_08148064: @ 0x08148064
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x24
	ldrh r0, [r4, #0xe]
	ldrh r2, [r4, #0xa]
	adds r1, r0, r2
	strh r1, [r4, #0xa]
	ldrb r0, [r4]
	cmp r0, #0
	beq _081480B4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _0814810C @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _081480B4
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _081480B4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _081480B4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_081480B4:
	ldrh r0, [r6, #6]
	adds r0, #1
	strh r0, [r6, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r6, #8]
	cmp r0, r1
	blo _08148118
	movs r0, #0
	strh r0, [r6, #6]
	ldrb r2, [r6, #0xb]
	cmp r2, #0
	beq _08148118
	ldrb r0, [r6, #0xa]
	adds r1, r0, #1
	strb r1, [r6, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r2
	bhs _08148118
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	ldrh r1, [r6]
	lsls r1, r1, #1
	strh r1, [r4, #0xe]
	ldrh r1, [r6, #2]
	strh r1, [r4, #0x10]
	ldr r2, _08148110 @ =gUnk_08387274
	ldrh r1, [r2, #8]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0xa]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, _08148114 @ =sub_0814815C
	str r0, [r4, #0x1c]
	b _08148150
	.align 2, 0
_0814810C: .4byte gUnk_08387348
_08148110: .4byte gUnk_08387274
_08148114: .4byte sub_0814815C
_08148118:
	ldr r6, [r4, #0x20]
	ldrb r5, [r4, #3]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x48
	adds r4, r6, r0
	ldr r2, _08148158 @ =0x000005CC
	adds r0, r6, r2
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #1
	beq _08148150
	ldr r0, [r4]
	cmp r0, #0
	beq _08148146
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08148146
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_08148146:
	ldr r1, _08148158 @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	movs r1, #1
	strb r1, [r0]
_08148150:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08148158: .4byte 0x000005CC

	thumb_func_start sub_0814815C
sub_0814815C: @ 0x0814815C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x10]
	adds r1, #9
	strh r1, [r4, #0x10]
	ldrh r0, [r4, #0xe]
	ldrh r3, [r4, #0xa]
	adds r2, r0, r3
	strh r2, [r4, #0xa]
	ldrh r0, [r4, #0xc]
	adds r0, r0, r1
	strh r0, [r4, #0xc]
	ldrb r0, [r4]
	cmp r0, #0
	beq _081481B4
	lsls r1, r2, #0x10
	asrs r1, r1, #0x16
	ldr r2, _081481F4 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _081481B4
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _081481B4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _081481B4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_081481B4:
	ldrh r2, [r4, #0x10]
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _081481EC
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	ldrh r1, [r4, #0xc]
	subs r1, r1, r2
	movs r2, #0
	strh r1, [r4, #0xc]
	strh r2, [r4, #0x10]
	strh r2, [r4, #0xe]
	ldr r2, _081481F8 @ =gUnk_08387274
	ldrh r1, [r2, #0xc]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0xe]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, _081481FC @ =sub_08149B30
	str r0, [r4, #0x1c]
_081481EC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081481F4: .4byte gUnk_08387348
_081481F8: .4byte gUnk_08387274
_081481FC: .4byte sub_08149B30

	thumb_func_start sub_08148200
sub_08148200: @ 0x08148200
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #0x10]
	ldrh r1, [r5, #0xc]
	adds r0, r0, r1
	strh r0, [r5, #0xc]
	lsls r0, r0, #0x10
	ldr r1, _08148250 @ =0x1DFF0000
	cmp r0, r1
	ble _08148248
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r4, [r5, #0x20]
	adds r4, r4, r0
	movs r0, #0xf0
	lsls r0, r0, #5
	strh r0, [r5, #0xc]
	movs r0, #0
	strh r0, [r5, #0x10]
	ldr r1, _08148254 @ =gUnk_08387274
	ldrh r0, [r1]
	strh r0, [r4, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_08155128
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x16]
	ldr r0, _08148258 @ =sub_0814825C
	str r0, [r5, #0x1c]
_08148248:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08148250: .4byte 0x1DFF0000
_08148254: .4byte gUnk_08387274
_08148258: .4byte sub_0814825C

	thumb_func_start sub_0814825C
sub_0814825C: @ 0x0814825C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r6, #0
	adds r4, #0x24
	movs r1, #3
	ldrsb r1, [r6, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r1, [r6, #0x20]
	adds r5, r1, r0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0814828A
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	beq _0814829A
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _081482B6
_0814828A:
	ldrh r0, [r4, #6]
	adds r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r4, #0xc]
	cmp r0, r1
	blo _081482B6
_0814829A:
	movs r0, #0
	strh r0, [r4, #6]
	ldrh r0, [r4]
	strh r0, [r6, #0xe]
	ldr r1, _081482BC @ =gUnk_08387274
	ldrh r0, [r1, #4]
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #6]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	ldr r0, _081482C0 @ =sub_08148064
	str r0, [r6, #0x1c]
_081482B6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081482BC: .4byte gUnk_08387274
_081482C0: .4byte sub_08148064

	thumb_func_start sub_081482C4
sub_081482C4: @ 0x081482C4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x24
	ldrh r0, [r4, #0xe]
	ldrh r2, [r4, #0xa]
	adds r1, r0, r2
	strh r1, [r4, #0xa]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08148314
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08148360 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _08148314
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _08148314
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _08148314
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_08148314:
	ldrh r0, [r6, #6]
	adds r0, #1
	strh r0, [r6, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r6, #8]
	cmp r0, r1
	blo _0814836C
	movs r0, #0
	strh r0, [r6, #6]
	ldrb r2, [r6, #0xb]
	cmp r2, #0
	beq _0814836C
	ldrb r0, [r6, #0xa]
	adds r1, r0, #1
	strb r1, [r6, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r2
	bhs _0814836C
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	ldr r2, _08148364 @ =gUnk_08387284
	ldrh r1, [r2, #4]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #6]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, _08148368 @ =sub_081483B0
	str r0, [r4, #0x1c]
	b _081483A4
	.align 2, 0
_08148360: .4byte gUnk_08387348
_08148364: .4byte gUnk_08387284
_08148368: .4byte sub_081483B0
_0814836C:
	ldr r6, [r4, #0x20]
	ldrb r5, [r4, #3]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x48
	adds r4, r6, r0
	ldr r2, _081483AC @ =0x000005CC
	adds r0, r6, r2
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #1
	beq _081483A4
	ldr r0, [r4]
	cmp r0, #0
	beq _0814839A
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814839A
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_0814839A:
	ldr r1, _081483AC @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	movs r1, #1
	strb r1, [r0]
_081483A4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081483AC: .4byte 0x000005CC

	thumb_func_start sub_081483B0
sub_081483B0: @ 0x081483B0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r4, #0
	adds r7, #0x24
	movs r1, #3
	ldrsb r1, [r4, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r1, [r4, #0x20]
	adds r6, r1, r0
	ldrh r1, [r4, #0xe]
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _081483E0
	adds r0, r1, #3
	strh r0, [r4, #0xe]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _081483E0
	movs r0, #0
	strh r0, [r4, #0xe]
_081483E0:
	ldrh r0, [r4, #0xe]
	ldrh r2, [r4, #0xa]
	adds r1, r0, r2
	strh r1, [r4, #0xa]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08148428
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08148458 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _08148428
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _08148428
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _08148428
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_08148428:
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _08148450
	ldrh r0, [r7]
	lsls r0, r0, #1
	strh r0, [r4, #0xe]
	ldrh r0, [r7, #2]
	strh r0, [r4, #0x10]
	ldr r1, _0814845C @ =gUnk_08387284
	ldrh r0, [r1, #8]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0xa]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	ldr r0, _08148460 @ =sub_08148464
	str r0, [r4, #0x1c]
_08148450:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08148458: .4byte gUnk_08387348
_0814845C: .4byte gUnk_08387284
_08148460: .4byte sub_08148464

	thumb_func_start sub_08148464
sub_08148464: @ 0x08148464
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x10]
	adds r1, #9
	strh r1, [r4, #0x10]
	ldrh r0, [r4, #0xe]
	ldrh r3, [r4, #0xa]
	adds r2, r0, r3
	strh r2, [r4, #0xa]
	ldrh r0, [r4, #0xc]
	adds r0, r0, r1
	strh r0, [r4, #0xc]
	ldrb r0, [r4]
	cmp r0, #0
	beq _081484BC
	lsls r1, r2, #0x10
	asrs r1, r1, #0x16
	ldr r2, _081484FC @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _081484BC
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _081484BC
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _081484BC
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_081484BC:
	ldrh r2, [r4, #0x10]
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _081484F4
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	ldrh r1, [r4, #0xc]
	subs r1, r1, r2
	movs r2, #0
	strh r1, [r4, #0xc]
	strh r2, [r4, #0x10]
	strh r2, [r4, #0xe]
	ldr r2, _08148500 @ =gUnk_08387284
	ldrh r1, [r2, #0xc]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0xe]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, _08148504 @ =sub_08149B90
	str r0, [r4, #0x1c]
_081484F4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081484FC: .4byte gUnk_08387348
_08148500: .4byte gUnk_08387284
_08148504: .4byte sub_08149B90

	thumb_func_start sub_08148508
sub_08148508: @ 0x08148508
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r6, #0
	adds r4, #0x24
	movs r1, #3
	ldrsb r1, [r6, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r1, [r6, #0x20]
	adds r5, r1, r0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08148536
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	beq _08148546
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _08148562
_08148536:
	ldrh r0, [r4, #6]
	adds r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r4, #0xc]
	cmp r0, r1
	blo _08148562
_08148546:
	movs r0, #0
	strh r0, [r4, #6]
	ldrh r0, [r4]
	strh r0, [r6, #0xe]
	ldr r1, _08148568 @ =gUnk_08387284
	ldrh r0, [r1]
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	ldr r0, _0814856C @ =sub_081482C4
	str r0, [r6, #0x1c]
_08148562:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08148568: .4byte gUnk_08387284
_0814856C: .4byte sub_081482C4

	thumb_func_start sub_08148570
sub_08148570: @ 0x08148570
	push {r4, lr}
	adds r3, r1, #0
	adds r2, r0, #0
	adds r2, #0x24
	movs r4, #0xc
	ldrsh r1, [r3, r4]
	asrs r1, r1, #2
	rsbs r1, r1, #0
	strh r1, [r0, #0x24]
	movs r4, #0x16
	ldrsh r1, [r3, r4]
	asrs r1, r1, #2
	rsbs r1, r1, #0
	strh r1, [r2, #2]
	movs r1, #0x24
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _08148598
	movs r0, #1
	b _081485A2
_08148598:
	cmp r0, #0
	ble _081485A0
	movs r0, #2
	b _081485A2
_081485A0:
	movs r0, #0
_081485A2:
	strb r0, [r2, #8]
	ldrh r0, [r3, #0x12]
	strh r0, [r2, #6]
	movs r0, #1
	strb r0, [r2, #0xb]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_081485B4
sub_081485B4: @ 0x081485B4
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x24
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r3, r0, r1
	ldrb r0, [r2, #8]
	cmp r0, #1
	beq _081485E2
	cmp r0, #1
	bgt _081485DC
	cmp r0, #0
	beq _081485E8
	b _081485EA
_081485DC:
	cmp r0, #2
	beq _081485E6
	b _081485EA
_081485E2:
	movs r0, #2
	b _081485E8
_081485E6:
	movs r0, #6
_081485E8:
	strb r0, [r2, #9]
_081485EA:
	ldr r1, _08148614 @ =gUnk_0838729C
	ldrb r0, [r2, #9]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xc]
	ldrb r0, [r2, #9]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r3, #0x1a]
	adds r0, r3, #0
	bl sub_08155128
	ldr r0, _08148618 @ =sub_0814861C
	str r0, [r4, #0x1c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08148614: .4byte gUnk_0838729C
_08148618: .4byte sub_0814861C

	thumb_func_start sub_0814861C
sub_0814861C: @ 0x0814861C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x24
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r1, [r5, #0x20]
	adds r7, r1, r0
	ldrh r0, [r5, #0xe]
	ldrh r2, [r5, #0xa]
	adds r1, r0, r2
	strh r1, [r5, #0xa]
	ldrh r0, [r5, #0x10]
	ldrh r2, [r5, #0xc]
	adds r0, r0, r2
	strh r0, [r5, #0xc]
	ldrb r0, [r5]
	cmp r0, #0
	beq _08148684
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _081486C4 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _08148684
	adds r0, r5, #0
	bl sub_08146B68
	adds r0, r5, #0
	bl sub_08146BEC
	adds r6, r0, #0
	cmp r6, #0
	beq _08148684
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_081497B4
	cmp r0, #0
	beq _08148684
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08149814
_08148684:
	ldrh r0, [r4, #4]
	adds r0, #1
	movs r3, #0
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4, #6]
	cmp r0, r1
	blo _08148748
	movs r0, #0
	strh r0, [r4, #4]
	ldrb r2, [r4, #0xb]
	cmp r2, #0
	beq _08148748
	ldrb r0, [r4, #0xa]
	adds r1, r0, #1
	strb r1, [r4, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r2
	bhs _08148748
	ldrb r1, [r4, #8]
	ldrh r0, [r4, #2]
	strh r0, [r5, #0x10]
	cmp r1, #1
	beq _081486CE
	cmp r1, #1
	bgt _081486C8
	cmp r1, #0
	beq _081486E8
	b _0814871C
	.align 2, 0
_081486C4: .4byte gUnk_08387348
_081486C8:
	cmp r1, #2
	beq _08148702
	b _0814871C
_081486CE:
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _081486DC
	strb r3, [r4, #8]
	movs r0, #3
	b _0814871A
_081486DC:
	cmp r0, #0
	ble _0814871C
	movs r0, #2
	strb r0, [r4, #8]
	movs r0, #4
	b _0814871A
_081486E8:
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _081486F6
	movs r0, #1
	strb r0, [r4, #8]
	b _0814871A
_081486F6:
	cmp r0, #0
	ble _0814871C
	movs r0, #2
	strb r0, [r4, #8]
	movs r0, #5
	b _0814871A
_08148702:
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _08148712
	movs r0, #1
	strb r0, [r4, #8]
	movs r0, #8
	b _0814871A
_08148712:
	cmp r0, #0
	bne _0814871C
	strb r3, [r4, #8]
	movs r0, #7
_0814871A:
	strb r0, [r4, #9]
_0814871C:
	ldrb r0, [r4, #8]
	cmp r1, r0
	beq _08148748
	ldr r1, _08148744 @ =gUnk_0838729C
	ldrb r0, [r4, #9]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldrb r0, [r4, #9]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r7, #0x1a]
	adds r0, r7, #0
	bl sub_08155128
	b _081487B6
	.align 2, 0
_08148744: .4byte gUnk_0838729C
_08148748:
	adds r0, r7, #0
	bl sub_08155128
	cmp r0, #0
	bne _081487B6
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	ldrb r0, [r4, #9]
	subs r0, #1
	cmp r0, #7
	bhi _081487B6
	lsls r0, r0, #2
	ldr r1, _08148768 @ =_0814876C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08148768: .4byte _0814876C
_0814876C: @ jump table
	.4byte _0814878C @ case 0
	.4byte _081487B6 @ case 1
	.4byte _08148790 @ case 2
	.4byte _08148794 @ case 3
	.4byte _08148794 @ case 4
	.4byte _081487B6 @ case 5
	.4byte _08148790 @ case 6
	.4byte _0814878C @ case 7
_0814878C:
	movs r0, #2
	b _08148796
_08148790:
	movs r0, #0
	b _08148796
_08148794:
	movs r0, #6
_08148796:
	strb r0, [r4, #9]
	ldr r1, _081487BC @ =gUnk_0838729C
	ldrb r0, [r4, #9]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldrb r0, [r4, #9]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r7, #0x1a]
	adds r0, r7, #0
	bl sub_08155128
_081487B6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081487BC: .4byte gUnk_0838729C

	thumb_func_start sub_081487C0
sub_081487C0: @ 0x081487C0
	push {r4, lr}
	adds r3, r1, #0
	adds r2, r0, #0
	adds r2, #0x24
	movs r4, #0xc
	ldrsh r1, [r3, r4]
	asrs r1, r1, #2
	rsbs r1, r1, #0
	strh r1, [r0, #0x24]
	movs r4, #0x16
	ldrsh r1, [r3, r4]
	asrs r1, r1, #2
	rsbs r1, r1, #0
	strh r1, [r2, #2]
	movs r1, #0x24
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _081487E8
	movs r0, #1
	b _081487F2
_081487E8:
	cmp r0, #0
	ble _081487F0
	movs r0, #2
	b _081487F2
_081487F0:
	movs r0, #0
_081487F2:
	strb r0, [r2, #8]
	ldrh r0, [r3, #0x12]
	strh r0, [r2, #6]
	movs r0, #1
	strb r0, [r2, #0xb]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08148804
sub_08148804: @ 0x08148804
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r3, r5, #0
	adds r3, #0x24
	movs r0, #3
	ldrsb r0, [r5, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r5, #0x20]
	adds r6, r0, r1
	ldrb r0, [r3, #8]
	cmp r0, #1
	beq _08148832
	cmp r0, #1
	bgt _0814882C
	cmp r0, #0
	beq _08148838
	b _0814883A
_0814882C:
	cmp r0, #2
	beq _08148836
	b _0814883A
_08148832:
	movs r0, #3
	b _08148838
_08148836:
	movs r0, #6
_08148838:
	strb r0, [r3, #9]
_0814883A:
	movs r0, #0
	strb r0, [r3, #0xf]
	ldr r1, _08148890 @ =gUnk_08D626D4
	ldrb r0, [r3, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r2, #0
	ldrb r0, [r4]
	ldrb r1, [r3, #9]
	ldr r7, _08148894 @ =gUnk_083872C0
	mov ip, r7
	adds r7, r1, #0
	cmp r0, r1
	beq _08148866
_08148858:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, r1
	bne _08148858
_08148866:
	strb r2, [r3, #0xe]
	lsls r0, r7, #2
	add r0, ip
	ldrh r0, [r0]
	strh r0, [r6, #0xc]
	ldrb r0, [r3, #9]
	lsls r0, r0, #2
	mov r1, ip
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	ldr r0, _08148898 @ =sub_0814889C
	str r0, [r5, #0x1c]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08148890: .4byte gUnk_08D626D4
_08148894: .4byte gUnk_083872C0
_08148898: .4byte sub_0814889C

	thumb_func_start sub_0814889C
sub_0814889C: @ 0x0814889C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r4, r6, #0
	adds r4, #0x24
	movs r1, #3
	ldrsb r1, [r6, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r1, [r6, #0x20]
	adds r1, r1, r0
	mov r8, r1
	ldrh r0, [r6, #0xe]
	ldrh r2, [r6, #0xa]
	adds r1, r0, r2
	strh r1, [r6, #0xa]
	ldrh r0, [r6, #0x10]
	ldrh r2, [r6, #0xc]
	adds r0, r0, r2
	strh r0, [r6, #0xc]
	ldrb r0, [r6]
	cmp r0, #0
	beq _0814890A
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08148948 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _0814890A
	adds r0, r6, #0
	bl sub_08146B68
	adds r0, r6, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _0814890A
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _0814890A
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08149814
_0814890A:
	ldrh r0, [r4, #4]
	adds r0, #1
	movs r3, #0
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4, #6]
	cmp r0, r1
	blo _081489F8
	movs r0, #0
	strh r0, [r4, #4]
	ldrb r2, [r4, #0xb]
	cmp r2, #0
	beq _081489F8
	ldrb r0, [r4, #0xa]
	adds r1, r0, #1
	strb r1, [r4, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r2
	bhs _081489F8
	ldrb r7, [r4, #8]
	ldrh r0, [r4, #2]
	strh r0, [r6, #0x10]
	cmp r7, #1
	beq _08148952
	cmp r7, #1
	bgt _0814894C
	cmp r7, #0
	beq _0814896C
	b _081489A0
	.align 2, 0
_08148948: .4byte gUnk_08387348
_0814894C:
	cmp r7, #2
	beq _08148988
	b _081489A0
_08148952:
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _08148960
	strb r3, [r4, #8]
	movs r0, #5
	b _0814899E
_08148960:
	cmp r0, #0
	ble _081489A0
	movs r0, #2
	strb r0, [r4, #8]
	movs r0, #5
	b _0814899E
_0814896C:
	movs r1, #2
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _0814897C
	movs r0, #1
	strb r0, [r4, #8]
	movs r0, #3
	b _0814899E
_0814897C:
	cmp r0, #0
	ble _081489A0
	movs r0, #2
	strb r0, [r4, #8]
	movs r0, #6
	b _0814899E
_08148988:
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _08148996
	movs r0, #1
	strb r0, [r4, #8]
	b _0814899C
_08148996:
	cmp r0, #0
	bne _081489A0
	strb r3, [r4, #8]
_0814899C:
	movs r0, #8
_0814899E:
	strb r0, [r4, #9]
_081489A0:
	ldr r1, _081489F0 @ =gUnk_08D626D4
	ldrb r2, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r5, [r0]
	movs r3, #0
	ldrb r0, [r5]
	ldrb r1, [r4, #9]
	cmp r0, r1
	beq _081489C2
_081489B4:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r0, r5, r3
	ldrb r0, [r0]
	cmp r0, r1
	bne _081489B4
_081489C2:
	strb r3, [r4, #0xe]
	cmp r7, r2
	beq _081489F8
	movs r0, #0
	strb r0, [r4, #0xf]
	ldr r1, _081489F4 @ =gUnk_083872C0
	ldrb r0, [r4, #9]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	mov r2, r8
	strh r0, [r2, #0xc]
	ldrb r0, [r4, #9]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r2, #0x1a]
	mov r0, r8
	bl sub_08155128
	b _08148A72
	.align 2, 0
_081489F0: .4byte gUnk_08D626D4
_081489F4: .4byte gUnk_083872C0
_081489F8:
	ldrb r0, [r4, #0xf]
	adds r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _08148A72
	ldrb r0, [r4, #0xe]
	mov ip, r0
	movs r0, #0
	strb r0, [r4, #0xf]
	ldr r2, _08148A28 @ =gUnk_08D626D4
	ldrb r1, [r4, #8]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldrb r5, [r4, #0xe]
	ldr r0, [r0]
	adds r3, r5, r0
	ldrb r0, [r3, #1]
	adds r7, r1, #0
	cmp r0, #0xff
	beq _08148A2C
	adds r0, r5, #1
	b _08148A2E
	.align 2, 0
_08148A28: .4byte gUnk_08D626D4
_08148A2C:
	ldrb r0, [r3, #2]
_08148A2E:
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp ip, r0
	beq _08148A72
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r6, #0x20]
	adds r0, r0, r1
	lsls r1, r7, #2
	adds r1, r1, r2
	ldrb r2, [r4, #0xe]
	ldr r1, [r1]
	adds r1, r1, r2
	ldrb r1, [r1]
	strb r1, [r4, #9]
	ldr r2, _08148A7C @ =gUnk_083872C0
	ldrb r1, [r4, #9]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r4, #9]
	lsls r1, r1, #2
	adds r2, #2
	adds r1, r1, r2
	ldrh r1, [r1]
	strb r1, [r0, #0x1a]
	bl sub_08155128
_08148A72:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08148A7C: .4byte gUnk_083872C0

	thumb_func_start sub_08148A80
sub_08148A80: @ 0x08148A80
	push {r4, lr}
	adds r3, r1, #0
	adds r2, r0, #0
	adds r2, #0x24
	movs r4, #0xc
	ldrsh r1, [r3, r4]
	asrs r1, r1, #2
	rsbs r1, r1, #0
	strh r1, [r0, #0x24]
	movs r4, #0x16
	ldrsh r1, [r3, r4]
	asrs r1, r1, #2
	rsbs r1, r1, #0
	strh r1, [r2, #2]
	movs r1, #0x24
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _08148AA8
	movs r0, #1
	b _08148AB2
_08148AA8:
	cmp r0, #0
	ble _08148AB0
	movs r0, #2
	b _08148AB2
_08148AB0:
	movs r0, #0
_08148AB2:
	strb r0, [r2, #8]
	ldrh r0, [r3, #0x12]
	strh r0, [r2, #6]
	movs r0, #1
	strb r0, [r2, #0xb]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08148AC4
sub_08148AC4: @ 0x08148AC4
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x24
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r3, r0, r1
	ldrb r0, [r2, #8]
	cmp r0, #1
	beq _08148AF0
	cmp r0, #1
	bgt _08148AEC
	cmp r0, #0
	beq _08148AF0
	b _08148AF2
_08148AEC:
	cmp r0, #2
	bne _08148AF2
_08148AF0:
	strb r0, [r2, #9]
_08148AF2:
	ldr r1, _08148B1C @ =gUnk_083872F4
	ldrb r0, [r2, #9]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xc]
	ldrb r0, [r2, #9]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r3, #0x1a]
	adds r0, r3, #0
	bl sub_08155128
	ldr r0, _08148B20 @ =sub_08148B24
	str r0, [r4, #0x1c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08148B1C: .4byte gUnk_083872F4
_08148B20: .4byte sub_08148B24

	thumb_func_start sub_08148B24
sub_08148B24: @ 0x08148B24
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x24
	movs r1, #3
	ldrsb r1, [r4, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r1, [r4, #0x20]
	adds r7, r1, r0
	ldrh r0, [r4, #0xe]
	ldrh r2, [r4, #0xa]
	adds r1, r0, r2
	strh r1, [r4, #0xa]
	ldrh r0, [r4, #0x10]
	ldrh r2, [r4, #0xc]
	adds r0, r0, r2
	strh r0, [r4, #0xc]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08148B8C
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08148BC8 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _08148B8C
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _08148B8C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _08148B8C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_08148B8C:
	ldrh r0, [r6, #4]
	adds r0, #1
	movs r3, #0
	strh r0, [r6, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r6, #6]
	cmp r0, r1
	blo _08148C08
	movs r0, #0
	strh r0, [r6, #4]
	ldrb r2, [r6, #0xb]
	cmp r2, #0
	beq _08148C08
	ldrb r0, [r6, #0xa]
	adds r1, r0, #1
	strb r1, [r6, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r2
	bhs _08148C08
	ldrb r1, [r6, #8]
	ldrh r0, [r6, #2]
	strh r0, [r4, #0x10]
	movs r2, #2
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bge _08148BCC
	movs r0, #1
	b _08148BD2
	.align 2, 0
_08148BC8: .4byte gUnk_08387348
_08148BCC:
	cmp r0, #0
	ble _08148BD8
	movs r0, #2
_08148BD2:
	strb r0, [r6, #8]
	strb r0, [r6, #9]
	b _08148BDC
_08148BD8:
	strb r3, [r6, #8]
	strb r3, [r6, #9]
_08148BDC:
	ldrb r0, [r6, #8]
	cmp r1, r0
	beq _08148C08
	ldr r1, _08148C04 @ =gUnk_083872F4
	ldrb r0, [r6, #9]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldrb r0, [r6, #9]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r7, #0x1a]
	adds r0, r7, #0
	bl sub_08155128
	b _08148C16
	.align 2, 0
_08148C04: .4byte gUnk_083872F4
_08148C08:
	adds r0, r7, #0
	bl sub_08155128
	cmp r0, #0
	bne _08148C16
	movs r0, #0xff
	strb r0, [r7, #0x1b]
_08148C16:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08148C1C
sub_08148C1C: @ 0x08148C1C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x24
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #2
	ldrsh r1, [r2, r3]
	cmp r0, r1
	blt _08148C40
	movs r0, #0
	strh r0, [r2, #4]
	ldrh r0, [r4, #0x24]
	bl m4aSongNumStart
_08148C40:
	ldrh r0, [r4, #0xe]
	ldrh r2, [r4, #0xa]
	adds r1, r0, r2
	strh r1, [r4, #0xa]
	ldrh r0, [r4, #0x10]
	ldrh r3, [r4, #0xc]
	adds r0, r0, r3
	strh r0, [r4, #0xc]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08148C90
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r2, _08148CD0 @ =gUnk_08387348
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bgt _08148C90
	adds r0, r4, #0
	bl sub_08146B68
	adds r0, r4, #0
	bl sub_08146BEC
	adds r5, r0, #0
	cmp r5, #0
	beq _08148C90
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081497B4
	cmp r0, #0
	beq _08148C90
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08149814
_08148C90:
	ldr r6, [r4, #0x20]
	ldrb r5, [r4, #3]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x48
	adds r4, r6, r0
	ldr r1, _08148CD4 @ =0x000005CC
	adds r0, r6, r1
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #1
	beq _08148CC8
	ldr r0, [r4]
	cmp r0, #0
	beq _08148CBE
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08148CBE
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_08148CBE:
	ldr r2, _08148CD4 @ =0x000005CC
	adds r0, r6, r2
	adds r0, r0, r5
	movs r1, #1
	strb r1, [r0]
_08148CC8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08148CD0: .4byte gUnk_08387348
_08148CD4: .4byte 0x000005CC

	thumb_func_start sub_08148CD8
sub_08148CD8: @ 0x08148CD8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_08149C80
	adds r0, r4, #0
	bl sub_08148F04
	adds r0, r4, #0
	bl sub_08148F7C
	ldr r1, _08148D1C @ =gUnk_083871D8
	ldr r0, _08148D20 @ =gLanguage
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r1, #4
	adds r0, r0, r1
	ldrh r5, [r0]
	ldr r6, _08148D24 @ =gMainFlags
	ldr r3, [r6]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _08148D2C
	ldr r1, _08148D28 @ =gUnk_082D7850
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #0
	movs r2, #0x50
	bl LoadBgPaletteWithTransformation
	b _08148D4A
	.align 2, 0
_08148D1C: .4byte gUnk_083871D8
_08148D20: .4byte gLanguage
_08148D24: .4byte gMainFlags
_08148D28: .4byte gUnk_082D7850
_08148D2C:
	ldr r2, _08148D80 @ =0x040000D4
	ldr r1, _08148D84 @ =gUnk_082D7850
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	str r0, [r2]
	ldr r0, _08148D88 @ =gBgPalette
	str r0, [r2, #4]
	ldr r0, _08148D8C @ =0x80000050
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #1
	orrs r3, r0
	str r3, [r6]
_08148D4A:
	ldr r1, _08148D90 @ =gUnk_083871D8
	ldr r0, _08148D94 @ =gLanguage
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r1, #4
	adds r0, r0, r1
	ldrh r5, [r0]
	ldr r6, _08148D98 @ =gMainFlags
	ldr r3, [r6]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _08148D9C
	ldr r1, _08148D84 @ =gUnk_082D7850
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0x80
	movs r2, #0x80
	bl LoadBgPaletteWithTransformation
	b _08148DC2
	.align 2, 0
_08148D80: .4byte 0x040000D4
_08148D84: .4byte gUnk_082D7850
_08148D88: .4byte gBgPalette
_08148D8C: .4byte 0x80000050
_08148D90: .4byte gUnk_083871D8
_08148D94: .4byte gLanguage
_08148D98: .4byte gMainFlags
_08148D9C:
	ldr r2, _08148E04 @ =0x040000D4
	ldr r1, _08148E08 @ =gUnk_082D7850
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, _08148E0C @ =gBgPalette
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08148E10 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #1
	orrs r3, r0
	str r3, [r6]
_08148DC2:
	adds r0, r4, #0
	bl sub_08148E24
	adds r0, r4, #0
	adds r0, #0x24
	ldr r2, _08148E14 @ =gUnk_08D62518
	ldr r1, _08148E18 @ =gLanguage
	ldrh r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r1, [r1]
	bl sub_0814F3C4
	ldrh r1, [r4, #0x2a]
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r4, #0x2a]
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, _08148E1C @ =0x000013F8
	adds r1, r4, r0
	ldr r0, _08148E20 @ =sub_08148FF8
	str r0, [r1]
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08148E04: .4byte 0x040000D4
_08148E08: .4byte gUnk_082D7850
_08148E0C: .4byte gBgPalette
_08148E10: .4byte 0x80000080
_08148E14: .4byte gUnk_08D62518
_08148E18: .4byte gLanguage
_08148E1C: .4byte 0x000013F8
_08148E20: .4byte sub_08148FF8

	thumb_func_start sub_08148E24
sub_08148E24: @ 0x08148E24
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	movs r0, #0
	mov r2, sp
	adds r2, #6
	strb r0, [r2]
	ldr r1, _08148E58 @ =0x0000FFFF
	mov r0, sp
	strh r1, [r0]
	ldr r4, _08148E5C @ =gMainFlags
	ldr r3, [r4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	mov r8, r2
	cmp r0, #0
	beq _08148E60
	mov r0, sp
	movs r1, #0x81
	movs r2, #1
	bl LoadBgPaletteWithTransformation
	b _08148E76
	.align 2, 0
_08148E58: .4byte 0x0000FFFF
_08148E5C: .4byte gMainFlags
_08148E60:
	ldr r1, _08148EE0 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08148EE4 @ =gUnk_030038A0 + 2
	str r0, [r1, #4]
	ldr r0, _08148EE8 @ =0x80000001
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r3, r0
	str r3, [r4]
_08148E76:
	movs r5, #0
	mov r0, sp
	adds r0, #2
	adds r7, r0, #0
	add r6, sp, #4
_08148E80:
	mov r1, r8
	adds r0, r5, r1
	ldrb r0, [r0]
	ldr r1, _08148EEC @ =gBgCntRegs
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r4, [r0]
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x12
	movs r0, #3
	ands r1, r0
	lsrs r4, r4, #0x18
	movs r0, #0x1f
	ands r4, r0
	ldr r2, _08148EF0 @ =0x00001111
	adds r0, r2, #0
	strh r0, [r7]
	lsls r1, r1, #0xe
	ldr r0, _08148EF4 @ =0x06003FC0
	adds r1, r1, r0
	adds r0, r7, #0
	ldr r2, _08148EF8 @ =0x01000010
	bl CpuSet
	ldr r1, _08148EFC @ =0x000081FE
	adds r0, r1, #0
	strh r0, [r6]
	lsls r4, r4, #0xb
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r4, r4, r2
	adds r0, r6, #0
	adds r1, r4, #0
	ldr r2, _08148F00 @ =0x01000280
	bl CpuSet
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _08148E80
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08148EE0: .4byte 0x040000D4
_08148EE4: .4byte gUnk_030038A0 + 2
_08148EE8: .4byte 0x80000001
_08148EEC: .4byte gBgCntRegs
_08148EF0: .4byte 0x00001111
_08148EF4: .4byte 0x06003FC0
_08148EF8: .4byte 0x01000010
_08148EFC: .4byte 0x000081FE
_08148F00: .4byte 0x01000280

	thumb_func_start sub_08148F04
sub_08148F04: @ 0x08148F04
	push {r4, r5, r6, r7, lr}
	ldr r1, _08148F64 @ =gUnk_083871D8
	ldr r0, _08148F68 @ =gLanguage
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _08148F6C @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r7, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r1, _08148F70 @ =gBgCntRegs
	ldrh r2, [r1, #4]
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x12
	movs r3, #3
	ands r1, r3
	lsrs r2, r2, #0x18
	movs r3, #0x1f
	ands r2, r3
	lsls r2, r2, #0xb
	ldr r3, _08148F74 @ =0x06000800
	adds r6, r2, r3
	lsls r1, r1, #0xe
	ldr r2, _08148F78 @ =0x06002000
	adds r1, r1, r2
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _08148F5E
_08148F48:
	lsls r1, r4, #6
	adds r0, r7, r1
	adds r1, r6, r1
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _08148F48
_08148F5E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08148F64: .4byte gUnk_083871D8
_08148F68: .4byte gLanguage
_08148F6C: .4byte gUnk_082D7850
_08148F70: .4byte gBgCntRegs
_08148F74: .4byte 0x06000800
_08148F78: .4byte 0x06002000

	thumb_func_start sub_08148F7C
sub_08148F7C: @ 0x08148F7C
	push {r4, r5, r6, r7, lr}
	movs r3, #3
	ldr r1, _08148FE0 @ =gUnk_083871D8
	ldr r0, _08148FE4 @ =gLanguage
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _08148FE8 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r7, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r1, _08148FEC @ =gBgCntRegs
	ldrh r2, [r1, #6]
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x12
	ands r1, r3
	lsrs r2, r2, #0x18
	movs r3, #0x1f
	ands r2, r3
	lsls r2, r2, #0xb
	ldr r3, _08148FF0 @ =0x06000800
	adds r6, r2, r3
	lsls r1, r1, #0xe
	ldr r2, _08148FF4 @ =0x06003000
	adds r1, r1, r2
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _08148FD8
_08148FC2:
	lsls r1, r4, #6
	adds r0, r7, r1
	adds r1, r6, r1
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _08148FC2
_08148FD8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08148FE0: .4byte gUnk_083871D8
_08148FE4: .4byte gLanguage
_08148FE8: .4byte gUnk_082D7850
_08148FEC: .4byte gBgCntRegs
_08148FF0: .4byte 0x06000800
_08148FF4: .4byte 0x06003000

	thumb_func_start sub_08148FF8
sub_08148FF8: @ 0x08148FF8
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_081465C4
	ldr r1, _08149078 @ =0x000013EC
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08149022
	ldr r0, _0814907C @ =0x000005CC
	adds r2, r5, r0
	movs r3, #0
_08149010:
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _0814901C
	adds r0, r2, r0
	strb r3, [r0]
_0814901C:
	ldr r1, [r1, #0x18]
	cmp r1, #0
	bne _08149010
_08149022:
	ldr r1, _08149078 @ =0x000013EC
	adds r0, r5, r1
	ldr r4, [r0]
	cmp r4, #0
	beq _08149040
_0814902C:
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	ldr r1, [r4, #0x1c]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r4, [r4, #0x18]
	cmp r4, #0
	bne _0814902C
_08149040:
	ldr r1, _08149080 @ =gUnk_083877EE
	ldr r0, [r5]
	ldrh r2, [r1]
	cmp r0, r2
	blo _0814906A
	ldrh r0, [r1, #2]
	lsrs r0, r0, #2
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
	ldr r0, _08149084 @ =0x000013F8
	adds r1, r5, r0
	ldr r0, _08149088 @ =sub_0814908C
	str r0, [r1]
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
_0814906A:
	adds r0, r5, #0
	bl sub_08146C60
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08149078: .4byte 0x000013EC
_0814907C: .4byte 0x000005CC
_08149080: .4byte gUnk_083877EE
_08149084: .4byte 0x000013F8
_08149088: .4byte sub_0814908C

	thumb_func_start sub_0814908C
sub_0814908C: @ 0x0814908C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_081465C4
	ldr r1, _0814913C @ =0x000013EC
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _081490B6
	ldr r3, _08149140 @ =0x000005CC
	adds r2, r5, r3
	movs r3, #0
_081490A4:
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _081490B0
	adds r0, r2, r0
	strb r3, [r0]
_081490B0:
	ldr r1, [r1, #0x18]
	cmp r1, #0
	bne _081490A4
_081490B6:
	ldr r1, _0814913C @ =0x000013EC
	adds r0, r5, r1
	ldr r4, [r0]
	adds r6, r5, #0
	adds r6, #0x46
	cmp r4, #0
	beq _081490D8
_081490C4:
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	ldr r1, [r4, #0x1c]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r4, [r4, #0x18]
	cmp r4, #0
	bne _081490C4
_081490D8:
	ldrh r2, [r6]
	movs r3, #0
	ldrsh r0, [r6, r3]
	cmp r0, #0
	beq _08149102
	adds r1, r5, #0
	adds r1, #0x44
	ldrh r3, [r1]
	adds r0, r2, r3
	strh r0, [r1]
	ldr r1, _08149144 @ =gBgScrollRegs
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	strh r0, [r1]
	cmp r0, #0xff
	ble _08149102
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	movs r0, #0
	strh r0, [r6]
_08149102:
	ldr r1, _08149148 @ =gUnk_083877EE
	ldr r0, [r5]
	ldrh r1, [r1, #4]
	cmp r0, r1
	blo _0814912E
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	bne _0814912E
	ldr r0, _0814914C @ =0x000013F8
	adds r1, r5, r0
	ldr r0, _08149150 @ =sub_08149154
	str r0, [r1]
	ldr r0, [r5, #8]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	str r0, [r5, #8]
_0814912E:
	adds r0, r5, #0
	bl sub_08146C60
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0814913C: .4byte 0x000013EC
_08149140: .4byte 0x000005CC
_08149144: .4byte gBgScrollRegs
_08149148: .4byte gUnk_083877EE
_0814914C: .4byte 0x000013F8
_08149150: .4byte sub_08149154

	thumb_func_start sub_08149154
sub_08149154: @ 0x08149154
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	str r0, [r5, #8]
	ldr r1, _08149240 @ =0x000013EC
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0814918C
	ldr r3, _08149244 @ =0x000005CC
	adds r2, r5, r3
	movs r3, #0
_0814917A:
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08149186
	adds r0, r2, r0
	strb r3, [r0]
_08149186:
	ldr r1, [r1, #0x18]
	cmp r1, #0
	bne _0814917A
_0814918C:
	ldr r1, _08149240 @ =0x000013EC
	adds r0, r5, r1
	ldr r4, [r0]
	cmp r4, #0
	beq _081491AA
_08149196:
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	ldr r1, [r4, #0x1c]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r4, [r4, #0x18]
	cmp r4, #0
	bne _08149196
_081491AA:
	adds r0, r5, #0
	bl sub_08146C60
	ldrh r1, [r5, #0x2a]
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r5, #0x2a]
	ldr r2, _08149248 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0814924C @ =0x0000F7FF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08149250 @ =gUnk_083871D8
	ldr r0, _08149254 @ =gLanguage
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r1, #6
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _08149258 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r2, [r1, #0x18]
	mov r8, r2
	ldrh r6, [r1, #2]
	ldr r1, _0814925C @ =gBgCntRegs
	ldrh r2, [r1]
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x12
	movs r3, #3
	ands r1, r3
	lsrs r2, r2, #0x18
	movs r3, #0x1f
	ands r2, r3
	lsls r2, r2, #0xb
	ldr r3, _08149260 @ =0x06000800
	adds r7, r2, r3
	lsls r1, r1, #0xe
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r6
	bhs _08149226
_0814920A:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	add r0, r8
	lsls r1, r4, #6
	adds r1, r7, r1
	movs r2, #0x1e
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _0814920A
_08149226:
	ldr r0, _08149264 @ =0x00000212
	bl m4aSongNumStart
	ldr r3, _08149268 @ =0x000013F8
	adds r1, r5, r3
	ldr r0, _0814926C @ =sub_08149270
	str r0, [r1]
	movs r0, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08149240: .4byte 0x000013EC
_08149244: .4byte 0x000005CC
_08149248: .4byte gDispCnt
_0814924C: .4byte 0x0000F7FF
_08149250: .4byte gUnk_083871D8
_08149254: .4byte gLanguage
_08149258: .4byte gUnk_082D7850
_0814925C: .4byte gBgCntRegs
_08149260: .4byte 0x06000800
_08149264: .4byte 0x00000212
_08149268: .4byte 0x000013F8
_0814926C: .4byte sub_08149270

	thumb_func_start sub_08149270
sub_08149270: @ 0x08149270
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r1, _08149308 @ =0x000013EC
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08149296
	ldr r0, _0814930C @ =0x000005CC
	adds r2, r5, r0
	movs r3, #0
_08149284:
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08149290
	adds r0, r2, r0
	strb r3, [r0]
_08149290:
	ldr r1, [r1, #0x18]
	cmp r1, #0
	bne _08149284
_08149296:
	ldr r1, _08149308 @ =0x000013EC
	adds r0, r5, r1
	ldr r4, [r0]
	adds r6, r5, #0
	adds r6, #0x24
	cmp r4, #0
	beq _081492B8
_081492A4:
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	ldr r1, [r4, #0x1c]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r4, [r4, #0x18]
	cmp r4, #0
	bne _081492A4
_081492B8:
	adds r0, r5, #0
	bl sub_08146C60
	adds r0, r6, #0
	bl sub_0814F274
	cmp r0, #0
	beq _081492D0
	ldrh r1, [r5, #0x2a]
	ldr r0, _08149310 @ =0x0000FFBF
	ands r0, r1
	strh r0, [r5, #0x2a]
_081492D0:
	ldrh r1, [r5, #0x2a]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08149300
	ldr r2, _08149314 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08149318 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _0814931C @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #2]
	movs r0, #0x10
	strh r0, [r1, #4]
	ldr r1, _08149320 @ =0x000013FC
	adds r0, r5, r1
	strh r2, [r0]
	ldr r0, _08149324 @ =0x000013F8
	adds r1, r5, r0
	ldr r0, _08149328 @ =sub_0814932C
	str r0, [r1]
_08149300:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08149308: .4byte 0x000013EC
_0814930C: .4byte 0x000005CC
_08149310: .4byte 0x0000FFBF
_08149314: .4byte gDispCnt
_08149318: .4byte 0x0000FEFF
_0814931C: .4byte gBldRegs
_08149320: .4byte 0x000013FC
_08149324: .4byte 0x000013F8
_08149328: .4byte sub_0814932C

	thumb_func_start sub_0814932C
sub_0814932C: @ 0x0814932C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _08149398 @ =0x000013EC
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08149352
	ldr r0, _0814939C @ =0x000005CC
	adds r2, r5, r0
	movs r3, #0
_08149340:
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _0814934C
	adds r0, r2, r0
	strb r3, [r0]
_0814934C:
	ldr r1, [r1, #0x18]
	cmp r1, #0
	bne _08149340
_08149352:
	ldr r1, _08149398 @ =0x000013EC
	adds r0, r5, r1
	ldr r4, [r0]
	cmp r4, #0
	beq _08149370
_0814935C:
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	ldr r1, [r4, #0x1c]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r4, [r4, #0x18]
	cmp r4, #0
	bne _0814935C
_08149370:
	adds r0, r5, #0
	bl sub_08146C60
	ldr r0, _081493A0 @ =0x000013FC
	adds r1, r5, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _08149390
	ldr r0, _081493A4 @ =0x000013F8
	adds r1, r5, r0
	ldr r0, _081493A8 @ =sub_08149C68
	str r0, [r1]
_08149390:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08149398: .4byte 0x000013EC
_0814939C: .4byte 0x000005CC
_081493A0: .4byte 0x000013FC
_081493A4: .4byte 0x000013F8
_081493A8: .4byte sub_08149C68

	thumb_func_start sub_081493AC
sub_081493AC: @ 0x081493AC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5, #8]
	ldr r1, _08149430 @ =0x000013EC
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _081493E0
	ldr r0, _08149434 @ =0x000005CC
	adds r2, r5, r0
	movs r3, #0
_081493CE:
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _081493DA
	adds r0, r2, r0
	strb r3, [r0]
_081493DA:
	ldr r1, [r1, #0x18]
	cmp r1, #0
	bne _081493CE
_081493E0:
	ldr r1, _08149430 @ =0x000013EC
	adds r0, r5, r1
	ldr r4, [r0]
	cmp r4, #0
	beq _081493FE
_081493EA:
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	ldr r1, [r4, #0x1c]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r4, [r4, #0x18]
	cmp r4, #0
	bne _081493EA
_081493FE:
	adds r0, r5, #0
	bl sub_08146C60
	ldr r2, _08149438 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0814943C @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08149440 @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	ldr r1, _08149444 @ =0x000013FC
	adds r0, r5, r1
	strh r2, [r0]
	ldr r0, _08149448 @ =0x000013F8
	adds r1, r5, r0
	ldr r0, _0814944C @ =sub_08149450
	str r0, [r1]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08149430: .4byte 0x000013EC
_08149434: .4byte 0x000005CC
_08149438: .4byte gDispCnt
_0814943C: .4byte 0x0000FEFF
_08149440: .4byte gBldRegs
_08149444: .4byte 0x000013FC
_08149448: .4byte 0x000013F8
_0814944C: .4byte sub_08149450

	thumb_func_start sub_08149450
sub_08149450: @ 0x08149450
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _081494CC @ =0x000013EC
	adds r0, r6, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08149476
	ldr r0, _081494D0 @ =0x000005CC
	adds r2, r6, r0
	movs r3, #0
_08149464:
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08149470
	adds r0, r2, r0
	strb r3, [r0]
_08149470:
	ldr r1, [r1, #0x18]
	cmp r1, #0
	bne _08149464
_08149476:
	ldr r1, _081494CC @ =0x000013EC
	adds r0, r6, r1
	ldr r4, [r0]
	cmp r4, #0
	beq _08149494
_08149480:
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	ldr r1, [r4, #0x1c]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r4, [r4, #0x18]
	cmp r4, #0
	bne _08149480
_08149494:
	adds r0, r6, #0
	bl sub_08146C60
	ldr r1, _081494D4 @ =0x000013FC
	adds r0, r6, r1
	ldrh r4, [r0]
	adds r4, #1
	strh r4, [r0]
	ldr r5, _081494D8 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	movs r1, #0x1e
	bl __divsi3
	strh r0, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x1d
	ble _081494C4
	ldr r0, _081494DC @ =0x000013F8
	adds r1, r6, r0
	ldr r0, _081494E0 @ =sub_08149C68
	str r0, [r1]
_081494C4:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_081494CC: .4byte 0x000013EC
_081494D0: .4byte 0x000005CC
_081494D4: .4byte 0x000013FC
_081494D8: .4byte gBldRegs
_081494DC: .4byte 0x000013F8
_081494E0: .4byte sub_08149C68

	thumb_func_start sub_081494E4
sub_081494E4: @ 0x081494E4
	ldr r2, _081494FC @ =gBldRegs
	movs r3, #0
	movs r1, #0xbf
	strh r1, [r2]
	strh r3, [r2, #2]
	strh r3, [r2, #4]
	movs r1, #0xa0
	lsls r1, r1, #5
	adds r0, r0, r1
	ldr r1, _08149500 @ =sub_08149504
	str r1, [r0]
	bx lr
	.align 2, 0
_081494FC: .4byte gBldRegs
_08149500: .4byte sub_08149504

	thumb_func_start sub_08149504
sub_08149504: @ 0x08149504
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _08149558 @ =gBldRegs
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08149550
	movs r5, #0
_0814951A:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x48
	adds r4, r6, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08149532
	bl VramFree
	movs r0, #0
	str r0, [r4]
_08149532:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x1f
	bls _0814951A
	ldr r2, _0814955C @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08149560 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0xa0
	lsls r0, r0, #5
	adds r1, r6, r0
	ldr r0, _08149564 @ =sub_08149568
	str r0, [r1]
_08149550:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08149558: .4byte gBldRegs
_0814955C: .4byte gDispCnt
_08149560: .4byte 0x0000FEFF
_08149564: .4byte sub_08149568

	thumb_func_start sub_08149568
sub_08149568: @ 0x08149568
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _081495A0 @ =gBgScrollRegs
	movs r5, #0
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r0]
	ldr r1, _081495A4 @ =gUnk_083871D8
	ldr r0, _081495A8 @ =gLanguage
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r1, #6
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0
	bl sub_081495B4
	movs r1, #0xa0
	lsls r1, r1, #5
	adds r0, r4, r1
	str r5, [r0]
	ldr r0, _081495AC @ =0x000013F8
	adds r4, r4, r0
	ldr r0, _081495B0 @ =sub_08149C68
	str r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081495A0: .4byte gBgScrollRegs
_081495A4: .4byte gUnk_083871D8
_081495A8: .4byte gLanguage
_081495AC: .4byte 0x000013F8
_081495B0: .4byte sub_08149C68

	thumb_func_start sub_081495B4
sub_081495B4: @ 0x081495B4
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	ldr r3, _08149620 @ =gUnk_082D7850
	lsrs r1, r1, #0xe
	adds r1, r1, r3
	ldr r1, [r1]
	ldr r4, [r1, #8]
	ldr r7, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r1, _08149624 @ =gBgCntRegs
	lsrs r0, r0, #0x17
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x12
	movs r3, #3
	ands r1, r3
	lsrs r0, r0, #0x18
	movs r3, #0x1f
	ands r0, r3
	lsls r0, r0, #0xb
	lsrs r2, r2, #0x13
	lsls r2, r2, #6
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r2, r2, r3
	adds r6, r0, r2
	lsls r1, r1, #0xe
	adds r1, r1, r3
	adds r0, r4, #0
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _0814961A
_081495FE:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r7, r0
	lsls r1, r4, #6
	adds r1, r6, r1
	movs r2, #0x1e
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _081495FE
_0814961A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08149620: .4byte gUnk_082D7850
_08149624: .4byte gBgCntRegs

	thumb_func_start sub_08149628
sub_08149628: @ 0x08149628
	push {lr}
	ldr r2, _08149638 @ =0x00001410
	adds r1, r0, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08149638: .4byte 0x00001410

	thumb_func_start sub_0814963C
sub_0814963C: @ 0x0814963C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08149668 @ =gUnk_083877EE
	ldr r0, [r4]
	ldrh r1, [r1, #0x12]
	cmp r0, r1
	blo _08149660
	ldr r0, _0814966C @ =0x00001419
	adds r1, r4, r0
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08149670 @ =0x00000266
	bl m4aSongNumStart
	ldr r0, _08149674 @ =0x00001410
	adds r1, r4, r0
	ldr r0, _08149678 @ =sub_08145E84
	str r0, [r1]
_08149660:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08149668: .4byte gUnk_083877EE
_0814966C: .4byte 0x00001419
_08149670: .4byte 0x00000266
_08149674: .4byte 0x00001410
_08149678: .4byte sub_08145E84

	thumb_func_start nullsub_133
nullsub_133: @ 0x0814967C
	bx lr
	.align 2, 0

	thumb_func_start sub_08149680
sub_08149680: @ 0x08149680
	push {r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r5, _081496BC @ =gBgScrollRegs
	ldr r1, _081496C0 @ =0x00001414
	adds r7, r0, r1
	adds r1, r5, #2
	mov ip, r1
	ldr r1, _081496C4 @ =0x00001415
	adds r6, r0, r1
_08149692:
	lsls r2, r4, #2
	adds r3, r2, r5
	movs r1, #0
	ldrsb r1, [r7, r1]
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r3]
	add r2, ip
	movs r1, #0
	ldrsb r1, [r6, r1]
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08149692
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081496BC: .4byte gBgScrollRegs
_081496C0: .4byte 0x00001414
_081496C4: .4byte 0x00001415

	thumb_func_start sub_081496C8
sub_081496C8: @ 0x081496C8
	push {r4, r5, r6, r7, lr}
	movs r3, #0
	ldr r4, _08149704 @ =gBgScrollRegs
	ldr r1, _08149708 @ =0x00001414
	adds r6, r0, r1
	adds r2, r4, #2
	mov ip, r2
	ldr r7, _0814970C @ =0x00001415
	adds r5, r0, r7
_081496DA:
	lsls r1, r3, #2
	adds r2, r1, r4
	movs r0, #0
	ldrsb r0, [r6, r0]
	ldrh r7, [r2]
	adds r0, r0, r7
	strh r0, [r2]
	add r1, ip
	movs r0, #0
	ldrsb r0, [r5, r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _081496DA
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08149704: .4byte gBgScrollRegs
_08149708: .4byte 0x00001414
_0814970C: .4byte 0x00001415

	thumb_func_start sub_08149710
sub_08149710: @ 0x08149710
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	ldr r6, _08149750 @ =gUnk_083877EE
	lsls r4, r2, #1
	adds r5, r4, r2
	adds r0, r5, #3
	lsls r0, r0, #1
	adds r0, r0, r6
	ldr r1, [r3]
	ldrh r0, [r0]
	cmp r1, r0
	blo _0814974A
	adds r1, r3, #0
	adds r1, #0x36
	adds r1, r1, r4
	adds r0, r5, #4
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	lsrs r0, r0, #2
	strh r0, [r1]
	lsls r1, r2, #2
	adds r0, r3, #0
	adds r0, #0x3c
	adds r0, r0, r1
	ldr r1, _08149754 @ =sub_08146308
	str r1, [r0]
_0814974A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08149750: .4byte gUnk_083877EE
_08149754: .4byte sub_08146308

	thumb_func_start sub_08149758
sub_08149758: @ 0x08149758
	push {lr}
	adds r3, r0, #0
	ldr r1, _08149794 @ =0x0000140C
	adds r0, r3, r1
	ldrh r1, [r0]
	ldr r0, [r3]
	adds r0, r0, r1
	ldr r1, _08149798 @ =gUnk_083877EE
	ldrh r1, [r1, #0x20]
	cmp r0, r1
	blo _08149790
	ldr r1, _0814979C @ =gBldRegs
	movs r2, #0
	movs r0, #0x82
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	ldr r0, [r3, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r3, #8]
	ldr r1, _081497A0 @ =0x0000140E
	adds r0, r3, r1
	strh r2, [r0]
	ldr r0, _081497A4 @ =0x00001408
	adds r1, r3, r0
	ldr r0, _081497A8 @ =sub_0814654C
	str r0, [r1]
_08149790:
	pop {r0}
	bx r0
	.align 2, 0
_08149794: .4byte 0x0000140C
_08149798: .4byte gUnk_083877EE
_0814979C: .4byte gBldRegs
_081497A0: .4byte 0x0000140E
_081497A4: .4byte 0x00001408
_081497A8: .4byte sub_0814654C

	thumb_func_start nullsub_134
nullsub_134: @ 0x081497AC
	bx lr
	.align 2, 0

	thumb_func_start sub_081497B0
sub_081497B0: @ 0x081497B0
	movs r0, #0
	bx lr

	thumb_func_start sub_081497B4
sub_081497B4: @ 0x081497B4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r1, [r5, #0x20]
	ldr r2, _081497F4 @ =0x000013EC
	adds r0, r1, r2
	ldr r3, [r0]
	cmp r3, #0
	beq _081497FE
	adds r4, r1, #0
	adds r4, #0x48
_081497CA:
	cmp r3, r5
	beq _081497F8
	movs r0, #3
	ldrsb r0, [r3, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r4, r1
	movs r2, #3
	ldrsb r2, [r5, r2]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r4, r0
	ldr r1, [r1]
	ldr r0, [r0]
	cmp r1, r0
	bne _081497F8
	movs r0, #0
	b _0814980E
	.align 2, 0
_081497F4: .4byte 0x000013EC
_081497F8:
	ldr r3, [r3, #0x18]
	cmp r3, #0
	bne _081497CA
_081497FE:
	ldr r0, [r6]
	cmp r0, #0
	beq _0814980C
	bl VramFree
	movs r0, #0
	str r0, [r6]
_0814980C:
	movs r0, #1
_0814980E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08149814
sub_08149814: @ 0x08149814
	push {r4, r5, lr}
	ldr r4, [r0, #0x20]
	movs r3, #0
	movs r5, #3
	ldrsb r5, [r0, r5]
_0814981E:
	cmp r3, r5
	beq _0814983E
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, #0x48
	adds r2, r4, r0
	ldr r0, [r2]
	cmp r0, #0
	beq _0814983E
	ldrb r0, [r2, #0x1f]
	ldrb r2, [r1, #0x1f]
	cmp r0, r2
	bne _0814983E
	movs r0, #0
	b _0814985C
_0814983E:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x1f
	bls _0814981E
	adds r0, r4, #0
	adds r0, #0x12
	ldrb r1, [r1, #0x1f]
	adds r0, r0, r1
	movs r1, #0xff
	strb r1, [r0]
	ldrb r0, [r4, #0x11]
	subs r0, #1
	strb r0, [r4, #0x11]
	movs r0, #1
_0814985C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08149864
sub_08149864: @ 0x08149864
	adds r0, #0x24
	ldrb r2, [r1, #0xf]
	lsrs r2, r2, #1
	strb r2, [r0, #1]
	ldrh r1, [r1, #0x10]
	strh r1, [r0, #2]
	bx lr
	.align 2, 0

	thumb_func_start sub_08149874
sub_08149874: @ 0x08149874
	ldr r1, _0814987C @ =sub_08146E3C
	str r1, [r0, #0x1c]
	bx lr
	.align 2, 0
_0814987C: .4byte sub_08146E3C

	thumb_func_start sub_08149880
sub_08149880: @ 0x08149880
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	ldrh r1, [r4, #0xe]
	ldrh r2, [r4, #0xa]
	adds r1, r1, r2
	strh r1, [r4, #0xa]
	bl sub_08155128
	cmp r0, #0
	bne _081498AA
	strh r0, [r4, #0xe]
	ldr r0, _081498B0 @ =sub_08146EE8
	str r0, [r4, #0x1c]
_081498AA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081498B0: .4byte sub_08146EE8

	thumb_func_start sub_081498B4
sub_081498B4: @ 0x081498B4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r3, r5, #0
	adds r3, #0x24
	ldr r2, [r5, #0x20]
	ldr r1, _08149904 @ =gUnk_083877E0
	ldrb r4, [r3, #1]
	lsls r0, r4, #1
	adds r0, r0, r1
	ldr r1, [r2]
	ldrh r0, [r0]
	cmp r1, r0
	blo _081498FC
	adds r0, r4, #1
	movs r1, #0
	strb r0, [r3, #1]
	strb r1, [r3, #8]
	movs r0, #0x15
	strb r0, [r3, #0xa]
	movs r0, #3
	ldrsb r0, [r5, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r5, #0x20]
	adds r0, r0, r1
	ldr r2, _08149908 @ =gUnk_08387208
	ldrh r1, [r2, #0x14]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0x16]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, _0814990C @ =sub_08147078
	str r0, [r5, #0x1c]
_081498FC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08149904: .4byte gUnk_083877E0
_08149908: .4byte gUnk_08387208
_0814990C: .4byte sub_08147078

	thumb_func_start sub_08149910
sub_08149910: @ 0x08149910
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x24
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r1, [r5, #0x20]
	adds r4, r1, r0
	ldrb r0, [r2, #0xa]
	adds r0, #1
	strb r0, [r2, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bne _0814993C
	ldr r0, _08149960 @ =0x00000259
	bl m4aSongNumStart
_0814993C:
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814995A
	ldr r1, _08149964 @ =gUnk_08387208
	ldrh r0, [r1]
	strh r0, [r4, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_08155128
	ldr r0, _08149968 @ =sub_081470EC
	str r0, [r5, #0x1c]
_0814995A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08149960: .4byte 0x00000259
_08149964: .4byte gUnk_08387208
_08149968: .4byte sub_081470EC

	thumb_func_start sub_0814996C
sub_0814996C: @ 0x0814996C
	adds r2, r0, #0
	adds r2, #0x24
	ldr r1, _0814997C @ =0x0000025B
	strh r1, [r0, #0x24]
	movs r0, #0xa
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	bx lr
	.align 2, 0
_0814997C: .4byte 0x0000025B

	thumb_func_start sub_08149980
sub_08149980: @ 0x08149980
	adds r2, r0, #0
	adds r2, #0x24
	ldr r1, _08149990 @ =0x0000025B
	strh r1, [r0, #0x24]
	movs r0, #0xa
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	bx lr
	.align 2, 0
_08149990: .4byte 0x0000025B

	thumb_func_start sub_08149994
sub_08149994: @ 0x08149994
	adds r2, r0, #0
	adds r2, #0x24
	movs r3, #0
	ldr r1, _081499A8 @ =0x00000261
	strh r1, [r0, #0x24]
	movs r0, #0xa
	strh r0, [r2, #2]
	strh r3, [r2, #4]
	bx lr
	.align 2, 0
_081499A8: .4byte 0x00000261

	thumb_func_start sub_081499AC
sub_081499AC: @ 0x081499AC
	adds r2, r0, #0
	adds r2, #0x24
	ldr r1, _081499BC @ =0x00000262
	strh r1, [r0, #0x24]
	movs r0, #0x14
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	bx lr
	.align 2, 0
_081499BC: .4byte 0x00000262

	thumb_func_start sub_081499C0
sub_081499C0: @ 0x081499C0
	adds r2, r0, #0
	adds r2, #0x24
	ldr r1, _081499D0 @ =0x0000025B
	strh r1, [r0, #0x24]
	movs r0, #0xc
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	bx lr
	.align 2, 0
_081499D0: .4byte 0x0000025B

	thumb_func_start sub_081499D4
sub_081499D4: @ 0x081499D4
	adds r2, r0, #0
	adds r2, #0x24
	ldr r1, _081499E4 @ =0x0000025B
	strh r1, [r0, #0x24]
	movs r0, #0xc
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	bx lr
	.align 2, 0
_081499E4: .4byte 0x0000025B

	thumb_func_start sub_081499E8
sub_081499E8: @ 0x081499E8
	adds r2, r0, #0
	adds r2, #0x24
	ldr r1, _081499F8 @ =0x0000026B
	strh r1, [r0, #0x24]
	movs r0, #0x3c
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	bx lr
	.align 2, 0
_081499F8: .4byte 0x0000026B

	thumb_func_start sub_081499FC
sub_081499FC: @ 0x081499FC
	adds r2, r0, #0
	adds r2, #0x24
	ldr r1, _08149A0C @ =0x0000025E
	strh r1, [r0, #0x24]
	movs r0, #0xf
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	bx lr
	.align 2, 0
_08149A0C: .4byte 0x0000025E

	thumb_func_start sub_08149A10
sub_08149A10: @ 0x08149A10
	adds r2, r0, #0
	adds r2, #0x24
	ldr r1, _08149A24 @ =0x0000025E
	strh r1, [r0, #0x24]
	movs r0, #0x10
	strh r0, [r2, #2]
	movs r0, #0xb
	strh r0, [r2, #4]
	bx lr
	.align 2, 0
_08149A24: .4byte 0x0000025E

	thumb_func_start sub_08149A28
sub_08149A28: @ 0x08149A28
	adds r2, r0, #0
	adds r2, #0x24
	ldr r1, _08149A38 @ =0x0000025E
	strh r1, [r0, #0x24]
	movs r0, #0x14
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	bx lr
	.align 2, 0
_08149A38: .4byte 0x0000025E

	thumb_func_start sub_08149A3C
sub_08149A3C: @ 0x08149A3C
	adds r2, r0, #0
	adds r2, #0x24
	ldr r1, _08149A4C @ =0x0000025E
	strh r1, [r0, #0x24]
	movs r0, #6
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	bx lr
	.align 2, 0
_08149A4C: .4byte 0x0000025E

	thumb_func_start sub_08149A50
sub_08149A50: @ 0x08149A50
	ldrh r1, [r1, #0xa]
	lsrs r1, r1, #2
	rsbs r1, r1, #0
	strh r1, [r0, #0x24]
	bx lr
	.align 2, 0

	thumb_func_start sub_08149A5C
sub_08149A5C: @ 0x08149A5C
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x24
	ldrh r2, [r1, #0xa]
	lsrs r2, r2, #2
	rsbs r2, r2, #0
	strh r2, [r0, #0x24]
	ldrb r1, [r1, #0xf]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	bl Sqrt
	lsls r0, r0, #3
	rsbs r0, r0, #0
	strh r0, [r4, #2]
	movs r1, #2
	ldrsh r0, [r4, r1]
	rsbs r0, r0, #0
	movs r1, #9
	bl __divsi3
	subs r0, #2
	strb r0, [r4, #5]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08149A94
sub_08149A94: @ 0x08149A94
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r5, #0x24
	ldrh r1, [r4, #0xa]
	lsrs r1, r1, #2
	rsbs r1, r1, #0
	strh r1, [r0, #0x24]
	ldrb r1, [r4, #0xf]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	bl Sqrt
	lsls r0, r0, #3
	rsbs r0, r0, #0
	strh r0, [r5, #2]
	ldrh r0, [r4, #0x12]
	strh r0, [r5, #8]
	ldrb r0, [r4, #0x14]
	strb r0, [r5, #0xb]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08149AC4
sub_08149AC4: @ 0x08149AC4
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x24
	ldrh r2, [r1, #0xa]
	lsrs r2, r2, #2
	rsbs r2, r2, #0
	strh r2, [r0, #0x24]
	ldrb r1, [r1, #0xf]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	bl Sqrt
	lsls r0, r0, #3
	rsbs r0, r0, #0
	strh r0, [r4, #2]
	movs r1, #2
	ldrsh r0, [r4, r1]
	rsbs r0, r0, #0
	movs r1, #9
	bl __divsi3
	subs r0, #2
	strb r0, [r4, #5]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08149AFC
sub_08149AFC: @ 0x08149AFC
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r5, #0x24
	ldrh r1, [r4, #0xa]
	lsrs r1, r1, #2
	rsbs r1, r1, #0
	strh r1, [r0, #0x24]
	ldrb r1, [r4, #0xf]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	bl Sqrt
	lsls r0, r0, #3
	rsbs r0, r0, #0
	strh r0, [r5, #2]
	ldrh r0, [r4, #0x12]
	strh r0, [r5, #8]
	ldrb r0, [r4, #0x14]
	strb r0, [r5, #0xb]
	ldrb r0, [r4, #0x15]
	strb r0, [r5, #0xc]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08149B30
sub_08149B30: @ 0x08149B30
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x24
	ldrh r0, [r1, #6]
	adds r0, #1
	strh r0, [r1, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08149B54
	movs r0, #0
	strh r0, [r1, #6]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2, #0x10]
	ldr r0, _08149B58 @ =sub_08148200
	str r0, [r2, #0x1c]
_08149B54:
	pop {r0}
	bx r0
	.align 2, 0
_08149B58: .4byte sub_08148200

	thumb_func_start sub_08149B5C
sub_08149B5C: @ 0x08149B5C
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r5, #0x24
	ldrh r1, [r4, #0xa]
	lsrs r1, r1, #2
	rsbs r1, r1, #0
	strh r1, [r0, #0x24]
	ldrb r1, [r4, #0xf]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	bl Sqrt
	lsls r0, r0, #3
	rsbs r0, r0, #0
	strh r0, [r5, #2]
	ldrh r0, [r4, #0x12]
	strh r0, [r5, #8]
	ldrb r0, [r4, #0x14]
	strb r0, [r5, #0xb]
	ldrb r0, [r4, #0x15]
	strb r0, [r5, #0xc]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08149B90
sub_08149B90: @ 0x08149B90
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x48
	ldr r1, [r5, #0x20]
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08149BC8
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #0x10]
	ldr r1, _08149BD0 @ =gUnk_08387284
	ldrh r0, [r1, #0x10]
	strh r0, [r4, #0xc]
	ldrh r0, [r1, #0x12]
	strb r0, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_08155128
	ldr r0, _08149BD4 @ =sub_08149BD8
	str r0, [r5, #0x1c]
_08149BC8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08149BD0: .4byte gUnk_08387284
_08149BD4: .4byte sub_08149BD8

	thumb_func_start sub_08149BD8
sub_08149BD8: @ 0x08149BD8
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x10]
	ldrh r1, [r4, #0xc]
	adds r0, r0, r1
	strh r0, [r4, #0xc]
	lsls r0, r0, #0x10
	ldr r1, _08149C24 @ =0x1DFF0000
	cmp r0, r1
	ble _08149C1E
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x48
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	movs r1, #0xf0
	lsls r1, r1, #5
	strh r1, [r4, #0xc]
	movs r1, #0
	strh r1, [r4, #0x10]
	ldr r2, _08149C28 @ =gUnk_08387284
	ldrh r1, [r2, #0x14]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0x16]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, _08149C2C @ =0x0000025F
	bl m4aSongNumStart
	ldr r0, _08149C30 @ =sub_08148508
	str r0, [r4, #0x1c]
_08149C1E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08149C24: .4byte 0x1DFF0000
_08149C28: .4byte gUnk_08387284
_08149C2C: .4byte 0x0000025F
_08149C30: .4byte sub_08148508

	thumb_func_start sub_08149C34
sub_08149C34: @ 0x08149C34
	push {lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x24
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _08149C46
	cmp r0, #9
	bne _08149C5C
_08149C46:
	movs r0, #0x98
	lsls r0, r0, #2
	strh r0, [r2, #0x24]
	movs r0, #0xc8
	strh r0, [r3, #2]
	movs r0, #0xc3
	strh r0, [r3, #4]
	ldr r0, _08149C58 @ =sub_08148C1C
	b _08149C5E
	.align 2, 0
_08149C58: .4byte sub_08148C1C
_08149C5C:
	ldr r0, _08149C64 @ =sub_08146CE4
_08149C5E:
	str r0, [r2, #0x1c]
	pop {r0}
	bx r0
	.align 2, 0
_08149C64: .4byte sub_08146CE4

	thumb_func_start sub_08149C68
sub_08149C68: @ 0x08149C68
	push {lr}
	ldr r0, _08149C7C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl CreateTitleScreen
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_08149C7C: .4byte gCurTask

	thumb_func_start sub_08149C80
sub_08149C80: @ 0x08149C80
	push {r4, r5, r6, r7, lr}
	ldr r1, _08149CD0 @ =gUnk_083871D8
	ldr r0, _08149CD4 @ =gLanguage
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r1, #4
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _08149CD8 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r6, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r7, _08149CDC @ =0x0600E000
	ldr r1, _08149CE0 @ =0x06004000
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _08149CC8
_08149CAC:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r6, r0
	lsls r1, r4, #6
	adds r1, r7, r1
	movs r2, #0x1e
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _08149CAC
_08149CC8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08149CD0: .4byte gUnk_083871D8
_08149CD4: .4byte gLanguage
_08149CD8: .4byte gUnk_082D7850
_08149CDC: .4byte 0x0600E000
_08149CE0: .4byte 0x06004000
