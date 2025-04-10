	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080AD5D4
sub_080AD5D4: @ 0x080AD5D4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AD5F0 @ =sub_080ACEC0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AD5F0: .4byte sub_080ACEC0

	thumb_func_start sub_080AD5F4
sub_080AD5F4: @ 0x080AD5F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AD618 @ =sub_080AD18C
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AD618: .4byte sub_080AD18C

	thumb_func_start sub_080AD61C
sub_080AD61C: @ 0x080AD61C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AD63C @ =sub_080AD3D0
	movs r1, #2
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AD644
	adds r1, r4, #0
	adds r1, #0x50
	ldr r2, _080AD640 @ =0xFFFFFEE0
	b _080AD64C
	.align 2, 0
_080AD63C: .4byte sub_080AD3D0
_080AD640: .4byte 0xFFFFFEE0
_080AD644:
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0x90
	lsls r2, r2, #1
_080AD64C:
	adds r0, r2, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AD66C
	ldr r0, _080AD668 @ =sub_080AD3D0
	b _080AD66E
	.align 2, 0
_080AD668: .4byte sub_080AD3D0
_080AD66C:
	ldr r0, _080AD678 @ =sub_080AD1D8
_080AD66E:
	str r0, [r4, #0x78]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AD678: .4byte sub_080AD1D8
