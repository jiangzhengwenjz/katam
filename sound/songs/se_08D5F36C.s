	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D5F36C_1:	@ 0x08D5F35C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x47
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x2C
	.byte	0xD5
	.byte	0x3D
	.byte	0x5C
	.byte	0xB0
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global gSong_08D5F36C
gSong_08D5F36C:	@ 0x08D5F36C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	gSong_08D5F36C_1		@ track

	.align 2
