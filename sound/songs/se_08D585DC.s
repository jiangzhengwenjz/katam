	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D585DC_1:	@ 0x08D585C4
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x13
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x5D
	.byte	0xDB
	.byte	0x31
	.byte	0x64
	.byte	0x8A
	.byte	0xBE
	.byte	0x28
	.byte	0x81
	.byte	0x14
	.byte	0x81
	.byte	0x0A
	.byte	0x86
	.byte	0xB1
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D585DC
se_08D585DC:	@ 0x08D585DC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D585DC_1		@ track

	.align 2
