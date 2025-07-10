	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D5F724_1:	@ 0x08D5F710
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x47
	.byte	0xBA
	.byte	0x0A
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x2C
	.byte	0xD5
	.byte	0x3D
	.byte	0x5C
	.byte	0xB0
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D5F724
se_08D5F724:	@ 0x08D5F724
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D5F724_1		@ track

	.align 2
