
open_project ethernet_frame_padding_512_prj

open_solution "solution1"
set_part xcvu3p-ffvc1517-2-i
create_clock -period 6.4 -name default

set_top ethernet_frame_padding_512

add_files /home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/ethernet_frame_padding_512/ethernet_frame_padding_512.cpp -cflags "-I/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/ethernet_frame_padding_512"


#add_files -tb /home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/ethernet_frame_padding_512/test_ethernet_frame_padding_512.cpp


#Check which command
set command [lindex $argv 2]

if {$command == "synthesis"} {
   csynth_design
} elseif {$command == "csim"} {
   csim_design
} elseif {$command == "ip"} {
   export_design -format ip_catalog -display_name "Ethernet Frame Padding 512" -vendor "ethz.systems.fpga" -version "0.1"
} elseif {$command == "installip"} {
   file mkdir /home/haiyang3/eth-axi-streamer/fpga-network-stack/iprepo
   file delete -force /home/haiyang3/eth-axi-streamer/fpga-network-stack/iprepo/ethernet_frame_padding_512
   file copy -force /home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/ethernet_frame_padding_512/ethernet_frame_padding_512_prj/solution1/impl/ip /home/haiyang3/eth-axi-streamer/fpga-network-stack/iprepo/ethernet_frame_padding_512/
} else {
   puts "No valid command specified. Use vivado_hls -f make.tcl <synthesis|csim|ip> ."
}


exit
