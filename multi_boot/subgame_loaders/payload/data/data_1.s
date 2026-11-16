	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gUnk_0203CE50:: @ 0203CE50
	.incbin "baserom.gba", 0x004E50, 0x100

gUnk_0203CF50:: @ 0203CF50
	.incbin "baserom.gba", 0x004F50, 0x8
