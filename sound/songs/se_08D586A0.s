	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D586A0_1:	@ 0x08D58678
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x09
	.byte	0xBE
	.byte	0x55
	.byte	0xC2
	.byte	0x00
	.byte	0xC3
	.byte	0x00
	.byte	0xC1
	.byte	0x00
	.byte	0xC0
	.byte	0x50
	.byte	0xD0
	.byte	0x48
	.byte	0x7F
	.byte	0x83
	.byte	0xD3
	.byte	0x4A
	.byte	0x86
	.byte	0xD0
	.byte	0x4C
	.byte	0x78
	.byte	0x83
	.byte	0x4B
	.byte	0x68
	.byte	0x83
	.byte	0x45
	.byte	0x58
	.byte	0x83
	.byte	0xD3
	.byte	0x48
	.byte	0x48
	.byte	0x86
	.byte	0xB1
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global gSong_08D586A0
gSong_08D586A0:	@ 0x08D586A0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D586A0_1		@ track

	.align 2
