%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .text
    global asm_print_char

asm_print_char:
    ; Print a single character from dil
    mov rax, 1          ; syscall number for sys_write
    mov rdi, 1          ; file descriptor for stdout
    mov rsi, rdi        ; rsi already has the character

    mov rdx, 1          ; length is 1 byte
    syscall             ; make the syscall
    ret