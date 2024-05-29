//
// Created by mellw on 5/27/24.
//

#ifndef ASMLIB_LIB_H
#define ASMLIB_LIB_H

#include <stddef.h>

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

#ifndef TRUE
    #define TRUE 1
#endif

#ifndef FALSE
    #define FALSE 0
#endif

extern void asm_assert(size_t a, size_t b, const char* msg);
extern size_t asm_execve(const char* path, char* const* argv[], char* const* env[]) __nonnull ((1, 2));
extern size_t asm_print_str(const char* str);
extern size_t asm_strlen(const char* str);
extern void asm_print_int(long num);
extern void asm_exit(long status);
extern char* asm_strcpy(char *__restrict _dest, const char *__restrict _src) __THROW __nonnull ((1, 2));
extern void* asm_malloc(size_t size);
extern void* asm_alloc(size_t size);
extern void asm_append_str(char* str, const char* str_to_append);
extern void asm_errno(const char* str);
extern size_t asm_find(const char* str, char c);
extern size_t asm_find_str_end(const char* str);
extern size_t asm_clear_str(char* str);
extern size_t asm_rm_file(const char* path) __nonnull ((1));
extern size_t asm_rm_dir(const char* path) __nonnull ((1));
extern size_t asm_mkdir(const char* path) __nonnull ((1));

extern size_t asm_add(size_t a, size_t b);
extern size_t asm_sub(size_t a, size_t b);
extern size_t asm_div(size_t a, size_t b);
extern size_t asm_mul(size_t a, size_t b);

extern size_t asm_get_cwd(char* buf, size_t size) __THROW __nonnull ((1));

extern size_t ll_strlen(const char* str);
extern size_t ll_print_str(const char* str);
extern void ll_exit(long status);
extern long ll_add(long a, long b);
extern size_t ll_sub(long a, long b);

#endif //ASMLIB_LIB_H
