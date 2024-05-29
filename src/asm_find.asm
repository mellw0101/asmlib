%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .rodata
    err_not_found: db 0xA, "asm_find: Error: Character not found.", 0xA, 0

section .text
    global asm_find
    extern asm_print_str

asm_find:
    ;
    ; Description: Find a character in a string
    ; Function arguments
    ; rdi: string
    ; rsi: character to find
    ; Returns: index of the first occurrence of the character, or (size_t)-1 if not found
    ;
    FUNC_START_FULL
    xor rcx, rcx                ; Clear the index register (rcx)

    .loop:
        cmp byte [rdi+rcx], 0     ; If the current character is 0
        jz .not_found               ; Jump to .not_found if end of string
        cmp byte [rdi+rcx], sil   ; Compare the character with 'sil'
        jz .found                   ; Jump to .found if match
        inc rcx                     ; Increment the index
        jmp .loop                   ; Loop again

    .not_found:
        lea rdi, [rel err_not_found]    ; Load the address of the error message
        call asm_print_str              ; Print the character to find
        mov rax, -1                     ; Return (size_t)-1 for not found
        jmp .exit

    .found:
        mov rax, rcx                    ; Return the index in rax

    .exit:
        FUNC_END_FULL                   ; Restore registers and return