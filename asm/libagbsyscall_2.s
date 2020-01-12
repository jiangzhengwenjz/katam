	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08D7D898
sub_08D7D898: @ 0x08D7D898
	svc #0xc
	bx lr

	thumb_func_start sub_08D7D89C
sub_08D7D89C: @ 0x08D7D89C
	svc #0xb
	bx lr

	thumb_func_start sub_08D7D8A0
sub_08D7D8A0: @ 0x08D7D8A0
	svc #6
	bx lr

	thumb_func_start sub_08D7D8A4
sub_08D7D8A4: @ 0x08D7D8A4
	svc #6
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_08D7D8AC
sub_08D7D8AC: @ 0x08D7D8AC
	svc #0x12
	bx lr

	thumb_func_start sub_08D7D8B0
sub_08D7D8B0: @ 0x08D7D8B0
	svc #0x15
	bx lr

	thumb_func_start sub_08D7D8B4
sub_08D7D8B4: @ 0x08D7D8B4
	movs r2, #0
	svc #5
	bx lr
	.align 2, 0
