	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateScrollLock
CreateScrollLock: @ 0x0811DC40
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _0811DC74 @ =ObjectMain
	ldr r2, _0811DC78 @ =0x00000FF6
	ldr r1, _0811DC7C @ =sub_0811D9AC
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811DC80
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0811DC88
	.align 2, 0
_0811DC74: .4byte ObjectMain
_0811DC78: .4byte 0x00000FF6
_0811DC7C: .4byte sub_0811D9AC
_0811DC80:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0811DC88:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	ldr r1, _0811DCD0 @ =gUnk_02018F40
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x5c]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r2, _0811DCD4 @ =gUnk_08351648
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
_0811DCD0: .4byte gUnk_02018F40
_0811DCD4: .4byte gUnk_08351648
