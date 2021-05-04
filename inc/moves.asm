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
	
;rotate
