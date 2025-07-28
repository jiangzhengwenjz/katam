	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global mus_olive_ocean_1
mus_olive_ocean_1:	@ 0x08D470D0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 66
	.byte	VOICE	, 67
	.byte	VOL	, v114
	.byte	PAN	, c_v
	.byte	BEND	, c_v
	.byte		N03	, En0, v060
	.byte		N06	, En1, v052
	.byte	W03
	.byte		N03	, En0, v080
	.byte	W03
	.byte		N06	, En0, v092
	.byte		N06	, Ds1, v052
	.byte	W06
	.byte			Gs1, v100
	.byte	W06
	.byte			En0, v080
	.byte		N06	, Ds1, v052
	.byte	W06
	.byte			Gs1, v100
	.byte		N04	, Cn2, v072
	.byte	W04
	.byte			Cn2, v060
	.byte	W02
	.byte		N03	, En0, v072
	.byte	W02
	.byte		N04	, Cn2
	.byte	W01
	.byte		N03	, En0, v092
	.byte	W03
	.byte		N06	, En0, v080
	.byte	W06
	.byte			En0, v092
	.byte	W06
mus_olive_ocean_1_5:
	.byte		N06	, Gs1, v112
	.byte		N30	, Cs3, v032
	.byte	W06
	.byte		N06	, Cn2, v060
	.byte	W06
	.byte		N12	, As0, v072
	.byte		N06	, Gs1, v112
	.byte	W12
	.byte			En0, v072
	.byte		N06	, Fs0, v112
	.byte	W06
	.byte			Gs1
	.byte		N06	, Cn2, v060
	.byte	W06
	.byte		N12	, As0, v080
	.byte	W06
	.byte		N06	, En0, v060
	.byte	W06
	.byte			Fs0, v112
	.byte	W06
	.byte			Gs1, v092
	.byte		N06	, Cn2, v060
	.byte	W06
	.byte		N12	, As0, v072
	.byte		N06	, Gs1, v092
	.byte	W12
	.byte			En0, v072
	.byte		N06	, Fs0, v112
	.byte	W06
	.byte			Cn2, v060
	.byte	W06
	.byte		N12	, As0, v100
	.byte	W12
mus_olive_ocean_1_1:
	.byte		N06	, Fs0, v112
	.byte		N06	, Gs1
	.byte	W06
	.byte			Cn2, v060
	.byte	W06
	.byte		N12	, As0, v072
	.byte		N06	, Gs1, v112
	.byte	W12
	.byte			En0, v072
	.byte		N06	, Fs0, v112
	.byte	W06
	.byte			Gs1
	.byte		N06	, Cn2, v060
	.byte	W06
	.byte		N12	, As0, v080
	.byte	W06
	.byte		N06	, En0, v060
	.byte	W06
	.byte			Fs0, v112
	.byte	W06
	.byte			Gs1, v092
	.byte		N06	, Cn2, v060
	.byte	W06
	.byte		N12	, As0, v072
	.byte		N06	, Gs1, v092
	.byte	W12
	.byte			En0, v072
	.byte		N06	, Fs0, v112
	.byte	W06
	.byte			Cn2, v060
	.byte	W06
	.byte		N12	, As0, v100
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	mus_olive_ocean_1_1
	.byte		N06	, Fs0, v112
	.byte		N06	, Gs1
	.byte	W06
	.byte			Cn2, v060
	.byte	W06
	.byte		N12	, As0, v072
	.byte		N06	, Gs1, v112
	.byte	W12
	.byte			En0, v072
	.byte		N06	, Fs0, v112
	.byte	W06
	.byte			Gs1
	.byte		N06	, Cn2, v060
	.byte	W06
	.byte		N12	, As0, v080
	.byte	W06
	.byte		N06	, En0, v060
	.byte	W06
	.byte			Fs0, v112
	.byte	W06
	.byte			En0, v060
	.byte		N06	, Cn2
	.byte	W06
	.byte		N12	, As0, v072
	.byte		N06	, Gs1, v092
	.byte	W12
	.byte			En0, v072
	.byte		N06	, Fs0, v112
	.byte	W06
	.byte			Cn2, v060
	.byte	W06
	.byte		N12	, As0, v100
	.byte	W12
