	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start _call_via_r0
_call_via_r0: @ 0x0815A298
	bx r0
	nop

	thumb_func_start _call_via_r1
_call_via_r1: @ 0x0815A29C
	bx r1
	nop

	thumb_func_start _call_via_r2
_call_via_r2: @ 0x0815A2A0
	bx r2
	nop

	thumb_func_start _call_via_r3
_call_via_r3: @ 0x0815A2A4
	bx r3
	nop

	thumb_func_start _call_via_r4
_call_via_r4: @ 0x0815A2A8
	bx r4
	nop

	thumb_func_start _call_via_r5
_call_via_r5: @ 0x0815A2AC
	bx r5
	nop

	thumb_func_start _call_via_r6
_call_via_r6: @ 0x0815A2B0
	bx r6
	nop

	thumb_func_start _call_via_r7
_call_via_r7: @ 0x0815A2B4
	bx r7
	nop

	thumb_func_start _call_via_r8
_call_via_r8: @ 0x0815A2B8
	bx r8
	nop

	thumb_func_start _call_via_r9
_call_via_r9: @ 0x0815A2BC
	bx sb
	nop

	thumb_func_start _call_via_sl
_call_via_sl: @ 0x0815A2C0
	bx sl
	nop

	thumb_func_start _call_via_fp
_call_via_fp: @ 0x0815A2C4
	bx fp
	nop

	thumb_func_start _call_via_ip
_call_via_ip: @ 0x0815A2C8
	bx ip
	nop

	thumb_func_start _call_via_sp
_call_via_sp: @ 0x0815A2CC
	bx sp
	nop

	thumb_func_start _call_via_lr
_call_via_lr: @ 0x0815A2D0
	bx lr
	nop
