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

# Utility rule file for csim.ip_handler.

# Include the progress variables for this target.
include hls/ip_handler/CMakeFiles/csim.ip_handler.dir/progress.make

hls/ip_handler/CMakeFiles/csim.ip_handler: ../hls/ip_handler/ip_handler.cpp
hls/ip_handler/CMakeFiles/csim.ip_handler: ../hls/ip_handler/ip_handler.hpp
hls/ip_handler/CMakeFiles/csim.ip_handler: ../hls/ip_handler/ip_handler_config.hpp.in
hls/ip_handler/CMakeFiles/csim.ip_handler: ../hls/ip_handler/test_ip_handler.cpp
	cd /home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/ip_handler && /opt/xilinx/Vitis_HLS/2020.2/bin/vitis_hls -f make.tcl -tclargs csim

csim.ip_handler: hls/ip_handler/CMakeFiles/csim.ip_handler
csim.ip_handler: hls/ip_handler/CMakeFiles/csim.ip_handler.dir/build.make

.PHONY : csim.ip_handler

# Rule to build all files generated by this target.
hls/ip_handler/CMakeFiles/csim.ip_handler.dir/build: csim.ip_handler

.PHONY : hls/ip_handler/CMakeFiles/csim.ip_handler.dir/build

hls/ip_handler/CMakeFiles/csim.ip_handler.dir/clean:
	cd /home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/ip_handler && $(CMAKE_COMMAND) -P CMakeFiles/csim.ip_handler.dir/cmake_clean.cmake
.PHONY : hls/ip_handler/CMakeFiles/csim.ip_handler.dir/clean

hls/ip_handler/CMakeFiles/csim.ip_handler.dir/depend:
	cd /home/haiyang3/eth-axi-streamer/fpga-network-stack/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/haiyang3/eth-axi-streamer/fpga-network-stack /home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/ip_handler /home/haiyang3/eth-axi-streamer/fpga-network-stack/build /home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/ip_handler /home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/ip_handler/CMakeFiles/csim.ip_handler.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : hls/ip_handler/CMakeFiles/csim.ip_handler.dir/depend
