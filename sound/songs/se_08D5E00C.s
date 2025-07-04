	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D5E00C_1:	@ 0x08D5DFF8
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x4F
	.byte	0xBF
	.byte	0x40
	.byte	0xBA
	.byte	0x32
	.byte	0xBE
	.byte	0x78
	.byte	0xEF
	.byte	0x39
	.byte	0x78
	.byte	0xB0
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global gSong_08D5E00C
gSong_08D5E00C:	@ 0x08D5E00C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D5E00C_1		@ track

	.align 2
