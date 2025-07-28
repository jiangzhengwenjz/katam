	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global mus_ending_1
mus_ending_1:	@ 0x08D4B878
	.byte	KEYSH	, 0
	.byte	TEMPO	, 82
	.byte	VOICE	, 67
mus_ending_1_12:
	.byte	VOL	, v105
	.byte	PAN	, c_v
	.byte	BEND	, c_v
	.byte		N12	, Gs1, v108
	.byte		N24	, Dn3, v052
	.byte	W12
	.byte		N12	, Fs0, v120
	.byte	W12
	.byte			Bn2, v092
	.byte		N24	, Dn3, v032
	.byte	W12
	.byte		N12	, Gs1, v108
	.byte	W12
	.byte			Fs0, v120
	.byte		N24	, Dn3, v052
	.byte	W12
	.byte		N12	, Fs0, v120
	.byte	W12
	.byte			Bn2, v092
	.byte		N24	, Dn3, v032
	.byte	W12
	.byte		N12	, Gs1, v108
	.byte	W12
mus_ending_1_1:
	.byte		N12	, Fs0, v120
	.byte		N24	, Dn3, v052
	.byte	W12
	.byte		N12	, Gs1, v108
	.byte	W12
	.byte			Bn2, v092
	.byte		N24	, Dn3, v032
	.byte	W12
	.byte		N12	, Fs0, v120
	.byte	W12
	.byte			Gs1, v108
	.byte		N24	, Dn3, v052
	.byte	W12
	.byte		N12	, Fs0, v120
	.byte	W12
	.byte			Bn2, v092
	.byte		N24	, Dn3, v032
	.byte	W12
	.byte		N12	, As0, v120
	.byte	W12
	.byte	PEND
mus_ending_1_2:
	.byte		N12	, Gs1, v108
	.byte		N24	, Dn3, v052
	.byte	W12
	.byte		N12	, Fs0, v120
	.byte	W12
	.byte			Bn2, v092
	.byte		N24	, Dn3, v032
	.byte	W12
	.byte		N12	, Gs1, v108
	.byte	W12
	.byte			Fs0, v120
	.byte		N24	, Dn3, v052
	.byte	W12
	.byte		N12	, Gs1, v108
	.byte	W12
	.byte			Bn2, v092
	.byte		N24	, Dn3, v032
	.byte	W12
	.byte		N12	, Gs1, v108
	.byte	W12
	.byte	PEND
mus_ending_1_3:
	.byte		N12	, As0, v120
	.byte	W12
	.byte			Cn1, v092
	.byte	W12
	.byte			Bn0
	.byte	W12
	.byte			As0, v120
	.byte	W12
	.byte			Fs0
	.byte	W12
	.byte			Gs1, v108
	.byte		N36	, Cs3, v060
	.byte	W36
	.byte	PEND
	.byte		N12	, Gs1, v108
	.byte		N24	, Dn3, v052
	.byte	W12
	.byte		N12	, Fs0, v120
	.byte	W12
	.byte			Bn2, v092
	.byte		N24	, Dn3, v032
	.byte	W12
	.byte		N12	, Gs1, v108
	.byte	W12
	.byte			Fs0, v120
	.byte		N24	, Dn3, v052
	.byte	W12
	.byte		N12	, Fs0, v120
	.byte	W12
	.byte			Bn2, v092
	.byte		N24	, Dn3, v032
	.byte	W12
	.byte		N12	, Gs1, v108
	.byte	W12
	.byte	PATT	
		.word	mus_ending_1_1
	.byte	PATT	
		.word	mus_ending_1_2
	.byte	PATT	
		.word	mus_ending_1_3
mus_ending_1_4:
	.byte		N12	, Gs1, v108
	.byte		N48	, Cs3, v052
	.byte	W12
	.byte		N12	, Fs0, v120
	.byte	W12
	.byte			Bn2, v092
	.byte	W12
	.byte			Fs0, v120
	.byte	W12
	.byte			Gs1, v108
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Bn2, v092
	.byte	W12
	.byte			Gs1, v108
	.byte	W12
	.byte	PEND
mus_ending_1_5:
	.byte	W12
	.byte		N12	, Gs1, v108
	.byte	W12
	.byte			Bn2, v092
	.byte	W12
	.byte			Fs0, v120
	.byte	W12
	.byte			Gs1, v108
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Bn2, v092
	.byte	W12
	.byte			As0, v100
	.byte	W12
	.byte	PEND
mus_ending_1_6:
	.byte		N12	, Gs1, v108
	.byte	W12
	.byte			Fs0, v120
	.byte	W12
	.byte			Bn2, v092
	.byte	W12
	.byte			Fs0, v120
	.byte	W12
	.byte			Gs1, v108
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Bn2, v092
	.byte	W12
	.byte			Gs1, v108
	.byte		N36	, Cs3, v052
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte		N12	, Bn2, v092
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Gs1, v108
	.byte		N36	, Cs3, v040
	.byte	W12
	.byte		N12	, Fs0, v120
	.byte	W12
	.byte			Bn0, v100
	.byte	W12
	.byte			An0
	.byte	W12
	.byte			Gn0
	.byte	W12
	.byte	PATT	
		.word	mus_ending_1_4
	.byte	PATT	
		.word	mus_ending_1_5
	.byte	PATT	
		.word	mus_ending_1_6
	.byte	W12
	.byte		N12	, Bn2, v092
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			As0, v120
	.byte		N12	, Gs1, v108
	.byte	W12
	.byte			Fs0, v120
	.byte	W12
	.byte			Gs1, v108
	.byte		N36	, Cs3, v052
	.byte	W12
	.byte		N12	, An0, v092
	.byte	W12
	.byte			Gn0, v100
	.byte	W12
mus_ending_1_9:
	.byte		N12	, Gs1, v108
	.byte		N48	, Cs3, v052
	.byte	W12
	.byte		N12	, En1, v040
	.byte		N12	, En2, v060
	.byte	W12
	.byte			Ds1, v052
	.byte		N12	, Gs2, v060
	.byte	W12
	.byte			As0, v120
	.byte		N12	, Gs1, v108
	.byte	W12
	.byte			Fs0, v120
	.byte	W12
	.byte			Fs0, v004
	.byte		N12	, En1, v040
	.byte	W12
	.byte			Ds1, v052
	.byte		N24	, Bn2, v100
	.byte	W12
	.byte		N12	, Fs0, v004
	.byte		N12	, En1, v040
	.byte	W12
	.byte	PEND
mus_ending_1_7:
	.byte		N12	, Gs1, v108
	.byte	W12
	.byte			En1, v040
	.byte		N12	, En2, v060
	.byte	W12
	.byte			Ds1, v052
	.byte		N12	, Gs2, v060
	.byte	W12
	.byte			As0, v120
	.byte		N12	, Gs1, v108
	.byte	W12
	.byte			Fs0, v120
	.byte	W12
	.byte			En1, v040
	.byte	W12
	.byte		N24	, An0, v112
	.byte		N12	, Ds1, v052
	.byte	W12
	.byte			En1, v040
	.byte	W12
	.byte	PEND
