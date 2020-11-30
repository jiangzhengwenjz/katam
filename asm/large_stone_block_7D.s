	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateLargeStarStoneBlock7D
CreateLargeStarStoneBlock7D: @ 0x0812004C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _08120080 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _08120084 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xe4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08120088
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08120090
	.align 2, 0
_08120080: .4byte ObjectMain
_08120084: .4byte ObjectDestroy
_08120088:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08120090:
	adds r7, r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r7, #8]
	ldr r1, _081200E4 @ =0x82C08000
	orrs r0, r1
	str r0, [r7, #8]
	ldr r1, [r7, #0x68]
	movs r2, #8
	rsbs r2, r2, #0
	ands r1, r2
	ldr r0, [r7, #0x5c]
	ands r0, r2
	movs r2, #4
	orrs r0, r2
	str r0, [r7, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r1, r0
	str r1, [r7, #0x68]
	ldr r0, [r7, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0xc]
	adds r0, r7, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #0x22]
	ands r1, r0
	cmp r1, #0
	beq _081200E8
	adds r1, r7, #0
	adds r1, #0xe1
	movs r0, #5
	strb r0, [r1]
	subs r1, #0x5e
	movs r0, #1
	strb r0, [r1]
	b _081200F2
	.align 2, 0
_081200E4: .4byte 0x82C08000
_081200E8:
	adds r0, r7, #0
	adds r0, #0xe1
	strb r2, [r0]
	subs r0, #0x5e
	strb r1, [r0]
_081200F2:
	movs r5, #0xf
	rsbs r5, r5, #0
	movs r6, #0x10
	rsbs r6, r6, #0
	movs r4, #0x10
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0xf
	bl sub_0803E308
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0xf
	bl sub_0803E2B0
	adds r0, r7, #0
	bl ObjectInitSprite
	ldr r2, _08120144 @ =gUnk_08351648
	adds r0, r7, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r7, #0
	bl _call_via_r1
	adds r0, r7, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08120144: .4byte gUnk_08351648

	thumb_func_start sub_08120148
sub_08120148: @ 0x08120148
	adds r2, r0, #0
	movs r1, #0
	movs r0, #0
	strh r0, [r2, #4]
	adds r0, r2, #0
	adds r0, #0xe2
	strb r1, [r0]
	adds r1, r2, #0
	adds r1, #0xe3
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08120164 @ =sub_08120168
	str r0, [r2, #0x78]
	bx lr
	.align 2, 0
_08120164: .4byte sub_08120168

	thumb_func_start sub_08120168
sub_08120168: @ 0x08120168
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0811EC80
	ldr r2, [r4, #0x44]
	asrs r2, r2, #8
	ldr r3, _081201A4 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r3
	adds r0, #0xbe
	ldrh r0, [r0]
	subs r0, #0x10
	cmp r2, r0
	blt _08120198
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_08120198:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081201A4: .4byte gCurLevelInfo
