# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mellw/CLionProjects/asmlib

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mellw/CLionProjects/asmlib/build

# Include any dependencies generated for this target.
include CMakeFiles/asmlib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/asmlib.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/asmlib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/asmlib.dir/flags.make

/home/mellw/CLionProjects/asmlib/obj/asm_assert.o: /home/mellw/CLionProjects/asmlib/src/asm_assert.asm
/home/mellw/CLionProjects/asmlib/obj/asm_assert.o: /home/mellw/CLionProjects/asmlib/src/asm_macros.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Compiling NASM source file: /home/mellw/CLionProjects/asmlib/src/asm_assert.asm to /home/mellw/CLionProjects/asmlib/obj/asm_assert.o"
	nasm -f elf64 -o /home/mellw/CLionProjects/asmlib/obj/asm_assert.o /home/mellw/CLionProjects/asmlib/src/asm_assert.asm

/home/mellw/CLionProjects/asmlib/obj/asm_execve.o: /home/mellw/CLionProjects/asmlib/src/asm_execve.asm
/home/mellw/CLionProjects/asmlib/obj/asm_execve.o: /home/mellw/CLionProjects/asmlib/src/asm_macros.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Compiling NASM source file: /home/mellw/CLionProjects/asmlib/src/asm_execve.asm to /home/mellw/CLionProjects/asmlib/obj/asm_execve.o"
	nasm -f elf64 -o /home/mellw/CLionProjects/asmlib/obj/asm_execve.o /home/mellw/CLionProjects/asmlib/src/asm_execve.asm

/home/mellw/CLionProjects/asmlib/obj/asm_print_str.o: /home/mellw/CLionProjects/asmlib/src/asm_print_str.asm
/home/mellw/CLionProjects/asmlib/obj/asm_print_str.o: /home/mellw/CLionProjects/asmlib/src/asm_macros.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Compiling NASM source file: /home/mellw/CLionProjects/asmlib/src/asm_print_str.asm to /home/mellw/CLionProjects/asmlib/obj/asm_print_str.o"
	nasm -f elf64 -o /home/mellw/CLionProjects/asmlib/obj/asm_print_str.o /home/mellw/CLionProjects/asmlib/src/asm_print_str.asm

/home/mellw/CLionProjects/asmlib/obj/asm_strlen.o: /home/mellw/CLionProjects/asmlib/src/asm_strlen.asm
/home/mellw/CLionProjects/asmlib/obj/asm_strlen.o: /home/mellw/CLionProjects/asmlib/src/asm_macros.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Compiling NASM source file: /home/mellw/CLionProjects/asmlib/src/asm_strlen.asm to /home/mellw/CLionProjects/asmlib/obj/asm_strlen.o"
	nasm -f elf64 -o /home/mellw/CLionProjects/asmlib/obj/asm_strlen.o /home/mellw/CLionProjects/asmlib/src/asm_strlen.asm

/home/mellw/CLionProjects/asmlib/obj/asm_strcpy.o: /home/mellw/CLionProjects/asmlib/src/asm_strcpy.asm
/home/mellw/CLionProjects/asmlib/obj/asm_strcpy.o: /home/mellw/CLionProjects/asmlib/src/asm_macros.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Compiling NASM source file: /home/mellw/CLionProjects/asmlib/src/asm_strcpy.asm to /home/mellw/CLionProjects/asmlib/obj/asm_strcpy.o"
	nasm -f elf64 -o /home/mellw/CLionProjects/asmlib/obj/asm_strcpy.o /home/mellw/CLionProjects/asmlib/src/asm_strcpy.asm

/home/mellw/CLionProjects/asmlib/obj/asm_print_int.o: /home/mellw/CLionProjects/asmlib/src/asm_print_int.asm
/home/mellw/CLionProjects/asmlib/obj/asm_print_int.o: /home/mellw/CLionProjects/asmlib/src/asm_macros.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Compiling NASM source file: /home/mellw/CLionProjects/asmlib/src/asm_print_int.asm to /home/mellw/CLionProjects/asmlib/obj/asm_print_int.o"
	nasm -f elf64 -o /home/mellw/CLionProjects/asmlib/obj/asm_print_int.o /home/mellw/CLionProjects/asmlib/src/asm_print_int.asm

