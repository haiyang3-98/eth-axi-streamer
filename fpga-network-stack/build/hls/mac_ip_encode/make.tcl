
open_project mac_ip_encode_prj

open_solution "solution1"
set_part xcvu3p-ffvc1517-2-i
create_clock -period 6.4 -name default

set_top mac_ip_encode_top

#add_files /home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/mac_ip_encode/../packet.hpp
add_files /home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/mac_ip_encode/../ipv4/ipv4_utils.cpp
add_files /home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/mac_ip_encode/mac_ip_encode.cpp -cflags "-I/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/mac_ip_encode"


add_files -tb /home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/mac_ip_encode/test_mac_ip_encode.cpp


#Check which command
set command [lindex $argv 2]

if {$command == "synthesis"} {
   csynth_design
} elseif {$command == "csim"} {
   csim_design -argv {/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/mac_ip_encode/in.dat /home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/mac_ip_encode/tcp.out}
} elseif {$command == "ip"} {
   export_design -format ip_catalog -ipname "mac_ip_encode" -display_name "MAC IP Encoder" -vendor "ethz.systems.fpga" -version "2.0"
} elseif {$command == "installip"} {
   file mkdir /home/haiyang3/eth-axi-streamer/fpga-network-stack/iprepo
   file delete -force /home/haiyang3/eth-axi-streamer/fpga-network-stack/iprepo/mac_ip_encode
   file copy -force /home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/mac_ip_encode/mac_ip_encode_prj/solution1/impl/ip /home/haiyang3/eth-axi-streamer/fpga-network-stack/iprepo/mac_ip_encode/
} else {
   puts "No valid command specified. Use vivado_hls -f make.tcl <synthesis|csim|ip> ."
}


exit
