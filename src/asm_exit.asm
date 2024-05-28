section .text
    global asm_exit

asm_exit:       ; asm_exit(status) -> void
    mov rax, 60 ; System call number for sys_exit
    syscall     ; Make the system call
    ret         ; Return