
open_project ip_handler_prj

open_solution "solution1"
set_part xcvu3p-ffvc1517-2-i
create_clock -period 6.4 -name default

set_top ip_handler_top

add_files /home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/ip_handler/../axi_utils.cpp
add_files /home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/ip_handler/../ipv4/ipv4_utils.cpp
add_files /home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/ip_handler/ip_handler.cpp -cflags "-I/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/ip_handler"


add_files -tb /home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/ip_handler/test_ip_handler.cpp


#config_rtl -disable_start_propagation

#Check which command
set command [lindex $argv 2]

if {$command == "synthesis"} {
   csynth_design
} elseif {$command == "csim"} {
   csim_design -clean
} elseif {$command == "ip"} {
   export_design -format ip_catalog -ipname "ip_handler" -display_name "IP Handler" -vendor "ethz.systems.fpga" -version "2.0"
} elseif {$command == "installip"} {
   file mkdir /home/haiyang3/eth-axi-streamer/fpga-network-stack/iprepo
   file delete -force /home/haiyang3/eth-axi-streamer/fpga-network-stack/iprepo/ip_handler
   file copy -force /home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/ip_handler/ip_handler_prj/solution1/impl/ip /home/haiyang3/eth-axi-streamer/fpga-network-stack/iprepo/ip_handler/
} else {
   puts "No valid command specified. Use vivado_hls -f make.tcl <synthesis|csim|ip> ."
}


exit
