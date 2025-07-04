	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D5A80C_1:	@ 0x08D5A7F4
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x05
	.byte	0xBE
	.byte	0x64
	.byte	0xC2
	.byte	0x00
	.byte	0xC4
	.byte	0x0A
	.byte	0xC3
	.byte	0x00
	.byte	0xC1
	.byte	0x00
	.byte	0xC0
	.byte	0x50
	.byte	0xF7
	.byte	0x40
	.byte	0x7F
	.byte	0xAA
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global gSong_08D5A80C
gSong_08D5A80C:	@ 0x08D5A80C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup005		@ voicegroup/tone

	.word	gSong_08D5A80C_1		@ track

	.align 2
