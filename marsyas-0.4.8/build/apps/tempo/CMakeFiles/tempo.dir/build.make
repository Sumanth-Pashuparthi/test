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
include apps/tempo/CMakeFiles/tempo.dir/depend.make

# Include the progress variables for this target.
include apps/tempo/CMakeFiles/tempo.dir/progress.make

# Include the compile flags for this target's objects.
include apps/tempo/CMakeFiles/tempo.dir/flags.make

apps/tempo/CMakeFiles/tempo.dir/tempo.cpp.o: apps/tempo/CMakeFiles/tempo.dir/flags.make
apps/tempo/CMakeFiles/tempo.dir/tempo.cpp.o: /Users/carsonpotter/Desktop/marsyas-0.4.8/src/apps/tempo/tempo.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/carsonpotter/Desktop/marsyas-0.4.8/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object apps/tempo/CMakeFiles/tempo.dir/tempo.cpp.o"
	cd /Users/carsonpotter/Desktop/marsyas-0.4.8/build/apps/tempo && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/tempo.dir/tempo.cpp.o -c /Users/carsonpotter/Desktop/marsyas-0.4.8/src/apps/tempo/tempo.cpp

apps/tempo/CMakeFiles/tempo.dir/tempo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tempo.dir/tempo.cpp.i"
	cd /Users/carsonpotter/Desktop/marsyas-0.4.8/build/apps/tempo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/carsonpotter/Desktop/marsyas-0.4.8/src/apps/tempo/tempo.cpp > CMakeFiles/tempo.dir/tempo.cpp.i

apps/tempo/CMakeFiles/tempo.dir/tempo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tempo.dir/tempo.cpp.s"
	cd /Users/carsonpotter/Desktop/marsyas-0.4.8/build/apps/tempo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/carsonpotter/Desktop/marsyas-0.4.8/src/apps/tempo/tempo.cpp -o CMakeFiles/tempo.dir/tempo.cpp.s

apps/tempo/CMakeFiles/tempo.dir/tempo.cpp.o.requires:
.PHONY : apps/tempo/CMakeFiles/tempo.dir/tempo.cpp.o.requires

apps/tempo/CMakeFiles/tempo.dir/tempo.cpp.o.provides: apps/tempo/CMakeFiles/tempo.dir/tempo.cpp.o.requires
	$(MAKE) -f apps/tempo/CMakeFiles/tempo.dir/build.make apps/tempo/CMakeFiles/tempo.dir/tempo.cpp.o.provides.build
.PHONY : apps/tempo/CMakeFiles/tempo.dir/tempo.cpp.o.provides

apps/tempo/CMakeFiles/tempo.dir/tempo.cpp.o.provides.build: apps/tempo/CMakeFiles/tempo.dir/tempo.cpp.o

# Object files for target tempo
tempo_OBJECTS = \
"CMakeFiles/tempo.dir/tempo.cpp.o"

# External object files for target tempo
tempo_EXTERNAL_OBJECTS =

bin/tempo: apps/tempo/CMakeFiles/tempo.dir/tempo.cpp.o
bin/tempo: apps/tempo/CMakeFiles/tempo.dir/build.make
bin/tempo: lib/libmarsyas.dylib
bin/tempo: apps/tempo/CMakeFiles/tempo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/tempo"
	cd /Users/carsonpotter/Desktop/marsyas-0.4.8/build/apps/tempo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tempo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/tempo/CMakeFiles/tempo.dir/build: bin/tempo
.PHONY : apps/tempo/CMakeFiles/tempo.dir/build

apps/tempo/CMakeFiles/tempo.dir/requires: apps/tempo/CMakeFiles/tempo.dir/tempo.cpp.o.requires
.PHONY : apps/tempo/CMakeFiles/tempo.dir/requires

apps/tempo/CMakeFiles/tempo.dir/clean:
	cd /Users/carsonpotter/Desktop/marsyas-0.4.8/build/apps/tempo && $(CMAKE_COMMAND) -P CMakeFiles/tempo.dir/cmake_clean.cmake
.PHONY : apps/tempo/CMakeFiles/tempo.dir/clean

apps/tempo/CMakeFiles/tempo.dir/depend:
	cd /Users/carsonpotter/Desktop/marsyas-0.4.8/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/carsonpotter/Desktop/marsyas-0.4.8/src /Users/carsonpotter/Desktop/marsyas-0.4.8/src/apps/tempo /Users/carsonpotter/Desktop/marsyas-0.4.8/build /Users/carsonpotter/Desktop/marsyas-0.4.8/build/apps/tempo /Users/carsonpotter/Desktop/marsyas-0.4.8/build/apps/tempo/CMakeFiles/tempo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/tempo/CMakeFiles/tempo.dir/depend
