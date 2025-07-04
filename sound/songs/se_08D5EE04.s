	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D5EE04_1:	@ 0x08D5EDF0
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x5A
	.byte	0xBD
	.byte	0x28
	.byte	0xBF
	.byte	0x40
	.byte	0xC4
	.byte	0x00
	.byte	0xBE
	.byte	0x7D
	.byte	0xFD
	.byte	0x3B
	.byte	0x78
	.byte	0xB0
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global gSong_08D5EE04
gSong_08D5EE04:	@ 0x08D5EE04
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup007		@ voicegroup/tone

	.word	gSong_08D5EE04_1		@ track

	.align 2
