	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D5EDA0_1:	@ 0x08D5ED74
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x5A
	.byte	0xBD
	.byte	0x25
	.byte	0xBF
	.byte	0x4A
	.byte	0xC4
	.byte	0x00
	.byte	0xBE
	.byte	0x67
	.byte	0xCF
	.byte	0x40
	.byte	0x78
	.byte	0xB0
	.byte	0xA0
	.byte	0xCE
	.byte	0xA0
	.byte	0xB1


@********************** Track  2 **********************@

gSong_08D5EDA0_2:	@ 0x08D5ED88
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x29
	.byte	0xBF
	.byte	0x2C
	.byte	0xC4
	.byte	0x01
	.byte	0xBE
	.byte	0x3C
	.byte	0x93
	.byte	0xCF
	.byte	0x3F
	.byte	0x64
	.byte	0xA9
	.byte	0x81
	.byte	0xA6
	.byte	0x81
	.byte	0xCE
	.byte	0x99
	.byte	0x81
	.byte	0xB1
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global gSong_08D5EDA0
gSong_08D5EDA0:	@ 0x08D5EDA0
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup007		@ voicegroup/tone

	.word	gSong_08D5EDA0_1		@ track
	.word	gSong_08D5EDA0_2		@ track

	.align 2
