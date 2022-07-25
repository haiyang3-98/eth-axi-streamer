
open_project ipv4_prj

open_solution "solution1"
set_part xcvu3p-ffvc1517-2-i
create_clock -period 6.4 -name default

set_top ipv4_top

#add_files /home/haiyang3/eth-axi-streamer/fpga-network-stack/../packet.hpp
#add_files /home/haiyang3/eth-axi-streamer/fpga-network-stack/ipv4.hpp
add_files /home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/ipv4/ipv4.cpp -cflags "-I/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/ipv4"


#add_files -tb /home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/ipv4/test_ipv4.cpp


#Check which command
set command [lindex $argv 2]

if {$command == "synthesis"} {
   csynth_design
} elseif {$command == "csim"} {
   csim_design
} elseif {$command == "ip"} {
   export_design -format ip_catalog -ipname "ipv4" -display_name "IPv4" -description "" -vendor "ethz.systems.fpga" -version "0.1"
} elseif {$command == "installip"} {
   file mkdir /home/haiyang3/eth-axi-streamer/fpga-network-stack/iprepo
   file delete -force /home/haiyang3/eth-axi-streamer/fpga-network-stack/iprepo/ipv4
   file copy -force /home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/ipv4/ipv4_prj/solution1/impl/ip /home/haiyang3/eth-axi-streamer/fpga-network-stack/iprepo/ipv4/
} else {
   puts "No valid command specified. Use vivado_hls -f make.tcl <synthesis|csim|ip> ."
}


exit
