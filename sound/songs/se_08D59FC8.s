	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D59FC8_1:	@ 0x08D59FB8
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x66
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x5A
	.byte	0xD4
	.byte	0x42
	.byte	0x70
	.byte	0x92
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global gSong_08D59FC8
gSong_08D59FC8:	@ 0x08D59FC8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D59FC8_1		@ track

	.align 2
