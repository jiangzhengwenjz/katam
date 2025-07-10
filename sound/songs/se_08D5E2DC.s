	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D5E2DC_1:	@ 0x08D5E2C4
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x54
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x20
	.byte	0xBA
	.byte	0x33
	.byte	0xD0
	.byte	0x65
	.byte	0x54
	.byte	0x81
	.byte	0x64
	.byte	0x81
	.byte	0x60
	.byte	0x81
	.byte	0x5B
	.byte	0x81
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global se_08D5E2DC
se_08D5E2DC:	@ 0x08D5E2DC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D5E2DC_1		@ track

	.align 2
