	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gUnk_083546A4:: @ 083546A4
	.incbin "baserom.gba", 0x3546A4, 0x000006C

gUnk_08354710:: @ 08354710
	.incbin "baserom.gba", 0x354710, 0x0000024

gUnk_08354734:: @ 08354734
	.incbin "baserom.gba", 0x354734, 0x0000048

gUnk_0835477C:: @ 0835477C
	.incbin "baserom.gba", 0x35477C, 0x0000030

gUnk_083547AC:: @ 083547AC
	.4byte nullsub_125
	.4byte sub_080BA780
	.4byte sub_080BA800
	.4byte sub_080BA5C8
	.4byte sub_080BA638
	.4byte sub_080BA880
	.4byte sub_080BA908
	.4byte sub_080BAA78
	.4byte sub_080BAAF8
	.4byte sub_080BA6A4
	.4byte sub_080BA714
	.4byte sub_080BA97C
	.4byte sub_080BA9F0

gUnk_083547E0:: @ 083547E0
	.incbin "baserom.gba", 0x3547E0, 0x0000004

gUnk_083547E4:: @ 083547E4
	.incbin "baserom.gba", 0x3547E4, 0x0000024
