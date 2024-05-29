%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .text
    global asm_open_file

asm_open_file:
    ;
    ; rdi = filename
    ; rsi = flags
    ; rdx = mode
    ; rax = return value
    ;
    FUNC_START_FULL
    mov rax, 2      ; syscall number for open
    syscall         ; call open
    FUNC_END_FULL