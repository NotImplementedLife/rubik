SECTION "MOVES", ROM0

swapCubeStates: MACRO
	; assume b = d = HIGH(CubeState)
	ld a, \1
	ld c, a
	ld a, \2
	ld e, a
	ld a, [bc]
    ld l, a
    ld a, [de]
    ld [bc], a
    ld a, l
    ld [de], a
ENDM

; \1 = src
; \2 = sz
performSwaps: MACRO
	ld hl, \1
	ld a, \2
.performSwaps_loop:
	push af
	push hl
	swapCubeStates [hli], [hli]
	pop hl
	inc hl
	inc hl
	pop af
	dec a
	cp 0	
	jr nz, .performSwaps_loop
ENDM

; Brush slots manipulators

moveML: ; top layer move left
	ld b, HIGH(CubeState)
	ld d, b	
	performSwaps swaps_ML, 15
	ret
	
moveHL: ; whole cube rotate left
	ld b, HIGH(CubeState)
	ld d, b	
	performSwaps swaps_HL, 39
	ret
	
moveMR: ; top layer move right
	ld b, HIGH(CubeState)
	ld d, b	
	performSwaps swaps_MR, 15
	ret
	
moveHR: ; whole cube rotate right
	ld b, HIGH(CubeState)
	ld d, b	
	performSwaps swaps_HR, 39
	ret
	
moveHL2: ; whole cube rotate left along the axis intersecting face 2 (right)
	ld b, HIGH(CubeState)
	ld d, b	
	performSwaps swaps_HL2, ((swaps_HL2_END-swaps_HL2)/2)
	ret
	
moveHR2: ; whole cube rotate right along the axis intersecting face 2 (right)
	ld b, HIGH(CubeState)
	ld d, b	
	performSwaps swaps_HR2, ((swaps_HR2_END-swaps_HR2)/2)
	ret
	
moveHL1: ; whole cube rotate left along the axis intersecting face 1 (left)
	ld b, HIGH(CubeState)
	ld d, b	
	performSwaps swaps_HL1, ((swaps_HL1_END-swaps_HL1)/2)
	ret

moveHR1: ; whole cube rotate right along the axis intersecting face 1 (left)
	ld b, HIGH(CubeState)
	ld d, b	
	performSwaps swaps_HR1, ((swaps_HR1_END-swaps_HR1)/2)
	ret

; Command routines

performML:
	ld b, HIGH(CubeState)
	ld d, b	
	swapCubeStates $08, $05
	swapCubeStates $05, $02
	swapCubeStates $00, $02
	swapCubeStates $00, $03
	swapCubeStates $03, $06

	swapCubeStates $09, $12
	swapCubeStates $0A, $13
	swapCubeStates $0B, $14
	
	call refreshBshSlots_Cube0
	call PaintTiles1
	call waitForVBlank	
	ld a, [rLCDC]
	xor %00011000
	ld [rLCDC], a
	
	ld b, HIGH(CubeState)
	ld d, b	
	swapCubeStates $0B, $14
	swapCubeStates $0A, $13
	swapCubeStates $09, $12
	
	swapCubeStates $03, $06
	swapCubeStates $00, $03
	swapCubeStates $00, $02
	swapCubeStates $05, $02
	swapCubeStates $08, $05
	
	call moveML
	call refreshBshSlots_Cube0
		
	call PaintTiles0
	call waitForVBlank		
	ld a, [rLCDC]
	xor %00011000
	ld [rLCDC], a	
	
	ret
	
performMR:
	ld b, HIGH(CubeState)
	ld d, b	

	swapCubeStates $01, $02
	swapCubeStates $02, $05
	swapCubeStates $05, $07
	swapCubeStates $07, $06
	swapCubeStates $06, $03
	
	
	call refreshBshSlots_Cube0
	call PaintTiles1
	call waitForVBlank	
	ld a, [rLCDC]
	xor %00011000
	ld [rLCDC], a
	
	ld b, HIGH(CubeState)
	ld d, b	
	
	swapCubeStates $06, $03
	swapCubeStates $07, $06
	swapCubeStates $05, $07
	swapCubeStates $02, $05
	swapCubeStates $01, $02	
	
	call moveMR
	call refreshBshSlots_Cube0
		
	call PaintTiles0
	call waitForVBlank		
	ld a, [rLCDC]
	xor %00011000
	ld [rLCDC], a	
	ret
	
	
	
	
	
	
	
	
	
	
	


