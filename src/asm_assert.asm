%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .text
    global asm_assert
    extern asm_print_str

asm_assert: ; @func asm_assert(a, b) -> (bool(a == b))
    __FUNC_START__
    cmp rdi, rsi                ; Compare the two arguments
    jne .false                  ; If not equal, jump to assert_failed
    jmp .true                   ; Otherwise, jump to assert_passed
    .false:
        mov rdi, rdx            ; Load the address of the error message
        call asm_print_str      ; Print the error message
        mov rax, _EXF           ; Load the exit code for failure
        jmp .exit               ; Jump to the exit

    .true:
        mov rax, _EXS

    .exit
        __FUNC_END__
