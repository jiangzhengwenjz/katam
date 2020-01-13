	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0815BD18
sub_0815BD18: @ 0x0815BD18
	ldr r0, _0815BD20 @ =gUnk_08F330A4
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0815BD20: .4byte gUnk_08F330A4
