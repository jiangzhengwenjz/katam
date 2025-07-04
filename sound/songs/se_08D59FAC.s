	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D59FAC_1:	@ 0x08D59F9C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x08
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x7D
	.byte	0xF7
	.byte	0x3C
	.byte	0x7F
	.byte	0xAA
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global gSong_08D59FAC
gSong_08D59FAC:	@ 0x08D59FAC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup005		@ voicegroup/tone

	.word	gSong_08D59FAC_1		@ track

	.align 2
