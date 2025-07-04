	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D556AC_1:	@ 0x08D55684
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x0D
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x5A
	.byte	0xBA
	.byte	0x31
	.byte	0xC2
	.byte	0x64
	.byte	0xC4
	.byte	0x28
	.byte	0xC5
	.byte	0x01
	.byte	0xBE
	.byte	0x42
	.byte	0xD8
	.byte	0x65
	.byte	0x30
	.byte	0x81
	.byte	0xBE
	.byte	0x66
	.byte	0x81
	.byte	0x7F
	.byte	0x82
	.byte	0x63
	.byte	0x81
	.byte	0x50
	.byte	0x81
	.byte	0x36
	.byte	0x81
	.byte	0x20
	.byte	0x81
	.byte	0x0E
	.byte	0x81
	.byte	0xB1

@******************************************************@

	.global gSong_08D556AC
gSong_08D556AC:	@ 0x08D556AC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D556AC_1		@ track

	.align 2
