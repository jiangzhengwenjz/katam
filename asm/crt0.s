	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	arm_func_start __start
__start: @ 0x08000000
	b _080000C0

	.include "asm/rom_header.inc"

_080000C0:
	mov r0, #PSR_IRQ_MODE
	msr cpsr_fc, r0
	ldr sp, sp_irq
	mov r0, #PSR_SYS_MODE
	msr cpsr_fc, r0
	ldr sp, sp_usr
	ldr r1, _080001C0 @ =INTR_VECTOR
	add r0, pc, #0x18 @ =IntrMain
	str r0, [r1]
	ldr r1, _080001C4 @ =AgbMain
	mov lr, pc
	bx r1
_080000F0:
	b _080000C0
sp_usr: .4byte IWRAM_END - 0x180
sp_irq: .4byte IWRAM_END - 0x60

	arm_func_start IntrMain
IntrMain: @ 0x080000FC
	mov r3, #0x4000000
	add r3, r3, #0x200
	ldr r2, [r3]
	and r1, r2, r2, lsr #16
	mov r2, #0
	ands r0, r1, #INTR_FLAG_GAMEPAK
	strbne r0, [r3, #-0x17c]
_08000118:
	bne _08000118
	ands r0, r1, #INTR_FLAG_TIMER3 | INTR_FLAG_SERIAL
	bne _080001AC
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_VBLANK
	bne _080001AC
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_HBLANK
	bne _080001AC
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_VCOUNT
	bne _080001AC
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_TIMER0
	bne _080001AC
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_TIMER1
	bne _080001AC
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_TIMER2
	bne _080001AC
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_TIMER3
	bne _080001AC
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_DMA0
	bne _080001AC
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_DMA1
	bne _080001AC
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_DMA2
	bne _080001AC
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_DMA3
	bne _080001AC
	add r2, r2, #4
_080001AC:
	strh r0, [r3, #2]
	ldr r1, _080001C8 @ =gIntrTable
	add r1, r1, r2
	ldr r0, [r1]
	bx r0
	.align 2, 0
_080001C0: .4byte INTR_VECTOR
_080001C4: .4byte AgbMain
_080001C8: .4byte gIntrTable
