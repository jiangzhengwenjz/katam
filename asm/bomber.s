	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateBomber
CreateBomber: @ 0x080C46B4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080C46E8 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080C46EC @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C46F0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C46F8
	.align 2, 0
_080C46E8: .4byte ObjectMain
_080C46EC: .4byte ObjectDestroy
_080C46F0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C46F8:
	adds r5, r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r5, #0xc]
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C4722
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	b _080C472A
_080C4722:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C472A:
	str r0, [r5, #8]
	movs r1, #5
	rsbs r1, r1, #0
	movs r4, #6
	rsbs r4, r4, #0
	movs r0, #5
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r2, #7
	rsbs r2, r2, #0
	movs r0, #7
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r5, #0
	bl ObjectInitSprite
	ldr r2, _080C4788 @ =gUnk_08351648
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	adds r1, r5, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	str r0, [r5, #0x7c]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080C4788: .4byte gUnk_08351648

	thumb_func_start sub_080C478C
sub_080C478C: @ 0x080C478C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080C47B0
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080C47B0
	adds r0, r4, #0
	bl sub_080C48DC
	b _080C47E0
_080C47B0:
	ldr r2, _080C47E8 @ =sub_080C485C
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0x4d
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C47D0
	rsbs r0, r3, #0
	strh r0, [r2]
_080C47D0:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080C47E0
	movs r0, #0
	strh r0, [r2]
_080C47E0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C47E8: .4byte sub_080C485C

	thumb_func_start sub_080C47EC
sub_080C47EC: @ 0x080C47EC
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C4840
	movs r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #3
	bne _080C482A
	adds r3, r2, #0
	adds r3, #0x50
	movs r4, #0x80
	lsls r4, r4, #1
	strh r4, [r3]
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C482A
	rsbs r0, r4, #0
	strh r0, [r3]
_080C482A:
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _080C4840
	adds r0, r2, #0
	bl sub_080C48DC
	b _080C4854
_080C4840:
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080C4854
	adds r0, r2, #0
	bl sub_080C48DC
_080C4854:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C485C
sub_080C485C: @ 0x080C485C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, [r4, #8]
	movs r6, #4
	orrs r2, r6
	str r2, [r4, #8]
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080C48B2
	adds r5, r4, #0
	adds r5, #0x62
	ldrb r1, [r5]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080C4890
	eors r2, r3
	str r2, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080C4890:
	adds r0, r4, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080C48A2
	adds r0, r4, #0
	bl sub_080C48B8
_080C48A2:
	ldrb r1, [r5]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080C48B2
	adds r0, r4, #0
	bl sub_080C48DC
_080C48B2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080C48B8
sub_080C48B8: @ 0x080C48B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C48D8 @ =sub_080C47EC
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r4, #0x52
	strh r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C48D8: .4byte sub_080C47EC

	thumb_func_start sub_080C48DC
sub_080C48DC: @ 0x080C48DC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C48FC @ =sub_080C4900
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r4, #0x52
	strh r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C48FC: .4byte sub_080C4900

	thumb_func_start sub_080C4900
sub_080C4900: @ 0x080C4900
	push {lr}
	adds r2, r0, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080C4922
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _080C4922
	adds r0, r2, #0
	bl sub_080C4928
_080C4922:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C4928
sub_080C4928: @ 0x080C4928
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C4964 @ =sub_080C4968
	movs r1, #3
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r4, #8]
	adds r4, #0x56
	ldrb r0, [r4]
	bl sub_08033540
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C4964: .4byte sub_080C4968

	thumb_func_start sub_080C4968
sub_080C4968: @ 0x080C4968
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C49AC
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080C49AC
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl sub_080335B4
	ldr r1, _080C49B4 @ =gUnk_083555A8
	adds r0, r4, #0
	bl sub_080860A8
	adds r0, r4, #0
	bl sub_08074420
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_080C49AC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C49B4: .4byte gUnk_083555A8
