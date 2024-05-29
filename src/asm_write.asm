%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .text
    global asm_write_file

asm_write_file:
    ;
    ; int write(int fd, const void *buf, size_t count);
    ;
    ; rdi: file descriptor
    ; rsi: buffer
    ; rdx: count
    ;
    FUNC_START_FULL
    mov rax, 1       ; syscall number for write
    syscall          ; make the syscall
    FUNC_END_FULL