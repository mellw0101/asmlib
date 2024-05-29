; Register Documentation

; General Purpose Registers
; - RAX:    ;   Accumulator register (Return value), also used for I/O port access, arithmetic operations, and interrupt calls, size 64 bits (8 bytes)
; - RBX:    ;   Base register (General purpose), used as a pointer to data, size 64 bits (8 bytes)
; - RCX:    ;   Counter register, used for loop control, shift/rotate operations, and as a counter for string and memory operations, size 64 bits (8 bytes)
; - RDX:    ;   Data register (General purpose), used as an I/O pointer, size 64 bits (8 bytes)
; - RSI:    ;   Source index (General purpose), used as a pointer to a source in stream operations, size 64 bits (8 bytes)
; - RDI:    ;   Destination index (General purpose), used as a pointer to a destination in stream operations, size 64 bits (8 bytes)
; - RBP:    ;   Base pointer (General purpose), used as a reference to the base of the stack, size 64 bits (8 bytes)
; - RSP:    ;   Stack pointer (General purpose), used as a reference to the top of the stack, size 64 bits (8 bytes)
; - R8-R15: ;   Additional general purpose registers (General purpose), size 64 bits (8 bytes)

; Segment Registers (16 bits)
; - CS: Code segment            ;   Contains the base address of the code segment
; - DS: Data segment            ;   Contains the base address of the data segment
; - SS: Stack segment           ;   Contains the base address of the stack segment
; - ES: Extra segment           ;   Contains the base address of an extra segment
; - FS: Additional segment      ;   Contains the base address of an additional segment
; - GS: Additional segment      ;   Contains the base address of an additional segment

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


; rbp:  ; Base Pointer Register (64 bits) - Used as a reference to the base of the stack
;       ;
; rbp   ; Entire 64-bit register
; ebp   ; Lower 32 bits of rbp
; bp    ; Lower 16 bits of rbp
; bpl   ; Lower 8 bits of rbp


; rsi   ; Source Index Register (64 bits) - Used as a pointer to a source in stream operations (e.g., string operations)
;       ;
; rsi   ; Entire 64-bit register
; esi   ; Lower 32 bits of rsi
; si    ; Lower 16 bits of rsi
; sil   ; Lower 8 bits of rsi


; rdi   ; Destination Index Register (64 bits) - Used as a pointer to a destination in stream operations (e.g., string operations)
;       ;
; rdi   ; Entire 64-bit register
; edi   ; Lower 32 bits of rdi
; di    ; Lower 16 bits of rdi
; dil   ; Lower 8 bits of rdi


; rdx:  ; Data Register (64 bits) - Used as an I/O pointer
;       ;
; rdx   ; Entire 64-bit register
; edx   ; Lower 32 bits of rdx
; dx    ; Lower 16 bits of rdx
; dl    ; Lower 8 bits of rdx


; rax:  ; Return Value Register (64 bits) - Used to store the return value of a function
;       ;
; rax   ; Entire 64-bit register
; eax   ; Lower 32 bits of rax
; ax    ; Lower 16 bits of rax
; al    ; Lower 8 bits of rax

; r8    ; Additional General Purpose Register (64 bits)
; r9    ; Additional General Purpose Register (64 bits)
; r10   ; Additional General Purpose Register (64 bits)
; r11   ; Additional General Purpose Register (64 bits)
; r12   ; Additional General Purpose Register (64 bits)
; r13   ; Additional General Purpose Register (64 bits)
; r14   ; Additional General Purpose Register (64 bits)
; r15   ; Additional General Purpose Register (64 bits)

; jmp   ; Jump Instruction - Unconditional jump to a specified address
;       ;
; jmp label  ; Jump to the specified label
; jmp address  ; Jump to the specified address

; je    ; Jump if Equal - Jump if the Zero Flag (ZF) is set
;       ;
; je label  ; Jump to the specified label if ZF is set

; jne   ; Jump if Not Equal - Jump if the Zero Flag (ZF) is not set
;       ;
; jne label  ; Jump to the specified label if ZF is not set

; jg    ; Jump if Greater - Jump if the Zero Flag (ZF) is not set and the Sign Flag (SF) equals the Overflow Flag (OF)
;       ;
; jg label  ; Jump to the specified label if ZF is not set and SF equals OF

; jge   ; Jump if Greater or Equal - Jump if the Sign Flag (SF) equals the Overflow Flag (OF)
;       ;
; jge label  ; Jump to the specified label if SF equals OF

