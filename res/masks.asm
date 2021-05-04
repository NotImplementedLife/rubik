SECTION "Tile masks Paint Data", ROMX

TileMasks0:
; ~ $8000
DB $00 ; brush 1 inactive
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive
DB $00 ; brush 4 inactive

; ~ $8010
DB $01 ; brush 1 slot 1
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive
DB $00 ; brush 4 inactive

; ~ $8020
DB $01 ; brush 1 active ; slot 1
DB $00, $00, $00, $00, $07, $07, $0f, $0f, $1f, $1f, $7f, $7f, $ff, $ff, $ff, $ff
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive
DB $00 ; brush 4 inactive

; ~ $8030
DB $01  ; brush 1 slot 1
DB $00, $00, $00, $00, $80, $80, $c0, $c0, $e0, $e0, $f8, $f8, $fc, $fc, $ff, $ff
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive
DB $00 ; brush 4 inactive

; ~ $8040
DB $00 ; brush 1 inactive
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive
DB $00 ; brush 4 inactive

; ~ $8050
DB $00 ; brush 1 inactive
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive
DB $00 ; brush 4 inactive

; ~ $8060
DB $02 ; brush 1 slot 1
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $07, $0f, $0f, $1f, $1f
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive
DB $00 ; brush 4 inactive

; ~ $8070
DB $01 ; brush 1 slot 1
DB $07, $07, $1f, $1f, $3f, $3f, $ff, $ff, $3f, $3f, $1f, $1f, $07, $07, $03, $03
DB $02 ; brush 2 slot 2
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $80, $c0, $c0
DB $00 ; brush 3 inactive
DB $00 ; brush 4 inactive

; ~ $8080
DB $01 ; brush 1 slot 1
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive
DB $00 ; brush 4 inactive

; ~ $8090
DB $01 ; brush 1 slot 1
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive
DB $00 ; brush 4 inactive

; ~ $80A0
DB $01
DB $80, $80, $e0, $e0, $f0, $f0, $fc, $fc, $f8, $f8, $e0, $e0, $c0, $c0, $00, $00
DB $03
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $07, $07, $0f, $0f
DB $00
DB $00 ; brush 4 inactive

; ~ $80B0
DB $03
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $80, $c0, $c0, $e0, $e0
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive
DB $00 ; brush 4 inactive

; ~ $80C0
DB $00 ; brush 1 inactive
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive
DB $00 ; brush 4 inactive

; ~ $80D0
DB $02
DB $00, $00, $00, $00, $03, $03, $07, $07, $1f, $1f, $3f, $3f, $7f, $7f, $1f, $1f
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive
DB $00 ; brush 4 inactive

; ~ $80E0
DB $02
DB $7f, $7f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive
DB $00 ; brush 4 inactive

; ~ $80F0
DB $01
DB $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $02
DB $f0, $f0, $f8, $f8, $fe, $fe, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00 ; brush 3 inactive
DB $00 ; brush 4 inactive

; ~ $8100
DB $01
DB $ff, $ff, $7f, $7f, $3f, $3f, $0f, $0f, $07, $07, $01, $01, $00, $00, $00, $00
DB $02
DB $00, $00, $00, $00, $00, $00, $00, $00, $c0, $c0, $e0, $e0, $f8, $f8, $f8, $f8
DB $00
DB $00 ; brush 4 inactive

; ~ $8110
DB $01
DB $fe, $fe, $fc, $fc, $f0, $f0, $e0, $e0, $80, $80, $00, $00, $00, $00, $00, $00
DB $03
DB $00, $00, $00, $00, $00, $00, $03, $03, $07, $07, $1f, $1f, $3f, $3f, $3f, $3f
DB $00
DB $00 ; brush 4 inactive

; ~ $8120
DB $03
DB $1f, $1f, $7f, $7f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8130
DB $03
DB $f8, $f8, $fc, $fc, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8140
DB $03
DB $00, $00, $00, $00, $00, $00, $80, $80, $e0, $e0, $f0, $f0, $fc, $fc, $f8, $f8
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8150
DB $00 ; brush 1 inactive
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive
DB $00 ; brush 4 inactive

; ~ $8160
DB $04
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $07, $07, $1f, $1f
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive
DB $00 ; brush 4 inactive

; ~ $8170
DB $04
DB $07, $07, $0f, $0f, $1f, $1f, $7f, $7f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive
DB $00 ; brush 4 inactive

; ~ $8180
DB $04
DB $80, $80, $c0, $c0, $e0, $e0, $f8, $f8, $fc, $fc, $ff, $ff, $ff, $ff, $ff, $ff
DB $02
DB $0f, $0f, $03, $03, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $00 ; brush 3 inactive
DB $00 ; brush 4 inactive

; ~ $8190
DB $04
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $80, $e0, $e0
DB $02
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $3f, $3f, $1f, $1f, $07, $07, $03, $03
DB $00 ; brush 3 inactive
DB $00 ; brush 4 inactive

; ~ $81A0
DB $02
DB $ff, $ff, $ff, $ff, $ff, $ff, $fe, $fe, $fc, $fc, $f1, $f1, $e0, $e0, $80, $80
DB $05
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $07, $07
DB $00 ; brush 3 inactive
DB $00 ; brush 4 inactive

; ~ $81B0
DB $02
DB $e0, $e0, $c0, $c0, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $05
DB $01, $01, $07, $07, $0f, $0f, $1f, $1f, $7f, $7f, $ff, $ff, $ff, $ff, $ff, $ff
DB $00 ; brush 3 inactive
DB $00 ; brush 4 inactive

; ~ $81C0
DB $05
DB $00, $00, $80, $80, $c0, $c0, $f0, $f0, $f8, $f8, $fe, $fe, $ff, $ff, $ff, $ff
DB $03
DB $1f, $1f, $07, $07, $03, $03, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00
DB $00 ; brush 3 inactive
DB $00 ; brush 4 inactive

; ~ $81D0
DB $05
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $c0, $c0
DB $03
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $7f, $7f, $3f, $3f, $0f, $0f, $07, $07
DB $00 ; brush 3 inactive
DB $00 ; brush 4 inactive

; ~ $81E0
DB $03
DB $ff, $ff, $ff, $ff, $ff, $ff, $fe, $fe, $fc, $fc, $f0, $f0, $e0, $e0, $80, $80
DB $06
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $07, $07
DB $00 ; brush 3 inactive
DB $00 ; brush 4 inactive

; ~ $81F0
DB $03
DB $e0, $e0, $c0, $c0, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $06
DB $01, $01, $07, $07, $0f, $0f, $1f, $1f, $7f, $7f, $ff, $ff, $ff, $ff, $ff, $ff
DB $00 ; brush 3 inactive
DB $00 ; brush 4 inactive

; ~ $8200
DB $06
DB $80, $80, $c0, $c0, $e0, $e0, $f8, $f8, $fc, $fc, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00 ; brush 3 inactive
DB $00 ; brush 4 inactive

; ~ $8210
DB $06
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $80, $e0, $e0
DB $00
DB $00 ; brush 3 inactive
DB $00 ; brush 4 inactive

; ~ $8220
DB $00
DB $00
DB $00 ; brush 3 inactive
DB $00 ; brush 4 inactive

; ~ $8230
DB $04
DB $3f, $3f, $ff, $ff, $3f, $3f, $1f, $1f, $07, $07, $03, $03, $00, $00, $00, $00
DB $0A
DB $00, $00, $00, $00, $00, $00, $00, $00, $80, $80, $e0, $e0, $f0, $f0, $f8, $f8
DB $00 ; brush 3 inactive
DB $00 ; brush 4 inactive

; ~ $8240
DB $04
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $7f, $7f
DB $00 
DB $00
DB $00 ; brush 4 inactive

; ~ $8250
DB $04
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fe, $fe, $fc, $fc
DB $00 
DB $00
DB $00 ; brush 4 inactive

; ~ $8260
DB $04
DB $f0, $f0, $fd, $fd, $f8, $f8, $e0, $e0, $c0, $c0, $00, $00, $00, $00, $00, $00
DB $07
DB $00, $00, $01, $01, $00, $00, $01, $01, $07, $07, $0f, $0f, $1f, $1f, $7f, $7f
DB $00 ; brush 3 inactive
DB $00 ; brush 4 inactive

; ~ $8270
DB $05
DB $1f, $1f, $3f, $3f, $1f, $1f, $0f, $0f, $03, $03, $01, $01, $00, $00, $00, $00
DB $07
DB $00, $00, $00, $00, $00, $00, $80, $80, $c0, $c0, $e0, $e0, $f8, $f8, $fc, $fc
DB $00 ; brush 3 inactive
DB $00 ; brush 4 inactive

; ~ $8280
DB $05
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $3f, $3f
DB $00
DB $00
DB $00 ; brush 4 inactive


; ~ $8290
DB $05
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fe, $fe, $fc, $fc
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $82A0
DB $03
DB $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $05
DB $e0, $e0, $f8, $f8, $f8, $f8, $e0, $e0, $c0, $c0, $00, $00, $00, $00, $00, $00
DB $08
DB $00, $00, $00, $00, $00, $00, $01, $01, $07, $07, $0f, $0f, $1f, $1f, $7f, $7f
DB $00 ; brush 4 inactive

