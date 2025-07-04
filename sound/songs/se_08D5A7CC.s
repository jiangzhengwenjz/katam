	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D5A7CC_1:	@ 0x08D5A7BC
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x02
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x7F
	.byte	0xEF
	.byte	0x3C
	.byte	0x7F
	.byte	0xA2
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global gSong_08D5A7CC
gSong_08D5A7CC:	@ 0x08D5A7CC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup008		@ voicegroup/tone

	.word	gSong_08D5A7CC_1		@ track

	.align 2
