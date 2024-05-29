; ll_strlen.ll
define i32 @ll_strlen(i8* %str) {                       ; Define the strlen function that takes a pointer to a char and returns an i32
entry:                                                  ; Initialize the length to 0
    %length = alloca i32, align 4                       ; Allocate space for the length variable
    store i32 0, i32* %length, align 4                  ; Store 0 in the length variable
    %ptr = alloca i8*, align 8                          ; Allocate space for the pointer to the current character
    store i8* %str, i8** %ptr, align 8                  ; Store the pointer to the first character in the string
    br label %loop                                      ; Branch to the loop
loop:                                                   ; Loop to iterate over the string
    %curr_ptr = load i8*, i8** %ptr, align 8            ; Load the pointer to the current character
    %curr_char = load i8, i8* %curr_ptr, align 1        ; Load the current character
    %is_end = icmp eq i8 %curr_char, 0                  ; Check if the current character is the null terminator
    br i1 %is_end, label %end, label %body              ; Branch to the end if the current character is the null terminator
body:                                                   ; Body of the loop
    %curr_length = load i32, i32* %length, align 4      ; Load the current length
    %new_length = add i32 %curr_length, 1               ; Increment the length by 1
    store i32 %new_length, i32* %length, align 4        ; Store the new length
    %next_ptr = getelementptr i8, i8* %curr_ptr, i32 1  ; Get the pointer to the next character
    store i8* %next_ptr, i8** %ptr, align 8             ; Store the pointer to the next character
    br label %loop                                      ; Branch to the loop      
end:                                                    ; End of the loop
    %final_length = load i32, i32* %length, align 4     ; Load the final length
    ret i32 %final_length                               ; Return the final length                       
}