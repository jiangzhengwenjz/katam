	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D5B9C4_1:	@ 0x08D5B954
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x24
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x5A
	.byte	0xBA
	.byte	0x3C
	.byte	0xE4
	.byte	0x3D
	.byte	0x7F
	.byte	0x95
	.byte	0xB1


@********************** Track  2 **********************@

se_08D5B9C4_2:	@ 0x08D5B965
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x2E
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x5B
	.byte	0xC1
	.byte	0x0C
	.byte	0xBA
	.byte	0x3C
	.byte	0xBE
	.byte	0x7F
	.byte	0xD1
	.byte	0x36
	.byte	0x68
	.byte	0x82
	.byte	0xBE
	.byte	0x7E
	.byte	0xD1
	.byte	0x3C
	.byte	0x81
	.byte	0xBE
	.byte	0x77
	.byte	0x81
	.byte	0x6C
	.byte	0xD1
	.byte	0x3B
	.byte	0x81
	.byte	0xBE
	.byte	0x5F
	.byte	0x81
	.byte	0x4B
	.byte	0xD1
	.byte	0x31
	.byte	0x81
	.byte	0xBE
	.byte	0x47
	.byte	0x81
	.byte	0x42
	.byte	0xD1
	.byte	0x31
	.byte	0x50
	.byte	0x81
	.byte	0xBE
	.byte	0x3D
	.byte	0x81
	.byte	0x39
	.byte	0xD1
	.byte	0x30
	.byte	0x81
	.byte	0xBE
	.byte	0x34
	.byte	0x81
	.byte	0x2F
	.byte	0xD1
	.byte	0x81
	.byte	0xBE
	.byte	0x2A
	.byte	0x81
	.byte	0x26
	.byte	0xD1
	.byte	0x81
	.byte	0xBE
	.byte	0x21
	.byte	0x81
	.byte	0x1C
	.byte	0xD1
	.byte	0x2F
	.byte	0x48
	.byte	0x81
	.byte	0xBE
	.byte	0x18
	.byte	0x81
	.byte	0x13
	.byte	0xD1
	.byte	0x2F
	.byte	0x44
	.byte	0x81
	.byte	0xBE
	.byte	0x0E
	.byte	0x81
	.byte	0x0A
	.byte	0xD1
	.byte	0x2F
	.byte	0x3C
	.byte	0x82
	.byte	0x2F
	.byte	0x34
	.byte	0x82
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D5B9C4
se_08D5B9C4:	@ 0x08D5B9C4
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D5B9C4_1		@ track
	.word	se_08D5B9C4_2		@ track

	.align 2
