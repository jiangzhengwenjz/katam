	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D599A0_1:	@ 0x08D59990
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x77
	.byte	0xBE
	.byte	0x7B
	.byte	0xC4
	.byte	0x05
	.byte	0xEB
	.byte	0x3C
	.byte	0x7C
	.byte	0x9E
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global gSong_08D599A0
gSong_08D599A0:	@ 0x08D599A0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D599A0_1		@ track

	.align 2