mus_olive_ocean_1_2:
	.byte		N06	, Fs0, v112
	.byte		N06	, Gs1
	.byte	W06
	.byte			Cn2, v060
	.byte	W06
	.byte		N12	, As0, v072
	.byte		N06	, Gs1, v112
	.byte	W12
	.byte			En0, v072
	.byte		N06	, Fs0, v112
	.byte	W06
	.byte			Gs1
	.byte		N06	, Cn2, v060
	.byte	W06
	.byte		N12	, As0, v080
	.byte	W06
	.byte		N06	, En0, v060
	.byte	W06
	.byte			Fs0, v112
	.byte	W06
	.byte			Gs1, v092
	.byte		N06	, Cn2, v060
	.byte	W06
	.byte		N12	, As0, v072
	.byte		N06	, Gs1, v092
	.byte	W12
	.byte			En0, v072
	.byte		N06	, Fs0, v112
	.byte	W06
	.byte			Cn2, v060
	.byte	W06
	.byte		N12	, Dn3, v040
	.byte	W06
	.byte		N06	, En0, v052
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	mus_olive_ocean_1_1
	.byte	PATT	
		.word	mus_olive_ocean_1_2
	.byte		N06	, Fs0, v112
	.byte		N06	, Gs1
	.byte	W06
	.byte			Cn2, v060
	.byte	W06
	.byte		N12	, As0, v072
	.byte		N06	, Gs1, v112
	.byte	W12
	.byte			En0, v072
	.byte		N06	, Fs0, v112
	.byte	W06
	.byte			Gs1
	.byte		N06	, Cn2, v060
	.byte	W06
	.byte		N12	, As0, v080
	.byte	W06
	.byte		N06	, En0, v060
	.byte	W06
	.byte			Fs0, v112
	.byte	W06
	.byte		N03	, En0, v060
	.byte	W03
	.byte			En0, v080
	.byte	W03
	.byte		N06	, En0, v072
	.byte		N12	, As0
	.byte	W06
	.byte		N06	, En0, v080
	.byte	W06
	.byte			En0, v072
	.byte		N06	, Fs0, v112
	.byte	W06
	.byte			Cn2, v060
	.byte	W06
	.byte			En0, v072
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Gs1, v112
	.byte		N30	, Cs3, v032
	.byte	W06
	.byte		N06	, Cn2, v060
	.byte	W06
	.byte		N12	, As0, v072
	.byte		N06	, Gs1, v112
	.byte	W12
	.byte			En0, v072
	.byte		N06	, Fs0, v112
	.byte	W06
	.byte			Gs1
	.byte		N06	, Cn2, v060
	.byte	W06
	.byte		N12	, As0, v080
	.byte	W06
	.byte		N06	, En0, v060
	.byte	W06
	.byte			Fs0, v112
	.byte	W06
	.byte			Gs1, v092
	.byte		N06	, Cn2, v060
	.byte	W06
	.byte		N12	, As0, v072
	.byte		N06	, Gs1, v092
	.byte	W12
	.byte			En0, v072
	.byte		N06	, Fs0, v112
	.byte	W06
	.byte			Cn2, v060
	.byte	W06
	.byte		N12	, Dn3, v040
	.byte	W06
	.byte		N06	, En0, v052
	.byte	W06
	.byte	PATT	
		.word	mus_olive_ocean_1_1
	.byte		N06	, Fs0, v112
	.byte		N06	, Gs1
	.byte	W06
	.byte			Cn2, v060
	.byte	W06
	.byte		N12	, As0, v072
	.byte		N06	, Gs1, v112
	.byte	W12
	.byte			En0, v072
	.byte		N06	, Fs0, v112
	.byte	W06
	.byte			Gs1
	.byte		N06	, Cn2, v060
	.byte	W06
	.byte		N12	, As0, v080
	.byte	W06
	.byte		N06	, En0, v060
	.byte	W06
	.byte			Fs0, v112
	.byte	W06
	.byte			En0, v080
	.byte	W06
	.byte			En0, v072
	.byte	W06
	.byte			En0, v080
	.byte	W06
	.byte		N12	
	.byte	W12
	.byte		N06	, En0, v072
	.byte	W06
	.byte			En0, v080
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Gs1, v112
	.byte	W12
	.byte			En0, v080
	.byte	W06
	.byte			Gs1, v112
	.byte	W12
	.byte			En0, v080
	.byte	W06
	.byte			Gs1, v112
	.byte	W12
	.byte			En0, v080
	.byte	W06
	.byte			Gs1, v112
	.byte	W18
	.byte			Fs0
	.byte	W06
	.byte			As0, v100
	.byte	W06
	.byte			Fs0
	.byte	W06
	.byte			Gs1, v120
	.byte		N30	, Cs3, v036
	.byte	W06
	.byte		N06	, Cn2, v060
	.byte	W06
	.byte		N12	, As0, v072
	.byte		N06	, Gs1, v120
	.byte	W12
	.byte		N04	, En0, v092
	.byte		N06	, Fs0, v112
	.byte	W04
	.byte		N04	, En0, v032
	.byte	W02
	.byte		N06	, Cn2, v060
	.byte	W02
	.byte		N04	, En0, v020
	.byte	W04
	.byte		N12	, As0, v080
	.byte	W06
	.byte		N06	, En0, v072
	.byte	W06
	.byte			Fs0, v112
	.byte	W06
	.byte			En0, v060
	.byte		N06	, Cn2
	.byte	W06
	.byte		N12	, As0, v072
	.byte		N06	, Gs1, v120
	.byte	W12
	.byte			En0, v092
	.byte		N06	, Fs0, v112
	.byte	W06
	.byte			Cn2, v060
	.byte	W06
	.byte		N12	, Dn3, v040
	.byte	W06
	.byte		N06	, En0, v052
	.byte	W06
	.byte			Fs0, v112
	.byte		N06	, Gs1
	.byte	W06
	.byte			Cn2, v060
	.byte	W06
	.byte		N12	, As0, v072
	.byte		N06	, Gs1, v120
	.byte	W12
	.byte			En0, v072
	.byte		N06	, Fs0, v112
	.byte	W06
	.byte			Gs1
	.byte		N06	, Cn2, v060
	.byte	W06
	.byte		N12	, As0, v080
	.byte	W06
	.byte		N06	, En0, v060
	.byte	W06
	.byte			Fs0, v112
	.byte	W06
	.byte		N03	, En0, v060
	.byte	W03
	.byte			En0, v092
	.byte	W03
	.byte		N06	, En0, v080
	.byte	W06
	.byte			En0, v092
	.byte	W06
	.byte			En0, v080
	.byte	W06
	.byte			En0, v088
	.byte	W06
	.byte			En0, v092
	.byte	W06
	.byte		N06	
	.byte	W06
mus_olive_ocean_1_4:
	.byte		N06	, Gs1, v112
	.byte		N30	, Cs3, v032
	.byte	W06
	.byte		N06	, Cn2, v060
	.byte	W06
	.byte			Gs1, v112
	.byte		N12	, Dn3, v032
	.byte	W12
	.byte		N06	, En0, v072
	.byte		N06	, Fs0, v112
	.byte	W06
	.byte			Gs1
	.byte		N06	, Cn2, v060
	.byte	W06
	.byte		N12	, Dn3, v040
	.byte	W06
	.byte		N06	, En0, v060
	.byte	W06
	.byte			Fs0, v112
	.byte	W06
	.byte			Gs1, v092
	.byte		N06	, Cn2, v060
	.byte	W06
	.byte			Gs1, v092
	.byte		N12	, Dn3, v032
	.byte	W12
	.byte		N06	, En0, v072
	.byte		N06	, Fs0, v112
	.byte	W06
	.byte			Cn2, v060
	.byte	W06
	.byte		N12	, Dn3, v040
	.byte	W06
	.byte		N06	, En0, v052
	.byte	W06
	.byte	PEND
