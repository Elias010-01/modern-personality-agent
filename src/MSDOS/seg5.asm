; MSDOS/seg5.asm
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
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], al                   ; 00 01
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [di], al                        ; 00 05
    add byte [0x5c00], bh                    ; 00 3E 00 5C
    add byte [bp + si], ch                   ; 00 2A
    sub al, byte cs:[bx + si]                ; 2E 2A 00
    and al, byte [bx + si]                   ; 22 00
    inc bx                                   ; 43
    dec di                                   ; 4F
    dec bp                                   ; 4D
    and byte [di + 0x58], al                 ; 20 45 58
    inc bp                                   ; 45
    and byte [bp + si + 0x41], al            ; 20 42 41
    push sp                                  ; 54
    add byte [bx + si], ah                   ; 00 20
    and byte [si], bh                        ; 20 3C
    inc sp                                   ; 44
    dec cx                                   ; 49
    push dx                                  ; 52
    add byte ds:[bx + si], al                ; 3E 00 00
    add byte [bx + si], al                   ; 00 00
    and byte [bx + si], al                   ; 20 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx], bh                        ; 00 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    add byte [si + 0x2a], bl                 ; 00 5C 2A
    sub al, byte cs:[bx + si]                ; 2E 2A 00
    cmp al, byte [bx + si]                   ; 3A 00
    pop sp                                   ; 5C
    add byte [bp + si], bh                   ; 00 3A
    pop sp                                   ; 5C
    db 000h, 05Ch, 000h               ; add byte [si], bl
    sub ch, byte [0x2a]                      ; 2A 2E 2A 00
    pop sp                                   ; 5C
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], ah                   ; 00 20
    db 077h, 06Fh                     ; ja 0xdc
    db 072h, 06Bh                     ; jb 0xda
    db 065h, 064h, 020h, 06Fh, 06Eh   ; and byte fs:[bx + 0x6e], ch
    and byte [bx + si], al                   ; 20 00
    add byte [bx + si], al                   ; 00 00
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], ah                   ; 00 20
    and byte [si], bh                        ; 20 3C
    inc sp                                   ; 44
    dec cx                                   ; 49
    push dx                                  ; 52
    add byte ds:[bx + si], al                ; 3E 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [di + 0x58], al                 ; 00 45 58
    inc bp                                   ; 45
    add byte [bp + di + 0x4f], al            ; 00 43 4F
    dec bp                                   ; 4D
    add byte [bx + si + 0x49], dl            ; 00 50 49
    inc si                                   ; 46
    add byte [bp + si + 0x41], al            ; 00 42 41
    push sp                                  ; 54
    add byte [bx + si], ah                   ; 00 20
    and byte [bx + si], ah                   ; 20 20
    and byte [bx + si], ah                   ; 20 20
    and byte [bx + si], ah                   ; 20 20
    and byte [bx + si], ah                   ; 20 20
    and byte [bx + si], ah                   ; 20 20
    and byte [bx + si], ah                   ; 20 20
    and byte [bx + si], ah                   ; 20 20
    and byte [bx + si], al                   ; 20 00
    add byte [bx + si], ah                   ; 00 20
    db 02Dh, 020h, 000h               ; sub ax, 0x20
    db 09Ah, 000h, 000h, 000h, 03Ch   ; lcall 0x3c00, 0
    inc sp                                   ; 44
    dec cx                                   ; 49
    push dx                                  ; 52
    add byte ds:[bx + si], al                ; 3E 00 00
    add byte [bx + di], al                   ; 00 01
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [si], dl                        ; 00 14
    add byte [bx + si], al                   ; 00 00
    db 000h, 044h, 000h               ; add byte [si], al
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    push di                                  ; 57
    imul bp, word [bp + 0x64], 0x776f        ; 69 6E 64 6F 77
    db 073h, 000h                     ; jae 0xdc
    push bx                                  ; 53
    db 065h, 073h, 073h               ; jae 0x153
    imul bp, word [bx + 0x6e], 0x4400        ; 69 6F 6E 00 44
    db 069h, 072h, 000h, 050h, 061h   ; imul si, word [bp + si], 0x6150
    db 074h, 068h                     ; je 0x154
    add byte [bx + si], al                   ; 00 00
    inc sp                                   ; 44
    db 069h, 073h, 06Bh, 000h, 000h   ; imul si, word [bp + di + 0x6b], 0
    inc sp                                   ; 44
    db 065h, 076h, 069h               ; jbe 0x161
    db 063h, 065h, 000h               ; arpl word [di], sp
    add byte [bx + 0x65], al                 ; 00 47 65
    db 074h, 049h                     ; je 0x149
    db 06Eh                           ; outsb dx, byte [si]
    db 066h, 06Fh                     ; outsd dx, dword [si]
    add byte [bx + si + 0x72], dl            ; 00 50 72
    db 06Fh                           ; outsw dx, word [si]
    db 067h, 072h, 061h               ; jb 0x16b
    db 06Dh                           ; insw word es:[di], dx
    db 073h, 000h                     ; jae 0x10d
    add byte [bx + di + 0x6e], cl            ; 00 49 6E
    db 074h, 06Ch                     ; je 0x17e
    add byte [bx + si], al                   ; 00 00
    popaw                                    ; 61
    db 06Dh                           ; insw word es:[di], dx
    add byte [bx + si], al                   ; 00 00
    db 070h, 06Dh                     ; jo 0x187
    add byte [bx], ch                        ; 00 2F
    cmp al, byte [bx + si]                   ; 3A 00
    push dx                                  ; 52
    db 075h, 06Eh                     ; jne 0x18f
    add byte [bx + si], al                   ; 00 00
    dec sp                                   ; 4C
    db 06Fh                           ; outsw dx, word [si]
    popaw                                    ; 61
    add byte fs:[bx + si], al                ; 64 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di + 0x44], ch            ; 00 69 44
    popaw                                    ; 61
    db 074h, 065h                     ; je 0x196
    add byte [bx + di + 0x54], ch            ; 00 69 54
    imul bp, word [di + 0x65], 0x7300        ; 69 6D 65 00 73
    xor word [bx + di], si                   ; 31 31
    db 035h, 039h, 000h               ; xor ax, 0x39
    db 073h, 032h                     ; jae 0x172
    xor si, word [di]                        ; 33 35
    cmp word [bx + si], ax                   ; 39 00
    das                                      ; 2F
    add byte [bp + di + 0x44], dh            ; 00 73 44
    popaw                                    ; 61
    db 074h, 065h                     ; je 0x1b0
    add byte [bp + si], bh                   ; 00 3A
    add byte [bp + di + 0x54], dh            ; 00 73 54
    db 069h, 06Dh, 065h, 000h, 000h   ; imul bp, word [di + 0x65], 0
    db 065h, 078h, 074h               ; js 0x1cc
    db 065h, 06Eh                     ; outsb dx, byte gs:[si]
    db 073h, 069h                     ; jae 0x1c5
    db 06Fh                           ; outsw dx, word [si]
    db 06Eh                           ; outsb dx, byte [si]
    db 073h, 000h                     ; jae 0x160
    push di                                  ; 57
    dec cx                                   ; 49
    dec si                                   ; 4E
    db 02Eh, 043h                     ; inc bx
    dec di                                   ; 4F
    dec bp                                   ; 4D
    add byte [bp + di + 0x68], dh            ; 00 73 68
    db 065h, 06Ch                     ; insb byte es:[di], dx
    db 06Ch                           ; insb byte es:[di], dx
    add byte [bx + si], al                   ; 00 00
    db 000h                           ; 00