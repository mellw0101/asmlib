%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .data
    error_str db "Failed to free ptr to struct", 0

section .bss
    asm_string resq 5  ; Reserve space for the struct (data pointer + 4 function pointers)

section .text
    extern asm_malloc, free, asm_exit, asm_print_str
    global asm_string_init
    global asm_string_append
    global asm_string_print
    global asm_string_free
    global asm_string_new

    ; Offsets for the struct fields
    str_data   equ 0
    str_init   equ 8
    str_append equ 16
    str_print  equ 24
    str_free   equ 32

asm_string_init:
    __FUNC_START__
    mov rdi, 20                    ; Allocate space for 20 characters
    call asm_malloc                ; Allocate memory for the string data
    mov [rsi + str_data], rax      ; Store the pointer in the struct
    ; Set function pointers
    lea rax, [rel asm_string_init]
    mov [rsi + str_init], rax
    lea rax, [rel asm_string_append]
    mov [rsi + str_append], rax
    lea rax, [rel asm_string_print]
    mov [rsi + str_print], rax
    lea rax, [rel asm_string_free]
    mov [rsi + str_free], rax
    __FUNC_END__

asm_string_append:
    __FUNC_START__
    mov rbx, [rsi + str_data]    ; Load the data pointer
    mov rcx, rdi                 ; Load the source string pointer
    .copy_loop:
        mov al, [rcx]            ; Load byte from source string
        mov [rbx], al            ; Store byte in data pointer
        inc rbx                  ; Increment data pointer
        inc rcx                  ; Increment source pointer
        test al, al              ; Check for null terminator
        jnz .copy_loop           ; Repeat until null terminator
    __FUNC_END__

asm_string_print:
    __FUNC_START__
    mov rdx, 20                 ; Assuming a fixed length for simplicity
    mov rsi, [rsi + str_data]   ; Load the data pointer
    mov rax, 1                  ; System call number for sys_write
    mov rdi, 1                  ; File descriptor 1 (stdout)
    syscall                     ; Call the kernel to write to stdout
    __FUNC_END__

asm_string_free:
    __FUNC_START__
    mov rdi, [rsi + str_data]   ; Load the data pointer
    call free                   ; Call the actual free function
    cmp rax, 0                  ; Check for errors
    jne .error                  ; If rax is not 0, an error occurred
    jmp .end                    ; Jump to end if free succeeded
    .error:
        mov rdi, error_str      ; Load the error message
        call asm_print_str      ; Print the error message
        mov rdi, 1              ; Set the exit code
        call asm_exit           ; Exit the program
    .end:
    __FUNC_END__

asm_string_new:
    __FUNC_START__
    mov rdi, 40                 ; Allocate space for the asm_string struct
    call asm_malloc
    cmp rax, 0                  ; Check for errors
    mov rsi, rax                ; Pointer to the new struct
    call asm_string_init        ; Initialize the new struct
    mov rax, rsi                ; Return the pointer to the new struct
    __FUNC_END__