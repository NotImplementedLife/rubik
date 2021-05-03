SECTION "Tile Masks Vars", WRAMX[$D000], ALIGN[8]
	
PaintTmp:
	DS $B00

SECTION "Tile Masks Logic", ROM0

;-Func---------------------------------------------------------	
ProcessPaintData:
;----------------------------------------------ProcessPaintData
; Arguments : 
;--------------------------------------------------------------	
;  de  =  target tile
;  hl  =  mask data 
;--------------------------------------------------------------	
	xor a
.loop3
	push af
	
	ld a, [hli]          ; load brush slot [1..27 | 0=inactive]
	cp 0
	jr z, .skipBrush
	dec a
	
	push hl
	ld b, 0
	ld c, a
	ld hl, BshSlots
	add hl, bc	
	ld a, [hl]           ; get brush id [0..5]	
	REPT(4)
		rlca             ; mul 16
	ENDR
	ld c, a
	ld hl, Brush0
	add hl, bc              	
	ld b, h
	ld c, l
	pop hl	
	
	; At this point:
	;  -  bc  points to  brush
	;  -  de  points to  target tile (WRAM1)
	;  -  hl  points to  tile mask
	; Next step: 
	;     target[i] |= Brush[i] & Mask[i] for 0<=i<16
	
	push de
	
	xor a
.paintLoop
	push af
		
	ld a, [hl]   ; a = M
	push hl	
		
	ld h, b
	ld l, c
	and [hl]     ; a = M & B
	inc bc
	
	ld h, d
	ld l, e
	or [hl]      ; a = T | (M & B)
	ld [hl], a   ; update Target[i]
	
	inc de
	
	pop hl		
	inc hl	
	
	pop af
	inc a	
	cp a, 16		
	jr nz, .paintLoop  ; end of tile paint
	
	pop de ; preserve target address for next brush
	; hl increased by 16 (next mask)		
.skipBrush
	
	pop af
	inc a
	cp 3
	jr nz, .loop3	
	
	; Increase de by 16 (go to next target) :
	ld a, e
	add $10
	ld e, a
	ret nc
	inc d
	ret
;----------------------------------------------ProcessPaintData



	
;-Func---------------------------------------------------------	
PaintTiles0:
;---------------------------------------------------PaintTiles0

	; load cube 0 "blank" tiles into memory
	ld hl, PaintTmp
	ld de, Cube0Tiles
	ld bc, $0B00
	call loadMemory	
	
	ld de, PaintTmp
	ld hl, TileMasks0	
	
	ld a, $39
.loop
	push af
	call ProcessPaintData
	pop af
	dec a
	cp 0
	jr nz, .loop
	
	
	ld de, PaintTmp
	ld bc, PaintTmp + $0B00 
	ld hl, $8000
	call loadMemorySTAT
	;halt
	ret
;---------------------------------------------------PaintTiles0	
	
	
	
	
	
	
	
	