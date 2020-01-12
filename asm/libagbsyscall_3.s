	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08DA0488
sub_08DA0488: @ 0x08DA0488
	svc #0xc
	bx lr

	thumb_func_start sub_08DA048C
sub_08DA048C: @ 0x08DA048C
	svc #0xb
	bx lr

	thumb_func_start sub_08DA0490
sub_08DA0490: @ 0x08DA0490
	svc #6
	bx lr

	thumb_func_start sub_08DA0494
sub_08DA0494: @ 0x08DA0494
	svc #6
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_08DA049C
sub_08DA049C: @ 0x08DA049C
	svc #0x12
	bx lr

	thumb_func_start sub_08DA04A0
sub_08DA04A0: @ 0x08DA04A0
	svc #0x15
	bx lr

	thumb_func_start sub_08DA04A4
sub_08DA04A4: @ 0x08DA04A4
	movs r2, #0
	svc #5
	bx lr
	.align 2, 0
