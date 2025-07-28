	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global mus_dark_meta_knight_appears_1
mus_dark_meta_knight_appears_1:	@ 0x08D4D920
	.byte	KEYSH	, 0
	.byte	TEMPO	, 92
	.byte	VOICE	, 67
	.byte	VOL	, v101
	.byte	PAN	, c_v
	.byte	BEND	, c_v
	.byte	W96
	.byte	W48
	.byte	W36
	.byte		N12	, Bn0, v088
	.byte	W12
	.byte			An0, v092
	.byte	W12
	.byte			Gn0, v096
	.byte	W12
	.byte	VOL	, v082
mus_dark_meta_knight_appears_1_3:
	.byte		N12	, Gs1, v112
	.byte		N24	, Cs3, v040
	.byte	W12
	.byte		N12	, Fs0, v100
	.byte	W12
	.byte			Cn2, v092
	.byte	W12
	.byte			Cn3, v052
	.byte	W12
mus_dark_meta_knight_appears_1_1:
	.byte		N12	, Fs0, v112
	.byte	W12
	.byte			Gs0
	.byte	W12
	.byte			Fs0, v100
	.byte		N12	, Gs1, v112
	.byte	W12
	.byte			Fs0, v092
	.byte	W12
	.byte			Cn3, v052
	.byte	W12
	.byte			Cn2, v100
	.byte	W12
	.byte			Gs1, v112
	.byte	W12
	.byte			Fs0
	.byte	W12
	.byte			Cn2, v092
	.byte	W12
	.byte			Cn3, v052
	.byte	W12
	.byte	PEND
mus_dark_meta_knight_appears_1_2:
	.byte		N12	, Fs0, v100
	.byte	W12
	.byte			As0, v112
	.byte	W12
	.byte			Fs0, v100
	.byte		N12	, Gs1, v112
	.byte	W12
	.byte			Cn1, v080
	.byte	W12
	.byte			An0, v088
	.byte	W12
	.byte			Gn0, v092
	.byte	W12
	.byte			Gs1, v112
	.byte		N24	, Cs3, v040
	.byte	W12
	.byte		N12	, Fs0, v100
	.byte	W12
	.byte			Cn2, v092
	.byte	W12
	.byte			Cn3, v052
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	mus_dark_meta_knight_appears_1_1
	.byte	PATT	
		.word	mus_dark_meta_knight_appears_1_2
	.byte	PATT	
		.word	mus_dark_meta_knight_appears_1_1
	.byte	PATT	
		.word	mus_dark_meta_knight_appears_1_2
	.byte	PATT	
		.word	mus_dark_meta_knight_appears_1_1
	.byte		N12	, Fs0, v100
	.byte	W12
	.byte			As0, v112
	.byte	W12
	.byte			Fs0, v100
	.byte		N12	, Gs1, v112
	.byte	W12
	.byte			Cn1, v080
	.byte	W12
	.byte			An0, v088
	.byte	W12
	.byte			Gn0, v092
	.byte	W12
	.byte	GOTO	
		.word	mus_dark_meta_knight_appears_1_3
	.byte	W48
	.byte	W48
	.byte	FINE

	@********************** Track  2 **********************@

	.global mus_dark_meta_knight_appears_2
mus_dark_meta_knight_appears_2:	@ 0x08D4D9CB
	.byte	KEYSH	, 0
	.byte	VOICE	, 68
	.byte	VOL	, v101
	.byte	PAN	, c_v
	.byte		N06	, An2, v020
	.byte	W12
	.byte			An2, v028
	.byte	W12
	.byte			An2, v032
	.byte	W12
	.byte			An2, v036
	.byte	W12
	.byte			An2, v040
	.byte	W12
	.byte			An2, v048
	.byte	W12
	.byte			An2, v052
	.byte	W12
	.byte			An2, v056
	.byte	W12
	.byte			An2, v060
	.byte	W12
	.byte			An2, v068
	.byte	W12
	.byte			An2, v072
	.byte	W12
	.byte			An2, v076
	.byte	W12
	.byte			An2, v080
	.byte	W12
	.byte	BEND	, c_v
	.byte		N24	, An3
	.byte	W12
	.byte	BEND	, c_v-64
	.byte	W12
	.byte		c_v
	.byte		N06	, En3
	.byte	W12
	.byte		N12	, Dn3, v088
	.byte	W12
	.byte			As2, v092
	.byte	W12
mus_dark_meta_knight_appears_2_3:
	.byte	PAN	, c_v
	.byte		N06	, An3, v092
	.byte	W12
	.byte		N24	, An2, v112
	.byte	W24
	.byte			An3, v092
	.byte	W12
mus_dark_meta_knight_appears_2_1:
	.byte	BEND	, c_v-64
	.byte	W12
	.byte		c_v
	.byte		N09	, Ds3, v112
	.byte	W12
	.byte		N12	, As2
	.byte	W12
	.byte			As3, v092
	.byte	W12
	.byte			Gn2, v112
	.byte	W12
	.byte		N09	, Gn3, v092
	.byte	W12
	.byte		N06	, An3
	.byte	W12
	.byte		N24	, An2, v112
	.byte	W24
	.byte			An3, v092
	.byte	W12
	.byte	PEND
