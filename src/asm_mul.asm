%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .text
    global asm_mul

asm_mul:
    __FUNC_START__
    mov rax, rdi
    imul rax, rsi
    __FUNC_END__