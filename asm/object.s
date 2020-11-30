	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0809DA30
sub_0809DA30: @ 0x0809DA30
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x82
	ldrb r0, [r0]
	subs r0, #5
	cmp r0, #0xd5
	bls _0809DA40
	b _0809E1FC
_0809DA40:
	lsls r0, r0, #2
	ldr r1, _0809DA4C @ =_0809DA50
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809DA4C: .4byte _0809DA50
_0809DA50: @ jump table
	.4byte _0809DFC0 @ case 0
	.4byte _0809E1FC @ case 1
	.4byte _0809E1FC @ case 2
	.4byte _0809E1FC @ case 3
	.4byte _0809E1FC @ case 4
	.4byte _0809E1FC @ case 5
	.4byte _0809E1FC @ case 6
	.4byte _0809E1FC @ case 7
	.4byte _0809E1FC @ case 8
	.4byte _0809E1FC @ case 9
	.4byte _0809E1FC @ case 10
	.4byte _0809E1FC @ case 11
	.4byte _0809E1FC @ case 12
	.4byte _0809E1FC @ case 13
	.4byte _0809E1FC @ case 14
	.4byte _0809E1FC @ case 15
	.4byte _0809E1FC @ case 16
	.4byte _0809E1FC @ case 17
	.4byte _0809E1FC @ case 18
	.4byte _0809E1FC @ case 19
	.4byte _0809E1FC @ case 20
	.4byte _0809E1FC @ case 21
	.4byte _0809E1FC @ case 22
	.4byte _0809E1FC @ case 23
	.4byte _0809E1FC @ case 24
	.4byte _0809E1FC @ case 25
	.4byte _0809E1FC @ case 26
	.4byte _0809E1FC @ case 27
	.4byte _0809E1FC @ case 28
	.4byte _0809E1F4 @ case 29
	.4byte _0809E1FC @ case 30
	.4byte _0809DFC0 @ case 31
	.4byte _0809E1FC @ case 32
	.4byte _0809E1FC @ case 33
	.4byte _0809E1FC @ case 34
	.4byte _0809E1FC @ case 35
	.4byte _0809E1FC @ case 36
	.4byte _0809E1FC @ case 37
	.4byte _0809E1FC @ case 38
	.4byte _0809E1FC @ case 39
	.4byte _0809E1FC @ case 40
	.4byte _0809E1F4 @ case 41
	.4byte _0809DF1C @ case 42
	.4byte _0809E1FC @ case 43
	.4byte _0809E1FC @ case 44
	.4byte _0809E1FC @ case 45
	.4byte _0809E1FC @ case 46
	.4byte _0809E1FC @ case 47
	.4byte _0809E1FC @ case 48
	.4byte _0809E1FC @ case 49
	.4byte _0809E1FC @ case 50
	.4byte _0809E1FC @ case 51
	.4byte _0809E1FC @ case 52
	.4byte _0809E1FC @ case 53
	.4byte _0809E1FC @ case 54
	.4byte _0809E1FC @ case 55
	.4byte _0809E1FC @ case 56
	.4byte _0809E1FC @ case 57
	.4byte _0809E1FC @ case 58
	.4byte _0809E1FC @ case 59
	.4byte _0809E1FC @ case 60
	.4byte _0809E1FC @ case 61
	.4byte _0809E1FC @ case 62
	.4byte _0809E1FC @ case 63
	.4byte _0809E1FC @ case 64
	.4byte _0809E1FC @ case 65
	.4byte _0809E1FC @ case 66
	.4byte _0809E1FC @ case 67
	.4byte _0809E1FC @ case 68
	.4byte _0809E1FC @ case 69
	.4byte _0809E1FC @ case 70
	.4byte _0809E1FC @ case 71
	.4byte _0809E1FC @ case 72
	.4byte _0809E1FC @ case 73
	.4byte _0809E1FC @ case 74
	.4byte _0809E1FC @ case 75
	.4byte _0809E1FC @ case 76
	.4byte _0809E1FC @ case 77
	.4byte _0809E1FC @ case 78
	.4byte _0809E1FC @ case 79
	.4byte _0809E1FC @ case 80
	.4byte _0809E1FC @ case 81
	.4byte _0809E1FC @ case 82
	.4byte _0809E1FC @ case 83
	.4byte _0809E1FC @ case 84
	.4byte _0809E1FC @ case 85
	.4byte _0809E1FC @ case 86
	.4byte _0809E1FC @ case 87
	.4byte _0809E1FC @ case 88
	.4byte _0809E1FC @ case 89
	.4byte _0809E1FC @ case 90
	.4byte _0809E1FC @ case 91
	.4byte _0809E1FC @ case 92
	.4byte _0809E1FC @ case 93
	.4byte _0809E1FC @ case 94
	.4byte _0809E1FC @ case 95
	.4byte _0809E1FC @ case 96
	.4byte _0809E1FC @ case 97
	.4byte _0809E1FC @ case 98
	.4byte _0809E1FC @ case 99
	.4byte _0809E1FC @ case 100
	.4byte _0809E1FC @ case 101
	.4byte _0809E1FC @ case 102
	.4byte _0809E1FC @ case 103
	.4byte _0809E1FC @ case 104
	.4byte _0809E1FC @ case 105
	.4byte _0809E1FC @ case 106
	.4byte _0809E1FC @ case 107
	.4byte _0809E1FC @ case 108
	.4byte _0809E1FC @ case 109
	.4byte _0809E1FC @ case 110
	.4byte _0809E1FC @ case 111
	.4byte _0809E1FC @ case 112
	.4byte _0809E1FC @ case 113
	.4byte _0809E1FC @ case 114
	.4byte _0809E1FC @ case 115
	.4byte _0809E1FC @ case 116
	.4byte _0809E1FC @ case 117
	.4byte _0809E1FC @ case 118
	.4byte _0809E1FC @ case 119
	.4byte _0809E1FC @ case 120
	.4byte _0809E1FC @ case 121
	.4byte _0809E1FC @ case 122
	.4byte _0809E1FC @ case 123
	.4byte _0809E1FC @ case 124
	.4byte _0809E1FC @ case 125
	.4byte _0809E1FC @ case 126
	.4byte _0809E1FC @ case 127
	.4byte _0809E1FC @ case 128
	.4byte _0809E1FC @ case 129
	.4byte _0809E1FC @ case 130
	.4byte _0809E1FC @ case 131
	.4byte _0809E1FC @ case 132
	.4byte _0809E1FC @ case 133
	.4byte _0809E1FC @ case 134
	.4byte _0809E1FC @ case 135
	.4byte _0809E1FC @ case 136
	.4byte _0809E1FC @ case 137
	.4byte _0809E1FC @ case 138
	.4byte _0809E1FC @ case 139
	.4byte _0809E1FC @ case 140
	.4byte _0809E1FC @ case 141
	.4byte _0809E1FC @ case 142
	.4byte _0809E1FC @ case 143
	.4byte _0809E1FC @ case 144
	.4byte _0809E1FC @ case 145
	.4byte _0809E1FC @ case 146
	.4byte _0809E1FC @ case 147
	.4byte _0809E1FC @ case 148
	.4byte _0809E1FC @ case 149
	.4byte _0809E1FC @ case 150
	.4byte _0809E1FC @ case 151
	.4byte _0809DE38 @ case 152
	.4byte _0809E1FC @ case 153
	.4byte _0809E1FC @ case 154
	.4byte _0809DE38 @ case 155
	.4byte _0809DE38 @ case 156
	.4byte _0809E1FC @ case 157
	.4byte _0809E1FC @ case 158
	.4byte _0809E1FC @ case 159
	.4byte _0809E1FC @ case 160
	.4byte _0809E1FC @ case 161
	.4byte _0809E1FC @ case 162
	.4byte _0809DF1C @ case 163
	.4byte _0809DF1C @ case 164
	.4byte _0809DE38 @ case 165
	.4byte _0809DE38 @ case 166
	.4byte _0809DE38 @ case 167
	.4byte _0809DF1C @ case 168
	.4byte _0809E1FC @ case 169
	.4byte _0809E1FC @ case 170
	.4byte _0809E1FC @ case 171
	.4byte _0809E1FC @ case 172
	.4byte _0809DF1C @ case 173
	.4byte _0809E1FC @ case 174
	.4byte _0809E1FC @ case 175
	.4byte _0809DE38 @ case 176
	.4byte _0809DE38 @ case 177
	.4byte _0809E1FC @ case 178
	.4byte _0809DF1C @ case 179
	.4byte _0809E1FC @ case 180
	.4byte _0809DE38 @ case 181
	.4byte _0809E1FC @ case 182
	.4byte _0809E1FC @ case 183
	.4byte _0809E1FC @ case 184
	.4byte _0809E1FC @ case 185
	.4byte _0809E1FC @ case 186
	.4byte _0809E1FC @ case 187
	.4byte _0809E1FC @ case 188
	.4byte _0809E1FC @ case 189
	.4byte _0809E1FC @ case 190
	.4byte _0809E1F4 @ case 191
	.4byte _0809E1FC @ case 192
	.4byte _0809E1F4 @ case 193
	.4byte _0809E1FC @ case 194
	.4byte _0809E1FC @ case 195
	.4byte _0809DF1C @ case 196
	.4byte _0809E1FC @ case 197
	.4byte _0809E1FC @ case 198
	.4byte _0809E1FC @ case 199
	.4byte _0809E1FC @ case 200
	.4byte _0809E1FC @ case 201
	.4byte _0809E1FC @ case 202
	.4byte _0809E1FC @ case 203
	.4byte _0809E1FC @ case 204
	.4byte _0809E1FC @ case 205
	.4byte _0809E1FC @ case 206
	.4byte _0809E1FC @ case 207
	.4byte _0809DE38 @ case 208
	.4byte _0809DDA8 @ case 209
	.4byte _0809DDA8 @ case 210
	.4byte _0809DE38 @ case 211
	.4byte _0809DDA8 @ case 212
	.4byte _0809DF1C @ case 213
