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
	jp TitleScreen
;--------------------------------------------------SplashScreen


;-Entry--------------------------------------------------------	
TitleScreen:
;---------------------------------------------------TitleScreen
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
	call updateJoypadState
	call SetGamemode
	ld  a, [wJoypadPressed]
	and a, PADF_A
	jr z, .chooseGamemode	
	
	
	
	ld a, %00000000
	ld [rBGP], a		
	call waitForVBlank
	call clearVRAM
	jr Start
;---------------------------------------------------TitleScreen

;-Entry--------------------------------------------------------	
Start:	
;---------------------------------------------------------Start	
	call initWRAM0		
	
	call waitForVBlank	
	ld a, %10010001 	
    ld [rLCDC], a		
	ld [rOBP0], a
	ld a, $00
	ld [rOBP1], a
		
	call CopyDMARoutine	
	
	call copyCube0STAT
	call copyCube1STAT
	
	call loadCubeState0	
	call refreshBshSlots_Cube0
	call PaintTiles0			
	
	call waitForVBlank	
	ld a, %11100100
	ld [rBGP], a	
	
	call initOAM	
	ld a, [rLCDC]
	or LCDCF_OBJON
	ldh [rLCDC], a
		
	call hideRotations
	
.loop	
	call waitForVBlank		
	call updateJoypadState
	call ProcessInput
    jp .loop    
;---------------------------------------------------------Start

;-Func--------------------------------------------------------	
SetGamemode:
;--------------------------------------------------SetGamemode
	ld   a, [wJoypadPressed]
	and a, PADF_UP
	jr nz, .upPressed 
	ld   a, [wJoypadPressed]
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
	
	
	ret
;-------------------------------------------------ProcessInput


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
INCLUDE "inc/titleoptions.asm"
INCLUDE "inc/oam.asm"
	