SECTION "Tile masks Paint Data", ROM0

TileMasks0:
; ~ $8000
DB $00 ; brush 1 inactive
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive

; ~ $8010
DB $01 ; brush 1 slot 1
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive

; ~ $8020
DB $01 ; brush 1 active ; slot 1
DB $00, $00, $00, $00, $07, $07, $0f, $0f, $1f, $1f, $7f, $7f, $ff, $ff, $ff, $ff
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive

; ~ $8030
DB $01  ; brush 1 slot 1
DB $00, $00, $00, $00, $80, $80, $c0, $c0, $e0, $e0, $f8, $f8, $fc, $fc, $ff, $ff
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive

; ~ $8040
DB $00 ; brush 1 inactive
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive

; ~ $8050
DB $00 ; brush 1 inactive
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive

; ~ $8060
DB $02 ; brush 1 slot 1
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $07, $0f, $0f, $1f, $1f
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive

; ~ $8070
DB $01 ; brush 1 slot 1
DB $07, $07, $1f, $1f, $3f, $3f, $ff, $ff, $3f, $3f, $1f, $1f, $07, $07, $03, $03
DB $02 ; brush 2 slot 2
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $80, $c0, $c0
DB $00 ; brush 3 inactive

; ~ $8080
DB $01 ; brush 1 slot 1
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive

; ~ $8090
DB $01 ; brush 1 slot 1
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive

; ~ $80A0
DB $01
DB $80, $80, $e0, $e0, $f0, $f0, $fc, $fc, $f8, $f8, $e0, $e0, $c0, $c0, $00, $00
DB $03
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $07, $07, $0f, $0f
DB $00

; ~ $80B0
DB $03
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $80, $c0, $c0, $e0, $e0
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive

; ~ $80C0
DB $00 ; brush 1 inactive
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive

; ~ $80D0
DB $02
DB $00, $00, $00, $00, $03, $03, $07, $07, $1f, $1f, $3f, $3f, $7f, $7f, $1f, $1f
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive

; ~ $80E0
DB $02
DB $7f, $7f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive

; ~ $80F0
DB $01
DB $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $02
DB $f0, $f0, $f8, $f8, $fe, $fe, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00 ; brush 3 inactive

; ~ $8100
DB $01
DB $ff, $ff, $7f, $7f, $3f, $3f, $0f, $0f, $07, $07, $01, $01, $00, $00, $00, $00
DB $02
DB $00, $00, $00, $00, $00, $00, $00, $00, $c0, $c0, $e0, $e0, $f8, $f8, $f8, $f8
DB $00

; ~ $8110
DB $01
DB $fe, $fe, $fc, $fc, $f0, $f0, $e0, $e0, $80, $80, $00, $00, $00, $00, $00, $00
DB $03
DB $00, $00, $00, $00, $00, $00, $03, $03, $07, $07, $1f, $1f, $3f, $3f, $3f, $3f
DB $00

; ~ $8120
DB $03
DB $1f, $1f, $7f, $7f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00

; ~ $8130
DB $03
DB $f8, $f8, $fc, $fc, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00

; ~ $8140
DB $03
DB $00, $00, $00, $00, $00, $00, $80, $80, $e0, $e0, $f0, $f0, $fc, $fc, $f8, $f8
DB $00
DB $00

; ~ $8150
DB $00 ; brush 1 inactive
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive

; ~ $8160
DB $04
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $07, $07, $1f, $1f
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive

; ~ $8170
DB $04
DB $07, $07, $0f, $0f, $1f, $1f, $7f, $7f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive

; ~ $8180
DB $04
DB $80, $80, $c0, $c0, $e0, $e0, $f8, $f8, $fc, $fc, $ff, $ff, $ff, $ff, $ff, $ff
DB $02
DB $0f, $0f, $03, $03, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $00 ; brush 3 inactive

; ~ $8190
DB $04
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $80, $e0, $e0
DB $02
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $3f, $3f, $1f, $1f, $07, $07, $03, $03
DB $00 ; brush 3 inactive

; ~ $81A0
DB $02
DB $ff, $ff, $ff, $ff, $ff, $ff, $fe, $fe, $fc, $fc, $f1, $f1, $e0, $e0, $80, $80
DB $05
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $07, $07
DB $00 ; brush 3 inactive

; ~ $81B0
DB $02
DB $e0, $e0, $c0, $c0, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $05
DB $01, $01, $07, $07, $0f, $0f, $1f, $1f, $7f, $7f, $ff, $ff, $ff, $ff, $ff, $ff
DB $00 ; brush 3 inactive

; ~ $81C0
DB $05
DB $00, $00, $80, $80, $c0, $c0, $f0, $f0, $f8, $f8, $fe, $fe, $ff, $ff, $ff, $ff
DB $03
DB $1f, $1f, $07, $07, $03, $03, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00
DB $00 ; brush 3 inactive

; ~ $81D0
DB $05
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $c0, $c0
DB $03
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $7f, $7f, $3f, $3f, $0f, $0f, $07, $07
DB $00 ; brush 3 inactive

