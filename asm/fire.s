	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateFire
CreateFire: @ 0x08119C18
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _08119C4C @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _08119C50 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08119C54
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08119C5C
	.align 2, 0
_08119C4C: .4byte ObjectMain
_08119C50: .4byte ObjectDestroy
_08119C54:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08119C5C:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	movs r1, #0xc0
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x5c]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #0x5c]
	subs r1, #0x26
	movs r2, #0xc
	rsbs r2, r2, #0
	movs r0, #3
	rsbs r0, r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803E2B0
	movs r1, #7
	rsbs r1, r1, #0
	movs r2, #0xe
	rsbs r2, r2, #0
	movs r0, #2
	rsbs r0, r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #7
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	ldr r2, _08119CCC @ =gUnk_08351648
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08119CCC: .4byte gUnk_08351648

	thumb_func_start sub_08119CD0
sub_08119CD0: @ 0x08119CD0
	movs r1, #0
	strh r1, [r0, #4]
	ldr r1, _08119CDC @ =sub_08119CE0
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_08119CDC: .4byte sub_08119CE0

	thumb_func_start sub_08119CE0
sub_08119CE0: @ 0x08119CE0
	ldrh r1, [r0, #4]
	adds r1, #1
	strh r1, [r0, #4]
	bx lr
