	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D5ACCC_1:	@ 0x08D5ACB8
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x7E
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x7F
	.byte	0xBA
	.byte	0x46
	.byte	0xD8
	.byte	0x2F
	.byte	0x38
	.byte	0x8C
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global gSong_08D5ACCC
gSong_08D5ACCC:	@ 0x08D5ACCC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	192		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D5ACCC_1		@ track

	.align 2
