SECTION "Header", ROM0[$100]
	di
	jp EntryPoint
	
	DS $150 - @, 0

SECTION "Entry point", ROM0

EntryPoint:
	call HbOwlSplashScreen
	jr @