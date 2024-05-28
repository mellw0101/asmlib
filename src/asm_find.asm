section .text
    global asm_find

asm_find:
    ;
    ; Description: Find a character in a string
    ; Function arguments
    ; rdi: string
    ; rsi: character to find
    ; Returns: pointer to the first occurrence of the character, NULL if not found
    ;
    __FUNC_START__
    mov rcx, rdi                ; Move the string pointer to rcx
    mov al, rsi                 ; Move the character to find to al
    .find_loop:                 ; Find the character in the string
        cmp byte [rcx], NULL    ; Check if the end of the string is reached
        je .not_found           ; If NULL, jump to not_found
        cmp byte [rcx], al      ; Compare the character in the string to the character to find
        je .found               ; If equal, jump to found
        inc rcx                 ; Move to the next character in the string
        jmp .find_loop          ; Repeat
    .found:                     ; Character found
        mov rax, rcx            ; Move the pointer to the character to rax
        jmp .exit               ; Jump to exit
    .not_found:                 ; Character not found
        mov rax, NULL           ; Set the return value to NULL
    .exit:                      ; Exit the function
        __FUNC_END__            ; End the function
