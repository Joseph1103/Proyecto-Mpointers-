# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.30

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
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2024.3.3\bin\cmake\win\x64\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2024.3.3\bin\cmake\win\x64\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\sebas\Documents\GitHub\Proyecto-Mpointers-

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\sebas\Documents\GitHub\Proyecto-Mpointers-\cmake-build-debug-mingw

# Include any dependencies generated for this target.
include Mpointer/CMakeFiles/MPointer.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Mpointer/CMakeFiles/MPointer.dir/compiler_depend.make

# Include the progress variables for this target.
include Mpointer/CMakeFiles/MPointer.dir/progress.make

# Include the compile flags for this target's objects.
include Mpointer/CMakeFiles/MPointer.dir/flags.make

Mpointer/CMakeFiles/MPointer.dir/src/main.cpp.obj: Mpointer/CMakeFiles/MPointer.dir/flags.make
Mpointer/CMakeFiles/MPointer.dir/src/main.cpp.obj: Mpointer/CMakeFiles/MPointer.dir/includes_CXX.rsp
Mpointer/CMakeFiles/MPointer.dir/src/main.cpp.obj: C:/Users/sebas/Documents/GitHub/Proyecto-Mpointers-/Mpointer/src/main.cpp
Mpointer/CMakeFiles/MPointer.dir/src/main.cpp.obj: Mpointer/CMakeFiles/MPointer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\sebas\Documents\GitHub\Proyecto-Mpointers-\cmake-build-debug-mingw\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Mpointer/CMakeFiles/MPointer.dir/src/main.cpp.obj"
	cd /d C:\Users\sebas\Documents\GitHub\Proyecto-Mpointers-\cmake-build-debug-mingw\Mpointer && C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Mpointer/CMakeFiles/MPointer.dir/src/main.cpp.obj -MF CMakeFiles\MPointer.dir\src\main.cpp.obj.d -o CMakeFiles\MPointer.dir\src\main.cpp.obj -c C:\Users\sebas\Documents\GitHub\Proyecto-Mpointers-\Mpointer\src\main.cpp

Mpointer/CMakeFiles/MPointer.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/MPointer.dir/src/main.cpp.i"
	cd /d C:\Users\sebas\Documents\GitHub\Proyecto-Mpointers-\cmake-build-debug-mingw\Mpointer && C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\sebas\Documents\GitHub\Proyecto-Mpointers-\Mpointer\src\main.cpp > CMakeFiles\MPointer.dir\src\main.cpp.i

Mpointer/CMakeFiles/MPointer.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/MPointer.dir/src/main.cpp.s"
	cd /d C:\Users\sebas\Documents\GitHub\Proyecto-Mpointers-\cmake-build-debug-mingw\Mpointer && C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\sebas\Documents\GitHub\Proyecto-Mpointers-\Mpointer\src\main.cpp -o CMakeFiles\MPointer.dir\src\main.cpp.s

Mpointer/CMakeFiles/MPointer.dir/src/MPointer.cpp.obj: Mpointer/CMakeFiles/MPointer.dir/flags.make
Mpointer/CMakeFiles/MPointer.dir/src/MPointer.cpp.obj: Mpointer/CMakeFiles/MPointer.dir/includes_CXX.rsp
Mpointer/CMakeFiles/MPointer.dir/src/MPointer.cpp.obj: C:/Users/sebas/Documents/GitHub/Proyecto-Mpointers-/Mpointer/src/MPointer.cpp
Mpointer/CMakeFiles/MPointer.dir/src/MPointer.cpp.obj: Mpointer/CMakeFiles/MPointer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\sebas\Documents\GitHub\Proyecto-Mpointers-\cmake-build-debug-mingw\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object Mpointer/CMakeFiles/MPointer.dir/src/MPointer.cpp.obj"
	cd /d C:\Users\sebas\Documents\GitHub\Proyecto-Mpointers-\cmake-build-debug-mingw\Mpointer && C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Mpointer/CMakeFiles/MPointer.dir/src/MPointer.cpp.obj -MF CMakeFiles\MPointer.dir\src\MPointer.cpp.obj.d -o CMakeFiles\MPointer.dir\src\MPointer.cpp.obj -c C:\Users\sebas\Documents\GitHub\Proyecto-Mpointers-\Mpointer\src\MPointer.cpp

Mpointer/CMakeFiles/MPointer.dir/src/MPointer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/MPointer.dir/src/MPointer.cpp.i"
	cd /d C:\Users\sebas\Documents\GitHub\Proyecto-Mpointers-\cmake-build-debug-mingw\Mpointer && C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\sebas\Documents\GitHub\Proyecto-Mpointers-\Mpointer\src\MPointer.cpp > CMakeFiles\MPointer.dir\src\MPointer.cpp.i

Mpointer/CMakeFiles/MPointer.dir/src/MPointer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/MPointer.dir/src/MPointer.cpp.s"
	cd /d C:\Users\sebas\Documents\GitHub\Proyecto-Mpointers-\cmake-build-debug-mingw\Mpointer && C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\sebas\Documents\GitHub\Proyecto-Mpointers-\Mpointer\src\MPointer.cpp -o CMakeFiles\MPointer.dir\src\MPointer.cpp.s

