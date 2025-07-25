	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_kirby_ability_1:	@ 0x08D54DEC
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x7E
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x5C
	.byte	0xBA
	.byte	0x50
	.byte	0xEB
	.byte	0x22
	.byte	0x7F
	.byte	0x90
	.byte	0xBA
	.byte	0x01
	.byte	0x97
	.byte	0xE3
	.byte	0x23
	.byte	0x94
	.byte	0xB1


@********************** Track  2 **********************@

se_kirby_ability_2:	@ 0x08D54E03
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x7E
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x5C
	.byte	0xC2
	.byte	0x1E
	.byte	0xC4
	.byte	0x28
	.byte	0xC5
	.byte	0x02
	.byte	0xBA
	.byte	0x50
	.byte	0xEB
	.byte	0x24
	.byte	0x5C
	.byte	0x90
	.byte	0xBA
	.byte	0x01
	.byte	0x96
	.byte	0xE3
	.byte	0x25
	.byte	0x94
	.byte	0xB1


@********************** Track  3 **********************@

se_kirby_ability_3:	@ 0x08D54E1E
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x2E
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x49
	.byte	0xBA
	.byte	0x46
	.byte	0xD2
	.byte	0x50
	.byte	0x7F
	.byte	0x83
	.byte	0xD1
	.byte	0x4A
	.byte	0x82
	.byte	0x43
	.byte	0x82
	.byte	0x39
	.byte	0x82
	.byte	0x3F
	.byte	0x82
	.byte	0x43
	.byte	0x82
	.byte	0x47
	.byte	0x82
	.byte	0x4C
	.byte	0x82
	.byte	0x51
	.byte	0x82
	.byte	0x55
	.byte	0x82
	.byte	0x59
	.byte	0x4C
	.byte	0x82
	.byte	0x60
	.byte	0x30
	.byte	0x82
	.byte	0xBA
	.byte	0x05
	.byte	0xD8
	.byte	0x63
	.byte	0x14
	.byte	0x89
	.byte	0xD7
	.byte	0x64
	.byte	0x18
	.byte	0x89
	.byte	0xD4
	.byte	0x65
	.byte	0x14
	.byte	0x85
	.byte	0xB1

@******************************************************@

	.global se_kirby_ability
se_kirby_ability:	@ 0x08D54E54
	.byte	3		@ trackCount
	.byte	0		@ blockCount
	.byte	255		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_kirby_ability_1		@ track
	.word	se_kirby_ability_2		@ track
	.word	se_kirby_ability_3		@ track

	.align 2
