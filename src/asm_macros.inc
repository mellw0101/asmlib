%ifndef ASM_MACROS_INC
%define ASM_MACROS_INC

%macro __FUNC_START__ 0
    push rbp
    mov rbp, rsp
%endmacro

%macro __FUNC_END__ 0       ; Macro to end a func call if you want to return something,
    mov rsp, rbp            ; like 1 or 0 before using this macro exec mov rax, 1 or 0
    pop rbp                 ; to move 1 or 0 to reg rax which is the return reg
    ret
%endmacro

%define NULL 0
%define NLINE 0xA
%define _EXF 1
%define _EXS 0

%macro STRING 2
    %1 db %2, NULL
%endmacro

%macro _data_STRING 2
    section .data
        %1 db %2, NULL
    section .text
%endmacro

%macro _data_STRING_2 3
    section .data
        %1 db %2, %3, NULL
    section .text
%endmacro

%macro d_str 2
    section .data
        %1 db %2, NULL
%endmacro

%macro _what_this_do 0
    push ebp
    mov ebp, esp
    mov eax, [ebp + 8]
    mov ebx, [ebp + 12]
    add eax, ebx
    pop ebp
    ret
%endmacro

%define EXIT_FAILURE 1
%define EXIT_SUCCESS 0

%define _EXF 1
%define _EXS 0



%endif