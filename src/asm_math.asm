%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .text
    global asm_add, asm_sub, asm_div, asm_mul

asm_add:            ; asm_add(a, b) -> ((size_t)a + b)
    __FUNC_START__
    mov rax, rdi    ; Move first param (rdi) to rax
    add rax, rsi    ; Add second param (rsi) to rax
    __FUNC_END__    ; return rax ( return value reg )

asm_sub:            ; asm_sub(a, b) -> ((size_t)a + b)
    __FUNC_START__
    mov rax, rdi    ; Move first param (rdi) to rax
    sub rax, rsi    ; Subtract second param (rsi) from rax
    __FUNC_END__    ; return rax ( return value reg )

asm_mul:
    __FUNC_START__
    mov rax, rdi    ; Move first param (rdi) to rax
    imul rax, rsi   ; Multiply rax by rsi
     __FUNC_END__   ; return rax ( return value reg )

asm_div:                ; asm_div(a, b) -> long
    __FUNC_START__
    cmp rsi, 0          ; Check if divisor is zero
    je .div_by_zero     ; If zero, jump to div_by_zero
    mov rax, rdi        ; Move first param (rdi) to rax
    xor rdx, rdx        ; Clear rdx
    div rsi             ; Divide rax by rsi
    jmp .end            ; Jump to end
    .div_by_zero:
        mov rax, 0      ; Set return value to 0
    .end:
        __FUNC_END__    ; return rax ( return value reg )