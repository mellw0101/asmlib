%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .text
    global asm_strcmp

asm_strcmp:
    FUNC_START_FULL
    ; rdi - first string
    ; rsi - second string
    ; return value:
    ;   0 - strings are equal
    ;   1 - strings are not equal
    ;
    xor rdx, rdx                ; clear counter
    xor rax, rax                ; clear return value
    .loop:
        cmp byte [rdi+rdx], 0   ; check for null terminator
        je .null_found          ; if it is, jump to the end
        mov cl, byte [rdi+rdx]  ; load byte from first string
        cmp byte [rsi+rdx], cl  ; compare the two strings
        jne .not_equal          ; if they are not equal, jump to the end
        inc rdx                 ; increment counter
        jmp .loop               ; repeat the loop

    .null_found:
        cmp byte [rsi+rdx], 0   ; check for null terminator in the second string
        je .end                 ; if it is, jump to the end
        jmp .not_equal          ; if it is not, jump to the end

    .not_equal:
        mov rax, 1              ; set return value to 0 (false)

    .end:
        FUNC_END_FULL