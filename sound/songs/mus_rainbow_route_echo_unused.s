	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global mus_rainbow_route_echo_unused_1
mus_rainbow_route_echo_unused_1:	@ 0x08D51E80
	.byte	KEYSH	, 0
	.byte	TEMPO	, 72
	.byte	VOICE	, 67
mus_rainbow_route_echo_unused_1_4:
	.byte	VOL	, v070
	.byte	PAN	, c_v
	.byte	BEND	, c_v
	.byte		N06	, Bn1, v072
	.byte	W12
	.byte			Bn1, v028
	.byte	W06
	.byte			Bn1, v040
	.byte	W06
	.byte			Bn1, v076
	.byte	W12
	.byte			Bn1, v028
	.byte	W06
	.byte			Bn1, v040
	.byte	W06
	.byte			Bn1, v072
	.byte	W12
	.byte		N04	, Bn1, v028
	.byte	W04
	.byte			Bn1, v048
	.byte	W04
	.byte			Bn1, v028
	.byte	W04
	.byte		N06	, Bn1, v076
	.byte	W06
	.byte			Bn1, v028
	.byte	W06
	.byte			Bn1, v040
	.byte	W06
	.byte			Bn1, v056
	.byte	W06
mus_rainbow_route_echo_unused_1_1:
	.byte		N06	, Bn1, v072
	.byte	W12
	.byte			Bn1, v032
	.byte	W06
	.byte			Bn1, v040
	.byte	W06
	.byte			Bn1, v076
	.byte	W12
	.byte			Bn1, v032
	.byte	W06
	.byte			Bn1, v040
	.byte	W06
	.byte			Bn1, v072
	.byte	W12
	.byte		N04	, Bn1, v032
	.byte	W04
	.byte			Bn1, v052
	.byte	W04
	.byte			Bn1, v032
	.byte	W04
	.byte		N06	, Bn1, v076
	.byte	W06
	.byte			Bn1, v032
	.byte	W06
	.byte			Bn1, v040
	.byte	W06
	.byte			Bn1, v068
	.byte	W06
	.byte	PEND
mus_rainbow_route_echo_unused_1_2:
	.byte		N06	, Bn1, v072
	.byte	W12
	.byte			Bn1, v028
	.byte	W06
	.byte			Bn1, v040
	.byte	W06
	.byte			Bn1, v076
	.byte	W12
	.byte			Bn1, v028
	.byte	W06
	.byte			Bn1, v040
	.byte	W06
	.byte			Bn1, v072
	.byte	W12
	.byte		N04	, Bn1, v028
	.byte	W04
	.byte			Bn1, v048
	.byte	W04
	.byte			Bn1, v028
	.byte	W04
	.byte		N06	, Bn1, v076
	.byte	W06
	.byte			Bn1, v028
	.byte	W06
	.byte			Bn1, v040
	.byte	W06
	.byte			Bn1, v056
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_1_1
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_1_2
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_1_1
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_1_2
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_1_1
mus_rainbow_route_echo_unused_1_3:
	.byte		N48	, Cs1, v040
	.byte		N06	, Bn1, v072
	.byte	W12
	.byte			Bn1, v028
	.byte	W06
	.byte			Bn1, v040
	.byte	W06
	.byte			Bn1, v076
	.byte	W12
	.byte			Bn1, v028
	.byte	W06
	.byte			Bn1, v040
	.byte	W06
	.byte			Bn1, v072
	.byte	W12
	.byte		N04	, Bn1, v028
	.byte	W04
	.byte			Bn1, v048
	.byte	W04
	.byte			Bn1, v028
	.byte	W04
	.byte		N06	, Bn1, v076
	.byte	W06
	.byte			Bn1, v028
	.byte	W06
	.byte			Bn1, v040
	.byte	W06
	.byte			Bn1, v056
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_1_1
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_1_2
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_1_1
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_1_2
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_1_1
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_1_2
	.byte		N42	, Cs1, v032
	.byte		N06	, Bn1, v072
	.byte	W12
	.byte			Bn1, v032
	.byte	W06
	.byte			Bn1, v040
	.byte	W06
	.byte			Bn1, v076
	.byte	W12
	.byte			Bn1, v032
	.byte	W06
	.byte			Bn1, v040
	.byte	W06
	.byte		N42	, Cs1, v032
	.byte		N06	, Bn1, v072
	.byte	W12
	.byte		N04	, Bn1, v032
	.byte	W04
	.byte			Bn1, v052
	.byte	W04
	.byte			Bn1, v032
	.byte	W04
	.byte		N06	, Bn1, v076
	.byte	W06
	.byte			Bn1, v032
	.byte	W06
	.byte			Bn1, v040
	.byte	W06
	.byte			Bn1, v068
	.byte	W06
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_1_3
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_1_1
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_1_3
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_1_1
	.byte	GOTO	
		.word	mus_rainbow_route_echo_unused_1_4
	.byte	W96
	.byte	FINE

	@********************** Track  2 **********************@

	.global mus_rainbow_route_echo_unused_2
mus_rainbow_route_echo_unused_2:	@ 0x08D51FCC
	.byte	KEYSH	, 0
	.byte	VOICE	, 1
mus_rainbow_route_echo_unused_2_6:
	.byte	VOL	, v045
	.byte	PAN	, c_v
	.byte	BEND	, c_v
	.byte		N12	, Fs3, v112
	.byte	W24
	.byte			Fs3, v120
	.byte	W24
	.byte			Fs3, v112
	.byte	W24
	.byte			Fs3, v120
	.byte	W24
mus_rainbow_route_echo_unused_2_2:
	.byte		N12	, Cs3, v112
	.byte	W24
	.byte			Cs3, v120
	.byte	W24
	.byte			Cs3, v112
	.byte	W24
	.byte			Cs3, v120
	.byte	W24
	.byte	PEND
