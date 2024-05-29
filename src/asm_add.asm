%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .text
    global asm_add

asm_add:
    __FUNC_START__
    xor rax, rax
    mov rax, rdi
    add rax, rsi
    __FUNC_END__
