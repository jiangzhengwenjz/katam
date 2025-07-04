	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D591D0_1:	@ 0x08D591A4
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x74
	.byte	0xBE
	.byte	0x7D
	.byte	0xC4
	.byte	0x0A
	.byte	0xEE
	.byte	0x39
	.byte	0x7F
	.byte	0x99
	.byte	0xBE
	.byte	0x14
	.byte	0x82
	.byte	0x08
	.byte	0x81
	.byte	0x00
	.byte	0x99
	.byte	0x81
	.byte	0xB1


@********************** Track  2 **********************@

gSong_08D591D0_2:	@ 0x08D591BB
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x74
	.byte	0xBE
	.byte	0x50
	.byte	0xC4
	.byte	0x0A
	.byte	0x8C
	.byte	0xEE
	.byte	0x3A
	.byte	0x5C
	.byte	0x9C
	.byte	0xBE
	.byte	0x14
	.byte	0x81
	.byte	0x08
	.byte	0x82
	.byte	0x00
	.byte	0x89
	.byte	0xB1

@******************************************************@

	.global gSong_08D591D0
gSong_08D591D0:	@ 0x08D591D0
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D591D0_1		@ track
	.word	gSong_08D591D0_2		@ track

	.align 2
