	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D581BC_1:	@ 0x08D581A4
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x3D
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x7F
	.byte	0xC1
	.byte	0x07
	.byte	0xC0
	.byte	0x19
	.byte	0xDE
	.byte	0x43
	.byte	0x64
	.byte	0x85
	.byte	0xC0
	.byte	0x55
	.byte	0x83
	.byte	0x6A
	.byte	0x8A
	.byte	0xB1

@******************************************************@

	.global gSong_08D581BC
gSong_08D581BC:	@ 0x08D581BC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D581BC_1		@ track

	.align 2
