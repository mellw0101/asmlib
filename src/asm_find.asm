%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .rodata
    err_not_found: db 0xA, "asm_find: Error: Character not found.", 0xA, 0

section .text
    global asm_find, asm_substr
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
    xor rcx, rcx                        ; Clear the index register (rcx)
    .loop:
        cmp byte [rdi+rcx], 0           ; If the current character is 0
        jz .not_found                   ; Jump to .not_found if end of string
        cmp byte [rdi+rcx], sil         ; Compare the character with 'sil'
        jz .found                       ; Jump to .found if match
        inc rcx                         ; Increment the index
        jmp .loop                       ; Loop again

    .not_found:
        ; lea rdi, [rel err_not_found]    ; Load the address of the error message
        ; call asm_print_str              ; Print the character to find
        mov rax, -1                     ; Return (size_t)-1 for not found
        jmp .exit

    .found:
        mov rax, rcx                    ; Return the index in rax

    .exit:
        FUNC_END_FULL                   ; Restore registers and return

; asm_substr:
;     ;
;     ; Description: Find a substring in a string
;     ; Function arguments
;     ; rdi: string
;     ; rsi: substring
;     ; Returns: index of the first occurrence of the substring, or (size_t)-1 if not found
;     ;
;     FUNC_START_FULL
;     xor rcx, rcx                        ; Clear the index register (rcx)
;     .loop:
;         cmp byte [rdi+rcx], 0           ; If the current character is 0
;         jz .not_found                   ; Jump to .not_found if end of string
;         mov r8, rcx                     ; Move the index to r8
;         .inner_loop:
;             mov al, byte[rdi+r8]                 ; Move the substring to r9
;             cmp byte [rdi+r8], 0        ; If the current character is 0
;             jz .not_found               ; Jump to .not_found if end of string
            
;             cmp byte [rdi+r8], byte [rdx+r8-rcx] ; Compare the characters
;             jnz .not_match              ; Jump to .not_match if not match
;             inc r8                      ; Increment the index
;             jmp .inner_loop             ; Loop again

;         .not_match:
;             inc rcx                     ; Increment the index
;             jmp .loop                   ; Loop again

;     FUNC_END_FULL                   ; Restore registers and return