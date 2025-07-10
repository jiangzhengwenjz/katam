	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D5BA08_1:	@ 0x08D5B9F4
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x39
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x5F
	.byte	0xD1
	.byte	0x44
	.byte	0x64
	.byte	0x83
	.byte	0x4B
	.byte	0x40
	.byte	0x8F
	.byte	0xB1
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D5BA08
se_08D5BA08:	@ 0x08D5BA08
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D5BA08_1		@ track

	.align 2
