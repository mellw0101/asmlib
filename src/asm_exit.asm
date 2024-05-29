%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .rodata
    msg db "asm_exit: status: ", 0
    new_line db 0xA, 0

section .text
    global asm_exit
    extern asm_print_str, asm_print_int

asm_exit:           ; asm_exit(status) -> void
    ;
    ; This function exits the program with the given status.
    ;
    ; Arguments:
    ;   rdi - The status to exit with
    ;
    mov r9, rdi             ; Move the status to rdx for the syscall argument list
    lea rdi, [rel msg]      ; Move the message to rdi for asm_print_str
    call asm_print_str      ; Print the message
    mov rdi, r9             ; Move the status to rdi for asm_print_int
    call asm_print_int      ; Print the status
    lea rdi, [rel new_line] ; Move the new line to rdi for asm_print_str
    call asm_print_str      ; Print the new line
    mov rdi, r9             ; Move the status to rdi for the syscall argument list
    mov rax, 60             ; System call number for sys_exit
    syscall                 ; Make the system call
    ret                     ; Return