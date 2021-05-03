
;--------------------------------------------------------------
;--------------------------------------------------------------
;                         Main SECTION
;--------------------------------------------------------------
;--------------------------------------------------------------


SECTION "Main", ROM0

;-Entry--------------------------------------------------------
SplashScreen:
;--------------------------------------------------SplashScreen
	call doSplash	
	jp Start	
;--------------------------------------------------SplashScreen


;-Entry--------------------------------------------------------	
Start:	
;---------------------------------------------------------Start	
	call initWRAM0
	ld de, BrushSlots
	ld bc, 27
	ld hl, BshSlots
	call loadMemory
	
	call waitForVBlank
	ld a, %10010001 
	;ld a, %10001001 
    ld [rLCDC], a	
	ld a, %11100100
	ld [rBGP], a		
	call copyCubesSTAT
	
	
		
	call PaintTiles0
	;halt
.loop	
	REPT(100)
	call waitForVBlank	
	ENDR
	;call PaintTiles0
	ld a, [rLCDC]
	xor %00011000
	;ld [rLCDC], a		
    jp .loop    
;---------------------------------------------------------Start



;--------------------------------------------------------------
;--------------------------------------------------------------
;                         Dependencies
;--------------------------------------------------------------
;--------------------------------------------------------------


; Header
INCLUDE "header.asm"

; Resources
INCLUDE "../common/res/HomebrewOwlLogo.asm"
INCLUDE "../common/res/AuthorCredit.asm"

INCLUDE "res/cube.asm"
INCLUDE "res/masks.asm"

; Routines
INCLUDE "../common/inc/vblank.asm"
INCLUDE "../common/inc/memory.asm"
INCLUDE "../common/inc/splash.asm"

INCLUDE "inc/brush.asm"
INCLUDE "inc/cube.asm"
INCLUDE "inc/masks.asm"
	