/home/mellw/CLionProjects/asmlib/obj/asm_malloc.o: /home/mellw/CLionProjects/asmlib/src/asm_malloc.asm
/home/mellw/CLionProjects/asmlib/obj/asm_malloc.o: /home/mellw/CLionProjects/asmlib/src/asm_macros.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Compiling NASM source file: /home/mellw/CLionProjects/asmlib/src/asm_malloc.asm to /home/mellw/CLionProjects/asmlib/obj/asm_malloc.o"
	nasm -f elf64 -o /home/mellw/CLionProjects/asmlib/obj/asm_malloc.o /home/mellw/CLionProjects/asmlib/src/asm_malloc.asm

/home/mellw/CLionProjects/asmlib/obj/asm_append_str.o: /home/mellw/CLionProjects/asmlib/src/asm_append_str.asm
/home/mellw/CLionProjects/asmlib/obj/asm_append_str.o: /home/mellw/CLionProjects/asmlib/src/asm_macros.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Compiling NASM source file: /home/mellw/CLionProjects/asmlib/src/asm_append_str.asm to /home/mellw/CLionProjects/asmlib/obj/asm_append_str.o"
	nasm -f elf64 -o /home/mellw/CLionProjects/asmlib/obj/asm_append_str.o /home/mellw/CLionProjects/asmlib/src/asm_append_str.asm

/home/mellw/CLionProjects/asmlib/obj/asm_exit.o: /home/mellw/CLionProjects/asmlib/src/asm_exit.asm
/home/mellw/CLionProjects/asmlib/obj/asm_exit.o: /home/mellw/CLionProjects/asmlib/src/asm_macros.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Compiling NASM source file: /home/mellw/CLionProjects/asmlib/src/asm_exit.asm to /home/mellw/CLionProjects/asmlib/obj/asm_exit.o"
	nasm -f elf64 -o /home/mellw/CLionProjects/asmlib/obj/asm_exit.o /home/mellw/CLionProjects/asmlib/src/asm_exit.asm

/home/mellw/CLionProjects/asmlib/obj/asm_string_struct.o: /home/mellw/CLionProjects/asmlib/src/asm_string_struct.asm
/home/mellw/CLionProjects/asmlib/obj/asm_string_struct.o: /home/mellw/CLionProjects/asmlib/src/asm_macros.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Compiling NASM source file: /home/mellw/CLionProjects/asmlib/src/asm_string_struct.asm to /home/mellw/CLionProjects/asmlib/obj/asm_string_struct.o"
	nasm -f elf64 -o /home/mellw/CLionProjects/asmlib/obj/asm_string_struct.o /home/mellw/CLionProjects/asmlib/src/asm_string_struct.asm

/home/mellw/CLionProjects/asmlib/obj/asm_errno.o: /home/mellw/CLionProjects/asmlib/src/asm_errno.asm
/home/mellw/CLionProjects/asmlib/obj/asm_errno.o: /home/mellw/CLionProjects/asmlib/src/asm_macros.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Compiling NASM source file: /home/mellw/CLionProjects/asmlib/src/asm_errno.asm to /home/mellw/CLionProjects/asmlib/obj/asm_errno.o"
	nasm -f elf64 -o /home/mellw/CLionProjects/asmlib/obj/asm_errno.o /home/mellw/CLionProjects/asmlib/src/asm_errno.asm

/home/mellw/CLionProjects/asmlib/obj/asm_add.o: /home/mellw/CLionProjects/asmlib/src/asm_add.asm
/home/mellw/CLionProjects/asmlib/obj/asm_add.o: /home/mellw/CLionProjects/asmlib/src/asm_macros.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Compiling NASM source file: /home/mellw/CLionProjects/asmlib/src/asm_add.asm to /home/mellw/CLionProjects/asmlib/obj/asm_add.o"
	nasm -f elf64 -o /home/mellw/CLionProjects/asmlib/obj/asm_add.o /home/mellw/CLionProjects/asmlib/src/asm_add.asm

/home/mellw/CLionProjects/asmlib/obj/asm_sub.o: /home/mellw/CLionProjects/asmlib/src/asm_sub.asm
/home/mellw/CLionProjects/asmlib/obj/asm_sub.o: /home/mellw/CLionProjects/asmlib/src/asm_macros.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Compiling NASM source file: /home/mellw/CLionProjects/asmlib/src/asm_sub.asm to /home/mellw/CLionProjects/asmlib/obj/asm_sub.o"
	nasm -f elf64 -o /home/mellw/CLionProjects/asmlib/obj/asm_sub.o /home/mellw/CLionProjects/asmlib/src/asm_sub.asm

