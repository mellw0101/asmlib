cmake_minimum_required(VERSION 3.29)
project(asmlib C)

set(CMAKE_C_STANDARD 23)

# Defined cmake functions !!!
function(assemble_asm_file file_prefix_name)
    message(STATUS "asm function def: ${file_prefix_name}")

    set(asm_src ${CMAKE_SOURCE_DIR}/src/${file_prefix_name}.asm)
    set(asm_obj ${CMAKE_SOURCE_DIR}/obj/${file_prefix_name}.o)

    add_custom_command(
        OUTPUT ${asm_obj}
        COMMAND nasm -f elf64 -o ${asm_obj} ${asm_src}
        DEPENDS ${asm_src} ${CMAKE_SOURCE_DIR}/src/asm_macros.inc
        COMMENT "Compiling NASM source file: ${asm_src} to ${asm_obj}"
    )

    add_custom_target(
        ${file_prefix_name} ALL
        DEPENDS ${asm_obj}
    )
endfunction()

function(assemble_asm_files file_prefixes)
    foreach(file_prefix ${file_prefixes})
        assemble_asm_file(${file_prefix})
    endforeach()
endfunction()

function(check_folder include_path)
    if(NOT EXISTS ${include_path})
        message(FATAL_ERROR "Folder ${include_path} does not exist")
    else()
        message(STATUS "Folder ${include_path} exists")
    endif()
endfunction()

function(compile_ll_to_o file_prefix_name)
    message(STATUS "ll function def: ${file_prefix_name}")

    set(ll_src ${CMAKE_SOURCE_DIR}/src/${file_prefix_name}.ll)
    set(o_obj ${CMAKE_SOURCE_DIR}/obj/${file_prefix_name}.o)

    add_custom_command(
        OUTPUT ${o_obj}
        COMMAND llc -filetype=obj -o ${o_obj} ${ll_src}
        DEPENDS ${ll_src}
        COMMENT "Compiling LLVM source file: ${ll_src} to ${o_obj}"
    )

    add_custom_target(
        ${file_prefix_name} ALL
        DEPENDS ${o_obj}
    )
endfunction()

# Check if the include path exists
check_folder(${CMAKE_SOURCE_DIR}/obj)
check_folder(${CMAKE_SOURCE_DIR}/src)

compile_ll_to_o(ll_strlen)
compile_ll_to_o(ll_print_str)
compile_ll_to_o(ll_exit)
compile_ll_to_o(ll_add)
compile_ll_to_o(ll_sub)

# List of assembly files without extension
set(asm_files
    asm_strlen
    asm_print_str
    asm_execve
    asm_assert
    asm_strcpy
    asm_print_int
    asm_malloc
    asm_append_str
    asm_exit
    asm_string_struct
    asm_add
    asm_sub
    asm_mul
    asm_div
)

# Call the function with the list of assembly files
assemble_asm_files("${asm_files}")

set(LIB_HEADERS
    ${CMAKE_SOURCE_DIR}/src/lib.h
    ${CMAKE_SOURCE_DIR}/src/asm_string.h
)

# Create the static library
file(GLOB CLIB_SOURCES
    ${CMAKE_SOURCE_DIR}/obj/*.o
)

add_library(asmlib STATIC
    ${CMAKE_SOURCE_DIR}/src/lib.c
    ${CMAKE_SOURCE_DIR}/obj/asm_assert.o
    ${CMAKE_SOURCE_DIR}/obj/asm_execve.o
    ${CMAKE_SOURCE_DIR}/obj/asm_print_str.o
    ${CMAKE_SOURCE_DIR}/obj/asm_strlen.o
    ${CMAKE_SOURCE_DIR}/obj/asm_strcpy.o
    ${CMAKE_SOURCE_DIR}/obj/asm_print_int.o
    ${CMAKE_SOURCE_DIR}/obj/asm_malloc.o
    ${CMAKE_SOURCE_DIR}/obj/asm_append_str.o
    ${CMAKE_SOURCE_DIR}/obj/asm_exit.o
    ${CMAKE_SOURCE_DIR}/obj/asm_string_struct.o

    ${CMAKE_SOURCE_DIR}/obj/asm_add.o
    ${CMAKE_SOURCE_DIR}/obj/asm_sub.o
    ${CMAKE_SOURCE_DIR}/obj/asm_mul.o
    ${CMAKE_SOURCE_DIR}/obj/asm_div.o

    ${CMAKE_SOURCE_DIR}/obj/ll_strlen.o
    ${CMAKE_SOURCE_DIR}/obj/ll_print_str.o
    ${CMAKE_SOURCE_DIR}/obj/ll_exit.o
    ${CMAKE_SOURCE_DIR}/obj/ll_add.o
    ${CMAKE_SOURCE_DIR}/obj/ll_sub.o
)

install(FILES ${LIB_HEADERS} # Install the header files
    DESTINATION include/asmlib/
)

install(TARGETS asmlib
    LIBRARY DESTINATION lib
    RUNTIME DESTINATION bin
    ARCHIVE DESTINATION lib
)
