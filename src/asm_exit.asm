section .text
    global asm_exit

asm_exit:       ; asm_exit(status) -> void
    ;
    ; This function exits the program with the given status.
    ;
    ; Arguments:
    ;   rdi - The status to exit with
    ;
    mov rax, 60 ; System call number for sys_exit
    syscall     ; Make the system call
    ret         ; Return