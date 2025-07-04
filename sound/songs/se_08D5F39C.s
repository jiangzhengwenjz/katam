	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D5F39C_1:	@ 0x08D5F378
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x50
	.byte	0xC1
	.byte	0x1E
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x5E
	.byte	0xC0
	.byte	0x10
	.byte	0xD8
	.byte	0x30
	.byte	0x30
	.byte	0x81
	.byte	0xC0
	.byte	0x1B
	.byte	0x81
	.byte	0x26
	.byte	0x81
	.byte	0x3C
	.byte	0x81
	.byte	0x48
	.byte	0x81
	.byte	0x53
	.byte	0x81
	.byte	0x69
	.byte	0x81
	.byte	0x74
	.byte	0x81
	.byte	0x7E
	.byte	0xAD
	.byte	0xB1

@******************************************************@

	.global gSong_08D5F39C
gSong_08D5F39C:	@ 0x08D5F39C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D5F39C_1		@ track

	.align 2
