%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .rodata
    mkdir_err db "asm_mkdir: \033[31mERROR: Could not create dir: ", 0
    new_line db 10, 0

section .text
    global asm_mkdir
    extern asm_print_str

asm_mkdir:
    FUNC_START_FULL
    mov rax, 83                 ; syscall number for mkdir
    syscall                     ; call mkdir
    cmp rax, 0                  ; call cmp
    jge .success                ; if rax >= 0, then success
    mov r9, rdi                 ; Save the 
    lea rdi, [rel mkdir_err]    ; load error message
    call asm_print_str          ; call asm_print_str
    mov rdi, r9                 ; Restore the original rdi
    call asm_print_str          ; call asm_print_str 
    lea rdi, [rel new_line]     ; load new line
    call asm_print_str          ; call asm_print_str
    mov rax, 1                  ; set rax to 1
    jmp .end                    ; jump to end
    .success:
        mov rax, 0              ; set rax to 0
    .end:
        FUNC_END_FULL