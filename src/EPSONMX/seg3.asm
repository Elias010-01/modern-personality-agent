; EPSONMX/seg3.asm
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
    add dh, bh                               ; 00 FE
    add bl, cl                               ; 00 CB
    add al, dl                               ; 00 D0
    db 002h, 0C0h                     ; add al, al
    add ax, word [bx + di]                   ; 03 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], dl                   ; 00 11
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + si], al                   ; 00 02
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    and byte [bx + si], al                   ; 20 00
    add byte [bp + di], al                   ; 00 03
    db 000h, 078h, 000h               ; add byte [bx + si], bh
    dec ax                                   ; 48
    add byte [si + 0x1800], cl               ; 00 8C 00 18
    add si, di                               ; 01 FE
    add dh, bh                               ; 00 FE
    db 000h, 048h, 000h               ; add byte [bx + si], cl
    mov bh, bh                               ; 88 FF
    in al, dx                                ; EC
    or sp, bp                                ; 09 EC
    db 009h, 048h, 000h               ; or word [bx + si], cx
    mov bh, bh                               ; 88 FF
    db 064h, 000h, 064h, 000h         ; add byte fs:[si], ah
    dec ax                                   ; 48
    add byte [bx + si - 0x1701], cl          ; 00 88 FF E8
    db 003h, 0E8h                     ; add bp, ax
    db 003h, 048h, 000h               ; add cx, word [bx + si]
    mov bh, bh                               ; 88 FF
    mov al, byte [0xa005]                    ; A0 05 A0
    db 005h, 048h, 000h               ; add ax, 0x48
    mov bh, bh                               ; 88 FF
    dec ax                                   ; 48
    db 000h, 078h, 000h               ; add byte [bx + si], bh
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], al                   ; 00 01
    add al, byte [bx + si]                   ; 02 00
    retf                                     ; CB
    add dh, bh                               ; 00 FE
    add al, al                               ; 00 C0
    db 003h, 0D0h                     ; add dx, ax
    add al, byte [bx + di]                   ; 02 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], dl                   ; 00 11
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + si], al                   ; 00 02
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    and byte [bx + si], al                   ; 20 00
    add byte [bp + di], al                   ; 00 03
    db 000h, 048h, 000h               ; add byte [bx + si], cl
    db 078h, 000h                     ; js 0xa4
    mov word [bx + si], es                   ; 8C 00
    sbb byte [bx + di], al                   ; 18 01
    inc byte [bx + si]                       ; FE 00
    inc byte [bx + si]                       ; FE 00
    db 078h, 000h                     ; js 0xae
    mov ax, 0xecff                           ; B8 FF EC
    or sp, bp                                ; 09 EC
    db 009h, 078h, 000h               ; or word [bx + si], di
    mov ax, 0x64ff                           ; B8 FF 64
    db 000h, 064h, 000h               ; add byte [si], ah
    db 078h, 000h                     ; js 0xbe
    mov ax, 0xe8ff                           ; B8 FF E8
    db 003h, 0E8h                     ; add bp, ax
    db 003h, 078h, 000h               ; add di, word [bx + si]
    mov ax, 0xa0ff                           ; B8 FF A0
    add ax, 0x5a0                            ; 05 A0 05
    db 078h, 000h                     ; js 0xce
    mov ax, 0x78ff                           ; B8 FF 78
    db 000h, 048h, 000h               ; add byte [bx + si], cl
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    or al, 0                                 ; 0C 00
    add byte [bx + di + 0x63], ch            ; 00 69 63
    db 06Fh                           ; outsw dx, word [si]
    db 075h, 06Eh                     ; jne 0x156
    db 074h, 072h                     ; je 0x15c
    db 079h, 000h                     ; jns 0xec
    db 069h, 06Eh, 074h, 06Ch, 000h   ; imul bp, word [bp + 0x74], 0x6c
    add byte [bx + si], ah                   ; 00 20
    add byte [bx + si], al                   ; 00 00
    add byte [si + 0x74], ah                 ; 00 64 74
    dec bp                                   ; 4D
    dec di                                   ; 4F
    inc sp                                   ; 44
    inc bp                                   ; 45
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    sbb byte [si + 0x7848], cl               ; 18 8C 48 78
    push ax                                  ; 50
    imul sp, word [bp + di + 0x61], 0x4320   ; 69 63 61 20 43
    db 06Fh                           ; outsw dx, word [si]
    db 06Dh                           ; insw word es:[di], dx
    db 070h, 072h                     ; jo 0x180
    db 065h, 073h, 073h               ; jae 0x184
    db 065h, 064h, 000h, 050h, 069h   ; add byte fs:[bx + si + 0x69], dl
    db 063h, 061h, 000h               ; arpl word [bx + di], sp
    push ax                                  ; 50
    imul sp, word [bp + di + 0x61], 0x4520   ; 69 63 61 20 45
    db 078h, 070h                     ; js 0x191
    popaw                                    ; 61
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 065h, 064h, 020h, 043h, 06Fh ; and byte fs:[bp + di + 0x6f], al
    db 06Dh                           ; insw word es:[di], dx
    db 070h, 072h                     ; jo 0x19e
    db 065h, 073h, 073h               ; jae 0x1a2
    db 065h, 064h, 000h, 050h, 069h   ; add byte fs:[bx + si + 0x69], dl
    arpl word [bx + di + 0x20], sp           ; 63 61 20
    inc bp                                   ; 45
    db 078h, 070h                     ; js 0x1aa
    popaw                                    ; 61
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 065h, 064h, 000h, 000h   ; add byte fs:[bx + si], al
    add byte [bx + si], al                   ; 00 00
    add cx, word [bx + di]                   ; 03 09
    pop es                                   ; 07
    add byte [si], al                        ; 00 04
    add byte [bx + si], al                   ; 00 00
    add word [bp + di], ax                   ; 01 03
    or word [si], cx                         ; 09 0C
    add byte [si], al                        ; 00 04
    add byte [bx + si], al                   ; 00 00
    add al, byte [bp + di]                   ; 02 03
    or word [0x400], cx                      ; 09 0E 00 04
    add byte [bx + si], al                   ; 00 00
    add ax, word [bp + di]                   ; 03 03
    or word [bx + si], bx                    ; 09 18
    add byte [si], al                        ; 00 04
    add al, 1                                ; 04 01
    adc al, 1                                ; 14 01
    sbb word [bx + di], ax                   ; 19 01
    xor al, byte [bx + di]                   ; 32 01
    db 065h, 070h, 073h               ; jo 0x1de
    db 06Fh                           ; outsw dx, word [si]
    db 06Eh                           ; outsb dx, byte [si]
    db 06Dh                           ; insw word es:[di], dx
    db 078h, 000h                     ; js 0x170
    mov ax, 0x2001                           ; B8 01 20
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], bl                   ; 00 1B
    xor al, 0                                ; 34 00
    sbb si, word [di]                        ; 1B 35
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], bl                   ; 00 1B
    db 02Dh, 031h, 000h               ; sub ax, 0x31
    sbb bp, word [di]                        ; 1B 2D
    add byte [bx + si], al                   ; 00 00
    or ax, 0xf00                             ; 0D 00 0F
    add byte [bp + si], dl                   ; 00 12
    add byte [bx + si], al                   ; 00 00
    inc bp                                   ; 45
    db 070h, 073h                     ; jo 0x203
    db 06Fh                           ; outsw dx, word [si]
    db 06Eh                           ; outsb dx, byte [si]
    and byte [di + 0x58], cl                 ; 20 4D 58
    sub ax, 0x3038                           ; 2D 38 30
    and byte [bx + 0x72], al                 ; 20 47 72
    popaw                                    ; 61
    db 066h, 074h, 072h               ; je 0x211
    popaw                                    ; 61
    db 078h, 000h                     ; js 0x1a2
    inc bp                                   ; 45
    db 070h, 073h                     ; jo 0x218
    db 06Fh                           ; outsw dx, word [si]
    db 06Eh                           ; outsb dx, byte [si]
    and byte [di + 0x58], cl                 ; 20 4D 58
    sub ax, 0x3038                           ; 2D 38 30
    and byte [bx + 0x72], al                 ; 20 47 72
    popaw                                    ; 61
    db 066h, 074h, 072h               ; je 0x226
    popaw                                    ; 61
    db 078h, 02Bh                     ; js 0x1e2
    add byte [bx], cl                        ; 00 0F
    adc cl, byte [bx]                        ; 12 0F
    push cs                                  ; 0E
    adc al, 0x12                             ; 14 12
    push cs                                  ; 0E
    adc al, 0xf                              ; 14 0F
    sbb ax, word [bx + 0x1b]                 ; 1B 47 1B
    dec ax                                   ; 48
    adc bl, byte [bp + di]                   ; 12 1B
    inc di                                   ; 47
    sbb cx, word [bx + si + 0xf]             ; 1B 48 0F
    push cs                                  ; 0E
    sbb ax, word [bx + 0x1b]                 ; 1B 47 1B
    dec ax                                   ; 48
    adc al, 0x12                             ; 14 12
    push cs                                  ; 0E
    sbb ax, word [bx + 0x1b]                 ; 1B 47 1B
    dec ax                                   ; 48
    adc al, 0x1b                             ; 14 1B
    inc ax                                   ; 40
    sbb si, word [0x431b]                    ; 1B 36 1B 43
    sbb cx, word [bp + si + 0x1b]            ; 1B 4A 1B
    inc bp                                   ; 45
    sbb ax, word [bp + 0x1b]                 ; 1B 46 1B
    xor al, 0x1b                             ; 34 1B
    xor ax, 0x4b1b                           ; 35 1B 4B
    sbb cx, word [bp + di + 0x1b]            ; 1B 4B 1B
    push bx                                  ; 53
    add byte [bp + di], bl                   ; 00 1B
    push sp                                  ; 54
    sbb dx, word [bp + di + 1]               ; 1B 53 01
    db 01Bh, 054h, 000h               ; sbb dx, word [si]
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [si], dl                        ; 00 14
    add ah, bh                               ; 00 FC
    add bx, word [bx + si]                   ; 03 18
    add bx, word [0x2400]                    ; 03 1E 00 24
    add byte [bx + si], bl                   ; 00 18
    add bx, word [bp + di]                   ; 03 1B
    add byte [di], dl                        ; 00 15
    add al, ah                               ; 00 E0
    add cx, word [bx + di + 3]               ; 03 49 03
    db 00Fh                           ; 0F
    add byte [si], bh                        ; 00 3C
    add byte [bx + di + 3], cl               ; 00 49 03
    xor ax, word [bx + si]                   ; 33 00
    push ss                                  ; 16
    add dh, bl                               ; 00 DE
    add sp, word [bx + si + 3]               ; 03 60 03
    sldt word [bp]                           ; 0F 00 46 00
    pushaw                                   ; 60
    add di, word [di]                        ; 03 3D
    add byte [si], dl                        ; 00 14
    add byte [bx + si], bl                   ; 00 18
    db 003h, 0FCh                     ; add di, sp
    add sp, word [si]                        ; 03 24
    add byte [0x1800], bl                    ; 00 1E 00 18
    add bx, word [bp + di]                   ; 03 1B
    add byte [di], dl                        ; 00 15
    add byte [bx + di + 3], cl               ; 00 49 03
    db 0E0h, 003h                     ; loopne 0x24b
    cmp al, 0                                ; 3C 00
    str word [bx + di + 3]                   ; 0F 00 49 03
    xor ax, word [bx + si]                   ; 33 00
    push ss                                  ; 16
    add byte [bx + si + 3], ah               ; 00 60 03
    fiadd word [bp + di]                     ; DE 03
    inc si                                   ; 46
    add byte [bx], cl                        ; 00 0F
    add byte [bx + si + 3], ah               ; 00 60 03
    cmp ax, 0x1b00                           ; 3D 00 1B
    dec sp                                   ; 4C
    add byte [bx + si], al                   ; 00 00
    db 01Bh, 041h, 000h               ; sbb ax, word [bx + di]
    or al, byte [si]                         ; 0A 04
    add word [bp + 1], si                    ; 01 76 01
    add bh, byte [bx + di + 1]               ; 02 79 01
    add bh, byte [si + 1]                    ; 02 7C 01
    add byte [di + 1], bh                    ; 00 7D 01
    add byte [bp + 1], bh                    ; 00 7E 01
    add ax, word [bp + si + 0x301]           ; 03 82 01 03
    xchg byte [bx + di], al                  ; 86 01
    add word [bx + si + 0x101], cx           ; 01 88 01 01
    mov al, byte [bx + di]                   ; 8A 01
    db 001h, 08Ch, 001h, 000h         ; add word [si + 1], cx
    db 089h, 088h, 000h, 000h         ; mov word [bx + si], cx
    sub byte [bx + si], al                   ; 28 00
    rol byte [bp + di], 5                    ; C0 03 05
    add byte [bx + di], al                   ; 00 01
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add al, al                               ; 00 C0
    adc al, byte [bx + si]                   ; 12 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [si], dh                        ; 00 34
    add al, byte [bx + si]                   ; 02 00
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
    add byte [bx + si + 0x88], cl            ; 00 88 88 00
    add al, al                               ; 00 C0
    add bp, word [bx + si]                   ; 03 28
    db 000h, 078h, 000h               ; add byte [bx + si], bh
    add word [bx + di], ax                   ; 01 01
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    rcl byte [bp + si], 0                    ; C0 12 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + si], cl                   ; 00 0A
    add al, byte [bx + si]                   ; 02 00
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
    add byte [di - 0x7fff], cl               ; 00 8D 01 80
    add sp, word [bp + si - 0x7fff]          ; 03 A2 01 80
    add sp, word [bx + si]                   ; 03 20
    db 000h, 069h, 000h               ; add byte [bx + di], ch
    arpl word [bx], bp                       ; 63 2F
    add word [bx + si], 0x5830               ; 81 00 30 58
    pop cx                                   ; 59
    db 03Dh, 07Ch, 000h               ; cmp ax, 0x7c
    test word [bx + si], ax                  ; 85 00
    db 082h, 000h, 02Eh               ; add byte [bx + si], 0x2e
    add byte [bx + di + 0x5f], ah            ; 00 61 5F
    cmp al, 0x3d                             ; 3C 3D
    add byte cs:[0x2e00], ch                 ; 2E 00 2E 00 2E
    add byte [di], ch                        ; 00 2D
    add byte [0x2b00], ch                    ; 00 2E 00 2B
    pop di                                   ; 5F
    add byte cs:[0x8300], ch                 ; 2E 00 2E 00 83
    add byte [0x2e00], ch                    ; 00 2E 00 2E
    add byte [0x2c00], ch                    ; 00 2E 00 2C
    add byte [0x6f00], ch                    ; 00 2E 00 6F
    pop di                                   ; 5F
    db 03Eh, 03Dh, 02Eh, 000h         ; cmp ax, 0x2e
    add byte cs:[0x2800], ch                 ; 2E 00 2E 00 28
    sub word [bx + di - 0x7d], ax            ; 29 41 83
    inc cx                                   ; 41
    add word [bx + di + 0x5e], 0x41          ; 83 41 5E 41
    db 07Eh, 041h                     ; jle 0x3a8
    db 082h, 041h, 000h, 041h         ; add byte [bx + di], 0x41
    add byte [bp + di + 0x2c], al            ; 00 43 2C
    inc bp                                   ; 45
    test byte [di - 0x7d], al                ; 84 45 83
    inc bp                                   ; 45
    pop si                                   ; 5E
    inc bp                                   ; 45
    add cl, byte [bx + di - 0x7c]            ; 02 49 84
    dec cx                                   ; 49
    or word [bx + di + 0x5e], 0x49           ; 83 49 5E 49
    db 082h, 044h, 02Dh, 04Eh         ; add byte [si + 0x2d], 0x4e
    add byte [bx - 0x7c], cl                 ; 00 4F 84
    dec di                                   ; 4F
    or word [bx + 0x5e], 0x4f                ; 83 4F 5E 4F
    db 07Eh, 04Fh                     ; jle 0x3da
    db 082h, 02Eh, 000h, 04Fh, 02Fh   ; sub byte [0x4f00], 0x2f
    push bp                                  ; 55
    test byte [di - 0x7d], dl                ; 84 55 83
    push bp                                  ; 55
    pop si                                   ; 5E
    push bp                                  ; 55
    db 082h, 059h, 083h, 070h         ; sbb byte [bx + di - 0x7d], 0x70
    db 062h, 02Eh, 000h, 061h         ; bound bp, dword [0x6100]
    test byte [bx + di - 0x7d], ah           ; 84 61 83
    popaw                                    ; 61
    pop si                                   ; 5E
    popaw                                    ; 61
    db 07Eh, 061h                     ; jle 0x408
    db 082h, 061h, 000h, 061h         ; and byte [bx + di], 0x61
    add byte [bp + di + 0x2c], ah            ; 00 63 2C
    test byte gs:[di - 0x7d], ah             ; 65 84 65 83
    db 065h, 05Eh                     ; pop si
    db 065h, 082h, 069h, 084h, 069h   ; sub byte gs:[bx + di - 0x7c], 0x69
    sub word [bx + di + 0x5e], 0x69          ; 83 69 5E 69
    db 082h, 064h, 02Dh, 06Eh         ; and byte [si + 0x2d], 0x6e
    db 07Eh, 06Fh                     ; jle 0x432
    test byte [bx - 0x7d], ch                ; 84 6F 83
    db 06Fh                           ; outsw dx, word [si]
    pop si                                   ; 5E
    db 06Fh                           ; outsw dx, word [si]
    db 07Eh, 06Fh                     ; jle 0x43a
    db 082h, 02Eh, 000h, 06Fh, 02Fh   ; sub byte [0x6f00], 0x2f
    db 075h, 084h                     ; jne 0x356
    db 075h, 083h                     ; jne 0x357
    db 075h, 05Eh                     ; jne 0x434
    db 075h, 082h                     ; jne 0x35a
    db 079h, 083h                     ; jns 0x35d
    db 070h, 062h                     ; jo 0x43e
    db 079h, 082h                     ; jns 0x360