mus_rainbow_route_echo_unused_2_3:
	.byte		N12	, Fn3, v112
	.byte	W24
	.byte			Fn3, v120
	.byte	W24
	.byte			Gs3, v112
	.byte	W24
	.byte			Gs3, v120
	.byte	W24
	.byte	PEND
mus_rainbow_route_echo_unused_2_1:
	.byte		N12	, Fs3, v112
	.byte	W24
	.byte			Fs3, v120
	.byte	W24
	.byte			Fs3, v112
	.byte	W24
	.byte			Fs3, v120
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_2_1
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_2_2
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_2_3
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_2_1
mus_rainbow_route_echo_unused_2_4:
	.byte		N12	, Bn2, v112
	.byte	W24
	.byte			Bn2, v120
	.byte	W24
	.byte			Cs3, v112
	.byte	W24
	.byte			Cs3, v120
	.byte	W24
	.byte	PEND
	.byte			As3, v092
	.byte	W24
	.byte			As3, v100
	.byte	W24
	.byte			Ds3, v112
	.byte	W24
	.byte			Ds3, v120
	.byte	W24
	.byte			Gs3, v112
	.byte	W24
	.byte			Gs3, v120
	.byte	W24
	.byte			As3, v092
	.byte	W24
	.byte			As3, v100
	.byte	W24
	.byte			Ds3, v112
	.byte	W24
	.byte			Ds3, v120
	.byte	W24
	.byte			Ds3, v112
	.byte	W24
	.byte			Ds3, v120
	.byte	W24
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_2_4
	.byte		N12	, Dn3, v112
	.byte	W24
	.byte			Fn3, v120
	.byte	W24
	.byte			Ds3, v112
	.byte	W24
	.byte			As3, v100
	.byte	W24
	.byte			Bn2, v112
	.byte	W24
	.byte			Bn2, v120
	.byte	W24
	.byte			Bn2, v112
	.byte	W24
	.byte			Bn2, v120
	.byte	W24
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_2_2
mus_rainbow_route_echo_unused_2_5:
	.byte		N12	, Fs3, v120
	.byte	W24
	.byte			Fs3, v100
	.byte	W24
	.byte			Fs3, v120
	.byte	W24
	.byte			Fs3, v100
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_2_5
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_2_5
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_2_5
	.byte	GOTO	
		.word	mus_rainbow_route_echo_unused_2_6
	.byte	W96
	.byte	FINE

	@********************** Track  3 **********************@

	.global mus_rainbow_route_echo_unused_3
mus_rainbow_route_echo_unused_3:	@ 0x08D5209A
	.byte	KEYSH	, 0
	.byte	VOICE	, 55
mus_rainbow_route_echo_unused_3_2:
	.byte	VOL	, v075
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte	BEND	, c_v-32
	.byte		N32	, As2, v068
	.byte	W03
	.byte	BEND	, c_v
	.byte	W32
	.byte	W01
	.byte		N04	, Cs2, v060
	.byte	W06
	.byte			Fs2, v076
	.byte	W06
	.byte		N06	, As2, v068
	.byte	W12
	.byte		N04	, Cs3, v080
	.byte	W12
	.byte		N16	, Bn2, v060
	.byte	W18
	.byte		N04	, As2, v080
	.byte	W06
	.byte		N44	, Bn2, v072
	.byte	W48
	.byte		N36	, Gs2
	.byte	W48
	.byte	BEND	, c_v
	.byte		N32	
	.byte	W36
	.byte		N04	, Cs2, v060
	.byte	W06
	.byte			Fn2, v076
	.byte	W06
	.byte		N06	, Gs2, v068
	.byte	W12
	.byte			Bn2, v076
	.byte	W12
	.byte		N16	, Cs3, v068
	.byte	W18
	.byte		N04	, Bn2, v080
	.byte	W06
	.byte		N78	, As2, v072
	.byte	W96
	.byte	BEND	, c_v-32
	.byte		N32	, As2, v060
	.byte	W01
	.byte	BEND	, c_v
	.byte	W32
	.byte	W03
	.byte		N04	, Cs2
	.byte	W06
	.byte			Fs2, v076
	.byte	W06
	.byte		N06	, As2, v068
	.byte	W12
	.byte		N04	, Cs3, v080
	.byte	W12
	.byte		N16	, Bn2, v060
	.byte	W18
	.byte		N04	, As2, v076
	.byte	W06
	.byte		N44	, Bn2, v060
	.byte	W48
	.byte		N36	, Gs2, v072
	.byte	W48
	.byte	BEND	, c_v-32
	.byte		N22	, Bn2, v080
	.byte	W03
	.byte	BEND	, c_v
	.byte	W21
	.byte		N22	, Gs2, v060
	.byte	W24
	.byte		N18	, Fn2, v080
	.byte	W18
	.byte		N04	, Fs2, v060
	.byte	W06
	.byte			Gs2, v072
	.byte	W12
	.byte			As2, v080
	.byte	W12
	.byte		N78	, Fs2, v072
	.byte	W92
	.byte	W01
	.byte	LFODL	, 24
	.byte	W03
	.byte	VOICE	, 12
	.byte	VOL	, v060
	.byte	PAN	, c_v+20
	.byte	W01
	.byte	MOD	, 7
	.byte	LFODL	, 22
	.byte	LFOS	, 24
	.byte	W56
	.byte	W03
	.byte		N04	, Gs2, v060
	.byte	W06
	.byte			Gs2, v052
	.byte	W06
	.byte			Cs3, v060
	.byte	W06
	.byte			Gs2, v052
	.byte	W06
	.byte			Cs3, v060
	.byte	W06
	.byte			Fn3, v072
	.byte	W06
	.byte		N48	, Gs3, v052
	.byte	W48
	.byte		N24	, Fs3, v072
	.byte	W24
	.byte			Cs3, v052
	.byte	W24
	.byte	W96
	.byte			Fs2, v060
	.byte	W24
	.byte		N22	, Gs2, v052
	.byte	W24
	.byte		N24	, As2, v072
	.byte	W24
	.byte		N21	, Fs2, v052
	.byte	W24
	.byte	W96
	.byte		N24	, Dn3, v060
	.byte	W24
	.byte			Fn3, v052
	.byte	W24
	.byte		N09	, Fs3, v072
	.byte	W48
	.byte	W24
	.byte		N06	, Bn2, v060
	.byte	W08
	.byte			Fs2, v056
	.byte	W08
	.byte			Bn2, v068
	.byte	W08
	.byte			Ds3
	.byte	W08
	.byte			Bn2, v056
	.byte	W08
	.byte			Ds3, v068
	.byte	W08
	.byte			Fs3, v072
	.byte	W16
	.byte			Fs3, v076
	.byte	W08
	.byte		N36	, Fn3, v056
	.byte	W36
	.byte		N06	, Fs3, v076
	.byte	W06
	.byte			Gn3, v048
	.byte	W06
	.byte		N24	, Gs3, v068
	.byte	W24
	.byte			Cs3, v048
	.byte	W24
