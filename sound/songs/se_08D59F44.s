	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D59F44_1:	@ 0x08D59F30
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x5B
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x6E
	.byte	0xC0
	.byte	0x40
	.byte	0xF3
	.byte	0x3C
	.byte	0x78
	.byte	0xA4
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D59F44
se_08D59F44:	@ 0x08D59F44
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D59F44_1		@ track

	.align 2
