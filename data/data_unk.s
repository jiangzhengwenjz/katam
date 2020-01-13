	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gUnk_08D72194:: @ 08D72194
	.incbin "baserom.gba", 0xD72194, 0x01C0C00

gUnk_08F32D94:: @ 08F32D94
	.incbin "baserom.gba", 0xF32D94, 0x0000008

gUnk_08F32D9C:: @ 08F32D9C
	.incbin "baserom.gba", 0xF32D9C, 0x000001C

gUnk_08F32DB8:: @ 08F32DB8
	.incbin "baserom.gba", 0xF32DB8, 0x00002EC

gUnk_08F330A4:: @ 08F330A4
	.long gUnk_08F32DB8