_0809DDA8:
	ldr r1, _0809DE18 @ =gUnk_02020EE0
	ldr r0, _0809DE1C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0809DE10
	ldrb r0, [r5]
	cmp r0, #0
	bne _0809DDD4
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0809DE10
_0809DDD4:
	ldr r1, _0809DE20 @ =gUnk_08D60FA4
	ldr r4, _0809DE24 @ =gSongTable
	ldr r2, _0809DE28 @ =0x0000097C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0809DDF8
	ldr r1, _0809DE2C @ =0x00000978
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0809DE10
_0809DDF8:
	cmp r3, #0
	beq _0809DE0A
	ldr r0, _0809DE30 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809DE10
_0809DE0A:
	ldr r0, _0809DE34 @ =0x0000012F
	bl m4aSongNumStart
_0809DE10:
	movs r2, #0xa6
	lsls r2, r2, #2
	b _0809DF98
	.align 2, 0
_0809DE18: .4byte gUnk_02020EE0
_0809DE1C: .4byte gUnk_0203AD3C
_0809DE20: .4byte gUnk_08D60FA4
_0809DE24: .4byte gSongTable
_0809DE28: .4byte 0x0000097C
_0809DE2C: .4byte 0x00000978
_0809DE30: .4byte gUnk_0203AD10
_0809DE34: .4byte 0x0000012F
_0809DE38:
	adds r0, r5, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bgt _0809DE8C
	ldr r2, _0809DE60 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0809DE64 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0809DE68 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _0809DE6C @ =0x00005554
	cmp r2, r0
	bhi _0809DE70
	movs r1, #0
	b _0809DE7A
	.align 2, 0
_0809DE60: .4byte gRngVal
_0809DE64: .4byte 0x00196225
_0809DE68: .4byte 0x3C6EF35F
_0809DE6C: .4byte 0x00005554
_0809DE70:
	ldr r0, _0809DE88 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _0809DE7A
	movs r1, #1
_0809DE7A:
	cmp r1, #1
	bne _0809DE80
	b _0809E058
_0809DE80:
	cmp r1, #2
	beq _0809DE86
	b _0809E016
_0809DE86:
	b _0809E0E4
	.align 2, 0
_0809DE88: .4byte 0x0000AAA9
_0809DE8C:
	ldr r1, _0809DEFC @ =gUnk_02020EE0
	ldr r0, _0809DF00 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0809DEF4
	ldrb r0, [r5]
	cmp r0, #0
	bne _0809DEB8
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0809DEF4
_0809DEB8:
	ldr r1, _0809DF04 @ =gUnk_08D60FA4
	ldr r4, _0809DF08 @ =gSongTable
	ldr r2, _0809DF0C @ =0x0000097C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0809DEDC
	ldr r1, _0809DF10 @ =0x00000978
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0809DEF4
_0809DEDC:
	cmp r3, #0
	beq _0809DEEE
	ldr r0, _0809DF14 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809DEF4
_0809DEEE:
	ldr r0, _0809DF18 @ =0x0000012F
	bl m4aSongNumStart
_0809DEF4:
	movs r2, #0xa6
	lsls r2, r2, #2
	b _0809DF98
	.align 2, 0
