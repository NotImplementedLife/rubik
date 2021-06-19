SECTION "VARS", WRAM0


; Game mode

Gamemode::
	DS 1 ; 0 - normal, 1 - freestyle
GenerationSeed::
	DS 1
	
; Cube rotation

rotActive:: 
	DS 1
rotDir:: ; 0 = HL/HR  1 = HL1/HR1 2 = HL2/HR2
	DS 1  
	
; Brush slots
BshSlots::
	DS 27
	
