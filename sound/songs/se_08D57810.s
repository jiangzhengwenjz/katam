	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D57810_1:	@ 0x08D577F8
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x69
	.byte	0xBF
	.byte	0x40
	.byte	0xBA
	.byte	0x32
	.byte	0xBE
	.byte	0x7F
	.byte	0xDE
	.byte	0x3B
	.byte	0x50
	.byte	0x85
	.byte	0xBE
	.byte	0x68
	.byte	0x82
	.byte	0x3E
	.byte	0x82
	.byte	0x89
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global se_08D57810
se_08D57810:	@ 0x08D57810
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D57810_1		@ track

	.align 2
