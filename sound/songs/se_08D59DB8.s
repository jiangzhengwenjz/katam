	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D59DB8_1:	@ 0x08D59DA4
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x3F
	.byte	0xBE
	.byte	0x3C
	.byte	0xD0
	.byte	0x3D
	.byte	0x78
	.byte	0x82
	.byte	0x41
	.byte	0x81
	.byte	0xD1
	.byte	0x46
	.byte	0x64
	.byte	0x89
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global gSong_08D59DB8
gSong_08D59DB8:	@ 0x08D59DB8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D59DB8_1		@ track

	.align 2
