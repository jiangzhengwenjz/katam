	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global mus_boss_1
mus_boss_1:	@ 0x08D48DC0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 77
	.byte	VOICE	, 67
	.byte	VOL	, v115
	.byte	PAN	, c_v
	.byte	BEND	, c_v
	.byte		N06	, Bn0, v072
	.byte		N06	, Gs1, v120
	.byte	W06
	.byte		N12	, An0, v072
	.byte	W12
	.byte		N06	, Gn0
	.byte	W06
	.byte			Gs1, v120
	.byte	W06
	.byte		N12	, Bn0, v072
	.byte	W12
	.byte		N06	, An0
	.byte	W06
	.byte			Gs1, v120
	.byte	W06
	.byte		N12	, Gn0, v072
	.byte	W12
	.byte		N06	, Bn0
	.byte	W06
	.byte		N12	, An0
	.byte		N06	, Gs1, v120
	.byte	W12
	.byte		N12	, Gn0, v072
	.byte	W12
	.byte		N06	, Bn0
	.byte		N06	, Gs1, v120
	.byte	W06
	.byte		N12	, An0, v072
	.byte	W12
	.byte			Gn0
	.byte	W06
	.byte		N06	, Gs1, v120
	.byte	W06
	.byte			As1, v052
	.byte	W06
	.byte			As1, v056
	.byte	W06
	.byte			As1, v060
	.byte	W06
	.byte			As1, v068
	.byte	W06
	.byte			As1, v072
	.byte	W06
	.byte			As1, v076
	.byte	W06
	.byte			As1, v080
	.byte	W06
	.byte			As1, v088
	.byte	W06
	.byte			As1, v092
	.byte	W06
	.byte			As1, v096
	.byte	W06
	.byte			As1, v100
	.byte	W06
	.byte	VOICE	, 67
mus_boss_1_5:
	.byte	VOL	, v115
	.byte	PAN	, c_v
	.byte	BEND	, c_v
	.byte		N06	, Gs1, v100
	.byte		N24	, Cs3, v040
	.byte	W06
	.byte		N06	, Fs0, v072
	.byte	W06
	.byte			As1, v052
	.byte	W06
	.byte			Fs0, v072
	.byte	W06
	.byte			Gs1, v100
	.byte	W06
	.byte			Fs0, v072
	.byte	W06
	.byte			As1, v080
	.byte	W06
	.byte			Fs0, v092
	.byte	W06
	.byte			Gs1, v100
	.byte	W06
	.byte			Fs0, v072
	.byte	W06
	.byte			As1, v052
	.byte	W06
	.byte			Fs0, v072
	.byte	W06
	.byte			Gs1, v100
	.byte	W06
	.byte			Fs0, v072
	.byte	W06
	.byte			As1, v080
	.byte	W06
	.byte			Fs0, v092
	.byte	W06
mus_boss_1_1:
	.byte		N06	, Gs1, v100
	.byte	W06
	.byte			Fs0, v072
	.byte	W06
	.byte			As1, v052
	.byte	W06
	.byte			Fs0, v072
	.byte	W06
	.byte			Gs1, v100
	.byte	W06
	.byte			Fs0, v072
	.byte	W06
	.byte			As1, v080
	.byte	W06
	.byte			Fs0, v092
	.byte	W06
	.byte			Gs1, v100
	.byte	W06
	.byte			Fs0, v072
	.byte	W06
	.byte			As1, v052
	.byte	W06
	.byte			Fs0, v072
	.byte	W06
	.byte			Gs1, v100
	.byte	W06
	.byte			Fs0, v072
	.byte	W06
	.byte			As1, v080
	.byte	W06
	.byte			Fs0, v092
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	mus_boss_1_1
	.byte		N06	, Gs1, v100
	.byte	W06
	.byte			Fs0, v072
	.byte	W06
	.byte			As1, v052
	.byte	W06
	.byte			Fs0, v072
	.byte	W06
	.byte			Gs1, v100
	.byte	W06
	.byte			Fs0, v072
	.byte	W06
	.byte			As1, v080
	.byte	W06
	.byte			Fs0, v092
	.byte	W06
	.byte			Gs1, v100
	.byte	W06
	.byte			As1, v080
	.byte	W06
	.byte			As1, v092
	.byte	W06
	.byte			Fs0, v072
	.byte	W06
	.byte			Gs1, v100
	.byte	W06
	.byte			As1, v080
	.byte	W06
	.byte			As1, v092
	.byte	W06
	.byte			As1, v100
	.byte	W06
mus_boss_1_2:
	.byte		N06	, Gs1, v100
	.byte	W06
	.byte			Fs0, v072
	.byte	W06
	.byte		N12	, As0, v112
	.byte	W06
	.byte		N06	, Fs0, v004
	.byte	W06
	.byte			Gs1, v100
	.byte	W06
	.byte			Fs0, v072
	.byte	W06
	.byte			As1, v080
	.byte	W06
	.byte			Fs0, v092
	.byte	W06
	.byte			Gs1, v100
	.byte	W06
	.byte			Fs0, v072
	.byte	W06
	.byte		N12	, As0, v112
	.byte	W06
	.byte		N06	, Fs0, v004
	.byte	W06
	.byte			Gs1, v100
	.byte	W06
	.byte			Fs0, v072
	.byte	W06
	.byte			As1, v080
	.byte	W06
	.byte			Fs0, v092
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	mus_boss_1_2
	.byte	PATT	
		.word	mus_boss_1_2
	.byte		N06	, Gs1, v100
	.byte	W06
	.byte			Fs0, v072
	.byte	W06
	.byte		N12	, As0, v112
	.byte	W06
	.byte		N06	, Fs0, v004
	.byte	W06
	.byte			Gs1, v100
	.byte	W06
	.byte			Fs0, v072
	.byte	W06
	.byte			As1, v080
	.byte	W06
	.byte			Fs0, v092
	.byte	W06
	.byte			Gs1, v100
	.byte	W06
	.byte			As1, v072
	.byte	W06
	.byte			As1, v076
	.byte	W06
	.byte			As1, v080
	.byte	W06
	.byte			As1, v088
	.byte	W06
	.byte			As1, v092
	.byte	W06
	.byte			As1, v096
	.byte	W06
	.byte			As1, v100
	.byte	W06
	.byte	PATT	
		.word	mus_boss_1_1
	.byte	PATT	
		.word	mus_boss_1_1
	.byte	PATT	
		.word	mus_boss_1_1
	.byte	PATT	
		.word	mus_boss_1_1
	.byte	PATT	
		.word	mus_boss_1_1
	.byte	PATT	
		.word	mus_boss_1_1
	.byte	PATT	
		.word	mus_boss_1_1
	.byte	PATT	
		.word	mus_boss_1_1
	.byte	PATT	
		.word	mus_boss_1_1
	.byte		N06	, Gs1, v100
	.byte	W06
	.byte			Fs0, v072
	.byte	W06
	.byte			As1, v052
	.byte	W06
	.byte			Fs0, v072
	.byte	W06
	.byte			Gs1, v100
	.byte	W06
	.byte			Fs0, v072
	.byte	W06
	.byte			As1, v080
	.byte	W06
	.byte			Fs0, v092
	.byte	W06
	.byte			Gs1, v100
	.byte	W06
	.byte			As1, v080
	.byte	W06
	.byte			As1, v092
	.byte	W06
	.byte			An0
	.byte	W06
	.byte			As1, v080
	.byte	W06
	.byte			As1, v092
	.byte	W06
	.byte			As1, v100
	.byte	W06
	.byte			Fs0, v092
	.byte	W06
