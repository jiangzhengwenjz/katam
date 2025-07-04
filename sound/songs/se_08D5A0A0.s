	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D5A0A0_1:	@ 0x08D5A080
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x2E
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x45
	.byte	0xC1
	.byte	0x11
	.byte	0xC0
	.byte	0x40
	.byte	0xD1
	.byte	0x49
	.byte	0x38
	.byte	0x82
	.byte	0x4A
	.byte	0x4C
	.byte	0x82
	.byte	0x4D
	.byte	0x82
	.byte	0x4B
	.byte	0x38
	.byte	0x82
	.byte	0x49
	.byte	0x24
	.byte	0x8A
	.byte	0xB1
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global gSong_08D5A0A0
gSong_08D5A0A0:	@ 0x08D5A0A0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D5A0A0_1		@ track

	.align 2
