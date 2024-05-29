; ll_strcpy.ll
define i8* @ll_strcpy(i8* %dest, i8* %src) {             ; Define the strcpy function that takes two i8* (char pointers) and returns an i8* (char pointer)
entry:
      %dest_ptr = alloca i8*, align 8                 ; Allocate space for the destination pointer
      %src_ptr = alloca i8*, align 8                  ; Allocate space for the source pointer
      store i8* %dest, i8** %dest_ptr, align 8        ; Store the function arguments in the allocated space
      store i8* %src, i8** %src_ptr, align 8          ; Store the function arguments in the allocated space
      %d = load i8*, i8** %dest_ptr, align 8          ; Load the destination pointer
      %s = load i8*, i8** %src_ptr, align 8           ; Load the source pointer
      br label %loop                                  ; Branch to the loop
loop:
      %curr_src = load i8, i8* %s, align 1            ; Load the current character from the source
      %is_end = icmp eq i8 %curr_src, 0               ; Check if the current character is null
      br i1 %is_end, label %end, label %copy          ; Branch to the end if the current character is null, otherwise copy the character
copy:
      store i8 %curr_src, i8* %d, align 1             ; Store the current character in the destination
      %next_d = getelementptr i8, i8* %d, i32 1       ; Get the next destination pointer
      %next_s = getelementptr i8, i8* %s, i32 1       ; Get the next source pointer
      store i8* %next_d, i8** %dest_ptr, align 8      ; Store the next destination pointer
      store i8* %next_s, i8** %src_ptr, align 8       ; Store the next source pointer
      %d = load i8*, i8** %dest_ptr, align 8          ; Load the next destination pointer
      %s = load i8*, i8** %src_ptr, align 8           ; Load the next source pointer
      br label %loop                                  ; Branch back to the loop
end:
      store i8 0, i8* %d, align 1                     ; Store a null character at the end of the destination string
      ret i8* %dest                                   ; Return the destination pointer
}