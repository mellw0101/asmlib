%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .text
    global asm_add

asm_add:
    __FUNC_START__
    xor rax, rax        ; clear rax (return register) to 0
    mov rax, rdi        ; move rdi (first parameter register) to rax
    add rax, rsi        ; add rsi (second parameter register) to rax
    __FUNC_END__
