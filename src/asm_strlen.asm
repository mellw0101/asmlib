%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .text
    global asm_strlen

asm_strlen:
    xor rcx, rcx                    ; Clear rcx (this will be our counter)
    .loop:
        cmp byte [rdi + rcx], NULL  ; Load byte from string into AL
        je .done                    ; If reg rax is zero, jmp to .done:
        inc rcx                     ; Increment counter
        jmp .loop                   ; Repeat
    .done:
        xor rax, rax                ; Clear rax
        mov rax, rcx                ; Move the counter value to RAX (return reg)
        ret