mus_rainbow_route_echo_unused_3_1:
	.byte		N06	, As2, v072
	.byte	W10
	.byte		N04	, As2, v036
	.byte	W06
	.byte		N02	, As2, v072
	.byte	W04
	.byte			As2, v052
	.byte	W04
	.byte		N06	, As2, v072
	.byte	W08
	.byte			As2, v052
	.byte	W08
	.byte			As2, v072
	.byte	W08
	.byte		N04	, Bn2
	.byte	W08
	.byte			Bn2, v052
	.byte	W08
	.byte			Bn2, v060
	.byte	W08
	.byte		N06	, Cs3, v072
	.byte	W09
	.byte		N04	, Cs3, v036
	.byte	W07
	.byte		N05	, Gs2, v068
	.byte	W08
	.byte	PEND
	.byte		N08	, As2, v072
	.byte	W16
	.byte		N02	, As2, v052
	.byte	W04
	.byte			As2, v060
	.byte	W04
	.byte		N06	, As2, v072
	.byte	W08
	.byte			As2, v040
	.byte	W08
	.byte			As2, v060
	.byte	W08
	.byte			Bn2, v072
	.byte	W08
	.byte			Bn2, v052
	.byte	W08
	.byte			Bn2, v072
	.byte	W08
	.byte		N21	, Gs2, v060
	.byte	W24
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_3_1
	.byte		N08	, As2, v072
	.byte	W16
	.byte		N02	, As2, v052
	.byte	W04
	.byte			As2, v060
	.byte	W04
	.byte		N06	, As2, v072
	.byte	W08
	.byte			As2, v040
	.byte	W08
	.byte			As2, v060
	.byte	W08
	.byte			Bn2, v072
	.byte	W08
	.byte			Bn2, v052
	.byte	W08
	.byte			Bn2, v072
	.byte	W08
	.byte		N21	, Gs2, v060
	.byte	W21
	.byte	VOL	, v075
	.byte	PAN	, c_v
	.byte	W01
	.byte	VOICE	, 55
	.byte	W02
	.byte	GOTO	
		.word	mus_rainbow_route_echo_unused_3_2
	.byte	W96
	.byte	FINE

	@********************** Track  4 **********************@

	.global mus_rainbow_route_echo_unused_4
mus_rainbow_route_echo_unused_4:	@ 0x08D52230
	.byte	KEYSH	, 0
mus_rainbow_route_echo_unused_4_1:
	.byte	W24
	.byte	VOICE	, 7
	.byte	VOL	, v070
	.byte	PAN	, c_v
	.byte	BEND	, c_v
	.byte	W03
	.byte	MOD	, 3
	.byte	LFOS	, 24
	.byte	LFODL	, 26
	.byte	W68
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	BEND	, c_v-32
	.byte		N21	, Ds4, v060
	.byte	W01
	.byte	BEND	, c_v-16
	.byte	W02
	.byte		c_v
	.byte	W21
	.byte		N21	, Fs4, v052
	.byte	W24
	.byte	BEND	, c_v-31
	.byte		N16	, Fn4, v060
	.byte	W03
	.byte	BEND	, c_v
	.byte	W15
	.byte		N04	, Ds4, v052
	.byte	W06
	.byte		N06	, Cs4, v060
	.byte	W12
	.byte			Bn3, v052
	.byte	W12
	.byte	BEND	, c_v-16
	.byte		N44	, Cs4, v048
	.byte	W03
	.byte	BEND	, c_v
	.byte	W24
	.byte	W03
	.byte	MOD	, 7
	.byte	W18
	.byte		4
	.byte		N44	, As3, v036
	.byte	W30
	.byte	MOD	, 7
	.byte	W18
	.byte		4
	.byte		N22	, Gs3, v056
	.byte	W24
	.byte		N21	, Bn3, v048
	.byte	W24
	.byte	BEND	, c_v-16
	.byte		N16	, As3, v056
	.byte	W03
	.byte	BEND	, c_v
	.byte	W15
	.byte		N04	, Gs3, v048
	.byte	W06
	.byte		N06	, Fs3, v056
	.byte	W12
	.byte			Fn3, v048
	.byte	W12
	.byte		N90	, Fs3, v040
	.byte	W54
	.byte	MOD	, 7
	.byte	W36
	.byte	W03
	.byte		5
	.byte	W03
	.byte	BEND	, c_v-16
	.byte		N22	, Ds4, v060
	.byte	W03
	.byte	BEND	, c_v
	.byte	W21
	.byte		N21	, Fs4, v052
	.byte	W24
	.byte		N16	, Fn4, v060
	.byte	W18
	.byte		N04	, Ds4, v052
	.byte	W06
	.byte		N06	, Cs4, v060
	.byte	W12
	.byte			Bn3, v052
	.byte	W12
	.byte		N24	, As3, v060
	.byte	W24
	.byte			Dn4, v052
	.byte	W24
	.byte		N12	, Ds4, v060
	.byte	W24
	.byte		N18	, As3, v056
	.byte	W18
	.byte		N06	, Cs4, v060
	.byte	W06
	.byte	BEND	, c_v-16
	.byte		N22	, Bn3
	.byte	W03
	.byte	BEND	, c_v
	.byte	W21
	.byte		N22	, As3, v052
	.byte	W24
	.byte			Gs3, v060
	.byte	W24
	.byte		N09	, Fs3, v052
	.byte	W18
	.byte		N04	, As3, v060
	.byte	W06
	.byte	BEND	, c_v-32
	.byte		N44	, Gs3, v056
	.byte	W03
	.byte	BEND	, c_v
	.byte	W21
	.byte	MOD	, 5
	.byte	W24
	.byte		4
	.byte		N44	, Cs4, v052
	.byte	W24
	.byte	MOD	, 5
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	mus_rainbow_route_echo_unused_4_1
	.byte	W96
	.byte	FINE

	@********************** Track  5 **********************@

	.global mus_rainbow_route_echo_unused_5
