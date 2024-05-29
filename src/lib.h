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


#ifdef __cplusplus
extern "C" {
#endif

extern size_t asm_assert(size_t a, size_t b, const char* msg);
#ifndef asmassert
    #define asmassert(statement) asm_assert(statement, TRUE, #statement)
#endif
extern size_t asm_execve(const char* path, char* const* argv[], char* const* env[]) __nonnull ((1, 2));
extern size_t asm_print_str(const char* str);
extern size_t asm_printf(const char* str, ...);
extern size_t asm_print_char(char c);
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
extern size_t asm_mkdir(const char* path, size_t mode) __nonnull ((1));
extern size_t asm_cd(const char* path) __nonnull ((1));
// extern size_t asm_chmod(const char* path, size_t mode) __nonnull ((1));
extern size_t asm_open_file(const char* path, size_t flags, size_t mode) __nonnull ((1));
extern size_t asm_touch(const char* path) __nonnull ((1));
extern size_t asm_write(size_t fd, void* buf, size_t count) __nonnull ((2));

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

#ifdef __cplusplus
}
#endif

#endif //ASMLIB_LIB_H
