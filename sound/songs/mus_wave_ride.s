	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global mus_wave_ride_1
mus_wave_ride_1:	@ 0x08D4E3F8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 55
	.byte	W06
	.byte	VOICE	, 67
mus_wave_ride_1_5:
	.byte	VOL	, v096
	.byte	PAN	, c_v
	.byte	BEND	, c_v
	.byte		N06	, Gs1, v092
	.byte		N36	, Cs3, v040
	.byte	W06
	.byte		N06	, Fs0, v120
	.byte	W06
	.byte		N12	, Cn3, v060
	.byte	W06
	.byte		N06	, Fs0, v120
	.byte	W06
	.byte			Gs1, v092
	.byte	W06
	.byte			Fs0, v120
	.byte	W06
	.byte		N12	, Cn3, v052
	.byte	W06
	.byte		N06	, Gs1, v092
	.byte	W06
	.byte			Fs0, v120
	.byte	W06
	.byte			Gs1, v092
	.byte	W06
	.byte		N12	, Cn3, v060
	.byte	W06
	.byte		N06	, Fs0, v120
	.byte	W06
	.byte			Gs1, v092
	.byte	W06
	.byte			Fs0, v120
	.byte	W06
	.byte		N12	, Cn3, v052
	.byte	W06
	.byte		N06	, As0, v112
	.byte	W06
mus_wave_ride_1_1:
	.byte		N06	, Gs1, v092
	.byte	W06
	.byte			Fs0, v120
	.byte	W06
	.byte		N12	, Cn3, v060
	.byte	W06
	.byte		N06	, Fs0, v120
	.byte	W06
	.byte			Gs1, v092
	.byte	W06
	.byte			Fs0, v120
	.byte	W06
	.byte		N12	, Cn3, v052
	.byte	W06
	.byte		N06	, Gs1, v092
	.byte	W06
	.byte			Fs0, v120
	.byte	W06
	.byte			Gs1, v092
	.byte	W06
	.byte		N12	, Cn3, v060
	.byte	W06
	.byte		N06	, Fs0, v120
	.byte	W06
	.byte			Gs1, v092
	.byte	W06
	.byte			Fs0, v120
	.byte	W06
	.byte		N12	, Cn3, v052
	.byte	W06
	.byte		N06	, As0, v112
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	mus_wave_ride_1_1
	.byte		N06	, Gs1, v092
	.byte	W06
	.byte			Fs0, v120
	.byte	W06
	.byte		N12	, Cn3, v060
	.byte	W06
	.byte		N06	, Fs0, v120
	.byte	W06
	.byte			Gs1, v092
	.byte	W06
	.byte			Fs0, v120
	.byte	W06
	.byte		N12	, Cn3, v052
	.byte	W06
	.byte		N06	, Gs1, v092
	.byte		N30	, Cs3, v036
	.byte	W06
	.byte		N06	, Fs0, v120
	.byte	W06
	.byte			Gs1, v092
	.byte	W06
	.byte		N12	, Cn3, v060
	.byte	W06
	.byte		N06	, Fs0, v120
	.byte	W06
	.byte			Cn1, v100
	.byte	W06
	.byte			Bn0
	.byte	W06
	.byte			An0
	.byte	W06
	.byte			An0, v112
	.byte	W06
	.byte			Gs1, v092
	.byte		N36	, Cs3, v040
	.byte	W06
	.byte		N06	, Fs0, v120
	.byte	W06
	.byte		N12	, Cn3, v060
	.byte	W06
	.byte		N06	, Fs0, v120
	.byte	W06
	.byte			Gs1, v092
	.byte	W06
	.byte			Fs0, v120
	.byte	W06
	.byte		N12	, Cn3, v052
	.byte	W06
	.byte		N06	, Gs1, v092
	.byte	W06
	.byte			Fs0, v120
	.byte	W06
	.byte			Gs1, v092
	.byte	W06
	.byte		N12	, Cn3, v060
	.byte	W06
	.byte		N06	, Fs0, v120
	.byte	W06
	.byte			Gs1, v092
	.byte	W06
	.byte			Fs0, v120
	.byte	W06
	.byte		N12	, Cn3, v052
	.byte	W06
	.byte		N06	, As0, v112
	.byte	W06
	.byte	PATT	
		.word	mus_wave_ride_1_1
	.byte	PATT	
		.word	mus_wave_ride_1_1
	.byte		N06	, Gs1, v092
	.byte	W06
	.byte			Fs0, v120
	.byte	W06
	.byte		N12	, Cn3, v060
	.byte	W06
	.byte		N06	, Fs0, v120
	.byte	W06
	.byte			Gs1, v092
	.byte	W06
	.byte			Fs0, v120
	.byte	W06
	.byte		N12	, Cn3, v052
	.byte	W06
	.byte		N06	, Gs1, v092
	.byte		N30	, Cs3, v036
	.byte	W06
	.byte		N06	, Fs0, v120
	.byte	W06
	.byte			As0
	.byte		N12	, Gs1, v092
	.byte	W12
	.byte		N06	, As0, v120
	.byte		N12	, Gs1, v092
	.byte	W12
	.byte		N06	, Cn3, v052
	.byte	W06
	.byte			Cn3, v056
	.byte	W06
	.byte			Cn3, v060
	.byte	W06
