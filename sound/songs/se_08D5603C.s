	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D5603C_1:	@ 0x08D56024
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x3E
	.byte	0xBF
	.byte	0x40
	.byte	0xBA
	.byte	0x32
	.byte	0xBE
	.byte	0x7F
	.byte	0xDA
	.byte	0x3B
	.byte	0x3C
	.byte	0x85
	.byte	0xBE
	.byte	0x68
	.byte	0x82
	.byte	0x3E
	.byte	0x82
	.byte	0x24
	.byte	0x82
	.byte	0xB1

@******************************************************@

	.global gSong_08D5603C
gSong_08D5603C:	@ 0x08D5603C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D5603C_1		@ track

	.align 2
