	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .data
	.align 2

gUnk_08D60980:: @ 08D60980
	.incbin "baserom.gba", 0xD60980, 0x0000100

gLanguage:: @ 08D60A80
	.incbin "baserom.gba", 0xD60A80, 0x0000004

gUnk_08D60A84:: @ 08D60A84
	.word gUnk_082D9264
	.word gUnk_082DA29C
	.word gUnk_082DAECC
	.word gUnk_082DBB14
	.word gUnk_082DC2C4
	.word gUnk_082DCE04
	.word gUnk_082DD77C

gUnk_08D60AA0:: @ 08D60AA0
	.word gUnk_082EB9A4
	.word gUnk_082EBBFC
	.word gUnk_082EC034

gUnk_08D60AAC:: @ 08D60AAC
	.word gUnk_08388020
	.word gUnk_0838AD48
	.word gUnk_0838DA48
	.word gUnk_083906B0
	.word gUnk_0839342C
	.word NULL
	.word NULL
	.word gCrackityHackObjTileset_English
	.word gCrackityHackObjTileset_German
	.word gCrackityHackObjTileset_French
	.word gCrackityHackObjTileset_Spanish
	.word gCrackityHackObjTileset_Italian
	.word gUnk_083A6A00
	.word gUnk_083A9AAC
	.word gUnk_083ACB3C
	.word gUnk_083AFB24
	.word gUnk_083B2C34
	.zero 0x1C

gUnk_08D60B0C:: @ 08D60B0C
	.word gUnk_082EAD60
	.word gUnk_082EAE42
	.word gUnk_082EAF24
	.word gUnk_082EB006
	.word gUnk_082EB0E8
	.word gUnk_082EB1CA

gUnk_08D60B24:: @ 08D60B24
	.word gUnk_082EB808
	.word gUnk_082EB828
	.word gUnk_082EB848
	.word gUnk_082EB868
	.word gUnk_082EB890
	.word gUnk_082EB8B8
	.word gUnk_082EB8DC
	.word gUnk_082EB918

gUnk_08D60B44:: @ 08D60B44
	.word gUnk_082EC790
	.word gUnk_082EC794
	.word gUnk_082EC794
	.word gUnk_082EC794
	.word gUnk_082EC794
	.word gUnk_082EC794
	.word gUnk_082EC794
	.word NULL
