	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D5DEC8_1:	@ 0x08D5DEB8
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x01
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x7D
	.byte	0xFF
	.byte	0x3C
	.byte	0x7F
	.byte	0xB0
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global gSong_08D5DEC8
gSong_08D5DEC8:	@ 0x08D5DEC8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup006		@ voicegroup/tone

	.word	gSong_08D5DEC8_1		@ track

	.align 2
