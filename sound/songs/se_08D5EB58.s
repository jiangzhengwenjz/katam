	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

gSong_08D5EB58_1:	@ 0x08D5EB44
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x5A
	.byte	0xBD
	.byte	0x55
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x28
	.byte	0xBA
	.byte	0x32
	.byte	0xD2
	.byte	0x5E
	.byte	0x7F
	.byte	0x83
	.byte	0x63
	.byte	0x68
	.byte	0x83
	.byte	0xB1

@******************************************************@

	.global gSong_08D5EB58
gSong_08D5EB58:	@ 0x08D5EB58
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup007		@ voicegroup/tone

	.word	gSong_08D5EB58_1		@ track

	.align 2
