%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .text
    global asm_div

asm_div:
    ;
    ; asm_div(a, b) -> long
    ;
    __FUNC_START__

    cmp rsi, 0          ; Check if divisor is zero
    je .div_by_zero     ; If zero, jump to div_by_zero
    mov rax, rdi        ; Move first param (rdi) to rax
    xor rdx, rdx        ; Clear rdx
    div rsi             ; Divide rax by rsi
    jmp .end            ; Jump to end
    .div_by_zero:
        mov rax, 1      ; Set return value to 1

    .end:
        __FUNC_END__