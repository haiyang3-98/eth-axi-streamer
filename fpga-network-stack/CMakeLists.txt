# Author:   David Sidler (david.sidler@inf.ethz.ch)

cmake_minimum_required(VERSION 3.0)

project(network-stack-example)

# Include custom Find<Module>.cmake scripts to enable searching for Vivado HLS                                
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_SOURCE_DIR}/cmake)  

# Check if parent directory
get_directory_property(hasParent PARENT_DIRECTORY)

if (DEFINED ENV{IPREPO_DIR})
   set(IPREPO_DIR $ENV{IPREPO_DIR})
elseif (NOT IPREPO_DIR)
   set(IPREPO_DIR ${CMAKE_CURRENT_SOURCE_DIR}/iprepo)
   message("set iprepo dir ${IPREPO_DIR}")
endif()

# set(DEVICE_NAME
if (NOT hasParent)
   if (DEVICE_NAME STREQUAL "u280")
      set(FPGA_PART xcu280-fsvh2892-2L-e)
      set(FPGA_FAMILY ultraplus)
      set(NETWORK_BANDWIDTH 100 CACHE STRING "Network bandwidth")
   endif()
   if (DEVICE_NAME STREQUAL "adm9v3")
   set(FPGA_PART xcvu3p-ffvc1517-2-i)
   set(FPGA_FAMILY ultraplus)
   set(NETWORK_BANDWIDTH 100 CACHE STRING "Network bandwidth")
   endif()
endif()

# set bandwidth
if (NOT DEFINED NETWORK_INTERFACE)
   set(NETWORK_INTERFACE 100)
endif()
if (NOT DEFINED DATA_WIDTH)
   set(DATA_WIDTH 64)
endif()
if (NOT DEFINED CLOCK_PERIOD)
   set(CLOCK_PERIOD 3.2)
endif()
if (NOT DEFINED ${TCP_STACK_MSS})
   set(TCP_STACK_MSS 4096)
endif()
if (NOT DEFINED ${TCP_STACK_WINDOW_SCALING_EN})
   set(TCP_STACK_WINDOW_SCALING_EN 1)
endif()


#HLS IPs
add_subdirectory(hls/arp_server_subnet)
add_subdirectory(hls/dhcp_client)
add_subdirectory(hls/echo_server_application)
add_subdirectory(hls/icmp_server)
#add_subdirectory(hls/iperf_client)
#add_subdirectory(hls/iperf_udp)
add_subdirectory(hls/ip_handler)
add_subdirectory(hls/ipv4)
add_subdirectory(hls/mac_ip_encode)
add_subdirectory(hls/toe)
add_subdirectory(hls/udp)
#add_subdirectory(hls/rocev2)
add_subdirectory(hls/hash_table)
#add_subdirectory(hls/ethernet_frame_padding)
add_subdirectory(hls/ethernet_frame_padding_512)
