SECTION "CUBE_HVARS", WRAM0, ALIGN[8]
CubeState:
	DS 54

SECTION "CUBE", ROM0

CubeState0:
	DB 0,1,2,3,4,5,0,1,2
	REPT(9)
		DB 0
	ENDR
	REPT(9)
		DB 1
	ENDR
	REPT(9)
		DB 2
	ENDR
	REPT(9)
		DB 3
	ENDR
	REPT(9)
		DB 4
	ENDR
	REPT(9)
		DB 5
	ENDR
	
loadCubeState0:
	ld hl, CubeState
	ld de, CubeState0
	ld bc, 54
	call loadMemory
	ret

;-Func---------------------------------------------------------	
copyCube0STAT:
;-------------------------------------------------copyCube0STAT
	ld de, Cube0Tiles
	ld bc, Cube0TilesEnd
	ld hl, $8000
	call loadMemorySTAT
	
	ld de, Cube0Tilemap
	ld bc, Cube0TilemapEnd
	ld hl, $9800
	call loadMemorySTAT	
	ret
;-------------------------------------------------copyCube0STAT
	

	
;-Func---------------------------------------------------------	
copyCube1STAT:
;-------------------------------------------------copyCube1STAT
	ld de, Cube1Tiles
	ld bc, Cube1TilesEnd
	ld hl, $8D00
	call loadMemorySTAT	
		
		
	ld de, Cube1Tilemap
	ld bc, Cube1TilemapEnd
	ld hl, $9C00
	call loadMemorySTAT
	ret
;-------------------------------------------------copyCube1STAT
	

