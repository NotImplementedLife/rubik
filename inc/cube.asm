SECTION "CUBE", ROM0

copyCubesSTAT:
	ld de, Cube0Tiles
	ld bc, Cube0TilesEnd
	ld hl, $8000
	call loadMemorySTAT
	
	ld de, Cube1Tiles
	ld bc, Cube1TilesEnd
	ld hl, $8D00
	call loadMemorySTAT	
	
	ld de, Cube0Tilemap
	ld bc, Cube0TilemapEnd
	ld hl, $9800
	call loadMemorySTAT
		
	ld de, Cube1Tilemap
	ld bc, Cube1TilemapEnd
	ld hl, $9C00
	call loadMemorySTAT
	ret
	
