# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.27

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Nico\OneDrive\code\Pipeline-Queue

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Nico\OneDrive\code\Pipeline-Queue\build

# Include any dependencies generated for this target.
include src/CMakeFiles/pipe.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/pipe.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/pipe.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/pipe.dir/flags.make

src/CMakeFiles/pipe.dir/main.cpp.obj: src/CMakeFiles/pipe.dir/flags.make
src/CMakeFiles/pipe.dir/main.cpp.obj: src/CMakeFiles/pipe.dir/includes_CXX.rsp
src/CMakeFiles/pipe.dir/main.cpp.obj: C:/Users/Nico/OneDrive/code/Pipeline-Queue/src/main.cpp
src/CMakeFiles/pipe.dir/main.cpp.obj: src/CMakeFiles/pipe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Nico\OneDrive\code\Pipeline-Queue\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/pipe.dir/main.cpp.obj"
	cd /d C:\Users\Nico\OneDrive\code\Pipeline-Queue\build\src && C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/pipe.dir/main.cpp.obj -MF CMakeFiles\pipe.dir\main.cpp.obj.d -o CMakeFiles\pipe.dir\main.cpp.obj -c C:\Users\Nico\OneDrive\code\Pipeline-Queue\src\main.cpp

src/CMakeFiles/pipe.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/pipe.dir/main.cpp.i"
	cd /d C:\Users\Nico\OneDrive\code\Pipeline-Queue\build\src && C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Nico\OneDrive\code\Pipeline-Queue\src\main.cpp > CMakeFiles\pipe.dir\main.cpp.i

src/CMakeFiles/pipe.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/pipe.dir/main.cpp.s"
	cd /d C:\Users\Nico\OneDrive\code\Pipeline-Queue\build\src && C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Nico\OneDrive\code\Pipeline-Queue\src\main.cpp -o CMakeFiles\pipe.dir\main.cpp.s

src/CMakeFiles/pipe.dir/PipelineProcess.cpp.obj: src/CMakeFiles/pipe.dir/flags.make
src/CMakeFiles/pipe.dir/PipelineProcess.cpp.obj: src/CMakeFiles/pipe.dir/includes_CXX.rsp
src/CMakeFiles/pipe.dir/PipelineProcess.cpp.obj: C:/Users/Nico/OneDrive/code/Pipeline-Queue/src/PipelineProcess.cpp
src/CMakeFiles/pipe.dir/PipelineProcess.cpp.obj: src/CMakeFiles/pipe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Nico\OneDrive\code\Pipeline-Queue\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/pipe.dir/PipelineProcess.cpp.obj"
	cd /d C:\Users\Nico\OneDrive\code\Pipeline-Queue\build\src && C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/pipe.dir/PipelineProcess.cpp.obj -MF CMakeFiles\pipe.dir\PipelineProcess.cpp.obj.d -o CMakeFiles\pipe.dir\PipelineProcess.cpp.obj -c C:\Users\Nico\OneDrive\code\Pipeline-Queue\src\PipelineProcess.cpp

src/CMakeFiles/pipe.dir/PipelineProcess.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/pipe.dir/PipelineProcess.cpp.i"
	cd /d C:\Users\Nico\OneDrive\code\Pipeline-Queue\build\src && C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Nico\OneDrive\code\Pipeline-Queue\src\PipelineProcess.cpp > CMakeFiles\pipe.dir\PipelineProcess.cpp.i

src/CMakeFiles/pipe.dir/PipelineProcess.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/pipe.dir/PipelineProcess.cpp.s"
	cd /d C:\Users\Nico\OneDrive\code\Pipeline-Queue\build\src && C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Nico\OneDrive\code\Pipeline-Queue\src\PipelineProcess.cpp -o CMakeFiles\pipe.dir\PipelineProcess.cpp.s

