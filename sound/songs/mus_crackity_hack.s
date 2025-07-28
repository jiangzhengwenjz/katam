	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global mus_crackity_hack_1
mus_crackity_hack_1:	@ 0x08D4DE44
	.byte	KEYSH	, 0
	.byte	TEMPO	, 72
	.byte	VOICE	, 67
	.byte	VOL	, v101
	.byte	PAN	, c_v
	.byte	BEND	, c_v
	.byte	W24
mus_crackity_hack_1_1:
	.byte		N12	, Fs0, v108
	.byte		N12	, Gn1, v116
	.byte	W12
	.byte			Gs0, v092
	.byte	W12
	.byte			Fs0, v108
	.byte		N12	, Gn1, v116
	.byte	W12
	.byte			Gs0, v092
	.byte	W12
	.byte			Fs0, v108
	.byte		N12	, Gn1, v116
	.byte	W12
	.byte			Gs0, v092
	.byte	W12
	.byte			Fs0, v108
	.byte		N12	, Gn1, v116
	.byte	W12
	.byte			Gs0, v092
	.byte	W12
	.byte	PEND
	.byte			Fs0, v108
	.byte		N12	, Gn1, v116
	.byte	W12
	.byte			Gs0, v092
	.byte	W12
	.byte			Fs0, v108
	.byte		N12	, Gn1, v116
	.byte	W12
	.byte			Gs0, v092
	.byte	W12
	.byte			Fs0, v108
	.byte		N12	, Gn1, v116
	.byte	W12
	.byte			Gs0, v092
	.byte	W12
	.byte			Fs0, v108
	.byte		N12	, Gn1, v116
	.byte	W12
	.byte		N06	, An0, v112
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte	PATT	
		.word	mus_crackity_hack_1_1
	.byte		N06	, Cn1, v112
	.byte		N12	, Gn1, v116
	.byte	W06
	.byte			Cn1, v100
	.byte	W12
	.byte		N06	, Bn0
	.byte	W06
	.byte		N12	, Bn0, v112
	.byte		N12	, Gn1, v116
	.byte	W12
	.byte		N06	, An0, v112
	.byte	W06
	.byte		N12	
	.byte	W06
	.byte			Gn1, v116
	.byte	W06
	.byte		N06	, Gn0, v112
	.byte	W06
	.byte		N12	, Gn0, v120
	.byte	W12
	.byte		N06	, Cn3, v040
	.byte	W06
	.byte			Cn3, v056
	.byte	W06
	.byte		N12	, Cn3, v072
	.byte	W12