mus_wave_ride_1_2:
	.byte		N06	, Gs1, v092
	.byte		N30	, Cs3, v040
	.byte	W06
	.byte		N06	, Fs0, v120
	.byte	W06
	.byte		N12	, Cn3, v060
	.byte	W06
	.byte		N06	, Fs0, v120
	.byte	W06
	.byte			Gs1, v092
	.byte	W06
	.byte			Fs0, v120
	.byte	W06
	.byte		N12	, Cn3, v052
	.byte	W06
	.byte		N06	, Gs1, v092
	.byte	W06
	.byte			Fs0, v120
	.byte	W06
	.byte			Gs1, v092
	.byte	W06
	.byte		N12	, Cn3, v060
	.byte	W06
	.byte		N06	, Fs0, v120
	.byte	W06
	.byte			Gs1, v092
	.byte	W06
	.byte			Fs0, v120
	.byte	W06
	.byte		N12	, Cn3, v052
	.byte	W06
	.byte		N06	, As0, v112
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	mus_wave_ride_1_1
	.byte	PATT	
		.word	mus_wave_ride_1_2
	.byte		N06	, Gs1, v092
	.byte	W06
	.byte			Fs0, v120
	.byte	W06
	.byte		N12	, Cn3, v060
	.byte	W06
	.byte		N06	, Fs0, v120
	.byte	W06
	.byte			Gs1, v092
	.byte	W06
	.byte			Fs0, v120
	.byte	W06
	.byte		N12	, Cn3, v052
	.byte	W06
	.byte		N06	, Gs1, v092
	.byte		N24	, Cs3, v036
	.byte	W06
	.byte		N06	, Fs0, v120
	.byte	W06
	.byte			Cn3, v052
	.byte	W06
	.byte			Cn3, v060
	.byte	W06
	.byte			Cn3, v052
	.byte	W06
	.byte			Cn3, v060
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N12	, An0, v112
	.byte	W06
	.byte		N06	, Gn0, v116
	.byte	W06
mus_wave_ride_1_3:
	.byte		N06	, Gs1, v092
	.byte		N30	, Cs3, v040
	.byte	W06
	.byte		N06	, Fs0, v120
	.byte	W06
	.byte		N12	, Cn3, v060
	.byte	W06
	.byte		N06	, Fs0, v120
	.byte	W06
	.byte			Gs1, v092
	.byte	W06
	.byte			Fs0, v120
	.byte	W06
	.byte		N12	, Cn3, v052
	.byte	W06
	.byte		N06	, Gs1, v092
	.byte		N24	, Cs3, v032
	.byte	W06
	.byte		N06	, Fs0, v120
	.byte	W06
	.byte			Gs1, v092
	.byte	W06
	.byte		N12	, Cn3, v060
	.byte	W06
	.byte		N06	, Fs0, v120
	.byte	W06
	.byte			Gs1, v092
	.byte	W06
	.byte			Fs0, v120
	.byte	W06
	.byte		N12	, Cn3, v052
	.byte	W06
	.byte		N06	, As0, v112
	.byte	W06
	.byte	PEND
mus_wave_ride_1_4:
	.byte		N06	, Gs1, v092
	.byte	W06
	.byte			Fs0, v120
	.byte	W06
	.byte		N12	, Cn3, v060
	.byte	W06
	.byte		N06	, Fs0, v120
	.byte	W06
	.byte			Gs1, v092
	.byte	W06
	.byte			Fs0, v120
	.byte	W06
	.byte		N12	, Cn3, v052
	.byte	W06
	.byte		N06	, Gs1, v092
	.byte		N24	, Cs3, v032
	.byte	W06
	.byte		N06	, Fs0, v120
	.byte	W06
	.byte			Cn3, v052
	.byte	W06
	.byte			Cn3, v060
	.byte	W06
	.byte			As0, v120
	.byte		N06	, Gs1, v092
	.byte	W06
	.byte			Fs0, v112
	.byte	W06
	.byte			Gs1, v092
	.byte		N18	, Cs3, v036
	.byte	W18
	.byte	PEND
	.byte	PATT	
		.word	mus_wave_ride_1_3
	.byte	PATT	
		.word	mus_wave_ride_1_4
	.byte	GOTO	
		.word	mus_wave_ride_1_5
	.byte	W96
	.byte	FINE

	@********************** Track  2 **********************@

	.global mus_wave_ride_2
