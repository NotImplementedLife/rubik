pmCrtOAM0 EQU $26

SECTION "PauseMenu VARS", WRAM0

pmCrtSelected:
	DS 1
pmCrtOAM:
	DS 1

SECTION "PauseMenu LOGIC", ROM0

PauseMenuInit:
	xor a
	ld [pmCrtSelected], a
	ld a, pmCrtOAM0
	ld [pmCrtOAM], a
	ret

PauseMenuUpdate:
	; reset [pmCrtOam] to empty
	ld b, $FE	
	ld a, [pmCrtOAM]
	ld c, a
	ld a, $C0 ; bg tile
	ld [bc], a
	; set arrow to {pmCrtSelected} option
	ld a, [pmCrtSelected]  ; 0<=a<=2
	swap a
	sla a	               ; swap a, sla a <=> a>>=5
	add a, pmCrtOAM0
	ld c, a
	ld a, $C1
	ld [bc], a	
	ld a, c
	ld [pmCrtOAM], a
	ret

PauseMenuUp:
	ld a, [pmCrtSelected]
	dec a
	cp a, $FF
	jr nz, .skip2
	ld a, 2	
.skip2
	ld [pmCrtSelected], a
	call PauseMenuUpdate
	ret

	
PauseMenuDown:
	ld a, [pmCrtSelected]
	inc a
	cp a, 3
	jr nz, .skip0
	xor a
.skip0
	ld [pmCrtSelected], a
	call PauseMenuUpdate
	ret
