	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D58198_1:	@ 0x08D58180
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x54
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x28
	.byte	0xD0
	.byte	0x6B
	.byte	0x7F
	.byte	0x81
	.byte	0x6F
	.byte	0x82
	.byte	0x6D
	.byte	0x82
	.byte	0x73
	.byte	0x87
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global gSong_08D58198
gSong_08D58198:	@ 0x08D58198
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D58198_1		@ track

	.align 2
