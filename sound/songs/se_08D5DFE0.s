	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D5DFE0_1:	@ 0x08D5DF8C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x27
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x32
	.byte	0xD5
	.byte	0x3F
	.byte	0x5C
	.byte	0x86
	.byte	0xDB
	.byte	0x3F
	.byte	0x64
	.byte	0x8D
	.byte	0x3F
	.byte	0x14
	.byte	0x8E
	.byte	0x3F
	.byte	0x10
	.byte	0x8D
	.byte	0x3F
	.byte	0x0C
	.byte	0x8E
	.byte	0x3E
	.byte	0x08
	.byte	0x9C
	.byte	0xB1


@********************** Track  2 **********************@

gSong_08D5DFE0_2:	@ 0x08D5DFAB
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x79
	.byte	0xBF
	.byte	0x36
	.byte	0xBE
	.byte	0x78
	.byte	0xC0
	.byte	0x40
	.byte	0xE9
	.byte	0x3C
	.byte	0x64
	.byte	0x9F
	.byte	0x81
	.byte	0x3C
	.byte	0x08
	.byte	0xA0
	.byte	0x83
	.byte	0xB1


@********************** Track  3 **********************@

gSong_08D5DFE0_3:	@ 0x08D5DFBF
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x79
	.byte	0xBF
	.byte	0x4A
	.byte	0xBE
	.byte	0x28
	.byte	0xC0
	.byte	0x40
	.byte	0x8F
	.byte	0xE9
	.byte	0x3C
	.byte	0x34
	.byte	0xAB
	.byte	0x81
	.byte	0xB1


@********************** Track  4 **********************@

gSong_08D5DFE0_4:	@ 0x08D5DFD0
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x79
	.byte	0xBF
	.byte	0x36
	.byte	0xBE
	.byte	0x1E
	.byte	0xC0
	.byte	0x40
	.byte	0x9A
	.byte	0xE9
	.byte	0x3C
	.byte	0x20
	.byte	0xA6
	.byte	0xB1

@******************************************************@

	.global gSong_08D5DFE0
gSong_08D5DFE0:	@ 0x08D5DFE0
	.byte	4		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	gSong_08D5DFE0_1		@ track
	.word	gSong_08D5DFE0_2		@ track
	.word	gSong_08D5DFE0_3		@ track
	.word	gSong_08D5DFE0_4		@ track

	.align 2
