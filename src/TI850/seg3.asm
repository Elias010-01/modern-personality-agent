; TI850/seg3.asm
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
    imul sp, word [bp + di + 0x61], 0x5000   ; 69 63 61 00 50
    imul sp, word [bp + di + 0x61], 0x4520   ; 69 63 61 20 45
    db 078h, 070h                     ; js 0x181
    popaw                                    ; 61
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 065h, 064h, 000h, 000h   ; add byte fs:[bx + si], al
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], al                   ; 00 03
    or word [si], cx                         ; 09 0C
    add byte [si], al                        ; 00 04
    add byte [bx + si], al                   ; 00 00
    add word [bp + di], ax                   ; 01 03
    or word [bx + si], bx                    ; 09 18
    add byte [si], al                        ; 00 04
    add al, 1                                ; 04 01
    or word [bx + di], ax                    ; 09 01
    db 074h, 069h                     ; je 0x197
    cmp byte [di], dh                        ; 38 35
    xor byte [bx + si], al                   ; 30 00
    push si                                  ; 56
    add word [bx + si], sp                   ; 01 20
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], bl                   ; 00 1B
    xor al, 0                                ; 34 00
    sbb si, word [di]                        ; 1B 35
    add byte [bp + di], bl                   ; 00 1B
    inc di                                   ; 47
    add byte [bp + di], bl                   ; 00 1B
    dec ax                                   ; 48
    add byte [bp + di], bl                   ; 00 1B
    imul ax, word [bx + si], 0x6a1b          ; 69 00 1B 6A
    add byte [di], cl                        ; 00 0D
    add byte [bp + di], bl                   ; 00 1B
    push ax                                  ; 50
    add byte [bp + di], bl                   ; 00 1B
    push cx                                  ; 51
    db 01Bh, 079h, 000h               ; sbb di, word [bx + di]
    add byte [bx + si], al                   ; 00 00
    sbb dx, word [bx + si + 0x1b]            ; 1B 50 1B
    push cx                                  ; 51
    sbb dx, word [bx + si + 0x1b]            ; 1B 50 1B
    push bx                                  ; 53
    sbb dx, word [si + 0x1b]                 ; 1B 54 1B
    push cx                                  ; 51
    sbb dx, word [bp + di + 0x1b]            ; 1B 53 1B
    push sp                                  ; 54
    sbb dx, word [bx + si + 0x1b]            ; 1B 50 1B
    inc di                                   ; 47
    sbb cx, word [bx + si + 0x1b]            ; 1B 48 1B
    push cx                                  ; 51
    sbb ax, word [bx + 0x1b]                 ; 1B 47 1B
    dec ax                                   ; 48
    sbb dx, word [bx + si + 0x1b]            ; 1B 50 1B
    push bx                                  ; 53
    sbb ax, word [bx + 0x1b]                 ; 1B 47 1B
    dec ax                                   ; 48
    sbb dx, word [si + 0x1b]                 ; 1B 54 1B
    push cx                                  ; 51
    sbb dx, word [bp + di + 0x1b]            ; 1B 53 1B
    inc di                                   ; 47
    sbb cx, word [bx + si + 0x1b]            ; 1B 48 1B
    push sp                                  ; 54
    sbb ax, word [bx + si + 0x1b]            ; 1B 40 1B
    inc bx                                   ; 43
    sbb ax, word [bx + di + 0x1b]            ; 1B 41 1B
    inc bp                                   ; 45
    sbb ax, word [bp]                        ; 1B 46 00
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
    db 0E0h, 003h                     ; loopne 0x1e5
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
    sbb si, word [bp + di]                   ; 1B 33
    add byte [bp + si], cl                   ; 00 0A
    add al, 3                                ; 04 03
    cmp byte [bx + di], al                   ; 38 01
    add bh, byte [bp + di]                   ; 02 3B
    add word [bp + si], ax                   ; 01 02
    add word ds:[bp + si], ax                ; 3E 01 02
    inc cx                                   ; 41
    add word [bp + si], ax                   ; 01 02
    inc sp                                   ; 44
    add word [bp + si], ax                   ; 01 02
    inc di                                   ; 47
    add word [bp + si], ax                   ; 01 02
    dec dx                                   ; 4A
    add word [bx + di], ax                   ; 01 01
    dec sp                                   ; 4C
    add word [bp + si], ax                   ; 01 02
    dec di                                   ; 4F
    add word [si], ax                        ; 01 04
    push sp                                  ; 54
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
    add dh, cl                               ; 00 CE
    add word [bx + si], ax                   ; 01 00
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
    db 000h, 0A4h, 001h, 000h         ; add byte [si + 1], ah
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
    add byte [bx + si], ah                   ; 00 20
    add byte [di], ch                        ; 00 2D
    add byte [bp + di + 0x7c], ah            ; 00 63 7C
    and ax, word [bx + si]                   ; 23 00
    add byte cs:[bx + di + 0x3d], bl         ; 2E 00 59 3D
    db 07Ch, 000h                     ; jl 0x2be
    add byte cs:[bp + si], ah                ; 2E 00 22
    add byte [0x6100], ch                    ; 00 2E 00 61
    pop di                                   ; 5F
    cmp al, 0x3d                             ; 3C 3D
    db 07Eh, 000h                     ; jle 0x2ca
    add byte cs:[0x2d00], ch                 ; 2E 00 2E 00 2D
    add byte [0x2b00], ch                    ; 00 2E 00 2B
    pop di                                   ; 5F
    add byte cs:[0x2700], ch                 ; 2E 00 2E 00 27
    add byte [0x2e00], ch                    ; 00 2E 00 2E
    add byte [0x2c00], ch                    ; 00 2E 00 2C
    add byte [0x6f00], ch                    ; 00 2E 00 6F
    pop di                                   ; 5F
    db 03Eh, 03Dh, 02Ch, 000h         ; cmp ax, 0x2c
    sub ax, word [bx + si]                   ; 2B 00
    sub bp, word [si]                        ; 2B 2C
    sub byte [bx + di], ch                   ; 28 29
    inc cx                                   ; 41
    db 000h, 041h, 000h               ; add byte [bx + di], al
    inc cx                                   ; 41
    db 000h, 041h, 000h               ; add byte [bx + di], al
    inc cx                                   ; 41
    db 022h, 041h, 000h               ; and al, byte [bx + di]
    inc cx                                   ; 41
    add byte [bp + di + 0x2c], al            ; 00 43 2C
    inc bp                                   ; 45
    db 000h, 045h, 000h               ; add byte [di], al
    inc bp                                   ; 45
    db 000h, 045h, 000h               ; add byte [di], al
    dec cx                                   ; 49
    db 000h, 049h, 000h               ; add byte [bx + di], cl
    dec cx                                   ; 49
    db 000h, 049h, 000h               ; add byte [bx + di], cl
    inc sp                                   ; 44
    sub ax, 0x7e4e                           ; 2D 4E 7E
    dec di                                   ; 4F
    db 000h, 04Fh, 000h               ; add byte [bx], cl
    dec di                                   ; 4F
    db 000h, 04Fh, 000h               ; add byte [bx], cl
    dec di                                   ; 4F
    and ch, byte [0x3000]                    ; 22 2E 00 30
    das                                      ; 2F
    push bp                                  ; 55
    pushaw                                   ; 60
    push bp                                  ; 55
    daa                                      ; 27
    push bp                                  ; 55
    pop si                                   ; 5E
    push bp                                  ; 55
    db 022h, 059h, 000h               ; and bl, byte [bx + di]
    db 070h, 062h                     ; jo 0x390
    add byte cs:[bx + di + 0x60], ah         ; 2E 00 61 60
    popaw                                    ; 61
    daa                                      ; 27
    popaw                                    ; 61
    pop si                                   ; 5E
    popaw                                    ; 61
    db 07Eh, 061h                     ; jle 0x39a
    db 022h, 061h, 000h               ; and ah, byte [bx + di]
    popaw                                    ; 61
    add byte [bp + di + 0x2c], ah            ; 00 63 2C
    db 065h, 060h                     ; pushaw
    db 065h, 027h                     ; daa
    db 065h, 05Eh                     ; pop si
    and ch, byte gs:[bx + di + 0x60]         ; 65 22 69 60
    imul sp, word [bx], 0x5e69               ; 69 27 69 5E
    db 069h, 022h, 02Eh, 000h         ; imul sp, word [bp + si], 0x2e
    db 06Eh                           ; outsb dx, byte [si]
    db 07Eh, 06Fh                     ; jle 0x3c4
    pushaw                                   ; 60
    db 06Fh                           ; outsw dx, word [si]
    daa                                      ; 27
    db 06Fh                           ; outsw dx, word [si]
    pop si                                   ; 5E
    db 06Fh                           ; outsw dx, word [si]
    db 07Eh, 06Fh                     ; jle 0x3cc
    and ch, byte [0x6f00]                    ; 22 2E 00 6F
    das                                      ; 2F
    db 075h, 060h                     ; jne 0x3c4
    db 075h, 027h                     ; jne 0x38d
    db 075h, 05Eh                     ; jne 0x3c6
    db 075h, 022h                     ; jne 0x38c
    db 075h, 027h                     ; jne 0x393
    db 070h, 062h                     ; jo 0x3d0
    db 079h, 022h                     ; jns 0x392