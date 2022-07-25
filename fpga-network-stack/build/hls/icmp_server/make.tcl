
open_project icmp_server_prj

open_solution "solution1"
set_part xcvu3p-ffvc1517-2-i
create_clock -period 6.4 -name default

set_top icmp_server_top

add_files /home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/icmp_server/icmp_server.cpp -cflags "-I/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/icmp_server"


add_files -tb test_icmp_server.cpp


#Check which command
set command [lindex $argv 2]

if {$command == "synthesis"} {
   csynth_design
} elseif {$command == "csim"} {
   csim_design
} elseif {$command == "ip"} {
   export_design -format ip_catalog -ipname "icmp_server" -display_name "ICMP Server" -vendor "xilinx.labs" -version "1.67"
} elseif {$command == "installip"} {
   file mkdir /home/haiyang3/eth-axi-streamer/fpga-network-stack/iprepo
   file delete -force /home/haiyang3/eth-axi-streamer/fpga-network-stack/iprepo/icmp_server
   file copy -force /home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/icmp_server/icmp_server_prj/solution1/impl/ip /home/haiyang3/eth-axi-streamer/fpga-network-stack/iprepo/icmp_server/
} else {
   puts "No valid command specified. Use vivado_hls -f make.tcl <synthesis|csim|ip> ."
}


exit
