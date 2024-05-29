%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .text
    global asm_printf
    extern asm_print_str, asm_print_int

asm_printf:
    ; Save registers
    push rsi
    push rdx
    push rcx
    push r8
    push r9
    push r10
    push r11

    .next_char:
        lodsb                    ; load next byte from rsi into al
        test al, al              ; test if al is 0 (end of string)
        jz .done                 ; if end of string, jump to .done

        cmp al, '%'              ; check if the character is '%'
        jne .print_char          ; if not, print the character

        ; Handle format specifiers
        lodsb                    ; load next byte from rsi into al
        cmp al, 's'              ; check if the specifier is '%s'
        je .print_string         ; if so, jump to print string
        cmp al, 'd'              ; check if the specifier is '%d'
        je .print_integer        ; if so, jump to print integer
        cmp al, 'c'              ; check if the specifier is '%c'
        je .print_character      ; if so, jump to print character

    .print_char:
        mov rdi, rax             ; move the character to rdi
        call asm_print_char      ; print the character
        jmp .next_char           ; continue to next character

    .print_string:
        mov rdi, [rsp + 8]       ; load the address of the next argument
        call asm_print_str       ; print the string
        add rsp, 8               ; adjust stack pointer
        jmp .next_char           ; continue to next character

    .print_integer:
        mov rdi, [rsp + 8]       ; load the integer from the stack
        call asm_print_int       ; print the integer
        add rsp, 8               ; adjust stack pointer
        jmp .next_char           ; continue to next character

    .print_character:
        mov dil, byte [rsp + 8]  ; load the character from the stack into dil
        call asm_print_char      ; print the character
        add rsp, 8               ; adjust stack pointer
        jmp .next_char           ; continue to next character

    .done:
        ; Restore registers
        pop r11
        pop r10
        pop r9
        pop r8
        pop rcx
        pop rdx
        pop rsi

        ret

asm_print_char:
    ; Print a single character from dil
    push rsi

    mov rax, 1          ; syscall number for sys_write
    mov rdi, 1          ; file descriptor for stdout
    mov rsi, rdi        ; rsi already has the character

    mov rdx, 1          ; length is 1 byte
    syscall             ; make the syscall

    pop rsi
    ret