mus_ending_1_8:
	.byte		N12	, Gs1, v108
	.byte	W12
	.byte			En1, v040
	.byte		N12	, En2, v060
	.byte	W12
	.byte			Ds1, v052
	.byte		N12	, Gs2, v060
	.byte	W12
	.byte			As0, v120
	.byte		N12	, Gs1, v108
	.byte	W12
	.byte			Fs0, v120
	.byte	W12
	.byte			Fs0, v004
	.byte		N12	, En1, v040
	.byte	W12
	.byte			Ds1, v052
	.byte		N24	, Bn2, v100
	.byte	W12
	.byte		N12	, Fs0, v004
	.byte		N12	, En1, v040
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	mus_ending_1_7
	.byte	PATT	
		.word	mus_ending_1_8
	.byte	PATT	
		.word	mus_ending_1_7
	.byte	PATT	
		.word	mus_ending_1_8
	.byte		N12	, Gs1, v108
	.byte	W12
	.byte			Bn0, v092
	.byte		N12	, En1, v040
	.byte	W12
	.byte			An0, v100
	.byte		N12	, Ds1, v052
	.byte	W12
	.byte			Gn0, v112
	.byte	W12
	.byte			Bn2, v100
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			An0, v112
	.byte	W12
	.byte			Gn0
	.byte		N12	, En1, v040
	.byte	W12
	.byte	PATT	
		.word	mus_ending_1_9
	.byte	PATT	
		.word	mus_ending_1_7
	.byte	PATT	
		.word	mus_ending_1_8
	.byte		N12	, Gs1, v108
	.byte	W12
	.byte			Cn1, v100
	.byte		N12	, En1, v040
	.byte	W12
	.byte			An0, v004
	.byte		N12	, Ds1, v052
	.byte	W12
	.byte			An0, v112
	.byte	W12
	.byte			Bn2, v100
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Gn0, v112
	.byte		N12	, En1, v040
	.byte	W12
mus_ending_1_11:
	.byte		N12	, Gs1, v108
	.byte		N36	, Cs3, v040
	.byte	W24
	.byte		N12	, Bn2, v100
	.byte	W12
	.byte			Gs1, v108
	.byte	W12
	.byte			Fs0, v080
	.byte	W12
	.byte			Gs1, v108
	.byte	W12
	.byte			Bn2, v100
	.byte	W12
	.byte			As0, v092
	.byte		N12	, Gs1, v108
	.byte	W12
	.byte	PEND
mus_ending_1_10:
	.byte		N24	, Dn3, v032
	.byte	W12
	.byte		N12	, Gs1, v108
	.byte	W12
	.byte			Bn2, v100
	.byte		N24	, Dn3, v040
	.byte	W24
	.byte		N12	, Gs1, v108
	.byte		N24	, Dn3, v032
	.byte	W24
	.byte		N12	, Bn2, v100
	.byte		N24	, Dn3, v040
	.byte	W24
	.byte	PEND
	.byte		N12	, Gs1, v108
	.byte		N12	, Dn3, v032
	.byte	W24
	.byte			Bn2, v100
	.byte		N12	, Dn3, v040
	.byte	W12
	.byte			Gs1, v108
	.byte	W12
	.byte			Dn3, v032
	.byte	W12
	.byte			Gs1, v108
	.byte	W12
	.byte			Bn2, v100
	.byte		N12	, Dn3, v040
	.byte	W12
	.byte			As0, v092
	.byte		N12	, Gs1, v108
	.byte	W12
	.byte	PATT	
		.word	mus_ending_1_10
	.byte	PATT	
		.word	mus_ending_1_11
	.byte		N24	, Dn3, v032
	.byte	W12
	.byte		N12	, Gs1, v108
	.byte	W12
	.byte			Bn2, v100
	.byte		N24	, Dn3, v040
	.byte	W24
	.byte		N12	, Gs1, v108
	.byte		N24	, Dn3, v032
	.byte	W24
	.byte		N12	, Bn2, v100
	.byte	W12
	.byte			As0, v112
	.byte		N12	, Gs1, v108
	.byte	W12
	.byte	W24
	.byte			Bn2, v100
	.byte		N24	, Dn3, v032
	.byte	W24
	.byte		N12	, Gs1, v108
	.byte		N24	, Dn3, v040
	.byte	W24
	.byte		N12	, Bn2, v100
	.byte		N24	, Dn3, v032
	.byte	W12
	.byte		N12	, Gs1, v108
	.byte		N36	, Cs3, v040
	.byte	W12
	.byte	W12
	.byte		N12	, Bn2, v112
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Gs1, v108
	.byte		N36	, Cs3, v040
	.byte	W12
	.byte		N12	, Cn1, v100
	.byte	W12
	.byte			Bn0, v108
	.byte	W12
	.byte			An0, v112
	.byte	W12
	.byte			Gn0, v116
	.byte	W12
	.byte	GOTO	
		.word	mus_ending_1_12
	.byte	W96
	.byte	FINE

	@********************** Track  2 **********************@

	.global mus_ending_2
mus_ending_2:	@ 0x08D4BB8D
	.byte	KEYSH	, 0
	.byte	VOICE	, 68
mus_ending_2_8:
	.byte	VOL	, v101
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte	BEND	, c_v
	.byte		N12	, Bn2, v120
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte		N24	, An2
	.byte	W12
mus_ending_2_1:
	.byte	W12
	.byte		N12	, An2, v112
	.byte	W12
	.byte			An2, v120
	.byte	W12
	.byte			Bn3, v100
	.byte	W12
	.byte			An2, v120
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte	PEND
mus_ending_2_2:
	.byte		N12	, En3, v120
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte		N24	, Fs2
	.byte	W12
	.byte	PEND
mus_ending_2_3:
	.byte	W12
	.byte		N12	, Fs3, v120
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte		N09	, Fs3
	.byte	W24
	.byte		N36	, Fs2, v127
	.byte	W36
	.byte	PEND
	.byte		N12	, Bn2, v100
	.byte	W12
	.byte			Bn2, v120
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte		N24	, An2, v112
	.byte	W12
	.byte	PATT	
		.word	mus_ending_2_1
	.byte	PATT	
		.word	mus_ending_2_2
	.byte	PATT	
		.word	mus_ending_2_3
mus_ending_2_4:
	.byte		N12	, Bn2, v120
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte		N24	, An2
	.byte	W12
	.byte	PEND
mus_ending_2_5:
	.byte	W12
	.byte		N12	, An2, v120
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte	PEND
	.byte			Bn2
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			Bn3, v112
	.byte	W12
	.byte			Bn2, v120
	.byte	W12
	.byte		N24	, An2
	.byte	W12
	.byte	W12
	.byte		N12	, An3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte		N24	, Fs2
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte	PATT	
		.word	mus_ending_2_4
	.byte	PATT	
		.word	mus_ending_2_5
	.byte		N12	, Bn2, v120
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte		N24	, An2
	.byte	W12
	.byte	W12
	.byte		N12	, An3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Gs2
	.byte	W24
	.byte		N22	, Fs2
	.byte	W24
	.byte		N09	, Gn3, v100
	.byte	W12
	.byte		N12	, En2, v120
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Bn2
	.byte	W24
	.byte		N01	, Bn3, v092
	.byte	W12
	.byte		N21	, En2, v080
	.byte	W24
	.byte		N12	, Fs2, v120
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Cs3
	.byte	W24
	.byte		N32	, Fs2, v080
	.byte	W36
	.byte		N12	, Ds2, v120
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			As2
	.byte	W24
	.byte		N24	, Ds2, v072
	.byte	W24
	.byte		N06	, Ds2, v080
	.byte	W12
	.byte		N12	, Gs2, v120
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Ds3
	.byte	W24
	.byte		N01	, Ds4, v072
	.byte	W12
	.byte		N21	, Gs2, v080
	.byte	W24
	.byte		N12	, Cs3, v120
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			En2
	.byte	W12
	.byte		N09	, Gs2
	.byte	W24
	.byte		N32	, Cs3, v100
	.byte	W36
	.byte		N12	, Gn2, v120
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			As2
	.byte	W12
	.byte		N09	, Cs3
	.byte	W24
	.byte	BEND	, c_v-32
	.byte		N24	, Cs4, v072
	.byte	W12
	.byte	BEND	, c_v
	.byte	W12
	.byte		N12	, Gn2, v100
	.byte	W12
	.byte			Bn2, v120
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte			Fs3
	.byte	W24
	.byte		N32	, Bn2, v100
	.byte	W36
	.byte		N12	, Cn3, v120
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			En2
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Bn2
	.byte	W24
	.byte		N24	, En2
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte		N12	, Fs2
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Cs3
	.byte	W24
	.byte		N24	, Fs2
	.byte	W36
	.byte		N12	, Gn2
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Cs3
	.byte	W24
	.byte		N24	, Gn2
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte		N12	, Gs2
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Ds3
	.byte	W24
	.byte		N24	, Cn3
	.byte	W24
	.byte		N12	, Gs2
	.byte	W12
