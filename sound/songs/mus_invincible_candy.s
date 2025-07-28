	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global mus_invincible_candy_1
mus_invincible_candy_1:	@ 0x08D504AC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 90
	.byte	VOICE	, 127
	.byte	VOL	, v078
	.byte	PRIO	, 120
	.byte		N04	, Dn0, v048
	.byte	W06
	.byte			Dn0, v080
	.byte	W05
mus_invincible_candy_1_2:
	.byte		N05	, Cn0, v116
	.byte	W06
	.byte		N03	, Gs0, v052
	.byte	W06
	.byte		N04	, Dn0, v064
	.byte	W06
	.byte			Dn0, v092
	.byte	W06
	.byte		N05	, Cn0, v116
	.byte	W06
	.byte		N03	, Gs0, v052
	.byte	W06
	.byte		N04	, Dn0, v064
	.byte	W06
	.byte			Dn0, v092
	.byte	W06
	.byte		N05	, Cn0, v116
	.byte	W06
	.byte		N03	, Gs0, v052
	.byte	W06
	.byte		N04	, Dn0, v064
	.byte	W06
	.byte			Dn0, v092
	.byte	W06
	.byte		N05	, Cn0, v116
	.byte	W06
	.byte		N03	, Gs0, v052
	.byte	W06
	.byte		N04	, Dn0, v064
	.byte	W01
mus_invincible_candy_1_1:
	.byte	W05
	.byte		N04	, Dn0, v092
	.byte	W06
	.byte		N05	, Cn0, v116
	.byte	W06
	.byte		N03	, Gs0, v052
	.byte	W06
	.byte		N04	, Dn0, v064
	.byte	W06
	.byte			Dn0, v092
	.byte	W06
	.byte		N05	, Cn0, v116
	.byte	W06
	.byte		N03	, Gs0, v052
	.byte	W06
	.byte		N04	, Dn0, v064
	.byte	W06
	.byte			Dn0, v092
	.byte	W06
	.byte		N05	, Cn0, v116
	.byte	W06
	.byte		N03	, Gs0, v052
	.byte	W06
	.byte		N04	, Dn0, v064
	.byte	W06
	.byte			Dn0, v092
	.byte	W06
	.byte		N05	, Cn0, v116
	.byte	W06
	.byte		N03	, Gs0, v052
	.byte	W06
	.byte		N04	, Dn0, v064
	.byte	W01
	.byte	PEND
	.byte	PATT	
		.word	mus_invincible_candy_1_1
	.byte	W05
	.byte		N04	, Dn0, v092
	.byte	W06
	.byte		N05	, Cn0, v116
	.byte	W06
	.byte		N03	, Gs0, v052
	.byte	W06
	.byte		N04	, Dn0, v064
	.byte	W06
	.byte			Dn0, v092
	.byte	W06
	.byte		N05	, Cn0, v116
	.byte	W06
	.byte		N03	, Gs0, v052
	.byte	W06
	.byte		N04	, Dn0, v064
	.byte	W06
	.byte			Dn0, v092
	.byte	W06
	.byte		N05	, Cn0, v116
	.byte	W06
	.byte		N03	, Gs0, v052
	.byte	W06
	.byte		N04	, Dn0, v064
	.byte	W06
	.byte			Dn0, v092
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N04	, Dn0, v072
	.byte	W06
	.byte			Dn0, v060
	.byte	W01
	.byte	W05
	.byte			Dn0, v080
	.byte	W06
	.byte	GOTO	
		.word	mus_invincible_candy_1_2
	.byte	FINE

	@********************** Track  2 **********************@

	.global mus_invincible_candy_2
mus_invincible_candy_2:	@ 0x08D5057F
	.byte	KEYSH	, 0
	.byte	VOICE	, 1
	.byte	VOL	, v094
	.byte	PRIO	, 60
	.byte	W11
mus_invincible_candy_2_1:
	.byte		N09	, As3, v100
	.byte	W12
	.byte		N09	
	.byte	W12
	.byte		N05	, As4
	.byte	W06
	.byte		N09	, As3
	.byte	W12
	.byte		N05	, As4
	.byte	W06
	.byte		N09	, Fn3
	.byte	W12
	.byte		N09	
	.byte	W12
	.byte		N05	, Fn4
	.byte	W06
	.byte		N09	, Fn3
	.byte	W07
	.byte	W05
	.byte		N05	, Fn4
	.byte	W06
	.byte		N09	, Ds4
	.byte	W12
	.byte		N09	
	.byte	W12
	.byte		N05	, Ds3
	.byte	W06
	.byte		N09	, Ds4
	.byte	W12
	.byte		N05	, Ds3
	.byte	W06
	.byte		N15	, Fn3
	.byte	W18
	.byte		N05	
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte		N09	, Fn3
	.byte	W07
	.byte	W05
	.byte		N05	, Fn4
	.byte	W06
	.byte		N09	, As3
	.byte	W12
	.byte			As4
	.byte	W12
	.byte		N05	, As3
	.byte	W06
	.byte		N09	, As4
	.byte	W12
	.byte		N05	, As3
	.byte	W06
	.byte		N09	
	.byte	W12
	.byte			As4
	.byte	W12
	.byte		N05	, As3
	.byte	W06
	.byte		N09	, As4
	.byte	W07
	.byte	W05
	.byte		N05	, As3
	.byte	W06
	.byte		N09	, Ds4
	.byte	W12
	.byte		N09	
	.byte	W12
	.byte		N05	, Ds3
	.byte	W06
	.byte		N09	, Ds4
	.byte	W12
	.byte		N05	, Ds3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte		N09	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte		N09	, Ds4
	.byte	W07
	.byte	W05
	.byte		N05	, Ds3
	.byte	W06
	.byte	GOTO	
		.word	mus_invincible_candy_2_1
	.byte	FINE

	@********************** Track  3 **********************@

	.global mus_invincible_candy_3
