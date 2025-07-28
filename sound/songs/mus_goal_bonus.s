	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global mus_goal_bonus_1
mus_goal_bonus_1:	@ 0x08D4CA68
	.byte	KEYSH	, 0
	.byte	TEMPO	, 101
	.byte	VOICE	, 67
	.byte	VOL	, v115
	.byte	PAN	, c_v
	.byte	BEND	, c_v
	.byte	W24
	.byte		N08	, Cn1, v080
	.byte	W08
	.byte			An0, v092
	.byte	W08
	.byte			Gn0, v100
	.byte	W08
mus_goal_bonus_1_3:
	.byte		N12	, Gs0, v100
	.byte		N12	, Gs1, v120
	.byte	W12
	.byte			Fs0, v108
	.byte	W12
	.byte			As1, v100
	.byte	W12
	.byte			As0, v108
	.byte		N12	, Gs1, v120
	.byte	W12
	.byte			Fs0, v108
	.byte	W12
	.byte		N12	
	.byte		N12	, Gs1, v120
	.byte	W12
	.byte			As1, v100
	.byte	W12
	.byte			Fs0, v108
	.byte		N12	, Gs1, v120
	.byte	W12
mus_goal_bonus_1_1:
	.byte		N12	, Fs0, v108
	.byte	W12
	.byte		N12	
	.byte		N12	, Gs1, v120
	.byte	W12
	.byte			As1, v100
	.byte	W12
	.byte			Fs0, v108
	.byte	W12
	.byte		N12	
	.byte		N12	, Gs1, v120
	.byte	W12
	.byte			Fs0, v108
	.byte	W12
	.byte			As1, v100
	.byte	W12
	.byte			Fs0, v108
	.byte	W12
	.byte	PEND
	.byte			Fs0, v100
	.byte		N12	, Gs1, v120
	.byte	W12
	.byte			Fs0, v108
	.byte	W12
	.byte			As1, v100
	.byte	W12
	.byte			As0, v108
	.byte		N12	, Gs1, v120
	.byte	W12
	.byte			Fs0, v108
	.byte	W12
	.byte		N12	
	.byte		N12	, Gs1, v120
	.byte	W12
	.byte			As1, v100
	.byte	W12
	.byte			As0, v108
	.byte		N12	, Gs1, v120
	.byte	W12
	.byte	PATT	
		.word	mus_goal_bonus_1_1
mus_goal_bonus_1_2:
	.byte		N12	, Gs1, v120
	.byte		N24	, Dn3, v032
	.byte	W24
	.byte		N12	, As1, v100
	.byte		N24	, Dn3, v052
	.byte	W12
	.byte		N12	, Gs1, v120
	.byte	W12
	.byte			Fs0, v108
	.byte		N24	, Dn3, v032
	.byte	W12
	.byte		N12	, Gs1, v120
	.byte	W12
	.byte			As1, v100
	.byte		N24	, Dn3, v052
	.byte	W12
	.byte		N12	, Gs1, v120
	.byte	W12
	.byte	PEND
	.byte		N24	, Dn3, v032
	.byte	W12
	.byte		N12	, Gs1, v120
	.byte	W12
	.byte			As1, v100
	.byte		N24	, Dn3, v052
	.byte	W24
	.byte		N12	, Gs1, v120
	.byte		N24	, Dn3, v032
	.byte	W24
	.byte		N12	, As1, v100
	.byte		N24	, Dn3, v052
	.byte	W24
	.byte	PATT	
		.word	mus_goal_bonus_1_2
	.byte		N24	, Dn3, v032
	.byte	W12
	.byte		N12	, Gs1, v120
	.byte	W12
	.byte			As1, v100
	.byte		N24	, Dn3, v052
	.byte	W24
	.byte		N12	, Cn1, v092
	.byte		N24	, Dn3, v032
	.byte	W12
	.byte		N12	, Bn0, v092
	.byte	W12
	.byte			An0, v100
	.byte		N24	, Dn3, v052
	.byte	W12
	.byte		N12	, Gn0, v100
	.byte	W12
	.byte			Gs0, v112
	.byte		N12	, Gs1, v120
	.byte	W12
	.byte			Fs0, v112
	.byte	W12
	.byte			As1, v100
	.byte	W12
	.byte			Fs0, v112
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			As0
	.byte		N12	, Gs1, v120
	.byte	W12
	.byte			Fs0, v112
	.byte	W12
	.byte			As1, v100
	.byte	W12
	.byte			Fs0, v112
	.byte	W12
	.byte		N12	
	.byte		N12	, Gs1, v120
	.byte	W12
	.byte			As1, v100
	.byte	W12
	.byte			Fs0, v112
	.byte		N12	, Gs1, v120
	.byte	W12
	.byte			Gs0, v112
	.byte		N12	, Gs1, v120
	.byte	W12
	.byte			Fs0, v112
	.byte	W12
	.byte			As1, v100
	.byte	W12
	.byte			Fs0, v112
	.byte	W12
	.byte			Gs0
	.byte		N12	, Gs1, v120
	.byte	W12
	.byte			Fs0, v112
	.byte	W12
	.byte			As1, v100
	.byte	W12
	.byte			Fs0, v112
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			As0
	.byte		N12	, Gs1, v120
	.byte	W12
	.byte			Fs0, v112
	.byte	W12
	.byte			As0
	.byte		N12	, As1, v100
	.byte	W12
	.byte			Cn2, v072
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte		N06	, Cn1, v100
	.byte	W06
	.byte			Cn1, v092
	.byte	W06
	.byte		N12	, Bn0, v100
	.byte	W12
	.byte			An0, v108
	.byte	W12
	.byte			Gn0, v112
	.byte	W12
	.byte			Fn1, v092
	.byte	W12
	.byte	GOTO	
		.word	mus_goal_bonus_1_3
	.byte	W96
	.byte	FINE

	@********************** Track  2 **********************@

	.global mus_goal_bonus_2
