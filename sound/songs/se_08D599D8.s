	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D599D8_1:	@ 0x08D599C8
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x63
	.byte	0xBE
	.byte	0x78
	.byte	0xEB
	.byte	0x3C
	.byte	0x78
	.byte	0x9E
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D599D8
se_08D599D8:	@ 0x08D599D8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D599D8_1		@ track

	.align 2