mus_ending_2_6:
	.byte		N12	, En3, v120
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Ds3
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N24	, Cs3
	.byte	W12
	.byte	PEND
mus_ending_2_7:
	.byte	W12
	.byte		N12	, Cs3, v120
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	mus_ending_2_6
	.byte	PATT	
		.word	mus_ending_2_7
	.byte	PATT	
		.word	mus_ending_2_6
	.byte	W12
	.byte		N12	, Cs3, v120
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N24	, Fs2
	.byte	W12
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N24	, Gs2
	.byte	W12
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N24	, As2
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte	GOTO	
		.word	mus_ending_2_8
	.byte	W96
	.byte	FINE

	@********************** Track  3 **********************@

	.global mus_ending_3
mus_ending_3:	@ 0x08D4BDA4
	.byte	KEYSH	, 0
	.byte	VOICE	, 69
mus_ending_3_5:
	.byte	VOL	, v032
	.byte	PAN	, c_v
	.byte	MOD	, 1
	.byte	BEND	, c_v-32
	.byte		N23	, Cs4, v080
	.byte	W03
	.byte	BEND	, c_v
	.byte	W21
	.byte		N12	, Bn3
	.byte	W12
	.byte		N24	, As3
	.byte	W24
	.byte			Bn3
	.byte	W24
	.byte			Cs4, v072
	.byte	W12
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N24	, Bn3
	.byte	W24
	.byte			As3, v080
	.byte	W24
	.byte			Bn3
	.byte	W24
mus_ending_3_1:
	.byte	BEND	, c_v-32
	.byte		N24	, Ds4, v080
	.byte	W03
	.byte	BEND	, c_v
	.byte	W21
	.byte		N12	, Cs4
	.byte	W12
	.byte		N24	, Cn4
	.byte	W24
	.byte			Cs4
	.byte	W24
	.byte			As3
	.byte	W12
	.byte	PEND
mus_ending_3_2:
	.byte	W12
	.byte		N12	, As3, v080
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			Cs4
	.byte	W24
	.byte		N36	, Fs3
	.byte	W36
	.byte	PEND
	.byte	BEND	, c_v-32
	.byte		N24	, Cs4
	.byte	W03
	.byte	BEND	, c_v
	.byte	W21
	.byte		N12	, Bn3
	.byte	W12
	.byte		N24	, As3
	.byte	W24
	.byte			Bn3
	.byte	W24
	.byte			Cs4
	.byte	W12
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N24	, Bn3
	.byte	W24
	.byte			As3
	.byte	W24
	.byte			Bn3
	.byte	W24
	.byte	PATT	
		.word	mus_ending_3_1
	.byte	PATT	
		.word	mus_ending_3_2
	.byte	W96
	.byte	W96
	.byte	VOICE	, 113
	.byte	VOL	, v064
	.byte	PAN	, c_v+10
	.byte	W84
	.byte		N48	, An2, v072
	.byte	W12
	.byte	W36
	.byte		N60	, Fs2
	.byte	W60
	.byte	W96
	.byte	W96
	.byte	W84
	.byte		N48	, An2, v092
	.byte	W12
	.byte	W36
	.byte		N12	, Gs2, v100
	.byte	W24
	.byte		N24	, Fs2, v092
	.byte	W24
	.byte		N09	, Gn2, v096
	.byte	W12
	.byte	VOICE	, 105
	.byte	VOL	, v078
	.byte	PAN	, c_v-30
	.byte		N12	, En3, v072
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte		N24	, Ds4
	.byte	W24
	.byte		N12	, Bn3
	.byte	W24
	.byte			Bn3, v036
	.byte	W12
mus_ending_3_3:
	.byte	W12
	.byte		N12	, Fs3, v072
	.byte	W12
	.byte			As3
	.byte	W12
	.byte		N24	, Cs4
	.byte	W24
	.byte			As3
	.byte	W24
	.byte		N12	, Fs3
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			As3
	.byte	W12
	.byte		N24	, Cs4
	.byte	W24
	.byte		N12	, As3
	.byte	W24
	.byte			As3, v036
	.byte	W12
	.byte			Ds3, v072
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte		N24	, Ds4
	.byte	W24
	.byte			Bn3
	.byte	W24
	.byte		N12	, Gs3
	.byte	W12
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte		N24	, Bn3
	.byte	W24
	.byte		N12	, En3
	.byte	W24
	.byte			En3, v036
	.byte	W12
	.byte			En3, v072
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			As3
	.byte	W12
	.byte		N24	, Cs4
	.byte	W24
	.byte			As3
	.byte	W24
	.byte		N12	, Gn3
	.byte	W12
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte		N24	, As3
	.byte	W24
	.byte		N12	, Fs3
	.byte	W24
	.byte			Fs3, v036
	.byte	W12
	.byte			Ds4, v060
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			Gs4
	.byte	W12
	.byte		N24	, Cn5
	.byte	W24
	.byte			Gs4
	.byte	W24
	.byte		N12	, Ds4
	.byte	W12
	.byte	W12
	.byte			Gs3, v072
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte		N24	, Ds4
	.byte	W24
	.byte		N12	, Bn3
	.byte	W24
	.byte			Bn3, v036
	.byte	W12
	.byte	PATT	
		.word	mus_ending_3_3
	.byte	W12
	.byte		N12	, Gn3, v072
	.byte	W12
	.byte			As3
	.byte	W12
	.byte		N24	, Cs4
	.byte	W24
	.byte		N12	, Gn3
	.byte	W24
	.byte			Gn3, v036
	.byte	W12
	.byte	W96
	.byte	VOICE	, 113
	.byte	VOL	, v055
	.byte	PAN	, c_v+10
	.byte		N36	, Ds3, v092
	.byte	W36
	.byte		N09	, Cs3
	.byte	W24
	.byte		N09	
	.byte	W24
	.byte		N56	, Bn2
	.byte	W12
