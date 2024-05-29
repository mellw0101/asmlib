section .text
    global asm_clear_str, asm_clear_str_32_bit

asm_clear_str_32_bit:   ; void asm_clear_str(char *str)
    push ebp            ; save old base pointer
    mov ebp, esp        ; set new base pointer
    mov eax, [ebp + 8]  ; get pointer to string
    mov ecx, 0          ; counter
    mov edx, 0          ; clear value
    mov ebx, eax        ; copy pointer to ebx
    mov al, [ebx]       ; get first character
    cmp al, 0           ; check if string is empty
    je .end             ; if empty, return 0
    .loop:              ; loop
        mov al, [ebx]   ; get character
        cmp al, 0       ; check if end
        je .end         ; if end, return counter
        mov [ebx], dl   ; clear character
        inc ebx         ; move to next character
        inc ecx         ; increment counter
        jmp .loop       ; Jump to .loop
    .end:               ; end
        mov eax, ecx    ; return counter
        pop ebp         ; restore old base pointer
        ret             ; return

asm_clear_str:          ; void asm_clear_str(char *str, int len)
    FUNC_START_FULL
    xor rdx, rdx        ; clear value
    lea rdx, [rbp + 16] ; get pointer to string
    xor rcx, rcx        ; counter
    .loop:
        cmp rcx, rsi    ; check if end
        
        mov byte [rdx+rcx], 0   ; clear character


    .end:
        FUNC_END_FULL

; .loop:
;     mov al, [ebx]   ; get character
;     cmp al, 0       ; check if end
;     je .end         ; if end, return counter
;     mov [ebx], dl   ; clear character
;     inc ebx         ; move to next character
;     inc ecx         ; increment counter
;     cmp ecx, edx    ; check if counter is equal to len
;     jne .loop       ; if not, jump to .loop