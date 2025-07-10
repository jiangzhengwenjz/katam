	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D5A99C_1:	@ 0x08D5A970
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x0D
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x5E
	.byte	0xC1
	.byte	0x0A
	.byte	0xD0
	.byte	0x2D
	.byte	0x34
	.byte	0xD0
	.byte	0x32
	.byte	0x28
	.byte	0x81
	.byte	0x37
	.byte	0x24
	.byte	0x81
	.byte	0x3C
	.byte	0x30
	.byte	0x81
	.byte	0x41
	.byte	0x28
	.byte	0x83
	.byte	0xC0
	.byte	0x04
	.byte	0xD2
	.byte	0x45
	.byte	0x81
	.byte	0xC0
	.byte	0x1B
	.byte	0x81
	.byte	0x50
	.byte	0x81
	.byte	0x74
	.byte	0x89
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D5A99C
se_08D5A99C:	@ 0x08D5A99C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D5A99C_1		@ track

	.align 2
