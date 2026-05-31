; WRITE/seg79.asm
; Semantic data - verified byte-exact
BITS 16

    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 005h, 000h, 000h               ; add ax, 0
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 022h                     ; add byte [bp + si], ah
    db 000h, 020h                     ; add byte [bx + si], ah
    db 063h, 06Dh, 000h               ; arpl word [di], bp
    db 020h, 070h, 031h               ; and byte [bx + si + 0x31], dh
    db 030h, 000h                     ; xor byte [bx + si], al
    db 020h, 070h, 031h               ; and byte [bx + si + 0x31], dh
    db 032h, 000h                     ; xor al, byte [bx + si]
    db 020h, 070h, 074h               ; and byte [bx + si + 0x74], dh
    db 000h, 020h                     ; add byte [bx + si], ah
    db 06Ch                           ; insb byte es:[di], dx
    db 069h, 000h, 03Fh, 000h         ; imul ax, word [bx + si], 0x3f
    db 0D0h, 002h                     ; rol byte [bp + si], 1
    db 080h, 000h, 000h               ; add byte [bx + si], 0
    db 000h, 0FFh                     ; add bh, bh
    db 0FFh, 000h                     ; inc word [bx + si]
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 001h                     ; add byte [bx + di], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 0FFh                     ; add bh, bh
    db 07Fh, 0FFh                     ; jg 0x4a
    db 07Fh, 000h                     ; jg 0x4d
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 001h                     ; add byte [bx + di], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 001h                     ; add byte [bx + di], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 050h, 061h               ; add byte [bx + si + 0x61], dl
    db 067h, 065h, 020h, 031h         ; and byte gs:[ecx], dh
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 02Eh, 057h                     ; push di
    db 052h                           ; push dx
    db 049h                           ; dec cx
    db 000h, 000h                     ; add byte [bx + si], al
    db 02Eh, 044h                     ; inc sp
    db 04Fh                           ; dec di
    db 043h                           ; inc bx
    db 000h, 000h                     ; add byte [bx + si], al
    db 02Eh, 047h                     ; inc di
    db 04Ch                           ; dec sp
    db 053h                           ; push bx
    db 000h, 000h                     ; add byte [bx + si], al
    db 02Eh, 064h, 072h, 076h         ; jb 0x12c
    db 000h, 000h                     ; add byte [bx + si], al
    db 0A0h, 000h, 0ACh               ; mov al, byte [0xac00]
    db 000h, 09Eh, 000h, 09Eh         ; add byte [bp - 0x6200], bl
    db 000h, 09Eh, 000h, 09Eh         ; add byte [bp - 0x6200], bl
    db 000h, 0A6h, 000h, 02Eh         ; add byte [bp + 0x2e00], ah
    db 042h                           ; inc dx
    db 04Bh                           ; dec bx
    db 050h                           ; push ax
    db 000h, 000h                     ; add byte [bx + si], al
    db 02Eh, 042h                     ; inc dx
    db 041h                           ; inc cx
    db 04Bh                           ; dec bx
    db 000h, 000h                     ; add byte [bx + si], al
    db 04Dh                           ; dec bp
    db 053h                           ; push bx
    db 057h                           ; push di
    db 072h, 069h                     ; jb 0x140
    db 074h, 065h                     ; je 0x13e
    db 000h, 046h, 06Fh               ; add byte [bp + 0x6f], al
    db 06Eh                           ; outsb dx, byte [si]
    db 074h, 078h                     ; je 0x157
    db 000h, 057h, 072h               ; add byte [bx + 0x72], dl
    db 069h, 074h, 065h, 020h, 044h   ; imul si, word [si + 0x65], 0x4420
    db 06Fh                           ; outsw dx, word [si]
    db 063h, 075h, 06Dh               ; arpl word [di + 0x6d], si
    db 065h, 06Eh                     ; outsb dx, byte gs:[si]
    db 074h, 000h                     ; je 0xef
    db 000h, 057h, 072h               ; add byte [bx + 0x72], dl
    db 069h, 074h, 065h, 020h, 050h   ; imul si, word [si + 0x65], 0x5020
    db 072h, 06Fh                     ; jb 0x168
    db 067h, 072h, 061h               ; jb 0x15d
    db 06Dh                           ; insw word es:[di], dx
    db 000h, 057h, 072h               ; add byte [bx + 0x72], dl
    db 069h, 074h, 065h, 020h, 053h   ; imul si, word [si + 0x65], 0x5320
    db 061h                           ; popaw
    db 076h, 065h                     ; jbe 0x16d
    db 000h, 000h                     ; add byte [bx + si], al
    db 057h                           ; push di
    db 072h, 069h                     ; jb 0x176
    db 074h, 065h                     ; je 0x174
    db 000h, 028h                     ; add byte [bx + si], ch
    db 055h                           ; push bp
    db 06Eh                           ; outsb dx, byte [si]
    db 074h, 069h                     ; je 0x17e
    db 074h, 06Ch                     ; je 0x183
    db 065h, 064h, 029h, 000h         ; sub word fs:[bx + si], ax
    db 000h, 020h                     ; add byte [bx + si], ah
    db 02Dh, 020h, 000h               ; sub ax, 0x20
    db 077h, 069h                     ; ja 0x18b
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 06Fh                     ; outsw dx, word fs:[si]
    db 077h, 073h                     ; ja 0x19a
    db 000h, 044h, 065h               ; add byte [si + 0x65], al
    db 076h, 069h                     ; jbe 0x195
    db 063h, 065h, 000h               ; arpl word [di], sp
    db 000h, 064h, 065h               ; add byte [si + 0x65], ah
    db 076h, 069h                     ; jbe 0x19d
    db 063h, 065h, 073h               ; arpl word [di + 0x73], sp
    db 000h, 042h, 061h               ; add byte [bp + si + 0x61], al
    db 063h, 06Bh, 075h               ; arpl word [bp + di + 0x75], bp
    db 070h, 000h                     ; jo 0x13f
    db 000h, 04Dh, 053h               ; add byte [di + 0x53], cl
    db 057h                           ; push di
    db 052h                           ; push dx
    db 049h                           ; dec cx
    db 054h                           ; push sp
    db 045h                           ; inc bp
    db 05Fh                           ; pop di
    db 04Dh                           ; dec bp
    db 045h                           ; inc bp
    db 04Eh                           ; dec si
    db 055h                           ; push bp
    db 000h, 000h                     ; add byte [bx + si], al
    db 04Dh                           ; dec bp
    db 053h                           ; push bx
    db 057h                           ; push di
    db 052h                           ; push dx
    db 049h                           ; dec cx
    db 054h                           ; push sp
    db 045h                           ; inc bp
    db 05Fh                           ; pop di
    db 044h                           ; inc sp
    db 04Fh                           ; dec di
    db 043h                           ; inc bx
    db 000h, 04Dh, 053h               ; add byte [di + 0x53], cl
    db 057h                           ; push di
    db 052h                           ; push dx
    db 049h                           ; dec cx
    db 054h                           ; push sp
    db 045h                           ; inc bp
    db 05Fh                           ; pop di
    db 052h                           ; push dx
    db 055h                           ; push bp
    db 04Ch                           ; dec sp
    db 045h                           ; inc bp
    db 052h                           ; push dx
    db 000h, 04Dh, 053h               ; add byte [di + 0x53], cl
    db 057h                           ; push di
    db 052h                           ; push dx
    db 049h                           ; dec cx
    db 054h                           ; push sp
    db 045h                           ; inc bp
    db 05Fh                           ; pop di
    db 050h                           ; push ax
    db 041h                           ; inc cx
    db 047h                           ; inc di
    db 045h                           ; inc bp
    db 049h                           ; dec cx
    db 04Eh                           ; dec si
    db 046h                           ; inc si
    db 04Fh                           ; dec di
    db 000h, 000h                     ; add byte [bx + si], al
    db 057h                           ; push di
    db 052h                           ; push dx
    db 049h                           ; dec cx
    db 054h                           ; push sp
    db 045h                           ; inc bp
    db 020h, 046h, 06Fh               ; and byte [bp + 0x6f], al
    db 072h, 06Dh                     ; jb 0x1f1
    db 061h                           ; popaw
    db 074h, 074h                     ; je 0x1fb
    db 065h, 064h, 020h, 054h, 065h   ; and byte fs:[si + 0x65], dl
    db 078h, 074h                     ; js 0x202
    db 000h, 000h                     ; add byte [bx + si], al
    db 020h, 077h, 06Fh               ; and byte [bx + 0x6f], dh
    db 072h, 064h                     ; jb 0x1f9
    db 073h, 000h                     ; jae 0x197
    db 000h, 044h, 045h               ; add byte [si + 0x45], al
    db 056h                           ; push si
    db 049h                           ; dec cx
    db 043h                           ; inc bx
    db 045h                           ; inc bp
    db 04Dh                           ; dec bp
    db 04Fh                           ; dec di
    db 044h                           ; inc sp
    db 045h                           ; inc bp
    db 000h, 000h                     ; add byte [bx + si], al
    db 07Eh, 057h                     ; jle 0x1fd
    db 052h                           ; push dx
    db 049h                           ; dec cx
    db 030h, 030h                     ; xor byte [bx + si], dh
    db 030h, 030h                     ; xor byte [bx + si], dh
    db 02Eh, 054h                     ; push sp
    db 04Dh                           ; dec bp
    db 050h                           ; push ax
    db 000h, 000h                     ; add byte [bx + si], al
    db 053h                           ; push bx
    db 079h, 073h                     ; jns 0x228
    db 074h, 065h                     ; je 0x21c
    db 06Dh                           ; insw word es:[di], dx
    db 000h, 000h                     ; add byte [bx + si], al
    db 06Dh                           ; insw word es:[di], dx
    db 077h, 05Fh                     ; ja 0x21c
    db 061h                           ; popaw
    db 063h, 063h, 074h               ; arpl word [bp + di + 0x74], sp
    db 062h, 000h                     ; bound ax, dword [bx + si]
    db 000h, 04Eh, 075h               ; add byte [bp + 0x75], cl
    db 06Ch                           ; insb byte es:[di], dx
    db 06Ch                           ; insb byte es:[di], dx
    db 050h                           ; push ax
    db 06Fh                           ; outsw dx, word [si]
    db 072h, 074h                     ; jb 0x240
    db 000h, 000h                     ; add byte [bx + si], al
    db 04Eh                           ; dec si
    db 06Fh                           ; outsw dx, word [si]
    db 06Eh                           ; outsb dx, byte [si]
    db 065h, 000h, 000h               ; add byte gs:[bx + si], al
    db 06Dh                           ; insw word es:[di], dx
    db 077h, 06Ch                     ; ja 0x243
    db 06Fh                           ; outsw dx, word [si]
    db 072h, 065h                     ; jb 0x23f
    db 073h, 000h                     ; jae 0x1dc
    db 06Dh                           ; insw word es:[di], dx
    db 077h, 068h                     ; ja 0x247
    db 069h, 072h, 065h, 073h, 000h   ; imul si, word [bp + si + 0x65], 0x73
    db 06Dh                           ; insw word es:[di], dx
    db 077h, 05Fh                     ; ja 0x246
    db 069h, 063h, 06Fh, 06Eh, 000h   ; imul sp, word [bp + di + 0x6f], 0x6e
    db 06Dh                           ; insw word es:[di], dx
    db 077h, 05Fh                     ; ja 0x24e
    db 06Dh                           ; insw word es:[di], dx
    db 065h, 06Eh                     ; outsb dx, byte gs:[si]
    db 075h, 000h                     ; jne 0x1f4
    db 053h                           ; push bx
    db 063h, 072h, 06Fh               ; arpl word [bp + si + 0x6f], si
    db 06Ch                           ; insb byte es:[di], dx
    db 06Ch                           ; insb byte es:[di], dx
    db 042h                           ; inc dx
    db 061h                           ; popaw
    db 072h, 000h                     ; jb 0x1fe
    db 020h, 020h                     ; and byte [bx + si], ah
    db 009h, 053h, 068h               ; or word [bp + di + 0x68], dx
    db 020h, 045h, 073h               ; and byte [di + 0x73], al
    db 063h, 000h                     ; arpl word [bx + si], ax
    db 070h, 06Dh                     ; jo 0x277
    db 073h, 063h                     ; jae 0x26f
    db 075h, 072h                     ; jne 0x280
    db 000h, 000h                     ; add byte [bx + si], al
    db 072h, 062h                     ; jb 0x274
    db 075h, 074h                     ; jne 0x288
    db 074h, 06Fh                     ; je 0x285
    db 06Eh                           ; outsb dx, byte [si]
    db 000h, 072h, 06Dh               ; add byte [bp + si + 0x6d], dh
    db 061h                           ; popaw
    db 072h, 06Bh                     ; jb 0x288
    db 000h, 048h, 045h               ; add byte [bx + si + 0x45], cl
    db 041h                           ; inc cx
    db 044h                           ; inc sp
    db 045h                           ; inc bp
    db 052h                           ; push dx
    db 000h, 000h                     ; add byte [bx + si], al
    db 046h                           ; inc si
    db 04Fh                           ; dec di
    db 04Fh                           ; dec di
    db 054h                           ; push sp
    db 045h                           ; inc bp
    db 052h                           ; push dx
    db 000h, 000h                     ; add byte [bx + si], al
    db 04Dh                           ; dec bp
    db 06Fh                           ; outsw dx, word [si]
    db 064h, 065h, 072h, 06Eh         ; jb 0x2a2
    db 000h, 000h                     ; add byte [bx + si], al
    db 052h                           ; push dx
    db 06Fh                           ; outsw dx, word [si]
    db 06Dh                           ; insw word es:[di], dx
    db 061h                           ; popaw
    db 06Eh                           ; outsb dx, byte [si]
    db 000h, 053h, 077h               ; add byte [bp + di + 0x77], dl
    db 069h, 073h, 073h, 000h, 053h   ; imul si, word [bp + di + 0x73], 0x5300
    db 063h, 072h, 069h               ; arpl word [bp + si + 0x69], si
    db 070h, 074h                     ; jo 0x2bc
    db 000h, 000h                     ; add byte [bx + si], al
    db 044h                           ; inc sp
    db 065h, 063h, 06Fh, 072h         ; arpl word gs:[bx + 0x72], bp
    db 061h                           ; popaw
    db 074h, 069h                     ; je 0x2bb
    db 076h, 065h                     ; jbe 0x2b9
    db 000h, 000h                     ; add byte [bx + si], al
    db 05Ch                           ; pop sp
    db 02Ah, 02Eh, 057h, 052h         ; sub ch, byte [0x5257]
    db 049h                           ; dec cx
    db 000h, 000h                     ; add byte [bx + si], al
    db 04Ch                           ; dec sp
    db 06Fh                           ; outsw dx, word [si]
    db 061h                           ; popaw
    db 064h, 069h, 06Eh, 067h, 020h, 046h ; imul bp, word fs:[bp + 0x67], 0x4620
    db 069h, 06Ch, 065h, 02Eh, 02Eh   ; imul bp, word [si + 0x65], 0x2e2e
    db 02Eh, 000h, 043h, 06Fh         ; add byte cs:[bp + di + 0x6f], al
    db 06Eh                           ; outsb dx, byte [si]
    db 076h, 065h                     ; jbe 0x2d8
    db 072h, 074h                     ; jb 0x2e9
    db 069h, 06Eh, 067h, 020h, 061h   ; imul bp, word [bp + 0x67], 0x6120
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 020h, 04Ch, 06Fh         ; and byte fs:[si + 0x6f], cl
    db 061h                           ; popaw
    db 064h, 069h, 06Eh, 067h, 020h, 046h ; imul bp, word fs:[bp + 0x67], 0x4620
    db 069h, 06Ch, 065h, 02Eh, 02Eh   ; imul bp, word [si + 0x65], 0x2e2e
    db 02Eh, 000h, 000h               ; add byte cs:[bx + si], al
    db 069h, 06Eh, 074h, 06Ch, 000h   ; imul bp, word [bp + 0x74], 0x6c
    db 000h, 073h, 044h               ; add byte [bp + di + 0x44], dh
    db 065h, 063h, 069h, 06Dh         ; arpl word gs:[bx + di + 0x6d], bp
    db 061h                           ; popaw
    db 06Ch                           ; insb byte es:[di], dx
    db 000h, 000h                     ; add byte [bx + si], al
    db 02Eh, 000h, 069h, 043h         ; add byte cs:[bx + di + 0x43], ch
    db 06Fh                           ; outsw dx, word [si]
    db 075h, 06Eh                     ; jne 0x313
    db 074h, 072h                     ; je 0x319
    db 079h, 000h                     ; jns 0x2a9
    db 000h, 030h                     ; add byte [bx + si], dh
    db 030h, 031h                     ; xor byte [bx + di], dh
    db 000h, 010h                     ; add byte [bx + si], dl
    db 000h, 012h                     ; add byte [bp + si], dl
    db 000h, 016h, 000h, 01Bh         ; add byte [0x1b00], dl
    db 000h, 020h                     ; add byte [bx + si], ah
    db 000h, 024h                     ; add byte [si], ah
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 0FFh                     ; add bh, bh
    db 0FFh, 000h                     ; inc word [bx + si]
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 0FFh                     ; add bh, bh
    db 0FFh, 000h                     ; inc word [bx + si]
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 020h                     ; add byte [bx + si], ah
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 0FFh                     ; add bh, bh
    db 0FFh, 000h                     ; inc word [bx + si]
    db 000h, 000h                     ; add byte [bx + si], al
    db 0A7h                           ; cmpsw word [si], word es:[di]
    db 0A7h                           ; cmpsw word [si], word es:[di]
    db 0A7h                           ; cmpsw word [si], word es:[di]
    db 0A6h                           ; cmpsb byte [si], byte es:[di]
    db 0A5h                           ; movsw word es:[di], word [si]
    db 0A4h                           ; movsb byte es:[di], byte [si]
    db 0A6h                           ; cmpsb byte [si], byte es:[di]
    db 0E6h, 08Ah                     ; out 0x8a, al
    db 0C4h, 0A7h, 0A7h, 0A7h         ; les sp, [bx - 0x5859]
    db 025h, 025h, 025h               ; and ax, 0x2525
    db 0A4h                           ; movsb byte es:[di], byte [si]
    db 0A6h                           ; cmpsb byte [si], byte es:[di]
    db 0C5h, 082h, 082h, 082h         ; lds ax, [bp + si - 0x7d7e]
    db 082h, 082h, 082h, 0C0h, 082h   ; add byte [bp + si - 0x3f7e], 0x82
    db 082h, 082h, 082h, 082h, 082h   ; add byte [bp + si - 0x7d7e], 0x82
    db 082h, 082h, 082h, 0A6h, 0C2h   ; add byte [bp + si - 0x597e], 0xc2
    db 000h, 000h                     ; add byte [bx + si], al
    db 0A4h                           ; movsb byte es:[di], byte [si]
    db 000h, 001h                     ; add byte [bx + di], al
    db 000h, 001h                     ; add byte [bx + di], al
    db 000h, 001h                     ; add byte [bx + di], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 001h                     ; add byte [bx + di], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 00Fh                     ; add byte [bx], cl
    db 000h, 00Fh                     ; add byte [bx], cl
    db 000h, 07Eh, 010h               ; add byte [bp + 0x10], bh
    db 0FFh                           ; FF
    db 0FFh, 000h                     ; inc word [bx + si]
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 0FEh                     ; add dh, bh
    db 0FFh, 01Eh, 058h, 090h         ; lcall [0x9058]
    db 045h                           ; inc bp
    db 055h                           ; push bp
    db 08Bh, 0ECh                     ; mov bp, sp
    db 01Eh                           ; push ds
    db 08Eh, 0D8h                     ; mov ds, ax
    db 083h, 0ECh, 01Ch               ; sub sp, 0x1c
    db 057h                           ; push di
    db 056h                           ; push si
    db 08Bh, 076h, 006h               ; mov si, word [bp + 6]
    db 0EBh, 004h                     ; jmp 0x376
    db 080h, 034h, 013h               ; xor byte [si], 0x13
    db 046h                           ; inc si
    db 080h, 03Ch, 000h               ; cmp byte [si], 0
    db 075h, 0F7h                     ; jne 0x372
    db 0FFh, 076h, 00Ch               ; push word [bp + 0xc]
    db 08Dh, 046h, 0F6h               ; lea ax, [bp - 0xa]
    db 016h                           ; push ss
    db 050h                           ; push ax
    db 08Bh, 05Eh, 008h               ; mov bx, word [bp + 8]
    db 0FFh, 01Fh                     ; lcall [bx]
    db 080h, 066h, 0FAh, 080h         ; and byte [bp - 6], 0x80
    db 080h, 066h, 0FCh, 080h         ; and byte [bp - 4], 0x80
    db 08Bh, 046h, 0FAh               ; mov ax, word [bp - 6]
    db 08Bh, 0C8h                     ; mov cx, ax
    db 0D1h, 0F9h                     ; sar cx, 1
    db 0D1h, 0F9h                     ; sar cx, 1
    db 08Bh, 0D0h                     ; mov dx, ax
    db 08Bh, 0D9h                     ; mov bx, cx
    db 0B1h, 003h                     ; mov cl, 3
    db 0D3h, 0FAh                     ; sar dx, cl
    db 003h, 0DAh                     ; add bx, dx
    db 089h, 05Eh, 0EEh               ; mov word [bp - 0x12], bx
    db 02Bh, 0C3h                     ; sub ax, bx
    db 089h, 046h, 0F2h               ; mov word [bp - 0xe], ax
    db 08Bh, 046h, 0FCh               ; mov ax, word [bp - 4]
    db 08Bh, 0C8h                     ; mov cx, ax
    db 0D1h, 0F9h                     ; sar cx, 1
    db 0D1h, 0F9h                     ; sar cx, 1
    db 089h, 04Eh, 0F0h               ; mov word [bp - 0x10], cx
    db 02Bh, 0C1h                     ; sub ax, cx
    db 089h, 046h, 0F4h               ; mov word [bp - 0xc], ax
    db 0FFh, 076h, 00Ah               ; push word [bp + 0xa]
    db 08Bh, 046h, 006h               ; mov ax, word [bp + 6]
    db 01Eh                           ; push ds
    db 050h                           ; push ax
    db 0B8h, 0FFh, 0FFh               ; mov ax, 0xffff
    db 050h                           ; push ax
    db 08Dh, 046h, 0EEh               ; lea ax, [bp - 0x12]
    db 016h                           ; push ss
    db 050h                           ; push ax
    db 0B8h, 011h, 000h               ; mov ax, 0x11
    db 050h                           ; push ax
    db 08Bh, 05Eh, 008h               ; mov bx, word [bp + 8]
    db 0FFh, 05Fh, 004h               ; lcall [bx + 4]
    db 08Bh, 046h, 0FAh               ; mov ax, word [bp - 6]
    db 0D1h, 0F8h                     ; sar ax, 1
    db 089h, 046h, 0ECh               ; mov word [bp - 0x14], ax
    db 08Bh, 046h, 0FCh               ; mov ax, word [bp - 4]
    db 0D1h, 0F8h                     ; sar ax, 1
    db 089h, 046h, 0EAh               ; mov word [bp - 0x16], ax
    db 02Bh, 0FFh                     ; sub di, di
    db 08Bh, 0F7h                     ; mov si, di
    db 0EBh, 055h                     ; jmp 0x442
    db 0FFh, 076h, 00Ah               ; push word [bp + 0xa]
    db 08Bh, 046h, 0ECh               ; mov ax, word [bp - 0x14]
    db 02Bh, 0C6h                     ; sub ax, si
    db 050h                           ; push ax
    db 057h                           ; push di
    db 08Bh, 05Eh, 008h               ; mov bx, word [bp + 8]
    db 0FFh, 05Fh, 008h               ; lcall [bx + 8]
    db 0FFh, 076h, 00Ah               ; push word [bp + 0xa]
    db 056h                           ; push si
    db 08Bh, 046h, 0EAh               ; mov ax, word [bp - 0x16]
    db 003h, 0C7h                     ; add ax, di
    db 050h                           ; push ax
    db 08Bh, 05Eh, 008h               ; mov bx, word [bp + 8]
    db 0FFh, 05Fh, 00Ch               ; lcall [bx + 0xc]
    db 0FFh, 076h, 00Ah               ; push word [bp + 0xa]
    db 08Bh, 046h, 0ECh               ; mov ax, word [bp - 0x14]
    db 003h, 0C6h                     ; add ax, si
    db 050h                           ; push ax
    db 057h                           ; push di
    db 08Bh, 05Eh, 008h               ; mov bx, word [bp + 8]
    db 0FFh, 05Fh, 008h               ; lcall [bx + 8]
    db 0FFh, 076h, 00Ah               ; push word [bp + 0xa]
    db 08Bh, 046h, 0FAh               ; mov ax, word [bp - 6]
    db 02Bh, 0C6h                     ; sub ax, si
    db 050h                           ; push ax
    db 08Bh, 046h, 0EAh               ; mov ax, word [bp - 0x16]
    db 003h, 0C7h                     ; add ax, di
    db 050h                           ; push ax
    db 08Bh, 05Eh, 008h               ; mov bx, word [bp + 8]
    db 0FFh, 05Fh, 00Ch               ; lcall [bx + 0xc]
    db 08Bh, 046h, 0FAh               ; mov ax, word [bp - 6]
    db 0B1h, 006h                     ; mov cl, 6
    db 0D3h, 0F8h                     ; sar ax, cl
    db 003h, 0F0h                     ; add si, ax
    db 08Bh, 046h, 0FCh               ; mov ax, word [bp - 4]
    db 0D3h, 0F8h                     ; sar ax, cl
    db 003h, 0F8h                     ; add di, ax
    db 039h, 076h, 0ECh               ; cmp word [bp - 0x14], si
    db 07Dh, 0A6h                     ; jge 0x3ed
    db 05Eh                           ; pop si
    db 05Fh                           ; pop di
    db 083h, 0EDh, 002h               ; sub bp, 2
    db 08Bh, 0E5h                     ; mov sp, bp
    db 01Fh                           ; pop ds
    db 05Dh                           ; pop bp
    db 04Dh                           ; dec bp
    db 0CAh, 008h, 000h               ; retf 8
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 044h, 07Ah               ; add byte [si + 0x7a], al
    db 07Dh, 077h                     ; jge 0x5d4
    db 07Ch, 064h                     ; jl 0x5c3
    db 060h                           ; pushaw
    db 033h, 044h, 061h               ; xor ax, word [si + 0x61]
    db 07Ah, 067h                     ; jp 0x5cc
    db 076h, 033h                     ; jbe 0x59a
    db 07Bh, 072h                     ; jnp 0x5db
    db 060h                           ; pushaw
    db 033h, 071h, 076h               ; xor si, word [bx + di + 0x76]
    db 076h, 07Dh                     ; jbe 0x5ec
    db 033h, 071h, 061h               ; xor si, word [bx + di + 0x61]
    db 07Ch, 066h                     ; jl 0x5da
    db 074h, 07Bh                     ; je 0x5f1
    db 067h, 033h, 067h, 07Ch         ; xor sp, word [edi + 0x7c]
    db 033h, 06Ah, 07Ch               ; xor bp, word [bp + si + 0x7c]
    db 066h, 033h, 071h, 06Ah         ; xor esi, dword [bx + di + 0x6a]
    db 033h, 051h, 07Ch               ; xor dx, word [bx + di + 0x7c]
    db 071h, 03Fh                     ; jno 0x5c5
    db 033h, 051h, 07Ch               ; xor dx, word [bx + di + 0x7c]
    db 071h, 03Fh                     ; jno 0x5ca
    db 033h, 051h, 061h               ; xor dx, word [bx + di + 0x61]
    db 06Ah, 072h                     ; push 0x72
    db 07Dh, 03Fh                     ; jge 0x5d1
    db 033h, 050h, 07Bh               ; xor dx, word [bx + si + 0x7b]
    db 07Ah, 03Eh                     ; jp 0x5d5
    db 050h                           ; push ax
    db 07Bh, 066h                     ; jnp 0x600
    db 076h, 07Dh                     ; jbe 0x619
    db 03Fh                           ; aas
    db 033h, 072h, 07Dh               ; xor si, word [bp + si + 0x7d]
    db 077h, 033h                     ; ja 0x5d5
    db 043h                           ; inc bx
    db 072h, 067h                     ; jb 0x60c
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 001h                     ; add byte [bx + di], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 031h, 000h                     ; xor word [bx + si], ax
    db 000h, 031h                     ; add byte [bx + di], dh
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 0FFh                     ; add bh, bh
    db 0FFh, 031h                     ; push word [bx + di]
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 001h                     ; add byte [bx + di], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 031h, 000h                     ; xor word [bx + si], ax
    db 030h, 000h                     ; xor byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 0FFh                     ; add bh, bh
    db 07Fh, 000h                     ; jg 0x73f
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 00Ch                     ; add byte [si], cl
    db 000h, 010h                     ; add byte [bx + si], dl
    db 000h, 014h                     ; add byte [si], dl
    db 000h, 018h                     ; add byte [bx + si], bl
    db 000h, 01Ch                     ; add byte [si], bl
    db 000h, 024h                     ; add byte [si], ah
    db 000h, 030h                     ; add byte [bx + si], dh
    db 000h, 03Ch                     ; add byte [si], bh
    db 000h, 048h, 000h               ; add byte [bx + si], cl
    db 060h                           ; pushaw
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 0FFh                     ; add bh, bh
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 000h                     ; inc word [bx + si]
    db 000h, 001h                     ; add byte [bx + di], al
    db 000h, 03Fh                     ; add byte [bx], bh
    db 000h, 03Fh                     ; add byte [bx], bh
    db 000h, 00Fh                     ; add byte [bx], cl
    db 000h, 0FFh                     ; add bh, bh
    db 00Fh, 0FFh                     ; ud0
    db 001h, 01Fh                     ; add word [bx], bx
    db 000h, 010h                     ; add byte [bx + si], dl
    db 000h, 03Fh                     ; add byte [bx], bh
    db 000h, 007h                     ; add byte [bx], al
    db 000h, 0FFh                     ; add bh, bh
    db 00Fh, 0FFh                     ; ud0
    db 001h, 01Ch                     ; add word [si], bx
    db 000h, 0FFh                     ; add bh, bh
    db 0FFh, 000h                     ; inc word [bx + si]
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 0FFh                     ; add bh, bh
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 000h                     ; inc word [bx + si]
    db 000h, 062h, 000h               ; add byte [bp + si], ah
    db 0FFh, 000h                     ; inc word [bx + si]
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 010h, 000h                     ; adc byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 000h                     ; inc word [bx + si]
    db 000h, 00Fh                     ; add byte [bx], cl
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 0A0h, 005h, 037h         ; add byte [bx + si + 0x3705], ah
    db 002h, 090h, 000h, 078h         ; add dl, byte [bx + si + 0x7800]
    db 000h, 014h                     ; add byte [si], dl
    db 000h, 0F0h                     ; add al, dh
    db 000h, 02Eh, 02Eh, 02Eh         ; add byte [0x2e2e], ch
    db 000h, 020h                     ; add byte [bx + si], ah
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 008h                     ; add byte [bx + si], cl
    db 000h, 004h                     ; add byte [si], al
    db 000h, 001h                     ; add byte [bx + di], al
    db 000h, 0FFh                     ; add bh, bh
    db 0FFh, 000h                     ; inc word [bx + si]
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 0FFh                     ; add bh, bh
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 000h                     ; inc word [bx + si]
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 081h, 081h, 081h         ; add byte [bx + di - 0x7e7f], al
    db 001h, 001h                     ; add word [bx + di], ax
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 0FFh                     ; add bh, bh
    db 0FFh, 000h                     ; inc word [bx + si]
    db 000h, 0FFh                     ; add bh, bh
    db 0FFh, 000h                     ; inc word [bx + si]
    db 000h, 0FFh                     ; add bh, bh
    db 0FFh, 000h                     ; inc word [bx + si]
    db 000h, 0FFh                     ; add bh, bh
    db 0FFh                           ; FF