; ~ $82B0
DB $06
DB $1f, $1f, $3f, $3f, $3f, $3f, $1f, $1f, $07, $07, $03, $03, $01, $01, $00, $00
DB $08
DB $00, $00, $00, $00, $00, $00, $00, $00, $80, $80, $c0, $c0, $f0, $f0, $f8, $f8
DB $00
DB $00 ; brush 4 inactive

; ~ $82C0
DB $06
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $7f, $7f
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $82D0
DB $06
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fc, $fc, $f8, $f8
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $82E0
DB $06
DB $f0, $f0, $fc, $fc, $f0, $f0, $e0, $e0, $80, $80, $00, $00, $00, $00, $00, $00
DB $15
DB $00, $00, $00, $00, $00, $00, $00, $00, $04, $04, $1c, $1c, $3c, $3c, $7c, $7c
DB $00
DB $00 ; brush 4 inactive

; ~ $82F0
DB $00
DB $00
DB $00 
DB $00 ; brush 4 inactive

; ~ $8300
DB $0A
DB $fe, $fe, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8310
DB $0A
DB $00, $00, $00, $00, $c0, $c0, $e0, $e0, $f8, $f8, $fc, $fc, $fc, $fc, $fc, $fc
DB $04
DB $3f, $3f, $0f, $0f, $07, $07, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8320
DB $04
DB $f0, $f0, $e0, $e0, $80, $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $07
DB $00, $00, $03, $03, $07, $07, $1f, $1f, $3f, $3f, $3f, $3f, $1f, $1f, $07, $07
DB $0A
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $80
DB $00 ; brush 4 inactive

; ~ $8330
DB $07
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8340
DB $07
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8350
DB $05
DB $1f, $1f, $07, $07, $03, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $07
DB $00, $00, $80, $80, $e0, $e0, $f0, $f0, $fc, $fc, $f8, $f8, $e0, $e0, $c0, $c0
DB $09
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $07, $07
DB $00 ; brush 4 inactive

; ~ $8360
DB $05
DB $f0, $f0, $e0, $e0, $80, $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $08
DB $00, $00, $03, $03, $07, $07, $1f, $1f, $3f, $3f, $1f, $1f, $0f, $0f, $03, $03
DB $09
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $80, $c0, $c0
DB $00 ; brush 4 inactive

; ~ $8370
DB $08
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8380
DB $08
DB $fe, $fe, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8390
DB $06
DB $3f, $3f, $0f, $0f, $07, $07, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $08
DB $00, $00, $00, $00, $c0, $c0, $e0, $e0, $f8, $f8, $f0, $f0, $e0, $e0, $80, $80
DB $14
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $04, $04
DB $00 ; brush 4 inactive

; ~ $83A0
DB $06
DB $f0, $f0, $c0, $c0, $80, $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $15
DB $01, $01, $03, $03, $0f, $0f, $1f, $1f, $7f, $7f, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00 ; brush 4 inactive

; ~ $83B0
DB $15
DB $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $83C0
DB $00
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $83D0
DB $0A
DB $ff, $ff, $7f, $7f, $3f, $3f, $1f, $1f, $07, $07, $03, $03, $00, $00, $00, $00
DB $0D
DB $00, $00, $00, $00, $00, $00, $00, $00, $80, $80, $e0, $e0, $f0, $f0, $f8, $f8
DB $00
DB $00 ; brush 4 inactive

; ~ $83E0
DB $0A
DB $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $7c, $7c
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $83F0
DB $07
DB $03, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $0B
DB $e0, $e0, $f1, $f1, $f8, $f8, $fe, $fe, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00 ; brush 4 inactive

; ~ $8400
DB $07
DB $ff, $ff, $ff, $ff, $7f, $7f, $3f, $3f, $0f, $0f, $07, $07, $01, $01, $00, $00
DB $0B
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $c0, $c0, $e0, $e0, $f8, $f8
DB $00
DB $00 ; brush 4 inactive

; ~ $8410
DB $07
DB $ff, $ff, $fe, $fe, $f8, $f8, $f0, $f0, $e0, $e0, $80, $80, $00, $00, $00, $00
DB $09
DB $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $07, $07, $1f, $1f, $3f, $3f
DB $00
DB $00 ; brush 4 inactive

; ~ $8420
DB $09
DB $0f, $0f, $1f, $1f, $7f, $7f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8430
DB $09
DB $e0, $e0, $f9, $f9, $fc, $fc, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $08
DB $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8440
DB $08
DB $ff, $ff, $ff, $ff, $3f, $3f, $1f, $1f, $07, $07, $03, $03, $00, $00, $00, $00
DB $09
DB $00, $00, $00, $00, $00, $00, $00, $00, $80, $80, $e0, $e0, $f0, $f0, $fc, $fc
DB $00
DB $00 ; brush 4 inactive

