# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.3

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /opt/xilinx/Vitis/2020.2/tps/lnx64/cmake-3.3.2/bin/cmake

# The command to remove a file.
RM = /opt/xilinx/Vitis/2020.2/tps/lnx64/cmake-3.3.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/haiyang3/eth-axi-streamer/fpga-network-stack

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/haiyang3/eth-axi-streamer/fpga-network-stack/build

# Utility rule file for installip.ipv4.

# Include the progress variables for this target.
include hls/ipv4/CMakeFiles/installip.ipv4.dir/progress.make

hls/ipv4/CMakeFiles/installip.ipv4: ../hls/ipv4/ipv4.cpp
hls/ipv4/CMakeFiles/installip.ipv4: ../hls/ipv4/ipv4.hpp
hls/ipv4/CMakeFiles/installip.ipv4: ../hls/ipv4/ipv4_config.hpp.in
	cd /home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/ipv4 && /opt/xilinx/Vitis_HLS/2020.2/bin/vitis_hls -f make.tcl -tclargs installip

installip.ipv4: hls/ipv4/CMakeFiles/installip.ipv4
installip.ipv4: hls/ipv4/CMakeFiles/installip.ipv4.dir/build.make

.PHONY : installip.ipv4

# Rule to build all files generated by this target.
hls/ipv4/CMakeFiles/installip.ipv4.dir/build: installip.ipv4

.PHONY : hls/ipv4/CMakeFiles/installip.ipv4.dir/build

hls/ipv4/CMakeFiles/installip.ipv4.dir/clean:
	cd /home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/ipv4 && $(CMAKE_COMMAND) -P CMakeFiles/installip.ipv4.dir/cmake_clean.cmake
.PHONY : hls/ipv4/CMakeFiles/installip.ipv4.dir/clean

hls/ipv4/CMakeFiles/installip.ipv4.dir/depend:
	cd /home/haiyang3/eth-axi-streamer/fpga-network-stack/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/haiyang3/eth-axi-streamer/fpga-network-stack /home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/ipv4 /home/haiyang3/eth-axi-streamer/fpga-network-stack/build /home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/ipv4 /home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/ipv4/CMakeFiles/installip.ipv4.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : hls/ipv4/CMakeFiles/installip.ipv4.dir/depend

