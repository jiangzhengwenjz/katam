	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D59B1C_1:	@ 0x08D59B0C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x7B
	.byte	0xBE
	.byte	0x64
	.byte	0xC4
	.byte	0x01
	.byte	0xEF
	.byte	0x3C
	.byte	0x5C
	.byte	0xA2
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global gSong_08D59B1C
gSong_08D59B1C:	@ 0x08D59B1C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D59B1C_1		@ track

	.align 2
