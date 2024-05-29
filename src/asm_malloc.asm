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


section .text
    global asm_alloc

asm_alloc:
    ; Description: Allocate memory using mmap
    ; Arguments:
    ; rdi: size of the memory to allocate
    ; Returns:
    ; rax: pointer to the allocated memory, or -1 on failure

    ; Constants for mmap syscall
    %define PROT_READ   0x1
    %define PROT_WRITE  0x2
    %define MAP_PRIVATE 0x02
    %define MAP_ANONYMOUS 0x20
    %define SYS_MMAP 9

    ; Save registers
    push rdi
    push rsi
    push rdx
    push r10
    push r8
    push r9

    ; Set up arguments for mmap
    mov rax, SYS_MMAP                       ; syscall number for mmap
    xor rdi, rdi                            ; address (0 means let the kernel choose the address)
    mov rsi, rdi                            ; size (already in rdi)
    mov rdx, PROT_READ | PROT_WRITE         ; protection flags (read/write)
    mov r10, MAP_PRIVATE | MAP_ANONYMOUS    ; flags
    xor r8, r8                              ; file descriptor (0 means not backed by any file)
    xor r9, r9                              ; offset (0 means start at the beginning of the file/page)

    syscall                                 ; make the syscall

    ; Restore registers
    pop r9
    pop r8
    pop r10
    pop rdx
    pop rsi
    pop rdi

    ret                    ; return to caller