	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global se_08D558B8_1
se_08D558B8_1:	@ 0x08D55870
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 21
se_08D558B8_1_1:
	.byte	VOL	, v080
	.byte	LFOS	, 0
	.byte	MOD	, 10
	.byte	LFODL	, 0
	.byte	PRIO	, 30
	.byte	BEND	, c_v+16
	.byte		N28	, En2, v100
	.byte	W09
	.byte	VOL	, v094
	.byte	W01
	.byte		v082
	.byte	W01
	.byte		v061
	.byte	W01
	.byte		v053
	.byte	W01
	.byte		v042
	.byte	W01
	.byte		v034
	.byte	W01
	.byte		v025
	.byte	W01
	.byte		v019
	.byte	GOTO	
		.word	se_08D558B8_1_1
	.byte	W01
	.byte		v012
	.byte	W01
	.byte		v007
	.byte	W01
	.byte		v015
	.byte	W01
	.byte		v012
	.byte	W01
	.byte		v009
	.byte	W01
	.byte		v007
	.byte	W01
	.byte		v004
	.byte	W01
	.byte		v030
	.byte	W01
	.byte		v027
	.byte	W01
	.byte		v019
	.byte	W01
	.byte		v017
	.byte	W01
	.byte		v011
	.byte	W01
	.byte		v005
	.byte	W66
	.byte	W01
	.byte	FINE

	.align 2
	.global se_08D558B8
se_08D558B8:	@ 0x08D558B8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D558B8_1		@ track
