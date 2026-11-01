	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gUnk_08357B18:: @ 08357B18
	.incbin "baserom.gba", 0x357B18, 0x000000C

gUnk_08357B24:: @ 08357B24
	.incbin "baserom.gba", 0x357B24, 0x000001A

gUnk_08357B3E:: @ 08357B3E
	.incbin "baserom.gba", 0x357B3E, 0x000004E

gUnk_08357B8C:: @ 08357B8C
	.word nullsub_127
	.word StartWorldMapUnlockMoonlightMansion
	.word StartWorldMapUnlockRainbowRouteEast
	.word StartWorldMapUnlockRainbowRouteSouth
	.word StartWorldMapUnlockCabbageCavernCenter
	.word StartWorldMapUnlockRainbowRouteWest
	.word StartWorldMapUnlockCarrotCastle
	.word StartWorldMapUnlockRainbowRouteNorth
	.word StartWorldMapUnlockMustardMountain
	.word StartWorldMapUnlockCabbageCavernWest
	.word StartWorldMapUnlockRadishRuins
	.word StartWorldMapUnlockPeppermintPalaceEast
	.word StartWorldMapUnlockPeppermintPalaceWest
	.word StartWorldMapUnlockCabbageCavernEast
	.word StartWorldMapUnlockOliveOcean
	.word StartWorldMapUnlockCandyConstellation
	.word sub_080396BC

gUnk_08357BD0:: @ 08357BD0
	.incbin "baserom.gba", 0x357BD0, 0x000000C

gUnk_08357BDC:: @ 08357BDC
	.incbin "baserom.gba", 0x357BDC, 0x000000C