; jl    ; Jump if Less - Jump if the Sign Flag (SF) does not equal the Overflow Flag (OF)
;       ;
; jl label  ; Jump to the specified label if SF does not equal OF

; jle   ; Jump if Less or Equal - Jump if the Zero Flag (ZF) is set or the Sign Flag (SF) does not equal the Overflow Flag (OF)
;       ;
; jle label  ; Jump to the specified label if ZF is set or SF does not equal OF

; jo    ; Jump if Overflow - Jump if the Overflow Flag (OF) is set

; jno   ; Jump if Not Overflow - Jump if the Overflow Flag (OF) is not set

; js    ; Jump if Sign - Jump if the Sign Flag (SF) is set

; jns   ; Jump if Not Sign - Jump if the Sign Flag (SF) is not set

; jc    ; Jump if Carry - Jump if the Carry Flag (CF) is set

; jnc   ; Jump if Not Carry - Jump if the Carry Flag (CF) is not set

; jz    ; Jump if Zero - Jump if the Zero Flag (ZF) is set

; jnz   ; Jump if Not Zero - Jump if the Zero Flag (ZF) is not set 

; call  ; Call Instruction - Call a function or subroutine

; ret   ; Return Instruction - Return from a function or subroutine

; mov   ; Move Instruction - Move data from one location to another

; add   ; Add Instruction - Add two values

; sub   ; Subtract Instruction - Subtract two values

; mul   ; Multiply Instruction - Multiply two values

; div   ; Divide Instruction - Divide two values

; inc   ; Increment Instruction - Increment a value by 1

; dec   ; Decrement Instruction - Decrement a value by 1

; cmp   ; Compare Instruction - Compare two values

; test  ; Test Instruction - Perform a bitwise AND operation

; and   ; AND Instruction - Perform a bitwise AND operation

; or    ; OR Instruction - Perform a bitwise OR operation

; xor   ; XOR Instruction - Perform a bitwise XOR operation

; shl   ; Shift Left Instruction - Shift the bits of a value to the left

; shr   ; Shift Right Instruction - Shift the bits of a value to the right\

; push  ; Push Instruction - Push a value onto the stack

; pop   ; Pop Instruction - Pop a value from the stack

; syscall ; System Call Instruction - Make a system call

; lea   ; Load Effective Address Instruction - Load the effective address of a memory location

; nop   ; No Operation Instruction - Do nothing

; int   ; Interrupt Instruction - Generate a software interrupt

; hlt   ; Halt Instruction - Halt the processor

; loop  ; Loop Instruction - Loop a specified number of times

; rep   ; Repeat Instruction - Repeat a string operation

; movzx ; Move with Zero-Extend Instruction - Move with zero extension

; movsx ; Move with Sign-Extend Instruction - Move with sign extension

; movsb ; Move Byte Instruction - Move a byte from one location to another

; movsw ; Move Word Instruction - Move a word from one location to another

; movsd ; Move Doubleword Instruction - Move a doubleword from one location to another

; movsq ; Move Quadword Instruction - Move a quadword from one location to another

; movsbq ; Move Sign-Extended Byte Instruction - Move a sign-extended byte from one location to another

; movswq ; Move Sign-Extended Word Instruction - Move a sign-extended word from one location to another

; movslq ; Move Sign-Extended Doubleword Instruction - Move a sign-extended doubleword from one location to another

; movsxd ; Move Doubleword with Sign-Extend Instruction - Move a doubleword with sign extension

; movabs ; Move Immediate to Register Instruction - Move an immediate value to a register

; movaps ; Move Aligned Packed Single-Precision Floating-Point Values Instruction - Move aligned packed single-precision floating-point values

; movapd ; Move Aligned Packed Double-Precision Floating-Point Values Instruction - Move aligned packed double-precision floating-point values

; movups ; Move Unaligned Packed Single-Precision Floating-Point Values Instruction - Move unaligned packed single-precision floating-point values

; movupd ; Move Unaligned Packed Double-Precision Floating-Point Values Instruction - Move unaligned packed double-precision floating-point values

; movntps ; Move Aligned Packed Single-Precision Floating-Point Values with Non-Temporal Hint Instruction - Move aligned packed single-precision floating-point values with non-temporal hint

; movntpd ; Move Aligned Packed Double-Precision Floating-Point Values with Non-Temporal Hint Instruction - Move aligned packed double-precision floating-point values with non-temporal hint

; movdqa ; Move Aligned Double Quadword Instruction - Move aligned double quadword

; movdqu ; Move Unaligned Double Quadword Instruction - Move unaligned double quadword
