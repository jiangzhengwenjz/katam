	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D5A014_1:	@ 0x08D59FF0
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x14
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x7F
	.byte	0xC1
	.byte	0x03
	.byte	0xBE
	.byte	0x7F
	.byte	0xC0
	.byte	0x40
	.byte	0xD5
	.byte	0x54
	.byte	0x38
	.byte	0x81
	.byte	0xBE
	.byte	0x4A
	.byte	0x81
	.byte	0x37
	.byte	0x81
	.byte	0xC0
	.byte	0x49
	.byte	0x81
	.byte	0xBE
	.byte	0x1E
	.byte	0xC0
	.byte	0x55
	.byte	0x81
	.byte	0x62
	.byte	0x87
	.byte	0xB1

@******************************************************@

	.global gSong_08D5A014
gSong_08D5A014:	@ 0x08D5A014
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D5A014_1		@ track

	.align 2
