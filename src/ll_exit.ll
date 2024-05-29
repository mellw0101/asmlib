declare void @syscall(i64, ...)
declare void @asm_print_int(i64)
declare void @asm_print_str(i8*)
declare void @ll_print_str(i8*)

; Define a static string with the correct size
@.str = global [20 x i8] c"\0All_exit: status: \00\00"
@newline = global [2 x i8] c"\0A\00"

define void @ll_exit(i64 %status) {
entry:
    call void @asm_print_str(i8* @.str)
    call void @asm_print_int(i64 %status)
    call void @asm_print_str(i8* @newline)

    call void @syscall(i64 60, i64 %status)
    ret void
}