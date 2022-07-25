
open_project echo_server_application_prj

open_solution "solution1"
set_part xcvu3p-ffvc1517-2-i
create_clock -period 6.4 -name default

set_top echo_server_application

add_files /home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/echo_server_application/echo_server_application.cpp -cflags "-I/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/echo_server_application"


#add_files -tb test_echo_server_application.cpp


#Check which command
set command [lindex $argv 2]

if {$command == "synthesis"} {
   csynth_design
} elseif {$command == "csim"} {
   csim_design
} elseif {$command == "ip"} {
   export_design -format ip_catalog -ipname "echo_server_application" -display_name "Echo Server Application for 10G TOE" -description "Echos packets on connections coming in on port 7." -vendor "ethz.systems" -version "1.2"
} elseif {$command == "installip"} {
   file mkdir /home/haiyang3/eth-axi-streamer/fpga-network-stack/iprepo
   file delete -force /home/haiyang3/eth-axi-streamer/fpga-network-stack/iprepo/echo_server_application
   file copy -force /home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/echo_server_application/echo_server_application_prj/solution1/impl/ip /home/haiyang3/eth-axi-streamer/fpga-network-stack/iprepo/echo_server_application/
} else {
   puts "No valid command specified. Use vivado_hls -f make.tcl <synthesis|csim|ip> ."
}


exit