mus_wave_ride_2:	@ 0x08D4E649
	.byte	KEYSH	, 0
	.byte	W06
	.byte	VOICE	, 32
mus_wave_ride_2_5:
	.byte	VOL	, v087
	.byte	PAN	, c_v-1
	.byte	MOD	, 0
	.byte	BEND	, c_v
	.byte		N05	, Fn2, v120
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte		N12	, Fn2
	.byte	W12
	.byte		N05	, Fn2, v112
	.byte	W06
	.byte			Cn3, v092
	.byte	W06
	.byte			Fn2, v120
	.byte	W06
	.byte			Fn2, v112
	.byte	W06
	.byte			Ds2, v120
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Fn2
	.byte	W06
mus_wave_ride_2_2:
	.byte		N05	, Ds2, v120
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			As2, v092
	.byte	W06
	.byte			Ds2, v120
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte		N12	, Ds2
	.byte	W12
	.byte		N05	, Ds2, v112
	.byte	W06
	.byte			As2, v092
	.byte	W06
	.byte			Ds2, v120
	.byte	W06
	.byte			Ds2, v112
	.byte	W06
	.byte			Cs2, v120
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte	PEND
mus_wave_ride_2_1:
	.byte		N05	, Fn2, v120
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte		N12	, Fn2
	.byte	W12
	.byte		N05	, Fn2, v112
	.byte	W06
	.byte			Cn3, v092
	.byte	W06
	.byte			Fn2, v120
	.byte	W06
	.byte			Fn2, v112
	.byte	W06
	.byte			Ds2, v120
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte	PEND
	.byte			Ds2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			As2, v088
	.byte	W06
	.byte			Ds2, v120
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte		N12	, Cn2
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			En2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PATT	
		.word	mus_wave_ride_2_1
	.byte	PATT	
		.word	mus_wave_ride_2_2
	.byte	PATT	
		.word	mus_wave_ride_2_1
	.byte		N05	, Ds2, v120
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			As2, v092
	.byte	W06
	.byte			Ds2, v120
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte		N12	, Cn2
	.byte	W12
	.byte		N05	, Gn2, v092
	.byte	W06
	.byte			Dn2, v004
	.byte	W06
	.byte			En2, v120
	.byte	W06
	.byte			Ds2, v004
	.byte	W06
	.byte			Cn2, v120
	.byte	W06
	.byte			En2, v004
	.byte	W06
	.byte			Gn1, v120
	.byte	W06
	.byte			As1
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			An1
	.byte	W06
	.byte		N12	, As1
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte			Fn2, v092
	.byte	W06
	.byte			As1, v120
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			An1
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte		N12	, Fn2
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			An2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			As1
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			An1
	.byte	W06
	.byte		N12	, As1
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte			Fn2, v088
	.byte	W06
	.byte			As1, v120
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			An1
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte		N12	, Cn2
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			En2
	.byte	W06
	.byte		N05	
	.byte	W06
mus_wave_ride_2_3:
	.byte		N05	, Fn2, v120
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N12	, Ds2
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PEND
mus_wave_ride_2_4:
	.byte		N05	, As1, v120
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			As1
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N12	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte		N04	, As1
	.byte	W12
	.byte		N18	, Ds2
	.byte	W18
	.byte	PEND
	.byte	PATT	
		.word	mus_wave_ride_2_3
	.byte	PATT	
		.word	mus_wave_ride_2_4
	.byte	GOTO	
		.word	mus_wave_ride_2_5
	.byte	W96
	.byte	FINE

	@********************** Track  3 **********************@

	.global mus_wave_ride_3
mus_wave_ride_3:	@ 0x08D4E7FA
	.byte	KEYSH	, 0
	.byte	W06
