	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D58B44_1:	@ 0x08D58B34
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x5D
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x7D
	.byte	0xE7
	.byte	0x3B
	.byte	0x7F
	.byte	0x98
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global se_08D58B44
se_08D58B44:	@ 0x08D58B44
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D58B44_1		@ track

	.align 2
