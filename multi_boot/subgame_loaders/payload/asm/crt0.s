	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	.global __start
__start:
	mov r0, #0x12
	msr cpsr_fc, r0
	ldr sp, _02038038 @ =gUnk_03007FA0
	mov r0, #0x1f
	msr cpsr_fc, r0
	ldr sp, _02038034 @ =gUnk_03007F00
	ldr r1, _02038100 @ =0x03007FFC
	add r0, pc, #0x18 @ =sub_0203803C
	str r0, [r1]
	ldr r1, _02038104 @ =sub_0203826C
	mov lr, pc
	bx r1
	b __start
	.align 2, 0
_02038034: .4byte gUnk_03007F00
_02038038: .4byte gUnk_03007FA0

	arm_func_start sub_0203803C
sub_0203803C: @ 0x0203803C
	mov r3, #0x4000000
	add r3, r3, #0x200
	ldr r2, [r3]
	and r1, r2, r2, lsr #16
	mov r2, #0
	ands r0, r1, #0x2000
_02038054:
	bne _02038054
	ands r0, r1, #0xc0
	bne _020380EC
	add r2, r2, #4
	ands r0, r1, #1
	bne _020380EC
	add r2, r2, #4
	ands r0, r1, #2
	bne _020380EC
	add r2, r2, #4
	ands r0, r1, #4
	bne _020380EC
	add r2, r2, #4
	ands r0, r1, #8
	bne _020380EC
	add r2, r2, #4
	ands r0, r1, #0x10
	bne _020380EC
	add r2, r2, #4
	ands r0, r1, #0x20
	bne _020380EC
	add r2, r2, #4
	ands r0, r1, #0x100
	bne _020380EC
	add r2, r2, #4
	ands r0, r1, #0x200
	bne _020380EC
	add r2, r2, #4
	ands r0, r1, #0x400
	bne _020380EC
	add r2, r2, #4
	ands r0, r1, #0x800
	bne _020380EC
	add r2, r2, #4
	ands r0, r1, #0x1000
	bne _020380EC
	add r2, r2, #4
	ands r0, r1, #0x2000
_020380EC:
	strh r0, [r3, #2]
	ldr r1, _02038108 @ =gUnk_03000000
	add r1, r1, r2
	ldr r0, [r1]
	bx r0
	.align 2, 0
_02038100: .4byte 0x03007FFC
_02038104: .4byte sub_0203826C
_02038108: .4byte gUnk_03000000