mus_wave_ride_3_4:
	.byte	W03
	.byte	VOICE	, 45
	.byte	VOL	, v036
	.byte	PAN	, c_v-40
	.byte	MOD	, 0
	.byte	BEND	, c_v
	.byte	W03
	.byte		N02	, An2, v092
	.byte		N02	, Fn3
	.byte	W06
	.byte	PAN	, c_v+40
	.byte		N03	, Fn2, v080
	.byte		N03	, Cn3
	.byte	W06
	.byte		N02	, Cn2, v092
	.byte		N02	, An2
	.byte	W12
	.byte	PAN	, c_v-40
	.byte		N03	, Fn2
	.byte		N03	, Cn3
	.byte	W12
	.byte	PAN	, c_v+40
	.byte		N02	, Cn2, v080
	.byte		N02	, An2
	.byte	W12
	.byte	PAN	, c_v-40
	.byte		N03	, Fn2, v092
	.byte		N03	, Cn3
	.byte	W12
	.byte	PAN	, c_v+40
	.byte		N02	, Cn2, v080
	.byte		N02	, An2
	.byte	W06
	.byte	PAN	, c_v-40
	.byte		N02	, Fn2, v092
	.byte		N02	, Cn3
	.byte	W06
	.byte			Fn2
	.byte		N02	, Cn3
	.byte	W06
	.byte	PAN	, c_v+40
	.byte		N02	, An2
	.byte		N02	, Fn3
	.byte	W06
	.byte			An2
	.byte		N02	, Fn3
	.byte	W06
mus_wave_ride_3_2:
	.byte	W06
	.byte		N02	, Gn2, v092
	.byte		N02	, Ds3
	.byte	W06
	.byte	PAN	, c_v+40
	.byte		N03	, Ds2
	.byte		N03	, As2
	.byte	W06
	.byte		N02	, As1
	.byte		N02	, Gn2
	.byte	W12
	.byte	PAN	, c_v-40
	.byte		N03	, Ds2
	.byte		N03	, As2
	.byte	W12
	.byte	PAN	, c_v+40
	.byte		N02	, As1, v080
	.byte		N02	, Gn2
	.byte	W12
	.byte	PAN	, c_v-40
	.byte		N03	, Ds2, v092
	.byte		N03	, As2
	.byte	W12
	.byte	PAN	, c_v+40
	.byte		N02	, As1, v080
	.byte		N02	, Gn2
	.byte	W06
	.byte	PAN	, c_v-40
	.byte		N02	, Ds2, v092
	.byte		N02	, As2
	.byte	W06
	.byte			Ds2
	.byte		N02	, As2
	.byte	W06
	.byte	PAN	, c_v+40
	.byte		N02	, Gn2
	.byte		N02	, Ds3
	.byte	W06
	.byte			Gn2
	.byte		N02	, Ds3
	.byte	W06
	.byte	PEND