mus_boss_1_3:
	.byte		N06	, Bn0, v072
	.byte		N06	, Gs1, v120
	.byte	W06
	.byte		N12	, An0, v072
	.byte	W12
	.byte		N06	, Gn0
	.byte	W06
	.byte			Gs1, v120
	.byte	W06
	.byte		N12	, Bn0, v072
	.byte	W12
	.byte		N06	, An0
	.byte	W06
	.byte			Gs1, v120
	.byte	W06
	.byte		N12	, Gn0, v072
	.byte	W12
	.byte		N06	, Bn0
	.byte	W06
	.byte		N12	, An0
	.byte		N06	, Gs1, v120
	.byte	W12
	.byte		N12	, Gn0, v072
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	mus_boss_1_3
	.byte	PATT	
		.word	mus_boss_1_3
	.byte	PATT	
		.word	mus_boss_1_3
mus_boss_1_4:
	.byte		N06	, Gs1, v100
	.byte	W06
	.byte			As1, v040
	.byte	W06
	.byte			As1, v052
	.byte	W06
	.byte			Fs0, v072
	.byte	W06
	.byte			Gs1, v100
	.byte	W06
	.byte			Fs0, v072
	.byte	W06
	.byte			As1, v080
	.byte	W06
	.byte			Fs0, v092
	.byte	W06
	.byte			Gs1, v100
	.byte	W06
	.byte			Fs0, v072
	.byte	W06
	.byte			As1, v052
	.byte	W06
	.byte			Fs0, v072
	.byte	W06
	.byte			Gs1, v100
	.byte	W06
	.byte			Fs0, v072
	.byte	W06
	.byte			As1, v080
	.byte	W06
	.byte			As1, v072
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	mus_boss_1_4
	.byte	PATT	
		.word	mus_boss_1_4
	.byte		N06	, Gs1, v100
	.byte	W06
	.byte			As1, v040
	.byte	W06
	.byte			As1, v052
	.byte	W06
	.byte			Fs0, v072
	.byte	W06
	.byte			Gs1, v100
	.byte	W06
	.byte			As1, v060
	.byte	W06
	.byte			As1, v068
	.byte	W06
	.byte			As1, v072
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			As1, v076
	.byte	W06
	.byte			As1, v080
	.byte	W06
	.byte			As1, v088
	.byte	W06
	.byte			As1, v092
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			As1, v096
	.byte	W06
	.byte			As1, v100
	.byte	W06
	.byte	GOTO	
		.word	mus_boss_1_5
	.byte	W96
	.byte	FINE

	@********************** Track  2 **********************@

	.global mus_boss_2
mus_boss_2:	@ 0x08D4904C
	.byte	KEYSH	, 0
	.byte	VOICE	, 68
	.byte	VOL	, v087
	.byte	PAN	, c_v+10
	.byte	MOD	, 1
	.byte	BEND	, c_v
	.byte		N11	, Cn4, v112
	.byte	W12
	.byte		N03	, An3
	.byte	W06
	.byte		N10	, As3
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte		N09	, Gs3
	.byte	W12
	.byte		N03	, An3
	.byte	W06
	.byte		N09	, As3
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte		N12	, Cn4
	.byte	W12
	.byte		N03	, An3
	.byte	W06
	.byte		N10	, As3
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte		N09	, Gs3
	.byte	W12
	.byte		N03	, An3
	.byte	W06
	.byte		N04	, As2
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte	VOICE	, 68
mus_boss_2_7:
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte	BEND	, c_v
	.byte		N12	, Cn4, v112
	.byte	W01
	.byte	VOL	, v087
	.byte	W11
	.byte		N10	, En3
	.byte	W12
	.byte		N03	, Fn3
	.byte	W06
	.byte		N10	, Fs3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			As3
	.byte	W12
	.byte		N03	, Gn3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte		N12	, Gn3
	.byte	W12
mus_boss_2_1:
	.byte		N12	, Cs4, v112
	.byte	W12
	.byte		N10	, Fn3
	.byte	W12
	.byte		N03	, Fs3
	.byte	W06
	.byte		N10	, Gn3
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte		N03	, Gs3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte		N12	, Gs3
	.byte	W12
	.byte	PEND
mus_boss_2_2:
	.byte		N12	, Cn4, v112
	.byte	W12
	.byte		N10	, En3
	.byte	W12
	.byte		N03	, Fn3
	.byte	W06
	.byte		N10	, Fs3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			As3
	.byte	W12
	.byte		N03	, Gn3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte		N12	, Gn3
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	mus_boss_2_1
	.byte		N12	, Cn4, v112
	.byte	W12
	.byte		N10	, En3
	.byte	W12
	.byte		N03	, Fn3
	.byte	W06
	.byte		N10	, Fs3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			As3
	.byte	W12
	.byte		N03	, Gn3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte	PATT	
		.word	mus_boss_2_1
	.byte	PATT	
		.word	mus_boss_2_2