Mpointer/CMakeFiles/MPointer.dir/src/server.cpp.obj: Mpointer/CMakeFiles/MPointer.dir/flags.make
Mpointer/CMakeFiles/MPointer.dir/src/server.cpp.obj: Mpointer/CMakeFiles/MPointer.dir/includes_CXX.rsp
Mpointer/CMakeFiles/MPointer.dir/src/server.cpp.obj: C:/Users/sebas/Documents/GitHub/Proyecto-Mpointers-/Mpointer/src/server.cpp
Mpointer/CMakeFiles/MPointer.dir/src/server.cpp.obj: Mpointer/CMakeFiles/MPointer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\sebas\Documents\GitHub\Proyecto-Mpointers-\cmake-build-debug-mingw\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object Mpointer/CMakeFiles/MPointer.dir/src/server.cpp.obj"
	cd /d C:\Users\sebas\Documents\GitHub\Proyecto-Mpointers-\cmake-build-debug-mingw\Mpointer && C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Mpointer/CMakeFiles/MPointer.dir/src/server.cpp.obj -MF CMakeFiles\MPointer.dir\src\server.cpp.obj.d -o CMakeFiles\MPointer.dir\src\server.cpp.obj -c C:\Users\sebas\Documents\GitHub\Proyecto-Mpointers-\Mpointer\src\server.cpp

Mpointer/CMakeFiles/MPointer.dir/src/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/MPointer.dir/src/server.cpp.i"
	cd /d C:\Users\sebas\Documents\GitHub\Proyecto-Mpointers-\cmake-build-debug-mingw\Mpointer && C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\sebas\Documents\GitHub\Proyecto-Mpointers-\Mpointer\src\server.cpp > CMakeFiles\MPointer.dir\src\server.cpp.i

Mpointer/CMakeFiles/MPointer.dir/src/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/MPointer.dir/src/server.cpp.s"
	cd /d C:\Users\sebas\Documents\GitHub\Proyecto-Mpointers-\cmake-build-debug-mingw\Mpointer && C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\sebas\Documents\GitHub\Proyecto-Mpointers-\Mpointer\src\server.cpp -o CMakeFiles\MPointer.dir\src\server.cpp.s

# Object files for target MPointer
MPointer_OBJECTS = \
"CMakeFiles/MPointer.dir/src/main.cpp.obj" \
"CMakeFiles/MPointer.dir/src/MPointer.cpp.obj" \
"CMakeFiles/MPointer.dir/src/server.cpp.obj"

# External object files for target MPointer
MPointer_EXTERNAL_OBJECTS =

Mpointer/MPointer.exe: Mpointer/CMakeFiles/MPointer.dir/src/main.cpp.obj
Mpointer/MPointer.exe: Mpointer/CMakeFiles/MPointer.dir/src/MPointer.cpp.obj
Mpointer/MPointer.exe: Mpointer/CMakeFiles/MPointer.dir/src/server.cpp.obj
Mpointer/MPointer.exe: Mpointer/CMakeFiles/MPointer.dir/build.make
Mpointer/MPointer.exe: Mpointer/CMakeFiles/MPointer.dir/linkLibs.rsp
Mpointer/MPointer.exe: Mpointer/CMakeFiles/MPointer.dir/objects1.rsp
Mpointer/MPointer.exe: Mpointer/CMakeFiles/MPointer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\sebas\Documents\GitHub\Proyecto-Mpointers-\cmake-build-debug-mingw\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable MPointer.exe"
	cd /d C:\Users\sebas\Documents\GitHub\Proyecto-Mpointers-\cmake-build-debug-mingw\Mpointer && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\MPointer.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Mpointer/CMakeFiles/MPointer.dir/build: Mpointer/MPointer.exe
.PHONY : Mpointer/CMakeFiles/MPointer.dir/build

Mpointer/CMakeFiles/MPointer.dir/clean:
	cd /d C:\Users\sebas\Documents\GitHub\Proyecto-Mpointers-\cmake-build-debug-mingw\Mpointer && $(CMAKE_COMMAND) -P CMakeFiles\MPointer.dir\cmake_clean.cmake
.PHONY : Mpointer/CMakeFiles/MPointer.dir/clean

Mpointer/CMakeFiles/MPointer.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\sebas\Documents\GitHub\Proyecto-Mpointers- C:\Users\sebas\Documents\GitHub\Proyecto-Mpointers-\Mpointer C:\Users\sebas\Documents\GitHub\Proyecto-Mpointers-\cmake-build-debug-mingw C:\Users\sebas\Documents\GitHub\Proyecto-Mpointers-\cmake-build-debug-mingw\Mpointer C:\Users\sebas\Documents\GitHub\Proyecto-Mpointers-\cmake-build-debug-mingw\Mpointer\CMakeFiles\MPointer.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : Mpointer/CMakeFiles/MPointer.dir/depend

