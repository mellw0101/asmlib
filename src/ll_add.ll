define i32 @ll_add(i32 %a, i32 %b) {
entry:
    %sum = add i32 %a, %b ; add the two arguments
    ret i32 %sum          ; return the result
}