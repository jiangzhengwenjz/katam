	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D56B84_1:	@ 0x08D56B64
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x5F
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x7F
	.byte	0xBA
	.byte	0x28
	.byte	0xD0
	.byte	0x36
	.byte	0x5C
	.byte	0x81
	.byte	0xD1
	.byte	0x34
	.byte	0x82
	.byte	0x33
	.byte	0x28
	.byte	0x82
	.byte	0x32
	.byte	0x82
	.byte	0x31
	.byte	0x82
	.byte	0x30
	.byte	0x82
	.byte	0x2F
	.byte	0x82
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global gSong_08D56B84
gSong_08D56B84:	@ 0x08D56B84
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D56B84_1		@ track

	.align 2