mus_ending_3_4:
	.byte	W48
	.byte		N24	, Bn2, v092
	.byte	W24
	.byte		N21	, Cs3
	.byte	W24
	.byte	PEND
	.byte		N36	, Ds3
	.byte	W36
	.byte		N09	, Cs3
	.byte	W24
	.byte		N09	
	.byte	W24
	.byte		N56	, Bn2
	.byte	W12
	.byte	PATT	
		.word	mus_ending_3_4
	.byte		N36	, Ds3, v092
	.byte	W36
	.byte		N09	, Cs3
	.byte	W24
	.byte		N09	
	.byte	W24
	.byte		N60	, Bn2
	.byte	W12
	.byte	W48
	.byte		N36	
	.byte	W36
	.byte		N96	
	.byte	W12
	.byte	W84
	.byte		N48	, Cs3
	.byte	W12
	.byte	W36
	.byte			Ds3
	.byte	W48
	.byte	W03
	.byte	VOICE	, 69
	.byte	W03
	.byte	PAN	, c_v-10
	.byte	VOL	, v046
	.byte	W06
	.byte	GOTO	
		.word	mus_ending_3_5
	.byte	W96
	.byte	FINE

	@********************** Track  4 **********************@

	.global mus_ending_4
mus_ending_4:	@ 0x08D4BF2F
	.byte	KEYSH	, 0
	.byte	VOICE	, 69
mus_ending_4_5:
	.byte	VOL	, v046
	.byte	PAN	, c_v+10
	.byte	MOD	, 1
	.byte	BEND	, c_v-32
	.byte		N23	, Fs3, v080
	.byte	W03
	.byte	BEND	, c_v
	.byte	W21
	.byte		N12	
	.byte	W12
	.byte		N24	
	.byte	W24
	.byte		N24	
	.byte	W24
	.byte			An3
	.byte	W12
	.byte	W12
	.byte		N12	, An3, v072
	.byte	W12
	.byte		N24	, Fs3, v080
	.byte	W24
	.byte		N24	
	.byte	W24
	.byte			An3
	.byte	W24
mus_ending_4_1:
	.byte	BEND	, c_v-32
	.byte		N24	, Bn3, v080
	.byte	W03
	.byte	BEND	, c_v
	.byte	W21
	.byte		N12	, Gs3
	.byte	W12
	.byte		N24	
	.byte	W24
	.byte			Bn3
	.byte	W24
	.byte			Fs3
	.byte	W12
	.byte	PEND
mus_ending_4_2:
	.byte	W12
	.byte		N12	, Fs3, v080
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte			As3
	.byte	W24
	.byte		N36	, Cs3
	.byte	W36
	.byte	PEND
	.byte	BEND	, c_v-32
	.byte		N24	, Fs3
	.byte	W03
	.byte	BEND	, c_v
	.byte	W21
	.byte		N12	
	.byte	W12
	.byte		N24	
	.byte	W24
	.byte		N24	
	.byte	W24
	.byte			An3
	.byte	W12
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N24	, Fs3
	.byte	W24
	.byte		N24	
	.byte	W24
	.byte			An3
	.byte	W24
	.byte	PATT	
		.word	mus_ending_4_1
	.byte	PATT	
		.word	mus_ending_4_2
	.byte	W96
	.byte	W96
	.byte	VOICE	, 113
	.byte	VOL	, v064
	.byte	PAN	, c_v-10
	.byte	W84
	.byte		N48	, En2, v072
	.byte	W12
	.byte	W36
	.byte		N60	, Cs2
	.byte	W60
	.byte	W96
	.byte	W96
	.byte	W84
	.byte		N48	, Cs2, v092
	.byte	W12
	.byte	W36
	.byte		N12	, Bn1, v100
	.byte	W24
	.byte		N24	, As1, v092
	.byte	W24
	.byte		N09	, Bn1, v096
	.byte	W12
	.byte	VOICE	, 105
	.byte	VOL	, v078
	.byte	PAN	, c_v+30
	.byte		N12	, Cs3, v072
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte		N24	, Bn3
	.byte	W24
	.byte		N12	, Gs3
	.byte	W24
	.byte			Gs3, v032
	.byte	W12
mus_ending_4_3:
	.byte	W12
	.byte		N12	, Ds3, v072
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte		N24	, As3
	.byte	W24
	.byte			Fs3
	.byte	W24
	.byte		N12	, Ds3
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte		N24	, As3
	.byte	W24
	.byte		N12	, Fs3
	.byte	W24
	.byte			Fs3, v032
	.byte	W12
	.byte			Bn2, v072
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte		N24	, Bn3
	.byte	W24
	.byte			Gs3
	.byte	W24
	.byte		N12	, Ds3
	.byte	W12
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte		N24	, Gs3
	.byte	W24
	.byte		N12	, Cs3
	.byte	W24
	.byte			Cs3, v032
	.byte	W12
	.byte			Cs3, v072
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte		N24	, As3
	.byte	W24
	.byte			Gn3
	.byte	W24
	.byte		N12	, En3
	.byte	W12
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte		N24	, Fs3
	.byte	W24
	.byte		N12	, Ds3
	.byte	W24
	.byte			Ds3, v032
	.byte	W12
	.byte			Cn4, v060
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N24	, Gs4
	.byte	W24
	.byte			Ds4
	.byte	W24
	.byte		N12	, Cn4
	.byte	W12
	.byte	W12
	.byte			En3, v072
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte		N24	, Bn3
	.byte	W24
	.byte		N12	, Gs3
	.byte	W24
	.byte			Gs3, v032
	.byte	W12
	.byte	PATT	
		.word	mus_ending_4_3
	.byte	W12
	.byte		N12	, Ds3, v072
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte		N24	, As3
	.byte	W24
	.byte		N12	, Ds3
	.byte	W24
	.byte			Ds3, v032
	.byte	W12
	.byte			Cn3, v072
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte		N24	, Cn4
	.byte	W24
	.byte		N12	, Gs3
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte	VOICE	, 113
	.byte	VOL	, v055
	.byte	PAN	, c_v-10
	.byte		N36	, Gs2, v092
	.byte	W36
	.byte		N09	, Fs2
	.byte	W24
	.byte		N09	
	.byte	W24
	.byte		N56	, En2
	.byte	W12
mus_ending_4_4:
	.byte	W48
	.byte		N24	, En2, v092
	.byte	W24
	.byte		N21	, Fs2
	.byte	W24
	.byte	PEND
	.byte		N36	, Gs2
	.byte	W36
	.byte		N09	, Fs2
	.byte	W24
	.byte		N09	
	.byte	W24
	.byte		N56	, En2
	.byte	W12
	.byte	PATT	
		.word	mus_ending_4_4
	.byte		N36	, Gs2, v092
	.byte	W36
	.byte		N09	, Fs2
	.byte	W24
	.byte		N09	
	.byte	W24
	.byte		N60	, En2
	.byte	W12
	.byte	W48
	.byte		N36	
	.byte	W36
	.byte		N96	, En3
	.byte	W12
	.byte	W84
	.byte		N48	, Fs3
	.byte	W12
	.byte	W36
	.byte			Gs3
	.byte	W48
	.byte	W03
	.byte	VOICE	, 69
	.byte	W03
	.byte	PAN	, c_v+10
	.byte	VOL	, v046
	.byte	W06
	.byte	GOTO	
		.word	mus_ending_4_5
	.byte	W96
	.byte	FINE

	@********************** Track  5 **********************@

	.global mus_ending_5
mus_ending_5:	@ 0x08D4C0C7
	.byte	KEYSH	, 0
	.byte	VOICE	, 24
