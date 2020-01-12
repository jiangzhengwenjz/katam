	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08E91978
sub_08E91978: @ 0x08E91978
	svc #0xc
	bx lr

	thumb_func_start sub_08E9197C
sub_08E9197C: @ 0x08E9197C
	svc #0xb
	bx lr

	thumb_func_start sub_08E91980
sub_08E91980: @ 0x08E91980
	svc #6
	bx lr

	thumb_func_start sub_08E91984
sub_08E91984: @ 0x08E91984
	svc #6
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_08E9198C
sub_08E9198C: @ 0x08E9198C
	svc #0x12
	bx lr

	thumb_func_start sub_08E91990
sub_08E91990: @ 0x08E91990
	movs r2, #0
	svc #5
	bx lr
	.align 2, 0
