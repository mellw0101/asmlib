%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .rodata
    error_msg db "Assertion falied, Statement: ", 0
    false_msg db " is false", 0
    new_line db 10, 0

section .text
    global asm_assert
    extern asm_print_str

asm_assert:                         ; @func asm_assert(a, b) -> (bool(a == b))
    FUNC_START_FULL
    mov r9, rdx                     ; Save the third argument
    cmp rdi, rsi                    ; Compare the two arguments
    jne .false                      ; If not equal, jump to assert_failed
    jmp .true                       ; Otherwise, jump to assert_passed
    .false:
        lea rdi, [rel error_msg]    ; Load the error message
        call asm_print_str          ; Print the error message
        mov rdi, r9                 ; Load the third argument that we saved
        call asm_print_str          ; Print the first argument
        lea rdi, [rel false_msg]    ; Load the false message
        call asm_print_str          ; Print the false message
        lea rdi, [rel new_line]     ; Load the new line character
        call asm_print_str          ; Print the new line character
        mov rax, _EXF               ; Load the exit code for failure
        jmp .exit                   ; Jump to the exit

    .true:
        mov rax, _EXS               ; Load the exit code for success

    .exit:
        FUNC_END_FULL