; ~ $8450
DB $08
DB $ff, $ff, $fc, $fc, $f8, $f8, $f0, $f0, $c0, $c0, $80, $80, $00, $00, $00, $00
DB $14
DB $00, $00, $00, $00, $00, $00, $01, $01, $03, $03, $0f, $0f, $1f, $1f, $7f, $7f
DB $00
DB $00 ; brush 4 inactive

; ~ $8460
DB $14
DB $1c, $1c, $3c, $3c, $7c, $7c, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8470
DB $15
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fc, $fc, $f8, $f8
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8480
DB $15
DB $fc, $fc, $f9, $f9, $f0, $f0, $e0, $e0, $80, $80, $00, $00, $00, $00, $00, $00
DB $18
DB $00, $00, $01, $01, $00, $00, $00, $00, $04, $04, $1c, $1c, $3c, $3c, $7c, $7c
DB $00
DB $00 ; brush 4 inactive

; ~ $8490
DB $00
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $84A0
DB $0D
DB $fe, $fe, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $84B0
DB $0A
DB $3c, $3c, $0c, $0c, $04, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $0D
DB $00, $00, $00, $00, $c0, $c0, $e0, $e0, $f8, $f8, $fc, $fc, $fc, $fc, $fc, $fc
DB $00
DB $00 ; brush 4 inactive

; ~ $84C0
DB $0B
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $3f, $3f, $1f, $1f, $07, $07
DB $0E
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $80
DB $00
DB $00 ; brush 4 inactive

; ~ $84D0
DB $0B
DB $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $84E0
DB $09
DB $3f, $3f, $1f, $1f, $07, $07, $03, $03, $00, $00, $00, $00, $00, $00, $00, $00
DB $0C
DB $00, $00, $00, $00, $80, $80, $e0, $e0, $f0, $f0, $f8, $f8, $fe, $fe, $ff, $ff
DB $00
DB $00 ; brush 4 inactive

; ~ $84F0
DB $09
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $7f, $7f, $3f, $3f, $0f, $0f
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8500
DB $09
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fc, $fc, $f8, $f8, $f0, $f0, $c0, $c0
DB $13
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $03, $03
DB $00
DB $00 ; brush 4 inactive

; ~ $8510
DB $09
DB $f0, $f0, $e0, $e0, $80, $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $13
DB $00, $00, $00, $00, $04, $04, $1c, $1c, $3c, $3c, $7c, $7c, $fc, $fc, $fc, $fc
DB $00
DB $00 ; brush 4 inactive

; ~ $8520
DB $14
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8530
DB $14
DB $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $f0, $f0, $e0, $e0, $80, $80
DB $17
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $04, $04
DB $00
DB $00 ; brush 4 inactive

; ~ $8540
DB $15
DB $f0, $f0, $c0, $c0, $80, $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $18
DB $01, $01, $03, $03, $0f, $0f, $1f, $1f, $7f, $7f, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00 ; brush 4 inactive

; ~ $8550
DB $18
DB $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8560
DB $00
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8570
DB $0D
DB $ff, $ff, $7f, $7f, $3f, $3f, $1f, $1f, $07, $07, $03, $03, $00, $00, $00, $00
DB $10
DB $00, $00, $00, $00, $00, $00, $00, $00, $80, $80, $e0, $e0, $f0, $f0, $f8, $f8
DB $00
DB $00 ; brush 4 inactive

; ~ $8580
DB $0D
DB $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $7c, $7c
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8590
DB $0B
DB $03, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $0E
DB $e0, $e0, $f0, $f0, $f8, $f8, $fe, $fe, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00 ; brush 4 inactive

; ~ $85A0
DB $0B
DB $fc, $fc, $fc, $fc, $7c, $7c, $3c, $3c, $0c, $0c, $04, $04, $00, $00, $00, $00
DB $0E
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $c0, $c0, $e0, $e0, $f8, $f8
DB $00
DB $00 ; brush 4 inactive

; ~ $85B0
DB $0C
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $85C0
DB $09
DB $07, $07, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $0C
DB $c0, $c0, $e0, $e0, $f8, $f8, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc
DB $00
DB $00 ; brush 4 inactive

; ~ $85D0
DB $09
DB $80, $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $13
DB $0f, $0f, $1f, $1f, $7f, $7f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00 ; brush 4 inactive

; ~ $85E0
DB $13
DB $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $7c, $7c
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $85F0
DB $14
DB $ff, $ff, $fd, $fd, $f8, $f8, $f0, $f0, $c0, $c0, $80, $80, $00, $00, $00, $00
DB $17
DB $00, $00, $01, $01, $00, $00, $01, $01, $03, $03, $0f, $0f, $1f, $1f, $7f, $7f
DB $00
DB $00 ; brush 4 inactive