mus_boss_2_3:
	.byte		N12	, Cs4, v112
	.byte	W12
	.byte		N10	, Fn3
	.byte	W12
	.byte		N03	, Fs3
	.byte	W06
	.byte		N10	, Gn3
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte		N03	, Gs3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte	PEND
	.byte		N12	, Cn4
	.byte	W12
	.byte		N10	, En3
	.byte	W12
	.byte		N03	, Fn3
	.byte	W06
	.byte		N12	, Fs3
	.byte	W12
	.byte		N10	, Gn3
	.byte	W12
	.byte			As3
	.byte	W12
	.byte		N03	, Gn3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte		N12	, Gn3
	.byte	W12
	.byte	PATT	
		.word	mus_boss_2_3
	.byte	PATT	
		.word	mus_boss_2_2
mus_boss_2_4:
	.byte		N12	, Gs3, v112
	.byte	W12
	.byte		N10	, Gs2
	.byte	W12
	.byte		N03	, Cs3
	.byte	W06
	.byte		N10	, Dn3
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte		N03	, Ds3
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte		N12	, Ds3
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	mus_boss_2_2
	.byte	PATT	
		.word	mus_boss_2_4
	.byte	PATT	
		.word	mus_boss_2_2
	.byte	PATT	
		.word	mus_boss_2_4
	.byte	PATT	
		.word	mus_boss_2_2
	.byte	PATT	
		.word	mus_boss_2_4
	.byte	VOICE	, 68
	.byte	VOL	, v081
	.byte	PAN	, c_v+10
	.byte		N12	, Cn3, v100
	.byte	W12
	.byte			En2, v112
	.byte	W12
	.byte		N03	, Fn2, v100
	.byte	W06
	.byte		N12	, Fs2, v112
	.byte	W12
	.byte		N10	, Gn2, v100
	.byte	W12
	.byte		N12	, As2
	.byte	W12
	.byte		N03	, Gn2, v112
	.byte	W06
	.byte		N04	, Fn2, v100
	.byte	W06
	.byte		N06	, Fs2, v112
	.byte	W06
	.byte		N04	, Gn2, v100
	.byte	W06
	.byte		N03	, As2, v112
	.byte	W06
mus_boss_2_5:
	.byte		N12	, Cn3, v100
	.byte	W12
	.byte			En2, v112
	.byte	W12
	.byte		N03	, Fn2, v100
	.byte	W06
	.byte		N12	, Fs2, v112
	.byte	W12
	.byte		N10	, Gn2, v100
	.byte	W12
	.byte		N12	, As2
	.byte	W12
	.byte		N03	, Gn2, v112
	.byte	W06
	.byte		N04	, Fn2, v100
	.byte	W06
	.byte		N06	, Fs2, v112
	.byte	W06
	.byte		N10	, Gn2, v100
	.byte	W12
	.byte	PEND
	.byte	VOICE	, 68
	.byte	VOL	, v092
	.byte	PAN	, c_v+10
	.byte		N12	, Cn3
	.byte	W12
	.byte			En2, v112
	.byte	W12
	.byte		N03	, Fn2, v100
	.byte	W06
	.byte		N12	, Fs2, v112
	.byte	W12
	.byte		N10	, Gn2, v100
	.byte	W12
	.byte		N12	, As2
	.byte	W12
	.byte		N03	, Gn2, v112
	.byte	W06
	.byte		N04	, Fn2, v100
	.byte	W06
	.byte		N06	, Fs2, v112
	.byte	W06
	.byte		N04	, Gn2, v100
	.byte	W06
	.byte		N03	, As2, v112
	.byte	W06
	.byte	PATT	
		.word	mus_boss_2_5
mus_boss_2_6:
	.byte	VOICE	, 68
	.byte	VOL	, v092
	.byte	PAN	, c_v+10
	.byte		N12	, Cs3, v100
	.byte	W12
	.byte			Fn2, v112
	.byte	W12
	.byte		N03	, Fs2, v100
	.byte	W06
	.byte		N12	, Gn2, v112
	.byte	W12
	.byte		N10	, Gs2, v100
	.byte	W12
	.byte		N12	, Bn2
	.byte	W12
	.byte		N03	, Gs2, v112
	.byte	W06
	.byte		N04	, Fs2, v100
	.byte	W06
	.byte		N06	, Gn2, v112
	.byte	W06
	.byte		N04	, Gs2, v100
	.byte	W06
	.byte		N03	, Bn2, v112
	.byte	W06
	.byte	PEND
	.byte		N12	, Cs3, v100
	.byte	W12
	.byte			Fn2, v112
	.byte	W12
	.byte		N03	, Fs2, v100
	.byte	W06
	.byte		N12	, Gn2, v112
	.byte	W12
	.byte		N10	, Gs2, v100
	.byte	W12
	.byte		N12	, Bn2
	.byte	W12
	.byte		N03	, Gs2, v112
	.byte	W06
	.byte		N04	, Fs2, v100
	.byte	W06
	.byte		N06	, Gn2, v112
	.byte	W06
	.byte		N10	, Gs2, v100
	.byte	W12
	.byte	PATT	
		.word	mus_boss_2_6
	.byte		N12	, Cs3, v100
	.byte	W12
	.byte			Fn2, v112
	.byte	W12
	.byte		N03	, Fs2, v100
	.byte	W06
	.byte		N12	, Gn2, v112
	.byte	W12
	.byte		N10	, Gs2, v100
	.byte	W12
	.byte		N12	, Bn2
	.byte	W12
	.byte		N03	, Gs2, v112
	.byte	W06
	.byte		N04	, Fs2, v100
	.byte	W06
	.byte		N06	, Gn2, v112
	.byte	W06
	.byte		N04	, Gs2, v100
	.byte	W06
	.byte		N03	, Fs2, v112
	.byte	W06
	.byte	GOTO	
		.word	mus_boss_2_7
	.byte	W96
	.byte	FINE

	@********************** Track  3 **********************@

	.global mus_boss_3
