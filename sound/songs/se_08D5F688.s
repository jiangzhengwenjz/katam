	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D5F688_1:	@ 0x08D5F668
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x24
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x7F
	.byte	0xC0
	.byte	0x40
	.byte	0xE8
	.byte	0x3D
	.byte	0x7F
	.byte	0x84
	.byte	0xC0
	.byte	0x2A
	.byte	0xD4
	.byte	0x39
	.byte	0x50
	.byte	0x85
	.byte	0xC0
	.byte	0x12
	.byte	0xEA
	.byte	0x3A
	.byte	0x28
	.byte	0xAC
	.byte	0x83
	.byte	0xB1
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global gSong_08D5F688
gSong_08D5F688:	@ 0x08D5F688
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D5F688_1		@ track

	.align 2
