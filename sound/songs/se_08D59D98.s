	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D59D98_1:	@ 0x08D59D84
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x75
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x7F
	.byte	0xC4
	.byte	0x00
	.byte	0xEE
	.byte	0x3C
	.byte	0x7F
	.byte	0xA0
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global gSong_08D59D98
gSong_08D59D98:	@ 0x08D59D98
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D59D98_1		@ track

	.align 2