mus_ending_5_2:
	.byte	VOL	, v041
	.byte	PAN	, c_v+20
	.byte	MOD	, 1
	.byte	BEND	, c_v
	.byte		N56	, Fs3, v052
	.byte	W60
	.byte		N09	, Fs3, v072
	.byte	W24
	.byte		N72	, Fs3, v052
	.byte	W12
	.byte	W60
	.byte		N09	, Fs3, v072
	.byte	W24
	.byte		N72	, Gs3, v052
	.byte	W12
	.byte	W60
	.byte		N09	, Gs3, v072
	.byte	W24
	.byte		N24	, Cs4, v052
	.byte	W12
	.byte	W12
	.byte		N12	, Cs4, v072
	.byte	W12
	.byte		N09	, Bn3, v052
	.byte	W12
	.byte			As3, v072
	.byte	W24
	.byte		N36	, Cs4, v052
	.byte	W36
	.byte		N60	, Ds4
	.byte	W60
	.byte		N09	, Ds4, v072
	.byte	W24
	.byte		N72	, Ds4, v052
	.byte	W12
	.byte	W60
	.byte		N09	, Ds4, v072
	.byte	W24
	.byte		N72	, Ds4, v052
	.byte	W12
	.byte	W60
	.byte		N09	, Ds4, v072
	.byte	W24
	.byte		N24	, Cs4, v052
	.byte	W12
	.byte	W12
	.byte		N12	, Cs4, v072
	.byte	W12
	.byte		N09	, Bn3, v052
	.byte	W12
	.byte		N10	, As3, v072
	.byte	W24
	.byte		N36	, Cs4, v052
	.byte	W36
	.byte	PAN	, c_v
	.byte	W24
	.byte		N12	, Bn3, v092
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte		N06	, Gs3
	.byte	W12
	.byte			Bn3
	.byte	W24
	.byte		N24	, Dn4
	.byte	W12
	.byte	W12
	.byte		N06	, Ds4
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte		N12	, Cs4
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte		N07	, Gs3
	.byte	W12
	.byte		N06	, Fs3
	.byte	W12
	.byte		N30	, Bn3
	.byte	W12
	.byte	BEND	, c_v-11
	.byte	W03
	.byte		c_v-19
	.byte	W03
	.byte		c_v-28
	.byte	W03
	.byte		c_v-37
	.byte	W03
	.byte		c_v-47
	.byte	W03
	.byte		c_v-56
	.byte	W03
	.byte		c_v-63
	.byte	W66
	.byte	W96
	.byte		c_v
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte		N06	, Gs3
	.byte	W12
	.byte			Bn3
	.byte	W24
	.byte		N24	, Dn4
	.byte	W12
	.byte	W12
	.byte		N06	, Ds4
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Fn4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte	BEND	, c_v-32
	.byte		N12	, Dn4
	.byte	W03
	.byte	BEND	, c_v
	.byte	W09
	.byte		N12	, Cs4
	.byte	W12
	.byte		N36	, Bn3
	.byte	W12
	.byte	W24
	.byte	PAN	, c_v+20
	.byte		N12	, Fs3
	.byte	W12
	.byte		N06	, Cs3
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte			Fs3
	.byte	W36
	.byte	W48
	.byte	VOICE	, 7
	.byte	LFODL	, 20
	.byte	LFOS	, 25
	.byte	MOD	, 4
	.byte	VOL	, v041
	.byte	PAN	, c_v
	.byte	W12
	.byte		N06	, Fs3, v080
	.byte	W12
	.byte		N12	, Fs3, v092
	.byte	W12
	.byte			Gn3, v072
	.byte	W12
mus_ending_5_1:
	.byte		N48	, Gs3, v060
	.byte	W48
	.byte	BEND	, c_v-32
	.byte		N36	, Ds4
	.byte	W03
	.byte	BEND	, c_v
	.byte	W32
	.byte	W01
	.byte		N48	, Cs4
	.byte	W12
	.byte	PEND
	.byte	W36
	.byte		N10	, Bn3
	.byte	W12
	.byte			As3
	.byte	W12
	.byte		N12	, Bn3
	.byte	W12
	.byte		N18	, Cs4
	.byte	W24
	.byte		N48	, Fs3
	.byte	W48
	.byte	BEND	, c_v-32
	.byte		N36	, Cs4
	.byte	W03
	.byte	BEND	, c_v
	.byte	W32
	.byte	W01
	.byte	VOICE	, 122
	.byte		N96	, Bn3
	.byte	W12
	.byte	W96
	.byte	VOICE	, 7
	.byte	W24
	.byte	BEND	, c_v-32
	.byte		N12	, Gs3
	.byte	W03
	.byte	BEND	, c_v
	.byte	W09
	.byte		N09	, As3
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte		N21	, As3
	.byte	W24
	.byte	BEND	, c_v-32
	.byte		N09	, Cs4
	.byte	W03
	.byte	BEND	, c_v
	.byte	W09
	.byte	W12
	.byte		N12	, Bn3
	.byte	W24
	.byte			As3
	.byte	W24
	.byte		N24	, Cs4
	.byte	W24
	.byte		N06	, Gs3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte	VOICE	, 122
	.byte		N96	, Fs3
	.byte	W96
	.byte	W78
	.byte	VOICE	, 7
	.byte	W18
	.byte	PATT	
		.word	mus_ending_5_1
	.byte	W36
	.byte		N10	, Bn3, v060
	.byte	W12
	.byte		N09	, As3
	.byte	W12
	.byte		N12	, Bn3
	.byte	W12
	.byte		N19	, Cs4
	.byte	W24
	.byte		N48	, As3
	.byte	W48
	.byte	BEND	, c_v-32
	.byte		N36	, En4
	.byte	W03
	.byte	BEND	, c_v
	.byte	W32
	.byte	W01
	.byte		N44	, Ds4
	.byte	W12
	.byte	W36
	.byte		N12	, Cs4
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte			En4
	.byte	W12
	.byte	BEND	, c_v-16
	.byte		N21	, Fs4
	.byte	W03
	.byte	BEND	, c_v
	.byte	W21
	.byte		c_v-18
	.byte		N36	
	.byte	W03
	.byte	BEND	, c_v
	.byte	W32
	.byte	W01
	.byte	VOICE	, 122
	.byte		N96	, Bn3
	.byte	W60
	.byte	W42
	.byte	VOICE	, 7
	.byte	W06
	.byte		N10	, Ds4
	.byte	W12
	.byte		N12	, En4
	.byte	W12
	.byte	BEND	, c_v-18
	.byte		N21	, Fs4
	.byte	W03
	.byte	BEND	, c_v
	.byte	W21
	.byte		N12	
	.byte	W12
	.byte			Gs4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte	VOICE	, 122
	.byte		N92	, Bn3
	.byte	W60
	.byte	W42
	.byte	VOICE	, 7
	.byte	W06
	.byte		N10	, Ds4
	.byte	W12
	.byte			En4
	.byte	W12
	.byte	BEND	, c_v-18
	.byte		N21	, Fs4
	.byte	W03
	.byte	BEND	, c_v
	.byte	W21
	.byte		c_v-18
	.byte		N36	
	.byte	W03
	.byte	BEND	, c_v
	.byte	W32
	.byte	W01
	.byte	VOICE	, 122
	.byte		N92	, Bn3
	.byte	W60
	.byte	W32
	.byte	W01
	.byte	VOICE	, 7
	.byte	W03
	.byte	BEND	, c_v-18
	.byte		N12	, En4
	.byte	W03
	.byte	BEND	, c_v
	.byte	W09
	.byte		N12	, Ds4
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte		N44	, Cs4
	.byte	W12
	.byte	W36
	.byte		N12	, Bn3
	.byte	W12
	.byte			As3
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte		N09	, Cs4
	.byte	W12
	.byte		N44	, Ds4
	.byte	W12
	.byte	W36
	.byte	BEND	, c_v-18
	.byte		N54	, Gs4
	.byte	W03
	.byte	BEND	, c_v
	.byte	W54
	.byte	VOICE	, 24
	.byte	W01
	.byte	VOL	, v041
	.byte	PAN	, c_v+20
	.byte	W02
	.byte	GOTO	
		.word	mus_ending_5_2
	.byte	W96
	.byte	FINE

	@********************** Track  6 **********************@

	.global mus_ending_6
