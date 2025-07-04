	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D599BC_1:	@ 0x08D599AC
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x68
	.byte	0xBE
	.byte	0x78
	.byte	0xFB
	.byte	0x3C
	.byte	0x7F
	.byte	0xAC
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global gSong_08D599BC
gSong_08D599BC:	@ 0x08D599BC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D599BC_1		@ track

	.align 2
