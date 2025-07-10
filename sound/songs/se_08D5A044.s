	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D5A044_1:	@ 0x08D5A020
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x12
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x5F
	.byte	0xC1
	.byte	0x11
	.byte	0xC0
	.byte	0x40
	.byte	0xD0
	.byte	0x5B
	.byte	0x54
	.byte	0x81
	.byte	0x5D
	.byte	0x81
	.byte	0xD1
	.byte	0x57
	.byte	0x68
	.byte	0x82
	.byte	0x51
	.byte	0x82
	.byte	0x4B
	.byte	0x54
	.byte	0x83
	.byte	0x51
	.byte	0x3C
	.byte	0x82
	.byte	0x4B
	.byte	0x28
	.byte	0x87
	.byte	0xB1

@******************************************************@

	.global se_08D5A044
se_08D5A044:	@ 0x08D5A044
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D5A044_1		@ track

	.align 2
