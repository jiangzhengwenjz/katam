	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D59A20_1:	@ 0x08D59A00
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x29
	.byte	0xC2
	.byte	0x00
	.byte	0xC4
	.byte	0x0A
	.byte	0xC3
	.byte	0x00
	.byte	0xC1
	.byte	0x00
	.byte	0xBE
	.byte	0x32
	.byte	0xC0
	.byte	0x50
	.byte	0xD6
	.byte	0x40
	.byte	0x30
	.byte	0x81
	.byte	0xBE
	.byte	0x5A
	.byte	0x82
	.byte	0x7F
	.byte	0x89
	.byte	0x3C
	.byte	0x81
	.byte	0x14
	.byte	0x85
	.byte	0xB1

@******************************************************@

	.global gSong_08D59A20
gSong_08D59A20:	@ 0x08D59A20
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D59A20_1		@ track

	.align 2
