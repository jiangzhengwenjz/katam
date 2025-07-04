	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D5AE78_1:	@ 0x08D5AE44
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4D
	.byte	0xBD
	.byte	0x54
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x1A
	.byte	0xBA
	.byte	0x78
	.byte	0xD1
	.byte	0x50
	.byte	0x7F
	.byte	0x82
	.byte	0x54
	.byte	0x82
	.byte	0x57
	.byte	0x82
	.byte	0x5C
	.byte	0x58
	.byte	0x82
	.byte	0xB1


@********************** Track  2 **********************@

gSong_08D5AE78_2:	@ 0x08D5AE5C
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x50
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x0A
	.byte	0xBA
	.byte	0x78
	.byte	0xC0
	.byte	0x43
	.byte	0x81
	.byte	0xD1
	.byte	0x50
	.byte	0x7F
	.byte	0x82
	.byte	0x54
	.byte	0x82
	.byte	0x57
	.byte	0x82
	.byte	0x5C
	.byte	0x7C
	.byte	0x82
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global gSong_08D5AE78
gSong_08D5AE78:	@ 0x08D5AE78
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D5AE78_1		@ track
	.word	gSong_08D5AE78_2		@ track

	.align 2