; ~ $8600
DB $17
DB $1c, $1c, $3c, $3c, $7c, $7c, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8610
DB $18
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fc, $fc, $f8, $f8
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8620
DB $18
DB $fc, $fc, $f8, $f8, $f0, $f0, $e0, $e0, $80, $80, $00, $00, $00, $00, $00, $00
DB $1B
DB $00, $00, $00, $00, $00, $00, $00, $00, $04, $04, $1c, $1c, $3c, $3c, $7c, $7c
DB $00
DB $00 ; brush 4 inactive

; ~ $8630
DB $00
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8640
DB $10
DB $fe, $fe, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8650
DB $0D
DB $3c, $3c, $0c, $0c, $04, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $10
DB $00, $00, $00, $00, $c0, $c0, $e0, $e0, $f8, $f8, $fc, $fc, $fc, $fc, $fc, $fc
DB $00
DB $00 ; brush 4 inactive

; ~ $8660
DB $0E
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $3f, $3f, $1f, $1f, $07, $07
DB $11
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $80
DB $00
DB $00 ; brush 4 inactive


; ~ $8670
DB $0E
DB $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8680
DB $0C
DB $3f, $3f, $1f, $1f, $07, $07, $03, $03, $00, $00, $00, $00, $00, $00, $00, $00
DB $0F
DB $00, $00, $00, $00, $80, $80, $e0, $e0, $f0, $f0, $f8, $f8, $fe, $fe, $ff, $ff
DB $00
DB $00 ; brush 4 inactive

; ~ $8690
DB $0C
DB $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $7c, $7c, $3c, $3c, $0c, $0c
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $86A0
DB $13
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fc, $fc, $f8, $f8, $f0, $f0, $c0, $c0
DB $16
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $03, $03
DB $00
DB $00 ; brush 4 inactive

; ~ $86B0
DB $13
DB $f0, $f0, $e0, $e0, $80, $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $16
DB $00, $00, $00, $00, $04, $04, $1c, $1c, $3c, $3c, $7c, $7c, $fc, $fc, $fc, $fc
DB $00
DB $00 ; brush 4 inactive

; ~ $86C0
DB $17
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $86D0
DB $17
DB $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $f0, $f0, $e0, $e0, $80, $80
DB $1A
DB $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $04, $04
DB $00
DB $00 ; brush 4 inactive

; ~ $86E0
DB $18
DB $f0, $f0, $c0, $c0, $80, $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $1B
DB $01, $01, $03, $03, $0f, $0f, $1f, $1f, $7f, $7f, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00 ; brush 4 inactive

; ~ $86F0
DB $1B
DB $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8700
DB $0C
DB $04, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $0F
DB $c0, $c0, $e0, $e0, $f8, $f8, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc
DB $00
DB $00 ; brush 4 inactive

; ~ $8710
DB $13
DB $80, $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $16
DB $0f, $0f, $1f, $1f, $7f, $7f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00 ; brush 4 inactive

; ~ $8720 - $87F0
REPT(14)
	DB $00
	DB $00
	DB $00
	DB $00 ; brush 4 inactive
ENDR

TileMasks1:

; ~ $8800  |  $8D00  <-- shared masks
DB $00
DB $00
DB $00
DB $00 ; brush 4 inactive


; ~ $8810  |  $8D10
DB $10
DB $ff, $ff, $3f, $3f, $1f, $1f, $07, $07, $03, $03, $00, $00, $00, $00, $00, $00
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8820  |  $8D20  
DB $10
DB $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $7c, $7c, $3c, $3c
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8830  |  $8D30
DB $0E
DB $03, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $11
DB $e0, $e0, $f0, $f0, $f8, $f8, $fe, $fe, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00 ; brush 4 inactive

; ~ $8840  |  $8D40
DB $0E
DB $fc, $fc, $fc, $fc, $7c, $7c, $3c, $3c, $0c, $0c, $04, $04, $00, $00, $00, $00
DB $11
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $c0, $c0, $e0, $e0, $f8, $f8
DB $00
DB $00 ; brush 4 inactive

; ~ $8850  |  $8D50
DB $0F
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8860  |  $8D60
DB $16
DB $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8870  |  $8D70
DB $17
DB $ff, $ff, $fc, $fc, $f8, $f8, $f0, $f0, $c0, $c0, $80, $80, $00, $00, $00, $00
DB $1A
DB $00, $00, $00, $00, $00, $00, $01, $01, $03, $03, $0f, $0f, $1f, $1f, $7f, $7f
DB $00
DB $00 ; brush 4 inactive

