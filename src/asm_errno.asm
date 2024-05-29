%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .text
    global asm_errno
    extern asm_print_str

asm_errno:                      ; Function signature: asm_errno(str) -> int
    ;
    ; Description: Returns the value of the errno variable
    ;
    ; Arguments:
    ; rdi: error message string
    ;
    ; Returns:
    ; rax: errno value
    ;
    __FUNC_START__
    mov rax, 0                  ; Clear rax register
    mov rax, [fs:0x28]          ; Get the errno value
    call asm_print_str          ; Print the error message
    mov rdx, 0                  ; Initialize rdx to 0 for length calculation
    ; Get the errno value
    mov rax, 0x4                ; mov 0x4 to reg rax ( return reg ) syscall number for sys_write
    mov rdi, 0x2                ; file descriptor 2 (stderr)
    syscall                     ; make the system call
    cmp rax, 0                  ; Check if the system call failed
    jne .error                  ; If not equal, jump to error
    mov rax, EXIT_SUCCESS       ; Set the return value to 0
    jmp .end                    ; Otherwise, jump to end
    .error:
        mov rax, EXIT_FAILURE   ; Clear rax register

    .end:
        __FUNC_END__