mus_boss_3:	@ 0x08D492AA
	.byte	KEYSH	, 0
	.byte	VOICE	, 68
	.byte	VOL	, v092
	.byte	PAN	, c_v-10
	.byte	MOD	, 1
	.byte	BEND	, c_v
	.byte		N11	, Cn3, v112
	.byte	W12
	.byte		N03	, An2
	.byte	W06
	.byte		N10	, As2
	.byte	W12
	.byte		N12	, Bn2
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte		N10	, Gs2
	.byte	W12
	.byte		N03	, An2
	.byte	W06
	.byte		N10	, As2
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte		N12	, Cn3
	.byte	W12
	.byte		N03	, An2
	.byte	W06
	.byte		N12	, As2
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte		N10	, Gs2
	.byte	W12
	.byte		N03	, An2
	.byte	W06
	.byte		N04	, As1, v120
	.byte	W06
	.byte		N03	, As2
	.byte	W06
	.byte		N04	, Bn1
	.byte	W06
	.byte		N03	, Bn2
	.byte	W06
	.byte	VOICE	, 113
mus_boss_3_6:
	.byte	VOL	, v041
	.byte	PAN	, c_v
	.byte	MOD	, 1
	.byte	BEND	, c_v
	.byte	W12
	.byte	PAN	, c_v+20
	.byte		N03	, Gn2, v072
	.byte		N03	, Fn3
	.byte	W06
	.byte		N04	, Gn2, v092
	.byte		N04	, Fn3
	.byte	W12
	.byte		N10	, Gn2, v072
	.byte		N10	, Fn3
	.byte	W12
	.byte		N04	, Gn2, v092
	.byte		N04	, Fn3
	.byte	W18
	.byte		N03	, Gn2, v004
	.byte		N03	, Fn3
	.byte	W06
	.byte			Gn2, v092
	.byte		N03	, Fn3
	.byte	W12
	.byte		N04	, Gn2, v072
	.byte		N04	, Fn3
	.byte	W12
	.byte		N03	, Gn2, v004
	.byte		N03	, Fn3
	.byte	W06
mus_boss_3_1:
	.byte	W12
	.byte	PAN	, c_v+20
	.byte		N03	, Gs2, v072
	.byte		N03	, Fs3
	.byte	W06
	.byte		N04	, Gs2, v092
	.byte		N04	, Fs3
	.byte	W12
	.byte		N10	, Gs2, v072
	.byte		N10	, Fs3
	.byte	W12
	.byte		N04	, Gs2, v092
	.byte		N04	, Fs3
	.byte	W18
	.byte		N03	, Gs2, v072
	.byte		N03	, Fs3
	.byte	W06
	.byte			Gs2, v092
	.byte		N03	, Fs3
	.byte	W12
	.byte		N04	, Gs2, v072
	.byte		N04	, Fs3
	.byte	W12
	.byte		N03	, Gs2, v004
	.byte		N03	, Fs3
	.byte	W06
	.byte	PEND
	.byte	W12
	.byte	PAN	, c_v+20
	.byte		N03	, Gn2, v072
	.byte		N03	, Fn3
	.byte	W06
	.byte		N04	, Gn2, v092
	.byte		N04	, Fn3
	.byte	W12
	.byte		N10	, Gn2, v072
	.byte		N10	, Fn3
	.byte	W12
	.byte		N04	, Gn2, v092
	.byte		N04	, Fn3
	.byte	W18
	.byte		N03	, Gn2, v004
	.byte		N03	, Fn3
	.byte	W06
	.byte			Gn2, v092
	.byte		N03	, Fn3
	.byte	W12
	.byte		N04	, Gn2, v072
	.byte		N04	, Fn3
	.byte	W12
	.byte		N03	, Gn2, v004
	.byte		N03	, Fn3
	.byte	W06
	.byte	PATT	
		.word	mus_boss_3_1
	.byte	W12
	.byte	PAN	, c_v
	.byte		N03	, Gn2, v072
	.byte		N03	, Fn3
	.byte	W06
	.byte		N04	, Gn2, v092
	.byte		N04	, Fn3
	.byte	W12
	.byte		N10	, Gn2, v072
	.byte		N10	, Fn3
	.byte	W12
	.byte		N04	, Gn2, v092
	.byte		N04	, Fn3
	.byte	W18
	.byte		N03	, Gn2, v004
	.byte		N03	, Fn3
	.byte	W06
	.byte			Gn2, v092
	.byte		N03	, Fn3
	.byte	W12
	.byte		N04	, Gn2, v072
	.byte		N04	, Fn3
	.byte	W12
	.byte		N03	, Gn2, v004
	.byte		N03	, Fn3
	.byte	W06
mus_boss_3_2:
	.byte	W12
	.byte		N03	, Gs2, v072
	.byte		N03	, Fs3
	.byte	W06
	.byte		N04	, Gs2, v092
	.byte		N04	, Fs3
	.byte	W12
	.byte		N10	, Gs2, v072
	.byte		N10	, Fs3
	.byte	W12
	.byte		N04	, Gs2, v092
	.byte		N04	, Fs3
	.byte	W18
	.byte		N03	, Gs2, v072
	.byte		N03	, Fs3
	.byte	W06
	.byte			Gs2, v092
	.byte		N03	, Fs3
	.byte	W12
	.byte		N04	, Gs2, v072
	.byte		N04	, Fs3
	.byte	W12
	.byte		N03	, Gs2, v004
	.byte		N03	, Fs3
	.byte	W06
	.byte	PEND
