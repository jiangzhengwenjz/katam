	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D588FC_1:	@ 0x08D588E8
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x66
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x55
	.byte	0xC1
	.byte	0x0A
	.byte	0xDB
	.byte	0x43
	.byte	0x4C
	.byte	0x92
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D588FC
se_08D588FC:	@ 0x08D588FC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D588FC_1		@ track

	.align 2
