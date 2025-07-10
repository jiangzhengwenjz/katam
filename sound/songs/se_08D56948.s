	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D56948_1:	@ 0x08D56924
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x09
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x3E
	.byte	0xC2
	.byte	0x28
	.byte	0xC4
	.byte	0x32
	.byte	0xBA
	.byte	0x32
	.byte	0xCF
	.byte	0x5B
	.byte	0x44
	.byte	0xA8
se_08D56948_Patt_08D56938:
	.byte	0x98
	.byte	0xA8
	.byte	0xB2
	.word	se_08D56948_Patt_08D56938
	.byte	0x98
	.byte	0xB0
	.byte	0xA5
	.byte	0x81
	.byte	0xCE
	.byte	0x5B
	.byte	0xB1
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D56948
se_08D56948:	@ 0x08D56948
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D56948_1		@ track

	.align 2
