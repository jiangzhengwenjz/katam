	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D56D98_1:	@ 0x08D56D84
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x66
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x50
	.byte	0xBA
	.byte	0x28
	.byte	0xC1
	.byte	0x0A
	.byte	0xDB
	.byte	0x43
	.byte	0x44
	.byte	0x8C
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global gSong_08D56D98
gSong_08D56D98:	@ 0x08D56D98
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D56D98_1		@ track

	.align 2