mus_rainbow_route_echo_unused_5:	@ 0x08D5230F
	.byte	KEYSH	, 0
mus_rainbow_route_echo_unused_5_3:
	.byte	W06
	.byte	VOICE	, 55
	.byte	VOL	, v000
	.byte	PAN	, c_v-30
	.byte	BEND	, c_v+4
	.byte	W03
	.byte	MOD	, 0
	.byte	W03
	.byte		N32	, As2, v040
	.byte	W36
	.byte		N06	, Cs2
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			As2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte		N16	, Bn2
	.byte	W12
	.byte	W06
	.byte		N04	, As2
	.byte	W06
	.byte		N44	, Bn2
	.byte	W48
	.byte		N40	, Gs2
	.byte	W36
	.byte	W12
	.byte		N32	
	.byte	W36
	.byte		N06	, Cs2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Gs2
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte		N16	, Cs3
	.byte	W12
	.byte	W06
	.byte		N04	, Bn2
	.byte	W06
	.byte		N78	, As2
	.byte	W84
	.byte	PAN	, c_v+30
	.byte	VOL	, v060
	.byte	BEND	, c_v-32
	.byte		N32	, Fs2, v052
	.byte	W03
	.byte	BEND	, c_v
	.byte	W32
	.byte	W01
	.byte		N06	, As1, v072
	.byte	W06
	.byte			Cs2, v052
	.byte	W06
	.byte			Fs2, v060
	.byte	W12
	.byte			As2, v072
	.byte	W12
	.byte		N16	, Gs2, v052
	.byte	W18
	.byte		N04	, Fs2, v072
	.byte	W06
	.byte	BEND	, c_v-32
	.byte		N44	, Gs2, v060
	.byte	W01
	.byte	BEND	, c_v
	.byte	W44
	.byte	W03
	.byte		N36	, Fn2
	.byte	W48
	.byte	BEND	, c_v-32
	.byte		N22	, Gs2, v052
	.byte	W01
	.byte	BEND	, c_v
	.byte	W23
	.byte		N22	, Fn2, v040
	.byte	W24
	.byte		N18	, Cs2
	.byte	W18
	.byte		N04	, Ds2, v052
	.byte	W06
	.byte		N06	, Fn2, v040
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte		N78	, Cs2, v032
	.byte	W60
	.byte	VOL	, v055
	.byte	W06
	.byte		v040
	.byte	W06
	.byte		v030
	.byte	W24
	.byte	VOICE	, 12
	.byte	PAN	, c_v-20
	.byte	VOL	, v055
	.byte	BEND	, c_v
	.byte	W01
	.byte	LFODL	, 21
	.byte	LFOS	, 26
	.byte	MOD	, 6
	.byte	W56
	.byte	W03
	.byte		N04	, Fn2, v060
	.byte	W06
	.byte			Fn2, v052
	.byte	W06
	.byte			Gs2, v060
	.byte	W06
	.byte			Fn2, v052
	.byte	W06
	.byte			Gs2, v060
	.byte	W06
	.byte			Cs3, v072
	.byte	W06
	.byte		N48	, Fn3, v052
	.byte	W48
	.byte		N24	, Ds3, v072
	.byte	W24
	.byte			As2, v052
	.byte	W24
	.byte	W96
	.byte			Ds2, v060
	.byte	W24
	.byte		N22	, Fn2, v052
	.byte	W24
	.byte		N24	, Fs2, v072
	.byte	W24
	.byte		N21	, Ds2, v052
	.byte	W24
	.byte	W96
	.byte		N24	, Fn2, v060
	.byte	W24
	.byte			As2, v052
	.byte	W24
	.byte		N09	, As2, v072
	.byte	W48
	.byte	VOL	, v035
	.byte	BEND	, c_v+8
	.byte	W30
	.byte	W01
	.byte		N06	, Bn2, v048
	.byte	W08
	.byte			Fs2, v040
	.byte	W08
	.byte			Bn2, v048
	.byte	W08
	.byte			Ds3, v052
	.byte	W08
	.byte			Bn2, v048
	.byte	W08
	.byte			Ds3, v052
	.byte	W08
	.byte			Fs3, v048
	.byte	W16
	.byte			Fs3, v040
	.byte	W01
	.byte	W90
	.byte	VOL	, v055
	.byte	BEND	, c_v
	.byte	W06
