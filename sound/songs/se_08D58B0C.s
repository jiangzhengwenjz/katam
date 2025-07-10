	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D58B0C_1:	@ 0x08D58AF8
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x69
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x7F
	.byte	0x86
	.byte	0xE1
	.byte	0x44
	.byte	0x78
	.byte	0x81
	.byte	0xBE
	.byte	0x6E
	.byte	0x97
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global se_08D58B0C
se_08D58B0C:	@ 0x08D58B0C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D58B0C_1		@ track

	.align 2
