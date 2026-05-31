; NOTEPAD/seg10.asm
; Semantic data - verified byte-exact
BITS 16

    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 005h, 000h, 000h               ; add ax, 0
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [si + 0x2a], bl                 ; 00 5C 2A
    db 02Eh, 054h                     ; push sp
    pop ax                                   ; 58
    push sp                                  ; 54
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add word [bx + si], ax                   ; 01 00
    mov al, byte [0]                         ; A0 00 00
    add byte [bp + 0x6f], cl                 ; 00 4E 6F
    db 074h, 065h                     ; je 0x8b
    db 070h, 061h                     ; jo 0x89
    add byte fs:[bx + di], al                ; 64 00 01
    add byte [bp + di], al                   ; 00 03
    add byte [di], al                        ; 00 05
    add byte [bp + si], cl                   ; 00 0A
    add byte [bp + di], cl                   ; 00 0B
    add byte [bx + si], dl                   ; 00 10
    add byte [bx + di], dl                   ; 00 11
    add byte [si], cl                        ; 00 0C
    add byte [bp + si], dl                   ; 00 12
    add byte [bp + di], dl                   ; 00 13
    add byte [si], dl                        ; 00 14
    add byte [di], dl                        ; 00 15
    add byte [0x1700], dl                    ; 00 16 00 17
    add byte [bx + si], bl                   ; 00 18
    add byte [bx + di], bl                   ; 00 19
    add byte [bp + si], bl                   ; 00 1A
    add byte [bp + di], bl                   ; 00 1B
    add byte [si], bl                        ; 00 1C
    add byte [di], bl                        ; 00 1D
    add byte [0x1f00], bl                    ; 00 1E 00 1F
    add byte [bx + si], ah                   ; 00 20
    add byte [bx + di], ah                   ; 00 21
    add byte [bp + si], ch                   ; 00 2A
    add byte [si], ch                        ; 00 2C
    add byte [0x3000], ch                    ; 00 2E 00 30
    add byte [bp + si], dh                   ; 00 32
    add byte [0x3400], dh                    ; 00 36 00 34
    add byte [bx + si], bh                   ; 00 38
    add byte [bp + si], bh                   ; 00 3A
    add byte [si], bh                        ; 00 3C
    add byte [0x4000], bh                    ; 00 3E 00 40
    db 000h, 042h, 000h               ; add byte [bp + si], al
    inc sp                                   ; 44
    add byte [bp], al                        ; 00 46 00
    dec ax                                   ; 48
    db 000h, 04Ah, 000h               ; add byte [bp + si], cl
    dec sp                                   ; 4C
    add byte [bp], cl                        ; 00 4E 00
    push ax                                  ; 50
    db 000h, 052h, 000h               ; add byte [bp + si], dl
    push sp                                  ; 54
    add byte [bp], dl                        ; 00 56 00
    pop ax                                   ; 58
    add byte [bx + si], dl                   ; 00 10
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add byte [bp + si], ah                   ; 00 22
    pop sp                                   ; 5C
    das                                      ; 2F
    pop bx                                   ; 5B
    pop bp                                   ; 5D
    cmp bh, byte [si + 0x3c]                 ; 3A 7C 3C
    sub di, word ds:[di]                     ; 3E 2B 3D
    cmp bp, word [si]                        ; 3B 2C
    and byte [bx + si], al                   ; 20 00
    add byte [di + 0x61], cl                 ; 00 4D 61
    imul bp, word [bp + 0x41], 0x6363        ; 69 6E 41 63 63
    add byte [bx + si], al                   ; 00 00
    inc bp                                   ; 45
    db 064h, 069h, 074h, 000h, 069h, 06Eh ; imul si, word fs:[si], 0x6e69
    db 074h, 06Ch                     ; je 0x132
    add byte [bx + di + 0x44], ch            ; 00 69 44
    popaw                                    ; 61
    db 074h, 065h                     ; je 0x131
    add byte [bx + di + 0x54], ch            ; 00 69 54
    imul bp, word [di + 0x65], 0x7300        ; 69 6D 65 00 73
    xor word [bx + di], si                   ; 31 31
    db 035h, 039h, 000h               ; xor ax, 0x39
    db 073h, 032h                     ; jae 0x10d
    xor si, word [di]                        ; 33 35
    cmp word [bx + si], ax                   ; 39 00
    das                                      ; 2F
    add byte [bp + di + 0x44], dh            ; 00 73 44
    popaw                                    ; 61
    db 074h, 065h                     ; je 0x14b
    add byte [bp + si], bh                   ; 00 3A
    add byte [bp + di + 0x54], dh            ; 00 73 54
    imul bp, word [di + 0x65], 0x6900        ; 69 6D 65 00 69
    dec sp                                   ; 4C
    db 07Ah, 065h                     ; jp 0x158
    db 072h, 06Fh                     ; jb 0x164
    add byte [bx + si], ah                   ; 00 20
    and byte [bx + si], ah                   ; 20 20
    and byte [bx + si], ah                   ; 20 20
    and byte [bx + si], ah                   ; 20 20
    and byte [bx + si], ah                   ; 20 20
    and byte [bx + si], ah                   ; 20 20
    and byte [bx + si], ah                   ; 20 20
    and byte [bx + si], ah                   ; 20 20
    and byte [bx + si], al                   ; 20 00
    add dh, dh                               ; 00 F6
    add byte [bx], ch                        ; 00 2F
    add byte [bp + si], bh                   ; 00 3A
    add byte [bx + di + 0x4d], al            ; 00 41 4D
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    push ax                                  ; 50
    dec bp                                   ; 4D
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add ax, word [bx + si]                   ; 03 00
    push es                                  ; 06
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], al                   ; 00 03
    add byte [0], al                         ; 00 06 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], ah                   ; 00 20
    and byte [bx + si], al                   ; 20 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    inc bp                                   ; 45
    db 064h, 069h, 074h, 000h, 000h, 044h ; imul si, word fs:[si], 0x4400
    db 065h, 076h, 069h               ; jbe 0x1a6
    db 063h, 065h, 000h               ; arpl word [di], sp
    db 077h, 069h                     ; ja 0x1ab
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 06Fh                     ; outsw dx, word fs:[si]
    db 077h, 073h                     ; ja 0x1ba
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
    add byte [bx + si - 0x57f4], dl          ; 00 90 0C A8
    or al, 0xb0                              ; 0C B0
    or al, 0xfc                              ; 0C FC
    db 00Ch                           ; 0C