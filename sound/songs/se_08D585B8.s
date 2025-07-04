	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D585B8_1:	@ 0x08D585A8
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x66
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x28
	.byte	0xD5
	.byte	0x46
	.byte	0x3C
	.byte	0x8C
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global gSong_08D585B8
gSong_08D585B8:	@ 0x08D585B8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D585B8_1		@ track

	.align 2
