INCLUDE "src/include/macros.inc"

SECTION "Main", ROM0

;-Entry--------------------------------------------------------	
Start::	
;---------------------------------------------------------Start			
	
	call waitForVBlank	
	ld a, %10010001 	
    ld [rLCDC], a		
	ld [rOBP0], a
	ld a, $00
	ld [rOBP1], a
	
	call copyCube0STAT
	call copyCube1STAT
	
	;call loadCubeState0	
	;call refreshBshSlots_Cube0
	call PaintTiles0
	
	call waitForVBlank	
	ld a, %11100100
	ld [rBGP], a	
	
	initOAM SpritesData	
	
	ld a, [rLCDC]
	or LCDCF_OBJON
	ldh [rLCDC], a
		
	call hideRotations	
	
.loop	
	call waitForVBlank		
	call updateJoypadState
	call ProcessInput
    jr .loop    
;---------------------------------------------------------Start

;-Entry--------------------------------------------------------	
Pause:
;---------------------------------------------------------Pause
	call PauseMenuInit
	ld hl, SpritesData
	ld de, PauseMenuData
	ld bc, 160
	call loadMemory
	call waitForVBlank
	initOAM SpritesData
.loop
	call waitForVBlank
	call updateJoypadState
	ld a, [wJoypadPressed]
	and a, PADF_DOWN
	call nz, PauseMenuDown
	ld a, [wJoypadPressed]
	and a, PADF_UP	
	call nz, PauseMenuUp
	
	ld a, [wJoypadPressed]
	and a, PADF_B
	jr nz, .justLeavePauseMenu
	
	ld a, [wJoypadPressed]
	and a, PADF_A
	jr z, .loop
		
	ld hl, SpritesData
	ld de, ArrowsData
	ld bc, 160
	call loadMemory
	call waitForVBlank
	initOAM SpritesData
	call hideRotations
	
	ld a, [pmCrtSelected]
	cp 2
	jp z, TitleScreen
	cp 1
	jp nz, Start.loop
		
	; Restore backup
	ld hl, CubeState
	ld de, CubeStateBackup
	ld bc, 54
	call loadMemory
	
	call refreshBshSlots_Cube0
	call PaintTiles0	
	
	jp Start.loop
		
.justLeavePauseMenu
	;restore sprites	
	ld hl, SpritesData
	ld de, ArrowsData
	ld bc, 160
	call loadMemory
	call waitForVBlank
	initOAM SpritesData
	call hideRotations		
	
	jp Start.loop
	
		
;---------------------------------------------------------Pause

;-Func--------------------------------------------------------	
ProcessInput:
;-------------------------------------------------ProcessInput		
	ld   a, [wJoypadPressed]
	and a, PADF_SELECT
	
	call nz, nextRotDir
	
	ld   a, [wJoypadPressed]
	and a, PADF_B
	call nz, disableRot

	ld   a, [wJoypadPressed]
	and a, PADF_LEFT		
	call nz, handleLeftPressed
	
	ld   a, [wJoypadPressed]
	and a, PADF_RIGHT	
	call nz, handleRightPressed
	
	ld a, [wJoypadPressed]
	and a, PADF_START			
	
	jr nz, .launchPause			
	ret
.launchPause
	pop bc   ; immitate ret without exiting function
	xor a
	ld [rotActive], a ; disable hard rotations
	jp Pause ; leave function, but jump execute pause menu logic
;-------------------------------------------------ProcessInput
