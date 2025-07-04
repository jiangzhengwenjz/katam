	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D5EDC4_1:	@ 0x08D5EDB0
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x5A
	.byte	0xBD
	.byte	0x26
	.byte	0xBF
	.byte	0x4A
	.byte	0xC4
	.byte	0x00
	.byte	0xBE
	.byte	0x65
	.byte	0xEF
	.byte	0x3C
	.byte	0x78
	.byte	0xB0
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global gSong_08D5EDC4
gSong_08D5EDC4:	@ 0x08D5EDC4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup007		@ voicegroup/tone

	.word	gSong_08D5EDC4_1		@ track

	.align 2
