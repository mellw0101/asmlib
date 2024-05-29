%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .rodata
    rmdir_err db "asm_rm_dir: Error: Could not rm dir: ", 0
    new_line db 10, 0

section .text
    global asm_rm_dir
    extern asm_print_str

asm_rm_dir:
    FUNC_START_FULL
    mov rax, 84                 ; syscall number for rmdir
    syscall                     ; call 
    cmp rax, 0                  ; call cmp
    jge .success                ; if rax >= 0, then success
    mov r9, rdi                 ; load rdi (path) into r9
    lea rdi, [rel rmdir_err]    ; load error message
    call asm_print_str          ; call asm_print_str
    mov rdi, r9                 ; load r9 into rdi
    call asm_print_str          ; call asm_print_str
    lea rdi, [rel new_line]     ; load new line
    call asm_print_str          ; call asm_print_str
    mov rax, 1                  ; set rax to 1
    jmp .end                    ; jump to end
    .success:
        mov rax, 0              ; set rax to 0
    .end:
        FUNC_END_FULL