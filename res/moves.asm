SECTION "MOVES_SWAPS", ROMX

Rot4_dabc: MACRO
	DB \4, \3
	DB \3, \2
	DB \2, \1
	
ENDM

Rot4_bcda: MACRO
	DB \1, \2
	DB \2, \3
	DB \3, \4
	
ENDM

swaps_ML:
swaps_HL:
	DB $00, $03
	DB $05, $08
	DB $03, $05
	
	DB $01, $06
	DB $06, $02
	DB $06, $07

	DB $09, $12
	DB $12, $1B
	DB $1B, $24	
	
	DB $0A, $13
	DB $13, $1C
	DB $1C, $25
	
	DB $0B, $14
	DB $14, $1D
	DB $1D, $26

;   swaps_HL_End

	DB $0C, $15
	DB $15, $1E
	DB $1E, $27	
	
	DB $0D, $16
	DB $16, $1F
	DB $1F, $28
	
	DB $0E, $17
	DB $17, $20
	DB $20, $29
	
	DB $0F, $18
	DB $18, $21
	DB $21, $2A
	
	DB $10, $19
	DB $19, $22
	DB $22, $2B
	
	DB $11, $1A
	DB $1A, $23
	DB $23, $2C
	
	DB $2D, $30
	DB $32, $35
	DB $30, $32
	
	DB $2E, $33
	DB $33, $2F
	DB $33, $34
	
; swaps_HL_End
	
	

swaps_MR:
swaps_HR:
	DB $00, $03
	DB $00, $08
	DB $00, $05	
	
	DB $06, $07
	DB $06, $01
	DB $01, $02

	DB $1B, $24		
	DB $12, $1B	
	DB $09, $12
		
	DB $1C, $25
	DB $13, $1C
	DB $0A, $13
	
	DB $1D, $26
	DB $14, $1D
	DB $0B, $14	
	
; swaps_MR_End

	DB $1E, $27		
	DB $15, $1E
	DB $0C, $15
		
	DB $1F, $28
	DB $16, $1F
	DB $0D, $16
	
	DB $20, $29
	DB $17, $20
	DB $0E, $17
	
	DB $21, $2A		
	DB $18, $21
	DB $0F, $18
		
	DB $22, $2B
	DB $19, $22
	DB $10, $19
	
	DB $23, $2C
	DB $1A, $23
	DB $11, $1A
	
	DB $2D, $30
	DB $2D, $45
	DB $2D, $32	
	
	DB $33, $34
	DB $33, $2E
	DB $2E, $2F

; swaps_HR_End

swaps_HL2:
	Rot4_dabc $12, $18, $1A, $14
	Rot4_dabc $13, $15, $19, $17
	
	Rot4_dabc $05, $0B, $35, $21
	Rot4_dabc $07, $0E, $34, $1E
	Rot4_dabc $08, $11, $32, $1B
	
	Rot4_dabc $02, $0A, $33, $22
	Rot4_dabc $04, $0D, $31, $1F
	Rot4_dabc $06, $10, $2F, $1C
	
	Rot4_dabc $00, $09, $30, $23
	Rot4_dabc $01, $0C, $2E, $20
	Rot4_dabc $03, $0F, $2D, $1D
	
	Rot4_dabc $24, $26, $2C, $2A
	Rot4_dabc $25, $29, $2B, $27
	
swaps_HL2_END:

swaps_HR2:
	Rot4_bcda $12, $18, $1A, $14
	Rot4_bcda $13, $15, $19, $17
	
	Rot4_bcda $05, $0B, $35, $21
	Rot4_bcda $07, $0E, $34, $1E
	Rot4_bcda $08, $11, $32, $1B
	
	Rot4_bcda $02, $0A, $33, $22
	Rot4_bcda $04, $0D, $31, $1F
	Rot4_bcda $06, $10, $2F, $1C
	
	Rot4_bcda $00, $09, $30, $23
	Rot4_bcda $01, $0C, $2E, $20
	Rot4_bcda $03, $0F, $2D, $1D
	
	Rot4_bcda $24, $26, $2C, $2A
	Rot4_bcda $25, $29, $2B, $27
	
swaps_HR2_END:

swaps_HL1:	
	
	Rot4_dabc $09, $0F, $11, $0B
	Rot4_dabc $0A, $0C, $10, $0E
	
	Rot4_dabc $08, $26, $30, $18
	Rot4_dabc $06, $29, $33, $15
	Rot4_dabc $03, $2C, $35, $12
	
	Rot4_dabc $07, $25, $2E, $19
	Rot4_dabc $04, $28, $31, $16
	Rot4_dabc $01, $2B, $34, $13
	
	Rot4_dabc $05, $24, $2D, $1A
	Rot4_dabc $02, $27, $2F, $17
	Rot4_dabc $00, $2A, $32, $14
	
	Rot4_dabc $1B, $1D, $23, $21
	Rot4_dabc $1E, $1C, $20, $22
swaps_HL1_END:

; To invert the rotation direction, reverse DBs:
; E.g.
;    Left              Right
;   DB X,Y            DB Z,X
;   DB Y,Z            DB Y,Z
;   DB Z,X            DB X,Y
;
; possible memory optimization: on rotate right, 
; parse bytes from swaps_AAA_END to swaps_AAA

swaps_HR1:	
	
	Rot4_bcda $09, $0F, $11, $0B
	Rot4_bcda $0A, $0C, $10, $0E
	
	Rot4_bcda $08, $26, $30, $18
	Rot4_bcda $06, $29, $33, $15
	Rot4_bcda $03, $2C, $35, $12
	
	Rot4_bcda $07, $25, $2E, $19
	Rot4_bcda $04, $28, $31, $16
	Rot4_bcda $01, $2B, $34, $13
	
	Rot4_bcda $05, $24, $2D, $1A
	Rot4_bcda $02, $27, $2F, $17
	Rot4_bcda $00, $2A, $32, $14
	
	Rot4_bcda $1B, $1D, $23, $21
	Rot4_bcda $1E, $1C, $20, $22
swaps_HR1_END:







