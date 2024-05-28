section .text
    global asm_append_str

%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

asm_append_str:
    ; append_str(dest, src) -> void
    ;
    ; Description: Appends a null-terminated string to another null-terminated string
    ; Arguments: rdi: destination string (dest)
    ; rdi: destination string (dest)
    ; rsi: source string (src)
    ;

    ; Prologue
    push rbp                    ; Save the base pointer
    mov rbp, rsp                ; Set the base pointer to the current stack pointer
    mov rcx, rdi                ; Save the destination pointer to rcx

    .find_null:                 ; Find the null terminator of the destination string
        cmp byte [rcx], NULL    ; Compare the byte at the destination pointer to 0 (null terminator)
        je .copy_loop           ; If null terminator, jump to copy_loop
        inc rcx                 ; Move to the next byte in the destination string
        jmp .find_null          ; Repeat

    .copy_loop:
        mov al, [rsi]           ; Load the byte at the source pointer into al
        mov [rcx], al           ; Store the byte from al to the destination pointer
        inc rsi                 ; Move to the next byte in the source string
        inc rcx                 ; Move to the next byte in the destination string
        test al, al             ; Test if the byte is zero (null terminator)
        jnz .copy_loop          ; If not zero, continue copying

    ; Epilogue
    mov rsp, rbp                ; Restore the stack pointer
    pop rbp                     ; Restore the base pointer
    mov rax, rax                ; set rax reg to NULL
    ret