mus_rainbow_route_echo_unused_5_1:
	.byte		N07	, Cs2, v072
	.byte	W10
	.byte		N04	, Cs2, v036
	.byte	W06
	.byte		N02	, Cs2, v072
	.byte	W04
	.byte			Cs2, v052
	.byte	W04
	.byte		N06	, Cs2, v072
	.byte	W08
	.byte			Cs2, v052
	.byte	W08
	.byte			Cs2, v072
	.byte	W08
	.byte		N04	, Fs2, v060
	.byte	W08
	.byte			Fs2, v052
	.byte	W08
	.byte			Fs2, v060
	.byte	W08
	.byte		N06	, Gs2, v072
	.byte	W09
	.byte			Gs2, v036
	.byte	W07
	.byte		N05	, Fn2, v068
	.byte	W08
	.byte	PEND
mus_rainbow_route_echo_unused_5_2:
	.byte		N08	, Fs2, v072
	.byte	W16
	.byte		N02	, Fs2, v052
	.byte	W04
	.byte			Fs2, v060
	.byte	W04
	.byte		N06	, Cs2, v072
	.byte	W08
	.byte			Cs2, v040
	.byte	W08
	.byte			Cs2, v060
	.byte	W08
	.byte			Ds2, v072
	.byte	W08
	.byte			Ds2, v052
	.byte	W08
	.byte			Ds2, v072
	.byte	W08
	.byte		N21	, Cs2, v060
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_5_1
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_5_2
	.byte	GOTO	
		.word	mus_rainbow_route_echo_unused_5_3
	.byte	W96
	.byte	FINE

	@********************** Track  6 **********************@

	.global mus_rainbow_route_echo_unused_6
mus_rainbow_route_echo_unused_6:	@ 0x08D52476
	.byte	KEYSH	, 0
mus_rainbow_route_echo_unused_6_1:
	.byte	W06
	.byte	VOICE	, 108
	.byte	VOL	, v070
	.byte	PAN	, c_v+10
	.byte	BEND	, c_v
	.byte	W90
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PAN	, c_v-30
	.byte	W60
	.byte		N06	, Cs3, v060
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Fs3, v068
	.byte	W06
	.byte			Gs3, v072
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Cs4, v068
	.byte	W06
	.byte	VOL	, v030
	.byte	PAN	, c_v-30
	.byte		N48	, Bn3, v048
	.byte	W01
	.byte	VOL	, v033
	.byte	W02
	.byte		v036
	.byte	W01
	.byte		v039
	.byte	W02
	.byte		v042
	.byte	W01
	.byte		v045
	.byte	W02
	.byte		v048
	.byte	W01
	.byte		v051
	.byte	W02
	.byte		v054
	.byte	W01
	.byte		v058
	.byte	W02
	.byte		v061
	.byte	W01
	.byte		v064
	.byte	W02
	.byte		v067
	.byte	W01
	.byte		v070
	.byte	W28
	.byte	W01
	.byte		N18	, Cs4, v036
	.byte	W18
	.byte		N06	, Bn3
	.byte	W06
	.byte		N12	, As3
	.byte	W12
	.byte		N06	, Gs3
	.byte	W12
	.byte		N48	, As3
	.byte	W48
	.byte			Fs3, v048
	.byte	W48
	.byte			Ds3, v036
	.byte	W48
	.byte		N24	, Fn3, v048
	.byte	W24
	.byte		N12	, As3, v056
	.byte	W12
	.byte		N06	, Gs3, v048
	.byte	W12
	.byte		N48	, Fs3, v036
	.byte	W48
	.byte			As3
	.byte	W48
	.byte			Bn3
	.byte	W48
	.byte		N18	, Cs4
	.byte	W18
	.byte		N06	, Bn3
	.byte	W06
	.byte		N12	, As3
	.byte	W12
	.byte		N06	, Gs3
	.byte	W12
	.byte		N24	, Fn3
	.byte	W24
	.byte			As3
	.byte	W24
	.byte		N12	, Ds4
	.byte	W24
	.byte		N18	, Fs3
	.byte	W18
	.byte		N06	, As3
	.byte	W06
	.byte		N24	, Bn3
	.byte	W24
	.byte			Fs3
	.byte	W24
	.byte			Ds3
	.byte	W24
	.byte		N18	, Bn2
	.byte	W18
	.byte		N06	, Fs3
	.byte	W06
	.byte		N48	, Fn3
	.byte	W48
	.byte			Gs3
	.byte	W48
	.byte	W96
	.byte	PAN	, c_v
	.byte	W72
	.byte		N04	, Cs3, v072
	.byte	W04
	.byte			Ds3
	.byte	W04
	.byte			Fn3, v076
	.byte	W04
	.byte			Fs3, v080
	.byte	W04
	.byte			Gs3, v092
	.byte	W04
	.byte			Bn3, v080
	.byte	W04
	.byte		N48	, As3, v056
	.byte	W48
	.byte		N24	, Bn3, v040
	.byte	W24
	.byte			Cs4, v036
	.byte	W24
	.byte		N48	, As3
	.byte	W48
	.byte		N44	, Bn3, v032
	.byte	W06
	.byte	VOL	, v070
	.byte	W06
	.byte		v065
	.byte	W06
	.byte		v055
	.byte	W06
	.byte		v045
	.byte	W06
	.byte		v035
	.byte	W06
	.byte		v025
	.byte	W06
	.byte		v015
	.byte	W06
	.byte	GOTO	
		.word	mus_rainbow_route_echo_unused_6_1
	.byte	W96
	.byte	FINE

	@********************** Track  7 **********************@

	.global mus_rainbow_route_echo_unused_7
mus_rainbow_route_echo_unused_7:	@ 0x08D52554
	.byte	KEYSH	, 0
mus_rainbow_route_echo_unused_7_1:
	.byte	W03
	.byte	VOICE	, 108
	.byte	VOL	, v065
	.byte	PAN	, c_v+40
	.byte	BEND	, c_v
	.byte	W92
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PAN	, c_v+20
	.byte	W60
	.byte		N06	, Fs2, v060
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Bn2, v068
	.byte	W06
	.byte			Cs3, v072
	.byte	W06
	.byte			En3, v060
	.byte	W06
	.byte		N48	, Fs3, v040
	.byte	W18
	.byte	VOL	, v055
	.byte	W06
	.byte		v045
	.byte	W06
	.byte		v035
	.byte	W06
	.byte		v025
	.byte	W06
	.byte		v015
	.byte	W54
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
		.word	mus_rainbow_route_echo_unused_7_1
	.byte	W96
	.byte	FINE

	@********************** Track  8 **********************@

	.global mus_rainbow_route_echo_unused_8