/home/mellw/CLionProjects/asmlib/obj/asm_mul.o: /home/mellw/CLionProjects/asmlib/src/asm_mul.asm
/home/mellw/CLionProjects/asmlib/obj/asm_mul.o: /home/mellw/CLionProjects/asmlib/src/asm_macros.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Compiling NASM source file: /home/mellw/CLionProjects/asmlib/src/asm_mul.asm to /home/mellw/CLionProjects/asmlib/obj/asm_mul.o"
	nasm -f elf64 -o /home/mellw/CLionProjects/asmlib/obj/asm_mul.o /home/mellw/CLionProjects/asmlib/src/asm_mul.asm

/home/mellw/CLionProjects/asmlib/obj/asm_div.o: /home/mellw/CLionProjects/asmlib/src/asm_div.asm
/home/mellw/CLionProjects/asmlib/obj/asm_div.o: /home/mellw/CLionProjects/asmlib/src/asm_macros.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Compiling NASM source file: /home/mellw/CLionProjects/asmlib/src/asm_div.asm to /home/mellw/CLionProjects/asmlib/obj/asm_div.o"
	nasm -f elf64 -o /home/mellw/CLionProjects/asmlib/obj/asm_div.o /home/mellw/CLionProjects/asmlib/src/asm_div.asm

/home/mellw/CLionProjects/asmlib/obj/asm_get_cwd.o: /home/mellw/CLionProjects/asmlib/src/asm_get_cwd.asm
/home/mellw/CLionProjects/asmlib/obj/asm_get_cwd.o: /home/mellw/CLionProjects/asmlib/src/asm_macros.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Compiling NASM source file: /home/mellw/CLionProjects/asmlib/src/asm_get_cwd.asm to /home/mellw/CLionProjects/asmlib/obj/asm_get_cwd.o"
	nasm -f elf64 -o /home/mellw/CLionProjects/asmlib/obj/asm_get_cwd.o /home/mellw/CLionProjects/asmlib/src/asm_get_cwd.asm

/home/mellw/CLionProjects/asmlib/obj/asm_find.o: /home/mellw/CLionProjects/asmlib/src/asm_find.asm
/home/mellw/CLionProjects/asmlib/obj/asm_find.o: /home/mellw/CLionProjects/asmlib/src/asm_macros.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Compiling NASM source file: /home/mellw/CLionProjects/asmlib/src/asm_find.asm to /home/mellw/CLionProjects/asmlib/obj/asm_find.o"
	nasm -f elf64 -o /home/mellw/CLionProjects/asmlib/obj/asm_find.o /home/mellw/CLionProjects/asmlib/src/asm_find.asm

/home/mellw/CLionProjects/asmlib/obj/asm_find_str_end.o: /home/mellw/CLionProjects/asmlib/src/asm_find_str_end.asm
/home/mellw/CLionProjects/asmlib/obj/asm_find_str_end.o: /home/mellw/CLionProjects/asmlib/src/asm_macros.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Compiling NASM source file: /home/mellw/CLionProjects/asmlib/src/asm_find_str_end.asm to /home/mellw/CLionProjects/asmlib/obj/asm_find_str_end.o"
	nasm -f elf64 -o /home/mellw/CLionProjects/asmlib/obj/asm_find_str_end.o /home/mellw/CLionProjects/asmlib/src/asm_find_str_end.asm

/home/mellw/CLionProjects/asmlib/obj/asm_clear_str.o: /home/mellw/CLionProjects/asmlib/src/asm_clear_str.asm
/home/mellw/CLionProjects/asmlib/obj/asm_clear_str.o: /home/mellw/CLionProjects/asmlib/src/asm_macros.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Compiling NASM source file: /home/mellw/CLionProjects/asmlib/src/asm_clear_str.asm to /home/mellw/CLionProjects/asmlib/obj/asm_clear_str.o"
	nasm -f elf64 -o /home/mellw/CLionProjects/asmlib/obj/asm_clear_str.o /home/mellw/CLionProjects/asmlib/src/asm_clear_str.asm

