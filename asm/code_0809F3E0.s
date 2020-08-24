	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0809F964
sub_0809F964: @ 0x0809F964
	ldr r2, [r0, #0x70]
	ldr r1, [r2, #0x40]
	str r1, [r0, #0x40]
	ldr r1, [r2, #0x44]
	str r1, [r0, #0x44]
	bx lr

	thumb_func_start nullsub_123
nullsub_123: @ 0x0809F970
	bx lr
	.align 2, 0

	thumb_func_start sub_0809F974
sub_0809F974: @ 0x0809F974
	ldr r1, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #2
	orrs r1, r2
	movs r2, #0x40
	orrs r1, r2
	subs r2, #0x61
	ands r1, r2
	str r1, [r0, #8]
	bx lr

	thumb_func_start sub_0809F988
sub_0809F988: @ 0x0809F988
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	adds r1, r0, #1
	strh r1, [r4, #4]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x28
	ble _0809F9B6
	adds r0, r1, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1e
	ble _0809F9B6
	adds r0, r4, #0
	bl sub_0809DA30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_0809F9B6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start nullsub_124
nullsub_124: @ 0x0809F9BC
	bx lr
	.align 2, 0