; ~ $8880  |  $8D80
DB $1A
DB $1c, $1c, $3c, $3c, $7c, $7c, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8890  |  $8D90
DB $1B
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fc, $fc, $f8, $f8, $f0, $f0
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $88A0  |  $8DA0
DB $1B
DB $fc, $fc, $f0, $f0, $e0, $e0, $80, $80, $00, $00, $00, $00, $00, $00, $00, $00
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $88B0  |  $8DB0
DB $10
DB $0c, $0c, $04, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $88C0  |  $8DC0
DB $11
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $3f, $3f, $1f, $1f, $07, $07, $03, $03
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $88D0  |  $8DD0
DB $11
DB $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $88E0  |  $8DE0
DB $0F
DB $3f, $3f, $1f, $1f, $07, $07, $03, $03, $00, $00, $00, $00, $00, $00, $00, $00
DB $12
DB $00, $00, $00, $00, $80, $80, $e0, $e0, $f0, $f0, $f8, $f8, $fe, $fe, $ff, $ff
DB $00
DB $00 ; brush 4 inactive

; ~ $88F0  |  $8DF0
DB $0F
DB $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $7c, $7c, $3c, $3c, $0c, $0c
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8900  |  $8E00
DB $16
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fc, $fc, $f8, $f8, $f0, $f0, $c0, $c0
DB $19
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $03, $03
DB $00
DB $00 ; brush 4 inactive

; ~ $8910  |  $8E10
DB $16
DB $f0, $f0, $e0, $e0, $80, $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $19
DB $00, $00, $00, $00, $04, $04, $1c, $1c, $3c, $3c, $7c, $7c, $fc, $fc, $fc, $fc
DB $00
DB $00 ; brush 4 inactive

; ~ $8920  |  $8E20
DB $1A
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8930  |  $8E30
DB $1A
DB $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $f0, $f0, $e0, $e0, $80, $80, $00, $00
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8940  |  $8E40
DB $1B
DB $c0, $c0, $80, $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8950  |  $8E50
DB $00
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8960  |  $8E60
DB $11
DB $fc, $fc, $7c, $7c, $3c, $3c, $0c, $0c, $04, $04, $00, $00, $00, $00, $00, $00
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8970  |  $8E70
DB $12
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $3f, $3f
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8980  |  $8E80
DB $0F
DB $04, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $12
DB $c0, $c0, $e0, $e0, $f8, $f8, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc
DB $00
DB $00 ; brush 4 inactive

; ~ $8990  |  $8E90
DB $16
DB $80, $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $19
DB $0f, $0f, $1f, $1f, $7f, $7f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00 ; brush 4 inactive

; ~ $89A0  |  $8EA0
DB $19
DB $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $f0, $f0
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $89B0  |  $8EB0
DB $1A
DB $fc, $fc, $f8, $f8, $f0, $f0, $c0, $c0, $80, $80, $00, $00, $00, $00, $00, $00
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $89C0  |  $8EC0
DB $00
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $89D0  |  $8ED0
DB $12
DB $1f, $1f, $07, $07, $03, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $89E0  |  $8EE0
DB $12
DB $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $7c, $7c, $3c, $3c, $0c, $0c, $04, $04
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $89F0  |  $8EF0
DB $19
DB $ff, $ff, $ff, $ff, $ff, $ff, $fc, $fc, $f8, $f8, $f0, $f0, $c0, $c0, $80, $80
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $8A00  |  $8F00
DB $19
DB $e0, $e0, $80, $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $00
DB $00
DB $00 ; brush 4 inactive

TileMasks0End:

; ~ $8F10 - $9010
REPT(17);
	DB $00
	DB $00
	DB $00
	DB $00 ; brush 4 inactive
ENDR

; ~ $9020
DB $01
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $9030
DB $01
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $f0, $f0
DB $02
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03
DB $00
DB $00 ; brush 4 inactive

; ~ $9040
DB $02
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $9050
DB $02
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $80
DB $03
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $1f, $1f
DB $00
DB $00 ; brush 4 inactive

; ~ $9060
DB $03
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $9070
DB $00
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $9080
DB $00
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $9090
DB $01
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $90A0
DB $01
DB $f0, $f0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0
DB $02
DB $03, $03, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
DB $00
DB $00 ; brush 4 inactive

; ~ $90B0
DB $02
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $90C0
DB $02
DB $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
DB $03
DB $1f, $1f, $1f, $1f, $1f, $1f, $1f, $1f, $1f, $1f, $1f, $1f, $1f, $1f, $1f, $1f
DB $00
DB $00 ; brush 4 inactive

; ~ $90D0
DB $03
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $90E0
DB $00
DB $00
DB $00
DB $00 ; brush 4 inactive

; ~ $90F0
DB $01
DB $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00
DB $04
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01
DB $00
DB $00 ; brush 4 inactive

