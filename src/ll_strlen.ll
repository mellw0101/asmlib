; strlen.ll
; Define the strlen function that takes a pointer to a char and returns an i32
define i32 @strlen(i8* %str) {
entry:
    ; Initialize the length to 0
    %length = alloca i32, align 4
    store i32 0, i32* %length, align 4

    ; Pointer to the current character
    %ptr = alloca i8*, align 8
    store i8* %str, i8** %ptr, align 8

    br label %loop

loop: ; Loop to iterate over the string
    %curr_ptr = load i8*, i8** %ptr, align 8
    %curr_char = load i8, i8* %curr_ptr, align 1
    %is_end = icmp eq i8 %curr_char, 0
    br i1 %is_end, label %end, label %body

body: ; Body of the loop
    ; Increment the length
    %curr_length = load i32, i32* %length, align 4
    %new_length = add i32 %curr_length, 1
    store i32 %new_length, i32* %length, align 4

    ; Move to the next character
    %next_ptr = getelementptr i8, i8* %curr_ptr, i32 1
    store i8* %next_ptr, i8** %ptr, align 8

    br label %loop

end: ; End of the loop
    %final_length = load i32, i32* %length, align 4
    ret i32 %final_length
}