mus_crackity_hack_1_3:
	.byte		N06	, Gs1, v100
	.byte	W06
	.byte			Fs0, v092
	.byte	W06
	.byte		N12	, As0
	.byte		N06	, Gn1, v100
	.byte	W12
	.byte		N12	, En0, v056
	.byte	W06
	.byte		N06	, Fs0, v092
	.byte	W06
	.byte		N12	, As0
	.byte		N06	, Gn1, v100
	.byte	W06
	.byte			En0, v040
	.byte	W06
	.byte			Fs0, v092
	.byte		N06	, Gs1, v112
	.byte	W06
	.byte			En0, v040
	.byte		N06	, Fs0, v092
	.byte	W06
	.byte		N12	, As0
	.byte	W06
	.byte		N06	, Gn1, v100
	.byte	W06
	.byte		N12	, En0, v056
	.byte	W06
	.byte		N06	, Fs0, v092
	.byte	W06
	.byte		N12	, As0
	.byte		N06	, Gs1, v100
	.byte	W06
	.byte			En0, v040
	.byte	W06
	.byte			Gs1, v112
	.byte	W06
	.byte			Fs0, v092
	.byte	W06
	.byte		N12	, As0
	.byte		N06	, Gn1, v100
	.byte	W12
	.byte		N12	, En0, v056
	.byte	W06
	.byte		N06	, Fs0, v092
	.byte	W06
	.byte		N12	, As0
	.byte		N06	, Gn1, v100
	.byte	W06
	.byte			En0, v040
	.byte	W06
	.byte			Fs0, v092
	.byte		N06	, Gs1, v112
	.byte	W06
	.byte			En0, v040
	.byte		N06	, Fs0, v092
	.byte	W06
	.byte		N12	, As0
	.byte	W06
	.byte		N06	, Gn1, v100
	.byte	W06
	.byte		N12	, En0, v056
	.byte	W06
	.byte		N06	, Fs0, v092
	.byte	W06
	.byte		N12	, As0
	.byte		N06	, Gs1, v100
	.byte	W06
	.byte			En0, v040
	.byte	W06
	.byte			Gs1, v100
	.byte	W06
	.byte			Fs0, v092
	.byte	W06
	.byte		N12	, As0
	.byte		N06	, Gn1, v100
	.byte	W12
	.byte		N12	, En0, v056
	.byte	W06
	.byte		N06	, Fs0, v092
	.byte	W06
	.byte		N12	, As0
	.byte		N06	, Gn1, v100
	.byte	W06
	.byte			En0, v040
	.byte	W06
	.byte			Fs0, v092
	.byte		N06	, Gs1, v112
	.byte	W06
	.byte			En0, v040
	.byte		N06	, Fs0, v092
	.byte	W06
	.byte		N12	, As0
	.byte	W06
	.byte		N06	, Gn1, v100
	.byte	W06
	.byte		N12	, En0, v056
	.byte	W06
	.byte		N06	, Fs0, v092
	.byte	W06
	.byte		N12	, As0
	.byte		N06	, Gs1, v100
	.byte	W06
	.byte			En0, v040
	.byte	W06
	.byte			Gs1, v100
	.byte	W06
	.byte			Fs0, v092
	.byte	W06
	.byte		N12	, As0
	.byte		N06	, Gn1
	.byte	W12
	.byte		N12	, En0, v056
	.byte	W06
	.byte		N06	, Fs0, v092
	.byte	W06
	.byte		N12	, As0
	.byte		N06	, Gn1, v100
	.byte	W06
	.byte			En0, v040
	.byte	W06
	.byte			Fs0, v092
	.byte		N06	, Gs1, v112
	.byte	W06
	.byte			En0, v040
	.byte		N06	, Fs0, v092
	.byte	W06
	.byte		N12	, As0
	.byte	W06
	.byte		N06	, Gn1, v100
	.byte	W06
	.byte		N12	, En0, v056
	.byte	W06
	.byte		N06	, Fs0, v092
	.byte	W06
	.byte		N12	, As0
	.byte		N06	, Gs1, v100
	.byte	W06
	.byte			En0, v040
	.byte	W06
mus_crackity_hack_1_2:
	.byte		N06	, Gs1, v112
	.byte	W06
	.byte			Fs0, v092
	.byte	W06
	.byte			Gn1, v100
	.byte		N12	, Dn3, v032
	.byte	W12
	.byte			En0, v056
	.byte	W06
	.byte		N06	, Fs0, v092
	.byte	W06
	.byte			Gn1, v100
	.byte		N12	, Dn3, v040
	.byte	W06
	.byte		N06	, En0
	.byte	W06
	.byte			Fs0, v092
	.byte		N06	, Gs1, v112
	.byte	W06
	.byte			En0, v040
	.byte		N06	, Fs0, v092
	.byte	W06
	.byte		N12	, Dn3, v032
	.byte	W06
	.byte		N06	, Gn1, v100
	.byte	W06
	.byte		N12	, En0, v056
	.byte	W06
	.byte		N06	, Fs0, v092
	.byte	W06
	.byte			Gs1, v112
	.byte		N12	, Dn3, v040
	.byte	W06
	.byte		N06	, En0
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	mus_crackity_hack_1_2
	.byte	PATT	
		.word	mus_crackity_hack_1_2
	.byte		N06	, En0, v072
	.byte	W06
	.byte			En0, v060
	.byte	W06
	.byte		N04	, Gn1, v100
	.byte	W06
	.byte			Gn1, v112
	.byte	W06
	.byte			Gn1, v100
	.byte	W06
	.byte			Gn1, v112
	.byte	W06
	.byte		N06	, En0, v072
	.byte	W06
	.byte			En0, v060
	.byte	W06
	.byte		N04	, Gn1, v100
	.byte	W06
	.byte			Gn1, v112
	.byte	W06
	.byte			Gn1, v100
	.byte	W06
	.byte			Gn1, v112
	.byte	W06
	.byte		N06	, En0, v052
	.byte	W06
	.byte			En0, v060
	.byte	W06
	.byte			En0, v072
	.byte	W06
	.byte			En0, v080
	.byte	W06
	.byte	GOTO	
		.word	mus_crackity_hack_1_3
	.byte	W96
	.byte	FINE

	@********************** Track  2 **********************@

	.global mus_crackity_hack_2
