	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D5F990_1:	@ 0x08D5F97C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x5F
	.byte	0xC4
	.byte	0x1E
	.byte	0xC2
	.byte	0x12
	.byte	0xBE
	.byte	0x2F
	.byte	0xBF
	.byte	0x40
	.byte	0xD9
	.byte	0x34
	.byte	0x5C
	.byte	0xB0
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global se_08D5F990
se_08D5F990:	@ 0x08D5F990
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup007		@ voicegroup/tone

	.word	se_08D5F990_1		@ track

	.align 2
