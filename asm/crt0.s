	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	.global __start
__start:
	arm_func_start sub_08000000
sub_08000000: @ 0x08000000
	b _080000C0
_08000004:

	.include "asm/rom_header.inc"

_080000C0:
	mov r0, #0x12
	msr cpsr_fc, r0
	ldr sp, _080000F8 @ =gUnk_03007FA0
	mov r0, #0x1f
	msr cpsr_fc, r0
	ldr sp, _080000F4 @ =gUnk_03007E80
	ldr r1, _080001C0 @ =gUnk_03007FFC
	add r0, pc, #0x18 @ =sub_080000FC
	str r0, [r1]
	ldr r1, _080001C4 @ =sub_08152A04
	mov lr, pc
	bx r1
_080000F0:
	b _080000C0
_080000F4: .4byte gUnk_03007E80
_080000F8: .4byte gUnk_03007FA0

	arm_func_start sub_080000FC
sub_080000FC: @ 0x080000FC
	mov r3, #0x4000000
	add r3, r3, #0x200
	ldr r2, [r3]
	and r1, r2, r2, lsr #16
	mov r2, #0
	ands r0, r1, #0x2000
	strbne r0, [r3, #-0x17c]
_08000118:
	bne _08000118
	ands r0, r1, #0xc0
	bne _080001AC
	add r2, r2, #4
	ands r0, r1, #1
	bne _080001AC
	add r2, r2, #4
	ands r0, r1, #2
	bne _080001AC
	add r2, r2, #4
	ands r0, r1, #4
	bne _080001AC
	add r2, r2, #4
	ands r0, r1, #8
	bne _080001AC
	add r2, r2, #4
	ands r0, r1, #0x10
	bne _080001AC
	add r2, r2, #4
	ands r0, r1, #0x20
	bne _080001AC
	add r2, r2, #4
	ands r0, r1, #0x40
	bne _080001AC
	add r2, r2, #4
	ands r0, r1, #0x100
	bne _080001AC
	add r2, r2, #4
	ands r0, r1, #0x200
	bne _080001AC
	add r2, r2, #4
	ands r0, r1, #0x400
	bne _080001AC
	add r2, r2, #4
	ands r0, r1, #0x800
	bne _080001AC
	add r2, r2, #4
_080001AC:
	strh r0, [r3, #2]
	ldr r1, _080001C8 @ =gUnk_030017B0
	add r1, r1, r2
	ldr r0, [r1]
	bx r0
	.align 2, 0
_080001C0: .4byte gUnk_03007FFC
_080001C4: .4byte sub_08152A04
_080001C8: .4byte gUnk_030017B0
