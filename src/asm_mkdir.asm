%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .rodata
    asm_mkdir_err db "asm_mkdir: Error: Could not create dir: ", 0
    new_line db 10, 0

section .text
    global asm_mkdir
    extern asm_print_str

asm_mkdir:
    ; 
    ; asm_mkdir(chare *dir, int mode) -> int
    ; Arguments: rsi, rdi
    ; rdi: directory path
    ; rsi: mode (permissions)
    ; Returns: 0 on success, 1 on failure
    ; Clobbers: rax, rdi, rsi, rdx, r9
    ;
    FUNC_START_FULL
    mov rdx, rsi                    ; move mode to rdx
    mov rax, 83                     ; syscall number for mkdir
    syscall                         ; call mkdir
    cmp rax, 0                      ; call cmp
    jge .success                    ; if rax >= 0, then success
    mov r9, rdi                     ; Save the original rdi
    lea rdi, [rel asm_mkdir_err]    ; load error message
    call asm_print_str              ; call asm_print_str
    mov rdi, r9                     ; Restore the original rdi
    call asm_print_str              ; call asm_print_str 
    lea rdi, [rel new_line]         ; load new line
    call asm_print_str              ; call asm_print_str
    mov rax, 1                      ; set rax to 1
    jmp .end                        ; jump to end
    .success:
        mov rax, 0                  ; set rax to 0
    .end:
        FUNC_END_FULL