; ~ $9100
DB $01
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00
DB $04
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $ff
DB $00
DB $00 ; brush 4 inactive

; ~ $9110
DB $01
DB $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $00, $00, $00, $00, $00, $00, $00, $00
DB $02
DB $07, $07, $07, $07, $07, $07, $07, $07, $00, $00, $00, $00, $00, $00, $00, $00
DB $04
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $e0, $e0, $e0, $e0
DB $05
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $07, $07, $07

; ~ $9120
DB $02
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00
DB $05
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $ff
DB $00
DB $00 ; brush 4 inactive

; ~ $9130
DB $02
DB $80, $80, $80, $80, $80, $80, $c0, $c0, $00, $00, $00, $00, $00, $00, $00, $00
DB $03
DB $1f, $1f, $1f, $1f, $1f, $1f, $0f, $0f, $00, $00, $00, $00, $00, $00, $00, $00
DB $05
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $c0, $c0, $c0, $c0
DB $06
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0f, $0f, $0f, $0f

; ~ $9140
DB $03
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00
DB $06
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $ff
DB $00
DB $00 ; brush 4 inactive

; ~ $9150
DB $00
DB $00
DB $00
DB $00

; ~ $9160
DB $04
DB $01, $01, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $00, $00
DB $00
DB $00
DB $00

; ~ $9170
DB $04
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $00, $00
DB $00
DB $00
DB $00

; ~ $9180
DB $04
DB $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $00, $00, $00, $00
DB $05
DB $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $00, $00, $00, $00
DB $00
DB $00

; ~ $9190
DB $05
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $00, $00
DB $00
DB $00
DB $00

; ~ $91A0
DB $05
DB $c0, $c0, $c0, $c0, $c0, $c0, $c0, $c0, $c0, $c0, $c0, $c0, $00, $00, $00, $00
DB $06
DB $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $00, $00, $00, $00
DB $00
DB $00

; ~ $91B0
DB $06
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $00, $00
DB $00
DB $00
DB $00

; ~ $91C0
DB $06
DB $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $00, $00, $00, $00
DB $00
DB $00
DB $00

; ~ $91D0
DB $00
DB $00
DB $00
DB $00

; ~ $91E0
DB $07
DB $03, $03, $03, $03, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
DB $00
DB $00
DB $00

; ~ $91F0
DB $07
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00
DB $00

; ~ $9200
DB $07
DB $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0
DB $08
DB $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
DB $00
DB $00

; ~ $9210
DB $08
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00
DB $00

; ~ $9220
DB $08
DB $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0
DB $09
DB $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
DB $00
DB $00

; ~ $9230
DB $09
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00
DB $00

; ~ $9240
DB $09
DB $c0, $c0, $c0, $c0, $c0, $c0, $c0, $c0, $c0, $c0, $c0, $c0, $c0, $c0, $c0, $c0
DB $00
DB $00
DB $00

; ~ $9250
DB $00
DB $00
DB $00
DB $00

; ~ $9260
DB $00
DB $00
DB $00
DB $00

; ~ $9270
DB $0D
DB $00, $00, $00, $00, $00, $00, $00, $00, $80, $80, $e0, $e0, $f0, $f0, $f8, $f8
DB $00
DB $00
DB $00

; ~ $9280
DB $07
DB $07, $07, $07, $07, $07, $07, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $0A
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $07, $07, $07, $07, $07
DB $00
DB $00

; ~ $9290
DB $07
DB $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $0A
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00

; ~ $92A0
DB $07
DB $e0, $e0, $e0, $e0, $e0, $e0, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $08
DB $07, $07, $07, $07, $07, $07, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $0A
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $e0, $e0, $e0, $e0, $e0, $e0
DB $0B
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $07, $07, $07, $07, $07

; ~ $92B0
DB $08
DB $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $0B
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00

; ~ $92C0
DB $08
DB $e0, $e0, $e0, $e0, $e0, $e0, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $09
DB $07, $07, $07, $07, $07, $07, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $0B
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $e0, $e0, $e0, $e0, $e0, $e0
DB $0C
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $07, $07, $07, $07, $07

; ~ $92D0
DB $09
DB $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $0C
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00

; ~ $92E0
DB $09
DB $c0, $c0, $c0, $c0, $e0, $e0, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $0C
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $e0, $e0, $e0, $e0, $e0, $e0
DB $00
DB $00

; ~ $92F0
DB $18
DB $00, $00, $00, $00, $00, $00, $00, $00, $04, $04, $1c, $1c, $3c, $3c, $7c, $7c
DB $00
DB $00
DB $00

; ~ $9300
DB $00
DB $00
DB $00
DB $00

; ~ $9310
DB $0D
DB $fe, $fe, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00
DB $00

