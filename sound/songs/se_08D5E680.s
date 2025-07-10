	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D5E680_1:	@ 0x08D5E668
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x20
	.byte	0xBE
	.byte	0x56
	.byte	0xC2
	.byte	0x1E
	.byte	0xC5
	.byte	0x00
	.byte	0xC3
	.byte	0x00
	.byte	0xBF
	.byte	0x40
	.byte	0xC4
	.byte	0x7C
	.byte	0xD9
	.byte	0x39
	.byte	0x5C
	.byte	0x92
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global se_08D5E680
se_08D5E680:	@ 0x08D5E680
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup007		@ voicegroup/tone

	.word	se_08D5E680_1		@ track

	.align 2