mus_crackity_hack_2:	@ 0x08D4E060
	.byte	KEYSH	, 0
	.byte	VOICE	, 68
	.byte	MOD	, 1
	.byte	VOL	, v082
	.byte	PAN	, c_v
	.byte	W24
mus_crackity_hack_2_1:
	.byte		N06	, An2, v120
	.byte	W12
	.byte			An2, v112
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			An2, v120
	.byte	W12
	.byte			An2, v112
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			An2, v120
	.byte	W12
	.byte			An2, v112
	.byte	W12
	.byte	PEND
mus_crackity_hack_2_2:
	.byte		N06	, An2, v120
	.byte	W12
	.byte			An2, v112
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			An2, v120
	.byte	W12
	.byte			An2, v112
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			An2, v120
	.byte	W12
	.byte			Gn2
	.byte	W06
	.byte		N05	, Gs2
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	mus_crackity_hack_2_1
	.byte	PATT	
		.word	mus_crackity_hack_2_2
mus_crackity_hack_2_4:
	.byte		N06	, An2, v120
	.byte	W18
	.byte			Gn2
	.byte	W18
	.byte		N18	, An2
	.byte	W18
	.byte		N15	, En2
	.byte	W18
	.byte		N12	, Gn2
	.byte	W12
	.byte		N06	, En2
	.byte	W06
	.byte			Gn2
	.byte	W06