; ~ $9320
DB $0D
DB $00, $00, $00, $00, $c0, $c0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0
DB $0A
DB $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
DB $00
DB $00

; ~ $9330
DB $0A
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00
DB $00

; ~ $9340
DB $0A
DB $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0
DB $0B
DB $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
DB $00
DB $00

; ~ $9350
DB $0B
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00
DB $00

; ~ $9360
DB $0B
DB $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0
DB $0C
DB $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
DB $00
DB $00

; ~ $9370
DB $0C
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00
DB $00

; ~ $9380
DB $0C
DB $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0
DB $18
DB $01, $01, $03, $03, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
DB $00
DB $00

; ~ $9390
DB $18
DB $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc
DB $00
DB $00
DB $00

; ~ $93A0
DB $00
DB $00
DB $00
DB $00

; ~ $93B0
DB $0D
DB $ff, $ff, $7f, $7f, $3f, $3f, $1f, $1f, $07, $07, $03, $03, $00, $00, $00, $00
DB $10
DB $00, $00, $00, $00, $00, $00, $00, $00, $80, $80, $e0, $e0, $f0, $f0, $f8, $f8
DB $00
DB $00

; ~ $93C0
DB $0A
DB $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $00, $00, $00, $00, $00, $00
DB $0D
DB $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $7e, $7e
DB $00
DB $00

; ~ $93D0
DB $0A
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $00, $00
DB $0E
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff
DB $00
DB $00

; ~ $93E0
DB $0A
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $00, $00
DB $0E
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $f8, $f8
DB $00
DB $00

; ~ $93F0
DB $0A
DB $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $00, $00, $00, $00, $00, $00
DB $0B
DB $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $00, $00, $00, $00, $00, $00
DB $00
DB $00

; ~ $9400
DB $0B
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $00, $00
DB $00
DB $00
DB $00

; ~ $9410
DB $0B
DB $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $00, $00, $00, $00, $00, $00
DB $0C
DB $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $00, $00, $00, $00, $00, $00
DB $00
DB $00

; ~ $9420
DB $0C
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $00, $00
DB $17
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $7f, $7f
DB $00
DB $00

; ~ $9430
DB $0C
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $00, $00
DB $17
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $fc, $fc
DB $00
DB $00

; ~ $9440
DB $0C
DB $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $00, $00, $00, $00, $00, $00
DB $18
DB $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $04, $04, $f8, $f8
DB $00
DB $00

; ~ $9450
DB $18
DB $fc, $fc, $f9, $f9, $f0, $f0, $e0, $e0, $80, $80, $00, $00, $00, $00, $00, $00
DB $1B
DB $00, $00, $01, $01, $00, $00, $00, $00, $04, $04, $1c, $1c, $3c, $3c, $7c, $7c
DB $00
DB $00

; ~ $9460
DB $00
DB $00
DB $00
DB $00

; ~ $9470
DB $10
DB $fe, $fe, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00
DB $00

; ~ $9480
DB $0D
DB $3c, $3c, $0c, $0c, $04, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $10
DB $00, $00, $00, $00, $c0, $c0, $e0, $e0, $f8, $f8, $fc, $fc, $fc, $fc, $fc, $fc
DB $00
DB $00

; ~ $9490
DB $0E
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $3f, $3f, $1f, $1f, $07, $07
DB $11
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $80
DB $00
DB $00

; ~ $94A0
DB $0E
DB $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc
DB $00
DB $00
DB $00

; ~ $94B0
DB $0F
DB $00, $00, $00, $00, $80, $80, $e0, $e0, $f0, $f0, $f8, $f8, $fe, $fe, $ff, $ff
DB $00
DB $00
DB $00

; ~ $94C0
DB $00
DB $00
DB $00
DB $00

; ~ $94D0
DB $16
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $03, $03
DB $00
DB $00
DB $00

; ~ $94E0
DB $16
DB $00, $00, $00, $00, $04, $04, $1c, $1c, $3c, $3c, $7c, $7c, $fc, $fc, $fc, $fc
DB $00
DB $00
DB $00

; ~ $94F0
DB $17
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00
DB $00

; ~ $9500
DB $17
DB $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $f0, $f0, $e0, $e0, $80, $80
DB $1A
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $04, $04
DB $00
DB $00

; ~ $9510
DB $18
DB $f0, $f0, $c0, $c0, $80, $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $1B
DB $01, $01, $03, $03, $0f, $0f, $1f, $1f, $7f, $7f, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00

; ~ $9520
DB $1B
DB $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc
DB $00
DB $00
DB $00

; ~ $9530
DB $0F
DB $c0, $c0, $e0, $e0, $f8, $f8, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc
DB $00
DB $00
DB $00

; ~ $9540
DB $16
DB $0f, $0f, $1f, $1f, $7f, $7f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00
DB $00































