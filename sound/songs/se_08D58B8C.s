	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D58B8C_1:	@ 0x08D58B74
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x05
	.byte	0xBE
	.byte	0x64
	.byte	0xC2
	.byte	0x00
	.byte	0xC4
	.byte	0x0A
	.byte	0xC3
	.byte	0x00
	.byte	0xC1
	.byte	0x00
	.byte	0xC0
	.byte	0x50
	.byte	0xE9
	.byte	0x4C
	.byte	0x5C
	.byte	0x9C
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global se_08D58B8C
se_08D58B8C:	@ 0x08D58B8C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup005		@ voicegroup/tone

	.word	se_08D58B8C_1		@ track

	.align 2
