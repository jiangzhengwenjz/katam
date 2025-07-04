	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D5A1C8_1:	@ 0x08D5A194
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x06
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x6C
	.byte	0xF7
	.byte	0x3A
	.byte	0x7F
	.byte	0xB0
	.byte	0xB1


@********************** Track  2 **********************@

gSong_08D5A1C8_2:	@ 0x08D5A1A3
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x06
	.byte	0xBF
	.byte	0x4A
	.byte	0xBE
	.byte	0x2B
	.byte	0xC0
	.byte	0x4A
	.byte	0x8A
	.byte	0xF7
	.byte	0x3A
	.byte	0x70
	.byte	0xAC
	.byte	0x82
	.byte	0xB1


@********************** Track  3 **********************@

gSong_08D5A1C8_3:	@ 0x08D5A1B4
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x06
	.byte	0xBF
	.byte	0x2C
	.byte	0xBE
	.byte	0x19
	.byte	0xC0
	.byte	0x54
	.byte	0x95
	.byte	0xF7
	.byte	0x3A
	.byte	0x64
	.byte	0xA8
	.byte	0x83
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global gSong_08D5A1C8
gSong_08D5A1C8:	@ 0x08D5A1C8
	.byte	3		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup006		@ voicegroup/tone

	.word	gSong_08D5A1C8_1		@ track
	.word	gSong_08D5A1C8_2		@ track
	.word	gSong_08D5A1C8_3		@ track

	.align 2