_0809DEFC: .4byte gUnk_02020EE0
_0809DF00: .4byte gUnk_0203AD3C
_0809DF04: .4byte gUnk_08D60FA4
_0809DF08: .4byte gSongTable
_0809DF0C: .4byte 0x0000097C
_0809DF10: .4byte 0x00000978
_0809DF14: .4byte gUnk_0203AD10
_0809DF18: .4byte 0x0000012F
_0809DF1C:
	adds r0, r5, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	ble _0809DF2A
	b _0809E1F4
_0809DF2A:
	ldr r1, _0809DFA4 @ =gUnk_02020EE0
	ldr r0, _0809DFA8 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0809DF96
	ldrb r0, [r5]
	cmp r0, #0
	bne _0809DF56
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0809DF96
_0809DF56:
	ldr r1, _0809DFAC @ =gUnk_08D60FA4
	ldr r4, _0809DFB0 @ =gSongTable
	ldr r2, _0809DFB4 @ =0x000009B4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0809DF7C
	movs r1, #0x9b
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0809DF96
_0809DF7C:
	cmp r3, #0
	beq _0809DF8E
	ldr r0, _0809DFB8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809DF96
_0809DF8E:
	movs r0, #0x9b
	lsls r0, r0, #1
	bl m4aSongNumStart
_0809DF96:
	ldr r2, _0809DFBC @ =0x0000029B
_0809DF98:
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	b _0809E3FC
	.align 2, 0