mus_ending_6:	@ 0x08D4C2C8
	.byte	KEYSH	, 0
	.byte	VOICE	, 24
mus_ending_6_2:
	.byte	VOL	, v046
	.byte	PAN	, c_v-20
	.byte	MOD	, 1
	.byte	BEND	, c_v
	.byte		N56	, Bn3, v052
	.byte	W60
	.byte		N09	, Bn3, v072
	.byte	W24
	.byte		N68	, An3, v052
	.byte	W12
	.byte	W60
	.byte		N09	, An3, v072
	.byte	W24
	.byte		N68	, Bn3, v052
	.byte	W12
	.byte	W60
	.byte		N09	, Bn3, v072
	.byte	W24
	.byte		N24	, As3, v052
	.byte	W12
mus_ending_6_1:
	.byte	W12
	.byte		N12	, As3, v072
	.byte	W12
	.byte		N09	, Gs3, v052
	.byte	W12
	.byte			Fs3, v072
	.byte	W24
	.byte		N36	, As3, v052
	.byte	W36
	.byte	PEND
	.byte		N56	, Bn3
	.byte	W60
	.byte		N09	, Bn3, v072
	.byte	W24
	.byte		N68	, An3, v052
	.byte	W12
	.byte	W60
	.byte		N09	, An3, v072
	.byte	W24
	.byte		N68	, Gs3, v052
	.byte	W12
	.byte	W60
	.byte		N09	, Gs3, v072
	.byte	W24
	.byte		N24	, As3, v052
	.byte	W12
	.byte	PATT	
		.word	mus_ending_6_1
	.byte	VOICE	, 11
	.byte	VOL	, v082
	.byte	W96
	.byte	W84
	.byte	W03
	.byte	BEND	, c_v
	.byte	W09
	.byte	W12
	.byte	PAN	, c_v-20
	.byte	W12
	.byte		N12	, Bn2, v100
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte		N06	, Gs2
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte	PAN	, c_v+10
	.byte	W12
	.byte		N24	, Cs3, v080
	.byte	W12
	.byte	W12
	.byte		N09	, Dn3
	.byte	W12
	.byte		N06	, Cs3
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte	BEND	, c_v-32
	.byte		N12	, Dn3
	.byte	W03
	.byte	BEND	, c_v
	.byte	W09
	.byte		N12	, Cs3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W12
	.byte	PAN	, c_v-20
	.byte	W12
	.byte		N12	, Bn2, v100
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte		N06	, Gs2
	.byte	W12
	.byte			Bn2
	.byte	W36
	.byte	W96
	.byte	VOICE	, 111
	.byte	W48
	.byte		N36	, Ds4, v072
	.byte	W36
	.byte		N48	, Cs4
	.byte	W12
	.byte	W72
	.byte		N24	
	.byte	W24
	.byte	W48
	.byte		N36	
	.byte	W36
	.byte			Cn4
	.byte	W12
	.byte	W84
	.byte	VOICE	, 64
	.byte	PAN	, c_v-20
	.byte	VOL	, v055
	.byte	W12
	.byte		N84	, Gs3, v060
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W24
	.byte	W03
	.byte		N06	, Gs3, v072
	.byte	W06
	.byte			An3
	.byte	W06
	.byte		N24	, As3
	.byte	W24
	.byte			Gn3, v068
	.byte	W24
	.byte			En3, v060
	.byte	W24
	.byte		N18	, Cs3, v072
	.byte	W18
	.byte		N06	, Dn3, v060
	.byte	W06
	.byte		N96	, Ds3
	.byte	W48
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	VOICE	, 111
	.byte	W12
	.byte	PAN	, c_v-40
	.byte		N12	, Cs4, v080
	.byte	W12
	.byte	PAN	, c_v-30
	.byte		N12	, Cn4, v076
	.byte	W12
	.byte	PAN	, c_v-20
	.byte		N12	, Gs3
	.byte	W12
	.byte	PAN	, c_v-10
	.byte		N12	, Fs3, v080
	.byte	W12
	.byte	PAN	, c_v+10
	.byte		N12	, Ds3
	.byte	W12
	.byte	PAN	, c_v+20
	.byte		N12	, Cn3
	.byte	W12
	.byte	PAN	, c_v+30
	.byte		N12	, Gs2, v088
	.byte	W12
	.byte	W96
	.byte	VOICE	, 64
	.byte	W60
	.byte	PAN	, c_v-20
	.byte	VOL	, v055
	.byte	W36
	.byte		N48	, Gn3, v060
	.byte	W48
	.byte		N36	, Cs4
	.byte	W36
	.byte		N24	, Cn4
	.byte	W12
	.byte	W12
	.byte		N12	, Cs4, v072
	.byte	W24
	.byte			Cn4, v080
	.byte	W24
	.byte		N36	, Gs3, v092
	.byte	W36
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	VOICE	, 111
	.byte	W96
	.byte	W96
	.byte	W12
	.byte	PAN	, c_v-30
	.byte		N12	, En4
	.byte	W12
	.byte	PAN	, c_v-20
	.byte		N12	, Ds4, v080
	.byte	W12
	.byte	PAN	, c_v-10
	.byte		N12	, Bn3, v088
	.byte	W12
	.byte	PAN	, c_v+10
	.byte		N12	, Gs3, v092
	.byte	W12
	.byte	PAN	, c_v+20
	.byte		N12	, En3, v096
	.byte	W12
	.byte	PAN	, c_v+30
	.byte		N12	, Bn2, v100
	.byte	W24
	.byte	VOICE	, 24
	.byte	W03
	.byte	PAN	, c_v-20
	.byte	W03
	.byte	VOL	, v041
	.byte	W90
	.byte	GOTO	
		.word	mus_ending_6_2
	.byte	W96
	.byte	FINE

	@********************** Track  7 **********************@

	.global mus_ending_7
mus_ending_7:	@ 0x08D4C450
	.byte	KEYSH	, 0
