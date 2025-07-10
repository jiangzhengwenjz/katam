	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D55644_1:	@ 0x08D55618
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x0D
	.byte	0xBF
	.byte	0x40
	.byte	0xBA
	.byte	0x0A
	.byte	0xBE
	.byte	0x32
	.byte	0xC1
	.byte	0x07
	.byte	0xC0
	.byte	0x04
	.byte	0xD3
	.byte	0x45
	.byte	0x20
	.byte	0x81
	.byte	0xBE
	.byte	0x71
	.byte	0xC0
	.byte	0x19
	.byte	0x81
	.byte	0xBE
	.byte	0x40
	.byte	0xC0
	.byte	0x2F
	.byte	0x81
	.byte	0xBE
	.byte	0x21
	.byte	0xC0
	.byte	0x44
	.byte	0x81
	.byte	0x5A
	.byte	0x81
	.byte	0x6F
	.byte	0x81
	.byte	0x7F
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D55644
se_08D55644:	@ 0x08D55644
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D55644_1		@ track

	.align 2
