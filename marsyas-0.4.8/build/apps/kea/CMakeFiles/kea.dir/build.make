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
include apps/kea/CMakeFiles/kea.dir/depend.make

# Include the progress variables for this target.
include apps/kea/CMakeFiles/kea.dir/progress.make

# Include the compile flags for this target's objects.
include apps/kea/CMakeFiles/kea.dir/flags.make

apps/kea/CMakeFiles/kea.dir/kea.cpp.o: apps/kea/CMakeFiles/kea.dir/flags.make
apps/kea/CMakeFiles/kea.dir/kea.cpp.o: /Users/carsonpotter/Desktop/marsyas-0.4.8/src/apps/kea/kea.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/carsonpotter/Desktop/marsyas-0.4.8/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object apps/kea/CMakeFiles/kea.dir/kea.cpp.o"
	cd /Users/carsonpotter/Desktop/marsyas-0.4.8/build/apps/kea && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/kea.dir/kea.cpp.o -c /Users/carsonpotter/Desktop/marsyas-0.4.8/src/apps/kea/kea.cpp

apps/kea/CMakeFiles/kea.dir/kea.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kea.dir/kea.cpp.i"
	cd /Users/carsonpotter/Desktop/marsyas-0.4.8/build/apps/kea && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/carsonpotter/Desktop/marsyas-0.4.8/src/apps/kea/kea.cpp > CMakeFiles/kea.dir/kea.cpp.i

apps/kea/CMakeFiles/kea.dir/kea.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kea.dir/kea.cpp.s"
	cd /Users/carsonpotter/Desktop/marsyas-0.4.8/build/apps/kea && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/carsonpotter/Desktop/marsyas-0.4.8/src/apps/kea/kea.cpp -o CMakeFiles/kea.dir/kea.cpp.s

apps/kea/CMakeFiles/kea.dir/kea.cpp.o.requires:
.PHONY : apps/kea/CMakeFiles/kea.dir/kea.cpp.o.requires

apps/kea/CMakeFiles/kea.dir/kea.cpp.o.provides: apps/kea/CMakeFiles/kea.dir/kea.cpp.o.requires
	$(MAKE) -f apps/kea/CMakeFiles/kea.dir/build.make apps/kea/CMakeFiles/kea.dir/kea.cpp.o.provides.build
.PHONY : apps/kea/CMakeFiles/kea.dir/kea.cpp.o.provides

apps/kea/CMakeFiles/kea.dir/kea.cpp.o.provides.build: apps/kea/CMakeFiles/kea.dir/kea.cpp.o

# Object files for target kea
kea_OBJECTS = \
"CMakeFiles/kea.dir/kea.cpp.o"

# External object files for target kea
kea_EXTERNAL_OBJECTS =

bin/kea: apps/kea/CMakeFiles/kea.dir/kea.cpp.o
bin/kea: apps/kea/CMakeFiles/kea.dir/build.make
bin/kea: lib/libmarsyas.dylib
bin/kea: apps/kea/CMakeFiles/kea.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/kea"
	cd /Users/carsonpotter/Desktop/marsyas-0.4.8/build/apps/kea && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kea.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/kea/CMakeFiles/kea.dir/build: bin/kea
.PHONY : apps/kea/CMakeFiles/kea.dir/build

apps/kea/CMakeFiles/kea.dir/requires: apps/kea/CMakeFiles/kea.dir/kea.cpp.o.requires
.PHONY : apps/kea/CMakeFiles/kea.dir/requires

apps/kea/CMakeFiles/kea.dir/clean:
	cd /Users/carsonpotter/Desktop/marsyas-0.4.8/build/apps/kea && $(CMAKE_COMMAND) -P CMakeFiles/kea.dir/cmake_clean.cmake
.PHONY : apps/kea/CMakeFiles/kea.dir/clean

apps/kea/CMakeFiles/kea.dir/depend:
	cd /Users/carsonpotter/Desktop/marsyas-0.4.8/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/carsonpotter/Desktop/marsyas-0.4.8/src /Users/carsonpotter/Desktop/marsyas-0.4.8/src/apps/kea /Users/carsonpotter/Desktop/marsyas-0.4.8/build /Users/carsonpotter/Desktop/marsyas-0.4.8/build/apps/kea /Users/carsonpotter/Desktop/marsyas-0.4.8/build/apps/kea/CMakeFiles/kea.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/kea/CMakeFiles/kea.dir/depend