mus_crackity_hack_2_3:
	.byte		N06	, An2, v120
	.byte	W18
	.byte			Gn2
	.byte	W18
	.byte		N18	, An2
	.byte	W18
	.byte		N15	, En2
	.byte	W18
	.byte		N12	, Gn2
	.byte	W12
	.byte		N06	, En2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte	PEND
	.byte			An2
	.byte	W18
	.byte			Gn2, v112
	.byte	W18
	.byte		N18	, An2, v120
	.byte	W18
	.byte		N15	, En2
	.byte	W18
	.byte		N12	, Gn2
	.byte	W12
	.byte		N06	, En2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte	PATT	
		.word	mus_crackity_hack_2_3
	.byte		N06	, En3, v100
	.byte	W18
	.byte			En3, v120
	.byte	W18
	.byte			En3, v100
	.byte	W18
	.byte		N03	, En4, v080
	.byte	W06
	.byte			En3, v092
	.byte	W06
	.byte			En3, v100
	.byte	W18
	.byte		N06	, Dn3, v120
	.byte	W06
	.byte			Ds3, v100
	.byte	W06
	.byte			Fn3, v092
	.byte	W18
	.byte			Fn3, v100
	.byte	W18
	.byte			Fn3, v092
	.byte	W18
	.byte		N03	, Fn4, v072
	.byte	W06
	.byte			Fn3, v092
	.byte	W06
	.byte			Fn3, v100
	.byte	W18
	.byte		N06	, Ds3, v120
	.byte	W06
	.byte			En3, v100
	.byte	W06
	.byte			Gn3, v080
	.byte	W18
	.byte			Gn3, v092
	.byte	W18
	.byte			Gn3, v080
	.byte	W18
	.byte		N03	, Gn4, v072
	.byte	W06
	.byte			Gn3, v080
	.byte	W06
	.byte		N03	
	.byte	W18
	.byte		N06	, Fn3, v120
	.byte	W06
	.byte			Gn3, v100
	.byte	W06
	.byte			En3, v092
	.byte	W06
	.byte		N04	, En3, v100
	.byte	W06
	.byte		N03	, En2, v092
	.byte	W06
	.byte		N01	, En2, v100
	.byte	W06
	.byte		N03	, En2, v092
	.byte	W06
	.byte		N01	, En2, v100
	.byte	W06
	.byte		N06	, En3, v092
	.byte	W06
	.byte		N04	, En3, v100
	.byte	W06
	.byte		N03	, En2, v092
	.byte	W06
	.byte		N01	, En2, v100
	.byte	W06
	.byte		N03	, En2, v092
	.byte	W06
	.byte		N01	, En2, v100
	.byte	W06
	.byte		N06	, En3, v092
	.byte	W06
	.byte		N04	, En3, v100
	.byte	W06
	.byte		N06	, En2, v120
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte	GOTO	
		.word	mus_crackity_hack_2_4
	.byte	W96
	.byte	FINE

	@********************** Track  3 **********************@

	.global mus_crackity_hack_3
mus_crackity_hack_3:	@ 0x08D4E17B
	.byte	KEYSH	, 0
	.byte	VOICE	, 23
	.byte	MOD	, 4
	.byte	LFOS	, 24
	.byte	LFODL	, 23
	.byte	VOL	, v069
	.byte	PAN	, c_v
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W84
	.byte		N06	, Gn2, v060
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte	VOL	, v073
mus_crackity_hack_3_1:
	.byte	BEND	, c_v-32
	.byte		N36	, An2, v052
	.byte	W03
	.byte	BEND	, c_v
	.byte	W32
	.byte	W01
	.byte		N48	, Cn3, v056
	.byte	W48
	.byte		N06	, Gn2
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte		N32	, An2
	.byte	W36
	.byte		N24	, Dn3
	.byte	W24
	.byte		N32	, Cn3, v052
	.byte	W36
	.byte	BEND	, c_v-32
	.byte		N36	, En3, v056
	.byte	W03
	.byte	BEND	, c_v
	.byte	W32
	.byte	W01
	.byte		N10	, Cn3, v048
	.byte	W12
	.byte		N12	, Dn3, v052
	.byte	W12
	.byte			En3, v056
	.byte	W12
	.byte			Dn3, v044
	.byte	W12
	.byte		N10	, Cn3, v048
	.byte	W12
	.byte	BEND	, c_v-32
	.byte		N36	, Bn2, v052
	.byte	W03
	.byte	BEND	, c_v
	.byte	W32
	.byte	W01
	.byte		N24	, Cn3, v060
	.byte	W24
	.byte		N32	, Dn3, v064
	.byte	W36
	.byte	BEND	, c_v-32
	.byte		N36	, En3, v056
	.byte	W03
	.byte	BEND	, c_v
	.byte	W32
	.byte	W01
	.byte		N10	, Bn2, v048
	.byte	W12
	.byte		N12	, Cn3, v056
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			En3, v060
	.byte	W12
	.byte		N10	, Bn2, v052
	.byte	W12
	.byte		N36	, Cn3, v056
	.byte	W36
	.byte		N24	, Dn3, v060
	.byte	W24
	.byte		N32	, En3
	.byte	W36
	.byte	BEND	, c_v-32
	.byte		N16	, Gn3
	.byte	W03
	.byte	BEND	, c_v
	.byte	W13
	.byte		N16	, Fn3, v052
	.byte	W16
	.byte		N15	, En3, v056
	.byte	W16
	.byte		N16	, Dn3
	.byte	W16
	.byte			Cn3, v048
	.byte	W16
	.byte		N15	, Dn3, v056
	.byte	W16
	.byte		N72	, Bn2, v052
	.byte	W84
	.byte		N06	, Gn2
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte	GOTO	
		.word	mus_crackity_hack_3_1
	.byte	W96
	.byte	FINE

	@********************** Track  4 **********************@

	.global mus_crackity_hack_4
