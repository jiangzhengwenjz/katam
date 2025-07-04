	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D5AE9C_1:	@ 0x08D5AE88
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x50
	.byte	0xBE
	.byte	0x26
	.byte	0xBA
	.byte	0x78
	.byte	0xD0
	.byte	0x61
	.byte	0x7F
	.byte	0x81
	.byte	0x61
	.byte	0x4C
	.byte	0x81
	.byte	0xB1
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global gSong_08D5AE9C
gSong_08D5AE9C:	@ 0x08D5AE9C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D5AE9C_1		@ track

	.align 2
