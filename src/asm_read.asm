%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .text
    global asm_read

asm_read:
    ; rdi - file descriptor
    ; rsi - buffer
    ; rdx - count
    ; rax - return value
    ;
    FUNC_START_FULL
    cmp rsi, 0      ; check if buffer is null
    jz .end         ; if null, return 0
    mov rax, 0      ; syscall number for sys_read
    syscall         ; call kernel
    .end:
        FUNC_END_FULL