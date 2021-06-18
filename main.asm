INCLUDE "../common/macros.inc"

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
	call CopyDMARoutine
	jp TitleScreen
;--------------------------------------------------SplashScreen


;-Entry--------------------------------------------------------	
TitleScreen:
;---------------------------------------------------TitleScreen
	xor a
	ld [rBGP], a
	call initWRAM0
	
	ld hl, SpritesData
	ld de, ArrowsData
	ld bc, 160
	call loadMemory	
	
	call copyTitleScreen
	call waitForVBlank
	ld a, %10010001 	
    ld [rLCDC], a	
	ld a, %11100100
	ld [rBGP], a	
	
	call initInputWRAM	
.loop
	call waitForVBlank		
	call updateJoypadState
	ld a, [wJoypadPressed]
	and a, PADF_START
	jr z, .loop
	call waitForVBlank	
	
	xor a
	ld [Gamemode], a
	
	ld hl, $8AF0
	ld de, TitleOptionsTiles
	ld bc, TitleOptionsTiles + 16*26
	call loadMemorySTAT		
	
.chooseGamemode
	ld a, [GenerationSeed]
	inc a
	ld [GenerationSeed], a
	
	call updateJoypadState
	call SetGamemode
	ld  a, [wJoypadPressed]
	and a, PADF_A
	jr z, .chooseGamemode	
	
	call loadCubeState0	
	call refreshBshSlots_Cube0
	ld a, [Gamemode]
	cp 0 ; Normal
	jr nz, .fin
	
	call shuffle		
	call refreshBshSlots_Cube0
		
.fin:
	; create CubeState backup	
	ld hl, CubeStateBackup
	ld de, CubeState
	ld bc, 54	
	call loadMemory
	ld a, %00000000
	ld [rBGP], a		
	call waitForVBlank
	call clearVRAM
	;jr Start
;---------------------------------------------------TitleScreen

;-Entry--------------------------------------------------------	
Start:	
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
SetGamemode:
;--------------------------------------------------SetGamemode
	ld   a, [wJoypadPressed]
	and a, PADF_UP
	jr nz, .upPressed 
	ld a, [wJoypadPressed]
	and a, PADF_DOWN
	jr nz, .downPressed
	ret z
.upPressed:
	ld a, [Gamemode]
	dec a
	and 1
	jr .fin
.downPressed:
	ld a, [Gamemode]
	inc a
	and 1
.fin:
	ld [Gamemode], a
	cp a, 0
	jr z, .setNormal
	cp a, 1
	jr z, .setFreeStyle
	
.setNormal:
	ld hl, $8AF0
	ld de, TitleOptionsTiles
	ld bc, TitleOptionsTiles + 16*26
	call loadMemorySTAT		
	ret
.setFreeStyle:
	ld hl, $8AF0
	ld de, TitleOptionsTiles + 16*26
	ld bc, TitleOptionsTiles + 2*16*26
	call loadMemorySTAT		
	ret
;--------------------------------------------------SetGamemode

;-Func--------------------------------------------------------	
ProcessInput:
;-------------------------------------------------ProcessInput
	ld a, [rotCooldown]		
	or a
	jr nz, .proceed
	dec a
	ld [rotCooldown], a
	ret
.proceed
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
	jp Pause ; leave function, but jump execute pause menu logic
;-------------------------------------------------ProcessInput

;-Func--------------------------------------------------------	
shuffle:
;------------------------------------------------------shuffle
	ld e, 50
	ld a, [GenerationSeed]		
.loop:		
	add a, 27	
	ld d, a		
	push de
	
	ld a, d
	and %0011100
	srl a
	srl a	
	cp 0
	push af
	call z, moveML
	pop af
	cp 1
	push af
	call z, moveHR
	pop af
	cp 2
	push af
	call z, moveHL1
	pop af
	cp 3
	push af
	call z, moveMR
	pop af
	cp 4
	push af
	call z, moveHL2
	pop af
	cp 5
	push af
	call z, moveHR2
	pop af
	cp 6
	push af
	call z, moveHL
	pop af
	cp 7
	push af
	call z, moveHR1
	pop af
.skipH			
	pop de	
	
	ld a, e
	dec a
	or a
	ld e, a
	ld a, d
	jr nz, .loop	
	ret
;------------------------------------------------------shuffle


;--------------------------------------------------------------
;--------------------------------------------------------------
;                         Dependencies
;--------------------------------------------------------------
;--------------------------------------------------------------


; Header
INCLUDE "header.asm"

; Resources

INCLUDE "res/cube.asm"
INCLUDE "res/masks.asm"
INCLUDE "res/moves.asm"
INCLUDE "res/titlescreen.asm"
INCLUDE "res/titleoptions.asm"
INCLUDE "res/oam.asm"

; Routines
INCLUDE "../common/inc/vblank.asm"
INCLUDE "../common/inc/memory.asm"
INCLUDE "../common/inc/splash.asm"
INCLUDE "../common/inc/input.asm"
INCLUDE "../common/inc/oam.asm"

INCLUDE "inc/brush.asm"
INCLUDE "inc/cube.asm"
INCLUDE "inc/masks.asm"
INCLUDE "inc/moves.asm"
INCLUDE "inc/pausemenu.asm"
INCLUDE "inc/titleoptions.asm"
	