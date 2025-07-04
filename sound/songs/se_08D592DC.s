	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D592DC_1:	@ 0x08D592CC
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x76
	.byte	0xBE
	.byte	0x78
	.byte	0xC4
	.byte	0x0A
	.byte	0xF3
	.byte	0x3C
	.byte	0x74
	.byte	0xA6
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global gSong_08D592DC
gSong_08D592DC:	@ 0x08D592DC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D592DC_1		@ track

	.align 2
