; LQ1500/seg3.asm
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
    add byte [bx + si + 2], bl               ; 00 58 02
    db 0C0h, 003h, 001h               ; rol byte [bp + di], 1
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
    cmp al, 0                                ; 3C 00
    xchg byte [bx + si], al                  ; 86 00
    or al, 1                                 ; 0C 01
    inc byte [bx + si]                       ; FE 00
    inc byte [bx + si]                       ; FE 00
    cmp al, 0                                ; 3C 00
    mov bh, bh                               ; 88 FF
    in al, dx                                ; EC
    or sp, bp                                ; 09 EC
    or word [si], di                         ; 09 3C
    add byte [bx + si + 0x64ff], cl          ; 00 88 FF 64
    db 000h, 064h, 000h               ; add byte [si], ah
    cmp al, 0                                ; 3C 00
    mov bh, bh                               ; 88 FF
    db 0E8h, 003h, 0E8h               ; call 0xffffe85e
    add di, word [si]                        ; 03 3C
    add byte [bx + si - 0x5f01], cl          ; 00 88 FF A0
    add ax, 0x5a0                            ; 05 A0 05
    cmp al, 0                                ; 3C 00
    mov bh, bh                               ; 88 FF
    cmp al, 0                                ; 3C 00
    db 078h, 000h                     ; js 0x6c
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
    add bx, word [bx + si + 2]               ; 03 58 02
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    adc word [bx + si], ax                   ; 11 00
    or byte [bx + si], al                    ; 08 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add al, byte [bx + si]                   ; 02 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    or byte [bx + si], al                    ; 08 00
    add byte [bx + si], ah                   ; 00 20
    add byte [bx + si], al                   ; 00 00
    add ax, word [bx + si]                   ; 03 00
    cmp al, 0                                ; 3C 00
    db 078h, 000h                     ; js 0xa4
    xchg byte [bx + si], al                  ; 86 00
    or al, 1                                 ; 0C 01
    inc byte [bx + si]                       ; FE 00
    inc byte [bx + si]                       ; FE 00
    db 078h, 000h                     ; js 0xae
    db 0C4h                           ; C4
    db 0FFh                           ; FF
    in al, dx                                ; EC
    or sp, bp                                ; 09 EC
    db 009h, 078h, 000h               ; or word [bx + si], di
    db 0C4h                           ; C4
    db 0FFh, 064h, 000h               ; jmp word [si]
    db 064h, 000h, 078h, 000h         ; add byte fs:[bx + si], bh
    db 0C4h                           ; C4
    db 0FFh                           ; FF
    db 0E8h, 003h, 0E8h               ; call 0xffffe8c6
    db 003h, 078h, 000h               ; add di, word [bx + si]
    db 0C4h                           ; C4
    jmp word [bx + si - 0x5ffb]              ; FF A0 05 A0
    db 005h, 078h, 000h               ; add ax, 0x78
    db 0C4h                           ; C4
    db 0FFh                           ; FF
    db 078h, 000h                     ; js 0xd2
    cmp al, 0                                ; 3C 00
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    sbb ax, word [bx + si + 0x1b]            ; 1B 40 1B
    db 078h, 001h                     ; js 0xe6
    add byte [si], cl                        ; 00 0C
    add byte [bp + di], bl                   ; 00 1B
    inc ax                                   ; 40
    sbb di, word [bx + si + 1]               ; 1B 78 01
    add byte [bx + si], al                   ; 00 00
    imul sp, word [bp + di + 0x6f], 0x6e75   ; 69 63 6F 75 6E
    db 074h, 072h                     ; je 0x168
    db 079h, 000h                     ; jns 0xf8
    db 069h, 06Eh, 074h, 06Ch, 000h   ; imul bp, word [bp + 0x74], 0x6c
    add byte [bp + di], bl                   ; 00 1B
    sub ah, byte [bx + di]                   ; 2A 21
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    or ax, 0xd00                             ; 0D 00 0D
    add byte [bx + si], ah                   ; 00 20
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 064h, 074h, 04Dh               ; je 0x160
    dec di                                   ; 4F
    inc sp                                   ; 44
    inc bp                                   ; 45
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    or al, 0x86                              ; 0C 86
    cmp al, 0x78                             ; 3C 78
    push ax                                  ; 50
    imul sp, word [bp + di + 0x61], 0x4320   ; 69 63 61 20 43
    db 06Fh                           ; outsw dx, word [si]
    db 06Dh                           ; insw word es:[di], dx
    db 070h, 072h                     ; jo 0x19a
    db 065h, 073h, 073h               ; jae 0x19e
    db 065h, 064h, 000h, 050h, 069h   ; add byte fs:[bx + si + 0x69], dl
    db 063h, 061h, 000h               ; arpl word [bx + di], sp
    push ax                                  ; 50
    imul sp, word [bp + di + 0x61], 0x4520   ; 69 63 61 20 45
    db 078h, 070h                     ; js 0x1ab
    popaw                                    ; 61
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 065h, 064h, 020h, 043h, 06Fh ; and byte fs:[bp + di + 0x6f], al
    db 06Dh                           ; insw word es:[di], dx
    db 070h, 072h                     ; jo 0x1b8
    db 065h, 073h, 073h               ; jae 0x1bc
    db 065h, 064h, 000h, 050h, 069h   ; add byte fs:[bx + si + 0x69], dl
    arpl word [bx + di + 0x20], sp           ; 63 61 20
    inc bp                                   ; 45
    db 078h, 070h                     ; js 0x1c4
    popaw                                    ; 61
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 065h, 064h, 000h, 045h, 06Ch ; add byte fs:[di + 0x6c], al
    imul si, word [si + 0x65], 0x4500        ; 69 74 65 00 45
    db 06Ch                           ; insb byte es:[di], dx
    imul si, word [si + 0x65], 0x4520        ; 69 74 65 20 45
    db 078h, 070h                     ; js 0x1d9
    popaw                                    ; 61
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 065h, 064h, 000h, 050h, 072h ; add byte fs:[bx + si + 0x72], dl
    db 06Fh                           ; outsw dx, word [si]
    db 070h, 06Fh                     ; jo 0x1e3
    db 072h, 074h                     ; jb 0x1ea
    imul bp, word [bx + 0x6e], 0x6c61        ; 69 6F 6E 61 6C
    add byte [bx + si + 0x72], dl            ; 00 50 72
    db 06Fh                           ; outsw dx, word [si]
    db 070h, 06Fh                     ; jo 0x1f0
    db 072h, 074h                     ; jb 0x1f7
    imul bp, word [bx + 0x6e], 0x6c61        ; 69 6F 6E 61 6C
    and byte [di + 0x78], al                 ; 20 45 78
    db 070h, 061h                     ; jo 0x1ee
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
    add byte [bx + si], al                   ; 00 00
    add al, 3                                ; 04 03
    or word [bp + si], cx                    ; 09 0A
    add byte [si], al                        ; 00 04
    add byte [bx + si], al                   ; 00 00
    add ax, 0x903                            ; 05 03 09
    adc al, 0                                ; 14 00
    add al, 0                                ; 04 00
    add word [0x902], ax                     ; 01 06 02 09
    or al, byte [bx + si]                    ; 0A 00
    add al, 0                                ; 04 00
    add word [bx], ax                        ; 01 07
    add cl, byte [bx + di]                   ; 02 09
    adc al, 0                                ; 14 00
    add al, 0                                ; 04 00
    add word [0x902], ax                     ; 01 06 02 09
    or al, 1                                 ; 0C 01
    add al, 0                                ; 04 00
    add word [bx], ax                        ; 01 07
    add cl, byte [bx + di]                   ; 02 09
    sbb byte [bx + di], al                   ; 18 01
    add al, 0x1e                             ; 04 1E
    add word [0x3301], bp                    ; 01 2E 01 33
    add word [si + 1], cx                    ; 01 4C 01
    pop dx                                   ; 5A
    add word [bx + si + 1], sp               ; 01 60 01
    db 06Fh                           ; outsw dx, word [si]
    add word [si + 1], di                    ; 01 7C 01
    db 06Ch                           ; insb byte es:[di], dx
    db 071h, 031h                     ; jno 0x226
    xor ax, 0x3030                           ; 35 30 30
    add byte [bx + si], al                   ; 00 00
    and al, 2                                ; 24 02
    or byte [bx + si], al                    ; 08 00
    and byte [bx + si], al                   ; 20 00
    add byte [bx + si], al                   ; 00 00
    sbb si, word [si]                        ; 1B 34
    add byte [bp + di], bl                   ; 00 1B
    xor ax, 0x1b00                           ; 35 00 1B
    inc di                                   ; 47
    add byte [bp + di], bl                   ; 00 1B
    dec ax                                   ; 48
    add byte [bp + di], bl                   ; 00 1B
    db 02Dh, 001h, 000h               ; sub ax, 1
    sbb bp, word [di]                        ; 1B 2D
    add byte [bx + si], al                   ; 00 00
    or ax, 0x1b00                            ; 0D 00 1B
    push ax                                  ; 50
    lldt word [bp + si]                      ; 0F 00 12
    db 01Bh, 050h, 000h               ; sbb dx, word [bx + si]
    adc bl, byte [bp + di]                   ; 12 1B
    dec bp                                   ; 4D
    add byte [bp + di], bl                   ; 00 1B
    db 078h, 030h                     ; js 0x257
    movlps xmm3, qword [bp + di]             ; 0F 12 1B
    db 078h, 031h                     ; js 0x25d
    sbb di, word [bx + si + 0x30]            ; 1B 78 30
    femms                                    ; 0F 0E
    adc al, 0x12                             ; 14 12
    sbb di, word [bx + si + 0x31]            ; 1B 78 31
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
    db 070h, 030h                     ; jo 0x2aa
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
    adc al, 0                                ; 14 00
    cld                                      ; FC
    add dx, word [si + 0x1e02]               ; 03 94 02 1E
    add byte [0x9400], bl                    ; 00 1E 00 94
    add dl, byte [di]                        ; 02 15
    add byte [di], dl                        ; 00 15
    add al, ah                               ; 00 E0
    add di, word [si + 0xf02]                ; 03 BC 02 0F
    add byte [bp + si], dh                   ; 00 32
    add byte [si + 0x2902], bh               ; 00 BC 02 29
    add byte [0xde00], dl                    ; 00 16 00 DE
    db 003h, 0D0h                     ; add dx, ax
    add cl, byte [bx]                        ; 02 0F
    add byte [si], bh                        ; 00 3C
    add al, dl                               ; 00 D0
    add dh, byte [bp + di]                   ; 02 33
    add byte [si], dl                        ; 00 14
    add byte [si - 0x3fe], dl                ; 00 94 02 FC
    add bx, word [0x1e00]                    ; 03 1E 00 1E
    add byte [si + 0x1502], dl               ; 00 94 02 15
    add byte [di], dl                        ; 00 15
    add byte [si - 0x1ffe], bh               ; 00 BC 02 E0
    add si, word [bp + si]                   ; 03 32
    add byte [bx], cl                        ; 00 0F
    add byte [si + 0x2902], bh               ; 00 BC 02 29
    add byte [0xd000], dl                    ; 00 16 00 D0
    db 002h, 0DEh                     ; add bl, dh
    add di, word [si]                        ; 03 3C
    add byte [bx], cl                        ; 00 0F
    add al, dl                               ; 00 D0
    add dh, byte [bp + di]                   ; 02 33
    add byte [bp + di], bl                   ; 00 1B
    dec sp                                   ; 4C
    add byte [bx + si], al                   ; 00 00
    db 01Bh, 04Ah, 000h               ; sbb cx, word [bp + si]
    or al, byte [bp + di]                    ; 0A 03
    add ax, word [bp + si]                   ; 03 02
    add al, byte [bp + si]                   ; 02 02
    add ax, 0x202                            ; 05 02 02
    or byte [bp + si], al                    ; 08 02
    add cl, byte [bp + di]                   ; 02 0B
    add al, byte [bp + si]                   ; 02 02
    push cs                                  ; 0E
    add al, byte [bp + di]                   ; 02 03
    adc al, byte [bp + si]                   ; 12 02
    add dx, word [0x102]                     ; 03 16 02 01
    sbb byte [bp + si], al                   ; 18 02
    add bx, word [si]                        ; 03 1C
    add al, byte [bp + di]                   ; 02 03
    and byte [bp + si], al                   ; 20 02
    add cx, word [bx + di + 0x88]            ; 03 89 88 00
    add byte [bx + si], ch                   ; 00 28
    add al, al                               ; 00 C0
    add ax, word [di]                        ; 03 05
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
    add dh, dl                               ; 00 D6
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
    db 000h, 0ACh, 002h, 000h         ; add byte [si + 2], ch
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
    add byte [bp + di], bl                   ; 00 1B
    push dx                                  ; 52
    db 06Eh                           ; outsb dx, byte [si]
    arpl word [bp + di], bx                  ; 63 1B
    push dx                                  ; 52
    add byte [bx + si], al                   ; 00 00
    and byte [bx + si], al                   ; 20 00
    pop bx                                   ; 5B
    pop es                                   ; 07
    arpl word [bx], bp                       ; 63 2F
    and ax, word [bp + di]                   ; 23 03
    and al, 5                                ; 24 05
    pop sp                                   ; 5C
    db 008h, 07Ch, 000h               ; or byte [si], bh
    pop bp                                   ; 5D
    add word [bp + di + 7], di               ; 01 7B 07
    add byte cs:[bx + di + 0x5f], ah         ; 2E 00 61 5F
    cmp al, 0x3d                             ; 3C 3D
    add byte cs:[0x2e00], ch                 ; 2E 00 2E 00 2E
    add byte [di], ch                        ; 00 2D
    add byte [bp + di + 1], bl               ; 00 5B 01
    sub bx, word [bx + 0x2e]                 ; 2B 5F 2E
    add byte [0x2700], ch                    ; 00 2E 00 27
    add byte [0x2e00], ch                    ; 00 2E 00 2E
    add byte [0x2c00], ch                    ; 00 2E 00 2C
    add byte [0x6f00], ch                    ; 00 2E 00 6F
    pop di                                   ; 5F
    db 03Eh, 03Dh, 02Eh, 000h         ; cmp ax, 0x2e
    add byte cs:[0x5d00], ch                 ; 2E 00 2E 00 5D
    pop es                                   ; 07
    inc cx                                   ; 41
    pushaw                                   ; 60
    inc cx                                   ; 41
    daa                                      ; 27
    inc cx                                   ; 41
    pop si                                   ; 5E
    inc cx                                   ; 41
    db 07Eh, 05Bh                     ; jle 0x464
    add bl, byte [di + 4]                    ; 02 5D 04
    pop bx                                   ; 5B
    add al, 0x43                             ; 04 43
    sub al, 0x45                             ; 2C 45
    pushaw                                   ; 60
    inc ax                                   ; 40
    add ax, 0x5e45                           ; 05 45 5E
    inc bp                                   ; 45
    test al, 0x49                            ; A8 49
    pushaw                                   ; 60
    dec cx                                   ; 49
    daa                                      ; 27
    dec cx                                   ; 49
    pop si                                   ; 5E
    dec cx                                   ; 49
    test al, 0x44                            ; A8 44
    sub ax, 0x75c                            ; 2D 5C 07
    dec di                                   ; 4F
    pushaw                                   ; 60
    dec di                                   ; 4F
    daa                                      ; 27
    dec di                                   ; 4F
    pop si                                   ; 5E
    dec di                                   ; 4F
    db 07Eh, 05Ch                     ; jle 0x489
    add ch, byte [0x5c00]                    ; 02 2E 00 5C
    add al, 0x55                             ; 04 55
    pushaw                                   ; 60
    push bp                                  ; 55
    daa                                      ; 27
    push bp                                  ; 55
    pop si                                   ; 5E
    pop bp                                   ; 5D
    add bl, byte [bx + di + 0x27]            ; 02 59 27
    db 070h, 062h                     ; jo 0x4a0
    db 07Eh, 002h                     ; jle 0x442
    inc ax                                   ; 40
    add word [bx + di + 0x27], sp            ; 01 61 27
    popaw                                    ; 61
    pop si                                   ; 5E
    popaw                                    ; 61
    db 07Eh, 07Bh                     ; jle 0x4c4
    add ah, byte [bx + di - 0x50]            ; 02 61 B0
    db 07Bh, 004h                     ; jnp 0x452
    pop sp                                   ; 5C
    add word [di + 1], di                    ; 01 7D 01
    db 07Bh, 001h                     ; jnp 0x455
    db 065h, 05Eh                     ; pop si
    db 065h, 0A8h, 07Eh               ; test al, 0x7e
    push es                                  ; 06
    imul sp, word [bx], 0x5e69               ; 69 27 69 5E
    db 069h, 0A8h, 02Eh, 000h, 07Ch, 007h ; imul bp, word [bx + si + 0x2e], 0x77c
    db 07Ch, 006h                     ; jl 0x46c
    db 06Fh                           ; outsw dx, word [si]
    daa                                      ; 27
    db 06Fh                           ; outsw dx, word [si]
    pop si                                   ; 5E
    db 06Fh                           ; outsw dx, word [si]
    db 07Eh, 07Ch                     ; jle 0x4e9
    add ch, byte [0x7c00]                    ; 02 2E 00 7C
    add al, 0x7c                             ; 04 7C
    add word [di + 0x27], si                 ; 01 75 27
    db 075h, 05Eh                     ; jne 0x4d6
    db 07Dh, 002h                     ; jge 0x47c
    db 079h, 027h                     ; jns 0x4a3
    db 070h, 062h                     ; jo 0x4e0
    db 079h, 0A8h                     ; jns 0x428
    mov ax, word [0xa0a]                     ; A1 0A 0A
    mov word [0xa0a], ax                     ; A3 0A 0A
    db 0A4h                           ; movsb byte es:[di], byte [si]
    or al, 0xc                               ; 0C 0C
    db 0A5h                           ; movsw word es:[di], word [si]
    or al, 0xc                               ; 0C 0C
    db 0A7h                           ; cmpsw word [si], word es:[di]
    or cl, byte [bp + si]                    ; 0A 0A
    test al, 0xa                             ; A8 0A
    or dh, byte [bx + si + 0x808]            ; 0A B0 08 08
    mov di, 0xa0a                            ; BF 0A 0A
    les cx, [si]                             ; C4 0C
    or al, 0xc5                              ; 0C C5
    or al, 0xc                               ; 0C 0C
    db 0C6h                           ; C6
    push cs                                  ; 0E
    push cs                                  ; 0E
    leave                                    ; C9
    or al, 0xc                               ; 0C 0C
    ror word [si], 1                         ; D1 0C
    or al, 0xd6                              ; 0C D6
    or al, 0xc                               ; 0C 0C
    fmul dword [si]                          ; D8 0C
    or al, 0xdc                              ; 0C DC
    push cs                                  ; 0E
    push cs                                  ; 0E
    fisttp word [si]                         ; DF 0C
    or al, 0xe0                              ; 0C E0
    or cl, byte [bp + si]                    ; 0A 0A
    in al, 0xa                               ; E4 0A
    db 00Ah, 0E6h                     ; or ah, dh
    push cs                                  ; 0E
    push cs                                  ; 0E
    out 0xa, ax                              ; E7 0A
    db 00Ah, 0E8h                     ; or ch, al
    or cl, byte [bp + si]                    ; 0A 0A
    db 0E9h, 00Ah, 00Ah               ; jmp 0xecf
    in al, dx                                ; EC
    push es                                  ; 06
    push es                                  ; 06
    int1                                     ; F1
    or al, 0xc                               ; 0C 0C
    db 0F2h, 00Ah, 00Ah               ; or cl, byte [bp + si]
    db 0F6h, 00Ah, 00Ah               ; test byte [bp + si], 0xa
    clc                                      ; F8
    or cl, byte [bp + si]                    ; 0A 0A
    stc                                      ; F9
    or al, 0xc                               ; 0C 0C
    cld                                      ; FC
    or al, 0xc                               ; 0C 0C