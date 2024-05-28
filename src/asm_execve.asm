%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .text
    global asm_execve

asm_execve:
    ;
    ; Description: Execute a program
    ; Function arguments
    ; rdi: program name
    ; rsi: arguments
    ; Returns: 0 on success, 1 on failure
    ;
    __FUNC_START__
    cmp byte [rdi], NULL    ; Check if the program name is NULL
    je .failure             ; If NULL, exit the program
    cmp byte [rsi], NULL    ; Check if the arguments are NULL
    je .failure             ; If NULL, exit the program
    mov rdx, rsi            ; Move the arguments to rdx
    mov rax, 59             ; syscall number for execve
    syscall                 ; Make the system call
    mov rax, _EXS           ; Set the return value to 0
    jmp .exit               ; Jump to exit
    .failure:               ; If the program name or arguments are NULL
        mov rax, _EXF       ; Set the return value to 1
    .exit:
        __FUNC_END__