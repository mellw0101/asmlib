define i64 @ll_sub (i64 %a, i64 %b) {
    %sum = sub i64 %a, %b       ; sum = a - b 
    ret i64 %sum                ; return sum
}