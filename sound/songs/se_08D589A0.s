	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D589A0_1:	@ 0x08D58990
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x66
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x5A
	.byte	0xD5
	.byte	0x42
	.byte	0x64
	.byte	0x8C
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global se_08D589A0
se_08D589A0:	@ 0x08D589A0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D589A0_1		@ track

	.align 2
