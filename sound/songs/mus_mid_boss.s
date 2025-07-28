	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global mus_mid_boss_1
mus_mid_boss_1:	@ 0x08D47D1C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 73
	.byte	VOICE	, 68
	.byte	PAN	, c_v
	.byte	VOL	, v092
	.byte	W48
mus_mid_boss_1_4:
	.byte		N03	, En3, v100
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			En4
	.byte	W06
	.byte		N09	, En3
	.byte	W12
	.byte		N03	
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte		N04	, En4
	.byte	W06
	.byte		N03	, Bn3
	.byte	W06
	.byte			Fs3
	.byte	W06
mus_mid_boss_1_1:
	.byte		N03	, En3, v100
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			En4
	.byte	W06
	.byte		N09	, En3
	.byte	W12
	.byte		N03	
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte	PEND
	.byte			En3
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			En4
	.byte	W06
	.byte		N09	, En3
	.byte	W12
	.byte		N03	
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte		N04	, En4
	.byte	W06
	.byte		N03	, Bn3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte	PATT	
		.word	mus_mid_boss_1_1
mus_mid_boss_1_2:
	.byte		N03	, Fn3, v100
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte		N09	, Fn3
	.byte	W12
	.byte		N03	
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte		N04	, Fn4
	.byte	W06
	.byte		N03	, Cn4
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte	PEND
mus_mid_boss_1_3:
	.byte		N03	, Fn3, v100
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte		N09	, Fn3
	.byte	W12
	.byte		N03	
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	mus_mid_boss_1_2
	.byte	PATT	
		.word	mus_mid_boss_1_3
	.byte	GOTO	
		.word	mus_mid_boss_1_4
	.byte	W48
	.byte	FINE

	@********************** Track  2 **********************@

	.global mus_mid_boss_2
mus_mid_boss_2:	@ 0x08D47DE9
	.byte	KEYSH	, 0
	.byte	VOICE	, 127
	.byte	VOL	, v082
	.byte		N07	, Cn0, v100
	.byte		N05	, Ds0, v092
	.byte	W06
	.byte			Ds0, v064
	.byte	W06
	.byte		N11	, As0, v032
	.byte	W06
	.byte		N05	, Ds0, v064
	.byte	W06
	.byte			Ds0, v092
	.byte		N02	, Gs0, v052
	.byte	W06
	.byte		N05	, Ds0, v060
	.byte		N02	, Gs0, v048
	.byte	W06
	.byte		N05	, Cn0, v092
	.byte		N11	, As0, v048
	.byte	W12
mus_mid_boss_2_4:
	.byte		N05	, Cn0, v100
	.byte	W06
	.byte		N02	, Gs0, v044
	.byte	W06
	.byte		N11	, As0, v032
	.byte	W12
	.byte		N05	, Ds0, v092
	.byte	W06
	.byte		N02	, Gs0, v044
	.byte	W06
	.byte		N05	, As0, v032
	.byte	W06
	.byte			Ds0, v056
	.byte	W06
	.byte			Cn0, v100
	.byte	W06
	.byte			Ds0, v064
	.byte	W06
	.byte		N11	, As0, v032
	.byte	W12
	.byte		N05	, Ds0, v080
	.byte	W06
	.byte		N02	, Gs0, v044
	.byte	W06
	.byte		N11	, As0, v032
	.byte	W12
mus_mid_boss_2_1:
	.byte		N05	, Cn0, v100
	.byte	W06
	.byte		N02	, Gs0, v044
	.byte	W06
	.byte		N11	, As0, v032
	.byte	W12
	.byte		N05	, Ds0, v092
	.byte	W06
	.byte		N02	, Gs0, v044
	.byte	W06
	.byte		N05	, As0, v032
	.byte	W06
	.byte			Ds0, v056
	.byte	W06
	.byte			Cn0, v100
	.byte	W06
	.byte			Ds0, v064
	.byte	W06
	.byte		N11	, As0, v032
	.byte	W12
	.byte		N05	, Ds0, v080
	.byte	W06
	.byte			Cn0, v092
	.byte	W06
	.byte			As0, v032
	.byte	W06
	.byte			Ds0, v080
	.byte	W06
	.byte	PEND
