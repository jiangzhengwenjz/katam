	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D58BB4_1:	@ 0x08D58B98
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x5E
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x7F
	.byte	0xD1
	.byte	0x39
	.byte	0x38
	.byte	0x84
	.byte	0x3D
	.byte	0x30
	.byte	0x84
	.byte	0x3F
	.byte	0x24
	.byte	0x84
	.byte	0x41
	.byte	0x0C
	.byte	0x83
	.byte	0x45
	.byte	0x04
	.byte	0x89
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global gSong_08D58BB4
gSong_08D58BB4:	@ 0x08D58BB4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D58BB4_1		@ track

	.align 2