mus_wave_ride_3_1:
	.byte	W06
	.byte		N02	, An2, v092
	.byte		N02	, Fn3
	.byte	W06
	.byte	PAN	, c_v+40
	.byte		N03	, Fn2, v080
	.byte		N03	, Cn3
	.byte	W06
	.byte		N02	, Cn2, v092
	.byte		N02	, An2
	.byte	W12
	.byte	PAN	, c_v-40
	.byte		N03	, Fn2
	.byte		N03	, Cn3
	.byte	W12
	.byte	PAN	, c_v+40
	.byte		N02	, Cn2, v080
	.byte		N02	, An2
	.byte	W12
	.byte	PAN	, c_v-40
	.byte		N03	, Fn2, v092
	.byte		N03	, Cn3
	.byte	W12
	.byte	PAN	, c_v+40
	.byte		N02	, Cn2, v080
	.byte		N02	, An2
	.byte	W06
	.byte	PAN	, c_v-40
	.byte		N02	, Fn2, v092
	.byte		N02	, Cn3
	.byte	W06
	.byte			Fn2
	.byte		N02	, Cn3
	.byte	W06
	.byte	PAN	, c_v+40
	.byte		N02	, An2
	.byte		N02	, Fn3
	.byte	W06
	.byte			An2
	.byte		N02	, Fn3
	.byte	W06
	.byte	PEND
	.byte	W06
	.byte			Gn2
	.byte		N02	, Ds3
	.byte	W06
	.byte	PAN	, c_v+40
	.byte		N03	, Ds2
	.byte		N03	, As2
	.byte	W06
	.byte		N02	, As1
	.byte		N02	, Gn2
	.byte	W12
	.byte	PAN	, c_v-40
	.byte		N03	, Ds2
	.byte		N03	, As2
	.byte	W12
	.byte	PAN	, c_v+40
	.byte		N02	, As1, v080
	.byte		N02	, Gn2
	.byte	W12
	.byte	PAN	, c_v-40
	.byte		N02	, En2, v092
	.byte		N02	, Cn3
	.byte	W12
	.byte	PAN	, c_v+40
	.byte		N02	, Gn1, v080
	.byte		N02	, En2
	.byte	W06
	.byte	PAN	, c_v-40
	.byte		N02	, Cn2, v092
	.byte		N02	, Gn2
	.byte	W06
	.byte			Cn2
	.byte		N02	, Gn2
	.byte	W06
	.byte	PAN	, c_v+40
	.byte		N02	, En2
	.byte		N02	, Cn3
	.byte	W06
	.byte			En2
	.byte		N02	, Cn3
	.byte	W06
	.byte	PATT	
		.word	mus_wave_ride_3_1
	.byte	PATT	
		.word	mus_wave_ride_3_2
	.byte	PATT	
		.word	mus_wave_ride_3_1
	.byte	W06
	.byte		N02	, Gn2, v092
	.byte		N02	, Ds3
	.byte	W06
	.byte	PAN	, c_v+40
	.byte		N03	, Ds2
	.byte		N03	, As2
	.byte	W06
	.byte		N02	, As1
	.byte		N02	, Gn2
	.byte	W12
	.byte	PAN	, c_v-40
	.byte		N03	, Ds2
	.byte		N03	, As2
	.byte	W12
	.byte	PAN	, c_v+40
	.byte		N02	, As1, v080
	.byte		N02	, Gn2
	.byte	W12
	.byte	PAN	, c_v-40
	.byte		N04	, Cn3, v092
	.byte		N04	, En3
	.byte	W12
	.byte	PAN	, c_v+40
	.byte		N04	, Gn2, v080
	.byte		N04	, Cn3
	.byte	W12
	.byte	PAN	, c_v-40
	.byte		N04	, En2, v092
	.byte		N04	, Gn2
	.byte	W12
	.byte	PAN	, c_v+40
	.byte		N04	, Cn2, v100
	.byte		N04	, En2
	.byte	W06
	.byte	MOD	, 3
	.byte	VOL	, v055
	.byte	PAN	, c_v+40
	.byte		N06	, As1, v068
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			An1
	.byte	W06
	.byte		N12	, As1
	.byte	W12
	.byte		N06	, Gs1
	.byte	W06
	.byte			An1
	.byte	W06
	.byte		N12	, As1
	.byte	W12
	.byte		N06	, Gs1
	.byte	W06
	.byte			An1
	.byte	W06
	.byte		N12	, As1
	.byte	W12
	.byte			Fn2, v056
	.byte	W12
	.byte		N06	, Cn2, v068
	.byte	W06
	.byte	PAN	, c_v-40
	.byte		N06	, Fn1
	.byte	W06
	.byte			Ds1
	.byte	W06
	.byte			En1
	.byte	W06
	.byte		N12	, Fn1
	.byte	W12
	.byte		N06	, Ds1
	.byte	W06
	.byte			En1
	.byte	W06
	.byte		N12	, Fn1
	.byte	W12
	.byte		N06	, Ds1
	.byte	W06
	.byte			En1
	.byte	W06
	.byte		N12	, Fn1
	.byte	W12
	.byte			Cn2, v056
	.byte	W12
	.byte		N03	, Gs1, v068
	.byte	W03
	.byte			An1
	.byte	W03
	.byte	PAN	, c_v+40
	.byte		N06	, As1
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			An1
	.byte	W06
	.byte		N12	, As1
	.byte	W12
	.byte		N06	, Gs1
	.byte	W06
	.byte			An1
	.byte	W06
	.byte		N12	, As1
	.byte	W12
	.byte		N06	, Gs1
	.byte	W06
	.byte			An1
	.byte	W06
	.byte		N12	, As1
	.byte	W12
	.byte			Fn2, v056
	.byte	W12
	.byte		N03	, As1, v068
	.byte	W03
	.byte			Bn1
	.byte	W03
	.byte	PAN	, c_v-40
	.byte		N06	, Cn2
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte		N12	, Cn2
	.byte	W12
	.byte		N06	, As1
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte		N12	, Cn2
	.byte	W12
	.byte		N06	, Gn1
	.byte	W06
	.byte	PAN	, c_v+40
	.byte		N06	, An1
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte	PAN	, c_v-40
	.byte		N06	, As1
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte	PAN	, c_v+40
	.byte		N06	, Bn1
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte	PAN	, c_v+20
	.byte		N18	, Cn3
	.byte	W18
	.byte		N04	
	.byte	W12
	.byte			An2
	.byte	W12
	.byte		N24	, As2
	.byte	W24
	.byte		N12	, Gn2
	.byte	W12
	.byte		N18	, Ds2
	.byte	W18
