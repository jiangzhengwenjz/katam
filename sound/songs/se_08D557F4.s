	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D557F4_1:	@ 0x08D557CC
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x5F
	.byte	0xBD
	.byte	0x54
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x28
	.byte	0xBA
	.byte	0x46
	.byte	0xD1
	.byte	0x67
	.byte	0x7F
	.byte	0x85
	.byte	0xD1
	.byte	0x85
	.byte	0xD1
	.byte	0x85
	.byte	0xD1
	.byte	0x89
	.byte	0xD1
	.byte	0x85
	.byte	0xD1
	.byte	0x85
	.byte	0xD1
	.byte	0x85
	.byte	0xD1
	.byte	0x89
	.byte	0xD1
	.byte	0x85
	.byte	0xD1
	.byte	0x85
	.byte	0xD1
	.byte	0x85
	.byte	0xD1
	.byte	0x82
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global gSong_08D557F4
gSong_08D557F4:	@ 0x08D557F4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	162		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D557F4_1		@ track

	.align 2
