%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"
section .text
    global asm_print_str


asm_print_str:
    ;
    ;   Description: Prints a null-terminated string to stdout
    ;   Signature: asm_print_str(const char *str) -> size_t
    ;   Arguments: rdi = str
    ;   Returns: 0 on success, -1 on failure
    ;
    __FUNC_START__
    mov rsi, rdi                        ; Move the string pointer to rsi (second argument for write)
    mov rdx, 0                          ; Initialize rdx to 0 for length calculation

    .find_len:
        cmp byte [rsi + rdx], NULL      ; Compare each byte to 0 (null terminator)
        je .write_string                ; If null terminator, jump to write_string
        inc rdx                         ; Otherwise, increment rdx
        jmp .find_len                   ; Repeat until null terminator

    .write_string:
        mov rax, 1                      ; System call number for sys_write
        mov rdi, 1                      ; File descriptor 1 (stdout)
        syscall                         ; Make the system call
    mov rax, 0                          ; Set the return value to 0
    __FUNC_END__