mus_olive_ocean_1_3:
	.byte		N06	, Fs0, v100
	.byte		N06	, Gs1, v112
	.byte	W06
	.byte			Cn2, v060
	.byte	W06
	.byte			Gs1, v112
	.byte		N12	, Dn3, v032
	.byte	W12
	.byte		N06	, En0, v072
	.byte		N06	, Fs0, v112
	.byte	W06
	.byte			Gs1
	.byte		N06	, Cn2, v060
	.byte	W06
	.byte		N12	, Dn3, v040
	.byte	W06
	.byte		N06	, En0, v060
	.byte	W06
	.byte			Fs0, v112
	.byte	W06
	.byte			Gs1, v092
	.byte		N06	, Cn2, v060
	.byte	W06
	.byte			Gs1, v092
	.byte		N12	, Dn3, v032
	.byte	W12
	.byte		N06	, En0, v072
	.byte		N06	, Fs0, v112
	.byte	W06
	.byte			Cn2, v060
	.byte	W06
	.byte		N12	, Dn3, v040
	.byte	W06
	.byte		N06	, En0, v052
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	mus_olive_ocean_1_3
	.byte		N06	, Fs0, v100
	.byte		N06	, Gs1, v112
	.byte	W06
	.byte			Cn2, v060
	.byte	W06
	.byte			Gs1, v112
	.byte		N12	, Dn3, v032
	.byte	W12
	.byte		N06	, En0, v072
	.byte		N06	, Fs0, v112
	.byte	W06
	.byte			Gs1
	.byte		N06	, Cn2, v060
	.byte	W06
	.byte		N12	, Dn3, v040
	.byte	W06
	.byte		N06	, En0, v060
	.byte	W06
	.byte			Fs0, v112
	.byte	W06
	.byte			En0, v080
	.byte		N06	, Cn2, v060
	.byte	W06
	.byte			En0, v080
	.byte		N12	, Dn3, v032
	.byte	W12
	.byte		N06	, En0, v072
	.byte		N06	, Fs0, v112
	.byte	W06
	.byte			Cn2, v060
	.byte	W06
	.byte		N12	, Dn3, v040
	.byte	W06
	.byte		N06	, En0, v052
	.byte	W06
	.byte	PATT	
		.word	mus_olive_ocean_1_4
	.byte	PATT	
		.word	mus_olive_ocean_1_3
	.byte		N06	, Fs0, v112
	.byte		N06	, Gs1
	.byte	W06
	.byte			Cn2, v060
	.byte	W06
	.byte			Gs1, v112
	.byte		N12	, Dn3, v032
	.byte	W12
	.byte		N06	, En0, v072
	.byte		N06	, Fs0, v112
	.byte	W06
	.byte			Gs1
	.byte		N06	, Cn2, v060
	.byte	W06
	.byte		N12	, Dn3, v040
	.byte	W06
	.byte		N06	, En0, v060
	.byte	W06
	.byte			Fs0, v112
	.byte	W06
	.byte			En0, v080
	.byte	W06
	.byte			En0, v072
	.byte	W06
	.byte			En0, v080
	.byte	W06
	.byte		N04	, En0, v076
	.byte	W04
	.byte			En0, v080
	.byte	W04
	.byte			En0, v088
	.byte	W04
	.byte		N06	, En0, v080
	.byte	W06
	.byte			En0, v092
	.byte	W06
	.byte			En0, v080
	.byte	W06
	.byte			Gs1, v112
	.byte	W12
	.byte			En0, v080
	.byte	W06
	.byte			Gs1, v112
	.byte	W12
	.byte			En0, v080
	.byte	W06
	.byte			Gs1, v112
	.byte	W12
	.byte			En0, v080
	.byte	W06
	.byte			Gs1, v112
	.byte	W36
	.byte	GOTO	
		.word	mus_olive_ocean_1_5
	.byte	W96
	.byte	FINE

	@********************** Track  2 **********************@

	.global mus_olive_ocean_2
mus_olive_ocean_2:	@ 0x08D474D7
	.byte	KEYSH	, 0
	.byte	VOICE	, 68
	.byte	VOL	, v105
	.byte	PAN	, c_v
	.byte	MOD	, 1
	.byte	BEND	, c_v
	.byte		N04	, Cn3, v120
	.byte	W06
	.byte		N10	, Gs2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte		N03	, As3, v112
	.byte	W06
	.byte		N06	, Bn2, v120
	.byte	W06
	.byte		N03	, Bn3, v112
	.byte	W06
mus_olive_ocean_2_7:
	.byte		N04	, Cn3, v116
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N02	, Cn4, v080
	.byte	W06
	.byte		N04	, Cn3, v116
	.byte	W12
	.byte		N04	
	.byte	W54
mus_olive_ocean_2_1:
	.byte		N04	, Cs3, v116
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N02	, Cs4, v080
	.byte	W06
	.byte		N04	, Cs3, v116
	.byte	W12
	.byte		N04	
	.byte	W54
	.byte	PEND
mus_olive_ocean_2_2:
	.byte		N04	, Ds3, v116
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N02	, Ds4, v080
	.byte	W06
	.byte		N04	, Ds3, v116
	.byte	W12
	.byte		N04	
	.byte	W54
	.byte	PEND
	.byte	PATT	
		.word	mus_olive_ocean_2_1
	.byte	PATT	
		.word	mus_olive_ocean_2_2