mus_rainbow_route_echo_unused_8:	@ 0x08D5259C
	.byte	KEYSH	, 0
mus_rainbow_route_echo_unused_8_1:
	.byte	W03
	.byte	VOICE	, 105
	.byte	VOL	, v100
	.byte	PAN	, c_v-20
	.byte	W03
	.byte	BEND	, c_v
	.byte	W03
	.byte	MOD	, 1
	.byte	W03
	.byte	PAN	, c_v-40
	.byte		N06	, Cs3, v060
	.byte	W06
	.byte	PAN	, c_v+40
	.byte		N06	, Fs3, v072
	.byte	W06
	.byte	PAN	, c_v-40
	.byte		N09	, As3, v060
	.byte	W12
	.byte	PAN	, c_v+40
	.byte		N09	, Cs4, v052
	.byte	W12
	.byte	PAN	, c_v-40
	.byte		N12	, Fs4, v060
	.byte	W12
	.byte	PAN	, c_v+40
	.byte		N12	, Fs4, v052
	.byte	W24
	.byte	PAN	, c_v-40
	.byte		N12	, Fs4, v016
	.byte	W12
	.byte	W96
	.byte	W12
	.byte	PAN	, c_v-40
	.byte		N06	, Cs3, v060
	.byte	W06
	.byte	PAN	, c_v+40
	.byte		N06	, Fn3, v072
	.byte	W06
	.byte	PAN	, c_v-40
	.byte		N09	, Gs3, v060
	.byte	W12
	.byte	PAN	, c_v+40
	.byte		N09	, Cs4, v052
	.byte	W12
	.byte	PAN	, c_v-40
	.byte		N12	, Fn4, v060
	.byte	W12
	.byte	PAN	, c_v+40
	.byte		N12	, Gs4, v052
	.byte	W24
	.byte	PAN	, c_v-40
	.byte		N12	, Gs4, v016
	.byte	W12
	.byte	VOICE	, 24
	.byte	VOL	, v070
	.byte	PAN	, c_v+30
	.byte	BEND	, c_v
	.byte	W06
	.byte	MOD	, 4
	.byte	LFOS	, 28
	.byte	LFODL	, 20
	.byte	W90
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	VOICE	, 7
	.byte	VOL	, v045
	.byte	PAN	, c_v+40
	.byte	W03
	.byte	BEND	, c_v+6
	.byte	W03
	.byte	MOD	, 3
	.byte	LFODL	, 20
	.byte	LFOS	, 27
	.byte	W06
	.byte		N22	, Ds4, v040
	.byte	W24
	.byte			Fs4
	.byte	W24
	.byte		N18	, Fn4
	.byte	W18
	.byte		N04	, Ds4
	.byte	W06
	.byte		N06	, Cs4
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte		N44	, Cs4
	.byte	W48
	.byte			As3
	.byte	W36
	.byte	W12
	.byte		N22	, Gs3
	.byte	W24
	.byte			Bn3
	.byte	W24
	.byte		N18	, As3
	.byte	W18
	.byte		N04	, Gs3
	.byte	W06
	.byte		N06	, Fs3
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte		N90	, Fs3
	.byte	W84
	.byte	W12
	.byte		N22	, Ds4
	.byte	W24
	.byte			Fs4
	.byte	W24
	.byte		N18	, Fn4
	.byte	W18
	.byte		N04	, Ds4
	.byte	W06
	.byte		N06	, Cs4
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte		N22	, As3
	.byte	W24
	.byte		N24	, Dn4
	.byte	W24
	.byte		N09	, Ds4
	.byte	W24
	.byte		N18	, As3
	.byte	W12
	.byte	W06
	.byte		N04	, Cs4
	.byte	W06
	.byte		N22	, Bn3
	.byte	W24
	.byte			As3
	.byte	W24
	.byte			Gs3
	.byte	W24
	.byte		N12	, Fs3
	.byte	W12
	.byte	W06
	.byte		N04	, As3
	.byte	W06
	.byte		N44	, Gs3
	.byte	W48
	.byte		N32	, Cs4
	.byte	W36
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	mus_rainbow_route_echo_unused_8_1
	.byte	W96
	.byte	FINE

	@********************** Track  9 **********************@

	.global mus_rainbow_route_echo_unused_9
mus_rainbow_route_echo_unused_9:	@ 0x08D52691
	.byte	KEYSH	, 0
