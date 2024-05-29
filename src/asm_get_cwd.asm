%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .text
    global asm_get_cwd

asm_get_cwd:
    __FUNC_START__
    mov rax, 79             ; syscall number    (getcwd)
    syscall
    __FUNC_END__