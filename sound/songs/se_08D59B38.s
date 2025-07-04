	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D59B38_1:	@ 0x08D59B28
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x7A
	.byte	0xBE
	.byte	0x7F
	.byte	0xC4
	.byte	0x01
	.byte	0xF2
	.byte	0x3B
	.byte	0x7F
	.byte	0xA4
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global gSong_08D59B38
gSong_08D59B38:	@ 0x08D59B38
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D59B38_1		@ track

	.align 2
