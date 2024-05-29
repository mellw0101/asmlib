%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .text
    global asm_get_cwd

asm_get_cwd:
    __FUNC_START__
    mov rax, 79             ; syscall number    (getcwd)
    syscall

    sub rax, 1              ; remove null terminator
    __FUNC_END__