	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D5EB38_1:	@ 0x08D5EB24
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x03
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x64
	.byte	0xBA
	.byte	0x32
	.byte	0xD5
	.byte	0x19
	.byte	0x7F
	.byte	0xB0
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global gSong_08D5EB38
gSong_08D5EB38:	@ 0x08D5EB38
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup007		@ voicegroup/tone

	.word	gSong_08D5EB38_1		@ track

	.align 2