/home/mellw/CLionProjects/asmlib/obj/asm_rm_file.o: /home/mellw/CLionProjects/asmlib/src/asm_rm_file.asm
/home/mellw/CLionProjects/asmlib/obj/asm_rm_file.o: /home/mellw/CLionProjects/asmlib/src/asm_macros.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Compiling NASM source file: /home/mellw/CLionProjects/asmlib/src/asm_rm_file.asm to /home/mellw/CLionProjects/asmlib/obj/asm_rm_file.o"
	nasm -f elf64 -o /home/mellw/CLionProjects/asmlib/obj/asm_rm_file.o /home/mellw/CLionProjects/asmlib/src/asm_rm_file.asm

/home/mellw/CLionProjects/asmlib/obj/asm_mkdir.o: /home/mellw/CLionProjects/asmlib/src/asm_mkdir.asm
/home/mellw/CLionProjects/asmlib/obj/asm_mkdir.o: /home/mellw/CLionProjects/asmlib/src/asm_macros.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_21) "Compiling NASM source file: /home/mellw/CLionProjects/asmlib/src/asm_mkdir.asm to /home/mellw/CLionProjects/asmlib/obj/asm_mkdir.o"
	nasm -f elf64 -o /home/mellw/CLionProjects/asmlib/obj/asm_mkdir.o /home/mellw/CLionProjects/asmlib/src/asm_mkdir.asm

/home/mellw/CLionProjects/asmlib/obj/asm_rm_dir.o: /home/mellw/CLionProjects/asmlib/src/asm_rm_dir.asm
/home/mellw/CLionProjects/asmlib/obj/asm_rm_dir.o: /home/mellw/CLionProjects/asmlib/src/asm_macros.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_22) "Compiling NASM source file: /home/mellw/CLionProjects/asmlib/src/asm_rm_dir.asm to /home/mellw/CLionProjects/asmlib/obj/asm_rm_dir.o"
	nasm -f elf64 -o /home/mellw/CLionProjects/asmlib/obj/asm_rm_dir.o /home/mellw/CLionProjects/asmlib/src/asm_rm_dir.asm

/home/mellw/CLionProjects/asmlib/obj/asm_cd.o: /home/mellw/CLionProjects/asmlib/src/asm_cd.asm
/home/mellw/CLionProjects/asmlib/obj/asm_cd.o: /home/mellw/CLionProjects/asmlib/src/asm_macros.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_23) "Compiling NASM source file: /home/mellw/CLionProjects/asmlib/src/asm_cd.asm to /home/mellw/CLionProjects/asmlib/obj/asm_cd.o"
	nasm -f elf64 -o /home/mellw/CLionProjects/asmlib/obj/asm_cd.o /home/mellw/CLionProjects/asmlib/src/asm_cd.asm

/home/mellw/CLionProjects/asmlib/obj/asm_printf.o: /home/mellw/CLionProjects/asmlib/src/asm_printf.asm
/home/mellw/CLionProjects/asmlib/obj/asm_printf.o: /home/mellw/CLionProjects/asmlib/src/asm_macros.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_24) "Compiling NASM source file: /home/mellw/CLionProjects/asmlib/src/asm_printf.asm to /home/mellw/CLionProjects/asmlib/obj/asm_printf.o"
	nasm -f elf64 -o /home/mellw/CLionProjects/asmlib/obj/asm_printf.o /home/mellw/CLionProjects/asmlib/src/asm_printf.asm

/home/mellw/CLionProjects/asmlib/obj/asm_print_char.o: /home/mellw/CLionProjects/asmlib/src/asm_print_char.asm
/home/mellw/CLionProjects/asmlib/obj/asm_print_char.o: /home/mellw/CLionProjects/asmlib/src/asm_macros.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_25) "Compiling NASM source file: /home/mellw/CLionProjects/asmlib/src/asm_print_char.asm to /home/mellw/CLionProjects/asmlib/obj/asm_print_char.o"
	nasm -f elf64 -o /home/mellw/CLionProjects/asmlib/obj/asm_print_char.o /home/mellw/CLionProjects/asmlib/src/asm_print_char.asm

/home/mellw/CLionProjects/asmlib/obj/asm_touch.o: /home/mellw/CLionProjects/asmlib/src/asm_touch.asm
/home/mellw/CLionProjects/asmlib/obj/asm_touch.o: /home/mellw/CLionProjects/asmlib/src/asm_macros.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_26) "Compiling NASM source file: /home/mellw/CLionProjects/asmlib/src/asm_touch.asm to /home/mellw/CLionProjects/asmlib/obj/asm_touch.o"
	nasm -f elf64 -o /home/mellw/CLionProjects/asmlib/obj/asm_touch.o /home/mellw/CLionProjects/asmlib/src/asm_touch.asm

/home/mellw/CLionProjects/asmlib/obj/asm_write.o: /home/mellw/CLionProjects/asmlib/src/asm_write.asm
/home/mellw/CLionProjects/asmlib/obj/asm_write.o: /home/mellw/CLionProjects/asmlib/src/asm_macros.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_27) "Compiling NASM source file: /home/mellw/CLionProjects/asmlib/src/asm_write.asm to /home/mellw/CLionProjects/asmlib/obj/asm_write.o"
	nasm -f elf64 -o /home/mellw/CLionProjects/asmlib/obj/asm_write.o /home/mellw/CLionProjects/asmlib/src/asm_write.asm

/home/mellw/CLionProjects/asmlib/obj/asm_open_file.o: /home/mellw/CLionProjects/asmlib/src/asm_open_file.asm
/home/mellw/CLionProjects/asmlib/obj/asm_open_file.o: /home/mellw/CLionProjects/asmlib/src/asm_macros.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_28) "Compiling NASM source file: /home/mellw/CLionProjects/asmlib/src/asm_open_file.asm to /home/mellw/CLionProjects/asmlib/obj/asm_open_file.o"
	nasm -f elf64 -o /home/mellw/CLionProjects/asmlib/obj/asm_open_file.o /home/mellw/CLionProjects/asmlib/src/asm_open_file.asm

/home/mellw/CLionProjects/asmlib/obj/asm_cin.o: /home/mellw/CLionProjects/asmlib/src/asm_cin.asm
/home/mellw/CLionProjects/asmlib/obj/asm_cin.o: /home/mellw/CLionProjects/asmlib/src/asm_macros.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_29) "Compiling NASM source file: /home/mellw/CLionProjects/asmlib/src/asm_cin.asm to /home/mellw/CLionProjects/asmlib/obj/asm_cin.o"
	nasm -f elf64 -o /home/mellw/CLionProjects/asmlib/obj/asm_cin.o /home/mellw/CLionProjects/asmlib/src/asm_cin.asm

/home/mellw/CLionProjects/asmlib/obj/ll_strlen.o: /home/mellw/CLionProjects/asmlib/src/ll_strlen.ll
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_30) "Compiling LLVM source file: /home/mellw/CLionProjects/asmlib/src/ll_strlen.ll to /home/mellw/CLionProjects/asmlib/obj/ll_strlen.o"
	llc -filetype=obj -o /home/mellw/CLionProjects/asmlib/obj/ll_strlen.o /home/mellw/CLionProjects/asmlib/src/ll_strlen.ll

/home/mellw/CLionProjects/asmlib/obj/ll_print_str.o: /home/mellw/CLionProjects/asmlib/src/ll_print_str.ll
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_31) "Compiling LLVM source file: /home/mellw/CLionProjects/asmlib/src/ll_print_str.ll to /home/mellw/CLionProjects/asmlib/obj/ll_print_str.o"
	llc -filetype=obj -o /home/mellw/CLionProjects/asmlib/obj/ll_print_str.o /home/mellw/CLionProjects/asmlib/src/ll_print_str.ll

/home/mellw/CLionProjects/asmlib/obj/ll_exit.o: /home/mellw/CLionProjects/asmlib/src/ll_exit.ll
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_32) "Compiling LLVM source file: /home/mellw/CLionProjects/asmlib/src/ll_exit.ll to /home/mellw/CLionProjects/asmlib/obj/ll_exit.o"
	llc -filetype=obj -o /home/mellw/CLionProjects/asmlib/obj/ll_exit.o /home/mellw/CLionProjects/asmlib/src/ll_exit.ll

/home/mellw/CLionProjects/asmlib/obj/ll_add.o: /home/mellw/CLionProjects/asmlib/src/ll_add.ll
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_33) "Compiling LLVM source file: /home/mellw/CLionProjects/asmlib/src/ll_add.ll to /home/mellw/CLionProjects/asmlib/obj/ll_add.o"
	llc -filetype=obj -o /home/mellw/CLionProjects/asmlib/obj/ll_add.o /home/mellw/CLionProjects/asmlib/src/ll_add.ll

