	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D58304_1:	@ 0x08D582CC
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x54
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x16
	.byte	0xD0
	.byte	0x62
	.byte	0x7F
	.byte	0x82
	.byte	0x5F
	.byte	0x81
	.byte	0x68
	.byte	0x68
	.byte	0x81
	.byte	0x6B
	.byte	0x82
	.byte	0x6A
	.byte	0x82
	.byte	0x6D
	.byte	0x4C
	.byte	0x82
	.byte	0x6F
	.byte	0x20
	.byte	0x82
	.byte	0xB1


@********************** Track  2 **********************@

gSong_08D58304_2:	@ 0x08D582EA
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x0D
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x7F
	.byte	0xD1
	.byte	0x32
	.byte	0x7F
	.byte	0x82
	.byte	0xD0
	.byte	0x38
	.byte	0x82
	.byte	0x41
	.byte	0x81
	.byte	0x46
	.byte	0x3C
	.byte	0x81
	.byte	0x49
	.byte	0x2C
	.byte	0x82
	.byte	0x59
	.byte	0x84
	.byte	0xB1

@******************************************************@

	.global gSong_08D58304
gSong_08D58304:	@ 0x08D58304
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D58304_1		@ track
	.word	gSong_08D58304_2		@ track

	.align 2
