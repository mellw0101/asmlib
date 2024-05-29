%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .text
    global asm_print_char

; Function to print a character
asm_print_char:         ; rdi = char to print
    FUNC_START_FULL
    FUNC_END_FULL
