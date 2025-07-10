	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D5F3CC_1:	@ 0x08D5F3A8
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x01
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x56
	.byte	0xEF
	.byte	0x3C
	.byte	0x70
	.byte	0xB0
	.byte	0xB1


@********************** Track  2 **********************@

se_08D5F3CC_2:	@ 0x08D5F3B7
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x01
	.byte	0xBF
	.byte	0x2C
	.byte	0xBE
	.byte	0x2F
	.byte	0x83
	.byte	0xC0
	.byte	0x48
	.byte	0x86
	.byte	0xEF
	.byte	0x3C
	.byte	0x70
	.byte	0xAC
	.byte	0x83
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D5F3CC
se_08D5F3CC:	@ 0x08D5F3CC
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup008		@ voicegroup/tone

	.word	se_08D5F3CC_1		@ track
	.word	se_08D5F3CC_2		@ track

	.align 2
