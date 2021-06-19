;--------------------------------------------------------------
;--------------------------------------------------------------
SECTION "Brush", ROM0 
;--------------------------------------------------------------


;-Func---------------------------------------------------------	
refreshBshSlots_Cube0::
;-----------------------------------------refreshBshSlots_Cube0
	ld de, CubeState
	ld bc, 27
	ld hl, BshSlots
	call loadMemory	
	ret
;-----------------------------------------refreshBshSlots_Cube0

	


;--------------------------------------------------------------
;--------------------------------------------------------------
SECTION "Brush Patterns", ROM0
;--------------------------------------------------------------

Brush0::
DB $02, $00, $27, $00, $72, $00, $20, $00, $04, $00, $4e, $00, $e4, $00, $40, $00 ; brightest
Brush1::
DB $00, $00, $77, $00, $77, $00, $77, $00, $00, $00, $77, $00, $77, $00, $77, $00
Brush2::
DB $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00
Brush3::
DB $ee, $11, $dd, $22, $bb, $44, $77, $88, $ee, $11, $dd, $22, $bb, $44, $77, $88
Brush4::
DB $5a, $a5, $c3, $3c, $24, $db, $99, $66, $99, $66, $24, $db, $c3, $3c, $5a, $a5
Brush5::
DB $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff ; darkest

BrushSlots::
DB $00, $01, $02, $03, $04, $05, $00, $01, $02, $03, $04, $05, $00, $01, $02, $03, $04, $05, $00, $01, $02, $03, $04, $05, $00, $01, $02