/home/mellw/CLionProjects/asmlib/obj/ll_sub.o: /home/mellw/CLionProjects/asmlib/src/ll_sub.ll
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_34) "Compiling LLVM source file: /home/mellw/CLionProjects/asmlib/src/ll_sub.ll to /home/mellw/CLionProjects/asmlib/obj/ll_sub.o"
	llc -filetype=obj -o /home/mellw/CLionProjects/asmlib/obj/ll_sub.o /home/mellw/CLionProjects/asmlib/src/ll_sub.ll

CMakeFiles/asmlib.dir/src/lib.c.o: CMakeFiles/asmlib.dir/flags.make
CMakeFiles/asmlib.dir/src/lib.c.o: /home/mellw/CLionProjects/asmlib/src/lib.c
CMakeFiles/asmlib.dir/src/lib.c.o: CMakeFiles/asmlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_35) "Building C object CMakeFiles/asmlib.dir/src/lib.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/asmlib.dir/src/lib.c.o -MF CMakeFiles/asmlib.dir/src/lib.c.o.d -o CMakeFiles/asmlib.dir/src/lib.c.o -c /home/mellw/CLionProjects/asmlib/src/lib.c

CMakeFiles/asmlib.dir/src/lib.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/asmlib.dir/src/lib.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mellw/CLionProjects/asmlib/src/lib.c > CMakeFiles/asmlib.dir/src/lib.c.i

CMakeFiles/asmlib.dir/src/lib.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/asmlib.dir/src/lib.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mellw/CLionProjects/asmlib/src/lib.c -o CMakeFiles/asmlib.dir/src/lib.c.s

# Object files for target asmlib
asmlib_OBJECTS = \
"CMakeFiles/asmlib.dir/src/lib.c.o"

# External object files for target asmlib
asmlib_EXTERNAL_OBJECTS = \
"/home/mellw/CLionProjects/asmlib/obj/asm_assert.o" \
"/home/mellw/CLionProjects/asmlib/obj/asm_execve.o" \
"/home/mellw/CLionProjects/asmlib/obj/asm_print_str.o" \
"/home/mellw/CLionProjects/asmlib/obj/asm_strlen.o" \
"/home/mellw/CLionProjects/asmlib/obj/asm_strcpy.o" \
"/home/mellw/CLionProjects/asmlib/obj/asm_print_int.o" \
"/home/mellw/CLionProjects/asmlib/obj/asm_malloc.o" \
"/home/mellw/CLionProjects/asmlib/obj/asm_append_str.o" \
"/home/mellw/CLionProjects/asmlib/obj/asm_exit.o" \
"/home/mellw/CLionProjects/asmlib/obj/asm_string_struct.o" \
"/home/mellw/CLionProjects/asmlib/obj/asm_errno.o" \
"/home/mellw/CLionProjects/asmlib/obj/asm_add.o" \
"/home/mellw/CLionProjects/asmlib/obj/asm_sub.o" \
"/home/mellw/CLionProjects/asmlib/obj/asm_mul.o" \
"/home/mellw/CLionProjects/asmlib/obj/asm_div.o" \
"/home/mellw/CLionProjects/asmlib/obj/asm_get_cwd.o" \
"/home/mellw/CLionProjects/asmlib/obj/asm_find.o" \
"/home/mellw/CLionProjects/asmlib/obj/asm_find_str_end.o" \
"/home/mellw/CLionProjects/asmlib/obj/asm_clear_str.o" \
"/home/mellw/CLionProjects/asmlib/obj/asm_rm_file.o" \
"/home/mellw/CLionProjects/asmlib/obj/asm_mkdir.o" \
"/home/mellw/CLionProjects/asmlib/obj/asm_rm_dir.o" \
"/home/mellw/CLionProjects/asmlib/obj/asm_cd.o" \
"/home/mellw/CLionProjects/asmlib/obj/asm_printf.o" \
"/home/mellw/CLionProjects/asmlib/obj/asm_print_char.o" \
"/home/mellw/CLionProjects/asmlib/obj/asm_touch.o" \
"/home/mellw/CLionProjects/asmlib/obj/asm_write.o" \
"/home/mellw/CLionProjects/asmlib/obj/asm_open_file.o" \
"/home/mellw/CLionProjects/asmlib/obj/asm_cin.o" \
"/home/mellw/CLionProjects/asmlib/obj/ll_strlen.o" \
"/home/mellw/CLionProjects/asmlib/obj/ll_print_str.o" \
"/home/mellw/CLionProjects/asmlib/obj/ll_exit.o" \
"/home/mellw/CLionProjects/asmlib/obj/ll_add.o" \
"/home/mellw/CLionProjects/asmlib/obj/ll_sub.o"

