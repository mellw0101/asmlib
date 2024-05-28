%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .data
    STRING err_msg, "Error: asm_asset: "

section .text
    global asm_assert
    extern asm_print_str

asm_assert: ; @func asm_assert(a, b) -> (bool(a == b))
    cmp rdi, rsi                ; Compare the two arguments
    jne .false                  ; If not equal, jump to assert_failed
    jmp .true                   ; Otherwise, jump to assert_passed
    .false:
        mov rdi, err_msg        ; Load the address of the error message
        call asm_print_str      ; Print the error message
    .true:
        mov rax, _EXS
        ret