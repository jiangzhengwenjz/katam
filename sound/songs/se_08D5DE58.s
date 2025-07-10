	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D5DE58_1:	@ 0x08D5DE34
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x10
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x32
	.byte	0xBA
	.byte	0x46
	.byte	0xE6
	.byte	0x3C
	.byte	0x7F
	.byte	0x97
	.byte	0xB1


@********************** Track  2 **********************@

se_08D5DE58_2:	@ 0x08D5DE45
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x54
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x61
	.byte	0xBA
	.byte	0x1E
	.byte	0xD1
	.byte	0x64
	.byte	0x50
	.byte	0x82
	.byte	0x5F
	.byte	0x83
	.byte	0x62
	.byte	0x82
	.byte	0xB1

@******************************************************@

	.global se_08D5DE58
se_08D5DE58:	@ 0x08D5DE58
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D5DE58_1		@ track
	.word	se_08D5DE58_2		@ track

	.align 2