mus_goal_bonus_2:	@ 0x08D4CBCD
	.byte	KEYSH	, 0
	.byte	VOICE	, 68
	.byte	VOL	, v115
	.byte	PAN	, c_v
	.byte	MOD	, 3
	.byte	BEND	, c_v
	.byte	W48
mus_goal_bonus_2_2:
	.byte		N12	, An2, v120
	.byte	W12
	.byte			An3, v092
	.byte	W12
	.byte			An2, v112
	.byte	W12
	.byte		N24	, An2, v120
	.byte	W24
	.byte		N12	, An2, v112
	.byte	W12
	.byte			An3, v092
	.byte	W12
	.byte		N24	, An2, v120
	.byte	W12
	.byte	W12
	.byte		N12	, An3, v092
	.byte	W12
	.byte			An2, v120
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			An3, v092
	.byte	W12
	.byte			En3, v112
	.byte	W12
	.byte			An2, v120
	.byte	W12
	.byte			An3, v092
	.byte	W12
	.byte			An2, v120
	.byte	W12
	.byte			En3, v112
	.byte	W12
	.byte			An3, v092
	.byte	W12
	.byte		N24	, An2, v120
	.byte	W24
	.byte		N12	, An3, v092
	.byte	W12
	.byte			An2, v120
	.byte	W12
	.byte		N24	
	.byte	W12
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			En3, v112
	.byte	W12
	.byte			An2, v120
	.byte	W12
	.byte			An3, v092
	.byte	W12
	.byte			An2, v120
	.byte	W12
	.byte			En3, v112
	.byte	W12
	.byte			An2, v120
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Cn4, v092
	.byte	W12
	.byte			Cn3, v112
	.byte	W12
	.byte		N24	, Cn3, v120
	.byte	W24
	.byte		N12	, Cn3, v112
	.byte	W12
	.byte			Cn4, v092
	.byte	W12
	.byte		N24	, Cn3, v120
	.byte	W12
	.byte	W12
	.byte		N12	, Cn4, v092
	.byte	W12
	.byte			Cn3, v120
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Cn4, v092
	.byte	W12
	.byte			Gn3, v112
	.byte	W12
	.byte			Cn3, v120
	.byte	W12
	.byte			Cn4, v092
	.byte	W12
	.byte			Cn3, v120
	.byte	W12
	.byte			Gn3, v112
	.byte	W12
	.byte			Cn4, v092
	.byte	W12
	.byte		N24	, Cn3, v120
	.byte	W24
	.byte		N12	, Cn4, v092
	.byte	W12
	.byte			Cn3, v120
	.byte	W12
	.byte		N24	
	.byte	W12
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Gn3, v112
	.byte	W12
	.byte			Cn3, v120
	.byte	W12
	.byte			Cn4, v092
	.byte	W12
	.byte			Cn3, v120
	.byte	W12
	.byte			Gn3, v112
	.byte	W12
	.byte			Cn3, v120
	.byte	W12
mus_goal_bonus_2_1:
	.byte		N12	, En3, v120
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			An3, v112
	.byte	W12
	.byte			En3, v120
	.byte	W12
	.byte			En4, v092
	.byte	W12
	.byte			En3, v120
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			An3, v112
	.byte	W12
	.byte			En3, v120
	.byte	W12
	.byte			En4, v092
	.byte	W12
	.byte			En3, v120
	.byte	W12
	.byte			An3, v112
	.byte	W12
	.byte			En3, v120
	.byte	W12
	.byte	PATT	
		.word	mus_goal_bonus_2_1
	.byte	W96
	.byte	GOTO	
		.word	mus_goal_bonus_2_2
	.byte	W96
	.byte	FINE

	@********************** Track  3 **********************@

	.global mus_goal_bonus_3
mus_goal_bonus_3:	@ 0x08D4CCC3
	.byte	KEYSH	, 0
	.byte	VOICE	, 24
	.byte	VOL	, v036
	.byte	PAN	, c_v
	.byte	LFODL	, 16
	.byte	LFOS	, 19
	.byte	MOD	, 4
	.byte	BEND	, c_v
	.byte	W48
mus_goal_bonus_3_3:
	.byte		N21	, Dn3, v056
	.byte		N21	, Gn3, v060
	.byte		N21	, Bn3, v052
	.byte	W24
	.byte		N09	, Dn3, v056
	.byte		N09	, Gn3, v060
	.byte		N09	, Bn3, v052
	.byte	W12
	.byte		N21	, En3, v056
	.byte		N21	, An3, v060
	.byte		N21	, Cs4, v052
	.byte	W24
	.byte			En3, v056
	.byte		N21	, An3, v060
	.byte		N21	, Cs4, v052
	.byte	W24
	.byte			Dn3, v056
	.byte		N21	, Gn3, v060
	.byte		N21	, Bn3, v052
	.byte	W12
mus_goal_bonus_3_1:
	.byte	W12
	.byte		N21	, Dn3, v056
	.byte		N21	, Gn3, v060
	.byte		N21	, Bn3, v052
	.byte	W24
	.byte		N09	, Dn3, v056
	.byte		N09	, Gn3, v060
	.byte		N09	, Bn3, v052
	.byte	W12
	.byte		N21	, En3, v056
	.byte		N21	, An3, v060
	.byte		N21	, Cs4, v052
	.byte	W24
	.byte			En3, v056
	.byte		N21	, An3, v060
	.byte		N21	, Cs4, v052
	.byte	W24
	.byte	PEND
	.byte			Dn3, v056
	.byte		N21	, Gn3, v060
	.byte		N21	, Bn3, v052
	.byte	W24
	.byte		N09	, Dn3, v056
	.byte		N09	, Gn3, v060
	.byte		N09	, Bn3, v052
	.byte	W12
	.byte		N21	, En3, v056
	.byte		N21	, An3, v060
	.byte		N21	, Cs4, v052
	.byte	W24
	.byte			En3, v056
	.byte		N21	, An3, v060
	.byte		N21	, Cs4, v052
	.byte	W24
	.byte			Dn3, v056
	.byte		N21	, Gn3, v060
	.byte		N21	, Bn3, v052
	.byte	W12
	.byte	PATT	
		.word	mus_goal_bonus_3_1
	.byte		N21	, Fn3, v056
	.byte		N21	, As3, v060
	.byte		N21	, Dn4, v052
	.byte	W24
	.byte		N09	, Fn3, v056
	.byte		N09	, As3, v060
	.byte		N09	, Dn4, v052
	.byte	W12
	.byte		N21	, Gn3, v056
	.byte		N21	, Cn4, v060
	.byte		N21	, En4, v052
	.byte	W24
	.byte			Gn3, v056
	.byte		N21	, Cn4, v060
	.byte		N21	, En4, v052
	.byte	W24
	.byte			Fn3, v056
	.byte		N21	, As3, v060
	.byte		N21	, Dn4, v052
	.byte	W12
	.byte	W12
	.byte			Fn3, v056
	.byte		N21	, As3, v060
	.byte		N21	, Dn4, v052
	.byte	W24
	.byte		N09	, Fn3, v056
	.byte		N09	, As3, v060
	.byte		N09	, Dn4, v052
	.byte	W12
	.byte		N21	, Gn3, v056
	.byte		N21	, Cn4, v060
	.byte		N21	, En4, v052
	.byte	W24
	.byte			Gn3, v056
	.byte		N21	, Cn4, v060
	.byte		N21	, En4, v052
	.byte	W24
	.byte		N24	, Fn3, v056
	.byte		N24	, As3, v060
	.byte		N24	, Dn4, v052
	.byte	W24
	.byte		N09	, Fn3, v056
	.byte		N09	, As3, v060
	.byte		N09	, Dn4, v052
	.byte	W12
	.byte		N21	, Gn3, v056
	.byte		N21	, Cn4, v060
	.byte		N21	, En4, v052
	.byte	W24
	.byte			Gn3, v056
	.byte		N21	, Cn4, v060
	.byte		N21	, En4, v052
	.byte	W24
	.byte			Fn3, v056
	.byte		N21	, As3, v060
	.byte		N21	, Dn4, v052
	.byte	W12
	.byte	W12
	.byte			Fn3, v056
	.byte		N21	, As3, v060
	.byte		N21	, Dn4, v052
	.byte	W24
	.byte		N09	, Fn3, v056
	.byte		N09	, As3, v060
	.byte		N09	, Dn4, v052
	.byte	W12
	.byte		N24	, Cn4, v060
	.byte		N24	, En4, v052
	.byte		N24	, Gn4
	.byte	W24
	.byte			Cs4, v060
	.byte		N24	, Fn4, v052
	.byte		N24	, Gs4
	.byte	W24
