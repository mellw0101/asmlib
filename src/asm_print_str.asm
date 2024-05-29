%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .rodata
    nl db 0x0A, 0x00                    ; Newline character

section .text
    global asm_print_str, asm_printnl

asm_print_str:
    ;
    ;   Description: Prints a null-terminated string to stdout
    ;   Signature: asm_print_str(const char *str) -> size_t
    ;   Arguments: rdi = str
    ;   Returns: 0 on success, -1 on failure
    ;
    FUNC_START_FULL
    mov rsi, rdi                        ; Move the string pointer to rsi (second argument for write)
    mov rdx, 0                          ; Initialize rdx to 0 for length calculation
    .find_len:
        cmp byte [rsi + rdx], NULL      ; Compare each byte to 0 (null terminator)
        je .write_string                ; If null terminator, jump to write_string
        inc rdx                         ; Otherwise, increment rdx
        jmp .find_len                   ; Repeat until null terminator is found

    .write_string:
        mov rax, 1                      ; System call number for sys_write
        mov rdi, 1                      ; File descriptor 1 (stdout)
        syscall                         ; Make the system call

    FUNC_END_FULL


asm_printnl:
    ;
    ;   Description: Prints a newline character to stdout
    ;   Signature: asm_printnl() -> size_t
    ;   Arguments: None
    ;   Returns: 0 on success, -1 on failure
    ;
    FUNC_START_FULL
    lea rdi, [rel nl]                    ; Load the newline character into rsi
    call asm_print_str                   ; Call asm_print_str with the newline character
    FUNC_END_FULL

; asm_print_str:
;     ; Get the length of the string
;     mov rsi, rdi       ; rsi points to the string
;     xor rdx, rdx       ; zero out rdx
;     not rdx            ; set all bits in rdx to 1
;     xor al, al         ; clear al (terminating character to search for)
;     cld                ; clear direction flag
;     repnz scasb        ; find the terminating null character
;     not rcx            ; rcx now holds the length of the string

;     ; syscall write (1 = stdout, rsi = string, rcx = length)
;     mov rax, 1         ; syscall number for sys_write
;     mov rdi, 1         ; file descriptor (stdout)
;     mov rdx, rcx       ; length of the string
;     mov rsi, rsi       ; buffer (pointer to string)
;     syscall

;     ret