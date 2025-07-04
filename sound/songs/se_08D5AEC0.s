	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D5AEC0_1:	@ 0x08D5AEA8
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x54
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x20
	.byte	0xBA
	.byte	0x79
	.byte	0xD0
	.byte	0x5E
	.byte	0x7F
	.byte	0x81
	.byte	0x61
	.byte	0x81
	.byte	0x63
	.byte	0x82
	.byte	0xD1
	.byte	0x66
	.byte	0x82
	.byte	0xB1

@******************************************************@

	.global gSong_08D5AEC0
gSong_08D5AEC0:	@ 0x08D5AEC0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D5AEC0_1		@ track

	.align 2
