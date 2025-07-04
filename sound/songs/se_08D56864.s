	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D56864_1:	@ 0x08D56848
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x14
	.byte	0xBF
	.byte	0x40
	.byte	0xBA
	.byte	0x05
	.byte	0xBE
	.byte	0x7F
	.byte	0xD8
	.byte	0x56
	.byte	0x20
	.byte	0x81
	.byte	0xBE
	.byte	0x43
	.byte	0x81
	.byte	0x28
	.byte	0x84
	.byte	0x22
	.byte	0x82
	.byte	0x12
	.byte	0x81
	.byte	0xB1
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global gSong_08D56864
gSong_08D56864:	@ 0x08D56864
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D56864_1		@ track

	.align 2
