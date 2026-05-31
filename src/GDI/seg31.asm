; GDI/seg31.asm
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
    add byte [bp + si + 0x3c00], cl          ; 00 8A 00 3C
    db 000h, 044h, 000h               ; add byte [si], al
    dec sp                                   ; 4C
    db 000h, 054h, 000h               ; add byte [si], dl
    pop sp                                   ; 5C
    db 000h, 064h, 000h               ; add byte [si], ah
    db 06Ch                           ; insb byte es:[di], dx
    add byte [bp], dh                        ; 00 76 00
    add byte [bx + si], 0x80                 ; 80 00 80
    db 000h, 0ABh, 000h, 000h         ; add byte [bp + di], ch
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add bh, bh                               ; 00 FF
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    rol al, 0xc0                             ; C0 C0 C0
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si - 0x7f80], al          ; 00 80 80 80
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si + 0x40], al            ; 00 40 40
    inc ax                                   ; 40
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], al                   ; 00 01
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add bh, bh                               ; 00 FF
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 005h, 000h, 000h               ; add ax, 0
    add byte [bx + si], al                   ; 00 00
    add bh, bh                               ; 00 FF
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    add al, byte [bx + si]                   ; 02 00
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
    add byte [bx + di], al                   ; 00 01
    add byte [si + 0x49], al                 ; 00 44 49
    push bx                                  ; 53
    push ax                                  ; 50
    dec sp                                   ; 4C
    inc cx                                   ; 41
    pop cx                                   ; 59
    add byte [bp + 0x6f], ah                 ; 00 66 6F
    db 06Eh                           ; outsb dx, byte [si]
    db 074h, 073h                     ; je 0x12b
    add byte [bx + 0x65], ch                 ; 00 6F 65
    db 06Dh                           ; insw word es:[di], dx
    db 062h, 069h, 06Eh               ; bound bp, dword [bx + di + 0x6e]
    add byte [bx + 0x69], dh                 ; 00 77 69
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 06Fh                     ; outsw dx, word fs:[si]
    db 077h, 073h                     ; ja 0x13a
    add byte [bp + 0x75], ch                 ; 00 6E 75
    db 06Ch                           ; insb byte es:[di], dx
    db 06Ch                           ; insb byte es:[di], dx
    db 070h, 06Fh                     ; jo 0x13d
    db 072h, 074h                     ; jb 0x144
    add byte [bp + 0x6f], ch                 ; 00 6E 6F
    db 06Eh                           ; outsb dx, byte [si]
    add byte gs:[bx + si], al                ; 65 00 00
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
    add byte [0x7264], ch                    ; 00 2E 64 72
    db 076h, 000h                     ; jbe 0x111
    dec bp                                   ; 4D
    inc si                                   ; 46
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add byte [bp + si], dl                   ; 00 12
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], al                   ; 00 01
    add bh, bh                               ; 00 FF
    inc word [bp + di]                       ; FF 03
    add byte [bp + 0x4f], al                 ; 00 46 4F
    dec si                                   ; 4E
    push sp                                  ; 54
    push bx                                  ; 53
    db 02Eh, 046h                     ; inc si
    dec di                                   ; 4F
    dec si                                   ; 4E
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [di], al                        ; 00 05
    add byte [bp + si], al                   ; 00 02
    add byte [bx + di], al                   ; 00 01
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], al                   ; 00 01
    add al, dh                               ; 00 F0
    db 0D8h, 0C8h                     ; fmul st(0)
    mul dh                                   ; F6 E6
    db 0DFh                           ; DF
    db 0DCh, 0E8h                     ; fsub st(0), st(0)
    db 0DCh, 0E8h                     ; fsub st(0), st(0)
    out 0xdf, al                             ; E6 DF
    enter -0xf0a, -0x28                      ; C8 F6 F0 D8
    cmp byte [bx + di], cl                   ; 38 09
    db 0F0h                           ; F0
    fsub dword [si]                          ; D8 24
    pop ss                                   ; 17
    out 0xdf, al                             ; E6 DF
    sbb ah, byte [bx + si]                   ; 1A 20
    db 0DCh, 0E8h                     ; fsub st(0), st(0)
    adc byte [bx], ah                        ; 10 27
    enter 0x10f6, 0x27                       ; C8 F6 10 27
    cmp byte [bx + di], cl                   ; 38 09
    sbb ah, byte [bx + si]                   ; 1A 20
    and al, 0x17                             ; 24 17
    and al, 0x17                             ; 24 17
    sbb ah, byte [bx + si]                   ; 1A 20
    cmp byte [bx + di], cl                   ; 38 09
    adc byte [bx], ah                        ; 10 27
    enter 0x10f6, 0x27                       ; C8 F6 10 27
    db 0DCh, 0E8h                     ; fsub st(0), st(0)
    sbb ah, byte [bx + si]                   ; 1A 20
    out 0xdf, al                             ; E6 DF
    and al, 0x17                             ; 24 17
    db 0F0h                           ; F0
    fdivr dword [bx + si]                    ; D8 38
    or ax, si                                ; 09 F0
    db 0D8h, 0F0h                     ; fdiv st(0)
    db 0D8h, 0F0h                     ; fdiv st(0)
    db 0D8h, 0F0h                     ; fdiv st(0)
    db 0D8h, 0F0h                     ; fdiv st(0)
    db 0D8h, 0F0h                     ; fdiv st(0)
    db 0D8h, 0F0h                     ; fdiv st(0)
    db 0D8h, 0F0h                     ; fdiv st(0)
    fcom dword [bx + si]                     ; D8 10
    daa                                      ; 27
    db 0F0h                           ; F0
    fcom dword [bx + si]                     ; D8 10
    daa                                      ; 27
    db 0F0h                           ; F0
    fcom dword [bx + si]                     ; D8 10
    daa                                      ; 27
    db 0F0h                           ; F0
    fcom dword [bx + si]                     ; D8 10
    daa                                      ; 27
    db 0F0h                           ; F0
    fcom dword [bx + si]                     ; D8 10
    daa                                      ; 27
    adc byte [bx], ah                        ; 10 27
    adc byte [bx], ah                        ; 10 27
    adc byte [bx], ah                        ; 10 27
    adc byte [bx], ah                        ; 10 27
    adc byte [bx], ah                        ; 10 27
    adc byte [bx], ah                        ; 10 27
    adc byte [bx], ah                        ; 10 27
    db 0F0h                           ; F0
    fcom dword [bx + si]                     ; D8 10
    daa                                      ; 27
    db 0F0h                           ; F0
    fcom dword [bx + si]                     ; D8 10
    daa                                      ; 27
    db 0F0h                           ; F0
    fcom dword [bx + si]                     ; D8 10
    daa                                      ; 27
    db 0F0h                           ; F0
    fcom dword [bx + si]                     ; D8 10
    daa                                      ; 27
    db 066h, 06Fh                     ; outsd dx, dword [si]
    db 06Eh                           ; outsb dx, byte [si]
    db 074h, 064h                     ; je 0x22f
    db 069h, 072h, 000h, 000h, 000h   ; imul si, word [bp + si], 0
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
    add ah, byte [bx + si]                   ; 02 20
    add al, byte [bx + si]                   ; 02 00
    add byte [bx + si], ah                   ; 00 20
    add al, byte [bx + si]                   ; 02 00
    inc ax                                   ; 40
    db 000h, 042h, 000h               ; add byte [bp + si], al
    or byte [bx], 1                          ; 80 0F 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], al                   ; 00 01
    add byte [bp + si], ah                   ; 00 22
    or word [bp + di], sp                    ; 09 23
    or sp, word [di]                         ; 0B 25
    add sp, word [si]                        ; 03 24
    add sp, word [bx + di]                   ; 03 21
    add ax, 0x12d                            ; 05 2D 01
    sub ax, word [bx + di]                   ; 2B 01
    sub byte [bp + si], al                   ; 28 02
    sub al, byte [bx + di]                   ; 2A 01
    sub word [si], ax                        ; 29 04
    db 026h, 006h                     ; push es
    adc ax, word [bp + si]                   ; 13 02
    add byte [bx + si], al                   ; 00 00
    inc dx                                   ; 42
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di + 0x500], ch           ; 00 A9 00 05
    add byte [bx + di], ch                   ; 00 29
    add cx, word [bp + si]                   ; 03 0A
    add byte [bx + di], al                   ; 00 01
    add byte [bx], cl                        ; 00 0F
    add byte [di], ah                        ; 00 25
    db 003h, 050h, 000h               ; add dx, word [bx + si]
    or word [bx + si], ax                    ; 09 00
    push bp                                  ; 55
    db 000h, 049h, 000h               ; add byte [bx + di], cl
    pop dx                                   ; 5A
    add cl, ch                               ; 00 E9
    db 000h, 05Fh, 000h               ; add byte [bx], bl
    leave                                    ; C9
    add byte [bx + si + 0x6500], ah          ; 00 A0 00 65
    add byte [di + 0x2900], ah               ; 00 A5 00 29
    add byte [bp + si + 0x2900], ch          ; 00 AA 00 29
    add ch, byte [bx + 0x2100]               ; 02 AF 00 21
    add al, dh                               ; 00 F0
    add byte [di], ah                        ; 00 25
    db 002h, 0F5h                     ; add dh, ch
    add byte [bx + di - 0x600], cl           ; 00 89 00 FA
    db 000h, 062h, 000h               ; add byte [bp + si], ah
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], al                   ; 00 01
    add byte [bx + si], al                   ; 00 00
    add word [bx + si], ax                   ; 01 00
    add byte [bx + di], al                   ; 00 01
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], al                   ; 00 01
    add word [bx + di], ax                   ; 01 01
    add byte [bx + di], al                   ; 00 01
    add word [bx + di], ax                   ; 01 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], al                   ; 00 01
    add word [bx + si], ax                   ; 01 00
    add byte [bx + di], al                   ; 00 01
    add word [bx + si], ax                   ; 01 00
    add byte [bx + di], al                   ; 00 01
    add word [bx + si], ax                   ; 01 00
    add byte [bx + di], al                   ; 00 01
    add word [bx + si], ax                   ; 01 00
    add byte [bx + di], al                   ; 00 01
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], al                   ; 00 01
    add word [bx + di], ax                   ; 01 01
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], al                   ; 00 01
    add byte [bx + si], al                   ; 00 00
    add word [bx + si], ax                   ; 01 00
    mov bh, 0x39                             ; B7 39
    cmp word [bp + si], -0x7d                ; 83 3A 83
    cmp al, byte [bp + di - 0x48c6]          ; 3A 83 3A B7
    cmp word [bp + si - 0x70c7], cx          ; 39 8A 39 8F
    cmp word [bp + di - 0x48c6], ax          ; 39 83 3A B7
    cmp word [bp + si - 0x70c7], cx          ; 39 8A 39 8F
    cmp word [bp + di - 0x48c6], ax          ; 39 83 3A B7
    cmp word [bp + si - 0x7cc7], cx          ; 39 8A 39 83
    db 03Ah, 083h, 03Ah, 000h         ; cmp al, byte [bp + di + 0x3a]
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [0x5500], bl                    ; 00 1E 00 55
    db 06Eh                           ; outsb dx, byte [si]
    db 074h, 069h                     ; je 0x365
    db 074h, 06Ch                     ; je 0x36a
    db 065h, 064h, 000h, 000h         ; add byte fs:[bx + si], al
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 073h, 070h                     ; jae 0x382
    db 06Ch                           ; insb byte es:[di], dx
    add byte [bx + si], al                   ; 00 00
    add byte [si + 0x65], dh                 ; 00 74 65
    db 06Dh                           ; insw word es:[di], dx
    db 070h, 000h                     ; jo 0x31b
    db 064h, 065h, 076h, 069h         ; jbe 0x388
    arpl word [di + 0x73], sp                ; 63 65 73
    add byte [bp + di + 0x70], dh            ; 00 73 70
    db 06Fh                           ; outsw dx, word [si]
    db 06Fh                           ; outsw dx, word [si]
    db 06Ch                           ; insb byte es:[di], dx
    db 065h, 072h, 000h               ; jb 0x32b
    push bx                                  ; 53
    db 070h, 06Fh                     ; jo 0x39d
    db 06Fh                           ; outsw dx, word [si]
    db 06Ch                           ; insb byte es:[di], dx
    db 065h, 072h, 02Eh               ; jb 0x361
    db 065h, 078h, 065h               ; js 0x39b
    add byte [bx + si], al                   ; 00 00
    db 075h, 073h                     ; jne 0x3ad
    db 065h, 072h, 000h               ; jb 0x33d
    add byte [bp + di + 0x70], dh            ; 00 73 70
    db 06Fh                           ; outsw dx, word [si]
    db 06Fh                           ; outsw dx, word [si]
    db 06Ch                           ; insb byte es:[di], dx
    db 065h, 072h, 000h               ; jb 0x346
    db 077h, 069h                     ; ja 0x3b1
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 06Fh                     ; outsw dx, word fs:[si]
    db 077h, 073h                     ; ja 0x3c0
    add byte [bp + 0x6f], ch                 ; 00 6E 6F
    add byte [bx + si], al                   ; 00 00
    db 064h, 065h, 076h, 069h         ; jbe 0x3bf
    arpl word [di + 0x73], sp                ; 63 65 73
    add byte [bx + si], al                   ; 00 00
    db 064h, 065h, 076h, 069h         ; jbe 0x3c8
    arpl word [di + 0x73], sp                ; 63 65 73
    add byte [bx + si], al                   ; 00 00
    db 070h, 06Fh                     ; jo 0x3d5
    db 072h, 074h                     ; jb 0x3dc
    db 073h, 000h                     ; jae 0x36a
    add byte [bx + si + 0x6f], dh            ; 00 70 6F
    db 072h, 074h                     ; jb 0x3e3
    db 073h, 000h                     ; jae 0x371
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add bh, bh                               ; 00 FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF