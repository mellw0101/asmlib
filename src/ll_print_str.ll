; External function declarations
declare i64 @write(i32, i8*, i64)                               ; syscall write declaration
declare i64 @ll_strlen(i8*)                                     ; ll_strlen declaration
declare void @asm_strcpy(i8*, i8*)                              ; asm_strcpy declaration

define i64 @ll_print_str(i8* %str) {                           ; Function definition
entry:                                                          ; Entry block
    %str_len = call i64 @ll_strlen(i8* %str)                    ; Call the strlen function
    %str_ptr = alloca i8, i64 %str_len                          ; Allocate memory for the string
    call void @asm_strcpy(i8* %str_ptr, i8* %str)               ; Call the strcpy function
    %call = call i64 @write(i32 1, i8* %str_ptr, i64 %str_len)  ; Call the write syscall`
    ret i64 %call                                               ; Return the result
}