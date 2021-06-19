INCLUDE "src/include/hardware.inc"

SECTION "TitleScreen", ROM0
;-Entry--------------------------------------------------------	
TitleScreen::
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
	
	xor a
	ld [wJoypadState], a
	ld [wJoypadPressed], a
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
	jp Start
;---------------------------------------------------TitleScreen


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
copyTitleScreen:
;----------------------------------------------copyTitleScreen
	; copy digital tilemap to VRAM
	ld hl, $8000
	ld de, TitleScreenTiles
	ld bc, TitleScreenTilesEnd;-TitleScreenTiles
	call loadMemorySTAT		
		
	ld hl, $9800
	ld de, TitleScreenTileMap
	ld bc, TitleScreenTileMap + 18*32
	call loadMemorySTAT
	
	ret
;----------------------------------------------copyTitleScreen


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