libasmlib.a: CMakeFiles/asmlib.dir/src/lib.c.o
libasmlib.a: /home/mellw/CLionProjects/asmlib/obj/asm_assert.o
libasmlib.a: /home/mellw/CLionProjects/asmlib/obj/asm_execve.o
libasmlib.a: /home/mellw/CLionProjects/asmlib/obj/asm_print_str.o
libasmlib.a: /home/mellw/CLionProjects/asmlib/obj/asm_strlen.o
libasmlib.a: /home/mellw/CLionProjects/asmlib/obj/asm_strcpy.o
libasmlib.a: /home/mellw/CLionProjects/asmlib/obj/asm_print_int.o
libasmlib.a: /home/mellw/CLionProjects/asmlib/obj/asm_malloc.o
libasmlib.a: /home/mellw/CLionProjects/asmlib/obj/asm_append_str.o
libasmlib.a: /home/mellw/CLionProjects/asmlib/obj/asm_exit.o
libasmlib.a: /home/mellw/CLionProjects/asmlib/obj/asm_string_struct.o
libasmlib.a: /home/mellw/CLionProjects/asmlib/obj/asm_errno.o
libasmlib.a: /home/mellw/CLionProjects/asmlib/obj/asm_add.o
libasmlib.a: /home/mellw/CLionProjects/asmlib/obj/asm_sub.o
libasmlib.a: /home/mellw/CLionProjects/asmlib/obj/asm_mul.o
libasmlib.a: /home/mellw/CLionProjects/asmlib/obj/asm_div.o
libasmlib.a: /home/mellw/CLionProjects/asmlib/obj/asm_get_cwd.o
libasmlib.a: /home/mellw/CLionProjects/asmlib/obj/asm_find.o
libasmlib.a: /home/mellw/CLionProjects/asmlib/obj/asm_find_str_end.o
libasmlib.a: /home/mellw/CLionProjects/asmlib/obj/asm_clear_str.o
libasmlib.a: /home/mellw/CLionProjects/asmlib/obj/asm_rm_file.o
libasmlib.a: /home/mellw/CLionProjects/asmlib/obj/asm_mkdir.o
libasmlib.a: /home/mellw/CLionProjects/asmlib/obj/asm_rm_dir.o
libasmlib.a: /home/mellw/CLionProjects/asmlib/obj/asm_cd.o
libasmlib.a: /home/mellw/CLionProjects/asmlib/obj/asm_printf.o
libasmlib.a: /home/mellw/CLionProjects/asmlib/obj/asm_print_char.o
libasmlib.a: /home/mellw/CLionProjects/asmlib/obj/asm_touch.o
libasmlib.a: /home/mellw/CLionProjects/asmlib/obj/asm_write.o
libasmlib.a: /home/mellw/CLionProjects/asmlib/obj/asm_open_file.o
libasmlib.a: /home/mellw/CLionProjects/asmlib/obj/asm_cin.o
libasmlib.a: /home/mellw/CLionProjects/asmlib/obj/ll_strlen.o
libasmlib.a: /home/mellw/CLionProjects/asmlib/obj/ll_print_str.o
libasmlib.a: /home/mellw/CLionProjects/asmlib/obj/ll_exit.o
libasmlib.a: /home/mellw/CLionProjects/asmlib/obj/ll_add.o
libasmlib.a: /home/mellw/CLionProjects/asmlib/obj/ll_sub.o
libasmlib.a: CMakeFiles/asmlib.dir/build.make
libasmlib.a: CMakeFiles/asmlib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_36) "Linking C static library libasmlib.a"
	$(CMAKE_COMMAND) -P CMakeFiles/asmlib.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/asmlib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/asmlib.dir/build: libasmlib.a
.PHONY : CMakeFiles/asmlib.dir/build

CMakeFiles/asmlib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/asmlib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/asmlib.dir/clean