mus_mid_boss_2_2:
	.byte		N05	, Cn0, v096
	.byte	W06
	.byte		N02	, Gs0, v044
	.byte	W06
	.byte		N11	, As0, v032
	.byte	W12
	.byte		N05	, Ds0, v092
	.byte	W06
	.byte		N02	, Gs0, v044
	.byte	W06
	.byte		N05	, As0, v032
	.byte	W06
	.byte			Ds0, v056
	.byte	W06
	.byte			Cn0, v096
	.byte	W06
	.byte			Ds0, v064
	.byte	W06
	.byte		N11	, As0, v032
	.byte	W12
	.byte		N05	, Ds0, v080
	.byte	W06
	.byte		N02	, Gs0, v044
	.byte	W06
	.byte		N11	, As0, v032
	.byte	W12
	.byte	PEND
mus_mid_boss_2_3:
	.byte		N05	, Cn0, v096
	.byte	W06
	.byte		N02	, Gs0, v044
	.byte	W06
	.byte		N11	, As0, v032
	.byte	W12
	.byte		N05	, Ds0, v092
	.byte	W06
	.byte		N02	, Gs0, v044
	.byte	W06
	.byte		N05	, As0, v032
	.byte	W06
	.byte			Ds0, v076
	.byte	W06
	.byte			Ds0, v092
	.byte	W06
	.byte			Ds0, v080
	.byte	W06
	.byte		N11	, As0, v032
	.byte	W12
	.byte		N05	, Ds0, v084
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			As0, v032
	.byte	W06
	.byte			Ds0, v084
	.byte	W06
	.byte	PEND
	.byte			Cn0, v100
	.byte	W06
	.byte		N02	, Gs0, v044
	.byte	W06
	.byte		N11	, As0, v032
	.byte	W12
	.byte		N05	, Ds0, v092
	.byte	W06
	.byte		N02	, Gs0, v044
	.byte	W06
	.byte		N05	, As0, v032
	.byte	W06
	.byte			Ds0, v056
	.byte	W06
	.byte			Cn0, v100
	.byte	W06
	.byte			Ds0, v064
	.byte	W06
	.byte		N11	, As0, v032
	.byte	W12
	.byte		N05	, Ds0, v080
	.byte	W06
	.byte		N02	, Gs0, v044
	.byte	W06
	.byte		N11	, As0, v032
	.byte	W12
	.byte	PATT	
		.word	mus_mid_boss_2_1
	.byte	PATT	
		.word	mus_mid_boss_2_2
	.byte	PATT	
		.word	mus_mid_boss_2_3
	.byte	GOTO	
		.word	mus_mid_boss_2_4
	.byte	W48
	.byte	FINE

	@********************** Track  3 **********************@

	.global mus_mid_boss_3
mus_mid_boss_3:	@ 0x08D47F23
	.byte	KEYSH	, 0
	.byte	VOICE	, 12
	.byte	PAN	, c_v-12
	.byte	VOL	, v040
	.byte	W48
mus_mid_boss_3_4:
	.byte		N03	, Bn2, v096
	.byte	W18
	.byte		N03	
	.byte	W18
	.byte		N03	
	.byte	W24
	.byte			Cs3
	.byte	W12
	.byte		N03	
	.byte	W24
mus_mid_boss_3_1:
	.byte		N03	, Dn3, v096
	.byte	W18
	.byte		N03	
	.byte	W18
	.byte		N03	
	.byte	W24
	.byte			Cs3
	.byte	W12
	.byte		N03	
	.byte	W24
	.byte	PEND
	.byte			Bn2
	.byte	W18
	.byte		N03	
	.byte	W18
	.byte		N03	
	.byte	W24
	.byte			Cs3
	.byte	W12
	.byte		N03	
	.byte	W24
	.byte	PATT	
		.word	mus_mid_boss_3_1
mus_mid_boss_3_2:
	.byte		N03	, Cn3, v096
	.byte	W18
	.byte		N03	
	.byte	W18
	.byte		N03	
	.byte	W24
	.byte			Dn3
	.byte	W12
	.byte		N03	
	.byte	W24
	.byte	PEND
mus_mid_boss_3_3:
	.byte		N03	, Ds3, v096
	.byte	W18
	.byte		N03	
	.byte	W18
	.byte		N03	
	.byte	W24
	.byte			Dn3
	.byte	W12
	.byte		N03	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	mus_mid_boss_3_2
	.byte	PATT	
		.word	mus_mid_boss_3_3
	.byte	GOTO	
		.word	mus_mid_boss_3_4
	.byte	W48
	.byte	FINE

	@********************** Track  4 **********************@

	.global mus_mid_boss_4
mus_mid_boss_4:	@ 0x08D47F7F
	.byte	KEYSH	, 0
	.byte	VOICE	, 12
	.byte	PAN	, c_v+12
	.byte	VOL	, v040
	.byte	W48
mus_mid_boss_4_4:
	.byte		N03	, Gn2, v096
	.byte	W18
	.byte		N03	
	.byte	W18
	.byte		N03	
	.byte	W24
	.byte			An2
	.byte	W12
	.byte		N03	
	.byte	W24
mus_mid_boss_4_1:
	.byte		N03	, Bn2, v096
	.byte	W18
	.byte		N03	
	.byte	W18
	.byte		N03	
	.byte	W24
	.byte			An2
	.byte	W12
	.byte		N03	
	.byte	W24
	.byte	PEND
	.byte			Gn2
	.byte	W18
	.byte		N03	
	.byte	W18
	.byte		N03	
	.byte	W24
	.byte			An2
	.byte	W12
	.byte		N03	
	.byte	W24
	.byte	PATT	
		.word	mus_mid_boss_4_1
mus_mid_boss_4_2:
	.byte		N03	, Gs2, v096
	.byte	W18
	.byte		N03	
	.byte	W18
	.byte		N03	
	.byte	W24
	.byte			As2
	.byte	W12
	.byte		N03	
	.byte	W24
	.byte	PEND
mus_mid_boss_4_3:
	.byte		N03	, Cn3, v096
	.byte	W18
	.byte		N03	
	.byte	W18
	.byte		N03	
	.byte	W24
	.byte			As2
	.byte	W12
	.byte		N03	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	mus_mid_boss_4_2
	.byte	PATT	
		.word	mus_mid_boss_4_3
	.byte	GOTO	
		.word	mus_mid_boss_4_4
	.byte	W48
	.byte	FINE

	@********************** Track  5 **********************@

	.global mus_mid_boss_5
mus_mid_boss_5:	@ 0x08D47FDB
	.byte	KEYSH	, 0
	.byte	VOL	, v029
	.byte	W24
	.byte	VOICE	, 26
	.byte	W01
	.byte	PAN	, c_v-17
	.byte	W01
	.byte	LFOS	, 45
	.byte	MODT	, 0
	.byte	LFODL	, 13
	.byte	W01
	.byte	MOD	, 0
	.byte	W21
mus_mid_boss_5_3:
	.byte	W48
	.byte		N04	, Gn5, v060
	.byte	W06
	.byte			En5
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte			Bn4
	.byte	W06
	.byte			En5
	.byte	W06
	.byte			Bn4
	.byte	W06
mus_mid_boss_5_1:
	.byte	W48
	.byte		N04	, Gn5, v060
	.byte	W06
	.byte			En5
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte			Bn4
	.byte	W06
	.byte			En5
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	mus_mid_boss_5_1
	.byte	PATT	
		.word	mus_mid_boss_5_1
mus_mid_boss_5_2:
	.byte	W48
	.byte		N04	, Gs5, v060
	.byte	W06
	.byte			Fn5
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte			Cn5
	.byte	W06
	.byte			Fn5
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte	PEND
	.byte	W48
	.byte			Gs5
	.byte	W06
	.byte			Fn5
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte			Cn5
	.byte	W12
	.byte		N04	
	.byte	W06
	.byte	PATT	
		.word	mus_mid_boss_5_2
	.byte	PATT	
		.word	mus_mid_boss_5_2
	.byte	GOTO	
		.word	mus_mid_boss_5_3
	.byte	W48
	.byte	FINE

	@********************** Track  6 **********************@

	.global mus_mid_boss_6
