	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D590DC_1:	@ 0x08D590BC
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x71
	.byte	0xBE
	.byte	0x7D
	.byte	0xC4
	.byte	0x0A
	.byte	0xEE
	.byte	0x40
	.byte	0x7F
	.byte	0xA6
	.byte	0xB1


@********************** Track  2 **********************@

gSong_08D590DC_2:	@ 0x08D590CB
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x71
	.byte	0xBE
	.byte	0x46
	.byte	0xC4
	.byte	0x14
	.byte	0x92
	.byte	0xEE
	.byte	0x40
	.byte	0x34
	.byte	0xA0
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global gSong_08D590DC
gSong_08D590DC:	@ 0x08D590DC
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D590DC_1		@ track
	.word	gSong_08D590DC_2		@ track

	.align 2
