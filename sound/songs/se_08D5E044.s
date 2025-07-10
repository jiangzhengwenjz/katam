	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D5E044_1:	@ 0x08D5E018
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x06
	.byte	0xBF
	.byte	0x54
	.byte	0xBE
	.byte	0x5E
	.byte	0xEF
	.byte	0x3A
	.byte	0x78
	.byte	0xA8
	.byte	0xB1


@********************** Track  2 **********************@

se_08D5E044_2:	@ 0x08D5E027
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x06
	.byte	0xBF
	.byte	0x2C
	.byte	0xBE
	.byte	0x5E
	.byte	0x86
	.byte	0xEF
	.byte	0x39
	.byte	0x34
	.byte	0xA6
	.byte	0xB1


@********************** Track  3 **********************@

se_08D5E044_3:	@ 0x08D5E035
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x06
	.byte	0xBF
	.byte	0x2C
	.byte	0xBE
	.byte	0x5E
	.byte	0x92
	.byte	0xEF
	.byte	0x39
	.byte	0x14
	.byte	0xA2
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global se_08D5E044
se_08D5E044:	@ 0x08D5E044
	.byte	3		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup006		@ voicegroup/tone

	.word	se_08D5E044_1		@ track
	.word	se_08D5E044_2		@ track
	.word	se_08D5E044_3		@ track

	.align 2
