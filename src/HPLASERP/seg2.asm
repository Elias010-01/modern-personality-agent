; HPLASERP/seg2.asm
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
    add ax, word [bx + si]                   ; 03 00
    sub al, 1                                ; 2C 01
    sub al, 1                                ; 2C 01
    test al, 1                               ; A8 01
    push ax                                  ; 50
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
    add ax, word [bx + si]                   ; 03 00
    sub al, 1                                ; 2C 01
    sub al, 1                                ; 2C 01
    test al, 1                               ; A8 01
    push ax                                  ; 50
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
    db 072h, 070h                     ; jb 0x178
    add byte [bx + si + 0x70], ch            ; 00 68 70
    db 06Ch                           ; insb byte es:[di], dx
    popaw                                    ; 61
    db 073h, 065h                     ; jae 0x174
    db 072h, 070h                     ; jb 0x181
    add byte [bx + si], al                   ; 00 00
    imul sp, word [bp + di + 0x6f], 0x6e75   ; 69 63 6F 75 6E
    db 074h, 072h                     ; je 0x18c
    db 079h, 000h                     ; jns 0x11c
    db 069h, 06Eh, 074h, 06Ch, 000h   ; imul bp, word [bp + 0x74], 0x6c
    add byte [bp + di], bl                   ; 00 1B
    sub dh, byte [bx + si + 0x2d]            ; 2A 70 2D
    db 031h, 059h, 000h               ; xor word [bx + di], bx
    sbb bp, word [bp + si]                   ; 1B 2A
    db 070h, 02Dh                     ; jo 0x15a
    xor al, 0x59                             ; 34 59
    add byte [bp + di], bl                   ; 00 1B
    sub dh, byte [bx + si + 0x2d]            ; 2A 70 2D
    db 032h, 059h, 000h               ; xor bl, byte [bx + di]
    sbb bp, word [bp + si]                   ; 1B 2A
    db 070h, 02Bh                     ; jo 0x166
    db 031h, 058h, 000h               ; xor word [bx + si], bx
    sbb bp, word [bp + si]                   ; 1B 2A
    db 070h, 02Bh                     ; jo 0x16d
    xor al, 0x58                             ; 34 58
    add byte [bp + di], bl                   ; 00 1B
    sub dh, byte [bx + si + 0x2b]            ; 2A 70 2B
    db 032h, 058h, 000h               ; xor bl, byte [bx + si]
    sbb bp, word [bp + si]                   ; 1B 2A
    db 070h, 02Bh                     ; jo 0x17b
    db 031h, 059h, 000h               ; xor word [bx + di], bx
    sbb bp, word [bp + si]                   ; 1B 2A
    db 070h, 02Bh                     ; jo 0x182
    xor al, 0x59                             ; 34 59
    add byte [bp + di], bl                   ; 00 1B
    sub dh, byte [bx + si + 0x2b]            ; 2A 70 2B
    db 032h, 059h, 000h               ; xor bl, byte [bx + di]
    sbb bp, word [bp + si]                   ; 1B 2A
    db 070h, 02Dh                     ; jo 0x192
    db 031h, 058h, 000h               ; xor word [bx + si], bx
    sbb bp, word [bp + si]                   ; 1B 2A
    db 070h, 02Dh                     ; jo 0x199
    xor al, 0x58                             ; 34 58
    add byte [bp + di], bl                   ; 00 1B
    sub dh, byte [bx + si + 0x2d]            ; 2A 70 2D
    db 032h, 058h, 000h               ; xor bl, byte [bx + si]
    sbb ax, word [bx + si]                   ; 1B 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    sbb ax, word [bx + si]                   ; 1B 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    sbb bp, word [bp + si]                   ; 1B 2A
    db 072h, 031h                     ; jb 0x1c7
    inc cx                                   ; 41
    add byte [bp + di], bl                   ; 00 1B
    sub dh, byte [bp + si + 0x42]            ; 2A 72 42
    add byte [di], cl                        ; 00 0D
    add byte [bp + di], bl                   ; 00 1B
    sub dh, byte [bx + si + 0x2b]            ; 2A 70 2B
    xor al, 0x59                             ; 34 59
    add byte [bp + di], bl                   ; 00 1B
    sub dh, byte [bx + si + 0x2b]            ; 2A 70 2B
    db 032h, 059h, 000h               ; xor bl, byte [bx + di]
    sbb sp, word [0x4464]                    ; 1B 26 64 44
    add byte [bp + di], bl                   ; 00 1B
    db 026h, 064h, 040h               ; inc ax
    add byte [bx + si], al                   ; 00 00
    db 072h, 065h                     ; jb 0x21f
    db 073h, 06Fh                     ; jae 0x22b
    db 06Ch                           ; insb byte es:[di], dx
    db 075h, 074h                     ; jne 0x233
    imul bp, word [bx + 0x6e], 0x4800        ; 69 6F 6E 00 48
    push ax                                  ; 50
    and byte [si + 0x61], cl                 ; 20 4C 61
    db 073h, 065h                     ; jae 0x22f
    db 072h, 04Ah                     ; jb 0x216
    db 065h, 074h, 020h               ; je 0x1ef
    push ax                                  ; 50
    db 06Ch                           ; insb byte es:[di], dx
    db 075h, 073h                     ; jne 0x246
    add byte [bx + si + 0x61], dh            ; 00 70 61
    db 070h, 065h                     ; jo 0x23d
    db 072h, 000h                     ; jb 0x1da
    dec ax                                   ; 48
    push ax                                  ; 50
    and byte [si + 0x61], cl                 ; 20 4C 61
    db 073h, 065h                     ; jae 0x246
    db 072h, 04Ah                     ; jb 0x22d
    db 065h, 074h, 020h               ; je 0x206
    push ax                                  ; 50
    db 06Ch                           ; insb byte es:[di], dx
    db 075h, 073h                     ; jne 0x25d
    add byte [bp + di + 0x61], ah            ; 00 63 61
    db 072h, 074h                     ; jb 0x263
    db 072h, 069h                     ; jb 0x25a
    db 064h, 067h, 065h, 000h, 048h, 050h ; add byte gs:[eax + 0x50], cl
    and byte [si + 0x61], cl                 ; 20 4C 61
    db 073h, 065h                     ; jae 0x261
    db 072h, 04Ah                     ; jb 0x248
    db 065h, 074h, 020h               ; je 0x221
    push ax                                  ; 50
    db 06Ch                           ; insb byte es:[di], dx
    db 075h, 073h                     ; jne 0x278
    add byte [bp + di + 0x6f], ah            ; 00 63 6F
    db 070h, 069h                     ; jo 0x273
    db 065h, 073h, 000h               ; jae 0x20d
    dec ax                                   ; 48
    push ax                                  ; 50
    and byte [si + 0x61], cl                 ; 20 4C 61
    db 073h, 065h                     ; jae 0x279
    db 072h, 04Ah                     ; jb 0x260
    db 065h, 074h, 020h               ; je 0x239
    push ax                                  ; 50
    db 06Ch                           ; insb byte es:[di], dx
    db 075h, 073h                     ; jne 0x290
    add byte [bx + 0x72], ch                 ; 00 6F 72
    db 069h, 065h, 06Eh, 074h, 000h   ; imul sp, word [di + 0x6e], 0x74
    dec ax                                   ; 48
    push ax                                  ; 50
    and byte [si + 0x61], cl                 ; 20 4C 61
    db 073h, 065h                     ; jae 0x291
    db 072h, 04Ah                     ; jb 0x278
    db 065h, 074h, 020h               ; je 0x251
    push ax                                  ; 50
    db 06Ch                           ; insb byte es:[di], dx
    db 075h, 073h                     ; jne 0x2a8
    add byte [si + 0x72], dh                 ; 00 74 72
    popaw                                    ; 61
    db 079h, 000h                     ; jns 0x23b
    dec ax                                   ; 48
    push ax                                  ; 50
    and byte [si + 0x61], cl                 ; 20 4C 61
    db 073h, 065h                     ; jae 0x2a7
    db 072h, 04Ah                     ; jb 0x28e
    db 065h, 074h, 020h               ; je 0x267
    push ax                                  ; 50
    db 06Ch                           ; insb byte es:[di], dx
    db 075h, 073h                     ; jne 0x2be
    add byte [bp + si + 0x65], dh            ; 00 72 65
    db 073h, 06Fh                     ; jae 0x2bf
    db 06Ch                           ; insb byte es:[di], dx
    db 075h, 074h                     ; jne 0x2c7
    imul bp, word [bx + 0x6e], 0x4800        ; 69 6F 6E 00 48
    push ax                                  ; 50
    and byte [si + 0x61], cl                 ; 20 4C 61
    db 073h, 065h                     ; jae 0x2c3
    db 072h, 04Ah                     ; jb 0x2aa
    db 065h, 074h, 020h               ; je 0x283
    push ax                                  ; 50
    db 06Ch                           ; insb byte es:[di], dx
    db 075h, 073h                     ; jne 0x2da
    add byte [bx + si + 0x61], dh            ; 00 70 61
    db 070h, 065h                     ; jo 0x2d1
    db 072h, 000h                     ; jb 0x26e
    dec ax                                   ; 48
    push ax                                  ; 50
    and byte [si + 0x61], cl                 ; 20 4C 61
    db 073h, 065h                     ; jae 0x2da
    db 072h, 04Ah                     ; jb 0x2c1
    db 065h, 074h, 020h               ; je 0x29a
    push ax                                  ; 50
    db 06Ch                           ; insb byte es:[di], dx
    db 075h, 073h                     ; jne 0x2f1
    add byte [bp + di + 0x61], ah            ; 00 63 61
    db 072h, 074h                     ; jb 0x2f7
    db 072h, 069h                     ; jb 0x2ee
    db 064h, 067h, 065h, 000h, 048h, 050h ; add byte gs:[eax + 0x50], cl
    and byte [si + 0x61], cl                 ; 20 4C 61
    db 073h, 065h                     ; jae 0x2f5
    db 072h, 04Ah                     ; jb 0x2dc
    db 065h, 074h, 020h               ; je 0x2b5
    push ax                                  ; 50
    db 06Ch                           ; insb byte es:[di], dx
    db 075h, 073h                     ; jne 0x30c
    add byte [bp + di + 0x6f], ah            ; 00 63 6F
    db 070h, 069h                     ; jo 0x307
    db 065h, 073h, 000h               ; jae 0x2a1
    dec ax                                   ; 48
    push ax                                  ; 50
    and byte [si + 0x61], cl                 ; 20 4C 61
    db 073h, 065h                     ; jae 0x30d
    db 072h, 04Ah                     ; jb 0x2f4
    db 065h, 074h, 020h               ; je 0x2cd
    push ax                                  ; 50
    db 06Ch                           ; insb byte es:[di], dx
    db 075h, 073h                     ; jne 0x324
    add byte [bx + 0x72], ch                 ; 00 6F 72
    db 069h, 065h, 06Eh, 074h, 000h   ; imul sp, word [di + 0x6e], 0x74
    dec ax                                   ; 48
    push ax                                  ; 50
    and byte [si + 0x61], cl                 ; 20 4C 61
    db 073h, 065h                     ; jae 0x325
    db 072h, 04Ah                     ; jb 0x30c
    db 065h, 074h, 020h               ; je 0x2e5
    push ax                                  ; 50
    db 06Ch                           ; insb byte es:[di], dx
    db 075h, 073h                     ; jne 0x33c
    add byte [si + 0x72], dh                 ; 00 74 72
    popaw                                    ; 61
    db 079h, 000h                     ; jns 0x2cf
    dec ax                                   ; 48
    push ax                                  ; 50
    and byte [si + 0x61], cl                 ; 20 4C 61
    db 073h, 065h                     ; jae 0x33b
    db 072h, 04Ah                     ; jb 0x322
    db 065h, 074h, 020h               ; je 0x2fb
    push ax                                  ; 50
    db 06Ch                           ; insb byte es:[di], dx
    db 075h, 073h                     ; jne 0x352
    add byte [si + 0x74], ah                 ; 00 64 74
    dec bp                                   ; 4D
    dec di                                   ; 4F
    inc sp                                   ; 44
    inc bp                                   ; 45
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    sbb bp, word [bx + si]                   ; 1B 28
    db 073h, 030h                     ; jae 0x31e
    push sp                                  ; 54
    add byte [si], bl                        ; 00 1C
    push cs                                  ; 0E
    or cl, byte [bp + si]                    ; 0A 0A
    db 0EAh, 002h, 01Bh, 028h, 038h   ; ljmp 0x3828:0x1b02
    push bp                                  ; 55
    sbb bp, word [bx + si]                   ; 1B 28
    db 073h, 030h                     ; jae 0x32e
    db 070h, 031h                     ; jo 0x331
    xor byte [bx + si + 0x31], ch            ; 30 68 31
    xor dh, byte [bp + 0x30]                 ; 32 76 30
    db 073h, 030h                     ; jae 0x338
    db 062h, 033h                     ; bound si, dword [bp + di]
    push sp                                  ; 54
    add byte [bp + di], bl                   ; 00 1B
    sub byte [bx + si], bh                   ; 28 38
    push bp                                  ; 55
    sbb bp, word [bx + si]                   ; 1B 28
    db 073h, 030h                     ; jae 0x344
    db 070h, 031h                     ; jo 0x347
    xor byte [bx + si + 0x31], ch            ; 30 68 31
    xor dh, byte [bp + 0x30]                 ; 32 76 30
    db 073h, 033h                     ; jae 0x351
    db 062h, 033h                     ; bound si, dword [bp + di]
    push sp                                  ; 54
    add byte [bp + di], bl                   ; 00 1B
    sub byte [bx + si], bh                   ; 28 38
    push bp                                  ; 55
    sbb bp, word [bx + si]                   ; 1B 28
    db 073h, 030h                     ; jae 0x35a
    db 070h, 031h                     ; jo 0x35d
    xor byte [bx + si + 0x31], ch            ; 30 68 31
    xor dh, byte [bp + 0x31]                 ; 32 76 31
    db 073h, 030h                     ; jae 0x364
    db 062h, 033h                     ; bound si, dword [bp + di]
    push sp                                  ; 54
    add byte [bp + di], bl                   ; 00 1B
    sub byte [bx + si], bh                   ; 28 38
    push bp                                  ; 55
    sbb bp, word [bx + si]                   ; 1B 28
    db 073h, 030h                     ; jae 0x370
    db 070h, 031h                     ; jo 0x373
    db 036h, 02Eh, 036h, 036h, 068h, 038h, 02Eh ; push 0x2e38
    xor ax, 0x3076                           ; 35 76 30
    db 073h, 030h                     ; jae 0x37e
    db 062h, 030h                     ; bound si, dword [bx + si]
    push sp                                  ; 54
    add byte [bp + di], bl                   ; 00 1B
    sub byte [di + 0x1b], dl                 ; 28 55 1B
    sub byte [bp + di + 0x35], dh            ; 28 73 35
    db 074h, 038h                     ; je 0x393
    db 076h, 073h                     ; jbe 0x3d0
    db 031h, 050h, 000h               ; xor word [bx + si], dx
    sbb bp, word [bx + si]                   ; 1B 28
    push bp                                  ; 55
    sbb bp, word [bx + si]                   ; 1B 28
    db 073h, 035h                     ; jae 0x39c
    db 074h, 031h                     ; je 0x39a
    xor byte [bp + 0x73], dh                 ; 30 76 73
    db 062h, 031h                     ; bound si, dword [bx + di]
    push ax                                  ; 50
    add byte [bp + di], bl                   ; 00 1B
    sub byte [di + 0x1b], dl                 ; 28 55 1B
    sub byte [bp + di + 0x35], dh            ; 28 73 35
    db 074h, 031h                     ; je 0x3aa
    xor byte [bp + 0x73], dh                 ; 30 76 73
    xor ah, byte [bp + si + 0x31]            ; 32 62 31
    push ax                                  ; 50
    add byte [bp + di], bl                   ; 00 1B
    sub byte [di + 0x1b], dl                 ; 28 55 1B
    sub byte [bp + di + 0x35], dh            ; 28 73 35
    db 074h, 031h                     ; je 0x3bb
    xor byte [bp + 0x31], dh                 ; 30 76 31
    db 073h, 031h                     ; jae 0x3c0
    push ax                                  ; 50
    add byte [bp + di], bl                   ; 00 1B
    sub byte [di + 0x1b], dl                 ; 28 55 1B
    sub byte [bp + di + 0x34], dh            ; 28 73 34
    db 074h, 031h                     ; je 0x3cb
    xor al, 0x76                             ; 34 76
    db 073h, 031h                     ; jae 0x3cf
    push ax                                  ; 50
    add byte [bp + di], bl                   ; 00 1B
    sub byte [bx + si], bh                   ; 28 38
    push bp                                  ; 55
    sbb bp, word [bx + si]                   ; 1B 28
    db 073h, 038h                     ; jae 0x3e0
    db 074h, 031h                     ; je 0x3db
    xor ch, byte [bx + si + 0x31]            ; 32 68 31
    xor byte [bp + 0x30], dh                 ; 30 76 30
    db 073h, 062h                     ; jae 0x414
    push ax                                  ; 50
    add byte [bp + di], bl                   ; 00 1B
    sub byte [bx + si], bh                   ; 28 38
    push bp                                  ; 55
    sbb bp, word [bx + si]                   ; 1B 28
    db 073h, 038h                     ; jae 0x3f4
    db 074h, 031h                     ; je 0x3ef
    xor ch, byte [bx + si + 0x31]            ; 32 68 31
    xor byte [bp + 0x33], dh                 ; 30 76 33
    db 062h, 050h, 000h               ; bound dx, dword [bx + si]
    sbb bp, word [bx + si]                   ; 1B 28
    cmp byte [di + 0x1b], dl                 ; 38 55 1B
    sub byte [bp + di + 0x38], dh            ; 28 73 38
    db 074h, 031h                     ; je 0x402
    xor ch, byte [bx + si + 0x31]            ; 32 68 31
    db 073h, 031h                     ; jae 0x407
    xor byte [bp + 0x62], dh                 ; 30 76 62
    push ax                                  ; 50
    add byte [bp + di], bl                   ; 00 1B
    sub byte [bx + si], bh                   ; 28 38
    push bp                                  ; 55
    sbb bp, word [bx + si]                   ; 1B 28
    db 073h, 030h                     ; jae 0x413
    db 070h, 031h                     ; jo 0x416
    xor ch, byte [bx + si + 0x31]            ; 32 68 31
    xor dh, byte [bp + 0x30]                 ; 32 76 30
    db 073h, 030h                     ; jae 0x41d
    db 062h, 036h, 054h, 000h         ; bound si, dword [0x54]
    sbb bp, word [bx + si]                   ; 1B 28
    cmp byte [di + 0x1b], dl                 ; 38 55 1B
    sub byte [bp + di + 0x30], dh            ; 28 73 30
    db 070h, 031h                     ; jo 0x42c
    xor ch, byte [bx + si + 0x31]            ; 32 68 31
    xor byte [bp + 0x30], dh                 ; 30 76 30
    db 073h, 033h                     ; jae 0x436
    db 062h, 036h, 054h, 000h         ; bound si, dword [0x54]
    sbb bp, word [bx + si]                   ; 1B 28
    cmp byte [di + 0x1b], dl                 ; 38 55 1B
    sub byte [bp + di + 0x30], dh            ; 28 73 30
    db 070h, 031h                     ; jo 0x442
    xor ch, byte [bx + si + 0x31]            ; 32 68 31
    xor byte [bp + 0x31], dh                 ; 30 76 31
    db 073h, 030h                     ; jae 0x449
    db 062h, 036h, 054h, 000h         ; bound si, dword [0x54]
    sbb bp, word [bx + si]                   ; 1B 28
    cmp byte [di + 0x1b], dl                 ; 38 55 1B
    sub byte [bp + di + 0x35], dh            ; 28 73 35
    db 074h, 038h                     ; je 0x45f
    db 076h, 073h                     ; jbe 0x49c
    db 031h, 050h, 000h               ; xor word [bx + si], dx
    sbb bp, word [bx + si]                   ; 1B 28
    cmp byte [di + 0x1b], dl                 ; 38 55 1B
    sub byte [bp + di + 0x35], dh            ; 28 73 35
    db 074h, 031h                     ; je 0x467
    xor byte [bp + 0x73], dh                 ; 30 76 73
    db 062h, 031h                     ; bound si, dword [bx + di]
    push ax                                  ; 50
    add byte [bp + di], bl                   ; 00 1B
    sub byte [bx + si], bh                   ; 28 38
    push bp                                  ; 55
    sbb bp, word [bx + si]                   ; 1B 28
    db 073h, 035h                     ; jae 0x47a
    db 074h, 031h                     ; je 0x478
    xor byte [bp + 0x73], dh                 ; 30 76 73
    xor ah, byte [bp + si + 0x31]            ; 32 62 31
    push ax                                  ; 50
    add byte [bp + di], bl                   ; 00 1B
    sub byte [bx + si], bh                   ; 28 38
    push bp                                  ; 55
    sbb bp, word [bx + si]                   ; 1B 28
    db 073h, 035h                     ; jae 0x48c
    db 074h, 031h                     ; je 0x48a
    xor byte [bp + 0x31], dh                 ; 30 76 31
    db 073h, 031h                     ; jae 0x48f
    push ax                                  ; 50
    add byte [bp + di], bl                   ; 00 1B
    sub byte [bx + si], bh                   ; 28 38
    push bp                                  ; 55
    sbb bp, word [bx + si]                   ; 1B 28
    db 073h, 034h                     ; jae 0x49c
    db 074h, 031h                     ; je 0x49b
    xor al, 0x76                             ; 34 76
    db 073h, 031h                     ; jae 0x49f
    push ax                                  ; 50
    add byte [bp + di], bl                   ; 00 1B
    sub byte [bx + si], bh                   ; 28 38
    push bp                                  ; 55
    sbb bp, word [bx + si]                   ; 1B 28
    db 073h, 074h                     ; jae 0x4ec
    cmp byte [0x7635], ch                    ; 38 2E 35 76
    xor word [0x362e], si                    ; 31 36 2E 36
    aaa                                      ; 37
    db 068h, 050h, 000h               ; push 0x50
    sbb bp, word [bx + si]                   ; 1B 28
    xor byte [di + 0x1b], dl                 ; 30 55 1B
    sub byte [bp + di + 0x30], dh            ; 28 73 30
    db 070h, 036h                     ; jo 0x4c4
    db 02Eh, 035h, 068h, 031h         ; xor ax, 0x3168
    cmp byte [bp + 0x30], dh                 ; 38 76 30
    db 073h, 033h                     ; jae 0x4ca
    db 062h, 031h                     ; bound si, dword [bx + di]
    db 031h, 054h, 000h               ; xor word [si], dx
    sbb bp, word [bx + si]                   ; 1B 28
    xor byte [di + 0x1b], dl                 ; 30 55 1B
    sub byte [bp + di + 0x30], dh            ; 28 73 30
    db 070h, 038h                     ; jo 0x4de
    xor word cs:[bx + si + 0x31], bp         ; 2E 31 68 31
    db 036h, 076h, 030h               ; jbe 0x4dd
    db 073h, 033h                     ; jae 0x4e2
    db 062h, 031h                     ; bound si, dword [bx + di]
    db 031h, 054h, 000h               ; xor word [si], dx
    sbb bp, word [bx + si]                   ; 1B 28
    xor byte [di + 0x1b], dl                 ; 30 55 1B
    sub byte [bp + di + 0x30], dh            ; 28 73 30
    db 070h, 031h                     ; jo 0x4ef
    xor byte [bx + si + 0x31], ch            ; 30 68 31
    xor al, 0x76                             ; 34 76
    xor byte [bp + di + 0x33], dh            ; 30 73 33
    db 062h, 031h                     ; bound si, dword [bx + di]
    db 031h, 054h, 000h               ; xor word [si], dx
    sbb bp, word [bx + si]                   ; 1B 28
    xor byte [di + 0x1b], dl                 ; 30 55 1B
    sub byte [bp + di + 0x30], dh            ; 28 73 30
    db 070h, 036h                     ; jo 0x50b
    db 02Eh, 035h, 068h, 031h         ; xor ax, 0x3168
    cmp byte [bp + 0x30], dh                 ; 38 76 30
    db 073h, 030h                     ; jae 0x50e
    db 062h, 036h, 054h, 000h         ; bound si, dword [0x54]
    inc bx                                   ; 43
    db 06Fh                           ; outsw dx, word [si]
    db 075h, 072h                     ; jne 0x558
    imul sp, word [di + 0x72], 0x4c00        ; 69 65 72 00 4C
    imul bp, word [bp + 0x65], 0x7250        ; 69 6E 65 50 72
    imul bp, word [bp + 0x74], 0x7265        ; 69 6E 74 65 72
    add byte [si + 0x6d], dl                 ; 00 54 6D
    db 073h, 020h                     ; jae 0x51a
    push dx                                  ; 52
    db 06Dh                           ; insw word es:[di], dx
    db 06Eh                           ; outsb dx, byte [si]
    add byte [bx + si + 0x65], cl            ; 00 48 65
    db 06Ch                           ; insb byte es:[di], dx
    db 076h, 000h                     ; jbe 0x503
    push ax                                  ; 50
    db 072h, 065h                     ; jb 0x56b
    db 073h, 074h                     ; jae 0x57c
    imul sp, word [bx + 0x65], 0x4520        ; 69 67 65 20 45
    db 06Ch                           ; insb byte es:[di], dx
    imul si, word [si + 0x65], 0x4c00        ; 69 74 65 00 4C
    db 065h, 074h, 074h               ; je 0x58a
    db 065h, 072h, 020h               ; jb 0x539
    inc di                                   ; 47
    db 06Fh                           ; outsw dx, word [si]
    db 074h, 068h                     ; je 0x585
    db 069h, 063h, 000h, 050h, 072h   ; imul sp, word [bp + di], 0x7250
    db 065h, 073h, 065h               ; jae 0x58a
    db 06Eh                           ; outsb dx, byte [si]
    db 074h, 061h                     ; je 0x589
    db 074h, 069h                     ; je 0x593
    db 06Fh                           ; outsw dx, word [si]
    db 06Eh                           ; outsb dx, byte [si]
    db 073h, 000h                     ; jae 0x52e
    push ax                                  ; 50
    db 072h, 069h                     ; jb 0x59a
    db 06Eh                           ; outsb dx, byte [si]
    db 074h, 077h                     ; je 0x5ab
    db 06Fh                           ; outsw dx, word [si]
    db 072h, 06Bh                     ; jb 0x5a2
    db 073h, 020h                     ; jae 0x559
    inc si                                   ; 46
    db 06Fh                           ; outsw dx, word [si]
    db 06Eh                           ; outsb dx, byte [si]
    db 074h, 073h                     ; je 0x5b1
    add byte [bx + si], al                   ; 00 00
    db 0FFh                           ; FF
    inc byte [bx + si]                       ; FE 00
    adc ax, 0x2f6                            ; 15 F6 02
    add al, byte [bp + si]                   ; 02 02
    add byte [di], dl                        ; 00 15
    or al, 3                                 ; 0C 03
    add al, byte [bp + si]                   ; 02 02
    add byte [di], dl                        ; 00 15
    and al, byte [bp + di]                   ; 22 03
    inc word [bp + si]                       ; FF 02
    add word [bx + di], bx                   ; 01 19
    cmp byte [bp + di], al                   ; 38 03
    add al, 0                                ; 04 00
    add cl, byte [di]                        ; 02 0D
    push dx                                  ; 52
    add ax, word [si]                        ; 03 04
    add byte [bp + si], al                   ; 00 02
    db 00Fh, 060h, 003h               ; punpcklbw mm0, dword [bp + di]
    add al, 0                                ; 04 00
    add dl, byte [bx + si]                   ; 02 10
    db 070h, 003h                     ; jo 0x56d
    add al, 0                                ; 04 00
    add cl, byte [bx]                        ; 02 0F
    db 081h, 003h, 004h, 000h         ; add word [bp + di], 4
    add cx, word [0x391]                     ; 03 0E 91 03
    or byte [bx + si], cl                    ; 08 08
    add al, 0x13                             ; 04 13
    mov al, byte [0x803]                     ; A0 03 08
    or byte [si], al                         ; 08 04
    adc dh, byte [si + 0x803]                ; 12 B4 03 08
    or byte [si], al                         ; 08 04
    db 013h, 0C7h                     ; adc ax, di
    add dx, word [bx + si]                   ; 03 10
    adc byte [di], al                        ; 10 05
    adc ax, 0x3db                            ; 15 DB 03
    adc byte [bx + si], dl                   ; 10 10
    add ax, 0xf115                           ; 05 15 F1
    add dx, word [bx + si]                   ; 03 10
    adc byte [di], al                        ; 10 05
    adc ax, 0x407                            ; 15 07 04
    mov al, byte [0x2a0]                     ; A0 A0 02
    push cs                                  ; 0E
    sbb ax, 0xa004                           ; 1D 04 A0
    mov al, byte [0x1002]                    ; A0 02 10
    sub al, 4                                ; 2C 04
    mov al, byte [0x2a0]                     ; A0 A0 02
    adc word [di], di                        ; 11 3D
    add al, 0xa0                             ; 04 A0
    mov al, byte [0x1002]                    ; A0 02 10
    dec di                                   ; 4F
    add al, 0x20                             ; 04 20
    add byte [bp + di], al                   ; 00 03
    db 00Fh, 060h, 004h               ; punpcklbw mm0, dword [si]
    and al, byte [0x1301]                    ; 22 06 01 13
    db 070h, 004h                     ; jo 0x5c2
    inc ax                                   ; 40
    inc ax                                   ; 40
    push es                                  ; 06
    pop ss                                   ; 17
    test byte [si], al                       ; 84 04
    inc ax                                   ; 40
    inc ax                                   ; 40
    push es                                  ; 06
    pop ss                                   ; 17
    pushf                                    ; 9C
    add al, 0x40                             ; 04 40
    inc ax                                   ; 40
    push es                                  ; 06
    push ss                                  ; 16
    mov ah, 4                                ; B4 04
    inc ax                                   ; 40
    inc ax                                   ; 40
    add ax, 0xcb15                           ; 05 15 CB
    add al, 0xe2                             ; 04 E2
    add al, 0xea                             ; 04 EA
    add al, 0xf6                             ; 04 F6
    add al, 0xfe                             ; 04 FE
    add al, 3                                ; 04 03
    add ax, 0x512                            ; 05 12 05
    and byte [di], al                        ; 20 05
    db 02Eh, 005h, 020h, 000h         ; add ax, 0x20
    sub ax, 0x6300                           ; 2D 00 63
    db 07Ch, 023h                     ; jl 0x610
    add byte [bx + si], ah                   ; 00 20
    add byte [di], bh                        ; 00 3D
    pop cx                                   ; 59
    db 07Ch, 000h                     ; jl 0x5f4
    and byte [bx + si], al                   ; 20 00
    and al, byte [bx + si]                   ; 22 00
    and byte [bx + si], al                   ; 20 00
    pop di                                   ; 5F
    popaw                                    ; 61
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
    db 070h, 062h                     ; jo 0x6c6
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
    db 075h, 060h                     ; jne 0x6fa
    db 075h, 027h                     ; jne 0x6c3
    db 075h, 05Eh                     ; jne 0x6fc
    db 075h, 022h                     ; jne 0x6c2
    db 079h, 027h                     ; jns 0x6c9
    db 070h, 062h                     ; jo 0x706
    db 079h, 022h                     ; jns 0x6c8
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
    db 079h, 00Eh                     ; jns 0x78e
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
    db 079h, 00Eh                     ; jns 0x7e6
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
    add dh, dh                               ; 00 F6
    or sp, sp                                ; 09 E4
    or al, 0x32                              ; 0C 32
    db 000h, 064h, 000h               ; add byte [si], ah
    pushaw                                   ; 60
    db 009h, 040h, 000h               ; or word [bx + si], ax
    pushaw                                   ; 60
    or word [bx + si], ax                    ; 09 00
    or al, 0x30                              ; 0C 30
    db 000h, 04Bh, 000h               ; add byte [bp + di], cl
    xor al, byte [bx + si]                   ; 32 00
    mov al, 9                                ; B0 09
    db 079h, 00Eh                     ; jns 0x83e
    xor al, byte [bx + si]                   ; 32 00
    add byte fs:[bx + si], dh                ; 64 00 30
    or word [bp + di], di                    ; 09 3B
    add byte [bx + si], dh                   ; 00 30
    or word [bx + si], ax                    ; 09 00
    or al, 0x34                              ; 0C 34
    db 000h, 04Bh, 000h               ; add byte [bp + di], cl
    xor al, byte [bx + si]                   ; 32 00
    db 0F6h, 009h, 03Ch               ; test byte [bx + di], 0x3c
    rdmsr                                    ; 0F 32
    db 000h, 064h, 000h               ; add byte [si], ah
    pushaw                                   ; 60
    or word [bx + si], sp                    ; 09 20
    add byte [bx + si + 9], ah               ; 00 60 09
    add byte [bx], cl                        ; 00 0F
    db 078h, 000h                     ; js 0x854
    dec bx                                   ; 4B
    add byte [bp + si], dh                   ; 00 32
    add dl, bl                               ; 00 DA
    pop es                                   ; 07
    pop si                                   ; 5E
    or si, word [bp + si]                    ; 0B 32
    db 000h, 064h, 000h               ; add byte [si], ah
    db 0E0h, 007h                     ; loopne 0x869
    inc ax                                   ; 40
    add al, ah                               ; 00 E0
    pop es                                   ; 07
    add byte [si], cl                        ; 00 0C
    xor byte [bx + si], al                   ; 30 00
    dec bx                                   ; 4B
    add byte [bp + si], dh                   ; 00 32