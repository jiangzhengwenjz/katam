	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D587E8_1:	@ 0x08D587CC
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x66
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x73
	.byte	0xC1
	.byte	0x14
	.byte	0xC0
	.byte	0x6D
	.byte	0xDD
	.byte	0x2F
	.byte	0x7F
	.byte	0x81
	.byte	0xC0
	.byte	0x59
	.byte	0x81
	.byte	0x4D
	.byte	0x81
	.byte	0x40
	.byte	0x81
	.byte	0x40
	.byte	0x8E
	.byte	0xB1

@******************************************************@

	.global gSong_08D587E8
gSong_08D587E8:	@ 0x08D587E8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D587E8_1		@ track

	.align 2
