; OKI92/seg3.asm
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
    add byte [si], dl                        ; 00 14
    add bx, cx                               ; 01 CB
    add byte [bx + si], dl                   ; 00 10
    db 003h, 0E0h                     ; add sp, ax
    add word [bx + di], ax                   ; 01 01
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
    add byte [si], bh                        ; 00 3C
    db 000h, 048h, 000h               ; add byte [bx + si], cl
    pop si                                   ; 5E
    add byte [si - 0x3200], bh               ; 00 BC 00 CE
    db 00Ah, 0F0h                     ; or dh, al
    pop es                                   ; 07
    adc byte [bp + di], al                   ; 10 03
    and dh, bh                               ; 20 FE
    or al, 0x6c                              ; 0C 6C
    pushaw                                   ; 60
    dec di                                   ; 4F
    adc byte [bp + di], al                   ; 10 03
    and dh, bh                               ; 20 FE
    inc ax                                   ; 40
    add al, 0x20                             ; 04 20
    add dx, word [bx + si]                   ; 03 10
    add sp, word [bx + si]                   ; 03 20
    dec byte [bx + si + 0x402a]              ; FE 88 2A 40
    pop ds                                   ; 1F
    adc byte [bp + di], al                   ; 10 03
    and dh, bh                               ; 20 FE
    inc cx                                   ; 41
    cmp ax, 0x2d00                           ; 3D 00 2D
    adc byte [bp + di], al                   ; 10 03
    and dh, bh                               ; 20 FE
    dec ax                                   ; 48
    add byte [si], bh                        ; 00 3C
    add byte [bx + di], al                   ; 00 01
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add word [bp + si], ax                   ; 01 02
    add bl, cl                               ; 00 CB
    add byte [si], dl                        ; 00 14
    add ax, sp                               ; 01 E0
    add word [bx + si], dx                   ; 01 10
    add ax, word [bx + di]                   ; 03 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], dl                   ; 00 11
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    add byte [di], al                        ; 00 05
    add byte [bp + si], al                   ; 00 02
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    and byte [bx + si], al                   ; 20 00
    add byte [bp + di], al                   ; 00 03
    db 000h, 048h, 000h               ; add byte [bx + si], cl
    cmp al, 0                                ; 3C 00
    pop si                                   ; 5E
    add byte [si - 0x1000], bh               ; 00 BC 00 F0
    pop es                                   ; 07
    into                                     ; CE
    db 00Ah, 0E0h                     ; or ah, al
    add ax, si                               ; 01 F0
    cld                                      ; FC
    pushaw                                   ; 60
    dec di                                   ; 4F
    or al, 0x6c                              ; 0C 6C
    db 0E0h, 001h                     ; loopne 0xb7
    db 0F0h                           ; F0
    cld                                      ; FC
    and byte [bp + di], al                   ; 20 03
    inc ax                                   ; 40
    add al, 0xe0                             ; 04 E0
    add ax, si                               ; 01 F0
    cld                                      ; FC
    inc ax                                   ; 40
    pop ds                                   ; 1F
    mov byte [bp + si], ch                   ; 88 2A
    db 0E0h, 001h                     ; loopne 0xc7
    db 0F0h                           ; F0
    cld                                      ; FC
    add byte [di], ch                        ; 00 2D
    inc cx                                   ; 41
    cmp ax, 0x1e0                            ; 3D E0 01
    db 0F0h                           ; F0
    cld                                      ; FC
    cmp al, 0                                ; 3C 00
    dec ax                                   ; 48
    add byte [bx + di], al                   ; 00 01
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], bl                   ; 00 18
    or ax, 0xc00                             ; 0D 00 0C
    add byte [bx + si], bl                   ; 00 18
    db 00Dh, 000h, 000h               ; or ax, 0
    imul sp, word [bp + di + 0x6f], 0x6e75   ; 69 63 6F 75 6E
    db 074h, 072h                     ; je 0x162
    db 079h, 000h                     ; jns 0xf2
    db 069h, 06Eh, 074h, 06Ch, 000h   ; imul bp, word [bp + 0x74], 0x6c
    add byte [3], bl                         ; 00 1E 03 00
    add ax, word [bp + si]                   ; 03 02
    add byte [bp + di], bl                   ; 00 1B
    db 025h, 039h, 000h               ; and ax, 0x39
    or cl, byte [bp + si]                    ; 0A 0A
    add byte [bx + si], ah                   ; 00 20
    add byte [3], bl                         ; 00 1E 03 00
    add byte [bx + si], al                   ; 00 00
    add ax, word [bp + si]                   ; 03 02
    add byte [bx + si], al                   ; 00 00
    db 064h, 074h, 04Dh               ; je 0x160
    dec di                                   ; 4F
    inc sp                                   ; 44
    inc bp                                   ; 45
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    mov sp, 0x485e                           ; BC 5E 48
    cmp al, 0x50                             ; 3C 50
    imul sp, word [bp + di + 0x61], 0x5000   ; 69 63 61 00 50
    imul sp, word [bp + di + 0x61], 0x4520   ; 69 63 61 20 45
    db 078h, 070h                     ; js 0x19b
    popaw                                    ; 61
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 065h, 064h, 020h, 043h, 06Fh ; and byte fs:[bp + di + 0x6f], al
    db 06Dh                           ; insw word es:[di], dx
    db 070h, 072h                     ; jo 0x1a8
    db 065h, 073h, 073h               ; jae 0x1ac
    db 065h, 064h, 000h, 050h, 069h   ; add byte fs:[bx + si + 0x69], dl
    arpl word [bx + di + 0x20], sp           ; 63 61 20
    inc bp                                   ; 45
    db 078h, 070h                     ; js 0x1b4
    popaw                                    ; 61
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 065h, 064h, 000h, 045h, 06Ch ; add byte fs:[di + 0x6c], al
    imul si, word [si + 0x65], 0x4500        ; 69 74 65 00 45
    db 06Ch                           ; insb byte es:[di], dx
    imul si, word [si + 0x65], 0x4520        ; 69 74 65 20 45
    db 078h, 070h                     ; js 0x1c9
    popaw                                    ; 61
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 065h, 064h, 000h, 000h   ; add byte fs:[bx + si], al
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], al                   ; 00 03
    or word [0x400], ax                      ; 09 06 00 04
    add byte [bx + si], al                   ; 00 00
    add word [bp + di], ax                   ; 01 03
    or word [bx], ax                         ; 09 07
    add byte [si], al                        ; 00 04
    add byte [bx + si], al                   ; 00 00
    add al, byte [bp + di]                   ; 02 03
    or word [si], cx                         ; 09 0C
    add byte [si], al                        ; 00 04
    add byte [bx + si], al                   ; 00 00
    add ax, word [bp + di]                   ; 03 03
    or word [di], ax                         ; 09 05
    add byte [si], al                        ; 00 04
    add byte [bx + si], al                   ; 00 00
    add al, 3                                ; 04 03
    or word [bp + si], cx                    ; 09 0A
    add byte [si], al                        ; 00 04
    push ds                                  ; 1E
    add word [bp + di], sp                   ; 01 23
    add word [si], di                        ; 01 3C
    add word [bp + si + 1], cx               ; 01 4A 01
    push ax                                  ; 50
    add word [bx + 0x6b], bp                 ; 01 6F 6B
    db 069h, 039h, 032h, 000h         ; imul di, word [bx + di], 0x32
    mov sp, 0x2001                           ; BC 01 20
    add byte [3], bl                         ; 00 1E 03 00
    add byte [bx + si], al                   ; 00 00
    add ax, word [bp + si]                   ; 03 02
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], bl                   ; 00 1B
    dec ax                                   ; 48
    add byte [bp + di], bl                   ; 00 1B
    dec cx                                   ; 49
    add byte [bp + di], bl                   ; 00 1B
    inc bx                                   ; 43
    add byte [bp + di], bl                   ; 00 1B
    inc sp                                   ; 44
    add byte [di], cl                        ; 00 0D
    add byte [di], bl                        ; 00 1D
    add byte [0x1c00], bl                    ; 00 1E 00 1C
    add byte [di], bl                        ; 00 1D
    push ds                                  ; 1E
    sbb ax, 0x1e1f                           ; 1D 1F 1E
    pop ds                                   ; 1F
    push ds                                  ; 1E
    sbb ax, 0x481b                           ; 1D 1B 48
    sbb cx, word [bx + di + 0x1e]            ; 1B 49 1E
    sbb cx, word [bx + si + 0x1b]            ; 1B 48 1B
    dec cx                                   ; 49
    sbb ax, 0x1b1f                           ; 1D 1F 1B
    dec ax                                   ; 48
    sbb cx, word [bx + di + 0x1e]            ; 1B 49 1E
    pop ds                                   ; 1F
    sbb cx, word [bx + si + 0x1b]            ; 1B 48 1B
    dec cx                                   ; 49
    push ds                                  ; 1E
    sbb al, 0x1e                             ; 1C 1E
    sbb al, 0x1f                             ; 1C 1F
    push ds                                  ; 1E
    sbb al, 0x1b                             ; 1C 1B
    dec ax                                   ; 48
    sbb cx, word [bx + di + 0x1e]            ; 1B 49 1E
    sbb al, 0x1f                             ; 1C 1F
    sbb cx, word [bx + si + 0x1b]            ; 1B 48 1B
    dec cx                                   ; 49
    push ds                                  ; 1E
    sbb si, word [bx + di]                   ; 1B 31
    sbb si, word [bx + si]                   ; 1B 30
    sbb si, word [bx + di]                   ; 1B 31
    pop ds                                   ; 1F
    push ds                                  ; 1E
    sbb si, word [bx + si]                   ; 1B 30
    sbb byte [bp + di], bl                   ; 18 1B
    inc si                                   ; 46
    sbb sp, word [di]                        ; 1B 25
    cmp word [bp + di], bx                   ; 39 1B
    push sp                                  ; 54
    sbb cx, word [bx + di + 0x1b]            ; 1B 49 1B
    inc bx                                   ; 43
    sbb ax, word [si + 0x1b]                 ; 1B 44 1B
    inc bx                                   ; 43
    sbb ax, word [si + 0x1b]                 ; 1B 44 1B
    dec dx                                   ; 4A
    sbb cx, word [si + 0x1b]                 ; 1B 4C 1B
    dec sp                                   ; 4C
    db 01Bh, 04Ah, 000h               ; sbb cx, word [bp + si]
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
    add dh, bh                               ; 00 FE
    add word [bx + si], bx                   ; 01 18
    add cx, word [bx]                        ; 03 0F
    add byte [si], al                        ; 00 04
    add byte [bx + si], bl                   ; 00 18
    add ax, word [bx + si]                   ; 03 00
    add byte [di], dl                        ; 00 15
    add al, dh                               ; 00 F0
    add word [bp + si + 3], cx               ; 01 4A 03
    or byte [bx + si], al                    ; 08 00
    sbb ax, 0x4a00                           ; 1D 00 4A
    add bx, word [bx + di]                   ; 03 19
    add byte [0xef00], dl                    ; 00 16 00 EF
    add word [bx + si + 3], sp               ; 01 60 03
    or byte [bx + si], al                    ; 08 00
    sub byte [bx + si], al                   ; 28 00
    pushaw                                   ; 60
    add sp, word [si]                        ; 03 24
    add byte [si], dl                        ; 00 14
    add byte [bx + si], bl                   ; 00 18
    db 003h, 0FEh                     ; add di, si
    add word [si], ax                        ; 01 04
    add byte [bx], cl                        ; 00 0F
    add byte [bx + si], bl                   ; 00 18
    add ax, word [bx + si]                   ; 03 00
    add byte [di], dl                        ; 00 15
    add byte [bp + si + 3], cl               ; 00 4A 03
    lock add word [di], bx                   ; F0 01 1D
    add byte [bx + si], cl                   ; 00 08
    add byte [bp + si + 3], cl               ; 00 4A 03
    sbb word [bx + si], ax                   ; 19 00
    push ss                                  ; 16
    add byte [bx + si + 3], ah               ; 00 60 03
    out dx, ax                               ; EF
    add word [bx + si], bp                   ; 01 28
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si + 3], ah               ; 00 60 03
    and al, 0                                ; 24 00
    db 0A4h                           ; movsb byte es:[di], byte [si]
    add word [bx + di], ax                   ; 01 01
    db 0A6h                           ; cmpsb byte [si], byte es:[di]
    add word [bx + di], ax                   ; 01 01
    test al, 1                               ; A8 01
    add ch, byte [bp + di + 0x201]           ; 02 AB 01 02
    db 0AEh                           ; scasb al, byte es:[di]
    add word [bp + si], ax                   ; 01 02
    mov cl, 1                                ; B1 01
    add dh, byte [si + 0x101]                ; 02 B4 01 01
    mov dh, 1                                ; B6 01
    add word [bx + si + 0x101], di           ; 01 B8 01 01
    mov dx, 0x101                            ; BA 01 01
    db 089h, 088h, 000h, 000h         ; mov word [bx + si], cx
    cmp byte [bx + si], al                   ; 38 00
    db 0E0h, 001h                     ; loopne 0x29f
    pop es                                   ; 07
    add byte [bx + di], al                   ; 00 01
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], ah                   ; 00 20
    db 00Dh, 000h, 000h               ; or ax, 0
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    dec si                                   ; 4E
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
    add al, ah                               ; 00 E0
    add word [bx + si], di                   ; 01 38
    add byte [si], bh                        ; 00 3C
    add byte [bx + di], al                   ; 00 01
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], ah                   ; 00 20
    db 00Dh, 000h, 000h               ; or ax, 0
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    and al, 2                                ; 24 02
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
    and byte [bx + si], al                   ; 20 00
    sub ax, 0x6300                           ; 2D 00 63
    db 07Ch, 023h                     ; jl 0x350
    add byte [0x5900], ch                    ; 00 2E 00 59
    db 03Dh, 07Ch, 000h               ; cmp ax, 0x7c
    add byte cs:[bp + si], ah                ; 2E 00 22
    add byte [0x6100], ch                    ; 00 2E 00 61
    pop di                                   ; 5F
    cmp al, 0x3d                             ; 3C 3D
    db 07Eh, 000h                     ; jle 0x340
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
    pushaw                                   ; 60
    inc cx                                   ; 41
    daa                                      ; 27
    inc cx                                   ; 41
    pop si                                   ; 5E
    inc cx                                   ; 41
    db 07Eh, 041h                     ; jle 0x3b0
    db 022h, 041h, 000h               ; and al, byte [bx + di]
    inc cx                                   ; 41
    add byte [bp + di + 0x2c], al            ; 00 43 2C
    inc bp                                   ; 45
    pushaw                                   ; 60
    inc bp                                   ; 45
    daa                                      ; 27
    inc bp                                   ; 45
    pop si                                   ; 5E
    inc bp                                   ; 45
    and cl, byte [bx + di + 0x60]            ; 22 49 60
    dec cx                                   ; 49
    daa                                      ; 27
    dec cx                                   ; 49
    pop si                                   ; 5E
    dec cx                                   ; 49
    and al, byte [si + 0x2d]                 ; 22 44 2D
    dec si                                   ; 4E
    db 07Eh, 04Fh                     ; jle 0x3da
    pushaw                                   ; 60
    dec di                                   ; 4F
    daa                                      ; 27
    dec di                                   ; 4F
    pop si                                   ; 5E
    dec di                                   ; 4F
    db 07Eh, 04Fh                     ; jle 0x3e2
    and ch, byte [0x3000]                    ; 22 2E 00 30
    das                                      ; 2F
    push bp                                  ; 55
    pushaw                                   ; 60
    push bp                                  ; 55
    daa                                      ; 27
    push bp                                  ; 55
    pop si                                   ; 5E
    push bp                                  ; 55
    and bl, byte [bx + di + 0x27]            ; 22 59 27
    db 070h, 062h                     ; jo 0x406
    add byte cs:[bx + di + 0x60], ah         ; 2E 00 61 60
    popaw                                    ; 61
    daa                                      ; 27
    popaw                                    ; 61
    pop si                                   ; 5E
    popaw                                    ; 61
    db 07Eh, 061h                     ; jle 0x410
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
    db 07Eh, 06Fh                     ; jle 0x43a
    pushaw                                   ; 60
    db 06Fh                           ; outsw dx, word [si]
    daa                                      ; 27
    db 06Fh                           ; outsw dx, word [si]
    pop si                                   ; 5E
    db 06Fh                           ; outsw dx, word [si]
    db 07Eh, 06Fh                     ; jle 0x442
    and ch, byte [0x6f00]                    ; 22 2E 00 6F
    das                                      ; 2F
    db 075h, 060h                     ; jne 0x43a
    db 075h, 027h                     ; jne 0x403
    db 075h, 05Eh                     ; jne 0x43c
    db 075h, 022h                     ; jne 0x402
    db 079h, 027h                     ; jns 0x409
    db 070h, 062h                     ; jo 0x446
    db 079h, 022h                     ; jns 0x408