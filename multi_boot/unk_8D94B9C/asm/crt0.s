	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	arm_func_start __start
__start: @ 0x02000000
	b _020000C0

	.include "asm/rom_header.inc"

_020000C0:
	mov r0, #0x12
	msr cpsr_fc, r0
	ldr sp, _020000F8 @ =gUnk_03007FA0
	mov r0, #0x1f
	msr cpsr_fc, r0
	ldr sp, _020000F4 @ =gUnk_03007E80
	ldr r1, _020001C0 @ =0x03007FFC
	add r0, pc, #0x18 @ =sub_020000FC
	str r0, [r1]
	ldr r1, _020001C4 @ =sub_200879C
	mov lr, pc
	bx r1
	b _020000C0
	.align 2, 0
_020000F4: .4byte gUnk_03007E80
_020000F8: .4byte gUnk_03007FA0

	arm_func_start sub_020000FC
sub_020000FC: @ 0x020000FC
	mov r3, #0x4000000
	add r3, r3, #0x200
	ldr r2, [r3]
	and r1, r2, r2, lsr #16
	mov r2, #0
	ands r0, r1, #0x2000
	strbne r0, [r3, #-0x17c]
_02000118:
	bne _02000118
	ands r0, r1, #0xc0
	bne _020001AC
	add r2, r2, #4
	ands r0, r1, #1
	bne _020001AC
	add r2, r2, #4
	ands r0, r1, #2
	bne _020001AC
	add r2, r2, #4
	ands r0, r1, #4
	bne _020001AC
	add r2, r2, #4
	ands r0, r1, #8
	bne _020001AC
	add r2, r2, #4
	ands r0, r1, #0x10
	bne _020001AC
	add r2, r2, #4
	ands r0, r1, #0x20
	bne _020001AC
	add r2, r2, #4
	ands r0, r1, #0x40
	bne _020001AC
	add r2, r2, #4
	ands r0, r1, #0x100
	bne _020001AC
	add r2, r2, #4
	ands r0, r1, #0x200
	bne _020001AC
	add r2, r2, #4
	ands r0, r1, #0x400
	bne _020001AC
	add r2, r2, #4
	ands r0, r1, #0x800
	bne _020001AC
	add r2, r2, #4
_020001AC:
	strh r0, [r3, #2]
	ldr r1, _020001C8 @ =gUnk_03000740
	add r1, r1, r2
	ldr r0, [r1]
	bx r0
	.align 2, 0
_020001C0: .4byte 0x03007FFC
_020001C4: .4byte sub_200879C
_020001C8: .4byte gUnk_03000740
