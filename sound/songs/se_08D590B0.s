	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D590B0_1:	@ 0x08D590A0
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x70
	.byte	0xBE
	.byte	0x6E
	.byte	0xC4
	.byte	0x0A
	.byte	0xDB
	.byte	0x3A
	.byte	0x70
	.byte	0x92
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global gSong_08D590B0
gSong_08D590B0:	@ 0x08D590B0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D590B0_1		@ track

	.align 2
