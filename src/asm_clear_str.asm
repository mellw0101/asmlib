%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .text
    global asm_clear_str

; asm_clear_str_32_bit:   ; void asm_clear_str(char *str)
;     push ebp            ; save old base pointer
;     mov ebp, esp        ; set new base pointer
;     mov eax, [ebp + 8]  ; get pointer to string
;     mov ecx, 0          ; counter
;     mov edx, 0          ; clear value
;     mov ebx, eax        ; copy pointer to ebx
;     mov al, [ebx]       ; get first character
;     cmp al, 0           ; check if string is empty
;     je .end             ; if empty, return 0
;     .loop:              ; loop
;         mov al, [ebx]   ; get character
;         cmp al, 0       ; check if end
;         je .end         ; if end, return counter
;         mov [ebx], dl   ; clear character
;         inc ebx         ; move to next character
;         inc ecx         ; increment counter
;         jmp .loop       ; Jump to .loop
;     .end:               ; end
;         mov eax, ecx    ; return counter
;         pop ebp         ; restore old base pointer
;         ret             ; return

asm_clear_str:                  ; void asm_clear_str(char *str)
    FUNC_START_FULL             ; prologue
    xor rcx, rcx                ; counter
    .null_terminate:            ; loop
        mov byte [rdi], 0       ; clear character
        inc rdi                 ; move to next character
        test byte [rdi], 0xFF   ; check if end
        jnz .null_terminate     ; if not end, jump to .null_terminate

    FUNC_END_FULL               ; epilogue