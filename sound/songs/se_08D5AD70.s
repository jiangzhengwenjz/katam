	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D5AD70_1:	@ 0x08D5ACD8
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x5A
	.byte	0xBD
	.byte	0x0E
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x46
	.byte	0xBA
	.byte	0x41
	.byte	0xC0
	.byte	0x43
	.byte	0xD2
	.byte	0x32
	.byte	0x38
	.byte	0x86
	.byte	0x37
	.byte	0x86
	.byte	0x3B
	.byte	0x86
	.byte	0xD3
	.byte	0x3E
	.byte	0x8B
	.byte	0xD0
	.byte	0x42
	.byte	0x81
	.byte	0xD3
	.byte	0x43
	.byte	0x8A
	.byte	0xD1
	.byte	0x3D
	.byte	0x14
	.byte	0x82
	.byte	0xDD
	.byte	0x3E
	.byte	0x38
	.byte	0x8E
	.byte	0xB1


@********************** Track  2 **********************@

se_08D5AD70_2:	@ 0x08D5AD00
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x05
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x5A
	.byte	0xBA
	.byte	0x46
	.byte	0xD4
	.byte	0x32
	.byte	0x50
	.byte	0x86
	.byte	0x37
	.byte	0x86
	.byte	0x3B
	.byte	0x86
	.byte	0x3E
	.byte	0x8B
	.byte	0xD0
	.byte	0x42
	.byte	0x81
	.byte	0xD5
	.byte	0x43
	.byte	0x8A
	.byte	0xD1
	.byte	0x3D
	.byte	0x2C
	.byte	0x82
	.byte	0xDD
	.byte	0x3E
	.byte	0x50
	.byte	0x8E
	.byte	0xB1


@********************** Track  3 **********************@

se_08D5AD70_3:	@ 0x08D5AD23
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x50
	.byte	0xBF
	.byte	0x7F
	.byte	0xBE
	.byte	0x53
	.byte	0xBA
	.byte	0x32
	.byte	0xC0
	.byte	0x43
	.byte	0x81
	.byte	0xD4
	.byte	0x4A
	.byte	0x38
	.byte	0x86
	.byte	0x4F
	.byte	0x86
	.byte	0x53
	.byte	0x86
	.byte	0x56
	.byte	0x8B
	.byte	0xD0
	.byte	0x5A
	.byte	0x81
	.byte	0xD5
	.byte	0x5B
	.byte	0x8A
	.byte	0xD1
	.byte	0x55
	.byte	0x14
	.byte	0x82
	.byte	0xDD
	.byte	0x56
	.byte	0x38
	.byte	0x8E
	.byte	0xB1


@********************** Track  4 **********************@

se_08D5AD70_4:	@ 0x08D5AD49
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x54
	.byte	0xBF
	.byte	0x00
	.byte	0xBE
	.byte	0x53
	.byte	0xBA
	.byte	0x32
	.byte	0xC0
	.byte	0x46
	.byte	0x82
	.byte	0xD4
	.byte	0x4A
	.byte	0x38
	.byte	0x86
	.byte	0x4F
	.byte	0x86
	.byte	0x53
	.byte	0x86
	.byte	0x56
	.byte	0x8B
	.byte	0xD0
	.byte	0x5A
	.byte	0x81
	.byte	0xD5
	.byte	0x5B
	.byte	0x8A
	.byte	0xD1
	.byte	0x55
	.byte	0x14
	.byte	0x82
	.byte	0xDD
	.byte	0x56
	.byte	0x38
	.byte	0x8E
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global se_08D5AD70
se_08D5AD70:	@ 0x08D5AD70
	.byte	4		@ trackCount
	.byte	0		@ blockCount
	.byte	192		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D5AD70_1		@ track
	.word	se_08D5AD70_2		@ track
	.word	se_08D5AD70_3		@ track
	.word	se_08D5AD70_4		@ track

	.align 2
