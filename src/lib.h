//
// Created by mellw on 5/27/24.
//

#ifndef ASMLIB_LIB_H
#define ASMLIB_LIB_H

#include <stddef.h>

extern void asm_assert(size_t a, size_t b);
extern size_t asm_execve(const char* path, char* const* argv[], char* const* env[]);
extern size_t asm_print_str(const char* str);
extern size_t asm_strlen(const char* str);
extern void asm_print_int(long num);

// Custom attributes for GCC
#ifndef __THROW
    #define __THROW
#endif

#ifndef __nonnull
    #define __nonnull(params) __attribute__((nonnull params))
#endif

#ifndef EXIT_FAILURE
    #define  EXIT_FAILURE 1
#endif

#ifndef EXIT_SUCCESS
    #define  EXIT_SUCCESS 0
#endif

extern void asm_exit(long status);
extern char* asm_strcpy(char *__restrict _dest, const char *__restrict _src) __THROW __nonnull ((1, 2));
extern void* asm_malloc(size_t size);
extern void asm_append_str(char* str, const char* str_to_append);
extern size_t ll_strlen(const char* str);

//extern size_t asm_add(size_t a, size_t b);
//extern size_t asm_sub(size_t a, size_t b);
//extern size_t asm_div(size_t a, size_t b);
//extern size_t asm_mul(size_t a, size_t b);
//extern void asm_exit_SUCCESS(void);
//extern void asm_exit_FAILURE(void);
//extern void asm_assert_str_msg(size_t a, size_t b, const chsar* msg);
//extern char* asm_strcpy(char *__restrict __dest, const char *__restrict __src) __THROW __nonnull ((1, 2));


#endif //ASMLIB_LIB_H
