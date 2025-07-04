	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D580D0_1:	@ 0x08D580C0
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x64
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x7F
	.byte	0xDD
	.byte	0x3E
	.byte	0x7F
	.byte	0x92
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global gSong_08D580D0
gSong_08D580D0:	@ 0x08D580D0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D580D0_1		@ track

	.align 2