mus_wave_ride_3_3:
	.byte		N18	, As2, v068
	.byte	W18
	.byte		N04	, Fn2
	.byte	W12
	.byte			As2
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N03	
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N04	, Cn3
	.byte	W12
	.byte		N18	
	.byte	W18
	.byte	PEND
	.byte		N18	
	.byte	W18
	.byte		N04	
	.byte	W12
	.byte			An2
	.byte	W12
	.byte		N24	, As2
	.byte	W24
	.byte		N12	, Gn2
	.byte	W12
	.byte		N18	, Ds2
	.byte	W18
	.byte	PATT	
		.word	mus_wave_ride_3_3
	.byte	GOTO	
		.word	mus_wave_ride_3_4
	.byte	W96
	.byte	FINE

	@********************** Track  4 **********************@

	.global mus_wave_ride_4
mus_wave_ride_4:	@ 0x08D4EA61
	.byte	KEYSH	, 0
	.byte	W06
mus_wave_ride_4_3:
	.byte	W06
	.byte	VOICE	, 24
	.byte	VOL	, v046
	.byte	PAN	, c_v
	.byte	MOD	, 1
	.byte	BEND	, c_v
	.byte	W06
	.byte	LFODL	, 24
	.byte	LFOS	, 28
	.byte	W12
	.byte	BEND	, c_v-32
	.byte		N06	, An3, v088
	.byte	W01
	.byte	BEND	, c_v
	.byte	W06
	.byte		N05	, As3
	.byte	W05
	.byte		N03	, Cn4, v096
	.byte	W06
	.byte	BEND	, c_v-32
	.byte	W01
	.byte		c_v
	.byte		N05	, Cn4, v088
	.byte	W12
	.byte			As3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte		N18	, Fn3
	.byte	W11
	.byte	BEND	, c_v-32
	.byte	W03
	.byte		c_v
	.byte	W03
	.byte		N18	, Gn3
	.byte	W18
	.byte		N72	, Ds3
	.byte	W18
	.byte	MOD	, 6
	.byte	W24
	.byte		12
	.byte	W36
mus_wave_ride_4_1:
	.byte	MOD	, 1
	.byte	W24
	.byte	BEND	, c_v-32
	.byte		N06	, An3, v088
	.byte	W01
	.byte	BEND	, c_v
	.byte	W06
	.byte		N05	, As3
	.byte	W05
	.byte		N03	, Cn4, v096
	.byte	W06
	.byte	BEND	, c_v-32
	.byte	W01
	.byte		c_v
	.byte		N05	, Cn4, v088
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			Cn4
	.byte	W11
	.byte	BEND	, c_v-32
	.byte	W01
	.byte		N17	, Fn4
	.byte	W01
	.byte	BEND	, c_v
	.byte	W16
	.byte	PEND
	.byte	MOD	, 6
	.byte		N30	, Ds4
	.byte	W36
	.byte		N06	, As3
	.byte	W07
	.byte		N48	, Cn4
	.byte	W23
	.byte	MOD	, 12
	.byte	W30
	.byte	VOL	, v046
	.byte	W24
	.byte	BEND	, c_v-32
	.byte		N06	, An3
	.byte	W01
	.byte	BEND	, c_v
	.byte	W06
	.byte		N05	, As3
	.byte	W05
	.byte		N03	, Cn4, v096
	.byte	W06
	.byte	BEND	, c_v-32
	.byte	W01
	.byte		c_v
	.byte		N05	, Cn4, v088
	.byte	W12
	.byte			As3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte		N18	, Fn3
	.byte	W17
	.byte	BEND	, c_v-32
	.byte		N18	, Gn3
	.byte	W03
	.byte	BEND	, c_v
	.byte	W16
	.byte		N72	, Ds3
	.byte	W23
	.byte	MOD	, 4
	.byte	W24
	.byte		8
	.byte	W30
	.byte	PATT	
		.word	mus_wave_ride_4_1
	.byte	MOD	, 7
	.byte		N30	, Ds4, v088
	.byte	W36
	.byte		N06	, As3
	.byte	W07
	.byte		N44	, Cn4
	.byte	W52
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PAN	, c_v
	.byte		N18	, Fn4, v060
	.byte	W18
	.byte		N04	
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte		N24	, Ds4
	.byte	W24
	.byte		N12	, As3
	.byte	W12
	.byte		N18	, Gn3
	.byte	W18
mus_wave_ride_4_2:
	.byte		N18	, Dn4, v060
	.byte	W18
	.byte		N04	, As3
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte		N12	, Cs4
	.byte	W12
	.byte		N03	
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N04	, Ds4
	.byte	W12
	.byte		N18	
	.byte	W18
	.byte	PEND
	.byte			Fn4
	.byte	W18
	.byte		N04	
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte		N24	, Ds4
	.byte	W24
	.byte		N12	, As3
	.byte	W12
	.byte		N18	, Gn3
	.byte	W18
	.byte	PATT	
		.word	mus_wave_ride_4_2
	.byte	GOTO	
		.word	mus_wave_ride_4_3
	.byte	W96
	.byte	FINE

	@********************** Track  5 **********************@

	.global mus_wave_ride_5
