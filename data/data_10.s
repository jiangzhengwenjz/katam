	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

	.align 2, 0
gUnk_08355518:: @ 08355518
	.incbin "baserom.gba", 0x355518, 0x0000014

gUnk_0835552C:: @ 0835552C
	.incbin "baserom.gba", 0x35552C, 0x000000E

gUnk_0835553A:: @ 0835553A
	.incbin "baserom.gba", 0x35553A, 0x0000016
