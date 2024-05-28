#ifndef ASM_STRING_H
#define ASM_STRING_H

#ifdef __cplusplus
extern "C" {
#endif

struct asm_string {
    void* data;

    void (*init)(struct asm_string* self);
    void (*append)(struct asm_string* self, const char* str_to_append);
    void (*print)(struct asm_string* self);
    void (*free)(struct asm_string* self);
};

extern void asm_string_init(struct asm_string* self);
extern void asm_string_append(struct asm_string* self, const char* str_to_append);
extern void asm_string_print(struct asm_string* self);
extern void asm_string_free(struct asm_string* self);
extern struct asm_string* asm_string_new(void);

#ifdef __cplusplus
}
#endif

#endif // ASM_STRING_H