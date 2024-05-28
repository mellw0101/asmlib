%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .text
    global asm_strcpy

asm_strcpy:
    ; Function arguments
    ; rdi: destination string (dest)
    ; rsi: source string (src)

    __FUNC_START__
    mov rdx, rdi            ; Save the original destination pointer to return it later
    .copy_loop:
        mov al, [rsi]       ; Load the byte at the source pointer into al
        mov [rdi], al       ; Store the byte from al to the destination pointer
        inc rsi             ; Move to the next byte in the source string
        inc rdi             ; Move to the next byte in the destination string
        test al, al         ; Test if the byte is zero (null terminator)
        jnz .copy_loop      ; If not zero, continue copying
        mov rax, rdx        ; Return the original destination pointer
    __FUNC_END__