mus_rainbow_route_echo_unused_9_2:
	.byte	W09
	.byte	VOICE	, 55
	.byte	VOL	, v030
	.byte	PAN	, c_v-30
	.byte	MOD	, 0
	.byte	BEND	, c_v-32
	.byte		N32	, As2, v068
	.byte	W03
	.byte	BEND	, c_v+6
	.byte	W32
	.byte	W01
	.byte		N04	, Cs2, v060
	.byte	W06
	.byte			Fs2, v076
	.byte	W06
	.byte		N06	, As2, v068
	.byte	W12
	.byte		N04	, Cs3, v080
	.byte	W12
	.byte		N16	, Bn2, v060
	.byte	W15
	.byte	W03
	.byte		N04	, As2, v080
	.byte	W06
	.byte		N44	, Bn2, v060
	.byte	W48
	.byte		N36	, Gs2, v072
	.byte	W36
	.byte	W03
	.byte	W09
	.byte	BEND	, c_v+6
	.byte		N32	
	.byte	W36
	.byte		N04	, Cs2, v060
	.byte	W06
	.byte			Fn2, v076
	.byte	W06
	.byte		N06	, Gs2, v068
	.byte	W12
	.byte			Bn2, v076
	.byte	W12
	.byte		N16	, Cs3, v060
	.byte	W15
	.byte	W03
	.byte		N04	, Bn2, v080
	.byte	W06
	.byte		N78	, As2, v072
	.byte	W84
	.byte	W03
	.byte	W09
	.byte	BEND	, c_v-32
	.byte		N32	, As2, v060
	.byte	W01
	.byte	BEND	, c_v+6
	.byte	W32
	.byte	W03
	.byte		N04	, Cs2
	.byte	W06
	.byte			Fs2, v076
	.byte	W06
	.byte		N06	, As2, v068
	.byte	W12
	.byte		N04	, Cs3, v080
	.byte	W12
	.byte		N16	, Bn2, v060
	.byte	W15
	.byte	W03
	.byte		N04	, As2, v076
	.byte	W06
	.byte		N44	, Bn2, v060
	.byte	W48
	.byte		N36	, Gs2, v072
	.byte	W36
	.byte	W03
	.byte	W09
	.byte	BEND	, c_v-32
	.byte		N22	, Bn2, v080
	.byte	W03
	.byte	BEND	, c_v+6
	.byte	W21
	.byte		N22	, Gs2, v060
	.byte	W24
	.byte		N18	, Fn2, v080
	.byte	W18
	.byte		N04	, Fs2, v060
	.byte	W06
	.byte			Gs2, v072
	.byte	W12
	.byte			As2, v080
	.byte	W03
	.byte	W09
	.byte		N78	, Fs2, v072
	.byte	W84
	.byte	W03
	.byte	W06
	.byte	LFODL	, 24
	.byte	W03
	.byte	VOICE	, 12
	.byte	VOL	, v030
	.byte	PAN	, c_v-30
	.byte	W01
	.byte	MOD	, 7
	.byte	LFODL	, 22
	.byte	LFOS	, 24
	.byte	W56
	.byte	W03
	.byte		N04	, Gs2, v060
	.byte	W06
	.byte			Gs2, v052
	.byte	W06
	.byte			Cs3, v060
	.byte	W06
	.byte			Gs2, v052
	.byte	W06
	.byte			Cs3, v060
	.byte	W03
	.byte	W03
	.byte			Fn3, v072
	.byte	W06
	.byte		N48	, Gs3, v052
	.byte	W48
	.byte		N24	, Fs3, v072
	.byte	W24
	.byte			Cs3, v052
	.byte	W15
	.byte	W96
	.byte	W09
	.byte			Fs2, v060
	.byte	W24
	.byte		N22	, Gs2, v052
	.byte	W24
	.byte		N24	, As2, v072
	.byte	W24
	.byte		N21	, Fs2, v052
	.byte	W15
	.byte	W96
	.byte	W09
	.byte		N24	, Dn3, v060
	.byte	W24
	.byte			Fn3, v052
	.byte	W24
	.byte		N09	, Fs3, v072
	.byte	W36
	.byte	W03
	.byte	W32
	.byte	W01
	.byte		N06	, Bn2, v060
	.byte	W08
	.byte			Fs2, v056
	.byte	W08
	.byte			Bn2, v068
	.byte	W08
	.byte			Ds3
	.byte	W08
	.byte			Bn2, v056
	.byte	W08
	.byte			Ds3, v068
	.byte	W08
	.byte			Fs3, v072
	.byte	W15
	.byte	W01
	.byte			Fs3, v076
	.byte	W08
	.byte		N36	, Fn3, v056
	.byte	W36
	.byte		N06	, Fs3, v076
	.byte	W06
	.byte			Gn3, v048
	.byte	W06
	.byte		N24	, Gs3, v068
	.byte	W24
	.byte			Cs3, v048
	.byte	W15
mus_rainbow_route_echo_unused_9_1:
	.byte	W09
	.byte		N06	, As2, v072
	.byte	W10
	.byte		N04	, As2, v036
	.byte	W06
	.byte		N02	, As2, v072
	.byte	W04
	.byte			As2, v052
	.byte	W04
	.byte		N06	, As2, v072
	.byte	W08
	.byte			As2, v052
	.byte	W08
	.byte			As2, v072
	.byte	W08
	.byte		N04	, Bn2
	.byte	W08
	.byte			Bn2, v052
	.byte	W08
	.byte			Bn2, v060
	.byte	W08
	.byte		N06	, Cs3, v072
	.byte	W09
	.byte		N04	, Cs3, v036
	.byte	W06
	.byte	PEND
	.byte	W01
	.byte		N05	, Gs2, v068
	.byte	W08
	.byte		N08	, As2, v072
	.byte	W16
	.byte		N02	, As2, v052
	.byte	W04
	.byte			As2, v060
	.byte	W04
	.byte		N06	, As2, v072
	.byte	W08
	.byte			As2, v040
	.byte	W08
	.byte			As2, v060
	.byte	W08
	.byte			Bn2, v072
	.byte	W08
	.byte			Bn2, v052
	.byte	W08
	.byte			Bn2, v072
	.byte	W08
	.byte		N21	, Gs2, v060
	.byte	W15
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_9_1
	.byte	W01
	.byte		N05	, Gs2, v068
	.byte	W08
	.byte		N08	, As2, v072
	.byte	W16
	.byte		N02	, As2, v052
	.byte	W04
	.byte			As2, v060
	.byte	W04
	.byte		N06	, As2, v072
	.byte	W08
	.byte			As2, v040
	.byte	W08
	.byte			As2, v060
	.byte	W08
	.byte			Bn2, v072
	.byte	W08
	.byte			Bn2, v052
	.byte	W08
	.byte			Bn2, v072
	.byte	W08
	.byte		N12	, Gs2, v060
	.byte	W12
	.byte	PAN	, c_v-30
	.byte	VOL	, v030
	.byte	W01
	.byte	VOICE	, 55
	.byte	W02
	.byte	GOTO	
		.word	mus_rainbow_route_echo_unused_9_2
	.byte	W96
	.byte	FINE

	@********************** Track  10 **********************@

	.global mus_rainbow_route_echo_unused_10
