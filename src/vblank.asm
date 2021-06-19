SECTION "Vblank VARS", HRAM

hVBlankFlag::
	DS 1
	

SECTION "VBlank Interrupt", ROM0[$40]
	push af
    xor a
    ldh [hVBlankFlag], a
    pop af
    reti
	


SECTION "VBLANK_ASM", ROM0

waitForVBlank::	
	ld a, 1
	ldh [hVBlankFlag], a
.loop
    halt    
    ldh a, [hVBlankFlag]
    and a
    jr nz, .loop
	ret	
	
