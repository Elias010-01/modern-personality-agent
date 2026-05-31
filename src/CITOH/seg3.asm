; CITOH/seg3.asm
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
    add al, byte [bx + si]                   ; 02 00
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
    db 000h, 060h, 000h               ; add byte [bx + si], ah
    dec ax                                   ; 48
    db 000h, 078h, 000h               ; add byte [bx + si], bh
    db 0F0h                           ; F0
    add ah, ch                               ; 00 EC
    or ax, si                                ; 09 F0
    pop es                                   ; 07
    rol byte [bp + si], 1                    ; D0 02
    add ch, bh                               ; 00 FD
    cmp byte [bp + di + 0x60], ah            ; 38 63 60
    dec di                                   ; 4F
    rol byte [bp + si], 1                    ; D0 02
    add ch, bh                               ; 00 FD
    db 0E8h, 003h, 020h               ; call 0x2056
    db 003h, 0D0h                     ; add dx, ax
    add al, byte [bx + si]                   ; 02 00
    std                                      ; FD
    adc byte [bx], ah                        ; 10 27
    inc ax                                   ; 40
    pop ds                                   ; 1F
    rol byte [bp + si], 1                    ; D0 02
    add ch, bh                               ; 00 FD
    inc ax                                   ; 40
    cmp byte [bx + si], al                   ; 38 00
    sub ax, 0x2d0                            ; 2D D0 02
    add ch, bh                               ; 00 FD
    dec ax                                   ; 48
    db 000h, 060h, 000h               ; add byte [bx + si], ah
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
    add byte [bx + si], al                   ; 00 00
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
    pushaw                                   ; 60
    db 000h, 078h, 000h               ; add byte [bx + si], bh
    db 0F0h                           ; F0
    add al, dh                               ; 00 F0
    pop es                                   ; 07
    in al, dx                                ; EC
    or word [bx + si], ax                    ; 09 00
    add si, word [bx + si]                   ; 03 30
    std                                      ; FD
    pushaw                                   ; 60
    dec di                                   ; 4F
    db 038h, 063h, 000h               ; cmp byte [bp + di], ah
    add si, word [bx + si]                   ; 03 30
    std                                      ; FD
    and byte [bp + di], al                   ; 20 03
    db 0E8h, 003h, 000h               ; call 0xc0
    add si, word [bx + si]                   ; 03 30
    std                                      ; FD
    inc ax                                   ; 40
    pop ds                                   ; 1F
    adc byte [bx], ah                        ; 10 27
    add byte [bp + di], al                   ; 00 03
    xor ch, bh                               ; 30 FD
    add byte [di], ch                        ; 00 2D
    inc ax                                   ; 40
    cmp byte [bx + si], al                   ; 38 00
    add si, word [bx + si]                   ; 03 30
    std                                      ; FD
    pushaw                                   ; 60
    db 000h, 048h, 000h               ; add byte [bx + si], cl
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    sbb dx, word [si + 0x31]                 ; 1B 54 31
    sbb di, word ss:[0x451b]                 ; 36 1B 3E 1B 45
    add byte [bp + di], bl                   ; 00 1B
    cmp al, 0                                ; 3C 00
    db 01Bh, 045h, 000h               ; sbb ax, word [di]
    db 01Bh, 045h, 000h               ; sbb ax, word [di]
    db 01Bh, 041h, 000h               ; sbb ax, word [bx + di]
    db 00Dh, 000h, 000h               ; or ax, 0
    db 089h, 088h, 000h, 000h         ; mov word [bx + si], cx
    dec ax                                   ; 48
    add byte [bx + si], al                   ; 00 00
    add cx, word [bx + di]                   ; 03 09
    add byte [bx + di], al                   ; 00 01
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    sbb ax, word [bx + si]                   ; 1B 00
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
    add byte [bx + si + 0x88], cl            ; 00 88 88 00
    add byte [bx + si], al                   ; 00 00
    db 003h, 048h, 000h               ; add cx, word [bx + si]
    pushaw                                   ; 60
    add byte [bx + di], al                   ; 00 01
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    sbb ax, word [bx + si]                   ; 1B 00
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
    imul sp, word [bp + di + 0x6f], 0x6e75   ; 69 63 6F 75 6E
    db 074h, 072h                     ; je 0x202
    db 079h, 000h                     ; jns 0x192
    db 069h, 06Eh, 074h, 06Ch, 000h   ; imul bp, word [bp + 0x74], 0x6c
    add byte [bp + di], bl                   ; 00 1B
    push bx                                  ; 53
    add byte [bx + si], al                   ; 00 00
    db 01Bh, 054h, 000h               ; sbb dx, word [si]
    add byte [bx + si], al                   ; 00 00
    or ax, 0xa00                             ; 0D 00 0A
    add byte [bp + si], cl                   ; 00 0A
    add byte [di], cl                        ; 00 0D
    add byte [bx + si], ah                   ; 00 20
    add byte [bp + di], bl                   ; 00 1B
    push bx                                  ; 53
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add al, dh                               ; 00 F0
    db 078h, 048h                     ; js 0x1fd
    pushaw                                   ; 60
    inc bp                                   ; 45
    db 06Ch                           ; insb byte es:[di], dx
    db 069h, 074h, 065h, 000h, 000h   ; imul si, word [si + 0x65], 0
    add byte [bx + si], al                   ; 00 00
    add cx, word [bx + di]                   ; 03 09
    or byte [bx + si], al                    ; 08 00
    add al, 0xb6                             ; 04 B6
    add word [bx + si], sp                   ; 01 20
    add byte [di], ch                        ; 00 2D
    add byte [bp + di + 0x7c], ah            ; 00 63 7C
    and ax, word [bx + si]                   ; 23 00
    add byte cs:[bx + di + 0x3d], bl         ; 2E 00 59 3D
    db 07Ch, 000h                     ; jl 0x1d4
    add byte cs:[bp + si], ah                ; 2E 00 22
    add byte [0x6100], ch                    ; 00 2E 00 61
    pop di                                   ; 5F
    cmp al, 0x3d                             ; 3C 3D
    db 07Eh, 000h                     ; jle 0x1e0
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
    db 070h, 062h                     ; jo 0x2a6
    add byte cs:[bx + di + 0x60], ah         ; 2E 00 61 60
    popaw                                    ; 61
    daa                                      ; 27
    popaw                                    ; 61
    pop si                                   ; 5E
    popaw                                    ; 61
    db 07Eh, 061h                     ; jle 0x2b0
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
    db 07Eh, 06Fh                     ; jle 0x2da
    pushaw                                   ; 60
    db 06Fh                           ; outsw dx, word [si]
    daa                                      ; 27
    db 06Fh                           ; outsw dx, word [si]
    pop si                                   ; 5E
    db 06Fh                           ; outsw dx, word [si]
    db 07Eh, 06Fh                     ; jle 0x2e2
    and ch, byte [0x6f00]                    ; 22 2E 00 6F
    das                                      ; 2F
    db 075h, 060h                     ; jne 0x2da
    db 075h, 027h                     ; jne 0x2a3
    db 075h, 05Eh                     ; jne 0x2dc
    db 075h, 022h                     ; jne 0x2a2
    db 075h, 027h                     ; jne 0x2a9
    db 070h, 062h                     ; jo 0x2e6
    db 079h, 022h                     ; jns 0x2a8
    sbb sp, word [bx + di]                   ; 1B 21
    add byte [bp + di], bl                   ; 00 1B
    pop ax                                   ; 58
    add byte [bp + di], bl                   ; 00 1B
    and al, byte [bx + si]                   ; 22 00
    db 01Bh, 059h, 000h               ; sbb bx, word [bx + di]
    inc bx                                   ; 43
    dec cx                                   ; 49
    push sp                                  ; 54
    dec di                                   ; 4F
    dec ax                                   ; 48
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
    dec bp                                   ; 4D
    sbb dx, word [bx + si + 0x1b]            ; 1B 50 1B
    dec bp                                   ; 4D
    push cs                                  ; 0E
    adc al, 0x1b                             ; 14 1B
    push ax                                  ; 50
    sbb cx, word [di + 0x1b]                 ; 1B 4D 1B
    inc di                                   ; 47
    sbb cx, word [bx + si + 0x1b]            ; 1B 48 1B
    push ax                                  ; 50
    sbb cx, word [di + 0xe]                  ; 1B 4D 0E
    sbb ax, word [bx + 0x1b]                 ; 1B 47 1B
    dec ax                                   ; 48
    adc al, 0x1b                             ; 14 1B
    push ax                                  ; 50
    sbb si, word [bx + si + 0x31]            ; 1B 70 31
    sbb si, word [bx + si + 0x30]            ; 1B 70 30
    sbb si, word [bx + si + 0x31]            ; 1B 70 31
    push cs                                  ; 0E
    adc al, 0x1b                             ; 14 1B
    db 070h, 030h                     ; jo 0x312
    sbb ax, word [bx + si + 0x1b]            ; 1B 40 1B
    inc bx                                   ; 43
    sbb cx, word [bp + si + 0x1b]            ; 1B 4A 1B
    pop cx                                   ; 59
    sbb ax, word [di + 0x1b]                 ; 1B 45 1B
    inc si                                   ; 46
    sbb si, word [si]                        ; 1B 34
    sbb si, word [di]                        ; 1B 35
    sbb cx, word [bp + di + 0x1b]            ; 1B 4B 1B
    dec bx                                   ; 4B
    sbb dx, word [bp + di + 0x30]            ; 1B 53 30
    sbb dx, word [si + 0x1b]                 ; 1B 54 1B
    push bx                                  ; 53
    xor word [bp + di], bx                   ; 31 1B
    push sp                                  ; 54
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
    sub byte [bx + 0x2c43], 0x75             ; 80 AF 43 2C 75
    and ah, byte [di + 0x27]                 ; 22 65 27
    popaw                                    ; 61
    pop si                                   ; 5E
    popaw                                    ; 61
    and ah, byte [bx + di + 0x60]            ; 22 61 60
    popaw                                    ; 61
    add byte [bp + di + 0x2c], ah            ; 00 63 2C
    db 065h, 05Eh                     ; pop si
    and ah, byte gs:[di + 0x60]              ; 65 22 65 60
    imul sp, word [bp + si], 0x5e69          ; 69 22 69 5E
    imul sp, word [bx + si + 0x41], 0x4122   ; 69 60 41 22 41
    add byte [di + 0x27], al                 ; 00 45 27
    popaw                                    ; 61
    db 000h, 041h, 000h               ; add byte [bx + di], al
    db 06Fh                           ; outsw dx, word [si]
    pop si                                   ; 5E
    db 06Fh                           ; outsw dx, word [si]
    and ch, byte [bx + 0x60]                 ; 22 6F 60
    db 075h, 05Eh                     ; jne 0x3a2
    db 075h, 060h                     ; jne 0x3a6
    db 079h, 022h                     ; jns 0x36a
    dec di                                   ; 4F
    and dl, byte [di + 0x22]                 ; 22 55 22
    arpl word [bx], bp                       ; 63 2F
    and ax, word [bx + si]                   ; 23 00
    pop cx                                   ; 59
    db 03Dh, 050h, 000h               ; cmp ax, 0x50
    db 066h, 000h, 061h, 027h         ; add byte [bx + di + 0x27], ah
    imul sp, word [bx], 0x276f               ; 69 27 6F 27
    db 075h, 027h                     ; jne 0x385
    db 06Eh                           ; outsb dx, byte [si]
    db 07Eh, 04Eh                     ; jle 0x3af
    db 07Eh, 061h                     ; jle 0x3c4
    pop di                                   ; 5F
    db 06Fh                           ; outsw dx, word [si]
    pop di                                   ; 5F
    test al, 0                               ; A8 00
    test ax, 0xaa00                          ; A9 00 AA
    add byte [bp + di - 0x5400], ch          ; 00 AB 00 AC
    add byte [di + 0x3c00], ch               ; 00 AD 00 3C
    cmp ax, 0x3d3e                           ; 3D 3E 3D
    adc al, 0                                ; 14 00
    xor byte [bp + di], al                   ; 30 03
    sbb byte [bp + di], al                   ; 18 03
    sbb byte [bx + si], al                   ; 18 00
    and al, 0                                ; 24 00
    sbb byte [bp + di], al                   ; 18 03
    sbb ax, word [bx + si]                   ; 1B 00
    adc ax, 0x1a00                           ; 15 00 1A
    add cx, word [bx + di + 3]               ; 03 49 03
    or al, 0                                 ; 0C 00
    cmp al, 0                                ; 3C 00
    dec cx                                   ; 49
    add si, word [bp + di]                   ; 03 33
    add byte [0x1800], dl                    ; 00 16 00 18
    add sp, word [bx + si + 3]               ; 03 60 03
    or al, 0                                 ; 0C 00
    inc si                                   ; 46
    add byte [bx + si + 3], ah               ; 00 60 03
    cmp ax, 0x1400                           ; 3D 00 14
    add byte [bx + si], bl                   ; 00 18
    add si, word [bx + si]                   ; 03 30
    add sp, word [si]                        ; 03 24
    add byte [bx + si], bl                   ; 00 18
    add byte [bx + si], bl                   ; 00 18
    add bx, word [bp + di]                   ; 03 1B
    add byte [di], dl                        ; 00 15
    add byte [bx + di + 3], cl               ; 00 49 03
    sbb al, byte [bp + di]                   ; 1A 03
    cmp al, 0                                ; 3C 00
    or al, 0                                 ; 0C 00
    dec cx                                   ; 49
    add si, word [bp + di]                   ; 03 33
    add byte [0x6000], dl                    ; 00 16 00 60
    add bx, word [bx + si]                   ; 03 18
    add ax, word [bp]                        ; 03 46 00
    or al, 0                                 ; 0C 00
    pushaw                                   ; 60
    add di, word [di]                        ; 03 3D
    add byte [bx + si + 0x2002], bl          ; 00 98 02 20
    add byte [bp + di], bl                   ; 00 1B
    push bx                                  ; 53
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], bl                   ; 00 1B
    inc bp                                   ; 45
    add byte [bp + di], bl                   ; 00 1B
    inc bp                                   ; 45