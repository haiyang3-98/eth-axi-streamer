
open_project udp_prj

open_solution "solution1"
set_part xcvu3p-ffvc1517-2-i
create_clock -period 6.4 -name default

set_top udp_top

#add_files /home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/udp/../packet.hpp
#add_files /home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/udp/udp.hpp
add_files /home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/udp/udp.cpp -cflags "-I/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/udp"


#add_files -tb test_udp.cpp


#Check which command
set command [lindex $argv 2]

if {$command == "synthesis"} {
   csynth_design
} elseif {$command == "csim"} {
   csim_design
} elseif {$command == "ip"} {
   export_design -format ip_catalog -ipname "udp" -display_name "UDP" -description "" -vendor "ethz.systems.fpga" -version "0.4"
} elseif {$command == "installip"} {
   file mkdir /home/haiyang3/eth-axi-streamer/fpga-network-stack/iprepo
   file delete -force /home/haiyang3/eth-axi-streamer/fpga-network-stack/iprepo/udp
   file copy -force /home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/udp/udp_prj/solution1/impl/ip /home/haiyang3/eth-axi-streamer/fpga-network-stack/iprepo/udp/
} else {
   puts "No valid command specified. Use vivado_hls -f make.tcl <synthesis|csim|ip> ."
}


exit
