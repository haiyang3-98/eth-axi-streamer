
open_project hash_table_prj

open_solution "solution1"
set_part xcvu3p-ffvc1517-2-i
create_clock -period 6.4 -name default

set_top hash_table_top

add_files /home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/hash_table/hash_table.cpp -cflags "-std=c++11 -I/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/hash_table"


add_files -tb /home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/hash_table/test_hash_table.cpp -cflags "-std=c++11 -I/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/hash_table"


#Check which command
set command [lindex $argv 2]

if {$command == "synthesis"} {
   csynth_design
} elseif {$command == "csim"} {
   csim_design
} elseif {$command == "ip"} {
   export_design -format ip_catalog -ipname "hash_table" -display_name "Hash Table (cuckoo)" -description "" -vendor "ethz.systems.fpga" -version "1.0"
} elseif {$command == "installip"} {
   file mkdir /home/haiyang3/eth-axi-streamer/fpga-network-stack/iprepo
   file delete -force /home/haiyang3/eth-axi-streamer/fpga-network-stack/iprepo/hash_table
   file copy -force /home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/hash_table/hash_table_prj/solution1/impl/ip /home/haiyang3/eth-axi-streamer/fpga-network-stack/iprepo/hash_table/
} else {
   puts "No valid command specified. Use vivado_hls -f make.tcl <synthesis|csim|ip> ."
}


exit
