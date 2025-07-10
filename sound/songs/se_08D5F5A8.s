	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D5F5A8_1:	@ 0x08D5F588
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x07
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x7F
	.byte	0xE7
	.byte	0x35
	.byte	0x7F
	.byte	0x9C
	.byte	0xB1


@********************** Track  2 **********************@

se_08D5F5A8_2:	@ 0x08D5F597
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x08
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x37
	.byte	0xD9
	.byte	0x28
	.byte	0x5C
	.byte	0x8C
	.byte	0xDC
	.byte	0x28
	.byte	0x28
	.byte	0x98
	.byte	0xB1

@******************************************************@

	.global se_08D5F5A8
se_08D5F5A8:	@ 0x08D5F5A8
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup006		@ voicegroup/tone

	.word	se_08D5F5A8_1		@ track
	.word	se_08D5F5A8_2		@ track

	.align 2
