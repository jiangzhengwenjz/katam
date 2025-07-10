	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D5859C_1:	@ 0x08D58578
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x02
	.byte	0xBE
	.byte	0x64
	.byte	0xC2
	.byte	0x00
	.byte	0xC4
	.byte	0x00
	.byte	0xC3
	.byte	0x00
	.byte	0xC1
	.byte	0x00
	.byte	0xC0
	.byte	0x40
	.byte	0xD6
	.byte	0x3F
	.byte	0x78
	.byte	0x82
	.byte	0xBE
	.byte	0x44
	.byte	0x81
	.byte	0x39
	.byte	0x81
	.byte	0x2B
	.byte	0x81
	.byte	0x1E
	.byte	0x81
	.byte	0x14
	.byte	0x86
	.byte	0xB1
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D5859C
se_08D5859C:	@ 0x08D5859C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup005		@ voicegroup/tone

	.word	se_08D5859C_1		@ track

	.align 2
