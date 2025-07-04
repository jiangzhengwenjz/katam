	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D5E270_1:	@ 0x08D5E250
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x07
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x7F
	.byte	0xE1
	.byte	0x39
	.byte	0x7F
	.byte	0x98
	.byte	0xB1


@********************** Track  2 **********************@

gSong_08D5E270_2:	@ 0x08D5E25F
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x08
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x41
	.byte	0xD9
	.byte	0x2B
	.byte	0x5C
	.byte	0x8C
	.byte	0xDC
	.byte	0x2B
	.byte	0x28
	.byte	0x92
	.byte	0xB1

@******************************************************@

	.global gSong_08D5E270
gSong_08D5E270:	@ 0x08D5E270
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup006		@ voicegroup/tone

	.word	gSong_08D5E270_1		@ track
	.word	gSong_08D5E270_2		@ track

	.align 2
