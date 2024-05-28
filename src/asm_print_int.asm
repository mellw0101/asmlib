%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .bss
    int_asm_print_int_buf resq 20

section .text
    global asm_print_int

asm_print_int:              ; asm_print_int(size_t int) -> void
    __FUNC_START__
    mov rax, rdi
    lea rbx, [rel int_asm_print_int_buf + 19]
    mov byte [rbx], NULL                        ; Move a 0 byte into [rbx]
    .convert_loop:                              ; Convert integer to string
        mov rcx, 10                             ; Divisor
        xor rdx, rdx                            ; Clear rdx
        div rcx                                 ; Divide rax by 10
        add dl, '0'                             ; Convert remainder to ASCII
        dec rbx                                 ; Move buffer pointer
        mov [rbx], dl                           ; Store ASCII character
        test rax, rax                           ; Check if quotient is zero
        jnz .convert_loop                       ; If not, continue
    lea rsi, [rbx]                              ; Move the string pointer to rsi (second argument for write)
    lea rdx, [rel int_asm_print_int_buf + 19]   ; Calculate length of string
    sub rdx, rbx                                ; Subtract buffer pointer from end of buffer
    mov rax, 1                                  ; System call number for sys_write
    mov rdi, 1                                  ; File descriptor 1 (stdout)
    syscall                                     ; Make the system call
    __FUNC_END__