%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .text
    global asm_find_str_end

; rdi (param arg 1 reg)             ; (char*) - pointer to string
; rax (Return reg)                  ; (size_t) - length of string
asm_find_str_end:
    ;
    xor rcx, rcx                    ; clear rcx (counter register)
    .loop:
        cmp byte [rdi + rcx], 0     ; Compare byte at [rdi + rcx] with 0 (terminating character)
        je .found                   ; return rcx if [rdi + rcx] == 0
        inc rcx                     ; increment rcx by 1
        jmp .loop                   ; loop (repeat)

    .found:
        mov rax, rcx                ; set return value to rcx
        ret                         ; return