mus_ending_7_1:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	VOICE	, 7
	.byte	PAN	, c_v+20
	.byte	MOD	, 4
	.byte	LFOS	, 25
	.byte	LFODL	, 24
	.byte	W48
	.byte	W03
	.byte	BEND	, c_v+8
	.byte	W44
	.byte	W01
	.byte	W48
	.byte	VOICE	, 7
	.byte	LFODL	, 20
	.byte	LFOS	, 25
	.byte	MOD	, 4
	.byte	VOL	, v027
	.byte	PAN	, c_v
	.byte	W06
	.byte	BEND	, c_v+6
	.byte	W21
	.byte		N06	, Fs3, v080
	.byte	W12
	.byte		N09	, Fs3, v092
	.byte	W09
	.byte	W03
	.byte		N06	, Gn3, v072
	.byte	W12
	.byte		N48	, Gs3, v052
	.byte	W32
	.byte	W01
	.byte	BEND	, c_v-32
	.byte	W03
	.byte		c_v+8
	.byte	W11
	.byte		N36	, Ds4
	.byte	W32
	.byte	W02
	.byte	W02
	.byte		N48	, Cs4
	.byte	W48
	.byte		N10	, Bn3
	.byte	W12
	.byte			As3
	.byte	W12
	.byte		N12	, Bn3
	.byte	W12
	.byte		N18	, Cs4
	.byte	W10
	.byte	W15
	.byte		N48	, Fs3
	.byte	W32
	.byte	W01
	.byte	BEND	, c_v-32
	.byte	W03
	.byte		c_v+8
	.byte	W11
	.byte		N36	, Cs4
	.byte	W32
	.byte	W02
	.byte	W02
	.byte		N96	, Bn3
	.byte	W01
	.byte	VOICE	, 122
	.byte	W92
	.byte	W01
	.byte	W24
	.byte	BEND	, c_v-32
	.byte	W03
	.byte		c_v+8
	.byte	W06
	.byte	VOICE	, 7
	.byte	W05
	.byte		N12	, Gs3
	.byte	W12
	.byte		N09	, As3
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte		N21	, As3
	.byte	W10
	.byte	BEND	, c_v-32
	.byte	W03
	.byte		c_v+8
	.byte	W09
	.byte	W02
	.byte		N09	, Cs4
	.byte	W24
	.byte		N12	, Bn3
	.byte	W24
	.byte			As3
	.byte	W24
	.byte		N24	, Cs4
	.byte	W22
	.byte	W02
	.byte		N06	, Gs3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte		N96	, Fs3
	.byte	W01
	.byte	VOICE	, 122
	.byte	W80
	.byte	W01
	.byte	W96
	.byte		7
	.byte	W15
	.byte		N48	, Gs3
	.byte	W32
	.byte	W01
	.byte	BEND	, c_v-32
	.byte	W03
	.byte		c_v+8
	.byte	W11
	.byte		N36	, Ds4
	.byte	W32
	.byte	W02
	.byte	W02
	.byte		N48	, Cs4
	.byte	W48
	.byte		N10	, Bn3
	.byte	W12
	.byte		N12	, As3
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte		N18	, Cs4
	.byte	W10
	.byte	W15
	.byte		N48	, As3
	.byte	W32
	.byte	W01
	.byte	BEND	, c_v-32
	.byte	W03
	.byte		c_v+8
	.byte	W11
	.byte		N36	, En4
	.byte	W32
	.byte	W02
	.byte	W02
	.byte		N96	, Ds4
	.byte	W92
	.byte	W02
	.byte	W15
	.byte	BEND	, c_v-18
	.byte		N36	, Fs4
	.byte	W03
	.byte	BEND	, c_v+8
	.byte	W32
	.byte	W01
	.byte	VOICE	, 122
	.byte		N96	, Bn3
	.byte	W44
	.byte	W01
	.byte	W56
	.byte	W01
	.byte	VOICE	, 7
	.byte	W06
	.byte		N10	, Ds4
	.byte	W12
	.byte		N12	, En4
	.byte	W09
	.byte	BEND	, c_v-18
	.byte	W03
	.byte		c_v+8
	.byte		N21	, Fs4
	.byte	W09
	.byte	W15
	.byte		N12	
	.byte	W12
	.byte			Gs4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte	VOICE	, 122
	.byte		N92	, Bn3
	.byte	W44
	.byte	W01
	.byte	W56
	.byte	W01
	.byte	VOICE	, 7
	.byte	W06
	.byte		N10	, Ds4
	.byte	W12
	.byte			En4
	.byte	W09
	.byte	BEND	, c_v-18
	.byte	W03
	.byte		c_v+8
	.byte		N21	, Fs4
	.byte	W09
	.byte	W12
	.byte	BEND	, c_v-18
	.byte	W03
	.byte		c_v+8
	.byte		N36	
	.byte	W36
	.byte	VOICE	, 122
	.byte		N92	, Bn3
	.byte	W44
	.byte	W01
	.byte	W48
	.byte	VOICE	, 7
	.byte	BEND	, c_v-18
	.byte	W03
	.byte		c_v+8
	.byte		N12	, En4
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte			Bn3
	.byte	W09
	.byte	W03
	.byte		N44	, Cs4
	.byte	W48
	.byte		N12	, Bn3
	.byte	W12
	.byte			As3
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte		N09	, Cs4
	.byte	W09
	.byte	W03
	.byte		N44	, Ds4
	.byte	W44
	.byte	W01
	.byte	BEND	, c_v-18
	.byte	W03
	.byte		c_v+8
	.byte		N54	, Gs4
	.byte	W44
	.byte	W01
	.byte	W12
	.byte	GOTO	
		.word	mus_ending_7_1
	.byte	W84
	.byte	FINE

	@********************** Track  8 **********************@

	.global mus_ending_8
mus_ending_8:	@ 0x08D4C5A5
	.byte	KEYSH	, 0
mus_ending_8_3:
	.byte	W01
	.byte	VOICE	, 69
	.byte	VOL	, v023
	.byte	PAN	, c_v-10
	.byte	W02
	.byte	MOD	, 1
	.byte	BEND	, c_v+8
	.byte	W12
	.byte		N23	, Cs4, v072
	.byte	W23
	.byte		N12	, Bn3
	.byte	W12
	.byte		N24	, As3
	.byte	W24
	.byte			Bn3
	.byte	W22
	.byte	W02
	.byte			Cs4, v060
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte		N24	, Bn3
	.byte	W24
	.byte			As3, v072
	.byte	W24
	.byte			Bn3
	.byte	W10