mus_boss_3_3:
	.byte	W12
	.byte		N03	, Gn2, v072
	.byte		N03	, Fn3
	.byte	W06
	.byte		N04	, Gn2, v092
	.byte		N04	, Fn3
	.byte	W12
	.byte		N10	, Gn2, v072
	.byte		N10	, Fn3
	.byte	W12
	.byte		N04	, Gn2, v092
	.byte		N04	, Fn3
	.byte	W18
	.byte		N03	, Gn2, v004
	.byte		N03	, Fn3
	.byte	W06
	.byte			Gn2, v092
	.byte		N03	, Fn3
	.byte	W12
	.byte		N04	, Gn2, v072
	.byte		N04	, Fn3
	.byte	W12
	.byte		N03	, Gn2, v004
	.byte		N03	, Fn3
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	mus_boss_3_2
	.byte	W03
	.byte	PAN	, c_v
	.byte	W03
	.byte	VOL	, v050
	.byte	W06
	.byte		N03	, Gn2, v072
	.byte		N03	, Fn3
	.byte	W06
	.byte		N04	, Gn2, v092
	.byte		N04	, Fn3
	.byte	W12
	.byte		N10	, Gn2, v072
	.byte		N10	, Fn3
	.byte	W12
	.byte		N04	, Gn2, v092
	.byte		N04	, Fn3
	.byte	W18
	.byte		N03	, Gn2, v004
	.byte		N03	, Fn3
	.byte	W06
	.byte			Gn2, v092
	.byte		N03	, Fn3
	.byte	W12
	.byte		N04	, Gn2, v072
	.byte		N04	, Fn3
	.byte	W12
	.byte		N03	, Gn2, v004
	.byte		N03	, Fn3
	.byte	W06
	.byte	W12
	.byte			Gs2, v072
	.byte		N03	, Fs3
	.byte	W06
	.byte		N04	, Gs2, v092
	.byte		N04	, Fs3
	.byte	W12
	.byte		N10	, Gs2, v072
	.byte		N10	, Fs3
	.byte	W12
	.byte		N04	, Gs2, v092
	.byte		N04	, Fs3
	.byte	W18
	.byte		N03	, Gs2, v004
	.byte		N03	, Fs3
	.byte	W06
	.byte			Gs2, v092
	.byte		N03	, Fs3
	.byte	W12
	.byte		N04	, Gs2, v072
	.byte		N04	, Fs3
	.byte	W12
	.byte		N03	, Gs2, v004
	.byte		N03	, Fs3
	.byte	W06
	.byte	PATT	
		.word	mus_boss_3_3
	.byte	W12
	.byte		N03	, Ds3, v072
	.byte		N03	, Gs3
	.byte	W06
	.byte		N04	, Ds3, v092
	.byte		N04	, Gs3
	.byte	W12
	.byte		N10	, Ds3, v072
	.byte		N10	, Gs3
	.byte	W12
	.byte		N04	, Ds3, v092
	.byte		N04	, Gs3
	.byte	W18
	.byte		N03	, Ds3, v004
	.byte		N03	, Gs3
	.byte	W06
	.byte			Ds3, v092
	.byte		N03	, Gs3
	.byte	W12
	.byte		N04	, Ds3, v072
	.byte		N04	, Gs3
	.byte	W12
	.byte		N03	, Ds3, v004
	.byte		N03	, Gs3
	.byte	W06
	.byte	VOICE	, 6
	.byte	VOL	, v064
	.byte	PAN	, c_v
	.byte	MOD	, 3
	.byte	BEND	, c_v
	.byte		N96	, Gn2, v052
	.byte		N96	, Dn3
	.byte	W96
	.byte			Gs2, v056
	.byte		N96	, Ds3
	.byte	W96
	.byte			Gn2
	.byte		N96	, Dn3
	.byte	W96
	.byte			Gs2, v060
	.byte		N96	, Ds3
	.byte	W96
	.byte			Gn2, v064
	.byte		N96	, Dn3
	.byte	W96
	.byte			Gs2, v068
	.byte		N96	, Ds3
	.byte	W96
	.byte	VOICE	, 68
	.byte	VOL	, v087
	.byte	PAN	, c_v-10
	.byte		N12	, Cn2, v100
	.byte	W12
	.byte			En1, v112
	.byte	W12
	.byte		N03	, Fn1, v100
	.byte	W06
	.byte		N12	, Fs1, v112
	.byte	W12
	.byte		N10	, Gn1, v100
	.byte	W12
	.byte		N12	, As1
	.byte	W12
	.byte		N03	, Gn1, v112
	.byte	W06
	.byte		N04	, Fn1, v100
	.byte	W06
	.byte		N06	, Fs1, v112
	.byte	W06
	.byte		N04	, Gn1, v100
	.byte	W06
	.byte		N03	, As1, v112
	.byte	W06
mus_boss_3_4:
	.byte		N12	, Cn2, v100
	.byte	W12
	.byte			En1, v112
	.byte	W12
	.byte		N03	, Fn1, v100
	.byte	W06
	.byte		N12	, Fs1, v112
	.byte	W12
	.byte		N10	, Gn1, v100
	.byte	W12
	.byte		N12	, As1
	.byte	W12
	.byte		N03	, Gn1, v112
	.byte	W06
	.byte		N04	, Fn1, v100
	.byte	W06
	.byte		N06	, Fs1, v112
	.byte	W06
	.byte		N10	, Gn1, v100
	.byte	W12
	.byte	PEND
	.byte	VOICE	, 68
	.byte	VOL	, v101
	.byte	PAN	, c_v-10
	.byte		N12	, Cn2
	.byte	W12
	.byte			En1, v112
	.byte	W12
	.byte		N03	, Fn1, v100
	.byte	W06
	.byte		N12	, Fs1, v112
	.byte	W12
	.byte		N10	, Gn1, v100
	.byte	W12
	.byte		N12	, As1
	.byte	W12
	.byte		N03	, Gn1, v112
	.byte	W06
	.byte		N04	, Fn1, v100
	.byte	W06
	.byte		N06	, Fs1, v112
	.byte	W06
	.byte		N04	, Gn1, v100
	.byte	W06
	.byte		N03	, As1, v112
	.byte	W06
	.byte	PATT	
		.word	mus_boss_3_4
