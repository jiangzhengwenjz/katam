	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D5811C_1:	@ 0x08D580FC
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x64
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x7F
	.byte	0xC1
	.byte	0x07
	.byte	0xC4
	.byte	0x32
	.byte	0xC0
	.byte	0x7E
	.byte	0xDD
	.byte	0x3D
	.byte	0x7F
	.byte	0x81
	.byte	0xC0
	.byte	0x5E
	.byte	0x81
	.byte	0x3E
	.byte	0x81
	.byte	0x27
	.byte	0x81
	.byte	0x0F
	.byte	0x81
	.byte	0x03
	.byte	0x8D
	.byte	0xB1

@******************************************************@

	.global gSong_08D5811C
gSong_08D5811C:	@ 0x08D5811C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D5811C_1		@ track

	.align 2
