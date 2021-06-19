INCLUDE "src/include/hardware.inc"

; swap([bc], [de]) [10 cyc]
swapBytes: MACRO
	ld a, [bc]
    ld l, a
    ld a, [de]
    ld [bc], a
    ld a, l
    ld [de], a
ENDM

; \1 = shadow sprites address
initOAM: MACRO
	ld a, HIGH( \1 )
	call hOAMDMA
ENDM

vBlankInit: MACRO
	xor a
	ldh [hVBlankFlag], a	
	ld a, 1
    ld [rIE], a
ENDM

wait_vram: MACRO
.waitVRAM\@
	ldh a, [rSTAT]
	and STATF_BUSY
	jr nz, .waitVRAM\@
ENDM

	