mus_dark_meta_knight_appears_2_2:
	.byte	BEND	, c_v-64
	.byte	W12
	.byte		c_v
	.byte		N09	, Ds3, v112
	.byte	W12
	.byte		N12	, As1
	.byte	W12
	.byte			As2, v092
	.byte	W12
	.byte			Gn1, v112
	.byte	W12
	.byte		N09	, Gn2, v092
	.byte	W12
	.byte		N06	, An3
	.byte	W12
	.byte		N24	, An2, v112
	.byte	W24
	.byte			An3, v092
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	mus_dark_meta_knight_appears_2_1
	.byte	PATT	
		.word	mus_dark_meta_knight_appears_2_2
	.byte	PATT	
		.word	mus_dark_meta_knight_appears_2_1
	.byte	PATT	
		.word	mus_dark_meta_knight_appears_2_2
	.byte	PATT	
		.word	mus_dark_meta_knight_appears_2_1
	.byte	BEND	, c_v-64
	.byte	W12
	.byte		c_v
	.byte		N09	, Ds3, v112
	.byte	W12
	.byte		N12	, As1
	.byte	W12
	.byte			As2, v092
	.byte	W12
	.byte			Gn1, v112
	.byte	W12
	.byte		N09	, Gn2, v092
	.byte	W12
	.byte	GOTO	
		.word	mus_dark_meta_knight_appears_2_3
	.byte	W48
	.byte	W48
	.byte	FINE

	@********************** Track  3 **********************@

	.global mus_dark_meta_knight_appears_3
mus_dark_meta_knight_appears_3:	@ 0x08D4DA91
	.byte	KEYSH	, 0
	.byte	VOICE	, 109
	.byte	VOL	, v101
	.byte	PAN	, c_v+10
	.byte	W96
	.byte	W48
	.byte	W72
mus_dark_meta_knight_appears_3_3:
	.byte		N10	, As2, v072
	.byte	W12
	.byte		N22	, As2, v040
	.byte	W24
	.byte			As2, v072
	.byte	W12
mus_dark_meta_knight_appears_3_1:
	.byte	W12
	.byte		N10	, As2, v040
	.byte	W12
	.byte		N22	, Bn2, v100
	.byte	W24
	.byte			Gs2, v080
	.byte	W24
	.byte		N10	, As2, v100
	.byte	W12
	.byte		N22	, As2, v052
	.byte	W24
	.byte			As2, v100
	.byte	W12
	.byte	PEND
mus_dark_meta_knight_appears_3_2:
	.byte	W12
	.byte		N10	, Ds2, v052
	.byte	W12
	.byte		N22	, Bn2, v100
	.byte	W24
	.byte		N10	, Gs2
	.byte	W12
	.byte		N06	, Gs3, v092
	.byte	W06
	.byte			Gs3, v112
	.byte	W06
	.byte		N10	, As2, v072
	.byte	W12
	.byte		N22	, As2, v040
	.byte	W24
	.byte			As2, v072
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	mus_dark_meta_knight_appears_3_1
	.byte	PATT	
		.word	mus_dark_meta_knight_appears_3_2
	.byte	PATT	
		.word	mus_dark_meta_knight_appears_3_1
	.byte	PATT	
		.word	mus_dark_meta_knight_appears_3_2
	.byte	PATT	
		.word	mus_dark_meta_knight_appears_3_1
	.byte	W12
	.byte		N10	, Ds2, v052
	.byte	W12
	.byte		N22	, Bn2, v100
	.byte	W24
	.byte		N10	, Gs2
	.byte	W12
	.byte		N06	, Gs3, v092
	.byte	W06
	.byte			Gs3, v112
	.byte	W06
	.byte	GOTO	
		.word	mus_dark_meta_knight_appears_3_3
	.byte	W48
	.byte	W48
	.byte	FINE

	@********************** Track  4 **********************@

	.global mus_dark_meta_knight_appears_4
mus_dark_meta_knight_appears_4:	@ 0x08D4DB12
	.byte	KEYSH	, 0
	.byte	VOICE	, 114
	.byte	VOL	, v046
	.byte	PAN	, c_v
	.byte	BEND	, c_v
	.byte	W96
	.byte	W48
	.byte	W72
