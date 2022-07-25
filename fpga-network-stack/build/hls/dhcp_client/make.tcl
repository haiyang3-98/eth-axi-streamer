
open_project dhcp_client_prj

open_solution "solution1"
set_part xcvu3p-ffvc1517-2-i
create_clock -period 6.4 -name default

set_top dhcp_client

add_files /home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/dhcp_client/dhcp_client.cpp -cflags "-I/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/dhcp_client"


#add_files -tb test_dhcp_client.cpp


#Check which command
set command [lindex $argv 2]

if {$command == "synthesis"} {
   csynth_design
} elseif {$command == "csim"} {
   csim_design
} elseif {$command == "ip"} {
   export_design -format ip_catalog -ipname "dhcp_client" -display_name "DHCP Client" -description "DHCP Client to be used with the Xilinx Labs TCP & UDP offload engines." -vendor "xilinx.labs" -version "1.05"
} elseif {$command == "installip"} {
   file mkdir /home/haiyang3/eth-axi-streamer/fpga-network-stack/iprepo
   file delete -force /home/haiyang3/eth-axi-streamer/fpga-network-stack/iprepo/dhcp_client
   file copy -force /home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/dhcp_client/dhcp_client_prj/solution1/impl/ip /home/haiyang3/eth-axi-streamer/fpga-network-stack/iprepo/dhcp_client/
} else {
   puts "No valid command specified. Use vivado_hls -f make.tcl <synthesis|csim|ip> ."
}


exit
