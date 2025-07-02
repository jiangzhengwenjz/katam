    .include "asm/macros.inc"
    .include "constants/constants.inc"

    .section .rodata

gUnk_08350EF0:: @ 08350EF0
	.incbin "baserom.gba", 0x350EF0, 0x000010A

gUnk_08350FFA:: @ 08350FFA
	.incbin "baserom.gba", 0x350FFA, 0x0000010

gUnk_0835100A:: @ 0835100A
	.incbin "baserom.gba", 0x35100A, 0x0000040

gUnk_0835104A:: @ 0835104A
	.incbin "baserom.gba", 0x35104A, 0x0000012
