	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08E2C7EC
sub_08E2C7EC: @ 0x08E2C7EC
	svc #0xc
	bx lr

	thumb_func_start sub_08E2C7F0
sub_08E2C7F0: @ 0x08E2C7F0
	svc #0xb
	bx lr

	thumb_func_start sub_08E2C7F4
sub_08E2C7F4: @ 0x08E2C7F4
	svc #6
	bx lr

	thumb_func_start sub_08E2C7F8
sub_08E2C7F8: @ 0x08E2C7F8
	svc #6
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_08E2C800
sub_08E2C800: @ 0x08E2C800
	svc #0x12
	bx lr

	thumb_func_start sub_08E2C804
sub_08E2C804: @ 0x08E2C804
	movs r2, #0
	svc #5
	bx lr
	.align 2, 0
