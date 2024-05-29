
%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .rodata
    error_msg db "Error: Could not remove file: ", 0
    new_line_str db 10, 0

section .text
    global asm_rm_file
    extern asm_print_str

asm_rm_file:
    FUNC_START_FULL
    mov rax, 87                     ; syscall number for unlink
    syscall                         ; call unlink
    cmp rax, 0                      ; check if syscall was successful
    jne .error                      ; jump to .error if not successful    
    mov rax, 0                      ; return 0
    jmp .end                        ; jump to .end

    .error:
        mov r9, rdi                 ; save file path
        lea rdi, [rel error_msg]    ; rdi = error message
        call asm_print_str          ; print error message
        mov rdi, r9                 ; restore file path
        call asm_print_str          ; print file path
        lea rdi, [rel new_line_str] ; rdi = new line
        call asm_print_str          ; print new line
        mov rax, -1                 ; return -1
        jmp .end                    ; jump to .end

    .end:
        FUNC_END_FULL