mus_olive_ocean_2_3:
	.byte		N04	, Bn2, v116
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N02	, Bn3, v080
	.byte	W06
	.byte		N04	, Bn2, v116
	.byte	W12
	.byte		N04	
	.byte	W54
	.byte	PEND
	.byte	PATT	
		.word	mus_olive_ocean_2_1
	.byte	PATT	
		.word	mus_olive_ocean_2_3
	.byte		N04	, As2, v116
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N02	, As3, v080
	.byte	W06
	.byte		N04	, As2, v116
	.byte	W12
	.byte		N04	
	.byte	W54
	.byte	PATT	
		.word	mus_olive_ocean_2_3
	.byte	PATT	
		.word	mus_olive_ocean_2_1
	.byte		N04	, Cs3, v100
	.byte	W06
	.byte		N08	, Ds3
	.byte	W12
	.byte		N04	, Cs3
	.byte	W06
	.byte		N08	, Ds3
	.byte	W12
	.byte		N04	, Cs3
	.byte	W06
	.byte		N08	, Ds3
	.byte	W12
	.byte		N04	, Cs3
	.byte	W06
	.byte		N08	, Ds3
	.byte	W36
	.byte	W96
	.byte	W96
mus_olive_ocean_2_4:
	.byte		N04	, An2, v116
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N02	, An3, v080
	.byte	W06
	.byte		N04	, An2, v116
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N02	, En3
	.byte	W12
	.byte			An2
	.byte	W06
	.byte	BEND	, c_v-64
	.byte		N12	, An3, v092
	.byte	W06
	.byte	BEND	, c_v
	.byte	W06
	.byte		N04	, An2, v116
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte	PEND
mus_olive_ocean_2_5:
	.byte		N04	, As2, v116
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N02	, As3, v080
	.byte	W06
	.byte		N04	, As2, v116
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N02	, Fn3
	.byte	W12
	.byte			As2
	.byte	W06
	.byte	BEND	, c_v-64
	.byte		N12	, As3, v092
	.byte	W06
	.byte	BEND	, c_v
	.byte	W06
	.byte		N04	, As2, v116
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte	PEND
mus_olive_ocean_2_6:
	.byte		N04	, Cn3, v116
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N02	, Cn4, v080
	.byte	W06
	.byte		N04	, Cn3, v116
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N02	, Gn3
	.byte	W12
	.byte			Cn3
	.byte	W06
	.byte	BEND	, c_v-64
	.byte		N12	, Cn4, v092
	.byte	W06
	.byte	BEND	, c_v
	.byte	W06
	.byte		N04	, Cn3, v116
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte	PEND
	.byte			As2
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N02	, As3, v080
	.byte	W06
	.byte		N04	, As2, v116
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte	BEND	, c_v-64
	.byte		N12	, As3
	.byte	W06
	.byte	BEND	, c_v
	.byte	W06
	.byte		N02	, As2
	.byte	W06
	.byte	BEND	, c_v-64
	.byte		N12	, Fn3, v092
	.byte	W06
	.byte	BEND	, c_v
	.byte	W06
	.byte		N04	, As3, v116
	.byte	W06
	.byte			As2
	.byte	W06
	.byte	PATT	
		.word	mus_olive_ocean_2_4
	.byte	PATT	
		.word	mus_olive_ocean_2_5
	.byte	PATT	
		.word	mus_olive_ocean_2_6
	.byte		N04	, Cn3, v100
	.byte	W06
	.byte		N08	, Dn3
	.byte	W12
	.byte		N04	, Cn3
	.byte	W06
	.byte		N08	, Dn3
	.byte	W12
	.byte		N04	, Cn3
	.byte	W06
	.byte		N08	, Dn3
	.byte	W12
	.byte		N04	, Cn3
	.byte	W06
	.byte		N08	, Dn3
	.byte	W36
	.byte	GOTO	
		.word	mus_olive_ocean_2_7
	.byte	W96
	.byte	FINE

	@********************** Track  3 **********************@

	.global mus_olive_ocean_3
mus_olive_ocean_3:	@ 0x08D4764A
	.byte	KEYSH	, 0
	.byte	VOICE	, 12
	.byte	VOL	, v055
	.byte	PAN	, c_v
	.byte	LFODL	, 26
	.byte	LFOS	, 22
	.byte	MOD	, 6
	.byte	BEND	, c_v
	.byte	W48
mus_olive_ocean_3_5:
	.byte	W12
	.byte		N04	, Gn2, v056
	.byte	W06
	.byte			Cn3
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte		N22	, Ds3
	.byte	W24
	.byte		N04	, Cn3
	.byte	W12
	.byte		N16	, Dn3
	.byte	W18
	.byte		N10	, Ds3
	.byte	W12
	.byte		N04	, Fn3
	.byte	W06
	.byte			Gn3
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte		N48	, Bn2
	.byte	W54
	.byte	W12
	.byte		N03	, As2
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte		N03	, Dn3
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte		N04	, Gn3
	.byte	W06
	.byte			Fn3
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte		N16	, Cn3
	.byte	W18
	.byte		N12	, Bn2
	.byte	W12
	.byte		N04	, Cs3
	.byte	W06
	.byte			Ds3
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte		N30	, Bn2
	.byte	W36
	.byte		N12	, Cs3
	.byte	W12
	.byte		N03	, Cn3
	.byte	W03
	.byte			Bn2
	.byte	W03
	.byte		N80	, As2
	.byte	W84
	.byte		N04	, Gs2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte		N44	, Bn2
	.byte	W48
	.byte		N04	, Ds3
	.byte	W06
	.byte			Cs3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte		N12	, Cs3
	.byte	W12
	.byte		N03	, Cn3
	.byte	W03
	.byte			Bn2
	.byte	W03
	.byte		N48	, As2, v060
	.byte	W48
	.byte		N36	, Cs3
	.byte	W36
	.byte		N04	, Bn2
	.byte	W06
	.byte			Cs3
	.byte	W06
