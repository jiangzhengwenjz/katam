	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D5E3B8_1:	@ 0x08D5E3A4
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x50
	.byte	0xBD
	.byte	0x7E
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x6E
	.byte	0xC0
	.byte	0x40
	.byte	0xED
	.byte	0x24
	.byte	0x64
	.byte	0xA0
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global gSong_08D5E3B8
gSong_08D5E3B8:	@ 0x08D5E3B8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D5E3B8_1		@ track

	.align 2
