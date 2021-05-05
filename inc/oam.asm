SECTION "OAM Logic", ROM0

initOAM:
	ld a, HIGH(SpritesData)
	call hOAMDMA
	ret