CMakeFiles/asmlib.dir/depend: /home/mellw/CLionProjects/asmlib/obj/asm_add.o
CMakeFiles/asmlib.dir/depend: /home/mellw/CLionProjects/asmlib/obj/asm_append_str.o
CMakeFiles/asmlib.dir/depend: /home/mellw/CLionProjects/asmlib/obj/asm_assert.o
CMakeFiles/asmlib.dir/depend: /home/mellw/CLionProjects/asmlib/obj/asm_cd.o
CMakeFiles/asmlib.dir/depend: /home/mellw/CLionProjects/asmlib/obj/asm_cin.o
CMakeFiles/asmlib.dir/depend: /home/mellw/CLionProjects/asmlib/obj/asm_clear_str.o
CMakeFiles/asmlib.dir/depend: /home/mellw/CLionProjects/asmlib/obj/asm_div.o
CMakeFiles/asmlib.dir/depend: /home/mellw/CLionProjects/asmlib/obj/asm_errno.o
CMakeFiles/asmlib.dir/depend: /home/mellw/CLionProjects/asmlib/obj/asm_execve.o
CMakeFiles/asmlib.dir/depend: /home/mellw/CLionProjects/asmlib/obj/asm_exit.o
CMakeFiles/asmlib.dir/depend: /home/mellw/CLionProjects/asmlib/obj/asm_find.o
CMakeFiles/asmlib.dir/depend: /home/mellw/CLionProjects/asmlib/obj/asm_find_str_end.o
CMakeFiles/asmlib.dir/depend: /home/mellw/CLionProjects/asmlib/obj/asm_get_cwd.o
CMakeFiles/asmlib.dir/depend: /home/mellw/CLionProjects/asmlib/obj/asm_malloc.o
CMakeFiles/asmlib.dir/depend: /home/mellw/CLionProjects/asmlib/obj/asm_mkdir.o
CMakeFiles/asmlib.dir/depend: /home/mellw/CLionProjects/asmlib/obj/asm_mul.o
CMakeFiles/asmlib.dir/depend: /home/mellw/CLionProjects/asmlib/obj/asm_open_file.o
CMakeFiles/asmlib.dir/depend: /home/mellw/CLionProjects/asmlib/obj/asm_print_char.o
CMakeFiles/asmlib.dir/depend: /home/mellw/CLionProjects/asmlib/obj/asm_print_int.o
CMakeFiles/asmlib.dir/depend: /home/mellw/CLionProjects/asmlib/obj/asm_print_str.o
CMakeFiles/asmlib.dir/depend: /home/mellw/CLionProjects/asmlib/obj/asm_printf.o
CMakeFiles/asmlib.dir/depend: /home/mellw/CLionProjects/asmlib/obj/asm_rm_dir.o
CMakeFiles/asmlib.dir/depend: /home/mellw/CLionProjects/asmlib/obj/asm_rm_file.o
CMakeFiles/asmlib.dir/depend: /home/mellw/CLionProjects/asmlib/obj/asm_strcpy.o
CMakeFiles/asmlib.dir/depend: /home/mellw/CLionProjects/asmlib/obj/asm_string_struct.o
CMakeFiles/asmlib.dir/depend: /home/mellw/CLionProjects/asmlib/obj/asm_strlen.o
CMakeFiles/asmlib.dir/depend: /home/mellw/CLionProjects/asmlib/obj/asm_sub.o
CMakeFiles/asmlib.dir/depend: /home/mellw/CLionProjects/asmlib/obj/asm_touch.o
CMakeFiles/asmlib.dir/depend: /home/mellw/CLionProjects/asmlib/obj/asm_write.o
CMakeFiles/asmlib.dir/depend: /home/mellw/CLionProjects/asmlib/obj/ll_add.o
CMakeFiles/asmlib.dir/depend: /home/mellw/CLionProjects/asmlib/obj/ll_exit.o
CMakeFiles/asmlib.dir/depend: /home/mellw/CLionProjects/asmlib/obj/ll_print_str.o
CMakeFiles/asmlib.dir/depend: /home/mellw/CLionProjects/asmlib/obj/ll_strlen.o
CMakeFiles/asmlib.dir/depend: /home/mellw/CLionProjects/asmlib/obj/ll_sub.o
	cd /home/mellw/CLionProjects/asmlib/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mellw/CLionProjects/asmlib /home/mellw/CLionProjects/asmlib /home/mellw/CLionProjects/asmlib/build /home/mellw/CLionProjects/asmlib/build /home/mellw/CLionProjects/asmlib/build/CMakeFiles/asmlib.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/asmlib.dir/depend

