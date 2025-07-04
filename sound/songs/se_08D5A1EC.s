	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D5A1EC_1:	@ 0x08D5A1DC
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x00
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x7F
	.byte	0xEF
	.byte	0x3B
	.byte	0x7C
	.byte	0xA2
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global gSong_08D5A1EC
gSong_08D5A1EC:	@ 0x08D5A1EC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup008		@ voicegroup/tone

	.word	gSong_08D5A1EC_1		@ track

	.align 2
