INCLUDE "src/include/macros.inc"

SECTION "Header", ROM0[$100]
	nop
	jp EntryPoint
	
	DS $150 - @, 0

SECTION "Entry point", ROM0

EntryPoint:
	call HbOwlSplashScreen
	call CopyDMARoutine
	ei
	vBlankInit
	jp TitleScreen