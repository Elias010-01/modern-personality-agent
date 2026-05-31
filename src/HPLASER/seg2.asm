; HPLASER/seg2.asm
; Semantic data - verified byte-exact
BITS 16

    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 005h, 000h, 000h               ; add ax, 0
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add word [bp + si], ax                   ; 01 02
    add byte [si], al                        ; 00 04
    add ax, cx                               ; 01 C8
    add byte [bx + si], al                   ; 00 00
    db 00Fh, 060h, 009h               ; punpcklbw mm1, dword [bx + di]
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    adc word [bx + si], ax                   ; 11 00
    or byte [bx + si], al                    ; 08 00
    add byte [bx + si], al                   ; 00 00
    sbb word [bx + si], ax                   ; 19 00
    add al, byte [bx + si]                   ; 02 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    or byte [bx + si], al                    ; 08 00
    add word [bx + si], cx                   ; 01 08
    add byte [bx + si], al                   ; 00 00
    pop es                                   ; 07
    add byte [si], ch                        ; 00 2C
    add word [si], bp                        ; 01 2C
    add word [bx + si + 0x5001], bp          ; 01 A8 01 50
    db 003h, 0FEh                     ; add di, si
    add dh, bh                               ; 00 FE
    add byte [si], ch                        ; 00 2C
    add sp, dx                               ; 01 D4
    db 0FEh                           ; FE
    in al, dx                                ; EC
    or sp, bp                                ; 09 EC
    or word [si], bp                         ; 09 2C
    add sp, dx                               ; 01 D4
    db 0FEh                           ; FE
    db 064h, 000h, 064h, 000h         ; add byte fs:[si], ah
    sub al, 1                                ; 2C 01
    aam 0xfe                                 ; D4 FE
    db 0E8h, 003h, 0E8h               ; call 0xffffe85e
    add bp, word [si]                        ; 03 2C
    add sp, dx                               ; 01 D4
    db 0FEh                           ; FE
    mov al, byte [0xa005]                    ; A0 05 A0
    add ax, 0x12c                            ; 05 2C 01
    aam 0xfe                                 ; D4 FE
    sub al, 1                                ; 2C 01
    sub al, 1                                ; 2C 01
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], al                   ; 00 01
    add al, byte [bx + si]                   ; 02 00
    enter 0x400, 1                           ; C8 00 04 01
    pushaw                                   ; 60
    or word [bx + si], ax                    ; 09 00
    sgdt [bx + si]                           ; 0F 01 00
    add word [bx + si], ax                   ; 01 00
    adc word [bx + si], ax                   ; 11 00
    or byte [bx + si], al                    ; 08 00
    add byte [bx + si], al                   ; 00 00
    sbb word [bx + si], ax                   ; 19 00
    add al, byte [bx + si]                   ; 02 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    or byte [bx + si], al                    ; 08 00
    add word [bx + si], cx                   ; 01 08
    add byte [bx + si], al                   ; 00 00
    pop es                                   ; 07
    add byte [si], ch                        ; 00 2C
    add word [si], bp                        ; 01 2C
    add word [bx + si + 0x5001], bp          ; 01 A8 01 50
    db 003h, 0FEh                     ; add di, si
    add dh, bh                               ; 00 FE
    add byte [si], ch                        ; 00 2C
    add sp, dx                               ; 01 D4
    db 0FEh                           ; FE
    in al, dx                                ; EC
    or sp, bp                                ; 09 EC
    or word [si], bp                         ; 09 2C
    add sp, dx                               ; 01 D4
    db 0FEh                           ; FE
    db 064h, 000h, 064h, 000h         ; add byte fs:[si], ah
    sub al, 1                                ; 2C 01
    aam 0xfe                                 ; D4 FE
    db 0E8h, 003h, 0E8h               ; call 0xffffe8c6
    add bp, word [si]                        ; 03 2C
    add sp, dx                               ; 01 D4
    db 0FEh                           ; FE
    mov al, byte [0xa005]                    ; A0 05 A0
    add ax, 0x12c                            ; 05 2C 01
    aam 0xfe                                 ; D4 FE
    sub al, 1                                ; 2C 01
    sub al, 1                                ; 2C 01
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 01Bh, 045h, 000h               ; sbb ax, word [di]
    sbb sp, word [0x316c]                    ; 1B 26 6C 31
    db 06Fh                           ; outsw dx, word [si]
    db 031h, 045h, 000h               ; xor word [di], ax
    sbb sp, word [0x306c]                    ; 1B 26 6C 30
    db 06Fh                           ; outsw dx, word [si]
    db 032h, 045h, 000h               ; xor al, byte [di]
    or al, 0                                 ; 0C 00
    db 000h, 042h, 000h               ; add byte [bp + si], al
    inc si                                   ; 46
    db 000h, 054h, 000h               ; add byte [si], dl
    cmp al, 0                                ; 3C 00
    cmp al, 0                                ; 3C 00
    push 0x6c70                              ; 68 70 6C
    popaw                                    ; 61
    db 073h, 065h                     ; jae 0x16b
    db 072h, 000h                     ; jb 0x108
    push 0x6c70                              ; 68 70 6C
    popaw                                    ; 61
    db 073h, 065h                     ; jae 0x173
    db 072h, 000h                     ; jb 0x110
    add byte [bx + di + 0x63], ch            ; 00 69 63
    db 06Fh                           ; outsw dx, word [si]
    db 075h, 06Eh                     ; jne 0x184
    db 074h, 072h                     ; je 0x18a
    db 079h, 000h                     ; jns 0x11a
    db 069h, 06Eh, 074h, 06Ch, 000h   ; imul bp, word [bp + 0x74], 0x6c
    add byte [bp + di], bl                   ; 00 1B
    sub ah, byte [bp + si + 0x30]            ; 2A 62 30
    push di                                  ; 57
    add byte [bp + di], bl                   ; 00 1B
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    sbb sp, word [0x4464]                    ; 1B 26 64 44
    add byte [bp + di], bl                   ; 00 1B
    db 026h, 064h, 040h               ; inc ax
    add byte [bx + si], al                   ; 00 00
    db 072h, 065h                     ; jb 0x1a5
    db 073h, 06Fh                     ; jae 0x1b1
    db 06Ch                           ; insb byte es:[di], dx
    db 075h, 074h                     ; jne 0x1b9
    imul bp, word [bx + 0x6e], 0x4800        ; 69 6F 6E 00 48
    push ax                                  ; 50
    and byte [si + 0x61], cl                 ; 20 4C 61
    db 073h, 065h                     ; jae 0x1b5
    db 072h, 04Ah                     ; jb 0x19c
    db 065h, 074h, 000h               ; je 0x155
    db 070h, 061h                     ; jo 0x1b8
    db 070h, 065h                     ; jo 0x1be
    db 072h, 000h                     ; jb 0x15b
    dec ax                                   ; 48
    push ax                                  ; 50
    and byte [si + 0x61], cl                 ; 20 4C 61
    db 073h, 065h                     ; jae 0x1c7
    db 072h, 04Ah                     ; jb 0x1ae
    db 065h, 074h, 000h               ; je 0x167
    arpl word [bx + di + 0x72], sp           ; 63 61 72
    db 074h, 072h                     ; je 0x1de
    db 069h, 064h, 067h, 065h, 000h   ; imul sp, word [si + 0x67], 0x65
    dec ax                                   ; 48
    push ax                                  ; 50
    and byte [si + 0x61], cl                 ; 20 4C 61
    db 073h, 065h                     ; jae 0x1dd
    db 072h, 04Ah                     ; jb 0x1c4
    db 065h, 074h, 000h               ; je 0x17d
    arpl word [bx + 0x70], bp                ; 63 6F 70
    imul sp, word [di + 0x73], 0x4800        ; 69 65 73 00 48
    push ax                                  ; 50
    and byte [si + 0x61], cl                 ; 20 4C 61
    db 073h, 065h                     ; jae 0x1f0
    db 072h, 04Ah                     ; jb 0x1d7
    db 065h, 074h, 000h               ; je 0x190
    db 06Fh                           ; outsw dx, word [si]
    db 072h, 069h                     ; jb 0x1fc
    db 065h, 06Eh                     ; outsb dx, byte gs:[si]
    db 074h, 000h                     ; je 0x197
    dec ax                                   ; 48
    push ax                                  ; 50
    and byte [si + 0x61], cl                 ; 20 4C 61
    db 073h, 065h                     ; jae 0x203
    db 072h, 04Ah                     ; jb 0x1ea
    db 065h, 074h, 000h               ; je 0x1a3
    db 074h, 072h                     ; je 0x217
    popaw                                    ; 61
    db 079h, 000h                     ; jns 0x1a8
    dec ax                                   ; 48
    push ax                                  ; 50
    and byte [si + 0x61], cl                 ; 20 4C 61
    db 073h, 065h                     ; jae 0x214
    db 072h, 04Ah                     ; jb 0x1fb
    db 065h, 074h, 000h               ; je 0x1b4
    db 072h, 065h                     ; jb 0x21b
    db 073h, 06Fh                     ; jae 0x227
    db 06Ch                           ; insb byte es:[di], dx
    db 075h, 074h                     ; jne 0x22f
    imul bp, word [bx + 0x6e], 0x4800        ; 69 6F 6E 00 48
    push ax                                  ; 50
    and byte [si + 0x61], cl                 ; 20 4C 61
    db 073h, 065h                     ; jae 0x22b
    db 072h, 04Ah                     ; jb 0x212
    db 065h, 074h, 000h               ; je 0x1cb
    db 070h, 061h                     ; jo 0x22e
    db 070h, 065h                     ; jo 0x234
    db 072h, 000h                     ; jb 0x1d1
    dec ax                                   ; 48
    push ax                                  ; 50
    and byte [si + 0x61], cl                 ; 20 4C 61
    db 073h, 065h                     ; jae 0x23d
    db 072h, 04Ah                     ; jb 0x224
    db 065h, 074h, 000h               ; je 0x1dd
    arpl word [bx + di + 0x72], sp           ; 63 61 72
    db 074h, 072h                     ; je 0x254
    db 069h, 064h, 067h, 065h, 000h   ; imul sp, word [si + 0x67], 0x65
    dec ax                                   ; 48
    push ax                                  ; 50
    and byte [si + 0x61], cl                 ; 20 4C 61
    db 073h, 065h                     ; jae 0x253
    db 072h, 04Ah                     ; jb 0x23a
    db 065h, 074h, 000h               ; je 0x1f3
    arpl word [bx + 0x70], bp                ; 63 6F 70
    imul sp, word [di + 0x73], 0x4800        ; 69 65 73 00 48
    push ax                                  ; 50
    and byte [si + 0x61], cl                 ; 20 4C 61
    db 073h, 065h                     ; jae 0x266
    db 072h, 04Ah                     ; jb 0x24d
    db 065h, 074h, 000h               ; je 0x206
    db 06Fh                           ; outsw dx, word [si]
    db 072h, 069h                     ; jb 0x272
    db 065h, 06Eh                     ; outsb dx, byte gs:[si]
    db 074h, 000h                     ; je 0x20d
    dec ax                                   ; 48
    push ax                                  ; 50
    and byte [si + 0x61], cl                 ; 20 4C 61
    db 073h, 065h                     ; jae 0x279
    db 072h, 04Ah                     ; jb 0x260
    db 065h, 074h, 000h               ; je 0x219
    db 074h, 072h                     ; je 0x28d
    popaw                                    ; 61
    db 079h, 000h                     ; jns 0x21e
    dec ax                                   ; 48
    push ax                                  ; 50
    and byte [si + 0x61], cl                 ; 20 4C 61
    db 073h, 065h                     ; jae 0x28a
    db 072h, 04Ah                     ; jb 0x271
    db 065h, 074h, 000h               ; je 0x22a
    db 064h, 074h, 04Dh               ; je 0x27a
    dec di                                   ; 4F
    inc sp                                   ; 44
    inc bp                                   ; 45
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    sbb bp, word [bx + si]                   ; 1B 28
    db 073h, 030h                     ; jae 0x268
    push sp                                  ; 54
    add byte [si], bl                        ; 00 1C
    push cs                                  ; 0E
    or cl, byte [bp + si]                    ; 0A 0A
    xor al, 2                                ; 34 02
    sbb bp, word [bx + si]                   ; 1B 28
    cmp byte [di + 0x1b], dl                 ; 38 55 1B
    sub byte [bp + di + 0x30], dh            ; 28 73 30
    db 070h, 031h                     ; jo 0x27b
    xor byte [bx + si + 0x31], ch            ; 30 68 31
    xor dh, byte [bp + 0x30]                 ; 32 76 30
    db 073h, 030h                     ; jae 0x282
    db 062h, 033h                     ; bound si, dword [bp + di]
    push sp                                  ; 54
    add byte [bp + di], bl                   ; 00 1B
    sub byte [bx + si], bh                   ; 28 38
    push bp                                  ; 55
    sbb bp, word [bx + si]                   ; 1B 28
    db 073h, 030h                     ; jae 0x28e
    db 070h, 031h                     ; jo 0x291
    xor byte [bx + si + 0x31], ch            ; 30 68 31
    xor dh, byte [bp + 0x30]                 ; 32 76 30
    db 073h, 033h                     ; jae 0x29b
    db 062h, 033h                     ; bound si, dword [bp + di]
    push sp                                  ; 54
    add byte [bp + di], bl                   ; 00 1B
    sub byte [bx + si], bh                   ; 28 38
    push bp                                  ; 55
    sbb bp, word [bx + si]                   ; 1B 28
    db 073h, 030h                     ; jae 0x2a4
    db 070h, 031h                     ; jo 0x2a7
    xor byte [bx + si + 0x31], ch            ; 30 68 31
    xor dh, byte [bp + 0x31]                 ; 32 76 31
    db 073h, 030h                     ; jae 0x2ae
    db 062h, 033h                     ; bound si, dword [bp + di]
    push sp                                  ; 54
    add byte [bp + di], bl                   ; 00 1B
    sub byte [bx + si], bh                   ; 28 38
    push bp                                  ; 55
    sbb bp, word [bx + si]                   ; 1B 28
    db 073h, 030h                     ; jae 0x2ba
    db 070h, 031h                     ; jo 0x2bd
    db 036h, 02Eh, 036h, 036h, 068h, 038h, 02Eh ; push 0x2e38
    xor ax, 0x3076                           ; 35 76 30
    db 073h, 030h                     ; jae 0x2c8
    db 062h, 030h                     ; bound si, dword [bx + si]
    push sp                                  ; 54
    add byte [bp + di], bl                   ; 00 1B
    sub byte [di + 0x1b], dl                 ; 28 55 1B
    sub byte [bp + di + 0x35], dh            ; 28 73 35
    db 074h, 038h                     ; je 0x2dd
    db 076h, 073h                     ; jbe 0x31a
    db 031h, 050h, 000h               ; xor word [bx + si], dx
    sbb bp, word [bx + si]                   ; 1B 28
    push bp                                  ; 55
    sbb bp, word [bx + si]                   ; 1B 28
    db 073h, 035h                     ; jae 0x2e6
    db 074h, 031h                     ; je 0x2e4
    xor byte [bp + 0x73], dh                 ; 30 76 73
    db 062h, 031h                     ; bound si, dword [bx + di]
    push ax                                  ; 50
    add byte [bp + di], bl                   ; 00 1B
    sub byte [di + 0x1b], dl                 ; 28 55 1B
    sub byte [bp + di + 0x35], dh            ; 28 73 35
    db 074h, 031h                     ; je 0x2f4
    xor byte [bp + 0x73], dh                 ; 30 76 73
    xor ah, byte [bp + si + 0x31]            ; 32 62 31
    push ax                                  ; 50
    add byte [bp + di], bl                   ; 00 1B
    sub byte [di + 0x1b], dl                 ; 28 55 1B
    sub byte [bp + di + 0x35], dh            ; 28 73 35
    db 074h, 031h                     ; je 0x305
    xor byte [bp + 0x31], dh                 ; 30 76 31
    db 073h, 031h                     ; jae 0x30a
    push ax                                  ; 50
    add byte [bp + di], bl                   ; 00 1B
    sub byte [di + 0x1b], dl                 ; 28 55 1B
    sub byte [bp + di + 0x34], dh            ; 28 73 34
    db 074h, 031h                     ; je 0x315
    xor al, 0x76                             ; 34 76
    db 073h, 031h                     ; jae 0x319
    push ax                                  ; 50
    add byte [bp + di], bl                   ; 00 1B
    sub byte [bx + si], bh                   ; 28 38
    push bp                                  ; 55
    sbb bp, word [bx + si]                   ; 1B 28
    db 073h, 038h                     ; jae 0x32a
    db 074h, 031h                     ; je 0x325
    xor ch, byte [bx + si + 0x31]            ; 32 68 31
    xor byte [bp + 0x30], dh                 ; 30 76 30
    db 073h, 062h                     ; jae 0x35e
    push ax                                  ; 50
    add byte [bp + di], bl                   ; 00 1B
    sub byte [bx + si], bh                   ; 28 38
    push bp                                  ; 55
    sbb bp, word [bx + si]                   ; 1B 28
    db 073h, 038h                     ; jae 0x33e
    db 074h, 031h                     ; je 0x339
    xor ch, byte [bx + si + 0x31]            ; 32 68 31
    xor byte [bp + 0x33], dh                 ; 30 76 33
    db 062h, 050h, 000h               ; bound dx, dword [bx + si]
    sbb bp, word [bx + si]                   ; 1B 28
    cmp byte [di + 0x1b], dl                 ; 38 55 1B
    sub byte [bp + di + 0x38], dh            ; 28 73 38
    db 074h, 031h                     ; je 0x34c
    xor ch, byte [bx + si + 0x31]            ; 32 68 31
    db 073h, 031h                     ; jae 0x351
    xor byte [bp + 0x62], dh                 ; 30 76 62
    push ax                                  ; 50
    add byte [bp + di], bl                   ; 00 1B
    sub byte [bx + si], bh                   ; 28 38
    push bp                                  ; 55
    sbb bp, word [bx + si]                   ; 1B 28
    db 073h, 030h                     ; jae 0x35d
    db 070h, 031h                     ; jo 0x360
    xor ch, byte [bx + si + 0x31]            ; 32 68 31
    xor dh, byte [bp + 0x30]                 ; 32 76 30
    db 073h, 030h                     ; jae 0x367
    db 062h, 036h, 054h, 000h         ; bound si, dword [0x54]
    sbb bp, word [bx + si]                   ; 1B 28
    cmp byte [di + 0x1b], dl                 ; 38 55 1B
    sub byte [bp + di + 0x30], dh            ; 28 73 30
    db 070h, 031h                     ; jo 0x376
    xor ch, byte [bx + si + 0x31]            ; 32 68 31
    xor byte [bp + 0x30], dh                 ; 30 76 30
    db 073h, 033h                     ; jae 0x380
    db 062h, 036h, 054h, 000h         ; bound si, dword [0x54]
    sbb bp, word [bx + si]                   ; 1B 28
    cmp byte [di + 0x1b], dl                 ; 38 55 1B
    sub byte [bp + di + 0x30], dh            ; 28 73 30
    db 070h, 031h                     ; jo 0x38c
    xor ch, byte [bx + si + 0x31]            ; 32 68 31
    xor byte [bp + 0x31], dh                 ; 30 76 31
    db 073h, 030h                     ; jae 0x393
    db 062h, 036h, 054h, 000h         ; bound si, dword [0x54]
    sbb bp, word [bx + si]                   ; 1B 28
    cmp byte [di + 0x1b], dl                 ; 38 55 1B
    sub byte [bp + di + 0x35], dh            ; 28 73 35
    db 074h, 038h                     ; je 0x3a9
    db 076h, 073h                     ; jbe 0x3e6
    db 031h, 050h, 000h               ; xor word [bx + si], dx
    sbb bp, word [bx + si]                   ; 1B 28
    cmp byte [di + 0x1b], dl                 ; 38 55 1B
    sub byte [bp + di + 0x35], dh            ; 28 73 35
    db 074h, 031h                     ; je 0x3b1
    xor byte [bp + 0x73], dh                 ; 30 76 73
    db 062h, 031h                     ; bound si, dword [bx + di]
    push ax                                  ; 50
    add byte [bp + di], bl                   ; 00 1B
    sub byte [bx + si], bh                   ; 28 38
    push bp                                  ; 55
    sbb bp, word [bx + si]                   ; 1B 28
    db 073h, 035h                     ; jae 0x3c4
    db 074h, 031h                     ; je 0x3c2
    xor byte [bp + 0x73], dh                 ; 30 76 73
    xor ah, byte [bp + si + 0x31]            ; 32 62 31
    push ax                                  ; 50
    add byte [bp + di], bl                   ; 00 1B
    sub byte [bx + si], bh                   ; 28 38
    push bp                                  ; 55
    sbb bp, word [bx + si]                   ; 1B 28
    db 073h, 035h                     ; jae 0x3d6
    db 074h, 031h                     ; je 0x3d4
    xor byte [bp + 0x31], dh                 ; 30 76 31
    db 073h, 031h                     ; jae 0x3d9
    push ax                                  ; 50
    add byte [bp + di], bl                   ; 00 1B
    sub byte [bx + si], bh                   ; 28 38
    push bp                                  ; 55
    sbb bp, word [bx + si]                   ; 1B 28
    db 073h, 034h                     ; jae 0x3e6
    db 074h, 031h                     ; je 0x3e5
    xor al, 0x76                             ; 34 76
    db 073h, 031h                     ; jae 0x3e9
    push ax                                  ; 50
    add byte [bp + di], bl                   ; 00 1B
    sub byte [bx + si], bh                   ; 28 38
    push bp                                  ; 55
    sbb bp, word [bx + si]                   ; 1B 28
    db 073h, 074h                     ; jae 0x436
    cmp byte [0x7635], ch                    ; 38 2E 35 76
    xor word [0x362e], si                    ; 31 36 2E 36
    aaa                                      ; 37
    db 068h, 050h, 000h               ; push 0x50
    sbb bp, word [bx + si]                   ; 1B 28
    xor byte [di + 0x1b], dl                 ; 30 55 1B
    sub byte [bp + di + 0x30], dh            ; 28 73 30
    db 070h, 036h                     ; jo 0x40e
    db 02Eh, 035h, 068h, 031h         ; xor ax, 0x3168
    cmp byte [bp + 0x30], dh                 ; 38 76 30
    db 073h, 033h                     ; jae 0x414
    db 062h, 031h                     ; bound si, dword [bx + di]
    db 031h, 054h, 000h               ; xor word [si], dx
    sbb bp, word [bx + si]                   ; 1B 28
    xor byte [di + 0x1b], dl                 ; 30 55 1B
    sub byte [bp + di + 0x30], dh            ; 28 73 30
    db 070h, 038h                     ; jo 0x428
    xor word cs:[bx + si + 0x31], bp         ; 2E 31 68 31
    db 036h, 076h, 030h               ; jbe 0x427
    db 073h, 033h                     ; jae 0x42c
    db 062h, 031h                     ; bound si, dword [bx + di]
    db 031h, 054h, 000h               ; xor word [si], dx
    sbb bp, word [bx + si]                   ; 1B 28
    xor byte [di + 0x1b], dl                 ; 30 55 1B
    sub byte [bp + di + 0x30], dh            ; 28 73 30
    db 070h, 031h                     ; jo 0x439
    xor byte [bx + si + 0x31], ch            ; 30 68 31
    xor al, 0x76                             ; 34 76
    xor byte [bp + di + 0x33], dh            ; 30 73 33
    db 062h, 031h                     ; bound si, dword [bx + di]
    db 031h, 054h, 000h               ; xor word [si], dx
    sbb bp, word [bx + si]                   ; 1B 28
    xor byte [di + 0x1b], dl                 ; 30 55 1B
    sub byte [bp + di + 0x30], dh            ; 28 73 30
    db 070h, 036h                     ; jo 0x455
    db 02Eh, 035h, 068h, 031h         ; xor ax, 0x3168
    cmp byte [bp + 0x30], dh                 ; 38 76 30
    db 073h, 030h                     ; jae 0x458
    db 062h, 036h, 054h, 000h         ; bound si, dword [0x54]
    inc bx                                   ; 43
    db 06Fh                           ; outsw dx, word [si]
    db 075h, 072h                     ; jne 0x4a2
    imul sp, word [di + 0x72], 0x4c00        ; 69 65 72 00 4C
    imul bp, word [bp + 0x65], 0x7250        ; 69 6E 65 50 72
    imul bp, word [bp + 0x74], 0x7265        ; 69 6E 74 65 72
    add byte [si + 0x6d], dl                 ; 00 54 6D
    db 073h, 020h                     ; jae 0x464
    push dx                                  ; 52
    db 06Dh                           ; insw word es:[di], dx
    db 06Eh                           ; outsb dx, byte [si]
    add byte [bx + si + 0x65], cl            ; 00 48 65
    db 06Ch                           ; insb byte es:[di], dx
    db 076h, 000h                     ; jbe 0x44d
    push ax                                  ; 50
    db 072h, 065h                     ; jb 0x4b5
    db 073h, 074h                     ; jae 0x4c6
    imul sp, word [bx + 0x65], 0x4520        ; 69 67 65 20 45
    db 06Ch                           ; insb byte es:[di], dx
    imul si, word [si + 0x65], 0x4c00        ; 69 74 65 00 4C
    db 065h, 074h, 074h               ; je 0x4d4
    db 065h, 072h, 020h               ; jb 0x483
    inc di                                   ; 47
    db 06Fh                           ; outsw dx, word [si]
    db 074h, 068h                     ; je 0x4cf
    db 069h, 063h, 000h, 050h, 072h   ; imul sp, word [bp + di], 0x7250
    db 065h, 073h, 065h               ; jae 0x4d4
    db 06Eh                           ; outsb dx, byte [si]
    db 074h, 061h                     ; je 0x4d3
    db 074h, 069h                     ; je 0x4dd
    db 06Fh                           ; outsw dx, word [si]
    db 06Eh                           ; outsb dx, byte [si]
    db 073h, 000h                     ; jae 0x478
    push ax                                  ; 50
    db 072h, 069h                     ; jb 0x4e4
    db 06Eh                           ; outsb dx, byte [si]
    db 074h, 077h                     ; je 0x4f5
    db 06Fh                           ; outsw dx, word [si]
    db 072h, 06Bh                     ; jb 0x4ec
    db 073h, 020h                     ; jae 0x4a3
    inc si                                   ; 46
    db 06Fh                           ; outsw dx, word [si]
    db 06Eh                           ; outsb dx, byte [si]
    db 074h, 073h                     ; je 0x4fb
    add byte [bx + si], al                   ; 00 00
    db 0FFh                           ; FF
    inc byte [bx + si]                       ; FE 00
    adc ax, 0x240                            ; 15 40 02
    add al, byte [bp + si]                   ; 02 02
    add byte [di], dl                        ; 00 15
    push si                                  ; 56
    add al, byte [bp + si]                   ; 02 02
    add al, byte [bx + si]                   ; 02 00
    adc ax, 0x26c                            ; 15 6C 02
    add al, byte [bp + si]                   ; 02 02
    add word [bx + di], bx                   ; 01 19
    db 082h, 002h, 004h               ; add byte [bp + si], 4
    add byte [bp + si], al                   ; 00 02
    or ax, 0x29c                             ; 0D 9C 02
    add al, 0                                ; 04 00
    add cl, byte [bx]                        ; 02 0F
    db 0AAh                           ; stosb byte es:[di], al
    add al, byte [si]                        ; 02 04
    add byte [bp + si], al                   ; 00 02
    adc byte [bp + si + 0x402], bh           ; 10 BA 02 04
    add byte [bp + si], al                   ; 00 02
    db 00Fh, 0CBh                     ; bswap bx
    add al, byte [si]                        ; 02 04
    add byte [bp + di], al                   ; 00 03
    push cs                                  ; 0E
    fild dword [bp + si]                     ; DB 02
    or byte [bx + si], cl                    ; 08 08
    add al, 0x13                             ; 04 13
    db 0EAh, 002h, 008h, 008h, 004h   ; ljmp 0x408:0x802
    db 012h, 0FEh                     ; adc bh, dh
    add cl, byte [bx + si]                   ; 02 08
    or byte [si], al                         ; 08 04
    adc dx, word [bx + di]                   ; 13 11
    add dx, word [bx + si]                   ; 03 10
    adc byte [di], al                        ; 10 05
    adc ax, 0x325                            ; 15 25 03
    adc byte [bx + si], dl                   ; 10 10
    add ax, 0x3b15                           ; 05 15 3B
    add dx, word [bx + si]                   ; 03 10
    adc byte [di], al                        ; 10 05
    adc ax, 0x351                            ; 15 51 03
    and byte [bx + si], al                   ; 20 00
    add cl, byte [0x367]                     ; 02 0E 67 03
    and byte [bx + si], al                   ; 20 00
    add dl, byte [bx + si]                   ; 02 10
    db 076h, 003h                     ; jbe 0x4f3
    and byte [bx + si], al                   ; 20 00
    add dl, byte [bx + di]                   ; 02 11
    xchg word [bp + di], ax                  ; 87 03
    and byte [bx + si], al                   ; 20 00
    add dl, byte [bx + si]                   ; 02 10
    db 099h                           ; cdq
    add sp, word [bx + si]                   ; 03 20
    add byte [bp + di], al                   ; 00 03
    rsm                                      ; 0F AA
    add sp, word [bx + si]                   ; 03 20
    push es                                  ; 06
    add word [bp + di], dx                   ; 01 13
    mov dx, 0x4003                           ; BA 03 40
    inc ax                                   ; 40
    push es                                  ; 06
    pop ss                                   ; 17
    into                                     ; CE
    add ax, word [bx + si + 0x40]            ; 03 40 40
    push es                                  ; 06
    pop ss                                   ; 17
    out 3, al                                ; E6 03
    inc ax                                   ; 40
    inc ax                                   ; 40
    push es                                  ; 06
    push ss                                  ; 16
    inc byte [bp + di]                       ; FE 03
    inc ax                                   ; 40
    inc ax                                   ; 40
    add ax, 0x1515                           ; 05 15 15
    add al, 0x2c                             ; 04 2C
    add al, 0x34                             ; 04 34
    add al, 0x40                             ; 04 40
    add al, 0x48                             ; 04 48
    add al, 0x4d                             ; 04 4D
    add al, 0x5c                             ; 04 5C
    add al, 0x6a                             ; 04 6A
    add al, 0x78                             ; 04 78
    add al, 0x20                             ; 04 20
    add byte [di], ch                        ; 00 2D
    add byte [bp + di + 0x7c], ah            ; 00 63 7C
    and ax, word [bx + si]                   ; 23 00
    and byte [bx + si], al                   ; 20 00
    cmp ax, 0x7c59                           ; 3D 59 7C
    add byte [bx + si], ah                   ; 00 20
    add byte [bp + si], ah                   ; 00 22
    add byte [bx + si], ah                   ; 00 20
    add byte [bx + 0x61], bl                 ; 00 5F 61
    cmp ax, 0x7e3c                           ; 3D 3C 7E
    add byte [bx + si], ah                   ; 00 20
    add byte [bx + si], ah                   ; 00 20
    add byte [di], ch                        ; 00 2D
    add byte [bx + si], ah                   ; 00 20
    add byte [bx + 0x2b], bl                 ; 00 5F 2B
    and byte [bx + si], al                   ; 20 00
    and byte [bx + si], al                   ; 20 00
    daa                                      ; 27
    add byte [bx + si], ah                   ; 00 20
    add byte [bx + si], ah                   ; 00 20
    add byte [bx + si], ah                   ; 00 20
    add byte [si], ch                        ; 00 2C
    add byte [bx + si], ah                   ; 00 20
    add byte [bx + 0x6f], bl                 ; 00 5F 6F
    cmp ax, 0x2c3e                           ; 3D 3E 2C
    add byte [bp + di], ch                   ; 00 2B
    add byte [bp + di], ch                   ; 00 2B
    sub al, 0x28                             ; 2C 28
    db 029h, 041h, 000h               ; sub word [bx + di], ax
    inc cx                                   ; 41
    db 000h, 041h, 000h               ; add byte [bx + di], al
    inc cx                                   ; 41
    add byte [bx + di + 0x22], al            ; 00 41 22
    inc cx                                   ; 41
    db 000h, 041h, 000h               ; add byte [bx + di], al
    inc bx                                   ; 43
    sub al, 0x45                             ; 2C 45
    db 000h, 045h, 000h               ; add byte [di], al
    inc bp                                   ; 45
    db 000h, 045h, 000h               ; add byte [di], al
    dec cx                                   ; 49
    db 000h, 049h, 000h               ; add byte [bx + di], cl
    dec cx                                   ; 49
    db 000h, 049h, 000h               ; add byte [bx + di], cl
    inc sp                                   ; 44
    db 02Dh, 04Eh, 000h               ; sub ax, 0x4e
    dec di                                   ; 4F
    db 000h, 04Fh, 000h               ; add byte [bx], cl
    dec di                                   ; 4F
    db 000h, 04Fh, 000h               ; add byte [bx], cl
    dec di                                   ; 4F
    and ah, byte [bx + si]                   ; 22 20
    add byte [bx + 0x2f], cl                 ; 00 4F 2F
    push bp                                  ; 55
    pushaw                                   ; 60
    push bp                                  ; 55
    daa                                      ; 27
    push bp                                  ; 55
    pop si                                   ; 5E
    push bp                                  ; 55
    db 022h, 059h, 000h               ; and bl, byte [bx + di]
    db 070h, 062h                     ; jo 0x610
    and byte [bx + si], al                   ; 20 00
    popaw                                    ; 61
    pushaw                                   ; 60
    popaw                                    ; 61
    daa                                      ; 27
    popaw                                    ; 61
    pop si                                   ; 5E
    popaw                                    ; 61
    add byte [bx + di + 0x22], ah            ; 00 61 22
    popaw                                    ; 61
    db 000h, 061h, 000h               ; add byte [bx + di], ah
    arpl word [si], bp                       ; 63 2C
    db 065h, 060h                     ; pushaw
    db 065h, 027h                     ; daa
    db 065h, 05Eh                     ; pop si
    and ah, byte gs:[bx + si + 0x69]         ; 65 22 60 69
    daa                                      ; 27
    imul bx, word [bp + 0x69], 0x6922        ; 69 5E 69 22 69
    and byte [bx + si], al                   ; 20 00
    db 06Eh                           ; outsb dx, byte [si]
    add byte [bx + 0x60], ch                 ; 00 6F 60
    db 06Fh                           ; outsw dx, word [si]
    daa                                      ; 27
    db 06Fh                           ; outsw dx, word [si]
    pop si                                   ; 5E
    db 06Fh                           ; outsw dx, word [si]
    add byte [bx + 0x22], ch                 ; 00 6F 22
    and byte [bx + si], al                   ; 20 00
    db 06Fh                           ; outsw dx, word [si]
    das                                      ; 2F
    db 075h, 060h                     ; jne 0x644
    db 075h, 027h                     ; jne 0x60d
    db 075h, 05Eh                     ; jne 0x646
    db 075h, 022h                     ; jne 0x60c
    db 079h, 027h                     ; jns 0x613
    db 070h, 062h                     ; jo 0x650
    db 079h, 022h                     ; jns 0x612
    and byte [bx + si], al                   ; 20 00
    mov ax, 0xbf00                           ; B8 00 BF
    add byte [bp + di - 0x4600], bh          ; 00 BB 00 BA
    add byte [si + 0x7c00], bh               ; 00 BC 00 7C
    add byte [di - 0x5500], bh               ; 00 BD 00 AB
    add byte [bx + si], ah                   ; 00 20
    add cl, bh                               ; 00 F9
    add bl, bh                               ; 00 FB
    add byte [bp], bh                        ; 00 7E 00
    and byte [bx + si], al                   ; 20 00
    and byte [bx + si], al                   ; 20 00
    mov al, 0                                ; B0 00
    mov bl, 0                                ; B3 00
    inc byte [bx + si]                       ; FE 00
    and byte [bx + si], al                   ; 20 00
    and byte [bx + si], al                   ; 20 00
    test al, 0                               ; A8 00
    and byte [bx + si], al                   ; 20 00
    and byte [bx + si], al                   ; 20 00
    cld                                      ; FC
    add byte [si], ch                        ; 00 2C
    add byte [bx + si], ah                   ; 00 20
    add dl, bh                               ; 00 FA
    add ch, bh                               ; 00 FD
    add bh, dh                               ; 00 F7
    add al, bh                               ; 00 F8
    add byte [bx + si], ah                   ; 00 20
    add byte [bx + di - 0x5f00], bh          ; 00 B9 00 A1
    add al, ah                               ; 00 E0
    add byte [bp + si - 0x1f00], ah          ; 00 A2 00 E1
    add al, bl                               ; 00 D8
    add al, dl                               ; 00 D0
    add bl, dl                               ; 00 D3
    add byte [si - 0x5d00], dh               ; 00 B4 00 A3
    add ah, bl                               ; 00 DC
    add byte [si - 0x5b00], ah               ; 00 A4 00 A5
    add dh, ah                               ; 00 E6
    add ch, ah                               ; 00 E5
    add byte [bp - 0x5900], ah               ; 00 A6 00 A7
    add bl, ah                               ; 00 E3
    add byte [bp - 0x1800], dh               ; 00 B6 00 E8
    add bh, ah                               ; 00 E7
    add bh, bl                               ; 00 DF
    add cl, ch                               ; 00 E9
    add dl, bl                               ; 00 DA
    add byte [bx + si], ah                   ; 00 20
    add dl, dl                               ; 00 D2
    add byte [di - 0x1300], ch               ; 00 AD 00 ED
    add byte [bp - 0x2500], ch               ; 00 AE 00 DB
    add byte [bx + di - 0x58], bl            ; 00 59 A8
    db 0F0h                           ; F0
    add dh, bl                               ; 00 DE
    add al, cl                               ; 00 C8
    add ah, al                               ; 00 C4
    add al, al                               ; 00 C0
    add dl, ah                               ; 00 E2
    add ah, cl                               ; 00 CC
    add ah, dl                               ; 00 D4
    add bh, dl                               ; 00 D7
    add byte [di - 0x3700], dh               ; 00 B5 00 C9
    add ch, al                               ; 00 C5
    add cl, al                               ; 00 C1
    add ch, cl                               ; 00 CD
    add cl, bl                               ; 00 D9
    add ch, dl                               ; 00 D5
    add cl, dl                               ; 00 D1
    add ch, bl                               ; 00 DD
    add ah, ah                               ; 00 E4
    add byte [bx - 0x3600], dh               ; 00 B7 00 CA
    add dh, al                               ; 00 C6
    add dl, al                               ; 00 C2
    add dl, ch                               ; 00 EA
    add dh, cl                               ; 00 CE
    add byte [bx + si], ah                   ; 00 20
    add dh, dl                               ; 00 D6
    add bl, cl                               ; 00 CB
    add bh, al                               ; 00 C7
    add bl, al                               ; 00 C3
    add bh, cl                               ; 00 CF
    add byte [bx + di - 0x58], bh            ; 00 79 A8
    int1                                     ; F1
    add bh, ch                               ; 00 EF
    add dh, dh                               ; 00 F6
    or sp, sp                                ; 09 E4
    or al, 0x32                              ; 0C 32
    db 000h, 064h, 000h               ; add byte [si], ah
    pop ax                                   ; 58
    add al, byte [bx + si + 0x6000]          ; 02 80 00 60
    or word [bx + si], ax                    ; 09 00
    or al, 6                                 ; 0C 06
    db 000h, 04Bh, 000h               ; add byte [bp + di], cl
    xor al, byte [bx + si]                   ; 32 00
    mov al, 9                                ; B0 09
    db 079h, 00Eh                     ; jns 0x6d8
    xor al, byte [bx + si]                   ; 32 00
    add byte fs:[si + 2], cl                 ; 64 00 4C 02
    cmp ax, word [bx + si]                   ; 3B 00
    xor byte [bx + di], cl                   ; 30 09
    add byte [si], cl                        ; 00 0C
    or ax, 0x4b00                            ; 0D 00 4B
    add byte [bp + si], dh                   ; 00 32
    add dh, dh                               ; 00 F6
    or word [si], di                         ; 09 3C
    rdmsr                                    ; 0F 32
    db 000h, 064h, 000h               ; add byte [si], ah
    pop ax                                   ; 58
    db 002h, 040h, 000h               ; add al, byte [bx + si]
    pushaw                                   ; 60
    or word [bx + si], ax                    ; 09 00
    db 00Fh                           ; 0F
    db 00Fh, 000h, 04Bh, 000h         ; str word [bp + di]
    xor al, byte [bx + si]                   ; 32 00
    fiadd dword [bx]                         ; DA 07
    pop si                                   ; 5E
    or si, word [bp + si]                    ; 0B 32
    db 000h, 064h, 000h               ; add byte [si], ah
    clc                                      ; F8
    add word [bx + si - 0x2000], ax          ; 01 80 00 E0
    pop es                                   ; 07
    add byte [si], cl                        ; 00 0C
    push es                                  ; 06
    db 000h, 04Bh, 000h               ; add byte [bp + di], cl
    xor al, byte [bx + si]                   ; 32 00
    db 0F6h, 009h, 0E4h               ; test byte [bx + di], -0x1c
    or al, 0x32                              ; 0C 32
    db 000h, 064h, 000h               ; add byte [si], ah
    mov al, 4                                ; B0 04
    add byte [bx + si], 0x60                 ; 80 00 60
    or word [bx + si], ax                    ; 09 00
    or al, 0xc                               ; 0C 0C
    db 000h, 04Bh, 000h               ; add byte [bp + di], cl
    xor al, byte [bx + si]                   ; 32 00
    mov al, 9                                ; B0 09
    db 079h, 00Eh                     ; jns 0x730
    xor al, byte [bx + si]                   ; 32 00
    add byte fs:[bx + si + 0x7604], bl       ; 64 00 98 04 76
    add byte [bx + si], dh                   ; 00 30
    or word [bx + si], ax                    ; 09 00
    or al, 0xd                               ; 0C 0D
    db 000h, 04Bh, 000h               ; add byte [bp + di], cl
    xor al, byte [bx + si]                   ; 32 00
    db 0F6h, 009h, 03Ch               ; test byte [bx + di], 0x3c
    rdmsr                                    ; 0F 32
    db 000h, 064h, 000h               ; add byte [si], ah
    mov al, 4                                ; B0 04
    inc ax                                   ; 40
    add byte [bx + si + 9], ah               ; 00 60 09
    add byte [bx], cl                        ; 00 0F
    push ds                                  ; 1E
    db 000h, 04Bh, 000h               ; add byte [bp + di], cl
    xor al, byte [bx + si]                   ; 32 00
    fiadd dword [bx]                         ; DA 07
    pop si                                   ; 5E
    or si, word [bp + si]                    ; 0B 32
    db 000h, 064h, 000h               ; add byte [si], ah
    lock add ax, word [bx + si - 0x2000]     ; F0 03 80 00 E0
    pop es                                   ; 07
    add byte [si], cl                        ; 00 0C
    or al, 0                                 ; 0C 00
    dec bx                                   ; 4B
    add byte [bp + si], dh                   ; 00 32