mus_goal_bonus_3_2:
	.byte		N12	, An3, v056
	.byte		N12	, Dn4, v060
	.byte		N12	, Fs4, v052
	.byte	W24
	.byte			Bn3, v056
	.byte		N12	, En4, v060
	.byte		N12	, Gs4, v052
	.byte	W36
	.byte			An3, v056
	.byte		N12	, Dn4, v060
	.byte		N12	, Fs4, v052
	.byte	W24
	.byte			Bn3, v056
	.byte		N12	, En4, v060
	.byte		N12	, Gs4, v052
	.byte	W12
	.byte	PEND
	.byte	W36
	.byte			An3, v056
	.byte		N12	, Dn4, v060
	.byte		N12	, Fs4, v052
	.byte	W12
	.byte			An3, v056
	.byte		N12	, Dn4, v060
	.byte		N12	, Fs4, v052
	.byte	W24
	.byte			Bn3, v056
	.byte		N12	, En4, v060
	.byte		N12	, Gs4, v052
	.byte	W24
	.byte	PATT	
		.word	mus_goal_bonus_3_2
	.byte	W96
	.byte	GOTO	
		.word	mus_goal_bonus_3_3
	.byte	W96
	.byte	FINE

	@********************** Track  4 **********************@

	.global mus_goal_bonus_4
mus_goal_bonus_4:	@ 0x08D4CE5C
	.byte	KEYSH	, 0
	.byte	VOICE	, 46
	.byte	VOL	, v055
	.byte	MOD	, 4
	.byte	W48
mus_goal_bonus_4_1:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PAN	, c_v-60
	.byte		N08	, Cn2, v032
	.byte	W08
	.byte			Fn2
	.byte	W08
	.byte	PAN	, c_v-30
	.byte		N08	, As2
	.byte	W08
	.byte			Dn3
	.byte	W08
	.byte	PAN	, c_v
	.byte		N08	, Fn3, v052
	.byte	W08
	.byte			As3
	.byte	W08
	.byte	PAN	, c_v+30
	.byte		N08	, Cn2, v036
	.byte	W08
	.byte			Fn2
	.byte	W08
	.byte	PAN	, c_v+60
	.byte		N08	, As2
	.byte	W08
	.byte			Dn3
	.byte	W08
	.byte	PAN	, c_v+30
	.byte		N08	, Fn3
	.byte	W08
	.byte			As3
	.byte	W08
	.byte	PAN	, c_v
	.byte		N08	, Cn2, v028
	.byte	W08
	.byte			Fn2
	.byte	W08
	.byte	PAN	, c_v-30
	.byte		N08	, As2
	.byte	W08
	.byte			Dn3
	.byte	W08
	.byte	PAN	, c_v-60
	.byte		N08	, Fn3
	.byte	W08
	.byte			As3
	.byte	W08
	.byte	PAN	, c_v-30
	.byte		N08	, Cn2, v016
	.byte	W08
	.byte			Fn2
	.byte	W08
	.byte	PAN	, c_v
	.byte		N08	, As2
	.byte	W08
	.byte			Dn3
	.byte	W08
	.byte	PAN	, c_v+30
	.byte		N08	, Fn3
	.byte	W08
	.byte			As3
	.byte	W08
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	mus_goal_bonus_4_1
	.byte	W96
	.byte	FINE

	.align 2
	.global mus_goal_bonus
mus_goal_bonus:	@ 0x08D4CED0
	.byte	4		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	mus_goal_bonus_1		@ track
	.word	mus_goal_bonus_2		@ track
	.word	mus_goal_bonus_3		@ track
	.word	mus_goal_bonus_4		@ track