mus_ending_8_1:
	.byte	W14
	.byte		N24	, Ds4, v072
	.byte	W24
	.byte		N12	, Cs4
	.byte	W12
	.byte		N24	, Cn4
	.byte	W24
	.byte			Cs4
	.byte	W22
	.byte	PEND
	.byte	W02
	.byte			As3
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			Cs4, v012
	.byte	W24
	.byte		N30	, Fs3
	.byte	W22
	.byte	W14
	.byte		N24	, Cs4, v072
	.byte	W24
	.byte		N12	, Bn3
	.byte	W12
	.byte		N24	, As3
	.byte	W24
	.byte			Bn3
	.byte	W22
	.byte	W02
	.byte			Cs4
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte		N24	, Bn3
	.byte	W24
	.byte			As3
	.byte	W24
	.byte			Bn3
	.byte	W10
	.byte	PATT	
		.word	mus_ending_8_1
	.byte	W02
	.byte		N24	, As3, v072
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			Cs4, v012
	.byte	W24
	.byte		N21	, Fs3
	.byte	W22
	.byte	W96
	.byte	W96
	.byte	VOICE	, 113
	.byte	VOL	, v064
	.byte	PAN	, c_v
	.byte	W84
	.byte		N48	, Cs3, v072
	.byte	W12
	.byte	W36
	.byte		N60	, As2
	.byte	W60
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	VOICE	, 111
	.byte	VOL	, v046
	.byte	PAN	, c_v-40
	.byte	W06
	.byte	BEND	, c_v+6
	.byte	W60
	.byte		N36	, Ds4
	.byte	W30
	.byte	W06
	.byte		N48	, Cs4
	.byte	W90
	.byte	BEND	, c_v+6
	.byte		N48	, Fs4
	.byte	W72
	.byte		N36	, Cs4, v040
	.byte	W24
	.byte	W12
	.byte			Bn3
	.byte	W72
	.byte	VOICE	, 64
	.byte	PAN	, c_v+30
	.byte	VOL	, v055
	.byte	W01
	.byte	BEND	, c_v
	.byte	W11
	.byte		N96	, En3, v060
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W36
	.byte	W03
	.byte		N24	, Cs4
	.byte	W24
	.byte			As3
	.byte	W24
	.byte			Gn3
	.byte	W24
	.byte			En3
	.byte	W24
	.byte		N96	, Fs3
	.byte	W48
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	VOICE	, 111
	.byte	W01
	.byte	BEND	, c_v+8
	.byte	W21
	.byte	PAN	, c_v-40
	.byte		N12	, Cs4, v040
	.byte	W12
	.byte	PAN	, c_v-30
	.byte		N12	, Cn4
	.byte	W12
	.byte	PAN	, c_v-20
	.byte		N12	, Gs3
	.byte	W12
	.byte	PAN	, c_v-10
	.byte		N12	, Fs3
	.byte	W12
	.byte	PAN	, c_v+10
	.byte		N12	, Ds3
	.byte	W12
	.byte	PAN	, c_v+20
	.byte		N12	, Cn3
	.byte	W12
	.byte	BEND	, c_v
	.byte	W02
	.byte	W96
	.byte	VOICE	, 64
	.byte	W48
	.byte	PAN	, c_v+20
	.byte	VOL	, v055
	.byte	W48
	.byte		N48	, En3, v060
	.byte	W48
	.byte		N36	, Gn3
	.byte	W36
	.byte		N24	, Gs3
	.byte	W12
	.byte	W12
	.byte		N12	, As3, v072
	.byte	W24
	.byte			Gs3, v080
	.byte	W24
	.byte		N36	, Ds3, v092
	.byte	W36
	.byte	VOICE	, 113
	.byte	W09
	.byte	VOL	, v055
	.byte	PAN	, c_v+10
	.byte		N36	, Ds3, v040
	.byte	W36
	.byte		N09	, Cs3
	.byte	W24
	.byte		N09	
	.byte	W24
	.byte		N56	, Bn2
	.byte	W03
mus_ending_8_2:
	.byte	W56
	.byte	W01
	.byte		N24	, Bn2, v040
	.byte	W24
	.byte		N21	, Cs3
	.byte	W15
	.byte	PEND
	.byte	W09
	.byte		N36	, Ds3
	.byte	W36
	.byte		N09	, Cs3
	.byte	W24
	.byte		N09	
	.byte	W24
	.byte		N56	, Bn2
	.byte	W03
	.byte	PATT	
		.word	mus_ending_8_2
	.byte	W09
	.byte		N36	, Ds3, v040
	.byte	W36
	.byte		N09	, Cs3
	.byte	W24
	.byte		N09	
	.byte	W24
	.byte		N60	, Bn2
	.byte	W03
	.byte	W56
	.byte	W01
	.byte		N36	
	.byte	W36
	.byte		N96	
	.byte	W03
	.byte	W92
	.byte	W01
	.byte		N48	, Cs3
	.byte	W03
	.byte	W44
	.byte	W01
	.byte			Ds3
	.byte	W48
	.byte	W03
	.byte	GOTO	
		.word	mus_ending_8_3
	.byte	W96
	.byte	FINE

	@********************** Track  9 **********************@

	.global mus_ending_9
mus_ending_9:	@ 0x08D4C71F
	.byte	KEYSH	, 0
mus_ending_9_1:
	.byte	W24
	.byte	VOICE	, 24
	.byte	VOL	, v023
	.byte	PAN	, c_v+40
	.byte	MOD	, 1
	.byte	BEND	, c_v+6
	.byte	W72
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PAN	, c_v
	.byte	W36
	.byte	W01
	.byte		N12	, Bn3, v092
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte		N06	, Gs3
	.byte	W12
	.byte			Bn3
	.byte	W23
	.byte	W01
	.byte		N24	, Dn4
	.byte	W24
	.byte		N06	, Ds4
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte		N12	, Cs4
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte		N07	, Gs3
	.byte	W11
	.byte	W01
	.byte		N06	, Fs3
	.byte	W12
	.byte		N30	, Bn3
	.byte	W12
	.byte	BEND	, c_v-11
	.byte	W03
	.byte		c_v-19
	.byte	W03
	.byte		c_v-28
	.byte	W03
	.byte		c_v-37
	.byte	W03
	.byte		c_v-47
	.byte	W03
	.byte		c_v-56
	.byte	W03
	.byte		c_v-63
	.byte	W52
	.byte	W01
	.byte	W96
	.byte	W13
	.byte		c_v+6
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte		N06	, Gs3
	.byte	W12
	.byte			Bn3
	.byte	W23
	.byte	W01
	.byte		N24	, Dn4
	.byte	W24
	.byte		N06	, Ds4
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Fn4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte	BEND	, c_v-32
	.byte		N12	, Dn4
	.byte	W03
	.byte	BEND	, c_v+6
	.byte	W09
	.byte		N12	, Cs4
	.byte	W11
	.byte	W01
	.byte		N36	, Bn3
	.byte	W92
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W24
	.byte	VOICE	, 105
	.byte	VOL	, v046
	.byte	PAN	, c_v
	.byte	MOD	, 1
	.byte	BEND	, c_v
	.byte	W72
	.byte	VOICE	, 112
	.byte	W12
	.byte	PAN	, c_v+20
	.byte		N12	, As3
	.byte	W12
	.byte	PAN	, c_v-30
	.byte		N12	, Gs3, v088
	.byte	W12
	.byte	PAN	, c_v-20
	.byte		N12	, Ds3
	.byte	W12
	.byte	PAN	, c_v-10
	.byte		N12	, Ds4, v092
	.byte	W12
	.byte	PAN	, c_v+10
	.byte		N12	, Cn4
	.byte	W12
	.byte	PAN	, c_v+20
	.byte		N12	, Gs3
	.byte	W12
	.byte	PAN	, c_v+30
	.byte		N12	, Ds3, v096
	.byte	W12
	.byte	W96
	.byte	W24
	.byte	VOICE	, 64
	.byte	VOL	, v046
	.byte	PAN	, c_v
	.byte	BEND	, c_v
	.byte	W60
	.byte		N06	, Gs3, v080
	.byte	W06
	.byte			An3, v072
	.byte	W06
	.byte		N48	, As3, v060
	.byte	W24
	.byte	VOL	, v046
	.byte	W03
	.byte		v042
	.byte	W03
	.byte		v039
	.byte	W03
	.byte		v035
	.byte	W03
	.byte		v033
	.byte	W03
	.byte		v030
	.byte	W03
	.byte		v026
	.byte	W03
	.byte		v023
	.byte	W03
	.byte		v020
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W24
	.byte	VOICE	, 24
	.byte	VOL	, v023
	.byte	PAN	, c_v+40
	.byte	MOD	, 1
	.byte	BEND	, c_v+6
	.byte	W72
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	mus_ending_9_1
	.byte	W96
	.byte	FINE

	.align 2
	.global mus_ending
mus_ending:	@ 0x08D4C818
	.byte	9		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	mus_ending_1		@ track
	.word	mus_ending_2		@ track
	.word	mus_ending_3		@ track
	.word	mus_ending_4		@ track
	.word	mus_ending_5		@ track
	.word	mus_ending_6		@ track
	.word	mus_ending_7		@ track
	.word	mus_ending_8		@ track
	.word	mus_ending_9		@ track
