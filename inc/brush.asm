SECTION "BrushVars", WRAM0

; iterator (0-64)
BshCnt: 
	DS 1

;SECTION "BrushVarsW", WRAM0, ALIGN[8]
BshWorkspace:
	DS 16
BshSlots:
	DS 27
	
SECTION "Brush", ROM0 

;-Func---------------------------------------------------------
; args:
; hl = brush address
; bc = mask  address
; de = tile  address
PaintTile:	
	xor a
.loop
	ld [BshCnt], a	
		
	ld a, [hl]   ; a = B
	push hl	
		
	ld h, b
	ld l, c
	and [hl]     ; a = B & M
	inc bc
	
	ld h, d
	ld l, e
	or [hl]      ; a = T | (B & M)
	ld [hl], a
	inc de
	
	pop hl		
	inc hl	
	
	ld a, [BshCnt]
	inc a	
	cp a, 16		
	jr nz, .loop
	
	ret
;-----------------------------------------------------PaintTile

CopyPaintedTile:
	ld de, BshWorkspace
	ld bc, BshWorkspace + 16
	call loadMemorySTAT
	ret


;--------------------------------------------------------------
SECTION "Brush Patterns", ROM0
;--------------------------------------------------------------

Brush0:
DB $02, $00, $27, $00, $72, $00, $20, $00, $04, $00, $4e, $00, $e4, $00, $40, $00 ; brightest
Brush1:
DB $00, $00, $77, $00, $77, $00, $77, $00, $00, $00, $77, $00, $77, $00, $77, $00
Brush2:
DB $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00
Brush3:
DB $ee, $11, $dd, $22, $bb, $44, $77, $88, $ee, $11, $dd, $22, $bb, $44, $77, $88
Brush4:
DB $5a, $a5, $c3, $3c, $24, $db, $99, $66, $99, $66, $24, $db, $c3, $3c, $5a, $a5
Brush5:
;DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; darkest
DB $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff ; darkest

BrushSlots:
DB $00, $01, $02, $03, $04, $05, $00, $01, $02, $03, $04, $05, $00, $01, $02, $03, $04, $05, $00, $01, $02, $03, $04, $05, $00, $01, $02

;--------------------------------------------------------------
SECTION "Brush Display Array", WRAM0
;--------------------------------------------------------------

BrushDispArray:
DS 27

