	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D5F4C0_1:	@ 0x08D5F490
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
	.byte	0xB0
	.byte	0xB0
	.byte	0xB1


@********************** Track  2 **********************@

se_08D5F4C0_2:	@ 0x08D5F4A0
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
	.byte	0xAE
	.byte	0xB0
	.byte	0xB1


@********************** Track  3 **********************@

se_08D5F4C0_3:	@ 0x08D5F4AF
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
	.byte	0xAA
	.byte	0xB0
	.byte	0xB1
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D5F4C0
se_08D5F4C0:	@ 0x08D5F4C0
	.byte	3		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup006		@ voicegroup/tone

	.word	se_08D5F4C0_1		@ track
	.word	se_08D5F4C0_2		@ track
	.word	se_08D5F4C0_3		@ track

	.align 2