mus_crackity_hack_4:	@ 0x08D4E231
	.byte	KEYSH	, 0
	.byte	VOICE	, 111
	.byte	MOD	, 2
	.byte	LFOS	, 31
	.byte	LFODL	, 10
	.byte	VOL	, v073
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	VOICE	, 111
	.byte	VOL	, v073
mus_crackity_hack_4_2:
	.byte	PAN	, c_v-30
	.byte		N01	, An3, v060
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte	PAN	, c_v+30
	.byte		N01	, An4
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte	PAN	, c_v-30
	.byte		N01	, An3
	.byte	W12
	.byte			An4
	.byte	W06
	.byte	PAN	, c_v+30
	.byte		N01	
	.byte	W06
	.byte			An3
	.byte	W12
	.byte	PAN	, c_v-30
	.byte		N01	, An4
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte	PAN	, c_v+30
	.byte		N01	, An3
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte	PAN	, c_v-30
	.byte		N01	, An4
	.byte	W06
	.byte		N01	
	.byte	W06
mus_crackity_hack_4_1:
	.byte	PAN	, c_v-30
	.byte		N01	, Gn3, v060
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte	PAN	, c_v+30
	.byte		N01	, Gn4
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte	PAN	, c_v-30
	.byte		N01	, Gn3
	.byte	W12
	.byte			Gn4
	.byte	W06
	.byte	PAN	, c_v+30
	.byte		N01	
	.byte	W06
	.byte			Gn3
	.byte	W12
	.byte	PAN	, c_v-30
	.byte		N01	, Gn4
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte	PAN	, c_v+30
	.byte		N01	, Gn3
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte	PAN	, c_v-30
	.byte		N01	, Gn4
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte	PEND
	.byte	PAN	, c_v-30
	.byte		N01	, Fn3
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte	PAN	, c_v+30
	.byte		N01	, Fn4
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte	PAN	, c_v-30
	.byte		N01	, Fn3
	.byte	W12
	.byte			Fn4
	.byte	W06
	.byte	PAN	, c_v+30
	.byte		N01	
	.byte	W06
	.byte			Fn3
	.byte	W12
	.byte	PAN	, c_v-30
	.byte		N01	, Fn4
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte	PAN	, c_v+30
	.byte		N01	, Fn3
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte	PAN	, c_v-30
	.byte		N01	, Fn4
	.byte	W06
	.byte		N01	
	.byte	W06
	.byte	PATT	
		.word	mus_crackity_hack_4_1
	.byte	VOICE	, 124
	.byte	PAN	, c_v-20
	.byte		N12	, En3, v052
	.byte	W12
	.byte			Bn3
	.byte		N12	, En4
	.byte	W12
	.byte	PAN	, c_v+20
	.byte		N06	, En3
	.byte	W06
	.byte		N12	, Bn3
	.byte		N12	, En4
	.byte	W12
	.byte	PAN	, c_v-20
	.byte		N06	, En3
	.byte	W06
	.byte		N12	, Bn3
	.byte		N12	, En4
	.byte	W12
	.byte	PAN	, c_v+20
	.byte		N06	, En3
	.byte	W06
	.byte		N12	, Bn3
	.byte		N12	, En4
	.byte	W12
	.byte	PAN	, c_v-20
	.byte		N06	, En3
	.byte	W06
	.byte		N12	, Bn3
	.byte		N12	, En4
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte			Cn4
	.byte		N12	, Fn4
	.byte	W12
	.byte	PAN	, c_v+20
	.byte		N06	, Fn3
	.byte	W06
	.byte		N12	, Cn4
	.byte		N12	, Fn4
	.byte	W12
	.byte	PAN	, c_v-20
	.byte		N06	, Fn3
	.byte	W06
	.byte		N12	, Cn4
	.byte		N12	, Fn4
	.byte	W12
	.byte	PAN	, c_v+20
	.byte		N06	, Fn3
	.byte	W06
	.byte		N12	, Cn4
	.byte		N12	, Fn4
	.byte	W12
	.byte	PAN	, c_v-20
	.byte		N06	, Fn3
	.byte	W06
	.byte		N12	, Cn4
	.byte		N12	, Fn4
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Dn4
	.byte		N12	, Gn4
	.byte	W12
	.byte	PAN	, c_v+20
	.byte		N06	, Gn3
	.byte	W06
	.byte		N12	, Dn4
	.byte		N12	, Gn4
	.byte	W12
	.byte	PAN	, c_v-20
	.byte		N06	, Gn3
	.byte	W06
	.byte		N12	, Dn4
	.byte		N12	, Gn4
	.byte	W12
	.byte	PAN	, c_v+20
	.byte		N06	, Gn3
	.byte	W06
	.byte		N12	, Dn4
	.byte		N12	, Gn4
	.byte	W12
	.byte	PAN	, c_v-20
	.byte		N06	, Gn3
	.byte	W06
	.byte		N12	, Dn4
	.byte		N12	, Gn4
	.byte	W12
	.byte	PAN	, c_v-20
	.byte		N06	, Bn3, v060
	.byte		N06	, En4
	.byte	W06
	.byte	PAN	, c_v+20
	.byte		N06	, Bn3
	.byte		N06	, En4
	.byte	W30
	.byte	PAN	, c_v-20
	.byte		N06	, Bn3
	.byte		N06	, En4
	.byte	W06
	.byte	PAN	, c_v+20
	.byte		N06	, Bn3
	.byte		N06	, En4
	.byte	W30
	.byte	PAN	, c_v-20
	.byte		N06	, Bn3
	.byte		N06	, En4
	.byte	W06
	.byte	PAN	, c_v+20
	.byte		N06	, Bn3
	.byte		N06	, En4
	.byte	W12
	.byte	VOICE	, 111
	.byte	W06
	.byte	GOTO	
		.word	mus_crackity_hack_4_2
	.byte	W96
	.byte	FINE

	@********************** Track  5 **********************@

	.global mus_crackity_hack_5
mus_crackity_hack_5:	@ 0x08D4E3A3
	.byte	KEYSH	, 0
	.byte	VOICE	, 39
	.byte	MOD	, 0
	.byte	VOL	, v082
	.byte	PAN	, c_v
	.byte	W12
	.byte		N06	, Gn2, v112
	.byte	W06
	.byte			Gs2, v116
	.byte	W06
mus_crackity_hack_5_1:
	.byte		N12	, An2, v120
	.byte	W12
	.byte			An2, v052
	.byte	W12
	.byte			An2, v032
	.byte	W12
	.byte			An2, v020
	.byte	W60
	.byte	PEND
	.byte	W84
	.byte		N06	, Gn2, v112
	.byte	W06
	.byte			Gs2, v116
	.byte	W06
	.byte	PATT	
		.word	mus_crackity_hack_5_1
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
	.byte	FINE

	.align 2
	.global mus_crackity_hack
mus_crackity_hack:	@ 0x08D4E3DC
	.byte	5		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	mus_crackity_hack_1		@ track
	.word	mus_crackity_hack_2		@ track
	.word	mus_crackity_hack_3		@ track
	.word	mus_crackity_hack_4		@ track
	.word	mus_crackity_hack_5		@ track