src/CMakeFiles/pipe.dir/ThreadClassTemplate.cpp.obj: src/CMakeFiles/pipe.dir/flags.make
src/CMakeFiles/pipe.dir/ThreadClassTemplate.cpp.obj: src/CMakeFiles/pipe.dir/includes_CXX.rsp
src/CMakeFiles/pipe.dir/ThreadClassTemplate.cpp.obj: C:/Users/Nico/OneDrive/code/Pipeline-Queue/src/ThreadClassTemplate.cpp
src/CMakeFiles/pipe.dir/ThreadClassTemplate.cpp.obj: src/CMakeFiles/pipe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Nico\OneDrive\code\Pipeline-Queue\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/pipe.dir/ThreadClassTemplate.cpp.obj"
	cd /d C:\Users\Nico\OneDrive\code\Pipeline-Queue\build\src && C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/pipe.dir/ThreadClassTemplate.cpp.obj -MF CMakeFiles\pipe.dir\ThreadClassTemplate.cpp.obj.d -o CMakeFiles\pipe.dir\ThreadClassTemplate.cpp.obj -c C:\Users\Nico\OneDrive\code\Pipeline-Queue\src\ThreadClassTemplate.cpp

src/CMakeFiles/pipe.dir/ThreadClassTemplate.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/pipe.dir/ThreadClassTemplate.cpp.i"
	cd /d C:\Users\Nico\OneDrive\code\Pipeline-Queue\build\src && C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Nico\OneDrive\code\Pipeline-Queue\src\ThreadClassTemplate.cpp > CMakeFiles\pipe.dir\ThreadClassTemplate.cpp.i

src/CMakeFiles/pipe.dir/ThreadClassTemplate.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/pipe.dir/ThreadClassTemplate.cpp.s"
	cd /d C:\Users\Nico\OneDrive\code\Pipeline-Queue\build\src && C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Nico\OneDrive\code\Pipeline-Queue\src\ThreadClassTemplate.cpp -o CMakeFiles\pipe.dir\ThreadClassTemplate.cpp.s

# Object files for target pipe
pipe_OBJECTS = \
"CMakeFiles/pipe.dir/main.cpp.obj" \
"CMakeFiles/pipe.dir/PipelineProcess.cpp.obj" \
"CMakeFiles/pipe.dir/ThreadClassTemplate.cpp.obj"

# External object files for target pipe
pipe_EXTERNAL_OBJECTS =

src/pipe.exe: src/CMakeFiles/pipe.dir/main.cpp.obj
src/pipe.exe: src/CMakeFiles/pipe.dir/PipelineProcess.cpp.obj
src/pipe.exe: src/CMakeFiles/pipe.dir/ThreadClassTemplate.cpp.obj
src/pipe.exe: src/CMakeFiles/pipe.dir/build.make
src/pipe.exe: src/CMakeFiles/pipe.dir/compiler_depend.ts
src/pipe.exe: src/CMakeFiles/pipe.dir/linkLibs.rsp
src/pipe.exe: src/CMakeFiles/pipe.dir/objects1.rsp
src/pipe.exe: src/CMakeFiles/pipe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\Nico\OneDrive\code\Pipeline-Queue\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable pipe.exe"
	cd /d C:\Users\Nico\OneDrive\code\Pipeline-Queue\build\src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\pipe.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/pipe.dir/build: src/pipe.exe
.PHONY : src/CMakeFiles/pipe.dir/build

src/CMakeFiles/pipe.dir/clean:
	cd /d C:\Users\Nico\OneDrive\code\Pipeline-Queue\build\src && $(CMAKE_COMMAND) -P CMakeFiles\pipe.dir\cmake_clean.cmake
.PHONY : src/CMakeFiles/pipe.dir/clean

src/CMakeFiles/pipe.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Nico\OneDrive\code\Pipeline-Queue C:\Users\Nico\OneDrive\code\Pipeline-Queue\src C:\Users\Nico\OneDrive\code\Pipeline-Queue\build C:\Users\Nico\OneDrive\code\Pipeline-Queue\build\src C:\Users\Nico\OneDrive\code\Pipeline-Queue\build\src\CMakeFiles\pipe.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/CMakeFiles/pipe.dir/depend

