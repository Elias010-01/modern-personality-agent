; IBMGRX/seg3.asm
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
    sbb si, word [0xc00]                     ; 1B 36 00 0C
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di + 0x63], ch            ; 00 69 63
    db 06Fh                           ; outsw dx, word [si]
    db 075h, 06Eh                     ; jne 0x15a
    db 074h, 072h                     ; je 0x160
    db 079h, 000h                     ; jns 0xf0
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
    db 070h, 072h                     ; jo 0x184
    db 065h, 073h, 073h               ; jae 0x188
    db 065h, 064h, 000h, 050h, 069h   ; add byte fs:[bx + si + 0x69], dl
    db 063h, 061h, 000h               ; arpl word [bx + di], sp
    push ax                                  ; 50
    imul sp, word [bp + di + 0x61], 0x4520   ; 69 63 61 20 45
    db 078h, 070h                     ; js 0x195
    popaw                                    ; 61
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 065h, 064h, 020h, 043h, 06Fh ; and byte fs:[bp + di + 0x6f], al
    db 06Dh                           ; insw word es:[di], dx
    db 070h, 072h                     ; jo 0x1a2
    db 065h, 073h, 073h               ; jae 0x1a6
    db 065h, 064h, 000h, 050h, 069h   ; add byte fs:[bx + si + 0x69], dl
    arpl word [bx + di + 0x20], sp           ; 63 61 20
    inc bp                                   ; 45
    db 078h, 070h                     ; js 0x1ae
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
    or byte [bx + di], al                    ; 08 01
    sbb byte [bx + di], al                   ; 18 01
    sbb ax, 0x3601                           ; 1D 01 36
    add word [bx + di + 0x62], bp            ; 01 69 62
    db 06Dh                           ; insw word es:[di], dx
    db 067h, 072h, 078h               ; jb 0x1ea
    add byte [bx + si], al                   ; 00 00
    db 0AEh                           ; scasb al, byte es:[di]
    add word [bx + si], sp                   ; 01 20
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], bl                   ; 00 1B
    inc di                                   ; 47
    add byte [bp + di], bl                   ; 00 1B
    dec ax                                   ; 48
    add byte [bp + di], bl                   ; 00 1B
    db 02Dh, 031h, 000h               ; sub ax, 0x31
    sbb bp, word [di]                        ; 1B 2D
    xor byte [bx + si], al                   ; 30 00
    or ax, 0xf00                             ; 0D 00 0F
    add byte [bp + si], dl                   ; 00 12
    add byte [bx + si], al                   ; 00 00
    dec cx                                   ; 49
    inc dx                                   ; 42
    dec bp                                   ; 4D
    and byte [bx + 0x72], al                 ; 20 47 72
    popaw                                    ; 61
    db 070h, 068h                     ; jo 0x202
    imul sp, word [bp + di + 0x73], 0x4900   ; 69 63 73 00 49
    inc dx                                   ; 42
    dec bp                                   ; 4D
    and byte [bx + si + 0x72], dl            ; 20 50 72
    db 06Fh                           ; outsw dx, word [si]
    db 070h, 072h                     ; jo 0x219
    imul bp, word [bp + 0x74], 0x7265        ; 69 6E 74 65 72
    add byte [bx + si], al                   ; 00 00
    movlps xmm1, qword [bx]                  ; 0F 12 0F
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
    db 0E0h, 003h                     ; loopne 0x241
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
    db 01Bh, 04Ah, 000h               ; sbb cx, word [bp + si]
    or al, byte [bp + di]                    ; 0A 03
    add di, word [bp + si + 1]               ; 03 7A 01
    add byte [bp + di + 1], bh               ; 00 7B 01
    add byte [si + 1], bh                    ; 00 7C 01
    add bh, byte [bx + 1]                    ; 02 7F 01
    add al, byte [bp + si + 0x301]           ; 02 82 01 03
    xchg byte [bx + di], al                  ; 86 01
    add cx, word [bp + si + 0x101]           ; 03 8A 01 01
    mov word [bx + di], es                   ; 8C 01
    add word [bp + 0x101], cx                ; 01 8E 01 01
    nop                                      ; 90
    add word [bx + si], ax                   ; 01 00
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
    add byte [bp + si], ch                   ; 00 2A
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
    add byte [bx + si], al                   ; 00 00
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
    db 000h, 091h, 001h, 000h         ; add byte [bx + di + 1], dl
    add word [bp - 0x7fff], bx               ; 01 9E 01 80
    add byte [bx + si], ah                   ; 00 20
    add byte [di - 0x6500], ch               ; 00 AD 00 9B
    add byte [si + 0x3000], bl               ; 00 9C 00 30
    pop ax                                   ; 58
    popf                                     ; 9D
    db 000h, 07Ch, 000h               ; add byte [si], bh
    adc ax, 0x2200                           ; 15 00 22
    add byte [0xa600], ch                    ; 00 2E 00 A6
    add byte [bp - 0x5600], ch               ; 00 AE 00 AA
    add byte [di], ch                        ; 00 2D
    add byte [0x2d00], ch                    ; 00 2E 00 2D
    add al, bh                               ; 00 F8
    add cl, dh                               ; 00 F1
    add ch, bh                               ; 00 FD
    add byte [0x2700], ch                    ; 00 2E 00 27
    add dh, ah                               ; 00 E6
    add byte [0xfe00], ch                    ; 00 2E 00 FE
    add byte [si], ch                        ; 00 2C
    add byte [0xa700], ch                    ; 00 2E 00 A7
    add byte [bx - 0x5400], ch               ; 00 AF 00 AC
    add byte [bp + di + 0x2e00], ch          ; 00 AB 00 2E
    add byte [bx + si + 0x4100], ch          ; 00 A8 00 41
    pushaw                                   ; 60
    inc cx                                   ; 41
    daa                                      ; 27
    inc cx                                   ; 41
    pop si                                   ; 5E
    inc cx                                   ; 41
    db 07Eh, 08Eh                     ; jle 0x2eb
    add byte [bx - 0x6e00], cl               ; 00 8F 00 92
    add byte [bx + si + 0x4500], al          ; 00 80 00 45
    pushaw                                   ; 60
    nop                                      ; 90
    add byte [di + 0x5e], al                 ; 00 45 5E
    inc bp                                   ; 45
    and cl, byte [bx + di + 0x60]            ; 22 49 60
    dec cx                                   ; 49
    daa                                      ; 27
    dec cx                                   ; 49
    pop si                                   ; 5E
    dec cx                                   ; 49
    and al, byte [si + 0x2d]                 ; 22 44 2D
    db 0A5h                           ; movsw word es:[di], word [si]
    add byte [bx + 0x60], cl                 ; 00 4F 60
    dec di                                   ; 4F
    daa                                      ; 27
    dec di                                   ; 4F
    pop si                                   ; 5E
    dec di                                   ; 4F
    db 07Eh, 099h                     ; jle 0x31a
    add byte [0xed00], ch                    ; 00 2E 00 ED
    add byte [di + 0x60], dl                 ; 00 55 60
    push bp                                  ; 55
    daa                                      ; 27
    push bp                                  ; 55
    pop si                                   ; 5E
    db 09Ah, 000h, 059h, 027h, 070h   ; lcall 0x7027, 0x5900
    db 062h                           ; 62
    db 0E1h, 000h                     ; loope 0x394
    test word [bx + si], ax                  ; 85 00
    mov al, byte [0x8300]                    ; A0 00 83
    add byte [bx + di + 0x7e], ah            ; 00 61 7E
    test byte [bx + si], al                  ; 84 00
    xchg byte [bx + si], al                  ; 86 00
    xchg cx, ax                              ; 91
    add byte [bx - 0x7600], al               ; 00 87 00 8A
    add byte [di + 0x27], ah                 ; 00 65 27
    mov byte [bx + si], al                   ; 88 00
    mov word [bx + si], ax                   ; 89 00
    lea ax, [bx + si]                        ; 8D 00
    mov ax, word [0x8c00]                    ; A1 00 8C
    add byte [bp + di - 0x1500], cl          ; 00 8B 00 EB
    add byte [si - 0x6b00], ah               ; 00 A4 00 95
    add byte [bp + si - 0x6d00], ah          ; 00 A2 00 93
    add byte [bx + 0x7e], ch                 ; 00 6F 7E
    xchg sp, ax                              ; 94
    add byte [0x6f00], ch                    ; 00 2E 00 6F
    das                                      ; 2F
    xchg di, ax                              ; 97
    add byte [bp + di - 0x6a00], ah          ; 00 A3 00 96
    add byte [bx + di + 0x7900], al          ; 00 81 00 79
    daa                                      ; 27
    db 070h, 062h                     ; jo 0x434
    db 098h                           ; cwde