mus_wave_ride_5:	@ 0x08D4EB66
	.byte	KEYSH	, 0
	.byte	VOICE	, 39
	.byte	VOL	, v055
	.byte	PAN	, c_v
	.byte	BEND	, c_v
	.byte		N02	, Dn3, v080
	.byte	W02
	.byte			Ds3, v092
	.byte	W02
	.byte			En3, v100
	.byte	W02
mus_wave_ride_5_1:
	.byte		N18	, Fn3, v120
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W78
	.byte	VOICE	, 24
	.byte	VOL	, v036
	.byte	PAN	, c_v-20
	.byte	BEND	, c_v
	.byte	W06
	.byte	LFODL	, 24
	.byte	LFOS	, 28
	.byte	W06
	.byte	MOD	, 1
	.byte	W06
	.byte	W24
	.byte	BEND	, c_v-32
	.byte		N06	, Fn3, v088
	.byte	W01
	.byte	BEND	, c_v
	.byte	W06
	.byte		N05	, Gn3
	.byte	W05
	.byte		N03	, An3, v096
	.byte	W06
	.byte	BEND	, c_v-32
	.byte	W01
	.byte		c_v
	.byte		N05	, An3, v088
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte		N18	, Cn3
	.byte	W17
	.byte	BEND	, c_v-32
	.byte		N18	, Ds3
	.byte	W03
	.byte	BEND	, c_v
	.byte	W16
	.byte		N72	, As2
	.byte	W23
	.byte	MOD	, 4
	.byte	W24
	.byte		8
	.byte	W30
	.byte		1
	.byte	W24
	.byte	BEND	, c_v-32
	.byte		N06	, Fn3
	.byte	W01
	.byte	BEND	, c_v
	.byte	W06
	.byte		N05	, Gn3
	.byte	W05
	.byte		N03	, An3, v096
	.byte	W06
	.byte	BEND	, c_v-32
	.byte	W01
	.byte		c_v
	.byte		N05	, An3, v088
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte			An3
	.byte	W11
	.byte	BEND	, c_v-32
	.byte	W01
	.byte		N17	, Cn4
	.byte	W01
	.byte	BEND	, c_v
	.byte	W16
	.byte	MOD	, 7
	.byte		N30	, As3
	.byte	W36
	.byte		N06	, Fn3
	.byte	W07
	.byte		N44	, Gn3
	.byte	W44
	.byte	W03
	.byte	VOICE	, 11
	.byte	PAN	, c_v
	.byte	VOL	, v087
	.byte	LFODL	, 23
	.byte	LFOS	, 21
	.byte		N03	, Ds3, v060
	.byte	W03
	.byte			En3, v068
	.byte	W03
	.byte	MOD	, 4
	.byte		N18	, Fn3, v072
	.byte	W18
	.byte			Dn3, v080
	.byte	W18
	.byte			As2, v072
	.byte	W18
	.byte	BEND	, c_v-32
	.byte		N18	, Fn2, v080
	.byte	W03
	.byte	BEND	, c_v
	.byte	W15
	.byte		N12	, As2, v072
	.byte	W12
	.byte		N06	, Fn2
	.byte	W06
	.byte		N03	, Gn2, v060
	.byte	W03
	.byte			Gs2, v068
	.byte	W03
	.byte		N06	, An2, v072
	.byte	W06
	.byte			An2, v080
	.byte	W06
	.byte			As2, v072
	.byte	W06
	.byte			As2, v080
	.byte	W06
	.byte		N04	, Cn3, v072
	.byte	W06
	.byte	BEND	, c_v-32
	.byte		N12	, Gs2, v080
	.byte	W03
	.byte	BEND	, c_v
	.byte	W03
	.byte		c_v-32
	.byte	W06
	.byte		c_v
	.byte		N44	, Fn2, v072
	.byte	W12
	.byte	MOD	, 7
	.byte	W12
	.byte		10
	.byte	W12
	.byte		14
	.byte	W12
	.byte	BEND	, c_v-32
	.byte		N12	, Dn2, v080
	.byte	W06
	.byte	BEND	, c_v
	.byte	W06
	.byte		N06	, Fn2, v072
	.byte	W06
	.byte		N12	, Gn2
	.byte	W12
	.byte	BEND	, c_v
	.byte		N06	, Gs2, v080
	.byte	W03
	.byte	BEND	, c_v-32
	.byte	W03
	.byte		c_v
	.byte		N06	, Fn2, v072
	.byte	W06
	.byte			Gn2, v080
	.byte	W06
	.byte		N12	, Fn2, v072
	.byte	W12
	.byte	BEND	, c_v-32
	.byte		N12	, Dn3, v080
	.byte	W06
	.byte	BEND	, c_v
	.byte	W06
	.byte		N06	, Fn3, v072
	.byte	W12
	.byte		N12	, Gn3
	.byte	W12
	.byte	BEND	, c_v-32
	.byte		N12	, En3
	.byte	W06
	.byte	BEND	, c_v
	.byte	W06
	.byte		N04	, En3, v080
	.byte	W06
	.byte		N03	, En3, v072
	.byte	W06
	.byte			En3, v080
	.byte	W06
	.byte		N04	, Fn3, v072
	.byte	W06
	.byte		N10	, Fs3, v080
	.byte	W12
	.byte		N12	, Gn3, v072
	.byte	W12
	.byte		N04	, Gn3, v080
	.byte	W06
	.byte			Gn3, v072
	.byte	W06
	.byte		N24	, Cn3, v080
	.byte	W30
	.byte	MOD	, 2
	.byte	PAN	, c_v-20
	.byte		N18	, An2, v052
	.byte	W18
	.byte		N04	
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte		N24	, Gn2
	.byte	W24
	.byte		N12	, Ds2
	.byte	W12
	.byte		N18	, As1
	.byte	W18
	.byte			Fn2
	.byte	W18
	.byte		N04	, Dn2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N03	
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N04	, Gn2
	.byte	W12
	.byte		N18	
	.byte	W18
	.byte			An2
	.byte	W18
	.byte		N04	
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte		N24	, Gn2
	.byte	W24
	.byte		N12	, Ds2
	.byte	W12
	.byte		N18	, As1
	.byte	W18
	.byte			Fn2
	.byte	W18
	.byte		N04	, Dn2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N03	
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N04	, Gn2
	.byte	W12
	.byte		N15	
	.byte	W12
	.byte	VOICE	, 39
	.byte	VOL	, v064
	.byte	PAN	, c_v
	.byte	BEND	, c_v
	.byte	W06
	.byte	GOTO	
		.word	mus_wave_ride_5_1
	.byte	W96
	.byte	FINE

	@********************** Track  6 **********************@

	.global mus_wave_ride_6
mus_wave_ride_6:	@ 0x08D4ED07
	.byte	VOL	, v117
	.byte	KEYSH	, 0
	.byte	W06
mus_wave_ride_6_4:
	.byte		N18	, Cs1, v052
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
mus_wave_ride_6_1:
	.byte	W12
	.byte		N12	, Dn3, v052
	.byte	W12
	.byte			Dn3, v032
	.byte	W12
	.byte			Dn3, v052
	.byte	W12
	.byte			Dn3, v032
	.byte	W12
	.byte			Dn3, v052
	.byte	W12
	.byte			Dn3, v032
	.byte	W12
	.byte			Dn3, v052
	.byte	W12
	.byte	PEND
mus_wave_ride_6_2:
	.byte		N12	, Dn3, v032
	.byte	W12
	.byte			Dn3, v052
	.byte	W12
	.byte			Dn3, v032
	.byte	W12
	.byte			Dn3, v052
	.byte	W12
	.byte			Dn3, v032
	.byte	W12
	.byte			Dn3, v052
	.byte	W12
	.byte			Dn3, v032
	.byte	W12
	.byte			Dn3, v052
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	mus_wave_ride_6_1
	.byte	PATT	
		.word	mus_wave_ride_6_2
mus_wave_ride_6_3:
	.byte	W60
	.byte		N12	, Dn3, v052
	.byte	W12
	.byte			Dn3, v032
	.byte	W12
	.byte			Dn3, v052
	.byte	W12
	.byte	PEND
	.byte	W96
	.byte	PATT	
		.word	mus_wave_ride_6_3
	.byte	W96
	.byte	GOTO	
		.word	mus_wave_ride_6_4
	.byte	W96
	.byte	FINE

	.align 2
	.global mus_wave_ride
mus_wave_ride:	@ 0x08D4ED70
	.byte	6		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	mus_wave_ride_1		@ track
	.word	mus_wave_ride_2		@ track
	.word	mus_wave_ride_3		@ track
	.word	mus_wave_ride_4		@ track
	.word	mus_wave_ride_5		@ track
	.word	mus_wave_ride_6		@ track
