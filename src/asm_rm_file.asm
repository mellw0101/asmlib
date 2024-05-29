section .text
    global asm_rm_file


asm_rm_file:
    FUNC_START_FULL

    lea rdi, [rel, ]


    .null_terminate:
        mov byte [rdi], 0
        inc rdi
        test byte [rdi], 0xFF
        jnz .null_terminate

    .end:
        FUNC_END_FULL