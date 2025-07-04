	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D5820C_1:	@ 0x08D581EC
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x15
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x78
	.byte	0xD2
	.byte	0x3A
	.byte	0x64
	.byte	0x92
	.byte	0xB1


@********************** Track  2 **********************@

gSong_08D5820C_2:	@ 0x08D581FB
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x13
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x78
	.byte	0x83
	.byte	0xDC
	.byte	0x33
	.byte	0x50
	.byte	0x87
	.byte	0xBE
	.byte	0x36
	.byte	0x88
	.byte	0xB1

@******************************************************@

	.global gSong_08D5820C
gSong_08D5820C:	@ 0x08D5820C
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D5820C_1		@ track
	.word	gSong_08D5820C_2		@ track

	.align 2
