	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D561CC_1:	@ 0x08D561B8
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x3F
	.byte	0xBE
	.byte	0x47
	.byte	0xBA
	.byte	0x32
	.byte	0xD0
	.byte	0x3F
	.byte	0x7F
	.byte	0x82
	.byte	0xD7
	.byte	0x41
	.byte	0x88
	.byte	0xB1
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global gSong_08D561CC
gSong_08D561CC:	@ 0x08D561CC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D561CC_1		@ track

	.align 2
