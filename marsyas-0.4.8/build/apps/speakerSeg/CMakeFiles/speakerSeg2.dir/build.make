# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = "/Applications/CMake 2.8-12.app/Contents/bin/cmake"

# The command to remove a file.
RM = "/Applications/CMake 2.8-12.app/Contents/bin/cmake" -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = "/Applications/CMake 2.8-12.app/Contents/bin/ccmake"

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/carsonpotter/Desktop/marsyas-0.4.8/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/carsonpotter/Desktop/marsyas-0.4.8/build

# Include any dependencies generated for this target.
include apps/speakerSeg/CMakeFiles/speakerSeg2.dir/depend.make

# Include the progress variables for this target.
include apps/speakerSeg/CMakeFiles/speakerSeg2.dir/progress.make

# Include the compile flags for this target's objects.
include apps/speakerSeg/CMakeFiles/speakerSeg2.dir/flags.make

apps/speakerSeg/CMakeFiles/speakerSeg2.dir/speakerSeg2.cpp.o: apps/speakerSeg/CMakeFiles/speakerSeg2.dir/flags.make
apps/speakerSeg/CMakeFiles/speakerSeg2.dir/speakerSeg2.cpp.o: /Users/carsonpotter/Desktop/marsyas-0.4.8/src/apps/speakerSeg/speakerSeg2.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/carsonpotter/Desktop/marsyas-0.4.8/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object apps/speakerSeg/CMakeFiles/speakerSeg2.dir/speakerSeg2.cpp.o"
	cd /Users/carsonpotter/Desktop/marsyas-0.4.8/build/apps/speakerSeg && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/speakerSeg2.dir/speakerSeg2.cpp.o -c /Users/carsonpotter/Desktop/marsyas-0.4.8/src/apps/speakerSeg/speakerSeg2.cpp

apps/speakerSeg/CMakeFiles/speakerSeg2.dir/speakerSeg2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/speakerSeg2.dir/speakerSeg2.cpp.i"
	cd /Users/carsonpotter/Desktop/marsyas-0.4.8/build/apps/speakerSeg && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/carsonpotter/Desktop/marsyas-0.4.8/src/apps/speakerSeg/speakerSeg2.cpp > CMakeFiles/speakerSeg2.dir/speakerSeg2.cpp.i

apps/speakerSeg/CMakeFiles/speakerSeg2.dir/speakerSeg2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/speakerSeg2.dir/speakerSeg2.cpp.s"
	cd /Users/carsonpotter/Desktop/marsyas-0.4.8/build/apps/speakerSeg && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/carsonpotter/Desktop/marsyas-0.4.8/src/apps/speakerSeg/speakerSeg2.cpp -o CMakeFiles/speakerSeg2.dir/speakerSeg2.cpp.s

apps/speakerSeg/CMakeFiles/speakerSeg2.dir/speakerSeg2.cpp.o.requires:
.PHONY : apps/speakerSeg/CMakeFiles/speakerSeg2.dir/speakerSeg2.cpp.o.requires

apps/speakerSeg/CMakeFiles/speakerSeg2.dir/speakerSeg2.cpp.o.provides: apps/speakerSeg/CMakeFiles/speakerSeg2.dir/speakerSeg2.cpp.o.requires
	$(MAKE) -f apps/speakerSeg/CMakeFiles/speakerSeg2.dir/build.make apps/speakerSeg/CMakeFiles/speakerSeg2.dir/speakerSeg2.cpp.o.provides.build
.PHONY : apps/speakerSeg/CMakeFiles/speakerSeg2.dir/speakerSeg2.cpp.o.provides

apps/speakerSeg/CMakeFiles/speakerSeg2.dir/speakerSeg2.cpp.o.provides.build: apps/speakerSeg/CMakeFiles/speakerSeg2.dir/speakerSeg2.cpp.o

# Object files for target speakerSeg2
speakerSeg2_OBJECTS = \
"CMakeFiles/speakerSeg2.dir/speakerSeg2.cpp.o"

# External object files for target speakerSeg2
speakerSeg2_EXTERNAL_OBJECTS =

bin/speakerSeg2: apps/speakerSeg/CMakeFiles/speakerSeg2.dir/speakerSeg2.cpp.o
bin/speakerSeg2: apps/speakerSeg/CMakeFiles/speakerSeg2.dir/build.make
bin/speakerSeg2: lib/libmarsyas.dylib
bin/speakerSeg2: apps/speakerSeg/CMakeFiles/speakerSeg2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/speakerSeg2"
	cd /Users/carsonpotter/Desktop/marsyas-0.4.8/build/apps/speakerSeg && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/speakerSeg2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/speakerSeg/CMakeFiles/speakerSeg2.dir/build: bin/speakerSeg2
.PHONY : apps/speakerSeg/CMakeFiles/speakerSeg2.dir/build

apps/speakerSeg/CMakeFiles/speakerSeg2.dir/requires: apps/speakerSeg/CMakeFiles/speakerSeg2.dir/speakerSeg2.cpp.o.requires
.PHONY : apps/speakerSeg/CMakeFiles/speakerSeg2.dir/requires

apps/speakerSeg/CMakeFiles/speakerSeg2.dir/clean:
	cd /Users/carsonpotter/Desktop/marsyas-0.4.8/build/apps/speakerSeg && $(CMAKE_COMMAND) -P CMakeFiles/speakerSeg2.dir/cmake_clean.cmake
.PHONY : apps/speakerSeg/CMakeFiles/speakerSeg2.dir/clean

apps/speakerSeg/CMakeFiles/speakerSeg2.dir/depend:
	cd /Users/carsonpotter/Desktop/marsyas-0.4.8/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/carsonpotter/Desktop/marsyas-0.4.8/src /Users/carsonpotter/Desktop/marsyas-0.4.8/src/apps/speakerSeg /Users/carsonpotter/Desktop/marsyas-0.4.8/build /Users/carsonpotter/Desktop/marsyas-0.4.8/build/apps/speakerSeg /Users/carsonpotter/Desktop/marsyas-0.4.8/build/apps/speakerSeg/CMakeFiles/speakerSeg2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/speakerSeg/CMakeFiles/speakerSeg2.dir/depend

