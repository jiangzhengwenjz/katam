	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D59F60_1:	@ 0x08D59F50
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x06
	.byte	0xBE
	.byte	0x4D
	.byte	0xBF
	.byte	0x40
	.byte	0xEF
	.byte	0x3B
	.byte	0x64
	.byte	0xA2
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global se_08D59F60
se_08D59F60:	@ 0x08D59F60
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup005		@ voicegroup/tone

	.word	se_08D59F60_1		@ track

	.align 2
