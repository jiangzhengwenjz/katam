	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

@ speed eaters jp
gUnk_08D6DD04:: @ 08D6DD04
	.incbin "baserom.gba", 0xD6DD04, 0x00042C4
gUnk_08D6DD04_End::

gUnk_08D71FC8:: @ 08D71FC8
	.incbin "baserom.gba", 0xD71FC8, 0x001EAA4

@ speed eaters
gUnk_08D90A6C:: @ 08D90A6C
	.incbin "multi_boot/subgame_loaders/speed_eaters.gba"
gUnk_08D90A6C_End::

gUnk_08D94B9C:: @ 08D94B9C
	.incbin "multi_boot/unk_8D94B9C/unk_8D94B9C.gba"

	.space 0x68450, 0x00

@ crackity hack
gUnk_08E1BA58:: @ 08E1BA58
	.incbin "baserom.gba", 0xE1BA58, 0x00043D0
gUnk_08E1BA58_End::

gUnk_08E1FE28:: @ 08E1FE28
	.incbin "multi_boot/unk_8E1FE28/unk_8E1FE28.gba"

	.space 0x1095C, 0x00

@ wave rider jp
gUnk_08E52F94:: @ 08E52F94
	.incbin "baserom.gba", 0xE52F94, 0x0004904
gUnk_08E52F94_End:

gUnk_08E57898:: @ 08E57898
	.incbin "baserom.gba", 0xE57898, 0x0028804

@ wave rider
gUnk_08E8009C:: @ 08E8009C
	.incbin "baserom.gba", 0xE8009C, 0x0004870
gUnk_08E8009C_End::

gUnk_08E8490C:: @ 08E8490C
	.incbin "multi_boot/unk_8E8490C/unk_8E8490C.gba"

	.space 0x85C7C, 0x00

gBuildInfo:: @ 08F32D94
	.asciz "1.03\r\nMon Apr 12 19:58:05  2004\r\n"
