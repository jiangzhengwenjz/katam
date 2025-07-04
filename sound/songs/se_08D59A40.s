	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D59A40_1:	@ 0x08D59A2C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x5F
	.byte	0xBF
	.byte	0x40
	.byte	0xC2
	.byte	0x0F
	.byte	0xBE
	.byte	0x2F
	.byte	0xC4
	.byte	0x28
	.byte	0xEB
	.byte	0x30
	.byte	0x64
	.byte	0xA0
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global gSong_08D59A40
gSong_08D59A40:	@ 0x08D59A40
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D59A40_1		@ track

	.align 2