mus_invincible_candy_3:	@ 0x08D50601
	.byte	KEYSH	, 0
	.byte	W11
mus_invincible_candy_3_1:
	.byte	VOICE	, 12
	.byte	VOL	, v031
	.byte	PRIO	, 120
	.byte		N28	, Gn3, v100
	.byte	W30
	.byte		N11	, Fn3
	.byte	W12
	.byte		N05	, Gn3
	.byte	W06
	.byte		N23	, An3
	.byte	W24
	.byte		N18	, Cn3
	.byte	W13
	.byte	W11
	.byte		N06	, Gn3
	.byte	W12
	.byte		N17	
	.byte	W18
	.byte		N11	, Fn3
	.byte	W12
	.byte		N05	, Gn3
	.byte	W06
	.byte		N23	, An3
	.byte	W24
	.byte			Cn3
	.byte	W13
	.byte	W11
	.byte		N05	, Cn4
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Gn3
	.byte	W01
	.byte	W05
	.byte			An3
	.byte	W06
	.byte		N44	, Fn3
	.byte	W44
	.byte	W02
	.byte		N02	, En4, v040
	.byte	W02
	.byte		N48	, Fn4, v092
	.byte	W36
	.byte	W01
	.byte	W11
	.byte	GOTO	
		.word	mus_invincible_candy_3_1
	.byte	FINE

	@********************** Track  4 **********************@

	.global mus_invincible_candy_4
mus_invincible_candy_4:	@ 0x08D50662
	.byte	KEYSH	, 0
	.byte	W11
mus_invincible_candy_4_1:
	.byte	VOICE	, 12
	.byte	PAN	, c_v
	.byte	VOL	, v029
	.byte	PRIO	, 5
	.byte		N28	, Dn3, v100
	.byte	W30
	.byte		N11	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N23	, Fn3
	.byte	W24
	.byte		N18	, An2
	.byte	W13
	.byte	W11
	.byte		N06	, Ds3
	.byte	W12
	.byte		N17	
	.byte	W18
	.byte		N11	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N23	, Fn3
	.byte	W24
	.byte			An2
	.byte	W13
	.byte	W11
	.byte		N04	, Fn3
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W01
	.byte	W05
	.byte		N04	
	.byte	W06
	.byte		N44	, Cs3
	.byte	W44
	.byte	W02
	.byte		N02	, Cn4, v040
	.byte	W02
	.byte		N48	, Cs4, v092
	.byte	W36
	.byte	W01
	.byte	W11
	.byte	GOTO	
		.word	mus_invincible_candy_4_1
	.byte	FINE

	@********************** Track  5 **********************@

	.global mus_invincible_candy_5
mus_invincible_candy_5:	@ 0x08D506C1
	.byte	KEYSH	, 0
	.byte	W11
mus_invincible_candy_5_1:
	.byte	VOICE	, 6
	.byte	PAN	, c_v
	.byte	VOL	, v059
	.byte	LFOS	, 20
	.byte	MODT	, 2
	.byte	MOD	, 30
	.byte	PRIO	, 70
	.byte		N05	, As2, v100
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Cn2
	.byte	W01
	.byte	W05
	.byte			Fn2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Cn2
	.byte	W01
	.byte	W05
	.byte			Fn2
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			As2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			As2
	.byte	W01
	.byte	W05
	.byte			Fn2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			As2
	.byte	W01
	.byte	W05
	.byte			Cs3
	.byte	W06
	.byte	GOTO	
		.word	mus_invincible_candy_5_1
	.byte	FINE

	.align 2
	.global mus_invincible_candy
mus_invincible_candy:	@ 0x08D50760
	.byte	5		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	mus_invincible_candy_1		@ track
	.word	mus_invincible_candy_2		@ track
	.word	mus_invincible_candy_3		@ track
	.word	mus_invincible_candy_4		@ track
	.word	mus_invincible_candy_5		@ track
