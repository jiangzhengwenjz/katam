	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D5FAA4_1:	@ 0x08D5FA84
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x05
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x45
	.byte	0xE2
	.byte	0x1D
	.byte	0x7F
	.byte	0x9E
	.byte	0xB1


@********************** Track  2 **********************@

gSong_08D5FAA4_2:	@ 0x08D5FA93
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x05
	.byte	0xBF
	.byte	0x36
	.byte	0xBE
	.byte	0x28
	.byte	0x84
	.byte	0xE2
	.byte	0x1F
	.byte	0x64
	.byte	0x9C
	.byte	0x82
	.byte	0xB1
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global gSong_08D5FAA4
gSong_08D5FAA4:	@ 0x08D5FAA4
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup007		@ voicegroup/tone

	.word	gSong_08D5FAA4_1		@ track
	.word	gSong_08D5FAA4_2		@ track

	.align 2