; ~ $81E0
DB $03
DB $ff, $ff, $ff, $ff, $ff, $ff, $fe, $fe, $fc, $fc, $f0, $f0, $e0, $e0, $80, $80
DB $06
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $07, $07
DB $00 ; brush 3 inactive

; ~ $81F0
DB $03
DB $e0, $e0, $c0, $c0, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $06
DB $01, $01, $07, $07, $0f, $0f, $1f, $1f, $7f, $7f, $ff, $ff, $ff, $ff, $ff, $ff
DB $00 ; brush 3 inactive

; ~ $8200
DB $06
DB $80, $80, $c0, $c0, $e0, $e0, $f8, $f8, $fc, $fc, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00 ; brush 3 inactive

; ~ $8210
DB $06
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $80, $e0, $e0
DB $00
DB $00 ; brush 3 inactive

; ~ $8220
DB $00
DB $00
DB $00 ; brush 3 inactive

; ~ $8230
DB $04
DB $3f, $3f, $ff, $ff, $3f, $3f, $1f, $1f, $07, $07, $03, $03, $00, $00, $00, $00
DB $0A
DB $00, $00, $00, $00, $00, $00, $00, $00, $80, $80, $e0, $e0, $f0, $f0, $f8, $f8
DB $00 ; brush 3 inactive

; ~ $8240
DB $04
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $7f, $7f
DB $00 
DB $00

; ~ $8250
DB $04
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fe, $fe, $fc, $fc
DB $00 
DB $00

; ~ $8260
DB $04
DB $f0, $f0, $fd, $fd, $f8, $f8, $e0, $e0, $c0, $c0, $00, $00, $00, $00, $00, $00
DB $07
DB $00, $00, $01, $01, $00, $00, $01, $01, $07, $07, $0f, $0f, $1f, $1f, $7f, $7f
DB $00 ; brush 3 inactive

; ~ $8270
DB $05
DB $1f, $1f, $3f, $3f, $1f, $1f, $0f, $0f, $03, $03, $01, $01, $00, $00, $00, $00
DB $07
DB $00, $00, $00, $00, $00, $00, $80, $80, $c0, $c0, $e0, $e0, $f8, $f8, $fc, $fc
DB $00 ; brush 3 inactive

; ~ $8280
DB $05
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $3f, $3f
DB $00
DB $00


; ~ $8290
DB $05
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fe, $fe, $fc, $fc
DB $00
DB $00

; ~ $82A0
DB $03
DB $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $05
DB $e0, $e0, $f8, $f8, $f8, $f8, $e0, $e0, $c0, $c0, $00, $00, $00, $00, $00, $00
DB $08
DB $00, $00, $00, $00, $00, $00, $01, $01, $07, $07, $0f, $0f, $1f, $1f, $7f, $7f


; ~ $82B0
DB $06
DB $1f, $1f, $3f, $3f, $3f, $3f, $1f, $1f, $07, $07, $03, $03, $01, $01, $00, $00
DB $08
DB $00, $00, $00, $00, $00, $00, $00, $00, $80, $80, $c0, $c0, $f0, $f0, $f8, $f8
DB $00

; ~ $82C0
DB $06
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $7f, $7f
DB $00
DB $00

; ~ $82D0
DB $06
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fc, $fc, $f8, $f8
DB $00
DB $00

; ~ $82E0
DB $06
DB $f0, $f0, $fc, $fc, $f0, $f0, $e0, $e0, $80, $80, $00, $00, $00, $00, $00, $00
DB $15
DB $00, $00, $00, $00, $00, $00, $00, $00, $04, $04, $1c, $1c, $3c, $3c, $7c, $7c
DB $00

; ~ $82F0
DB $00
DB $00
DB $00 

; ~ $8300
DB $0A
DB $fe, $fe, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00

; ~ $8310
DB $0A
DB $00, $00, $00, $00, $c0, $c0, $e0, $e0, $f8, $f8, $fc, $fc, $fc, $fc, $fc, $fc
DB $04
DB $3f, $3f, $0f, $0f, $07, $07, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00
DB $00

; ~ $8320
DB $04
DB $f0, $f0, $e0, $e0, $80, $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $07
DB $00, $00, $03, $03, $07, $07, $1f, $1f, $3f, $3f, $3f, $3f, $1f, $1f, $07, $07
DB $0A
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $80

; ~ $8330
DB $07
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00

; ~ $8340
DB $07
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00

; ~ $8350
DB $05
DB $1f, $1f, $07, $07, $03, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $07
DB $00, $00, $80, $80, $e0, $e0, $f0, $f0, $fc, $fc, $f8, $f8, $e0, $e0, $c0, $c0
DB $09
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $07, $07

; ~ $8360
DB $05
DB $f0, $f0, $e0, $e0, $80, $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $08
DB $00, $00, $03, $03, $07, $07, $1f, $1f, $3f, $3f, $1f, $1f, $0f, $0f, $03, $03
DB $09
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $80, $c0, $c0

; ~ $8370
DB $08
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00

; ~ $8380
DB $08
DB $fe, $fe, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
DB $00
DB $00












TileMasks0End:









