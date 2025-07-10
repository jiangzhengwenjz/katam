	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D5EA68_1:	@ 0x08D5EA38
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x3C
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x69
	.byte	0xF5
	.byte	0x3B
	.byte	0x78
	.byte	0xB0
	.byte	0xB1


@********************** Track  2 **********************@

se_08D5EA68_2:	@ 0x08D5EA47
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x3C
	.byte	0xBF
	.byte	0x36
	.byte	0xBE
	.byte	0x78
	.byte	0x81
	.byte	0xF4
	.byte	0x40
	.byte	0x70
	.byte	0xAF
	.byte	0x83
	.byte	0xB1


@********************** Track  3 **********************@

se_08D5EA68_3:	@ 0x08D5EA56
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x3C
	.byte	0xBF
	.byte	0x36
	.byte	0xBE
	.byte	0x78
	.byte	0x83
	.byte	0xF4
	.byte	0x41
	.byte	0x70
	.byte	0xAF
	.byte	0x81
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D5EA68
se_08D5EA68:	@ 0x08D5EA68
	.byte	3		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup007		@ voicegroup/tone

	.word	se_08D5EA68_1		@ track
	.word	se_08D5EA68_2		@ track
	.word	se_08D5EA68_3		@ track

	.align 2
