	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D5A894_1:	@ 0x08D5A870
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x3B
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x26
	.byte	0xC0
	.byte	0x40
	.byte	0xD7
	.byte	0x4A
	.byte	0x48
	.byte	0x8C
	.byte	0xB1


@********************** Track  2 **********************@

se_08D5A894_2:	@ 0x08D5A881
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x2B
	.byte	0xC4
	.byte	0x01
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x37
	.byte	0xC0
	.byte	0x40
	.byte	0xD8
	.byte	0x48
	.byte	0x70
	.byte	0x8C
	.byte	0xB1
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D5A894
se_08D5A894:	@ 0x08D5A894
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D5A894_1		@ track
	.word	se_08D5A894_2		@ track

	.align 2
