%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .text
    global asm_sub


asm_sub:
    __FUNC_START__
    mov rax, rdi
    sub rax, rsi
    __FUNC_END__
