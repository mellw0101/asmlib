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

# Utility rule file for asm_errno.

# Include any custom commands dependencies for this target.
include CMakeFiles/asm_errno.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/asm_errno.dir/progress.make

CMakeFiles/asm_errno: /home/mellw/CLionProjects/asmlib/obj/asm_errno.o

/home/mellw/CLionProjects/asmlib/obj/asm_errno.o: /home/mellw/CLionProjects/asmlib/src/asm_errno.asm
/home/mellw/CLionProjects/asmlib/obj/asm_errno.o: /home/mellw/CLionProjects/asmlib/src/asm_macros.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mellw/CLionProjects/asmlib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Compiling NASM source file: /home/mellw/CLionProjects/asmlib/src/asm_errno.asm to /home/mellw/CLionProjects/asmlib/obj/asm_errno.o"
	nasm -f elf64 -o /home/mellw/CLionProjects/asmlib/obj/asm_errno.o /home/mellw/CLionProjects/asmlib/src/asm_errno.asm

asm_errno: CMakeFiles/asm_errno
asm_errno: /home/mellw/CLionProjects/asmlib/obj/asm_errno.o
asm_errno: CMakeFiles/asm_errno.dir/build.make
.PHONY : asm_errno

# Rule to build all files generated by this target.
CMakeFiles/asm_errno.dir/build: asm_errno
.PHONY : CMakeFiles/asm_errno.dir/build

CMakeFiles/asm_errno.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/asm_errno.dir/cmake_clean.cmake
.PHONY : CMakeFiles/asm_errno.dir/clean

CMakeFiles/asm_errno.dir/depend:
	cd /home/mellw/CLionProjects/asmlib/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mellw/CLionProjects/asmlib /home/mellw/CLionProjects/asmlib /home/mellw/CLionProjects/asmlib/build /home/mellw/CLionProjects/asmlib/build /home/mellw/CLionProjects/asmlib/build/CMakeFiles/asm_errno.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/asm_errno.dir/depend
