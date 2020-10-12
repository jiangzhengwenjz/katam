	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	@ Maybe snooter.s and soarar.s are one file. 

	thumb_func_start CreateSnooter
CreateSnooter: @ 0x080ACAD0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080ACB04 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080ACB08 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080ACB0C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080ACB14
	.align 2, 0
_080ACB04: .4byte ObjectMain
_080ACB08: .4byte ObjectDestroy
_080ACB0C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080ACB14:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	movs r2, #5
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	bl sub_0803D368
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080ACB58
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080ACB58:
	adds r0, r4, #0
	bl ObjectInitSprite
	adds r0, r4, #0
	bl sub_080ACB74
	adds r0, r4, #0
	bl sub_080AC8CC
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080ACB74
sub_080ACB74: @ 0x080ACB74
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080ACB9C @ =sub_080ACBEC
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	movs r0, #2
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, _080ACBA0 @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ACB9C: .4byte sub_080ACBEC
_080ACBA0: .4byte 0xFDFFFFFF

	thumb_func_start sub_080ACBA4
sub_080ACBA4: @ 0x080ACBA4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080ACBC8 @ =sub_080AC45C
	movs r1, #8
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080ACBCC
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080ACBD4
	.align 2, 0
_080ACBC8: .4byte sub_080AC45C
_080ACBCC:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080ACBD4:
	str r0, [r4, #8]
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #0xe
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ACBEC
sub_080ACBEC: @ 0x080ACBEC
	push {r4, lr}
	adds r3, r0, #0
	ldr r1, [r3, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r3, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080ACC30
	movs r4, #1
	eors r1, r4
	str r1, [r3, #8]
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080ACC30
	strh r4, [r3, #4]
	ldr r2, _080ACC38 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080ACC3C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080ACC40 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _080ACC30
	adds r0, r3, #0
	bl sub_080ACC44
_080ACC30:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ACC38: .4byte gRngVal
_080ACC3C: .4byte 0x00196225
_080ACC40: .4byte 0x3C6EF35F

	thumb_func_start sub_080ACC44
sub_080ACC44: @ 0x080ACC44
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080ACC5C @ =sub_080AC380
	movs r1, #1
	bl ObjectSetFunc
	movs r0, #0xb4
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ACC5C: .4byte sub_080AC380

	thumb_func_start sub_080ACC60
sub_080ACC60: @ 0x080ACC60
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	ldrh r1, [r3, #4]
	movs r2, #4
	ldrsh r0, [r3, r2]
	cmp r0, #0x28
	bne _080ACC88
	ldr r2, _080ACC84 @ =sub_080ACC90
	adds r0, r3, #0
	movs r1, #6
	bl ObjectSetFunc
	b _080ACC8C
	.align 2, 0
_080ACC84: .4byte sub_080ACC90
_080ACC88:
	adds r0, r1, #1
	strh r0, [r3, #4]
_080ACC8C:
	pop {r0}
	bx r0

	thumb_func_start sub_080ACC90
sub_080ACC90: @ 0x080ACC90
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r5, #2
	ands r0, r5
	cmp r0, #0
	beq _080ACCC4
	ldr r2, _080ACCBC @ =sub_080ACBEC
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	strh r5, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, _080ACCC0 @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r4, #8]
	b _080ACCCA
	.align 2, 0
_080ACCBC: .4byte sub_080ACBEC
_080ACCC0: .4byte 0xFDFFFFFF
_080ACCC4:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_080ACCCA:
	pop {r4, r5}
	pop {r0}
	bx r0
