define i32 @ll_add(i32 %a, i32 %b) {
entry:
    ; Add the two input parameters
    %sum = add i32 %a, %b

    ; Return the result
    ret i32 %sum
}