# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

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
CMAKE_COMMAND = /opt/homebrew/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/build

# Include any dependencies generated for this target.
include CMakeFiles/main.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/main.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/main.dir/flags.make

CMakeFiles/main.dir/codegen:
.PHONY : CMakeFiles/main.dir/codegen

CMakeFiles/main.dir/main/main.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/main/main.cpp.o: /Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/main/main.cpp
CMakeFiles/main.dir/main/main.cpp.o: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/main.dir/main/main.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/main/main.cpp.o -MF CMakeFiles/main.dir/main/main.cpp.o.d -o CMakeFiles/main.dir/main/main.cpp.o -c /Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/main/main.cpp

CMakeFiles/main.dir/main/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/main.dir/main/main.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/main/main.cpp > CMakeFiles/main.dir/main/main.cpp.i

CMakeFiles/main.dir/main/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/main.dir/main/main.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/main/main.cpp -o CMakeFiles/main.dir/main/main.cpp.s

CMakeFiles/main.dir/src/Question1.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/Question1.cpp.o: /Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/src/Question1.cpp
CMakeFiles/main.dir/src/Question1.cpp.o: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/main.dir/src/Question1.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/src/Question1.cpp.o -MF CMakeFiles/main.dir/src/Question1.cpp.o.d -o CMakeFiles/main.dir/src/Question1.cpp.o -c /Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/src/Question1.cpp

CMakeFiles/main.dir/src/Question1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/main.dir/src/Question1.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/src/Question1.cpp > CMakeFiles/main.dir/src/Question1.cpp.i

CMakeFiles/main.dir/src/Question1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/Question1.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/src/Question1.cpp -o CMakeFiles/main.dir/src/Question1.cpp.s

CMakeFiles/main.dir/src/Question2.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/Question2.cpp.o: /Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/src/Question2.cpp
CMakeFiles/main.dir/src/Question2.cpp.o: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/main.dir/src/Question2.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/src/Question2.cpp.o -MF CMakeFiles/main.dir/src/Question2.cpp.o.d -o CMakeFiles/main.dir/src/Question2.cpp.o -c /Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/src/Question2.cpp

CMakeFiles/main.dir/src/Question2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/main.dir/src/Question2.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/src/Question2.cpp > CMakeFiles/main.dir/src/Question2.cpp.i

CMakeFiles/main.dir/src/Question2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/Question2.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/src/Question2.cpp -o CMakeFiles/main.dir/src/Question2.cpp.s

CMakeFiles/main.dir/src/Question3.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/Question3.cpp.o: /Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/src/Question3.cpp
CMakeFiles/main.dir/src/Question3.cpp.o: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/main.dir/src/Question3.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/src/Question3.cpp.o -MF CMakeFiles/main.dir/src/Question3.cpp.o.d -o CMakeFiles/main.dir/src/Question3.cpp.o -c /Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/src/Question3.cpp

CMakeFiles/main.dir/src/Question3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/main.dir/src/Question3.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/src/Question3.cpp > CMakeFiles/main.dir/src/Question3.cpp.i

CMakeFiles/main.dir/src/Question3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/Question3.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/src/Question3.cpp -o CMakeFiles/main.dir/src/Question3.cpp.s

CMakeFiles/main.dir/src/Question4.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/Question4.cpp.o: /Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/src/Question4.cpp
CMakeFiles/main.dir/src/Question4.cpp.o: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/main.dir/src/Question4.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/src/Question4.cpp.o -MF CMakeFiles/main.dir/src/Question4.cpp.o.d -o CMakeFiles/main.dir/src/Question4.cpp.o -c /Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/src/Question4.cpp

CMakeFiles/main.dir/src/Question4.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/main.dir/src/Question4.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/src/Question4.cpp > CMakeFiles/main.dir/src/Question4.cpp.i

CMakeFiles/main.dir/src/Question4.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/Question4.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/src/Question4.cpp -o CMakeFiles/main.dir/src/Question4.cpp.s

CMakeFiles/main.dir/src/Question5.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/Question5.cpp.o: /Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/src/Question5.cpp
CMakeFiles/main.dir/src/Question5.cpp.o: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/main.dir/src/Question5.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/src/Question5.cpp.o -MF CMakeFiles/main.dir/src/Question5.cpp.o.d -o CMakeFiles/main.dir/src/Question5.cpp.o -c /Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/src/Question5.cpp

CMakeFiles/main.dir/src/Question5.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/main.dir/src/Question5.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/src/Question5.cpp > CMakeFiles/main.dir/src/Question5.cpp.i

CMakeFiles/main.dir/src/Question5.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/Question5.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/src/Question5.cpp -o CMakeFiles/main.dir/src/Question5.cpp.s

# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/main/main.cpp.o" \
"CMakeFiles/main.dir/src/Question1.cpp.o" \
"CMakeFiles/main.dir/src/Question2.cpp.o" \
"CMakeFiles/main.dir/src/Question3.cpp.o" \
"CMakeFiles/main.dir/src/Question4.cpp.o" \
"CMakeFiles/main.dir/src/Question5.cpp.o"

# External object files for target main
main_EXTERNAL_OBJECTS =

main: CMakeFiles/main.dir/main/main.cpp.o
main: CMakeFiles/main.dir/src/Question1.cpp.o
main: CMakeFiles/main.dir/src/Question2.cpp.o
main: CMakeFiles/main.dir/src/Question3.cpp.o
main: CMakeFiles/main.dir/src/Question4.cpp.o
main: CMakeFiles/main.dir/src/Question5.cpp.o
main: CMakeFiles/main.dir/build.make
main: /Library/Developer/CommandLineTools/SDKs/MacOSX13.1.sdk/System/Library/Frameworks/OpenGL.framework
main: /Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/third_party/matplotplusplus/install/lib/libmatplot.a
main: /Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/third_party/glfw/install/lib/libglfw3.a
main: /opt/homebrew/lib/libGLEW.2.2.0.dylib
main: /Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/third_party/matplotplusplus/install/lib/Matplot++/libnodesoup.a
main: CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable main"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/main.dir/build: main
.PHONY : CMakeFiles/main.dir/build

CMakeFiles/main.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/main.dir/cmake_clean.cmake
.PHONY : CMakeFiles/main.dir/clean

CMakeFiles/main.dir/depend:
	cd /Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2 /Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2 /Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/build /Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/build /Users/aidanmcgrath/Desktop/AERSP424/Linux-To_HW2/build/CMakeFiles/main.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/main.dir/depend

