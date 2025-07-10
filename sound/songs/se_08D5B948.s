	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D5B948_1:	@ 0x08D5B930
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x0D
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x63
	.byte	0xBA
	.byte	0x14
	.byte	0x7B
	.byte	0xD2
	.byte	0x3E
	.byte	0x20
	.byte	0x81
	.byte	0xBE
	.byte	0x66
	.byte	0x81
	.byte	0x39
	.byte	0x81
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global se_08D5B948
se_08D5B948:	@ 0x08D5B948
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	96		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D5B948_1		@ track

	.align 2
