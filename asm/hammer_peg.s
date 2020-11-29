	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateHammerPeg
CreateHammerPeg: @ 0x08025270
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080252A4 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080252A8 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080252AC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _080252B4
	.align 2, 0
_080252A4: .4byte ObjectMain
_080252A8: .4byte ObjectDestroy
_080252AC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_080252B4:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	adds r0, r5, #0
	adds r0, #0x85
	movs r4, #0
	strb r4, [r0]
	ldr r0, [r5, #8]
	ldr r1, _08025318 @ =0x00018B00
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r5, #0x68]
	movs r2, #8
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r5, #0x68]
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #8
	bl sub_0803E308
	adds r0, r5, #0
	adds r0, #0x83
	strb r4, [r0]
	adds r0, r5, #0
	bl ObjectInitSprite
	ldr r2, _0802531C @ =gUnk_08351648
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
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08025318: .4byte 0x00018B00
_0802531C: .4byte gUnk_08351648

	thumb_func_start sub_08025320
sub_08025320: @ 0x08025320
	ldr r1, _08025328 @ =sub_0802532C
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_08025328: .4byte sub_0802532C

	thumb_func_start sub_0802532C
sub_0802532C: @ 0x0802532C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x56
	ldrb r0, [r0]
	ldr r1, [r4, #0x40]
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	ldr r2, [r4, #0x44]
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf6
	beq _0802535E
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	subs r1, #2
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08025364 @ =sub_08025368
	str r0, [r4, #0x78]
_0802535E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08025364: .4byte sub_08025368

	thumb_func_start sub_08025368
sub_08025368: @ 0x08025368
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x85
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _08025388
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r3, #8]
_08025388:
	pop {r0}
	bx r0
