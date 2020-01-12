	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08E648E0
sub_08E648E0: @ 0x08E648E0
	svc #0xc
	bx lr

	thumb_func_start sub_08E648E4
sub_08E648E4: @ 0x08E648E4
	svc #0xb
	bx lr

	thumb_func_start sub_08E648E8
sub_08E648E8: @ 0x08E648E8
	svc #6
	bx lr

	thumb_func_start sub_08E648EC
sub_08E648EC: @ 0x08E648EC
	svc #6
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_08E648F4
sub_08E648F4: @ 0x08E648F4
	svc #0x12
	bx lr

	thumb_func_start sub_08E648F8
sub_08E648F8: @ 0x08E648F8
	movs r2, #0
	svc #5
	bx lr
	.align 2, 0
