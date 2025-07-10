	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D5B9E8_1:	@ 0x08D5B9D4
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x24
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x5A
	.byte	0xBA
	.byte	0x3B
	.byte	0xE4
	.byte	0x3D
	.byte	0x50
	.byte	0x95
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D5B9E8
se_08D5B9E8:	@ 0x08D5B9E8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D5B9E8_1		@ track

	.align 2
