%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .rodata
    asm_cd_err db "asm_cd: Error: Could not cd into dir: ", 0
    new_line db 10, 0

section .text
    global asm_cd
    extern asm_print_str

asm_cd:
    FUNC_START_FULL
    mov rax, 80                 ; syscall number for mkdir
    syscall                     ; call cd
    cmp rax, 0                  ; call cmp
    jge .success                ; if rax >= 0, then success
    mov r9, rdi                 ; Save the original rdi value (the directory name)
    lea rdi, [rel asm_cd_err]   ; load error message
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