mus_mid_boss_6:	@ 0x08D48045
	.byte	KEYSH	, 0
	.byte	VOICE	, 7
	.byte	VOL	, v038
	.byte	PAN	, c_v
	.byte	LFOS	, 45
	.byte	MODT	, 2
	.byte	LFODL	, 0
	.byte	MOD	, 51
	.byte	W48
mus_mid_boss_6_3:
	.byte	W06
	.byte		N02	, En3, v072
	.byte	W06
	.byte			En3, v080
	.byte	W12
	.byte		N02	
	.byte	W06
	.byte			En3, v072
	.byte	W12
	.byte			En3, v064
	.byte	W06
	.byte			En3, v072
	.byte	W06
	.byte			En3, v080
	.byte	W12
	.byte			En3, v072
	.byte	W12
	.byte			En3, v080
	.byte	W06
	.byte		N02	
	.byte	W06
	.byte			En3, v072
	.byte	W06
mus_mid_boss_6_1:
	.byte	W06
	.byte		N02	, En3, v072
	.byte	W06
	.byte			En3, v080
	.byte	W12
	.byte		N02	
	.byte	W06
	.byte			En3, v072
	.byte	W12
	.byte			En3, v064
	.byte	W06
	.byte			En3, v072
	.byte	W06
	.byte			En3, v080
	.byte	W12
	.byte			En3, v072
	.byte	W12
	.byte			En3, v080
	.byte	W06
	.byte		N02	
	.byte	W06
	.byte			En3, v072
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	mus_mid_boss_6_1
	.byte	PATT	
		.word	mus_mid_boss_6_1
mus_mid_boss_6_2:
	.byte	W06
	.byte		N02	, Fn3, v072
	.byte	W06
	.byte			Fn3, v080
	.byte	W12
	.byte		N02	
	.byte	W06
	.byte			Fn3, v072
	.byte	W12
	.byte			Fn3, v064
	.byte	W06
	.byte			Fn3, v072
	.byte	W06
	.byte			Fn3, v080
	.byte	W12
	.byte			Fn3, v072
	.byte	W12
	.byte			Fn3, v080
	.byte	W06
	.byte		N02	
	.byte	W06
	.byte			Fn3, v072
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	mus_mid_boss_6_2
	.byte	PATT	
		.word	mus_mid_boss_6_2
	.byte	PATT	
		.word	mus_mid_boss_6_2
	.byte	GOTO	
		.word	mus_mid_boss_6_3
	.byte	W48
	.byte	FINE

	@********************** Track  7 **********************@

	.global mus_mid_boss_7
mus_mid_boss_7:	@ 0x08D480DB
	.byte	KEYSH	, 0
	.byte	VOICE	, 24
	.byte	VOL	, v032
	.byte	PAN	, c_v+21
	.byte	W48
mus_mid_boss_7_3:
	.byte	W06
	.byte		N03	, En5, v072
	.byte	W06
	.byte			En6
	.byte	W84
mus_mid_boss_7_1:
	.byte	W06
	.byte		N03	, En5, v072
	.byte	W06
	.byte			En6
	.byte	W84
	.byte	PEND
	.byte	PATT	
		.word	mus_mid_boss_7_1
	.byte	PATT	
		.word	mus_mid_boss_7_1
mus_mid_boss_7_2:
	.byte	W06
	.byte		N03	, Fn5, v072
	.byte	W06
	.byte			Fn6
	.byte	W84
	.byte	PEND
	.byte	W06
	.byte			Fn5
	.byte	W06
	.byte			Fn6
	.byte	W72
	.byte			Fn5
	.byte	W12
	.byte	PATT	
		.word	mus_mid_boss_7_2
	.byte	PATT	
		.word	mus_mid_boss_7_2
	.byte	GOTO	
		.word	mus_mid_boss_7_3
	.byte	W48
	.byte	FINE

	.align 2
	.global mus_mid_boss
mus_mid_boss:	@ 0x08D48120
	.byte	7		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	mus_mid_boss_1		@ track
	.word	mus_mid_boss_2		@ track
	.word	mus_mid_boss_3		@ track
	.word	mus_mid_boss_4		@ track
	.word	mus_mid_boss_5		@ track
	.word	mus_mid_boss_6		@ track
	.word	mus_mid_boss_7		@ track
