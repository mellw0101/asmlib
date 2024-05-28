%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .bss
    memory_pool resb 1024       ; Reserve 1024 bytes for a memory pool
    free_list   resq 1          ; Pointer to the free list

section .data
    error_str db "Failed to free ptr to struct", 0

section .text
    global asm_malloc, asm_free, asm_memory_init
    extern asm_print_str, asm_exit

; Initializes the memory allocator by setting up the free list
asm_memory_init:
    mov rax, memory_pool
    mov [free_list], rax
    mov qword [rax], 1024   ; The initial free block size
    ret

; Allocates a block of memory from the memory pool
; Arguments: rdi = size
; Returns: rax = pointer to allocated memory, or 0 if failed
asm_malloc:
    __FUNC_START__
    ; Align requested size to 8 bytes
    add rdi, 7
    and rdi, -8

    mov rbx, [free_list]
    mov rdx, 0               ; Pointer to previous block in the free list

    .find_block:
        test rbx, rbx
        jz .fail                 ; If no suitable block found, fail
        mov rcx, [rbx]
        cmp rcx, rdi
        jae .found               ; Found a suitable block

    mov rdx, rbx
    mov rbx, [rbx + 8]
    jmp .find_block

    .found:
        ; If the block is much larger than requested, split it
        sub rcx, rdi
        cmp rcx, 16
        jl .use_whole_block

    mov rsi, rbx
    add rsi, rdi
    mov [rsi], rcx
    mov [rbx], rdi
    mov [rsi + 8], rax
    mov [rbx + 8], rsi
    jmp .allocate

    .use_whole_block:
        ; Remove the block from the free list
        mov rsi, [rbx + 8]
        test rdx, rdx
        jz .update_free_list
        mov [rdx + 8], rsi
        jmp .allocate

    .update_free_list:
        mov [free_list], rsi

    .allocate:
        mov rax, rbx
        add rax, 8              ; Return the pointer after the header
        jmp .exit  

    .fail:
        mov rax, 0

    .exit:
        leave
        __FUNC_END__
        

; Frees a block of memory
; Arguments: rdi = pointer to memory to free
asm_free:
    __FUNC_START__
    ; Adjust pointer to include header
    sub rdi, 8

    ; Simple validation check (ensure pointer is within the pool)
    lea rax, [rel memory_pool]
    cmp rdi, rax
    jb .error
    lea rax, [rel memory_pool + 1024]
    cmp rdi, rax
    jae .error

    ; Insert the block back into the free list
    lea rbx, [rel free_list]
    mov rbx, [rbx]
    mov [rdi + 8], rbx
    lea rbx, [rel free_list]
    mov [rbx], rdi
    jmp .done

    .error:
        lea rdi, [rel error_str]
        call asm_print_str
        mov rdi, 1
        call asm_exit

    .done:
        leave
        __FUNC_END__