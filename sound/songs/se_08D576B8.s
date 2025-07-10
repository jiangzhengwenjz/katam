	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D576B8_1:	@ 0x08D576A4
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x58
	.byte	0xBF
	.byte	0x40
	.byte	0xBA
	.byte	0x32
	.byte	0xBE
	.byte	0x78
	.byte	0xEB
	.byte	0x3C
	.byte	0x78
	.byte	0x9C
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D576B8
se_08D576B8:	@ 0x08D576B8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D576B8_1		@ track

	.align 2
