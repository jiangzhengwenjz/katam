	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D5856C_1:	@ 0x08D5855C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x66
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x32
	.byte	0xD4
	.byte	0x43
	.byte	0x64
	.byte	0x8C
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global gSong_08D5856C
gSong_08D5856C:	@ 0x08D5856C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D5856C_1		@ track

	.align 2
