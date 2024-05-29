%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .text
    global asm_touch

; Function to touch (create) a file
asm_touch:
    FUNC_START_FULL
    mov rax, 2        ; sys_open system call
    mov rsi, 0101h    ; Flags: O_CREAT | O_WRONLY
    mov rdx, 0644     ; Mode: rw-r--r-- (file permissions)
    syscall
    FUNC_END_FULL
    
    ; mov rdi, rax      ; Save file descriptor