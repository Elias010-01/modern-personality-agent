; CONTROL/seg10.asm
; Semantic data - verified byte-exact
BITS 16

    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 005h, 000h, 000h               ; add ax, 0
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di + 0x74], al            ; 00 43 74
    db 06Ch                           ; insb byte es:[di], dx
    push ax                                  ; 50
    popaw                                    ; 61
    db 06Eh                           ; outsb dx, byte [si]
    db 065h, 06Ch                     ; insb byte es:[di], dx
    add byte [si + 0x65], ah                 ; 00 64 65
    db 076h, 069h                     ; jbe 0x86
    arpl word [di + 0x73], sp                ; 63 65 73
    add byte [bp + 0x6f], ah                 ; 00 66 6F
    db 06Eh                           ; outsb dx, byte [si]
    db 074h, 073h                     ; je 0x99
    add byte [bp + 0x6f], ch                 ; 00 6E 6F
    add byte [si + 0x69], ah                 ; 00 64 69
    popaw                                    ; 61
    db 06Ch                           ; insb byte es:[di], dx
    db 06Fh                           ; outsw dx, word [si]
    add byte [ecx + 0x6e], ch                ; 67 00 69 6E
    db 074h, 06Ch                     ; je 0xa1
    add byte [bx + di + 0x65], bh            ; 00 79 65
    db 073h, 000h                     ; jae 0x3a
    add word [bx + si], ax                   ; 01 00
    pop cx                                   ; 59
    db 065h, 073h, 000h               ; jae 0x40
    dec si                                   ; 4E
    db 06Fh                           ; outsw dx, word [si]
    add byte [bp + di + 0x77], dl            ; 00 53 77
    popaw                                    ; 61
    db 070h, 04Dh                     ; jo 0x95
    db 06Fh                           ; outsw dx, word [si]
    db 075h, 073h                     ; jne 0xbe
    db 065h, 042h                     ; inc dx
    db 075h, 074h                     ; jne 0xc3
    db 074h, 06Fh                     ; je 0xc0
    db 06Eh                           ; outsb dx, byte [si]
    db 073h, 000h                     ; jae 0x54
    db 077h, 069h                     ; ja 0xbf
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 06Fh                     ; outsw dx, word fs:[si]
    db 077h, 073h                     ; ja 0xce
    add byte [bx + 0x69], dh                 ; 00 77 69
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 06Fh                     ; outsw dx, word fs:[si]
    db 077h, 073h                     ; ja 0xd6
    add byte [bp + di + 0x6f], ah            ; 00 63 6F
    db 06Eh                           ; outsb dx, byte [si]
    db 074h, 072h                     ; je 0xdb
    db 06Fh                           ; outsw dx, word [si]
    db 06Ch                           ; insb byte es:[di], dx
    add byte [bp + di + 0x6f], ah            ; 00 63 6F
    db 06Eh                           ; outsb dx, byte [si]
    db 074h, 072h                     ; je 0xe3
    db 06Fh                           ; outsw dx, word [si]
    db 06Ch                           ; insb byte es:[di], dx
    add byte [bp + di + 0x74], al            ; 00 43 74
    db 06Ch                           ; insb byte es:[di], dx
    push ax                                  ; 50
    popaw                                    ; 61
    db 06Eh                           ; outsb dx, byte [si]
    db 065h, 06Ch                     ; insb byte es:[di], dx
    add byte [bp + di + 0x75], al            ; 00 43 75
    db 072h, 073h                     ; jb 0xf4
    db 06Fh                           ; outsw dx, word [si]
    db 072h, 042h                     ; jb 0xc6
    db 06Ch                           ; insb byte es:[di], dx
    imul bp, word [bp + 0x6b], 0x6152        ; 69 6E 6B 52 61
    db 074h, 065h                     ; je 0xf1
    add byte [bx + 0x69], dh                 ; 00 77 69
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 06Fh                     ; outsw dx, word fs:[si]
    db 077h, 073h                     ; ja 0x107
    add byte [si + 0x6f], al                 ; 00 44 6F
    db 075h, 062h                     ; jne 0xfb
    db 06Ch                           ; insb byte es:[di], dx
    db 065h, 043h                     ; inc bx
    db 06Ch                           ; insb byte es:[di], dx
    imul sp, word [bp + di + 0x6b], 0x7053   ; 69 63 6B 53 70
    db 065h, 065h, 064h, 000h, 077h, 069h ; add byte fs:[bx + 0x69], dh
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 06Fh                     ; outsw dx, word fs:[si]
    db 077h, 073h                     ; ja 0x120
    add bh, bh                               ; 00 FF
    call word [bx]                           ; FF 17
    add byte [bp + di], bh                   ; 00 3B
    add byte [bp + di], bh                   ; 00 3B
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], ah                   ; 00 20
    add byte [bx + si], dh                   ; 00 30
    add byte [bx + di + 0x54], ch            ; 00 69 54
    imul bp, word [di + 0x65], 0x6900        ; 69 6D 65 00 69
    db 06Eh                           ; outsb dx, byte [si]
    db 074h, 06Ch                     ; je 0x134
    add byte [bx + di + 0x4c], ch            ; 00 69 4C
    db 07Ah, 065h                     ; jp 0x132
    db 072h, 06Fh                     ; jb 0x13e
    add byte [bx + di + 0x6e], ch            ; 00 69 6E
    db 074h, 06Ch                     ; je 0x140
    add byte [bx], ch                        ; 00 2F
    add byte [bp + di + 0x44], dh            ; 00 73 44
    popaw                                    ; 61
    db 074h, 065h                     ; je 0x141
    add byte [bx + di + 0x6e], ch            ; 00 69 6E
    db 074h, 06Ch                     ; je 0x14d
    add byte [bp + si], bh                   ; 00 3A
    add byte [bp + di + 0x54], dh            ; 00 73 54
    imul bp, word [di + 0x65], 0x6900        ; 69 6D 65 00 69
    db 06Eh                           ; outsb dx, byte [si]
    db 074h, 06Ch                     ; je 0x15a
    add byte [bx + di + 0x4d], al            ; 00 41 4D
    add byte [bp + di + 0x31], dh            ; 00 73 31
    xor word [di], si                        ; 31 35
    cmp word [bx + si], ax                   ; 39 00
    db 069h, 06Eh, 074h, 06Ch, 000h   ; imul bp, word [bp + 0x74], 0x6c
    push ax                                  ; 50
    dec bp                                   ; 4D
    add byte [bp + di + 0x32], dh            ; 00 73 32
    xor si, word [di]                        ; 33 35
    cmp word [bx + si], ax                   ; 39 00
    db 069h, 06Eh, 074h, 06Ch, 000h   ; imul bp, word [bp + 0x74], 0x6c
    imul ax, word [si + 0x61], 0x6574        ; 69 44 61 74 65
    add byte [bx + di + 0x6e], ch            ; 00 69 6E
    db 074h, 06Ch                     ; je 0x181
    add byte [bp + di + 0x75], al            ; 00 43 75
    db 072h, 073h                     ; jb 0x18d
    db 06Fh                           ; outsw dx, word [si]
    db 072h, 042h                     ; jb 0x15f
    db 06Ch                           ; insb byte es:[di], dx
    imul bp, word [bp + 0x6b], 0x6152        ; 69 6E 6B 52 61
    db 074h, 065h                     ; je 0x18a
    add byte [bx + 0x69], dh                 ; 00 77 69
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 06Fh                     ; outsw dx, word fs:[si]
    db 077h, 073h                     ; ja 0x1a0
    add byte [si + 0x6f], al                 ; 00 44 6F
    db 075h, 062h                     ; jne 0x194
    db 06Ch                           ; insb byte es:[di], dx
    db 065h, 043h                     ; inc bx
    db 06Ch                           ; insb byte es:[di], dx
    imul sp, word [bp + di + 0x6b], 0x7053   ; 69 63 6B 53 70
    db 065h, 065h, 064h, 000h, 077h, 069h ; add byte fs:[bx + 0x69], dh
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 06Fh                     ; outsw dx, word fs:[si]
    db 077h, 073h                     ; ja 0x1b9
    add byte [bx + 0x69], dh                 ; 00 77 69
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 06Fh                     ; outsw dx, word fs:[si]
    db 077h, 073h                     ; ja 0x1c1
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    pop ds                                   ; 1F
    add byte [si], bl                        ; 00 1C
    add byte [bx], bl                        ; 00 1F
    add byte [0x1f00], bl                    ; 00 1E 00 1F
    add byte [0x1f00], bl                    ; 00 1E 00 1F
    add byte [bx], bl                        ; 00 1F
    add byte [0x1f00], bl                    ; 00 1E 00 1F
    add byte [0x1f00], bl                    ; 00 1E 00 1F
    add byte [di], al                        ; 00 05
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    add byte [bp + si], al                   ; 00 02
    add byte [bp + di], al                   ; 00 03
    add byte [bx + di], cl                   ; 00 09
    add byte [0x400], al                     ; 00 06 00 04
    add byte [bx], al                        ; 00 07
    add byte [bx + di], al                   ; 00 01
    add byte [bp + di + 0x61], dl            ; 00 53 61
    db 06Dh                           ; insw word es:[di], dx
    db 070h, 06Ch                     ; jo 0x1ef
    db 065h, 049h                     ; dec cx
    arpl word [bx + 0x6e], bp                ; 63 6F 6E
    add byte [bx + 0x69], dl                 ; 00 57 69
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 06Fh                     ; outsw dx, word fs:[si]
    db 077h, 000h                     ; ja 0x190
    push di                                  ; 57
    imul bp, word [bp + 0x64], 0x776f        ; 69 6E 64 6F 77
    push sp                                  ; 54
    db 065h, 078h, 074h               ; js 0x20e
    add byte [bp + di + 0x63], dl            ; 00 53 63
    db 072h, 06Fh                     ; jb 0x20e
    db 06Ch                           ; insb byte es:[di], dx
    db 06Ch                           ; insb byte es:[di], dx
    db 062h, 061h, 072h               ; bound sp, dword [bx + di + 0x72]
    add byte [bx + di + 0x63], al            ; 00 41 63
    db 074h, 069h                     ; je 0x212
    db 076h, 065h                     ; jbe 0x210
    push sp                                  ; 54
    db 069h, 074h, 06Ch, 065h, 000h   ; imul si, word [si + 0x6c], 0x65
    dec cx                                   ; 49
    db 06Eh                           ; outsb dx, byte [si]
    popaw                                    ; 61
    arpl word [si + 0x69], si                ; 63 74 69
    db 076h, 065h                     ; jbe 0x21e
    push sp                                  ; 54
    db 069h, 074h, 06Ch, 065h, 000h   ; imul si, word [si + 0x6c], 0x65
    push sp                                  ; 54
    imul si, word [si + 0x6c], 0x5465        ; 69 74 6C 65 54
    db 065h, 078h, 074h               ; js 0x23c
    add byte [bx + 0x69], dl                 ; 00 57 69
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 06Fh                     ; outsw dx, word fs:[si]
    db 077h, 046h                     ; ja 0x216
    db 072h, 061h                     ; jb 0x233
    db 06Dh                           ; insw word es:[di], dx
    add byte gs:[di + 0x65], cl              ; 65 00 4D 65
    db 06Eh                           ; outsb dx, byte [si]
    db 075h, 000h                     ; jne 0x1da
    dec bp                                   ; 4D
    db 065h, 06Eh                     ; outsb dx, byte gs:[si]
    db 075h, 054h                     ; jne 0x233
    db 065h, 078h, 074h               ; js 0x256
    add byte [bp + si + 0x61], al            ; 00 42 61
    arpl word [bp + di + 0x67], bp           ; 63 6B 67
    db 072h, 06Fh                     ; jb 0x259
    db 075h, 06Eh                     ; jne 0x25a
    add byte fs:[bx + si], ah                ; 64 00 20
    add byte [bx + si], ah                   ; 00 20
    add byte [bp + di + 0x6f], ah            ; 00 63 6F
    db 06Ch                           ; insb byte es:[di], dx
    db 06Fh                           ; outsw dx, word [si]
    db 072h, 073h                     ; jb 0x26b
    add byte [bp + di + 0x6f], ah            ; 00 63 6F
    db 06Ch                           ; insb byte es:[di], dx
    db 06Fh                           ; outsw dx, word [si]
    db 072h, 073h                     ; jb 0x272
    add byte [bx + di - 0x6fff], cl          ; 00 89 01 90
    add word [bp + di - 0x5aff], bx          ; 01 9B 01 A5
    add word [bx + di - 0x40ff], si          ; 01 B1 01 BF
    add cx, cx                               ; 01 C9
    add bp, dx                               ; 01 D5
    add dx, bx                               ; 01 DA
    add bx, sp                               ; 01 E3
    add word [bp + 0x75], cx                 ; 01 4E 75
    db 06Ch                           ; insb byte es:[di], dx
    db 06Ch                           ; insb byte es:[di], dx
    push ax                                  ; 50
    db 06Fh                           ; outsw dx, word [si]
    db 072h, 074h                     ; jb 0x290
    add byte [bx + 0x69], dh                 ; 00 77 69
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 06Fh                     ; outsw dx, word fs:[si]
    db 077h, 073h                     ; ja 0x297
    add byte [bx + si], al                   ; 00 00
    db 070h, 06Fh                     ; jo 0x297
    db 072h, 074h                     ; jb 0x29e
    db 073h, 000h                     ; jae 0x22c
    add byte [si + 0x65], ah                 ; 00 64 65
    db 076h, 069h                     ; jbe 0x29a
    arpl word [di + 0x73], sp                ; 63 65 73
    add byte [bx + si], al                   ; 00 00
    db 064h, 065h, 076h, 069h         ; jbe 0x2a3
    arpl word [di + 0x73], sp                ; 63 65 73
    add byte [si], ch                        ; 00 2C
    add byte [si], ch                        ; 00 2C
    add byte [si], ch                        ; 00 2C
    add byte [bx + si], al                   ; 00 00
    db 064h, 065h, 076h, 069h         ; jbe 0x2b2
    db 063h, 065h, 000h               ; arpl word [di], sp
    db 077h, 069h                     ; ja 0x2b7
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 06Fh                     ; outsw dx, word fs:[si]
    db 077h, 073h                     ; ja 0x2c6
    add byte [si], ch                        ; 00 2C
    add byte [si], ch                        ; 00 2C
    add byte [bx + si], al                   ; 00 00
    db 064h, 065h, 076h, 069h         ; jbe 0x2c6
    db 063h, 065h, 000h               ; arpl word [di], sp
    db 077h, 069h                     ; ja 0x2cb
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 06Fh                     ; outsw dx, word fs:[si]
    db 077h, 073h                     ; ja 0x2da
    add byte [si], ch                        ; 00 2C
    add byte [si], ch                        ; 00 2C
    add byte [bx + si], al                   ; 00 00
    db 064h, 065h, 076h, 069h         ; jbe 0x2da
    arpl word [di + 0x73], sp                ; 63 65 73
    add byte [si], ch                        ; 00 2C
    add byte [si], ch                        ; 00 2C
    add byte [si], ch                        ; 00 2C
    add byte [si], ch                        ; 00 2C
    add byte [si + 0x65], ah                 ; 00 64 65
    db 076h, 069h                     ; jbe 0x2ea
    db 063h, 065h, 000h               ; arpl word [di], sp
    db 077h, 069h                     ; ja 0x2ef
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 06Fh                     ; outsw dx, word fs:[si]
    db 077h, 073h                     ; ja 0x2fe
    add byte [bx + 0x69], dh                 ; 00 77 69
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 06Fh                     ; outsw dx, word fs:[si]
    db 077h, 073h                     ; ja 0x306
    add byte [si + 0x65], ah                 ; 00 64 65
    db 076h, 069h                     ; jbe 0x301
    arpl word [di + 0x73], sp                ; 63 65 73
    add byte [si + 0x65], ah                 ; 00 64 65
    db 076h, 069h                     ; jbe 0x309
    arpl word [di + 0x73], sp                ; 63 65 73
    add byte [bx + si], al                   ; 00 00
    db 064h, 065h, 076h, 069h         ; jbe 0x312
    db 063h, 065h, 000h               ; arpl word [di], sp
    db 077h, 069h                     ; ja 0x317
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 06Fh                     ; outsw dx, word fs:[si]
    db 077h, 073h                     ; ja 0x326
    add byte [si], ch                        ; 00 2C
    add byte [si], ch                        ; 00 2C
    add byte [bx + si], al                   ; 00 00
    db 064h, 065h, 076h, 069h         ; jbe 0x326
    arpl word [di + 0x73], sp                ; 63 65 73
    add byte [si], ch                        ; 00 2C
    add byte [0x2e00], ch                    ; 00 2E 00 2E
    db 064h, 072h, 076h               ; jb 0x33f
    add byte [si + 0x45], al                 ; 00 44 45
    push si                                  ; 56
    dec cx                                   ; 49
    inc bx                                   ; 43
    inc bp                                   ; 45
    dec bp                                   ; 4D
    dec di                                   ; 4F
    inc sp                                   ; 44
    inc bp                                   ; 45
    add byte [bx], ah                        ; 00 27
    add byte [bp + 0x75], cl                 ; 00 4E 75
    db 06Ch                           ; insb byte es:[di], dx
    db 06Ch                           ; insb byte es:[di], dx
    push ax                                  ; 50
    db 06Fh                           ; outsw dx, word [si]
    db 072h, 074h                     ; jb 0x353
    add byte [bx + 0x69], dh                 ; 00 77 69
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 06Fh                     ; outsw dx, word fs:[si]
    db 077h, 073h                     ; ja 0x35a
    add byte [si], ch                        ; 00 2C
    add byte [0x2c00], ch                    ; 00 2E 00 2C
    add byte [si + 0x65], ah                 ; 00 64 65
    db 076h, 069h                     ; jbe 0x35b
    db 063h, 065h, 000h               ; arpl word [di], sp
    db 077h, 069h                     ; ja 0x360
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 06Fh                     ; outsw dx, word fs:[si]
    db 077h, 073h                     ; ja 0x36f
    add byte [bx + 0x69], dh                 ; 00 77 69
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 06Fh                     ; outsw dx, word fs:[si]
    db 077h, 073h                     ; ja 0x377
    add byte [bx + si], al                   ; 00 00
    inc bx                                   ; 43
    dec di                                   ; 4F
    dec bp                                   ; 4D
    xor word [bp + si], di                   ; 31 3A
    add byte [bp + di + 0x4f], al            ; 00 43 4F
    dec bp                                   ; 4D
    xor bh, byte [bp + si]                   ; 32 3A
    add byte [bx + si + 0x6f], dh            ; 00 70 6F
    db 072h, 074h                     ; jb 0x38a
    db 073h, 000h                     ; jae 0x318
    sub al, 0                                ; 2C 00
    xor word [bp + si], si                   ; 31 32
    xor byte [bx + si], dh                   ; 30 30
    add byte [si], ch                        ; 00 2C
    add byte [si], ch                        ; 00 2C
    add byte [si], ch                        ; 00 2C
    add byte [bx + di], dh                   ; 00 31
    add byte [bx + di], dh                   ; 00 31
    db 02Eh, 035h, 000h, 032h         ; xor ax, 0x3200
    add byte [si], ch                        ; 00 2C
    add byte [si], ch                        ; 00 2C
    add byte gs:[si], ch                     ; 65 00 2C
    db 06Fh                           ; outsw dx, word [si]
    add byte [si], ch                        ; 00 2C
    db 06Eh                           ; outsb dx, byte [si]
    add byte [si], ch                        ; 00 2C
    xor al, 0                                ; 34 00
    sub al, 0x35                             ; 2C 35
    add byte [si], ch                        ; 00 2C
    add byte ss:[si], ch                     ; 36 00 2C
    aaa                                      ; 37
    add byte [si], ch                        ; 00 2C
    cmp byte [bx + si], al                   ; 38 00
    sub al, 0x31                             ; 2C 31
    add byte [si], ch                        ; 00 2C
    xor word [0x35], bp                      ; 31 2E 35 00
    sub al, 0x32                             ; 2C 32
    add byte [si], ch                        ; 00 2C
    db 070h, 000h                     ; jo 0x355
    add byte [bp + di + 0x4f], al            ; 00 43 4F
    dec bp                                   ; 4D
    xor word [bp + si], di                   ; 31 3A
    add byte [bp + di + 0x4f], al            ; 00 43 4F
    dec bp                                   ; 4D
    xor bh, byte [bp + si]                   ; 32 3A
    add byte [bx + si + 0x6f], dh            ; 00 70 6F
    db 072h, 074h                     ; jb 0x3da
    db 073h, 000h                     ; jae 0x368
    db 070h, 06Fh                     ; jo 0x3d9
    db 072h, 074h                     ; jb 0x3e0
    db 073h, 000h                     ; jae 0x36e
    db 03Ah, 05Ch, 000h               ; cmp bl, byte [si]
    pop sp                                   ; 5C
    add byte [bp + si], ch                   ; 00 2A
    add byte [bp + si], ch                   ; 00 2A
    add byte [si + 0x44], al                 ; 00 44 44
    push dx                                  ; 52
    push si                                  ; 56
    add byte [bp + 0x4f], al                 ; 00 46 4F
    dec si                                   ; 4E
    push sp                                  ; 54
    push dx                                  ; 52
    inc bp                                   ; 45
    push bx                                  ; 53
    add byte [bp + si], bh                   ; 00 3A
    add byte [si], ch                        ; 00 2C
    add byte [si], ch                        ; 00 2C
    add byte [bp + si], bh                   ; 00 3A
    add byte [bp + di + 0x65], ch            ; 00 6B 65
    db 072h, 06Eh                     ; jb 0x3fe
    db 065h, 06Ch                     ; insb byte es:[di], dx
    db 000h, 05Ch, 000h               ; add byte [si], bl
    dec si                                   ; 4E
    db 075h, 06Ch                     ; jne 0x404
    db 06Ch                           ; insb byte es:[di], dx
    push ax                                  ; 50
    db 06Fh                           ; outsw dx, word [si]
    db 072h, 074h                     ; jb 0x411
    add byte [bx + 0x69], dh                 ; 00 77 69
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 06Fh                     ; outsw dx, word fs:[si]
    db 077h, 073h                     ; ja 0x418
    add byte [bx + si], al                   ; 00 00
    db 064h, 065h, 076h, 069h         ; jbe 0x414
    arpl word [di + 0x73], sp                ; 63 65 73
    add byte [si], ch                        ; 00 2C
    add byte [si], ch                        ; 00 2C
    add byte [0x2c00], ch                    ; 00 2E 00 2C
    add byte [si + 0x65], ah                 ; 00 64 65
    db 076h, 069h                     ; jbe 0x424
    arpl word [di + 0x73], sp                ; 63 65 73
    add byte [si + 0x65], ah                 ; 00 64 65
    db 076h, 069h                     ; jbe 0x42c
    arpl word [di + 0x73], sp                ; 63 65 73
    add byte [bx + si], al                   ; 00 00
    db 064h, 065h, 076h, 069h         ; jbe 0x435
    db 063h, 065h, 000h               ; arpl word [di], sp
    db 077h, 069h                     ; ja 0x43a
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 06Fh                     ; outsw dx, word fs:[si]
    db 077h, 073h                     ; ja 0x449
    add byte [si], ch                        ; 00 2C
    add byte [si], ch                        ; 00 2C
    add byte [si + 0x65], ah                 ; 00 64 65
    db 076h, 069h                     ; jbe 0x448
    db 063h, 065h, 000h               ; arpl word [di], sp
    db 077h, 069h                     ; ja 0x44d
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 06Fh                     ; outsw dx, word fs:[si]
    db 077h, 073h                     ; ja 0x45c
    add byte [bx + 0x69], dh                 ; 00 77 69
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 06Fh                     ; outsw dx, word fs:[si]
    db 077h, 073h                     ; ja 0x464
    add byte [bx + si], al                   ; 00 00
    db 064h, 065h, 076h, 069h         ; jbe 0x460
    arpl word [di + 0x73], sp                ; 63 65 73
    add byte [si], ch                        ; 00 2C
    add byte [bx + si], al                   ; 00 00
    db 066h, 06Fh                     ; outsd dx, dword [si]
    db 06Eh                           ; outsb dx, byte [si]
    db 074h, 073h                     ; je 0x476
    add byte [0], ch                         ; 00 2E 00 00
    db 064h, 065h, 076h, 069h         ; jbe 0x474
    arpl word [di + 0x73], sp                ; 63 65 73
    add byte [bx + si], al                   ; 00 00
    db 064h, 065h, 076h, 069h         ; jbe 0x47d
    arpl word [di + 0x73], sp                ; 63 65 73
    add byte [si], ch                        ; 00 2C
    add byte [si], ch                        ; 00 2C
    add byte [si], ch                        ; 00 2C
    add byte [bx + si], al                   ; 00 00
    pop sp                                   ; 5C
    db 000h, 05Ch, 000h               ; add byte [si], bl
    add byte cs:[bp + 0x6f], ah              ; 2E 00 66 6F
    db 06Eh                           ; outsb dx, byte [si]
    db 074h, 073h                     ; je 0x49d
    add byte [bx + si], al                   ; 00 00
    db 064h, 065h, 076h, 069h         ; jbe 0x499
    arpl word [di + 0x73], sp                ; 63 65 73
    add byte [si], ch                        ; 00 2C
    add byte [si], ch                        ; 00 2C
    add byte [si], ch                        ; 00 2C
    add byte [bx + si], al                   ; 00 00
    db 064h, 065h, 076h, 069h         ; jbe 0x4a8
    arpl word [di + 0x73], sp                ; 63 65 73
    add byte [si + 0x65], ah                 ; 00 64 65
    db 076h, 069h                     ; jbe 0x4b0
    arpl word [di + 0x73], sp                ; 63 65 73
    add byte [bx + si], al                   ; 00 00
    db 064h, 065h, 076h, 069h         ; jbe 0x4b9
    db 063h, 065h, 000h               ; arpl word [di], sp
    db 077h, 069h                     ; ja 0x4be
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 06Fh                     ; outsw dx, word fs:[si]
    db 077h, 073h                     ; ja 0x4cd
    add byte [si], ch                        ; 00 2C
    add byte [si], ch                        ; 00 2C
    add byte [bx + si], al                   ; 00 00
    db 064h, 065h, 076h, 069h         ; jbe 0x4cd
    db 063h, 065h, 000h               ; arpl word [di], sp
    db 077h, 069h                     ; ja 0x4d2
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 06Fh                     ; outsw dx, word fs:[si]
    db 077h, 073h                     ; ja 0x4e1
    add byte [bx + 0x69], dh                 ; 00 77 69
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 06Fh                     ; outsw dx, word fs:[si]
    db 077h, 073h                     ; ja 0x4e9
    add byte [si + 0x65], ah                 ; 00 64 65
    db 076h, 069h                     ; jbe 0x4e4
    arpl word [di + 0x73], sp                ; 63 65 73
    add byte [0x6600], ch                    ; 00 2E 00 66
    db 06Fh                           ; outsw dx, word [si]
    db 06Eh                           ; outsb dx, byte [si]
    db 074h, 073h                     ; je 0x4f9
    add byte [bp + 0x6f], ah                 ; 00 66 6F
    db 06Eh                           ; outsb dx, byte [si]
    db 074h, 073h                     ; je 0x4ff
    add byte [bx + si], al                   ; 00 00
    db 066h, 06Fh                     ; outsd dx, dword [si]
    db 06Eh                           ; outsb dx, byte [si]
    db 074h, 073h                     ; je 0x506
    add byte [bx + si], al                   ; 00 00
    db 066h, 06Fh                     ; outsd dx, dword [si]
    db 06Eh                           ; outsb dx, byte [si]
    db 074h, 073h                     ; je 0x50d
    add byte [bx + si], al                   ; 00 00
    db 066h, 06Fh                     ; outsd dx, dword [si]
    db 06Eh                           ; outsb dx, byte [si]
    db 074h, 073h                     ; je 0x514
    add byte [bp + 0x6f], ah                 ; 00 66 6F
    db 06Eh                           ; outsb dx, byte [si]
    db 074h, 073h                     ; je 0x51a
    add byte [bp + 0x6f], ah                 ; 00 66 6F
    db 06Eh                           ; outsb dx, byte [si]
    db 074h, 073h                     ; je 0x520
    add byte [bx + di + 0x43], ch            ; 00 69 43
    db 06Fh                           ; outsw dx, word [si]
    db 075h, 06Eh                     ; jne 0x521
    db 074h, 072h                     ; je 0x527
    db 079h, 000h                     ; jns 0x4b7
    imul ax, word [si + 0x61], 0x6574        ; 69 44 61 74 65
    add byte [bx + di + 0x43], ch            ; 00 69 43
    db 075h, 072h                     ; jne 0x533
    db 072h, 065h                     ; jb 0x528
    db 06Eh                           ; outsb dx, byte [si]
    db 063h, 079h, 000h               ; arpl word [bx + di], di
    imul ax, word [si + 0x69], 0x6967        ; 69 44 69 67 69
    db 074h, 073h                     ; je 0x541
    add byte [bx + di + 0x54], ch            ; 00 69 54
    imul bp, word [di + 0x65], 0x6900        ; 69 6D 65 00 69
    dec sp                                   ; 4C
    db 07Ah, 065h                     ; jp 0x53e
    db 072h, 06Fh                     ; jb 0x54a
    add byte [bp + di + 0x31], dh            ; 00 73 31
    xor word [di], si                        ; 31 35
    cmp word [bx + si], ax                   ; 39 00
    db 073h, 032h                     ; jae 0x516
    xor si, word [di]                        ; 33 35
    cmp word [bx + si], ax                   ; 39 00
    db 073h, 043h                     ; jae 0x52d
    db 075h, 072h                     ; jne 0x55e
    db 072h, 065h                     ; jb 0x553
    db 06Eh                           ; outsb dx, byte [si]
    db 063h, 079h, 000h               ; arpl word [bx + di], di
    db 073h, 054h                     ; jae 0x548
    push 0x756f                              ; 68 6F 75
    db 073h, 061h                     ; jae 0x55a
    db 06Eh                           ; outsb dx, byte [si]
    add byte fs:[bp + di + 0x44], dh         ; 64 00 73 44
    arpl word gs:[bx + di + 0x6d], bp        ; 65 63 69 6D
    popaw                                    ; 61
    db 06Ch                           ; insb byte es:[di], dx
    add byte [bp + di + 0x44], dh            ; 00 73 44
    popaw                                    ; 61
    db 074h, 065h                     ; je 0x56f
    add byte [bp + di + 0x54], dh            ; 00 73 54
    imul bp, word [di + 0x65], 0x7300        ; 69 6D 65 00 73
    dec sp                                   ; 4C
    db 069h, 073h, 074h, 000h, 000h   ; imul si, word [bp + di + 0x74], 0
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add al, byte [bx + si]                   ; 02 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    inc cx                                   ; 41
    dec bp                                   ; 4D
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    push ax                                  ; 50
    dec bp                                   ; 4D
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    and al, 0                                ; 24 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    sub al, 0                                ; 2C 00
    add byte [bx + si], al                   ; 00 00
    add byte cs:[bx + si], al                ; 2E 00 00
    add byte [bx], ch                        ; 00 2F
    add byte [bx + si], al                   ; 00 00
    add byte [bp + si], bh                   ; 00 3A
    add byte [bx + si], al                   ; 00 00
    add byte [si], ch                        ; 00 2C
    add byte [bx + si], al                   ; 00 00
    add byte [bp - 0x48fc], ch               ; 00 AE 04 B7
    add al, 0xbd                             ; 04 BD
    add al, 0xc7                             ; 04 C7
    add al, 0xcf                             ; 04 CF
    add al, 0xd5                             ; 04 D5
    add al, 0xdc                             ; 04 DC
    add al, 0xe2                             ; 04 E2
    add al, 0xe8                             ; 04 E8
    add al, 0xf2                             ; 04 F2
    add al, 0xfc                             ; 04 FC
    add al, 5                                ; 04 05
    add ax, 0x50b                            ; 05 0B 05
    adc word [di], ax                        ; 11 05
    sub al, byte [bx + si]                   ; 2A 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    and byte [bx + si], al                   ; 20 00
    and byte [bx + si], al                   ; 20 00
    db 069h, 06Eh, 074h, 06Ch, 000h   ; imul bp, word [bp + 0x74], 0x6c
    xor byte [bx + si], al                   ; 30 00
    db 069h, 06Eh, 074h, 06Ch, 000h   ; imul bp, word [bp + 0x74], 0x6c
    db 069h, 06Eh, 074h, 06Ch, 000h   ; imul bp, word [bp + 0x74], 0x6c
    and ah, byte [bp + si]                   ; 22 22
    add byte [bp + si], ah                   ; 00 22
    and byte [bp + si], ah                   ; 20 22
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 064h, 065h, 076h, 069h         ; jbe 0x616
    arpl word [di + 0x73], sp                ; 63 65 73
    add byte [bx + si], al                   ; 00 00
    db 064h, 065h, 076h, 069h         ; jbe 0x61f
    arpl word [di + 0x73], sp                ; 63 65 73
    add byte [si], ch                        ; 00 2C
    add byte [si], ch                        ; 00 2C
    add byte [si], ch                        ; 00 2C
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di - 0x7e7f], al          ; 00 81 81 81
    add word [bx + di], ax                   ; 01 01
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si - 0x47ea], ah          ; 00 A0 16 B8
    push ss                                  ; 16
    db 0C0h                           ; C0
    push ss                                  ; 16
    or al, 0x17                              ; 0C 17