mus_boss_3_5:
	.byte	VOICE	, 68
	.byte	VOL	, v101
	.byte	PAN	, c_v-10
	.byte		N12	, Cs2, v100
	.byte	W12
	.byte			Fn1, v112
	.byte	W12
	.byte		N03	, Fs1, v100
	.byte	W06
	.byte		N12	, Gn1, v112
	.byte	W12
	.byte		N10	, Gs1, v100
	.byte	W12
	.byte		N12	, Bn1
	.byte	W12
	.byte		N03	, Gs1, v112
	.byte	W06
	.byte		N04	, Fs1, v100
	.byte	W06
	.byte		N06	, Gn1, v112
	.byte	W06
	.byte		N04	, Gs1, v100
	.byte	W06
	.byte		N03	, Bn1, v112
	.byte	W06
	.byte	PEND
	.byte		N12	, Cs2, v100
	.byte	W12
	.byte			Fn1, v112
	.byte	W12
	.byte		N03	, Fs1, v100
	.byte	W06
	.byte		N12	, Gn1, v112
	.byte	W12
	.byte		N10	, Gs1, v100
	.byte	W12
	.byte		N12	, Bn1
	.byte	W12
	.byte		N03	, Gs1, v112
	.byte	W06
	.byte		N04	, Fs1, v100
	.byte	W06
	.byte		N06	, Gn1, v112
	.byte	W06
	.byte		N10	, Gs1, v100
	.byte	W12
	.byte	PATT	
		.word	mus_boss_3_5
	.byte		N12	, Cs2, v100
	.byte	W12
	.byte			Fn1, v112
	.byte	W12
	.byte		N03	, Fs1, v100
	.byte	W06
	.byte		N12	, Gn1, v112
	.byte	W12
	.byte		N10	, Gs1, v100
	.byte	W12
	.byte		N12	, Bn1
	.byte	W12
	.byte		N03	, Gs1, v112
	.byte	W06
	.byte		N04	, Fs1, v100
	.byte	W06
	.byte		N06	, Gn1, v112
	.byte	W06
	.byte		N04	, Gs1, v100
	.byte	W06
	.byte		N03	, Fs1, v112
	.byte	W03
	.byte	VOL	, v046
	.byte	W03
	.byte	GOTO	
		.word	mus_boss_3_6
	.byte	W96
	.byte	FINE

	@********************** Track  4 **********************@

	.global mus_boss_4
mus_boss_4:	@ 0x08D4960C
	.byte	KEYSH	, 0
	.byte	VOICE	, 11
	.byte	VOL	, v055
	.byte	MOD	, 0
	.byte	PAN	, c_v
	.byte	BEND	, c_v
	.byte	W96
	.byte	W48
	.byte	VOICE	, 11
	.byte	VOL	, v064
	.byte	MOD	, 0
	.byte	PAN	, c_v
	.byte	BEND	, c_v
	.byte	W36
	.byte		N03	, Gs2, v060
	.byte	W03
	.byte			An2
	.byte	W03
	.byte			As2
	.byte	W03
	.byte			Bn2, v068
	.byte	W03
	.byte	VOICE	, 11
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte	VOL	, v064
mus_boss_4_2:
	.byte	BEND	, c_v
	.byte		N18	, Cn3, v072
	.byte	W18
	.byte			Gn2
	.byte	W18
	.byte			Fn2
	.byte	W18
	.byte		N04	, Gn1
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte		N18	, Fs3
	.byte	W18
	.byte			Cs3
	.byte	W18
	.byte		N12	, Gs2
	.byte	W12
	.byte		N04	, Ds2
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte		N18	, Gn3, v056
	.byte	W18
	.byte		N12	, Dn3, v040
	.byte	W12
	.byte		N04	, An2, v044
	.byte	W06
	.byte			En2, v056
	.byte	W06
	.byte			An2, v036
	.byte	W06
	.byte			En1, v048
	.byte	W06
	.byte			An1, v064
	.byte	W06
	.byte			Dn2, v048
	.byte	W06
	.byte			An1, v052
	.byte	W06
	.byte			Dn2, v060
	.byte	W06
	.byte			Gn2, v048
	.byte	W06
	.byte			Dn3, v064
	.byte	W06
	.byte			Gn3, v060
	.byte	W06
	.byte			Gs3, v072
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Ds1
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte	VOICE	, 28
	.byte	VOL	, v046
	.byte	MOD	, 0
	.byte	PAN	, c_v+20
	.byte	BEND	, c_v
	.byte		N03	, Gn2, v080
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte	PAN	, c_v-20
	.byte		N03	, Gn2, v060
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte	PAN	, c_v+20
	.byte		N03	, Gn2, v052
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte	PAN	, c_v-20
	.byte		N03	, Gn2, v040
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte	PAN	, c_v+20
	.byte		N03	, Gn2, v080
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte	PAN	, c_v-20
	.byte		N03	, Gn3
	.byte	W06
	.byte			Gn2
	.byte	W06
mus_boss_4_1:
	.byte	PAN	, c_v+20
	.byte		N03	, Gs2, v080
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte	PAN	, c_v-20
	.byte		N03	, Gs2, v060
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte	PAN	, c_v+20
	.byte		N03	, Gs2, v052
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte	PAN	, c_v-20
	.byte		N03	, Gs2, v040
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte	PAN	, c_v+20
	.byte		N03	, Gs2, v080
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte	PAN	, c_v-20
	.byte		N03	, Gs3
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte	PEND
	.byte	PAN	, c_v+20
	.byte		N03	, Gn2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte	PAN	, c_v-20
	.byte		N03	, Gn2, v060
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte	PAN	, c_v+20
	.byte		N03	, Gn2, v052
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte	PAN	, c_v-20
	.byte		N03	, Gn2, v040
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte	PAN	, c_v+20
	.byte		N03	, Gn2, v080
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte	PAN	, c_v-20
	.byte		N03	, Gn3
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte	PATT	
		.word	mus_boss_4_1
	.byte	VOICE	, 11
	.byte	VOL	, v055
	.byte	PAN	, c_v+20
	.byte	BEND	, c_v
	.byte	W06
	.byte	MOD	, 5
	.byte	LFOS	, 25
	.byte	LFODL	, 30
	.byte	W06
	.byte		N06	, Gn3, v072
	.byte	W06
	.byte			Fn3
	.byte	W12
	.byte		N12	, Cn3
	.byte	W12
	.byte		N06	, Gn2
	.byte	W12
	.byte			Dn2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte		N03	, Cn3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte		N18	, Gs3
	.byte	W18
	.byte			Ds3
	.byte	W18
	.byte			Cs3
	.byte	W18
	.byte		N42	, Gs2
	.byte	W06
	.byte	MOD	, 10
	.byte	W09
	.byte		20
	.byte	W24
	.byte	W03
	.byte		5
	.byte	W12
	.byte		N06	, Gn2
	.byte	W06
	.byte			Cn3
	.byte	W12
	.byte		N12	, Dn3
	.byte	W12
	.byte		N06	, Gn2
	.byte	W12
	.byte			Dn2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte		N03	, Cn3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte		N30	, Gs3
	.byte	W30
	.byte		N03	, Gn3
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			As3, v060
	.byte	W06
	.byte		N12	, Cn4, v040
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte			As3, v060
	.byte	W12
	.byte		N18	, Gs3, v072
	.byte	W18
	.byte		N78	, Gn3
	.byte	W18
	.byte	MOD	, 10
	.byte	W24
	.byte		15
	.byte	W18
	.byte		20
	.byte	W18
	.byte		N06	, Ds3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte		N03	, Gn3
	.byte	W06
	.byte		N30	, Gs3
	.byte	W30
	.byte		N03	, Gn3
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			As3, v060
	.byte	W06
	.byte		N10	, Cn4, v040
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte			As3, v060
	.byte	W12
	.byte		N18	, Gs3, v072
	.byte	W18
	.byte		TIE	, Gn3
	.byte	W24
	.byte	MOD	, 6
	.byte	W30
	.byte		9
	.byte	W30
	.byte		12
	.byte	W12
	.byte	W12
	.byte		16
	.byte	W30
	.byte		20
	.byte	W24
	.byte		25
	.byte	W30
	.byte	VOL	, v054
	.byte	MOD	, 30
	.byte	W03
	.byte	VOL	, v053
	.byte	W03
	.byte		v052
	.byte	W03
	.byte		v051
	.byte	W03
	.byte		v050
	.byte	W03
	.byte		v049
	.byte	W03
	.byte		v048
	.byte	W03
	.byte		v047
	.byte	W03
	.byte		v046
	.byte	W03
	.byte		v046
	.byte	W03
	.byte		v045
	.byte	MOD	, 35
	.byte	W03
	.byte	VOL	, v044
	.byte	W03
	.byte		v043
	.byte	W03
	.byte		v042
	.byte	W03
	.byte		v041
	.byte	W03
	.byte		v040
	.byte	W03
	.byte		v039
	.byte	W03
	.byte		v038
	.byte	W03
	.byte		v037
	.byte	MOD	, 40
	.byte	W03
	.byte	VOL	, v036
	.byte	W03
	.byte		v035
	.byte	W03
	.byte		v035
	.byte	W03
	.byte		v034
	.byte	W03
	.byte		v033
	.byte	W03
	.byte		v032
	.byte	MOD	, 45
	.byte	W03
	.byte	VOL	, v031
	.byte	W03
	.byte		v030
	.byte	W03
	.byte		v029
	.byte	W03
	.byte		v028
	.byte	W03
	.byte		v027
	.byte	W03
	.byte		v026
	.byte	W03
	.byte		v025
	.byte	W03
	.byte		v024
	.byte	MOD	, 50
	.byte	W03
	.byte	VOL	, v023
	.byte	W03
	.byte		v023
	.byte	W03
	.byte		v022
	.byte	W03
	.byte		v021
	.byte	W03
	.byte		v020
	.byte	W03
	.byte		v019
	.byte	W03
	.byte		v018
	.byte	W03
	.byte		v017
	.byte	MOD	, 55
	.byte	W03
	.byte	VOL	, v016
	.byte	W03
	.byte		v015
	.byte	W03
	.byte		v014
	.byte	W03
	.byte		v013
	.byte	W03
	.byte		v011
	.byte	W03
	.byte		v011
	.byte	W03
	.byte		v010
	.byte	W03
	.byte		EOT	
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	VOICE	, 23
	.byte	W03
	.byte	VOL	, v055
	.byte	W03
	.byte	PAN	, c_v+10
	.byte	W78
	.byte		N03	, An2, v040
	.byte		N03	, En3
	.byte	W03
	.byte			As2, v048
	.byte		N03	, Fn3
	.byte	W03
	.byte			Bn2, v052
	.byte		N03	, Fs3
	.byte	W03
	.byte			Cn3, v056
	.byte		N03	, Gn3
	.byte	W03
	.byte	MOD	, 5
	.byte		N96	, Dn3, v060
	.byte		N96	, An3
	.byte	W18
	.byte	MOD	, 10
	.byte	W18
	.byte		15
	.byte	W18
	.byte		20
	.byte	W18
	.byte		25
	.byte	W24
	.byte	PAN	, c_v-10
	.byte	MOD	, 5
	.byte		N96	, Cs3
	.byte		N96	, Gs3
	.byte	W18
	.byte	MOD	, 10
	.byte	W18
	.byte		15
	.byte	W18
	.byte		20
	.byte	W18
	.byte		25
	.byte	W24
	.byte	PAN	, c_v+10
	.byte	MOD	, 5
	.byte		N96	, Cn3
	.byte		N96	, Gn3
	.byte	W18
	.byte	MOD	, 10
	.byte	W18
	.byte		15
	.byte	W18
	.byte		20
	.byte	W18
	.byte		25
	.byte	W24
	.byte	PAN	, c_v-10
	.byte	MOD	, 15
	.byte		N18	, Bn2
	.byte		N18	, Fs3
	.byte	W18
	.byte	PAN	, c_v+10
	.byte		N18	, As2
	.byte		N18	, Fn3
	.byte	W18
	.byte	PAN	, c_v-10
	.byte		N18	, An2
	.byte		N18	, En3
	.byte	W18
	.byte	PAN	, c_v+10
	.byte		N18	, Gs2, v068
	.byte		N18	, Ds3
	.byte	W18
	.byte	PAN	, c_v-10
	.byte		N12	, Gn2, v072
	.byte		N12	, Dn3
	.byte	W12
	.byte	PAN	, c_v+10
	.byte		N09	, Fs2, v076
	.byte		N09	, Cs3
	.byte	W10
	.byte	VOL	, v064
	.byte	PAN	, c_v
	.byte	W02
	.byte	GOTO	
		.word	mus_boss_4_2
	.byte	W96
	.byte	FINE

	@********************** Track  5 **********************@

	.global mus_boss_5
mus_boss_5:	@ 0x08D49917
	.byte	KEYSH	, 0
	.byte	VOICE	, 11
	.byte	VOL	, v032
	.byte	MOD	, 0
	.byte	PAN	, c_v-10
	.byte	BEND	, c_v+5
	.byte	W96
	.byte	W96
