SECTION "MOVES_SWAPS", ROMX

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


