	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D5F800_1:	@ 0x08D5F7D8
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x15
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x5A
	.byte	0xBA
	.byte	0x0F
	.byte	0xD2
	.byte	0x38
	.byte	0x7F
	.byte	0xB0
	.byte	0xB1


@********************** Track  2 **********************@

gSong_08D5F800_2:	@ 0x08D5F7E9
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x13
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x5A
	.byte	0xBA
	.byte	0x0F
	.byte	0x83
	.byte	0xDC
	.byte	0x33
	.byte	0x7F
	.byte	0x8D
	.byte	0xBA
	.byte	0x0A
	.byte	0x33
	.byte	0x38
	.byte	0xAB
	.byte	0xB1
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global gSong_08D5F800
gSong_08D5F800:	@ 0x08D5F800
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D5F800_1		@ track
	.word	gSong_08D5F800_2		@ track

	.align 2
