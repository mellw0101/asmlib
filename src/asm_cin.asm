%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .data
    buffer db 31
    length equ 30

section .text
    global asm_cin

asm_cin:                        ; syscall read (0 = stdin, buffer, length)
    FUNC_START_FULL    
    mov rax, 0                  ; syscall number for sys_read
    mov rdi, 0                  ; file descriptor (stdin)
    lea rsi, [rel buffer]       ; buffer to store input
    mov rdx, length             ; maximum number of bytes to read
    syscall
    mov byte [buffer + rax], 0  ; Null-terminate the string

    lea rax, [rel buffer]       ; Return the address of the buffer
    ret                         ; Return to caller
    FUNC_END_FULL