mus_olive_ocean_3_1:
	.byte		N44	, Dn3, v060
	.byte	W48
	.byte		N04	, Fs3
	.byte	W06
	.byte			En3
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte		N12	, En3
	.byte	W12
	.byte		N03	, Ds3
	.byte	W03
	.byte			Dn3
	.byte	W03
	.byte	PEND
	.byte		N48	, Cs3
	.byte	W48
	.byte		N24	, Fs3
	.byte	W24
	.byte			Cs3
	.byte	W24
	.byte	PATT	
		.word	mus_olive_ocean_3_1
	.byte		N48	, Cs3, v060
	.byte	W48
	.byte		N44	, Fs3
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W48
	.byte	VOICE	, 43
	.byte	VOL	, v073
	.byte	PAN	, c_v-10
	.byte	LFODL	, 30
	.byte	LFOS	, 23
	.byte	MOD	, 7
	.byte	BEND	, c_v
	.byte	W48
mus_olive_ocean_3_2:
	.byte		N06	, An3, v060
	.byte	W09
	.byte		N03	, An3, v032
	.byte	W03
	.byte		N06	, En3, v060
	.byte	W09
	.byte		N03	, En3, v032
	.byte	W03
	.byte		N06	, Dn3, v060
	.byte	W06
	.byte			En3
	.byte	W09
	.byte		N03	, En3, v032
	.byte	W03
	.byte		N06	, An3, v060
	.byte	W09
	.byte		N03	, An3, v032
	.byte	W03
	.byte		N06	, An3, v060
	.byte	W06
	.byte			En3
	.byte	W09
	.byte		N03	, En3, v032
	.byte	W03
	.byte		N06	, Dn3, v060
	.byte	W09
	.byte		N03	, Dn3, v032
	.byte	W03
	.byte		N06	, En3, v060
	.byte	W09
	.byte		N03	, En3, v032
	.byte	W03
	.byte	PEND
mus_olive_ocean_3_3:
	.byte		N06	, As3, v060
	.byte	W09
	.byte		N03	, As3, v032
	.byte	W03
	.byte		N06	, Fn3, v060
	.byte	W09
	.byte		N03	, Fn3, v032
	.byte	W03
	.byte		N06	, Ds3, v060
	.byte	W06
	.byte			Fn3
	.byte	W09
	.byte		N03	, Fn3, v032
	.byte	W03
	.byte		N06	, As3, v060
	.byte	W09
	.byte		N03	, As3, v032
	.byte	W03
	.byte		N06	, As3, v060
	.byte	W06
	.byte			Fn3
	.byte	W09
	.byte		N03	, Fn3, v032
	.byte	W03
	.byte		N06	, Ds3, v060
	.byte	W09
	.byte		N03	, Ds3, v032
	.byte	W03
	.byte		N06	, Fn3, v060
	.byte	W09
	.byte		N03	, Fn3, v032
	.byte	W03
	.byte	PEND
mus_olive_ocean_3_4:
	.byte		N06	, Cn4, v060
	.byte	W09
	.byte		N03	, Cn4, v032
	.byte	W03
	.byte		N06	, Gn3, v060
	.byte	W09
	.byte		N03	, Gn3, v032
	.byte	W03
	.byte		N06	, Fn3, v060
	.byte	W06
	.byte			Gn3
	.byte	W09
	.byte		N03	, Gn3, v032
	.byte	W03
	.byte		N06	, Cn4, v060
	.byte	W09
	.byte		N03	, Cn4, v032
	.byte	W03
	.byte		N06	, Cn4, v060
	.byte	W06
	.byte			Gn3
	.byte	W09
	.byte		N03	, Gn3, v032
	.byte	W03
	.byte		N06	, Fn3, v060
	.byte	W09
	.byte		N03	, Fn3, v032
	.byte	W03
	.byte		N06	, Gn3, v060
	.byte	W09
	.byte		N03	, Gn3, v032
	.byte	W03
	.byte	PEND
	.byte		N06	, As3, v060
	.byte	W09
	.byte		N03	, As3, v032
	.byte	W03
	.byte		N06	, Fn3, v060
	.byte	W09
	.byte		N03	, Fn3, v032
	.byte	W03
	.byte		N06	, Ds3, v060
	.byte	W06
	.byte			Fn3
	.byte	W09
	.byte		N03	, Fn3, v032
	.byte	W03
	.byte		N06	, As3, v060
	.byte	W09
	.byte		N03	, As3, v032
	.byte	W03
	.byte		N06	, As3, v060
	.byte	W06
	.byte			Fn3
	.byte	W09
	.byte		N03	, Fn3, v032
	.byte	W03
	.byte			Ds3, v060
	.byte	W06
	.byte			Fn3, v052
	.byte	W06
	.byte			Gs3, v056
	.byte	W06
	.byte			As3, v060
	.byte	W06
	.byte	PATT	
		.word	mus_olive_ocean_3_2
	.byte	PATT	
		.word	mus_olive_ocean_3_3
	.byte	PATT	
		.word	mus_olive_ocean_3_4
	.byte	W48
	.byte	VOICE	, 12
	.byte	VOL	, v055
	.byte	PAN	, c_v
	.byte	LFODL	, 26
	.byte	LFOS	, 22
	.byte	MOD	, 6
	.byte	BEND	, c_v
	.byte	W48
	.byte	GOTO	
		.word	mus_olive_ocean_3_5
	.byte	W96
	.byte	FINE

	@********************** Track  4 **********************@

	.global mus_olive_ocean_4
mus_olive_ocean_4:	@ 0x08D4781D
	.byte	KEYSH	, 0
	.byte	VOICE	, 39
	.byte	VOL	, v110
	.byte	PAN	, c_v
	.byte	MOD	, 1
	.byte	BEND	, c_v
	.byte	W48
mus_olive_ocean_4_1:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	VOICE	, 39
	.byte	VOL	, v110
	.byte	PAN	, c_v
	.byte	MOD	, 1
	.byte	BEND	, c_v
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W84
	.byte	VOICE	, 39
	.byte	VOL	, v110
	.byte	PAN	, c_v
	.byte	MOD	, 1
	.byte	BEND	, c_v
	.byte	W12
	.byte		N04	, Cs3, v080
	.byte	W06
	.byte		N08	, Ds3
	.byte	W12
	.byte		N04	, Cs3
	.byte	W06
	.byte		N08	, Ds3
	.byte	W12
	.byte		N04	, Cs3
	.byte	W06
	.byte		N08	, Ds3
	.byte	W12
	.byte		N04	, Cs3
	.byte	W06
	.byte		N08	, Ds3
	.byte	W36
	.byte	W96
	.byte	W48
	.byte	VOICE	, 23
	.byte	VOL	, v046
	.byte	PAN	, c_v-20
	.byte	LFODL	, 30
	.byte	LFOS	, 23
	.byte	MOD	, 7
	.byte	BEND	, c_v
	.byte	W48
	.byte		N96	, En2, v052
	.byte	W96
	.byte			Fn2
	.byte	W96
	.byte			Gn2, v056
	.byte	W96
	.byte			Fn2
	.byte	W96
	.byte			En3, v060
	.byte	W96
	.byte			Fn3
	.byte	W96
	.byte		N92	, Gn3, v064
	.byte	W92
	.byte	W02
	.byte	VOICE	, 39
	.byte	VOL	, v110
	.byte	PAN	, c_v
	.byte	W02
	.byte		N04	, Cn3, v072
	.byte	W06
	.byte		N08	, Dn3
	.byte	W12
	.byte		N04	, Cn3
	.byte	W06
	.byte		N08	, Dn3
	.byte	W12
	.byte		N04	, Cn3
	.byte	W06
	.byte		N08	, Dn3
	.byte	W12
	.byte		N04	, Cn3
	.byte	W06
	.byte		N08	, Dn3
	.byte	W10
	.byte			Dn3, v040
	.byte	W10
	.byte			Dn3, v028
	.byte	W10
	.byte		N06	, Dn3, v020
	.byte	W06
	.byte	GOTO	
		.word	mus_olive_ocean_4_1
	.byte	W96
	.byte	FINE

	@********************** Track  5 **********************@

	.global mus_olive_ocean_5
mus_olive_ocean_5:	@ 0x08D478BA
	.byte	KEYSH	, 0
	.byte	VOICE	, 43
	.byte	VOL	, v082
	.byte	PAN	, c_v-10
	.byte	LFODL	, 9
	.byte	LFOS	, 12
	.byte	MOD	, 3
	.byte	BEND	, c_v
	.byte	W48
mus_olive_ocean_5_2:
	.byte	PAN	, c_v-20
	.byte		N03	, Cn4, v056
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Cn4, v048
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Cn4, v040
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Cn4, v036
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Cn4, v032
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte	PAN	, c_v+40
	.byte		N03	, Cs4, v056
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Cs4, v048
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Cs4, v040
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Cs4, v036
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Cs4, v032
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte	PAN	, c_v-30
	.byte		N03	, Ds4, v056
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Ds4, v048
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Ds4, v040
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Ds4, v036
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Ds4, v032
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte	PAN	, c_v+40
	.byte		N03	, Cs4, v056
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			Cs4, v048
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			Cs4, v040
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			Cs4, v036
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			Cs4, v032
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte	PAN	, c_v-20
	.byte		N03	, Ds4, v056
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Ds4, v048
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Ds4, v040
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Ds4, v036
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Ds4, v032
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Cs4
	.byte	W06
mus_olive_ocean_5_1:
	.byte	PAN	, c_v+40
	.byte		N03	, Bn3, v056
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			Bn3, v048
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			Bn3, v040
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			Bn3, v036
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			Bn3, v032
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte	PEND
	.byte	PAN	, c_v-30
	.byte		N03	, Cs4, v056
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Cs4, v048
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Cs4, v040
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Cs4, v036
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Cs4, v032
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte	PATT	
		.word	mus_olive_ocean_5_1
	.byte	PAN	, c_v-20
	.byte		N03	, As3, v056
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			As3, v048
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			As3, v040
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			As3, v036
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			As3, v032
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			As3
	.byte	W06
	.byte	PATT	
		.word	mus_olive_ocean_5_1
	.byte	PAN	, c_v-30
	.byte		N03	, Cs4, v056
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			Cs4, v048
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			Cs4, v040
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			Cs4, v036
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			Cs4, v048
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte	W96
	.byte	W96
	.byte	W48
	.byte	VOICE	, 23
	.byte	VOL	, v055
	.byte	PAN	, c_v+30
	.byte	LFODL	, 35
	.byte	LFOS	, 21
	.byte	MOD	, 12
	.byte	BEND	, c_v
	.byte	W48
	.byte		N96	, An1, v080
	.byte	W12
	.byte	VOL	, v052
	.byte	W06
	.byte		v049
	.byte	W06
	.byte		v046
	.byte	W06
	.byte		v044
	.byte	W06
	.byte		v041
	.byte	W06
	.byte		v037
	.byte	W06
	.byte		v035
	.byte	W06
	.byte		v032
	.byte	W06
	.byte		v029
	.byte	W06
	.byte		v026
	.byte	W06
	.byte		v023
	.byte	W06
	.byte		v021
	.byte	W06
	.byte		v018
	.byte	W12
	.byte		v055
	.byte		N96	, As1, v084
	.byte	W06
	.byte	VOL	, v052
	.byte	W06
	.byte		v050
	.byte	W06
	.byte		v047
	.byte	W06
	.byte		v045
	.byte	W06
	.byte		v043
	.byte	W06
	.byte		v040
	.byte	W06
	.byte		v037
	.byte	W06
	.byte		v035
	.byte	W06
	.byte		v033
	.byte	W06
	.byte		v030
	.byte	W06
	.byte		v028
	.byte	W06
	.byte		v025
	.byte	W06
	.byte		v023
	.byte	W06
	.byte		v021
	.byte	W06
	.byte		v018
	.byte	W06
	.byte		v055
	.byte		N96	, Cn2
	.byte	W06
	.byte	VOL	, v052
	.byte	W06
	.byte		v050
	.byte	W06
	.byte		v047
	.byte	W06
	.byte		v045
	.byte	W06
	.byte		v043
	.byte	W06
	.byte		v040
	.byte	W06
	.byte		v037
	.byte	W06
	.byte		v035
	.byte	W06
	.byte		v033
	.byte	W06
	.byte		v030
	.byte	W06
	.byte		v028
	.byte	W06
	.byte		v025
	.byte	W06
	.byte		v023
	.byte	W06
	.byte		v021
	.byte	W06
	.byte		v018
	.byte	W06
	.byte		v055
	.byte		N96	, As1, v088
	.byte	W06
	.byte	VOL	, v052
	.byte	W06
	.byte		v050
	.byte	W06
	.byte		v047
	.byte	W06
	.byte		v045
	.byte	W06
	.byte		v043
	.byte	W06
	.byte		v040
	.byte	W06
	.byte		v037
	.byte	W06
	.byte		v035
	.byte	W06
	.byte		v033
	.byte	W06
	.byte		v030
	.byte	W06
	.byte		v028
	.byte	W06
	.byte		v025
	.byte	W06
	.byte		v023
	.byte	W06
	.byte		v021
	.byte	W06
	.byte		v018
	.byte	W06
	.byte		v055
	.byte		N84	, An2
	.byte	W06
	.byte	VOL	, v052
	.byte	W06
	.byte		v049
	.byte	W06
	.byte		v046
	.byte	W06
	.byte		v044
	.byte	W06
	.byte		v041
	.byte	W06
	.byte		v037
	.byte	W06
	.byte		v035
	.byte	W06
	.byte		v032
	.byte	W06
	.byte		v029
	.byte	W06
	.byte		v026
	.byte	W06
	.byte		v023
	.byte	W06
	.byte		v021
	.byte	W06
	.byte		v018
	.byte	W06
	.byte		v055
	.byte		N06	, Gs2
	.byte	W06
	.byte	VOL	, v052
	.byte		N06	, An2
	.byte	W06
	.byte	VOL	, v050
	.byte		N84	, As2
	.byte	W06
	.byte	VOL	, v047
	.byte	W06
	.byte		v045
	.byte	W06
	.byte		v043
	.byte	W06
	.byte		v040
	.byte	W06
	.byte		v037
	.byte	W06
	.byte		v035
	.byte	W06
	.byte		v033
	.byte	W06
	.byte		v030
	.byte	W06
	.byte		v028
	.byte	W06
	.byte		v025
	.byte	W06
	.byte		v023
	.byte	W06
	.byte		v021
	.byte	W06
	.byte		v018
	.byte	W06
	.byte		v055
	.byte		N06	, An2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte		N96	, Cn3, v092
	.byte	W96
	.byte	W48
	.byte	VOICE	, 43
	.byte	VOL	, v082
	.byte	PAN	, c_v-10
	.byte	LFODL	, 9
	.byte	LFOS	, 12
	.byte	MOD	, 3
	.byte	BEND	, c_v
	.byte	W48
	.byte	GOTO	
		.word	mus_olive_ocean_5_2
	.byte	W96
	.byte	FINE

	@********************** Track  6 **********************@

	.global mus_olive_ocean_6
mus_olive_ocean_6:	@ 0x08D47B43
	.byte	KEYSH	, 0
	.byte	VOICE	, 61
	.byte	VOL	, v046
	.byte	PAN	, c_v-20
	.byte	MOD	, 1
	.byte	BEND	, c_v
	.byte	W48
mus_olive_ocean_6_1:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	VOL	, v018
	.byte		N24	, Fs2, v072
	.byte	W03
	.byte	VOL	, v027
	.byte	W03
	.byte		v036
	.byte	W03
	.byte		v046
	.byte	W03
	.byte		v046
	.byte	W12
	.byte		v018
	.byte		N24	, Gs2
	.byte	W03
	.byte	VOL	, v027
	.byte	W03
	.byte		v036
	.byte	W03
	.byte		v046
	.byte	W03
	.byte		v046
	.byte	W12
	.byte		v020
	.byte		N24	, As2
	.byte	W03
	.byte	VOL	, v029
	.byte	W03
	.byte		v037
	.byte	W03
	.byte		v046
	.byte	W03
	.byte		v046
	.byte	W12
	.byte		v020
	.byte		N24	, Fs2
	.byte	W03
	.byte	VOL	, v028
	.byte	W03
	.byte		v037
	.byte	W03
	.byte		v046
	.byte	W03
	.byte		v046
	.byte	W12
	.byte		v018
	.byte		N48	, Bn2
	.byte	W03
	.byte	VOL	, v023
	.byte	W03
	.byte		v028
	.byte	W03
	.byte		v034
	.byte	W03
	.byte		v040
	.byte	W03
	.byte		v046
	.byte	W32
	.byte	W01
	.byte		v018
	.byte		N36	, Dn3
	.byte	W03
	.byte	VOL	, v023
	.byte	W03
	.byte		v030
	.byte	W03
	.byte		v035
	.byte	W03
	.byte		v040
	.byte	W03
	.byte		v046
	.byte	W21
	.byte		N04	, Cs3
	.byte	W04
	.byte			Cn3
	.byte	W04
	.byte			Bn2
	.byte	W04
	.byte		N90	, As2
	.byte	W48
	.byte	VOL	, v046
	.byte	W03
	.byte		v044
	.byte	W03
	.byte		v042
	.byte	W03
	.byte		v040
	.byte	W03
	.byte		v038
	.byte	W03
	.byte		v036
	.byte	W03
	.byte		v035
	.byte	W03
	.byte		v034
	.byte	W03
	.byte		v032
	.byte	W03
	.byte		v030
	.byte	W03
	.byte		v028
	.byte	W03
	.byte		v026
	.byte	W03
	.byte		v024
	.byte	W03
	.byte		v023
	.byte	W03
	.byte		v021
	.byte	W03
	.byte		v019
	.byte	W03
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
	.byte	GOTO	
		.word	mus_olive_ocean_6_1
	.byte	W96
	.byte	FINE

	@********************** Track  7 **********************@

	.global mus_olive_ocean_7
mus_olive_ocean_7:	@ 0x08D47BEA
	.byte	KEYSH	, 0
	.byte	W48
mus_olive_ocean_7_1:
	.byte	W06
	.byte	VOICE	, 12
	.byte	VOL	, v027
	.byte	PAN	, c_v+20
	.byte	LFODL	, 25
	.byte	LFOS	, 22
	.byte	MOD	, 6
	.byte	BEND	, c_v+9
	.byte	W18
	.byte		N04	, Gn2, v056
	.byte	W06
	.byte			Cn3
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte		N22	, Ds3
	.byte	W24
	.byte		N04	, Cn3
	.byte	W12
	.byte		N16	, Dn3
	.byte	W06
	.byte	W12
	.byte		N10	, Ds3
	.byte	W12
	.byte		N04	, Fn3
	.byte	W06
	.byte			Gn3
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte		N48	, Bn2
	.byte	W42
	.byte	W24
	.byte		N03	, As2
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte		N03	, Dn3
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte		N04	, Gn3
	.byte	W06
	.byte			Fn3
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte		N16	, Cn3
	.byte	W06
	.byte	W12
	.byte		N12	, Bn2
	.byte	W12
	.byte		N04	, Cs3
	.byte	W06
	.byte			Ds3
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte		N30	, Bn2
	.byte	W36
	.byte		N12	, Cs3
	.byte	W06
	.byte	W06
	.byte		N03	, Cn3
	.byte	W03
	.byte			Bn2
	.byte	W03
	.byte		N80	, As2
	.byte	W84
	.byte		N04	, Gs2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte		N44	, Bn2
	.byte	W48
	.byte		N04	, Ds3
	.byte	W06
	.byte			Cs3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte		N12	, Cs3
	.byte	W06
	.byte	W06
	.byte		N03	, Cn3
	.byte	W03
	.byte			Bn2
	.byte	W03
	.byte		N48	, As2
	.byte	W48
	.byte		N36	, Cs3
	.byte	W36
	.byte		N04	, Bn2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte		N44	, Dn3
	.byte	W48
	.byte		N04	, Fs3
	.byte	W06
	.byte			En3
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte		N12	, En3
	.byte	W06
	.byte	W06
	.byte		N03	, Ds3
	.byte	W03
	.byte			Dn3
	.byte	W03
	.byte		N48	, Cs3
	.byte	W48
	.byte		N24	, Fs3
	.byte	W24
	.byte			Cs3
	.byte	W12
	.byte	W12
	.byte		N44	, Dn3
	.byte	W48
	.byte		N04	, Fs3
	.byte	W06
	.byte			En3
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte		N12	, En3
	.byte	W06
	.byte	W06
	.byte		N03	, Ds3
	.byte	W03
	.byte			Dn3
	.byte	W03
	.byte		N48	, Cs3
	.byte	W48
	.byte		N36	, Fs3
	.byte	W36
	.byte	VOICE	, 39
	.byte	W03
	.byte	VOL	, v027
	.byte	W06
	.byte		N04	, Cs3, v108
	.byte	W06
	.byte		N08	, Ds3
	.byte	W12
	.byte		N04	, Cs3
	.byte	W06
	.byte		N08	, Ds3
	.byte	W12
	.byte		N04	, Cs3
	.byte	W06
	.byte		N08	, Ds3
	.byte	W12
	.byte		N04	, Cs3
	.byte	W06
	.byte		N08	, Ds3
	.byte	W24
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	VOICE	, 39
	.byte	W03
	.byte	VOL	, v027
	.byte	W06
	.byte		N04	, Cn3
	.byte	W06
	.byte		N08	, Dn3
	.byte	W12
	.byte		N04	, Cn3
	.byte	W06
	.byte		N08	, Dn3
	.byte	W12
	.byte		N04	, Cn3
	.byte	W06
	.byte		N08	, Dn3
	.byte	W12
	.byte		N04	, Cn3
	.byte	W06
	.byte		N08	, Dn3
	.byte	W24
	.byte	W03
	.byte	GOTO	
		.word	mus_olive_ocean_7_1
	.byte	W96
	.byte	FINE

	.align 2
	.global mus_olive_ocean
mus_olive_ocean:	@ 0x08D47CF8
	.byte	7		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	mus_olive_ocean_1		@ track
	.word	mus_olive_ocean_2		@ track
	.word	mus_olive_ocean_3		@ track
	.word	mus_olive_ocean_4		@ track
	.word	mus_olive_ocean_5		@ track
	.word	mus_olive_ocean_6		@ track
	.word	mus_olive_ocean_7		@ track
