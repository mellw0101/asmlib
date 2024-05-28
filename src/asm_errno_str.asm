%include "/home/mellw/CLionProjects/asmlib/src/asm_macros.inc"

section .text
    extern strerror, errno   ; Declare external functions/variables
    global errno_str         ; Declare the function as global

errno_str:
    __FUNC_START__

    ; Get the address of the current errno value
    extern errno
    mov rdi, [rel errno]     ; Load the address of errno
    mov rdi, [rdi]           ; Load the value of errno into rdi

    ; Call strerror with the current errno value
    call strerror            ; Call strerror(rdi)

    ; The address of the error message string is now in rax
    ; This will be the return value of the function

    __FUNC_END__