mus_rainbow_route_echo_unused_10:	@ 0x08D52841
	.byte	KEYSH	, 0
mus_rainbow_route_echo_unused_10_1:
	.byte	W06
	.byte	VOICE	, 108
	.byte	VOL	, v070
	.byte	PAN	, c_v-30
	.byte	BEND	, c_v
	.byte	W90
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PAN	, c_v
	.byte	W60
	.byte		N06	, Fs3, v052
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			As3, v056
	.byte	W06
	.byte			Bn3, v060
	.byte	W06
	.byte			Cs4, v056
	.byte	W06
	.byte			En4, v052
	.byte	W06
	.byte	PAN	, c_v+50
	.byte		N48	, Fs3, v020
	.byte	W48
	.byte		N18	, Gs3, v028
	.byte	W18
	.byte		N06	, Gs3, v016
	.byte	W06
	.byte		N12	, Fs3, v020
	.byte	W12
	.byte		N06	, Fn3
	.byte	W12
	.byte		N48	, Fn3, v016
	.byte	W48
	.byte			Ds3, v032
	.byte	W48
	.byte			Bn2
	.byte	W48
	.byte		N24	, Dn3, v040
	.byte	W24
	.byte		N12	, Fn3, v052
	.byte	W12
	.byte		N06	, Fn3, v040
	.byte	W12
	.byte		N48	, Ds3, v020
	.byte	W48
	.byte			Fs3, v032
	.byte	W48
	.byte			Fs3, v020
	.byte	W48
	.byte		N18	, Gs3, v032
	.byte	W18
	.byte		N06	
	.byte	W06
	.byte		N12	, Fs3
	.byte	W12
	.byte		N06	, Fn3
	.byte	W12
	.byte		N24	, Dn3
	.byte	W24
	.byte			Fn3
	.byte	W24
	.byte		N12	, As3
	.byte	W24
	.byte		N18	, Ds3
	.byte	W18
	.byte		N06	, Fs3
	.byte	W06
	.byte		N24	
	.byte	W24
	.byte			Ds3
	.byte	W24
	.byte			Bn2
	.byte	W24
	.byte		N18	, Fs2
	.byte	W18
	.byte		N06	, Ds3
	.byte	W06
	.byte		N48	, Cs3
	.byte	W48
	.byte			Fn3
	.byte	W48
	.byte	W96
	.byte	PAN	, c_v
	.byte	W72
	.byte		N04	, Gs2, v072
	.byte	W04
	.byte			Bn2
	.byte	W04
	.byte			Cs3, v076
	.byte	W04
	.byte			Ds3, v080
	.byte	W04
	.byte			Fn3, v092
	.byte	W04
	.byte			Gs3, v080
	.byte	W04
	.byte		N48	, Fs3, v056
	.byte	W48
	.byte		N24	, Gs3, v040
	.byte	W24
	.byte			Gs3, v036
	.byte	W24
	.byte		N48	, Fs3
	.byte	W48
	.byte		N44	, Gs3, v032
	.byte	W06
	.byte	VOL	, v070
	.byte	W06
	.byte		v065
	.byte	W06
	.byte		v055
	.byte	W06
	.byte		v045
	.byte	W06
	.byte		v035
	.byte	W06
	.byte		v025
	.byte	W06
	.byte		v015
	.byte	W06
	.byte	GOTO	
		.word	mus_rainbow_route_echo_unused_10_1
	.byte	W96
	.byte	FINE

	@********************** Track  11 **********************@

	.global mus_rainbow_route_echo_unused_11
mus_rainbow_route_echo_unused_11:	@ 0x08D52905
	.byte	VOL	, v127
	.byte	KEYSH	, 0
mus_rainbow_route_echo_unused_11_2:
	.byte		N12	, Gs1, v052
	.byte	W24
	.byte			Gs1, v040
	.byte	W24
	.byte			Gs1, v052
	.byte	W24
	.byte			Gs1, v040
	.byte	W24
mus_rainbow_route_echo_unused_11_1:
	.byte		N12	, Gs1, v052
	.byte	W24
	.byte			Gs1, v040
	.byte	W24
	.byte			Gs1, v052
	.byte	W24
	.byte			Gs1, v040
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_11_1
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_11_1
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_11_1
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_11_1
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_11_1
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_11_1
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_11_1
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_11_1
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_11_1
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_11_1
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_11_1
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_11_1
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_11_1
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_11_1
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_11_1
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_11_1
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_11_1
	.byte	PATT	
		.word	mus_rainbow_route_echo_unused_11_1
	.byte	GOTO	
		.word	mus_rainbow_route_echo_unused_11_2
	.byte	W96
	.byte	FINE

	.align 2
	.global mus_rainbow_route_echo_unused
mus_rainbow_route_echo_unused:	@ 0x08D52988
	.byte	11		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup000

	.word	mus_rainbow_route_echo_unused_1		@ track
	.word	mus_rainbow_route_echo_unused_2		@ track
	.word	mus_rainbow_route_echo_unused_3		@ track
	.word	mus_rainbow_route_echo_unused_4		@ track
	.word	mus_rainbow_route_echo_unused_5		@ track
	.word	mus_rainbow_route_echo_unused_6		@ track
	.word	mus_rainbow_route_echo_unused_7		@ track
	.word	mus_rainbow_route_echo_unused_8		@ track
	.word	mus_rainbow_route_echo_unused_9		@ track
	.word	mus_rainbow_route_echo_unused_10		@ track
	.word	mus_rainbow_route_echo_unused_11		@ track
