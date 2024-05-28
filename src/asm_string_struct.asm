%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .bss
    ; Define the string struct fields
    str_length resq 1
    str_data resq 1

section .text
    extern malloc, free    ; Declare external malloc and free functions
    global init_string
    global set_string
    global print_string
    global asm_free

; Function to initialize the string struct
init_string:
    mov rdi, 20                  ; Allocate space for 20 characters
    call malloc
    mov [str_data], rax          ; Store the pointer in the struct
    mov rax, 0                   ; Set length to 0
    mov [str_length], rax
    ret

; Function to set the string data
; Arguments: rdi = pointer to the string struct, rsi = pointer to the source string
set_string: __FUNC_START__                  ; Load the string struct fields
    mov rbx, [rdi + str_data - str_length]  ; Load the data pointer
    mov rcx, rsi                            ; Load the source string pointer
    .copy_loop:                             ; Copy the string data
        mov al, [rcx]                       ; Load byte from source string
        mov [rbx], al                       ; Store byte in data pointer
        inc rbx                             ; Increment data pointer
        inc rcx                             ; Increment source pointer
        test al, al                         ; Check for null terminator
        jnz .copy_loop                      ; Repeat until null terminator

    sub rbx, [rdi + str_data - str_length]  ; Calculate length
    mov [rdi], rbx                          ; Set the length in the struct
    __FUNC_END__

; Function to print the string
; Arguments: rdi = pointer to the string struct
print_string:
    ; Load the string struct fields
    mov rsi, [rdi + str_data - str_length]  ; Load the data pointer
    mov rdx, [rdi]                          ; Load the length

    ; Write the string to stdout
    mov rax, 1                              ; System call number for sys_write
    mov rdi, 1                              ; File descriptor 1 (stdout)
    syscall                                 ; Call the kernel to write to stdout

    ret                                     ; Return from the function   

; Custom free function
; Arguments: rdi = pointer to the string struct
asm_free:
    ; Load the pointer to the string data
    mov rdi, [rdi + str_data - str_length]  ; Load the data pointer
    call free                               ; Call the actual free function
    ret

section .data                               ; Data section for any static data
    hello db "", NULL                       ; Define a source string