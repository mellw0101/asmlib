%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"
section .text
    global asm_malloc
; Description: Allocate memory using the brk system call
asm_malloc:
    __FUNC_START__
    mov rsi, rdi        ; Save the requested size

    ; Call sbrk(0) to get the current program break
    mov rax, 12         ; syscall number for brk
    xor rdi, rdi        ; NULL pointer to get current break
    syscall             ; rax is the reg for return status
    mov rbx, rax        ; save the current break in rbx

    ; Calculate the new program break
    add rbx, rsi        ; new_brk = old_brk + size

    ; Call brk(new_brk) to set the new program break
    mov rax, 12         ; syscall number for brk
    mov rdi, rbx        ; new program break
    syscall             ; rax = exit code from syscall

    cmp rax, rbx        ; compare ( rax == rbx )
    jne .alloc_fail     ; If not equal, allocation failed

    ; Allocation successful, return the old program break
    mov rax, rbx
    sub rax, rsi
    jmp .exit

    .alloc_fail:        ; Allocation failed
        xor rax, rax    ; return NULL (0)
    .exit:
        __FUNC_END__