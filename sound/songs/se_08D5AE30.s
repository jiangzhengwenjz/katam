	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D5AE30_1:	@ 0x08D5ADA8
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x5A
	.byte	0xBD
	.byte	0x01
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x62
	.byte	0xBA
	.byte	0x7D
	.byte	0xD7
	.byte	0x48
	.byte	0x64
	.byte	0x90
	.byte	0xD4
	.byte	0x4F
	.byte	0x88
	.byte	0xD7
	.byte	0x58
	.byte	0x48
	.byte	0x90
	.byte	0xD4
	.byte	0x4F
	.byte	0x64
	.byte	0x88
	.byte	0xD5
	.byte	0x50
	.byte	0x88
	.byte	0x4B
	.byte	0x88
	.byte	0x50
	.byte	0x88
	.byte	0xD9
	.byte	0x54
	.byte	0x48
	.byte	0x90
	.byte	0xD5
	.byte	0x50
	.byte	0x64
	.byte	0x88
	.byte	0xDB
	.byte	0x4F
	.byte	0x8C
	.byte	0xB1


@********************** Track  2 **********************@

se_08D5AE30_2:	@ 0x08D5ADD6
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x0E
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x1D
	.byte	0xBA
	.byte	0x7D
	.byte	0xD5
	.byte	0x3C
	.byte	0x64
	.byte	0x90
	.byte	0xD4
	.byte	0x3B
	.byte	0x88
	.byte	0xD5
	.byte	0x3A
	.byte	0x90
	.byte	0xD4
	.byte	0x39
	.byte	0x88
	.byte	0xD6
	.byte	0x38
	.byte	0x90
	.byte	0xE1
	.byte	0x33
	.byte	0x98
	.byte	0xD4
	.byte	0x38
	.byte	0x88
	.byte	0xDB
	.byte	0x37
	.byte	0xA0
	.byte	0xD1
	.byte	0x42
	.byte	0x48
	.byte	0x82
	.byte	0xD7
	.byte	0x43
	.byte	0x64
	.byte	0x88
	.byte	0xB1


@********************** Track  3 **********************@

se_08D5AE30_3:	@ 0x08D5AE02
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x08
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x27
	.byte	0xBA
	.byte	0x7D
	.byte	0xD5
	.byte	0x3C
	.byte	0x64
	.byte	0x90
	.byte	0xD4
	.byte	0x3B
	.byte	0x88
	.byte	0xD5
	.byte	0x3A
	.byte	0x90
	.byte	0xD4
	.byte	0x39
	.byte	0x88
	.byte	0xD6
	.byte	0x38
	.byte	0x90
	.byte	0xE1
	.byte	0x33
	.byte	0x98
	.byte	0xD5
	.byte	0x38
	.byte	0x88
	.byte	0xDB
	.byte	0x37
	.byte	0xA0
	.byte	0xD1
	.byte	0x42
	.byte	0x48
	.byte	0x82
	.byte	0xD7
	.byte	0x43
	.byte	0x64
	.byte	0x88
	.byte	0xB1
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D5AE30
se_08D5AE30:	@ 0x08D5AE30
	.byte	3		@ trackCount
	.byte	0		@ blockCount
	.byte	192		@ priority
	.byte	128		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	se_08D5AE30_1		@ track
	.word	se_08D5AE30_2		@ track
	.word	se_08D5AE30_3		@ track

	.align 2