mus_boss_5_2:
	.byte	W03
	.byte	VOICE	, 11
	.byte	VOL	, v032
	.byte	MOD	, 0
	.byte	PAN	, c_v-10
	.byte	BEND	, c_v+5
	.byte	W06
	.byte		N17	, Cn3, v072
	.byte	W17
	.byte		N18	, Gn2
	.byte	W18
	.byte			Fn2
	.byte	W18
	.byte		N04	, Gn1
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Cn3
	.byte	W04
	.byte	W02
	.byte			Fn3
	.byte	W06
	.byte		N18	, Fs3
	.byte	W18
	.byte			Cs3
	.byte	W18
	.byte		N12	, Gs2
	.byte	W12
	.byte		N04	, Ds2
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Ds3
	.byte	W04
	.byte	W02
	.byte			Gs3
	.byte	W06
	.byte		N18	, Gn3, v056
	.byte	W18
	.byte		N12	, Dn3, v040
	.byte	W12
	.byte		N04	, An2, v044
	.byte	W06
	.byte			En2, v056
	.byte	W06
	.byte			An2, v036
	.byte	W06
	.byte			En1, v048
	.byte	W06
	.byte			An1, v064
	.byte	W06
	.byte			Dn2, v048
	.byte	W06
	.byte			An1, v052
	.byte	W06
	.byte			Dn2, v060
	.byte	W06
	.byte			Gn2, v048
	.byte	W06
	.byte			Dn3, v064
	.byte	W04
	.byte	W02
	.byte			Gn3, v060
	.byte	W06
	.byte			Gs3, v072
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Ds1
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte			Ds3
	.byte	W04
	.byte	W02
	.byte			Gs3
	.byte	W92
	.byte	W02
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	VOICE	, 11
	.byte	VOL	, v055
	.byte	PAN	, c_v-20
	.byte	BEND	, c_v
	.byte	W06
	.byte	MOD	, 5
	.byte	LFOS	, 25
	.byte	LFODL	, 30
	.byte	W06
	.byte		N06	, Dn3
	.byte	W06
	.byte			Cn3
	.byte	W12
	.byte		N12	, Gn2
	.byte	W12
	.byte		N06	, Dn2
	.byte	W12
	.byte			An1
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte		N03	, Gn2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			An2
	.byte	W06
	.byte		N18	, Ds3
	.byte	W18
	.byte			As2
	.byte	W18
	.byte			Gs2
	.byte	W18
	.byte		N42	, Ds2
	.byte	W06
	.byte	MOD	, 10
	.byte	W09
	.byte		20
	.byte	W24
	.byte	W03
	.byte		5
	.byte	W12
	.byte		N06	, Dn2
	.byte	W06
	.byte			Gn2
	.byte	W12
	.byte		N12	, An2
	.byte	W12
	.byte		N06	, Dn2
	.byte	W12
	.byte			An1
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte		N03	, Gn2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			An2
	.byte	W06
mus_boss_5_1:
	.byte		N30	, Ds3, v072
	.byte	W30
	.byte		N03	, Dn3
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			Fn3, v060
	.byte	W06
	.byte		N12	, Gn3, v052
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte			Fn3, v060
	.byte	W12
	.byte		N18	, Ds3, v072
	.byte	W18
	.byte	PEND
	.byte		N78	, Dn3
	.byte	W18
	.byte	MOD	, 10
	.byte	W24
	.byte		15
	.byte	W18
	.byte		20
	.byte	W18
	.byte		N06	, As2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte		N03	, Dn3
	.byte	W06
	.byte	PATT	
		.word	mus_boss_5_1
	.byte		TIE	, Dn3, v072
	.byte	W24
	.byte	MOD	, 6
	.byte	W30
	.byte		9
	.byte	W30
	.byte		12
	.byte	W12
	.byte	W12
	.byte		16
	.byte	W30
	.byte		20
	.byte	W24
	.byte		25
	.byte	W30
	.byte	VOL	, v054
	.byte	MOD	, 30
	.byte	W03
	.byte	VOL	, v053
	.byte	W03
	.byte		v052
	.byte	W03
	.byte		v051
	.byte	W03
	.byte		v050
	.byte	W03
	.byte		v049
	.byte	W03
	.byte		v048
	.byte	W03
	.byte		v047
	.byte	W03
	.byte		v046
	.byte	W03
	.byte		v046
	.byte	W03
	.byte		v045
	.byte	MOD	, 35
	.byte	W03
	.byte	VOL	, v044
	.byte	W03
	.byte		v043
	.byte	W03
	.byte		v042
	.byte	W03
	.byte		v041
	.byte	W03
	.byte		v040
	.byte	W03
	.byte		v039
	.byte	MOD	, 40
	.byte	W03
	.byte	VOL	, v038
	.byte	W03
	.byte		v037
	.byte	W03
	.byte		v036
	.byte	W03
	.byte		v035
	.byte	W03
	.byte		v035
	.byte	W03
	.byte		v034
	.byte	W03
	.byte		v033
	.byte	W03
	.byte		v032
	.byte	MOD	, 45
	.byte	W03
	.byte	VOL	, v031
	.byte	W03
	.byte		v030
	.byte	W03
	.byte		v029
	.byte	W03
	.byte		v028
	.byte	W03
	.byte		v027
	.byte	W03
	.byte		v026
	.byte	W03
	.byte		v025
	.byte	W03
	.byte		v024
	.byte	MOD	, 50
	.byte	W03
	.byte	VOL	, v023
	.byte	W03
	.byte		v023
	.byte	W03
	.byte		v022
	.byte	W03
	.byte		v021
	.byte	W03
	.byte		v020
	.byte	W03
	.byte		v019
	.byte	W03
	.byte		v018
	.byte	W03
	.byte		v017
	.byte	MOD	, 55
	.byte	W03
	.byte	VOL	, v016
	.byte	W03
	.byte		v015
	.byte	W03
	.byte		v014
	.byte	W03
	.byte		v013
	.byte	W03
	.byte		v012
	.byte	W03
	.byte		v011
	.byte	W03
	.byte		v011
	.byte	W03
	.byte		EOT	
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	mus_boss_5_2
	.byte	W96
	.byte	FINE

	.align 2
	.global mus_boss
mus_boss:	@ 0x08D49AD4
	.byte	5		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	mus_boss_1		@ track
	.word	mus_boss_2		@ track
	.word	mus_boss_3		@ track
	.word	mus_boss_4		@ track
	.word	mus_boss_5		@ track
