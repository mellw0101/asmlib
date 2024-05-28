; strcpy.ll
; Define the strcpy function that takes two i8* (char pointers) and returns an i8* (char pointer)
define i8* @strcpy(i8* %dest, i8* %src) {
entry:
    ; Allocate space for the pointers
    %dest_ptr = alloca i8*, align 8
    %src_ptr = alloca i8*, align 8

    ; Store the function arguments in the allocated space
    store i8* %dest, i8** %dest_ptr, align 8
    store i8* %src, i8** %src_ptr, align 8

    ; Load the pointers
    %d = load i8*, i8** %dest_ptr, align 8
    %s = load i8*, i8** %src_ptr, align 8

    br label %loop

loop: ; Loop to copy each character
    %curr_src = load i8, i8* %s, align 1
    %is_end = icmp eq i8 %curr_src, 0
    br i1 %is_end, label %end, label %copy

copy: ; Copy each character from src to dest
    store i8 %curr_src, i8* %d, align 1
    ; Increment the pointers
    %next_d = getelementptr i8, i8* %d, i32 1
    %next_s = getelementptr i8, i8* %s, i32 1
    ; Update the pointers
    store i8* %next_d, i8** %dest_ptr, align 8
    store i8* %next_s, i8** %src_ptr, align 8
    ; Reload the pointers
    %d = load i8*, i8** %dest_ptr, align 8
    %s = load i8*, i8** %src_ptr, align 8
    br label %loop

end: ; End of the loop
    ; Null-terminate the destination string
    store i8 0, i8* %d, align 1
    ; Return the destination pointer
    ret i8* %dest
}