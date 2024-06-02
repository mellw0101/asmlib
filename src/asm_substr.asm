%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .rodata
    msg_1 db "asm_substr: ERROR: Invalid index, start_index >= str_len", 0xA, 0
    msg_2 db "asm_substr: ERROR: Invalid index, start_index >= end_index", 0xA, 0
    msg_3 db "asm_substr: ERROR: Invalid index, end_index > str_len", 0xA, 0
    msg_4 db "asm_substr: ERROR", 0

section .text
    global asm_substr
    extern asm_print_str

asm_substr:
    ; rdi - full string pointer
    ; rsi - substring pointer ( the buffer to store the substring )
    ; rdx - start index
    ; rcx - end index
    ;
    ; rax - current index
    ; rbx - full string length
    ;
    FUNC_START_FULL
    xor rax, rax
    cmp rdx, rcx
    jge .start_index_higher_than_end
    jmp .find_null

    .start_index_higher_than_end:
        lea rdi, [rel msg_2]
        call asm_print_str
        mov rax, 0
        jmp .end

    .find_null:
        cmp byte [rdi+rax], 0
        je .found_null
        inc rax
        jmp .find_null

    .found_null:
        cmp rdx, rax                ; check if start index is higher or equal than the full string length
        jge .index_invalid          ; if it is, jump to .index_invalid

    cmp rcx, rax                    ; check if end index is higher than the full string length
    jg .end_higher_then_str_len     ; if it is, jump to .end_higher_then_str_len
    jmp .copy_str

    .end_higher_then_str_len:
        lea rdi, [rel msg_3]        ; load the error message address to rdi
        call asm_print_str          ; call asm_print_str
        mov rax, 0                  ; set rax to -1
        jmp .end

    .index_invalid:
        mov rax, 0                  ; set rax to -1
        lea rdi, [rel msg_1]        ; load the error message address to rdi
        call asm_print_str          ; call asm_print_str
        jmp .end                    ; jump to .end

    .copy_str:
        lea r9, [rdi + rdx]         ; set r9 to the start index
        sub rcx, rdx                ; set rcx to the length of the substring
        xor rbx, rbx                ; set rbx to 0

    .loop:
        cmp rbx, rcx                ; check if we reached the end index
        jge .end_succ               ; if we did, jump to .end ( end of the function )
        mov al, byte [r9+rbx]       ; load the current character to bl
        mov byte [rsi+rbx], al      ; store the character to the substring buffer
        inc rbx                     ; increment the index
        jmp .loop

    .end_succ:
        mov rax, rsi                 ; set rax to the substring buffer address

    .end:
        FUNC_END_FULL