_0809DFA4: .4byte gUnk_02020EE0
_0809DFA8: .4byte gUnk_0203AD3C
_0809DFAC: .4byte gUnk_08D60FA4
_0809DFB0: .4byte gSongTable
_0809DFB4: .4byte 0x000009B4
_0809DFB8: .4byte gUnk_0203AD10
_0809DFBC: .4byte 0x0000029B
_0809DFC0:
	ldr r0, [r5, #0xc]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0809DFD8
	adds r0, r5, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	ble _0809DFD8
	b _0809E1F4
_0809DFD8:
	ldr r2, _0809DFF4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0809DFF8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0809DFFC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _0809E000 @ =0x00005554
	cmp r2, r0
	bhi _0809E004
	movs r1, #0
	b _0809E00E
	.align 2, 0
_0809DFF4: .4byte gRngVal
_0809DFF8: .4byte 0x00196225
_0809DFFC: .4byte 0x3C6EF35F
_0809E000: .4byte 0x00005554
_0809E004:
	ldr r0, _0809E04C @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _0809E00E
	movs r1, #1
_0809E00E:
	cmp r1, #1
	beq _0809E058
	cmp r1, #2
	beq _0809E0E4
_0809E016:
	ldr r2, _0809E050 @ =gUnk_02020EE0
	ldr r3, _0809E054 @ =gUnk_0203AD3C
	ldrb r1, [r3]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0809E034
	b _0809E1B0
_0809E034:
	ldrb r0, [r5]
	cmp r0, #0
	beq _0809E03C
	b _0809E170
_0809E03C:
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	ldrb r3, [r3]
	cmp r0, r3
	beq _0809E04A
	b _0809E1B0
_0809E04A:
	b _0809E170
	.align 2, 0
_0809E04C: .4byte 0x0000AAA9
_0809E050: .4byte gUnk_02020EE0
_0809E054: .4byte gUnk_0203AD3C
_0809E058:
	ldr r1, _0809E0CC @ =gUnk_02020EE0
	ldr r0, _0809E0D0 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0809E076
	b _0809E1B0
_0809E076:
	ldrb r0, [r5]
	cmp r0, #0
	bne _0809E088
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	beq _0809E088
	b _0809E1B0
_0809E088:
	ldr r1, _0809E0D4 @ =gUnk_08D60FA4
	ldr r4, _0809E0D8 @ =gSongTable
	ldr r2, _0809E0DC @ =0x00000964
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0809E0B0
	movs r1, #0x96
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bls _0809E0B0
	b _0809E1B0
_0809E0B0:
	cmp r3, #0
	beq _0809E0C2
	ldr r0, _0809E0E0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809E1B0
_0809E0C2:
	movs r0, #0x96
	lsls r0, r0, #1
	bl m4aSongNumStart
	b _0809E1B0
	.align 2, 0
_0809E0CC: .4byte gUnk_02020EE0
_0809E0D0: .4byte gUnk_0203AD3C
_0809E0D4: .4byte gUnk_08D60FA4
_0809E0D8: .4byte gSongTable
_0809E0DC: .4byte 0x00000964
_0809E0E0: .4byte gUnk_0203AD10
_0809E0E4:
	ldr r1, _0809E150 @ =gUnk_02020EE0
	ldr r0, _0809E154 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0809E1B0
	ldrb r0, [r5]
	cmp r0, #0
	bne _0809E110
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0809E1B0
_0809E110:
	ldr r1, _0809E158 @ =gUnk_08D60FA4
	ldr r4, _0809E15C @ =gSongTable
	ldr r2, _0809E160 @ =0x0000096C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0809E134
	ldr r1, _0809E164 @ =0x00000968
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0809E1B0
_0809E134:
	cmp r3, #0
	beq _0809E146
	ldr r0, _0809E168 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809E1B0
_0809E146:
	ldr r0, _0809E16C @ =0x0000012D
	bl m4aSongNumStart
	b _0809E1B0
	.align 2, 0
_0809E150: .4byte gUnk_02020EE0
_0809E154: .4byte gUnk_0203AD3C
_0809E158: .4byte gUnk_08D60FA4
_0809E15C: .4byte gSongTable
_0809E160: .4byte 0x0000096C
_0809E164: .4byte 0x00000968
_0809E168: .4byte gUnk_0203AD10
_0809E16C: .4byte 0x0000012D
_0809E170:
	ldr r1, _0809E1D4 @ =gUnk_08D60FA4
	ldr r4, _0809E1D8 @ =gSongTable
	ldr r2, _0809E1DC @ =0x00000974
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0809E196
	movs r1, #0x97
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0809E1B0
_0809E196:
	cmp r3, #0
	beq _0809E1A8
	ldr r0, _0809E1E0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809E1B0
_0809E1A8:
	movs r0, #0x97
	lsls r0, r0, #1
	bl m4aSongNumStart
_0809E1B0:
	ldr r2, _0809E1E4 @ =0x00000292
	ldr r4, _0809E1E8 @ =gRngVal
	ldr r1, [r4]
	ldr r0, _0809E1EC @ =0x00196225
	adds r3, r1, #0
	muls r3, r0, r3
	ldr r0, _0809E1F0 @ =0x3C6EF35F
	adds r3, r3, r0
	str r3, [r4]
	lsrs r3, r3, #0x10
	movs r0, #3
	ands r3, r0
	adds r0, r5, #0
	movs r1, #0
	bl sub_0808AE30
	b _0809E3FC
	.align 2, 0
_0809E1D4: .4byte gUnk_08D60FA4
_0809E1D8: .4byte gSongTable
_0809E1DC: .4byte 0x00000974
_0809E1E0: .4byte gUnk_0203AD10
_0809E1E4: .4byte 0x00000292
_0809E1E8: .4byte gRngVal
_0809E1EC: .4byte 0x00196225
_0809E1F0: .4byte 0x3C6EF35F
_0809E1F4:
	adds r0, r5, #0
	bl sub_08073D2C
	b _0809E3FC
_0809E1FC:
	ldr r2, _0809E218 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0809E21C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0809E220 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _0809E224 @ =0x00005554
	cmp r2, r0
	bhi _0809E228
	movs r1, #0
	b _0809E232
	.align 2, 0
_0809E218: .4byte gRngVal
_0809E21C: .4byte 0x00196225
_0809E220: .4byte 0x3C6EF35F
_0809E224: .4byte 0x00005554
_0809E228:
	ldr r0, _0809E270 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _0809E232
	movs r1, #1
_0809E232:
	cmp r1, #1
	beq _0809E27C
	cmp r1, #2
	beq _0809E308
	ldr r2, _0809E274 @ =gUnk_02020EE0
	ldr r3, _0809E278 @ =gUnk_0203AD3C
	ldrb r1, [r3]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0809E258
	b _0809E3D4
_0809E258:
	ldrb r0, [r5]
	cmp r0, #0
	beq _0809E260
	b _0809E394
_0809E260:
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	ldrb r3, [r3]
	cmp r0, r3
	beq _0809E26E
	b _0809E3D4
_0809E26E:
	b _0809E394
	.align 2, 0
_0809E270: .4byte 0x0000AAA9
_0809E274: .4byte gUnk_02020EE0
_0809E278: .4byte gUnk_0203AD3C
_0809E27C:
	ldr r1, _0809E2F0 @ =gUnk_02020EE0
	ldr r0, _0809E2F4 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0809E29A
	b _0809E3D4
_0809E29A:
	ldrb r0, [r5]
	cmp r0, #0
	bne _0809E2AC
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	beq _0809E2AC
	b _0809E3D4
_0809E2AC:
	ldr r1, _0809E2F8 @ =gUnk_08D60FA4
	ldr r4, _0809E2FC @ =gSongTable
	ldr r2, _0809E300 @ =0x00000964
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0809E2D4
	movs r1, #0x96
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bls _0809E2D4
	b _0809E3D4
_0809E2D4:
	cmp r3, #0
	beq _0809E2E6
	ldr r0, _0809E304 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809E3D4
_0809E2E6:
	movs r0, #0x96
	lsls r0, r0, #1
	bl m4aSongNumStart
	b _0809E3D4
	.align 2, 0
_0809E2F0: .4byte gUnk_02020EE0
_0809E2F4: .4byte gUnk_0203AD3C
_0809E2F8: .4byte gUnk_08D60FA4
_0809E2FC: .4byte gSongTable
_0809E300: .4byte 0x00000964
_0809E304: .4byte gUnk_0203AD10
_0809E308:
	ldr r1, _0809E374 @ =gUnk_02020EE0
	ldr r0, _0809E378 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0809E3D4
	ldrb r0, [r5]
	cmp r0, #0
	bne _0809E334
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0809E3D4
_0809E334:
	ldr r1, _0809E37C @ =gUnk_08D60FA4
	ldr r4, _0809E380 @ =gSongTable
	ldr r2, _0809E384 @ =0x0000096C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0809E358
	ldr r1, _0809E388 @ =0x00000968
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0809E3D4
_0809E358:
	cmp r3, #0
	beq _0809E36A
	ldr r0, _0809E38C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809E3D4
_0809E36A:
	ldr r0, _0809E390 @ =0x0000012D
	bl m4aSongNumStart
	b _0809E3D4
	.align 2, 0
_0809E374: .4byte gUnk_02020EE0
_0809E378: .4byte gUnk_0203AD3C
_0809E37C: .4byte gUnk_08D60FA4
_0809E380: .4byte gSongTable
_0809E384: .4byte 0x0000096C
_0809E388: .4byte 0x00000968
_0809E38C: .4byte gUnk_0203AD10
_0809E390: .4byte 0x0000012D
_0809E394:
	ldr r1, _0809E404 @ =gUnk_08D60FA4
	ldr r4, _0809E408 @ =gSongTable
	ldr r2, _0809E40C @ =0x00000974
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0809E3BA
	movs r1, #0x97
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0809E3D4
_0809E3BA:
	cmp r3, #0
	beq _0809E3CC
	ldr r0, _0809E410 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809E3D4
_0809E3CC:
	movs r0, #0x97
	lsls r0, r0, #1
	bl m4aSongNumStart
_0809E3D4:
	ldr r2, _0809E414 @ =0x00000292
	ldr r4, _0809E418 @ =gRngVal
	ldr r1, [r4]
	ldr r0, _0809E41C @ =0x00196225
	adds r3, r1, #0
	muls r3, r0, r3
	ldr r0, _0809E420 @ =0x3C6EF35F
	adds r3, r3, r0
	str r3, [r4]
	lsrs r3, r3, #0x10
	movs r0, #3
	ands r3, r0
	adds r0, r5, #0
	movs r1, #0
	bl sub_0808AE30
	movs r0, #1
	adds r1, r5, #0
	bl sub_0806FE64
_0809E3FC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809E404: .4byte gUnk_08D60FA4
_0809E408: .4byte gSongTable
_0809E40C: .4byte 0x00000974
_0809E410: .4byte gUnk_0203AD10
_0809E414: .4byte 0x00000292
_0809E418: .4byte gRngVal
_0809E41C: .4byte 0x00196225
_0809E420: .4byte 0x3C6EF35F

	thumb_func_start sub_0809E424
sub_0809E424: @ 0x0809E424
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	ldr r0, _0809E45C @ =sub_0809E55C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0809E460 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809E464
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r7, r0, r1
	b _0809E46C
	.align 2, 0
_0809E45C: .4byte sub_0809E55C
_0809E460: .4byte sub_0803DCCC
_0809E464:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
_0809E46C:
	adds r0, r7, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r7]
	mov r1, sb
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r1, #0x44]
	str r0, [r7, #0x38]
	str r1, [r7, #0x44]
	mov r0, sb
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r0, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	mov sl, r2
	mov r6, sl
	orrs r6, r0
	movs r5, #0
	orrs r6, r5
	strh r6, [r7, #6]
	ldr r1, _0809E544 @ =gRngVal
	ldr r0, [r1]
	ldr r4, _0809E548 @ =0x00196225
	muls r0, r4, r0
	ldr r3, _0809E54C @ =0x3C6EF35F
	adds r0, r0, r3
	adds r2, r0, #0
	muls r2, r4, r2
	adds r2, r2, r3
	str r2, [r1]
	lsrs r1, r2, #0x10
	movs r5, #0xf
	mov r8, r5
	adds r0, r1, #0
	ands r0, r5
	movs r5, #7
	ands r1, r5
	adds r0, r0, r1
	movs r1, #0xc
	mov ip, r1
	subs r0, r1, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3c]
	adds r0, r2, #0
	muls r0, r4, r0
	adds r0, r0, r3
	adds r1, r0, #0
	muls r1, r4, r1
	adds r1, r1, r3
	ldr r2, _0809E544 @ =gRngVal
	str r1, [r2]
	lsrs r1, r1, #0x10
	adds r0, r1, #0
	mov r2, r8
	ands r0, r2
	ands r1, r5
	adds r0, r0, r1
	mov r5, ip
	subs r0, r5, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3e]
	ldr r0, _0809E550 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, sb
	adds r1, #0x56
	movs r4, #1
	adds r0, r4, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809E516
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	orrs r6, r0
	strh r6, [r7, #6]
_0809E516:
	ldrh r0, [r7, #6]
	mov r2, sl
	orrs r0, r2
	strh r0, [r7, #6]
	adds r1, r7, #0
	adds r1, #0xc
	ldr r2, _0809E554 @ =0x06012000
	ldr r3, _0809E558 @ =0x00000297
	str r4, [sp]
	mov r5, ip
	str r5, [sp, #4]
	adds r0, r7, #0
	bl sub_080709F8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809E544: .4byte gRngVal
_0809E548: .4byte 0x00196225
_0809E54C: .4byte 0x3C6EF35F
_0809E550: .4byte gUnk_03000510
_0809E554: .4byte 0x06012000
_0809E558: .4byte 0x00000297

	thumb_func_start sub_0809E55C
sub_0809E55C: @ 0x0809E55C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0809E580 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809E584
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0809E58C
	.align 2, 0
_0809E580: .4byte gCurTask
_0809E584:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0809E58C:
	adds r7, r0, #0
	ldr r0, [r7, #0x44]
	mov ip, r0
	ldrh r3, [r7, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _0809E5A8
	ldr r0, [r2]
	bl TaskDestroy
	b _0809E78C
_0809E5A8:
	mov r2, ip
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _0809E5BA
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r7, #6]
	b _0809E78C
_0809E5BA:
	mov r5, ip
	cmp r5, #0
	beq _0809E5F0
	ldr r0, _0809E5EC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, ip
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809E660
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r3
	cmp r0, #0
	bne _0809E660
	adds r0, r7, #0
	bl sub_0803DBC8
	b _0809E78C
	.align 2, 0
_0809E5EC: .4byte gUnk_03000510
_0809E5F0:
	adds r4, r7, #0
	movs r3, #0
	ldr r2, _0809E658 @ =gUnk_02020EE0
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0809E632
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809E632
	movs r3, #2
	movs r5, #0xec
	lsls r5, r5, #2
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809E632
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809E632
	movs r3, #4
_0809E632:
	ldr r0, _0809E65C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809E660
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0809E660
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0809E78C
	.align 2, 0
_0809E658: .4byte gUnk_02020EE0
_0809E65C: .4byte gUnk_03000510
_0809E660:
	ldr r0, _0809E6D8 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0809E6A4
	ldr r5, _0809E6DC @ =gCurLevelInfo
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r4, _0809E6E0 @ =gUnk_02026D50
_0809E672:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r5
	movs r6, #0xbf
	lsls r6, r6, #3
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r3
	bne _0809E69C
	adds r6, #0x66
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0809E6B6
_0809E69C:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0809E672
_0809E6A4:
	movs r0, #1
	cmp r0, #0
	beq _0809E6B6
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
_0809E6B6:
	ldrh r2, [r7, #6]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0809E6E8
	ldrh r1, [r7, #8]
	movs r3, #8
	ldrsh r0, [r7, r3]
	cmp r0, #1
	bne _0809E6E4
	movs r5, #0x80
	lsls r5, r5, #5
	adds r0, r5, #0
	orrs r0, r2
	strh r0, [r7, #6]
	b _0809E78C
	.align 2, 0
_0809E6D8: .4byte gUnk_0203AD44
_0809E6DC: .4byte gCurLevelInfo
_0809E6E0: .4byte gUnk_02026D50
_0809E6E4:
	adds r0, r1, #1
	strh r0, [r7, #8]
_0809E6E8:
	ldrb r0, [r7, #1]
	lsls r2, r0, #0x18
	lsrs r0, r2, #0x18
	cmp r0, #0xa
	bls _0809E760
	ldr r6, _0809E754 @ =gRngVal
	ldr r0, [r6]
	ldr r5, _0809E758 @ =0x00196225
	muls r0, r5, r0
	ldr r4, _0809E75C @ =0x3C6EF35F
	adds r0, r0, r4
	adds r3, r0, #0
	muls r3, r5, r3
	adds r3, r3, r4
	str r3, [r6]
	lsrs r1, r3, #0x10
	movs r0, #0xf
	mov sb, r0
	adds r0, r1, #0
	mov r2, sb
	ands r0, r2
	movs r2, #7
	mov r8, r2
	ands r1, r2
	adds r0, r0, r1
	movs r2, #0xc
	subs r0, r2, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3c]
	adds r0, r3, #0
	muls r0, r5, r0
	adds r0, r0, r4
	muls r0, r5, r0
	adds r0, r0, r4
	str r0, [r6]
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	mov r3, sb
	ands r1, r3
	mov r5, r8
	ands r0, r5
	adds r1, r1, r0
	subs r2, r2, r1
	lsls r2, r2, #8
	strh r2, [r7, #0x3e]
	movs r6, #8
	ldrsh r0, [r7, r6]
	cmp r0, #1
	beq _0809E770
	ldrh r0, [r7, #6]
	movs r1, #4
	orrs r0, r1
	strh r0, [r7, #6]
	b _0809E770
	.align 2, 0
_0809E754: .4byte gRngVal
_0809E758: .4byte 0x00196225
_0809E75C: .4byte 0x3C6EF35F
_0809E760:
	ldr r1, _0809E798 @ =gUnk_08352DF8
	lsrs r0, r2, #0x19
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r7, #0x3e]
	ldrh r0, [r0]
	subs r1, r1, r0
	strh r1, [r7, #0x3e]
_0809E770:
	movs r0, #0x3c
	ldrsh r1, [r7, r0]
	mov r2, ip
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	movs r3, #0x3e
	ldrsh r1, [r7, r3]
	ldr r0, [r2, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x38]
	adds r0, r7, #0
	bl sub_0806FAC8
_0809E78C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809E798: .4byte gUnk_08352DF8

	thumb_func_start sub_0809E79C
sub_0809E79C: @ 0x0809E79C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	ldr r0, _0809E7D4 @ =sub_0809E8D4
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0809E7D8 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809E7DC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r7, r0, r1
	b _0809E7E4
	.align 2, 0
_0809E7D4: .4byte sub_0809E8D4
_0809E7D8: .4byte sub_0803DCCC
_0809E7DC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
_0809E7E4:
	adds r0, r7, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r7]
	mov r1, sb
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r1, #0x44]
	str r0, [r7, #0x38]
	str r1, [r7, #0x44]
	mov r0, sb
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r0, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	mov sl, r2
	mov r6, sl
	orrs r6, r0
	movs r5, #0
	orrs r6, r5
	strh r6, [r7, #6]
	ldr r1, _0809E8BC @ =gRngVal
	ldr r0, [r1]
	ldr r4, _0809E8C0 @ =0x00196225
	muls r0, r4, r0
	ldr r3, _0809E8C4 @ =0x3C6EF35F
	adds r0, r0, r3
	adds r2, r0, #0
	muls r2, r4, r2
	adds r2, r2, r3
	str r2, [r1]
	lsrs r1, r2, #0x10
	movs r5, #0xf
	mov r8, r5
	adds r0, r1, #0
	ands r0, r5
	movs r5, #7
	ands r1, r5
	adds r0, r0, r1
	movs r1, #0xc
	mov ip, r1
	subs r0, r1, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3c]
	adds r0, r2, #0
	muls r0, r4, r0
	adds r0, r0, r3
	adds r1, r0, #0
	muls r1, r4, r1
	adds r1, r1, r3
	ldr r2, _0809E8BC @ =gRngVal
	str r1, [r2]
	lsrs r1, r1, #0x10
	adds r0, r1, #0
	mov r2, r8
	ands r0, r2
	ands r1, r5
	adds r0, r0, r1
	mov r5, ip
	subs r0, r5, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3e]
	ldr r0, _0809E8C8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, sb
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809E88C
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	orrs r6, r0
	strh r6, [r7, #6]
_0809E88C:
	ldrh r0, [r7, #6]
	mov r2, sl
	orrs r0, r2
	strh r0, [r7, #6]
	adds r1, r7, #0
	adds r1, #0xc
	ldr r2, _0809E8CC @ =0x06012000
	ldr r3, _0809E8D0 @ =0x0000029D
	movs r0, #0
	str r0, [sp]
	mov r5, ip
	str r5, [sp, #4]
	adds r0, r7, #0
	bl sub_080709F8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809E8BC: .4byte gRngVal
_0809E8C0: .4byte 0x00196225
_0809E8C4: .4byte 0x3C6EF35F
_0809E8C8: .4byte gUnk_03000510
_0809E8CC: .4byte 0x06012000
_0809E8D0: .4byte 0x0000029D

	thumb_func_start sub_0809E8D4
sub_0809E8D4: @ 0x0809E8D4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0809E8F8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809E8FC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0809E904
	.align 2, 0
_0809E8F8: .4byte gCurTask
_0809E8FC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0809E904:
	adds r7, r0, #0
	ldr r0, [r7, #0x44]
	mov ip, r0
	ldrh r3, [r7, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _0809E920
	ldr r0, [r2]
	bl TaskDestroy
	b _0809EB7E
_0809E920:
	mov r2, ip
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _0809E932
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r7, #6]
	b _0809EB7E
_0809E932:
	mov r5, ip
	cmp r5, #0
	beq _0809E968
	ldr r0, _0809E964 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, ip
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809E9D8
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r3
	cmp r0, #0
	bne _0809E9D8
	adds r0, r7, #0
	bl sub_0803DBC8
	b _0809EB7E
	.align 2, 0
_0809E964: .4byte gUnk_03000510
_0809E968:
	adds r4, r7, #0
	movs r3, #0
	ldr r2, _0809E9D0 @ =gUnk_02020EE0
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0809E9AA
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809E9AA
	movs r3, #2
	movs r5, #0xec
	lsls r5, r5, #2
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809E9AA
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809E9AA
	movs r3, #4
_0809E9AA:
	ldr r0, _0809E9D4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809E9D8
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0809E9D8
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0809EB7E
	.align 2, 0
_0809E9D0: .4byte gUnk_02020EE0
_0809E9D4: .4byte gUnk_03000510
_0809E9D8:
	ldr r0, _0809EA44 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0809EA1C
	ldr r5, _0809EA48 @ =gCurLevelInfo
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r4, _0809EA4C @ =gUnk_02026D50
_0809E9EA:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r5
	movs r6, #0xbf
	lsls r6, r6, #3
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r3
	bne _0809EA14
	adds r6, #0x66
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0809EA2E
_0809EA14:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0809E9EA
_0809EA1C:
	movs r0, #1
	cmp r0, #0
	beq _0809EA2E
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
_0809EA2E:
	ldrh r1, [r7, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0809EA50
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r7, #6]
	b _0809EB7E
	.align 2, 0
_0809EA44: .4byte gUnk_0203AD44
_0809EA48: .4byte gCurLevelInfo
_0809EA4C: .4byte gUnk_02026D50
_0809EA50:
	ldrb r0, [r7, #1]
	cmp r0, #0xd
	beq _0809EA5E
	cmp r0, #0x2d
	beq _0809EA5E
	cmp r0, #0x31
	bne _0809EAAE
_0809EA5E:
	ldr r6, _0809EAD4 @ =gRngVal
	ldr r0, [r6]
	ldr r5, _0809EAD8 @ =0x00196225
	muls r0, r5, r0
	ldr r4, _0809EADC @ =0x3C6EF35F
	adds r0, r0, r4
	adds r3, r0, #0
	muls r3, r5, r3
	adds r3, r3, r4
	str r3, [r6]
	lsrs r1, r3, #0x10
	movs r0, #0xf
	mov sb, r0
	adds r0, r1, #0
	mov r2, sb
	ands r0, r2
	movs r2, #7
	mov r8, r2
	ands r1, r2
	adds r0, r0, r1
	movs r2, #0xc
	subs r0, r2, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3c]
	adds r0, r3, #0
	muls r0, r5, r0
	adds r0, r0, r4
	muls r0, r5, r0
	adds r0, r0, r4
	str r0, [r6]
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	mov r3, sb
	ands r1, r3
	mov r5, r8
	ands r0, r5
	adds r1, r1, r0
	subs r2, r2, r1
	lsls r2, r2, #8
	strh r2, [r7, #0x3e]
_0809EAAE:
	movs r6, #0x3c
	ldrsh r1, [r7, r6]
	mov r2, ip
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	movs r3, #0x3e
	ldrsh r1, [r7, r3]
	ldr r0, [r2, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x38]
	ldrb r0, [r7, #1]
	cmp r0, #0xf
	bhi _0809EB78
	lsls r0, r0, #2
	ldr r1, _0809EAE0 @ =_0809EAE4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809EAD4: .4byte gRngVal
_0809EAD8: .4byte 0x00196225
_0809EADC: .4byte 0x3C6EF35F
_0809EAE0: .4byte _0809EAE4
_0809EAE4: @ jump table
	.4byte _0809EB40 @ case 0
	.4byte _0809EB24 @ case 1
	.4byte _0809EB68 @ case 2
	.4byte _0809EB78 @ case 3
	.4byte _0809EB78 @ case 4
	.4byte _0809EB78 @ case 5
	.4byte _0809EB78 @ case 6
	.4byte _0809EB78 @ case 7
	.4byte _0809EB78 @ case 8
	.4byte _0809EB78 @ case 9
	.4byte _0809EB78 @ case 10
	.4byte _0809EB78 @ case 11
	.4byte _0809EB78 @ case 12
	.4byte _0809EB40 @ case 13
	.4byte _0809EB4E @ case 14
	.4byte _0809EB68 @ case 15
_0809EB24:
	ldr r1, _0809EB3C @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r2, [r7, #0x3c]
	adds r0, r0, r2
	strh r0, [r7, #0x3c]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	ldrh r5, [r7, #0x3e]
	adds r0, r0, r5
	b _0809EB76
	.align 2, 0
_0809EB3C: .4byte 0xFFFFFF00
_0809EB40:
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r5, #0
	ldrh r6, [r7, #0x3c]
	adds r0, r0, r6
	strh r0, [r7, #0x3c]
	b _0809EB78
_0809EB4E:
	ldr r1, _0809EB64 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r2, [r7, #0x3c]
	adds r0, r0, r2
	strh r0, [r7, #0x3c]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	ldrh r5, [r7, #0x3e]
	adds r0, r0, r5
	b _0809EB76
	.align 2, 0
_0809EB64: .4byte 0xFFFFFF00
_0809EB68:
	ldr r6, _0809EB8C @ =0xFFFFFF00
	adds r0, r6, #0
	ldrh r2, [r7, #0x3c]
	adds r1, r0, r2
	strh r1, [r7, #0x3c]
	ldrh r3, [r7, #0x3e]
	adds r0, r0, r3
_0809EB76:
	strh r0, [r7, #0x3e]
_0809EB78:
	adds r0, r7, #0
	bl sub_0806FAC8
_0809EB7E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809EB8C: .4byte 0xFFFFFF00

	thumb_func_start sub_0809EB90
sub_0809EB90: @ 0x0809EB90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	ldr r0, _0809EBC8 @ =sub_0809ECD0
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0809EBCC @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809EBD0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r7, r0, r1
	b _0809EBD8
	.align 2, 0
_0809EBC8: .4byte sub_0809ECD0
_0809EBCC: .4byte sub_0803DCCC
_0809EBD0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
_0809EBD8:
	adds r0, r7, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r7]
	mov r1, sb
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r1, #0x44]
	str r0, [r7, #0x38]
	str r1, [r7, #0x44]
	mov r0, sb
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	movs r2, #0
	strh r2, [r7, #8]
	ldrh r0, [r7, #6]
	movs r5, #0x80
	lsls r5, r5, #7
	mov sl, r5
	mov r6, sl
	orrs r6, r0
	movs r0, #0
	orrs r6, r0
	strh r6, [r7, #6]
	movs r0, #0x40
	strh r0, [r7, #4]
	ldr r1, _0809ECB8 @ =gRngVal
	ldr r0, [r1]
	ldr r4, _0809ECBC @ =0x00196225
	muls r0, r4, r0
	ldr r3, _0809ECC0 @ =0x3C6EF35F
	adds r0, r0, r3
	adds r2, r0, #0
	muls r2, r4, r2
	adds r2, r2, r3
	str r2, [r1]
	lsrs r1, r2, #0x10
	movs r5, #0xf
	mov r8, r5
	adds r0, r1, #0
	ands r0, r5
	movs r5, #7
	ands r1, r5
	adds r0, r0, r1
	movs r1, #0xc
	mov ip, r1
	subs r0, r1, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3c]
	adds r0, r2, #0
	muls r0, r4, r0
	adds r0, r0, r3
	adds r1, r0, #0
	muls r1, r4, r1
	adds r1, r1, r3
	ldr r2, _0809ECB8 @ =gRngVal
	str r1, [r2]
	lsrs r1, r1, #0x10
	adds r0, r1, #0
	mov r2, r8
	ands r0, r2
	ands r1, r5
	adds r0, r0, r1
	mov r5, ip
	subs r0, r5, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3e]
	ldr r0, _0809ECC4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, sb
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809EC88
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	orrs r6, r0
	strh r6, [r7, #6]
_0809EC88:
	ldrh r0, [r7, #6]
	mov r2, sl
	orrs r0, r2
	strh r0, [r7, #6]
	adds r1, r7, #0
	adds r1, #0xc
	ldr r2, _0809ECC8 @ =0x06012000
	ldr r3, _0809ECCC @ =0x0000029E
	movs r5, #0
	str r5, [sp]
	mov r0, ip
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_080709F8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809ECB8: .4byte gRngVal
_0809ECBC: .4byte 0x00196225
_0809ECC0: .4byte 0x3C6EF35F
_0809ECC4: .4byte gUnk_03000510
_0809ECC8: .4byte 0x06012000
_0809ECCC: .4byte 0x0000029E

	thumb_func_start sub_0809ECD0
sub_0809ECD0: @ 0x0809ECD0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0809ECF4 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809ECF8
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0809ED00
	.align 2, 0
_0809ECF4: .4byte gCurTask
_0809ECF8:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0809ED00:
	adds r7, r0, #0
	ldr r0, [r7, #0x44]
	mov ip, r0
	ldrh r3, [r7, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _0809ED1C
	ldr r0, [r2]
	bl TaskDestroy
	b _0809EF7C
_0809ED1C:
	mov r2, ip
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _0809ED2E
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r7, #6]
	b _0809EF7C
_0809ED2E:
	mov r5, ip
	cmp r5, #0
	beq _0809ED64
	ldr r0, _0809ED60 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, ip
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809EDD4
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r3
	cmp r0, #0
	bne _0809EDD4
	adds r0, r7, #0
	bl sub_0803DBC8
	b _0809EF7C
	.align 2, 0
_0809ED60: .4byte gUnk_03000510
_0809ED64:
	adds r4, r7, #0
	movs r3, #0
	ldr r2, _0809EDCC @ =gUnk_02020EE0
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0809EDA6
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809EDA6
	movs r3, #2
	movs r5, #0xec
	lsls r5, r5, #2
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809EDA6
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809EDA6
	movs r3, #4
_0809EDA6:
	ldr r0, _0809EDD0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809EDD4
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0809EDD4
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0809EF7C
	.align 2, 0
_0809EDCC: .4byte gUnk_02020EE0
_0809EDD0: .4byte gUnk_03000510
_0809EDD4:
	ldr r0, _0809EE48 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0809EE18
	ldr r5, _0809EE4C @ =gCurLevelInfo
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r4, _0809EE50 @ =gUnk_02026D50
_0809EDE6:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r5
	movs r6, #0xbf
	lsls r6, r6, #3
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r3
	bne _0809EE10
	adds r6, #0x66
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0809EE2A
_0809EE10:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0809EDE6
_0809EE18:
	movs r0, #1
	cmp r0, #0
	beq _0809EE2A
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
_0809EE2A:
	ldrh r1, [r7, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0809EE58
	movs r3, #8
	ldrsh r0, [r7, r3]
	cmp r0, #0
	beq _0809EE54
	movs r5, #0x80
	lsls r5, r5, #5
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r7, #6]
	b _0809EF7C
	.align 2, 0
_0809EE48: .4byte gUnk_0203AD44
_0809EE4C: .4byte gCurLevelInfo
_0809EE50: .4byte gUnk_02026D50
_0809EE54:
	movs r0, #1
	strh r0, [r7, #8]
_0809EE58:
	ldrb r0, [r7, #1]
	cmp r0, #0x12
	bne _0809EEC2
	ldr r6, _0809EF38 @ =gRngVal
	ldr r0, [r6]
	ldr r5, _0809EF3C @ =0x00196225
	muls r0, r5, r0
	ldr r4, _0809EF40 @ =0x3C6EF35F
	adds r0, r0, r4
	adds r3, r0, #0
	muls r3, r5, r3
	adds r3, r3, r4
	str r3, [r6]
	lsrs r1, r3, #0x10
	movs r0, #0xf
	mov sb, r0
	adds r0, r1, #0
	mov r2, sb
	ands r0, r2
	movs r2, #7
	mov r8, r2
	ands r1, r2
	adds r0, r0, r1
	movs r2, #0xc
	subs r0, r2, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3c]
	adds r0, r3, #0
	muls r0, r5, r0
	adds r0, r0, r4
	muls r0, r5, r0
	adds r0, r0, r4
	str r0, [r6]
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	mov r3, sb
	ands r1, r3
	mov r5, r8
	ands r0, r5
	adds r1, r1, r0
	subs r2, r2, r1
	lsls r2, r2, #8
	strh r2, [r7, #0x3e]
	ldr r0, _0809EF44 @ =0x0000FFC0
	strh r0, [r7, #4]
	movs r6, #8
	ldrsh r0, [r7, r6]
	cmp r0, #0
	bne _0809EEC2
	ldrh r0, [r7, #6]
	movs r1, #4
	orrs r0, r1
	strh r0, [r7, #6]
_0809EEC2:
	ldrb r0, [r7, #1]
	cmp r0, #0x24
	bne _0809EF1C
	ldr r6, _0809EF38 @ =gRngVal
	ldr r0, [r6]
	ldr r5, _0809EF3C @ =0x00196225
	muls r0, r5, r0
	ldr r4, _0809EF40 @ =0x3C6EF35F
	adds r0, r0, r4
	adds r3, r0, #0
	muls r3, r5, r3
	adds r3, r3, r4
	str r3, [r6]
	lsrs r1, r3, #0x10
	movs r0, #0xf
	mov sb, r0
	adds r0, r1, #0
	mov r2, sb
	ands r0, r2
	movs r2, #7
	mov r8, r2
	ands r1, r2
	adds r0, r0, r1
	movs r2, #0xc
	subs r0, r2, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3c]
	adds r0, r3, #0
	muls r0, r5, r0
	adds r0, r0, r4
	muls r0, r5, r0
	adds r0, r0, r4
	str r0, [r6]
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	mov r3, sb
	ands r1, r3
	mov r5, r8
	ands r0, r5
	adds r1, r1, r0
	subs r2, r2, r1
	lsls r2, r2, #8
	strh r2, [r7, #0x3e]
	movs r0, #0x40
	strh r0, [r7, #4]
_0809EF1C:
	ldrb r0, [r7, #1]
	cmp r0, #0x11
	bls _0809EF48
	ldrh r0, [r7, #0x3e]
	subs r0, #0x40
	ldrb r1, [r7, #1]
	subs r1, #0x12
	lsls r1, r1, #4
	subs r0, r0, r1
	strh r0, [r7, #0x3e]
	ldrh r0, [r7, #4]
	adds r0, #7
	b _0809EF5E
	.align 2, 0
_0809EF38: .4byte gRngVal
_0809EF3C: .4byte 0x00196225
_0809EF40: .4byte 0x3C6EF35F
_0809EF44: .4byte 0x0000FFC0
_0809EF48:
	ldrh r1, [r7, #0x3e]
	subs r1, #0x40
	ldrb r0, [r7, #1]
	lsls r0, r0, #4
	subs r1, r1, r0
	strh r1, [r7, #0x3e]
	ldrh r0, [r7, #4]
	ldrh r6, [r7, #0x3c]
	adds r1, r0, r6
	strh r1, [r7, #0x3c]
	subs r0, #7
_0809EF5E:
	strh r0, [r7, #4]
	movs r0, #0x3c
	ldrsh r1, [r7, r0]
	mov r2, ip
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	movs r3, #0x3e
	ldrsh r1, [r7, r3]
	ldr r0, [r2, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x38]
	adds r0, r7, #0
	bl sub_0806FAC8
_0809EF7C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
