; Register Documentation

; General Purpose Registers
; - RAX: Accumulator
; - RBX: Base register
; - RCX: Counter
; - RDX: Data register
; - RSI: Source index
; - RDI: Destination index
; - RBP: Base pointer
; - RSP: Stack pointer
; - R8-R15: Additional general purpose registers

; Segment Registers
; - CS: Code segment
; - DS: Data segment
; - SS: Stack segment
; - ES: Extra segment
; - FS: Additional segment
; - GS: Additional segment

; Flags Register
; - CF: Carry flag
; - PF: Parity flag
; - AF: Auxiliary carry flag
; - ZF: Zero flag
; - SF: Sign flag
; - OF: Overflow flag

; Pointer Documentation

; Memory Pointers
; - PTR: Pointer to a memory location

; Stack Pointers
; - SP: Stack pointer
; - BP: Base pointer

; Instruction Pointer
; - IP: Instruction pointer

; Data Pointers
; - SI: Source index
; - DI: Destination index

; Segment Pointers
; - CS: Code segment
; - DS: Data segment
; - SS: Stack segment
; - ES: Extra segment
; - FS: Additional segment
; - GS: Additional segment


; Stack frame:
;   [rbp - 8] = return address
;   [rbp] = function    
;   [rbp + 8] = first argument
;   [rbp + 16] = second argument
;   [rbp + 24] = third argument
;   [rbp + 32] = fourth argument
;   [rbp + 40] = fifth argument
;   [rbp + 48] = sixth argument
;   [rbp + 56] = seventh argument
;   [rbp + 64] = eighth argument
;   [rbp + 72] = ninth argument
;   [rbp + 80] = tenth argument
;
; Registers:
;   rdi = a
;   rsi = b
;   rdx = c
;   rcx = d
;   r8 = e
;   r9 = f
;   rbp = function
;   rax = return register, ret return the value in rax
;
;   [rbp] = return address
;   [rbp + 8] = function
;   [rbp + 16] = first argument
;   [rbp + 24] = second argument
;   [rbp + 32] = third argument
;   [rbp + 40] = fourth argument
;
; Instructions:
;   mov rax, rdi    ; rax = a
;   add rax, rsi    ; rax += b
;   add rax, rdx    ; rax += c
;   add rax, rcx    ; rax += d
;   add rax, r8     ; rax += e
;   add rax, r9     ; rax += f
;   ret             ; return register rax
;
; How to write the string to stdout
;    mov rax, 1                  ; System call number for sys_write
;    mov rdi, 1                  ; File descriptor 1 (stdout)
;    mov rsi, msg                ; Address of the string
;    mov rdx, msg_len            ; Length of the string
;    syscall                     ; Make the system call