mus_dark_meta_knight_appears_4_1:
	.byte	BEND	, c_v-32
	.byte		N06	, En2, v060
	.byte		N06	, An2
	.byte	W03
	.byte	BEND	, c_v
	.byte	W09
	.byte		N21	, En2
	.byte		N21	, An2
	.byte	W24
	.byte			En2
	.byte		N21	, An2
	.byte	W12
	.byte	W96
	.byte	W24
	.byte	W72
	.byte	BEND	, c_v-32
	.byte		N06	
	.byte		N06	, En3
	.byte	W03
	.byte	BEND	, c_v
	.byte	W09
	.byte		N21	, An2
	.byte		N21	, En3
	.byte	W24
	.byte			An2
	.byte		N21	, En3
	.byte	W12
	.byte	W12
	.byte		N06	, An2
	.byte		N06	, En3
	.byte	W96
	.byte	W12
	.byte	W72
	.byte	BEND	, c_v-32
	.byte		N06	, En2
	.byte		N06	, An2
	.byte	W03
	.byte	BEND	, c_v
	.byte	W09
	.byte		N21	, En2
	.byte		N21	, An2
	.byte	W24
	.byte			En2
	.byte		N21	, An2
	.byte	W12
	.byte	W96
	.byte	W24
	.byte	W72
	.byte	BEND	, c_v-32
	.byte		N06	
	.byte		N06	, En3
	.byte	W03
	.byte	BEND	, c_v
	.byte	W09
	.byte		N21	
	.byte		N21	, An3, v068
	.byte	W24
	.byte			En3, v060
	.byte		N21	, An3, v068
	.byte	W12
	.byte	W12
	.byte		N06	, En3, v060
	.byte		N06	, An3, v068
	.byte	W96
	.byte	W12
	.byte	W72
	.byte	GOTO	
		.word	mus_dark_meta_knight_appears_4_1
	.byte	W48
	.byte	W48
	.byte	FINE

	@********************** Track  5 **********************@

	.global mus_dark_meta_knight_appears_5
mus_dark_meta_knight_appears_5:	@ 0x08D4DB8C
	.byte	KEYSH	, 0
	.byte	VOICE	, 43
	.byte	VOL	, v064
	.byte	PAN	, c_v+20
	.byte	W96
	.byte	W48
	.byte	W12
	.byte		N24	, An3, v092
	.byte	W12
	.byte	BEND	, c_v-64
	.byte	W12
	.byte		c_v
	.byte		N09	, En3, v100
	.byte	W12
	.byte		N12	, Dn3
	.byte	W12
	.byte		N09	, As2, v092
	.byte	W60
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W48
	.byte	FINE

	@********************** Track  6 **********************@

	.global mus_dark_meta_knight_appears_6
mus_dark_meta_knight_appears_6:	@ 0x08D4DBBC
	.byte	KEYSH	, 0
	.byte	VOICE	, 11
	.byte	VOL	, v073
	.byte	PAN	, c_v-10
	.byte	W96
	.byte	W48
	.byte	W12
	.byte		N24	, An1, v100
	.byte	W12
	.byte	BEND	, c_v-64
	.byte	W12
	.byte		c_v
	.byte		N09	, En1, v112
	.byte	W12
	.byte		N12	, Dn1, v100
	.byte	W12
	.byte		N09	, As0, v112
	.byte	W60
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W48
	.byte	FINE

	@********************** Track  7 **********************@

	.global mus_dark_meta_knight_appears_7
mus_dark_meta_knight_appears_7:	@ 0x08D4DBED
	.byte	KEYSH	, 0
	.byte	VOICE	, 46
	.byte	VOL	, v046
	.byte	PAN	, c_v+10
	.byte		N06	, Dn3, v060
	.byte	W12
	.byte			An3
	.byte	W06
	.byte			Dn3, v032
	.byte	W06
	.byte			Dn4, v060
	.byte	W05
	.byte			An3, v032
	.byte	W07
	.byte			Dn3, v056
	.byte	W05
	.byte			Dn4, v032
	.byte	W07
	.byte			An3, v056
	.byte	W06
	.byte			Dn3, v028
	.byte	W06
	.byte			Dn4, v056
	.byte	W05
	.byte			An3, v028
	.byte	W07
	.byte			Dn3, v052
	.byte	W05
	.byte			Dn4, v028
	.byte	W07
	.byte			An3, v052
	.byte	W06
	.byte			Dn3, v020
	.byte	W06
	.byte			Dn4, v052
	.byte	W05
	.byte			An3, v020
	.byte	W07
	.byte			Dn3, v048
	.byte	W05
	.byte			Dn4, v020
	.byte	W07
	.byte			An3, v036
	.byte	W06
	.byte			Dn3, v016
	.byte	W06
	.byte			Dn4, v032
	.byte	W06
	.byte			An3, v012
	.byte	W06
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W48
	.byte	FINE

	.align 2
	.global mus_dark_meta_knight_appears
mus_dark_meta_knight_appears:	@ 0x08D4DC50
	.byte	7		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	mus_dark_meta_knight_appears_1		@ track
	.word	mus_dark_meta_knight_appears_2		@ track
	.word	mus_dark_meta_knight_appears_3		@ track
	.word	mus_dark_meta_knight_appears_4		@ track
	.word	mus_dark_meta_knight_appears_5		@ track
	.word	mus_dark_meta_knight_appears_6		@ track
	.word	mus_dark_meta_knight_appears_7		@ track
