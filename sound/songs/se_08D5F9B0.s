	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D5F9B0_1:	@ 0x08D5F99C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x5F
	.byte	0xC4
	.byte	0x1E
	.byte	0xC2
	.byte	0x12
	.byte	0xBE
	.byte	0x33
	.byte	0xBF
	.byte	0x40
	.byte	0xD9
	.byte	0x32
	.byte	0x5C
	.byte	0xB0
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global gSong_08D5F9B0
gSong_08D5F9B0:	@ 0x08D5F9B0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup007		@ voicegroup/tone

	.word	gSong_08D5F9B0_1		@ track

	.align 2
