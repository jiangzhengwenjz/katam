	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D58378_1:	@ 0x08D5835C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x0D
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x46
	.byte	0xD0
	.byte	0x22
	.byte	0x7F
	.byte	0x81
	.byte	0xD1
	.byte	0x2D
	.byte	0x5C
	.byte	0x82
	.byte	0x3B
	.byte	0x44
	.byte	0x82
	.byte	0x3F
	.byte	0x28
	.byte	0x82
	.byte	0x3F
	.byte	0x20
	.byte	0x85
	.byte	0xB1

@******************************************************@

	.global gSong_08D58378
gSong_08D58378:	@ 0x08D58378
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D58378_1		@ track

	.align 2
