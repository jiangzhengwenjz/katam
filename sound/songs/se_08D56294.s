	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D56294_1:	@ 0x08D5627C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x15
	.byte	0xBF
	.byte	0x40
	.byte	0xBA
	.byte	0x28
	.byte	0xBE
	.byte	0x78
	.byte	0xD6
	.byte	0x2B
	.byte	0x7F
	.byte	0x83
	.byte	0xBE
	.byte	0x3E
	.byte	0x83
	.byte	0x25
	.byte	0x81
	.byte	0xB1
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global gSong_08D56294
gSong_08D56294:	@ 0x08D56294
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D56294_1		@ track

	.align 2
