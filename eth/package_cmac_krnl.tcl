# /*******************************************************************************
# (c) Copyright 2019 Xilinx, Inc. All rights reserved.
# This file contains confidential and proprietary information 
# of Xilinx, Inc. and is protected under U.S. and
# international copyright and other intellectual property 
# laws.
# 
# DISCLAIMER
# This disclaimer is not a license and does not grant any 
# rights to the materials distributed herewith. Except as 
# otherwise provided in a valid license issued to you by 
# Xilinx, and to the maximum extent permitted by applicable
# law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
# WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES 
# AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING 
# BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
# INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and 
# (2) Xilinx shall not be liable (whether in contract or tort, 
# including negligence, or under any other theory of 
# liability) for any loss or damage of any kind or nature 
# related to, arising under or in connection with these 
# materials, including for any direct, or any indirect, 
# special, incidental, or consequential loss or damage 
# (including loss of data, profits, goodwill, or any type of 
# loss or damage suffered as a result of any action brought 
# by a third party) even if such damage or loss was 
# reasonably foreseeable or Xilinx had been advised of the 
# possibility of the same.
# 
# CRITICAL APPLICATIONS
# Xilinx products are not designed or intended to be fail-
# safe, or for use in any application requiring fail-safe
# performance, such as life-support or safety devices or 
# systems, Class III medical devices, nuclear facilities, 
# applications related to the deployment of airbags, or any 
# other applications that could lead to death, personal 
# injury, or severe property or environmental damage 
# (individually and collectively, "Critical 
# Applications"). Customer assumes the sole risk and 
# liability of any use of Xilinx products in Critical 
# Applications, subject only to applicable laws and 
# regulations governing limitations on product liability.
# 
# THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS 
# PART OF THIS FILE AT ALL TIMES.
# 
# *******************************************************************************/
set path_to_hdl "."
set path_to_packaged "./packaged_kernel_0"
set path_to_tmp_project "./tmp_kernel_pack_0"
 
set projPart "xcvu3p-ffvc1517-2-i"

set projName kernel_pack
create_project -force $projName $path_to_tmp_project -part $projPart

add_files -norecurse [glob $path_to_hdl/*.v $path_to_hdl/*.sv $path_to_hdl/*.svh ]

remove_files  ./cmac_usplus_axis_wrapper_1.sv

set_property top cmac_krnl_0 [current_fileset]
update_compile_order -fileset sources_1

set_property  ip_repo_paths  ../fpga-network-stack/iprepo [current_project]
update_ip_catalog

create_ip -name axis_register_slice -vendor xilinx.com -library ip -module_name axis_register_slice_512 
set_property -dict [list CONFIG.TDATA_NUM_BYTES {64} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.TUSER_WIDTH {1} CONFIG.Component_Name {axis_register_slice_512}] [get_ips axis_register_slice_512]

create_ip -name axis_data_fifo -vendor xilinx.com -library ip -module_name axis_pkg_fifo_512 
set_property -dict [list CONFIG.TDATA_NUM_BYTES {64} CONFIG.FIFO_MODE {2} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.TUSER_WIDTH {1} CONFIG.Component_Name {axis_pkg_fifo_512}] [get_ips axis_pkg_fifo_512]

create_ip -name ethernet_frame_padding_512 -vendor ethz.systems.fpga -library hls -version 0.1 -module_name ethernet_frame_padding_512_ip 

create_ip -name cmac_usplus -vendor xilinx.com -library ip -module_name cmac_usplus_0

set_property -dict [list \
    CONFIG.CMAC_CAUI4_MODE {1} \
    CONFIG.NUM_LANES {4x25} \
    CONFIG.GT_REF_CLK_FREQ {161.1328125} \
    CONFIG.USER_INTERFACE {AXIS} \
    CONFIG.GT_DRP_CLK {100} \
    CONFIG.TX_FLOW_CONTROL {1} \
    CONFIG.RX_FLOW_CONTROL {1} \
    CONFIG.INCLUDE_RS_FEC {1} \
    CONFIG.CMAC_CORE_SELECT {CMACE4_X0Y2} \
    CONFIG.GT_GROUP_SELECT {X0Y16~X0Y19} \
    CONFIG.LANE1_GT_LOC {X0Y16} \
    CONFIG.LANE2_GT_LOC {X0Y17} \
    CONFIG.LANE3_GT_LOC {X0Y18} \
    CONFIG.LANE4_GT_LOC {X0Y19} \
    CONFIG.ENABLE_PIPELINE_REG {1} \
    CONFIG.ENABLE_TIME_STAMPING {1}
] [get_ips cmac_usplus_0]
 
## Crossings
create_ip -name axis_data_fifo -vendor xilinx.com -library ip -module_name axis_data_fifo_cc_udp_data
set_property -dict [list CONFIG.TDATA_NUM_BYTES {64} CONFIG.FIFO_DEPTH {256} CONFIG.IS_ACLK_ASYNC {1} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.TUSER_WIDTH {1} CONFIG.Component_Name {axis_data_fifo_cc_udp_data}] [get_ips axis_data_fifo_cc_udp_data]
update_compile_order -fileset sources_1

##ila
#create_ip -name ila -vendor xilinx.com -library ip -module_name ila_cmac
#set_property -dict [list CONFIG.C_PROBE0_WIDTH {4}  CONFIG.C_PROBE8_WIDTH {4} CONFIG.C_PROBE9_WIDTH {6} CONFIG.C_PROBE12_WIDTH {4} CONFIG.C_NUM_OF_PROBES {14} CONFIG.C_EN_STRG_QUAL {1} CONFIG.C_ADV_TRIGGER {true} CONFIG.C_INPUT_PIPE_STAGES {1}] [get_ips ila_cmac]
#update_compile_order -fileset sources_1

#create_ip -name ila -vendor xilinx.com -library ip -module_name ila_0
#set_property -dict [list CONFIG.C_NUM_OF_PROBES {1} CONFIG.C_EN_STRG_QUAL {1} CONFIG.C_ADV_TRIGGER {true} CONFIG.C_INPUT_PIPE_STAGES {1}] [get_ips ila_0]
#update_compile_order -fileset sources_1

create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_512
set_property -dict [list CONFIG.C_NUM_OF_PROBES {9} CONFIG.Component_Name {ila_512} CONFIG.C_SLOT_0_AXI_PROTOCOL {AXI4S} CONFIG.C_SLOT_0_AXIS_TDATA_WIDTH {512} CONFIG.C_ENABLE_ILA_AXI_MON {true} CONFIG.C_MONITOR_TYPE {AXI}] [get_ips ila_512]
update_compile_order -fileset sources_1


create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_eth
set_property -dict [list CONFIG.C_PROBE4_WIDTH {1} CONFIG.C_PROBE3_WIDTH {15} CONFIG.C_PROBE2_WIDTH {47} CONFIG.C_PROBE1_WIDTH {47} CONFIG.C_NUM_OF_PROBES {5} CONFIG.Component_Name {ila_eth}] [get_ips ila_eth]


update_compile_order -fileset sources_1
update_compile_order -fileset sim_1
ipx::package_project -root_dir $path_to_packaged -vendor xilinx.com -library RTLKernel -taxonomy /KernelIP -import_files -set_current false
ipx::unload_core $path_to_packaged/component.xml
ipx::edit_ip_in_project -upgrade true -name tmp_edit_project -directory $path_to_packaged $path_to_packaged/component.xml
set_property core_revision 1 [ipx::current_core]
foreach up [ipx::get_user_parameters] {
  ipx::remove_user_parameter [get_property NAME $up] [ipx::current_core]
}
set_property sdx_kernel true [ipx::current_core]
set_property sdx_kernel_type rtl [ipx::current_core]
ipx::create_xgui_files [ipx::current_core]
ipx::add_bus_interface ap_clk [ipx::current_core]
set_property abstraction_type_vlnv xilinx.com:signal:clock_rtl:1.0 [ipx::get_bus_interfaces ap_clk -of_objects [ipx::current_core]]
set_property bus_type_vlnv xilinx.com:signal:clock:1.0 [ipx::get_bus_interfaces ap_clk -of_objects [ipx::current_core]]
ipx::add_port_map CLK [ipx::get_bus_interfaces ap_clk -of_objects [ipx::current_core]]
set_property physical_name ap_clk [ipx::get_port_maps CLK -of_objects [ipx::get_bus_interfaces ap_clk -of_objects [ipx::current_core]]]

ipx::add_bus_interface gt_serial_port [ipx::current_core]
set_property interface_mode master [ipx::get_bus_interfaces gt_serial_port -of_objects [ipx::current_core]]
set_property abstraction_type_vlnv xilinx.com:interface:gt_rtl:1.0 [ipx::get_bus_interfaces gt_serial_port -of_objects [ipx::current_core]]
set_property bus_type_vlnv xilinx.com:interface:gt:1.0 [ipx::get_bus_interfaces gt_serial_port -of_objects [ipx::current_core]]
ipx::add_port_map GRX_P [ipx::get_bus_interfaces gt_serial_port -of_objects [ipx::current_core]]
set_property physical_name gt_rxp_in [ipx::get_port_maps GRX_P -of_objects [ipx::get_bus_interfaces gt_serial_port -of_objects [ipx::current_core]]]
ipx::add_port_map GTX_N [ipx::get_bus_interfaces gt_serial_port -of_objects [ipx::current_core]]
set_property physical_name gt_txn_out [ipx::get_port_maps GTX_N -of_objects [ipx::get_bus_interfaces gt_serial_port -of_objects [ipx::current_core]]]
ipx::add_port_map GRX_N [ipx::get_bus_interfaces gt_serial_port -of_objects [ipx::current_core]]
set_property physical_name gt_rxn_in [ipx::get_port_maps GRX_N -of_objects [ipx::get_bus_interfaces gt_serial_port -of_objects [ipx::current_core]]]
ipx::add_port_map GTX_P [ipx::get_bus_interfaces gt_serial_port -of_objects [ipx::current_core]]
set_property physical_name gt_txp_out [ipx::get_port_maps GTX_P -of_objects [ipx::get_bus_interfaces gt_serial_port -of_objects [ipx::current_core]]]

ipx::add_bus_interface axis_net_rx [ipx::current_core]
set_property interface_mode master [ipx::get_bus_interfaces axis_net_rx -of_objects [ipx::current_core]]
set_property abstraction_type_vlnv xilinx.com:interface:axis_rtl:1.0 [ipx::get_bus_interfaces axis_net_rx -of_objects [ipx::current_core]]
ipx::associate_bus_interfaces -busif axis_net_rx -clock ap_clk [ipx::current_core]

ipx::add_bus_interface axis_net_tx [ipx::current_core]
set_property interface_mode slave [ipx::get_bus_interfaces axis_net_tx -of_objects [ipx::current_core]]
set_property abstraction_type_vlnv xilinx.com:interface:axis_rtl:1.0 [ipx::get_bus_interfaces axis_net_tx -of_objects [ipx::current_core]]
ipx::associate_bus_interfaces -busif axis_net_tx -clock ap_clk [ipx::current_core]

puts "TEMPORARY: Not packaging reference clock as diff clock due to post-System Linker validate error"


set_property xpm_libraries {XPM_CDC XPM_MEMORY XPM_FIFO} [ipx::current_core]
set_property supported_families { } [ipx::current_core]
set_property auto_family_support_level level_2 [ipx::current_core]
ipx::update_checksums [ipx::current_core]
ipx::save_core [ipx::current_core]
close_project -delete

set path_to_packaged "./packaged_kernel_1"
set path_to_tmp_project "./tmp_kernel_pack_1"
 
set projPart "xcvu3p-ffvc1517-2-i"

set projName kernel_pack
create_project -force $projName $path_to_tmp_project -part $projPart

add_files -norecurse [glob $path_to_hdl/*.v $path_to_hdl/*.sv $path_to_hdl/*.svh ]

remove_files  ./cmac_usplus_axis_wrapper.sv

set_property top cmac_krnl_1 [current_fileset]
update_compile_order -fileset sources_1

set_property  ip_repo_paths  ../fpga-network-stack/iprepo [current_project]
update_ip_catalog

create_ip -name axis_register_slice -vendor xilinx.com -library ip -module_name axis_register_slice_512 
set_property -dict [list CONFIG.TDATA_NUM_BYTES {64} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.TUSER_WIDTH {1} CONFIG.Component_Name {axis_register_slice_512}] [get_ips axis_register_slice_512]

create_ip -name axis_data_fifo -vendor xilinx.com -library ip -module_name axis_pkg_fifo_512 
set_property -dict [list CONFIG.TDATA_NUM_BYTES {64} CONFIG.FIFO_MODE {2} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.TUSER_WIDTH {1} CONFIG.Component_Name {axis_pkg_fifo_512}] [get_ips axis_pkg_fifo_512]

create_ip -name ethernet_frame_padding_512 -vendor ethz.systems.fpga -library hls -version 0.1 -module_name ethernet_frame_padding_512_ip 
 
create_ip -name cmac_usplus -vendor xilinx.com -library ip -module_name cmac_usplus_1

set_property -dict [list \
    CONFIG.CMAC_CAUI4_MODE {1} \
    CONFIG.NUM_LANES {4x25} \
    CONFIG.GT_REF_CLK_FREQ {161.1328125} \
    CONFIG.USER_INTERFACE {AXIS} \
    CONFIG.GT_DRP_CLK {100} \
    CONFIG.TX_FLOW_CONTROL {1} \
    CONFIG.RX_FLOW_CONTROL {1} \
    CONFIG.INCLUDE_RS_FEC {1} \
    CONFIG.CMAC_CORE_SELECT {CMACE4_X0Y1} \
    CONFIG.GT_GROUP_SELECT {X0Y12~X0Y15} \
    CONFIG.LANE1_GT_LOC {X0Y12} \
    CONFIG.LANE2_GT_LOC {X0Y13} \
    CONFIG.LANE3_GT_LOC {X0Y14} \
    CONFIG.LANE4_GT_LOC {X0Y15} \
    CONFIG.ENABLE_PIPELINE_REG {0} \
    CONFIG.ENABLE_TIME_STAMPING {0}
] [get_ips cmac_usplus_1]
 
## Crossings
create_ip -name axis_data_fifo -vendor xilinx.com -library ip -module_name axis_data_fifo_cc_udp_data
set_property -dict [list CONFIG.TDATA_NUM_BYTES {64} CONFIG.FIFO_DEPTH {256} CONFIG.IS_ACLK_ASYNC {1} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.TUSER_WIDTH {1} CONFIG.Component_Name {axis_data_fifo_cc_udp_data}] [get_ips axis_data_fifo_cc_udp_data]
update_compile_order -fileset sources_1

##ila
#create_ip -name ila -vendor xilinx.com -library ip -module_name ila_cmac
#set_property -dict [list CONFIG.C_PROBE0_WIDTH {4}  CONFIG.C_PROBE8_WIDTH {4} CONFIG.C_PROBE9_WIDTH {6} CONFIG.C_PROBE12_WIDTH {4} CONFIG.C_NUM_OF_PROBES {14} CONFIG.C_EN_STRG_QUAL {1} CONFIG.C_ADV_TRIGGER {true} CONFIG.C_INPUT_PIPE_STAGES {1}] [get_ips ila_cmac]
#update_compile_order -fileset sources_1

#create_ip -name ila -vendor xilinx.com -library ip -module_name ila_0
#set_property -dict [list CONFIG.C_NUM_OF_PROBES {1} CONFIG.C_EN_STRG_QUAL {1} CONFIG.C_ADV_TRIGGER {true} CONFIG.C_INPUT_PIPE_STAGES {1}] [get_ips ila_0]
#update_compile_order -fileset sources_1
create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_512
set_property -dict [list CONFIG.C_NUM_OF_PROBES {9} CONFIG.Component_Name {ila_512} CONFIG.C_SLOT_0_AXI_PROTOCOL {AXI4S} CONFIG.C_SLOT_0_AXIS_TDATA_WIDTH {512} CONFIG.C_ENABLE_ILA_AXI_MON {true} CONFIG.C_MONITOR_TYPE {AXI}] [get_ips ila_512]
update_compile_order -fileset sources_1

create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_eth
set_property -dict [list CONFIG.C_PROBE4_WIDTH {1} CONFIG.C_PROBE3_WIDTH {15} CONFIG.C_PROBE2_WIDTH {47} CONFIG.C_PROBE1_WIDTH {47} CONFIG.C_NUM_OF_PROBES {5} CONFIG.Component_Name {ila_eth}] [get_ips ila_eth]


update_compile_order -fileset sources_1
update_compile_order -fileset sim_1
ipx::package_project -root_dir $path_to_packaged -vendor xilinx.com -library RTLKernel -taxonomy /KernelIP -import_files -set_current false
ipx::unload_core $path_to_packaged/component.xml
ipx::edit_ip_in_project -upgrade true -name tmp_edit_project -directory $path_to_packaged $path_to_packaged/component.xml
set_property core_revision 1 [ipx::current_core]
foreach up [ipx::get_user_parameters] {
  ipx::remove_user_parameter [get_property NAME $up] [ipx::current_core]
}
set_property sdx_kernel true [ipx::current_core]
set_property sdx_kernel_type rtl [ipx::current_core]
ipx::create_xgui_files [ipx::current_core]
ipx::add_bus_interface ap_clk [ipx::current_core]
set_property abstraction_type_vlnv xilinx.com:signal:clock_rtl:1.0 [ipx::get_bus_interfaces ap_clk -of_objects [ipx::current_core]]
set_property bus_type_vlnv xilinx.com:signal:clock:1.0 [ipx::get_bus_interfaces ap_clk -of_objects [ipx::current_core]]
ipx::add_port_map CLK [ipx::get_bus_interfaces ap_clk -of_objects [ipx::current_core]]
set_property physical_name ap_clk [ipx::get_port_maps CLK -of_objects [ipx::get_bus_interfaces ap_clk -of_objects [ipx::current_core]]]

ipx::add_bus_interface gt_serial_port [ipx::current_core]
set_property interface_mode master [ipx::get_bus_interfaces gt_serial_port -of_objects [ipx::current_core]]
set_property abstraction_type_vlnv xilinx.com:interface:gt_rtl:1.0 [ipx::get_bus_interfaces gt_serial_port -of_objects [ipx::current_core]]
set_property bus_type_vlnv xilinx.com:interface:gt:1.0 [ipx::get_bus_interfaces gt_serial_port -of_objects [ipx::current_core]]
ipx::add_port_map GRX_P [ipx::get_bus_interfaces gt_serial_port -of_objects [ipx::current_core]]
set_property physical_name gt_rxp_in [ipx::get_port_maps GRX_P -of_objects [ipx::get_bus_interfaces gt_serial_port -of_objects [ipx::current_core]]]
ipx::add_port_map GTX_N [ipx::get_bus_interfaces gt_serial_port -of_objects [ipx::current_core]]
set_property physical_name gt_txn_out [ipx::get_port_maps GTX_N -of_objects [ipx::get_bus_interfaces gt_serial_port -of_objects [ipx::current_core]]]
ipx::add_port_map GRX_N [ipx::get_bus_interfaces gt_serial_port -of_objects [ipx::current_core]]
set_property physical_name gt_rxn_in [ipx::get_port_maps GRX_N -of_objects [ipx::get_bus_interfaces gt_serial_port -of_objects [ipx::current_core]]]
ipx::add_port_map GTX_P [ipx::get_bus_interfaces gt_serial_port -of_objects [ipx::current_core]]
set_property physical_name gt_txp_out [ipx::get_port_maps GTX_P -of_objects [ipx::get_bus_interfaces gt_serial_port -of_objects [ipx::current_core]]]

ipx::add_bus_interface axis_net_rx [ipx::current_core]
set_property interface_mode master [ipx::get_bus_interfaces axis_net_rx -of_objects [ipx::current_core]]
set_property abstraction_type_vlnv xilinx.com:interface:axis_rtl:1.0 [ipx::get_bus_interfaces axis_net_rx -of_objects [ipx::current_core]]
ipx::associate_bus_interfaces -busif axis_net_rx -clock ap_clk [ipx::current_core]

ipx::add_bus_interface axis_net_tx [ipx::current_core]
set_property interface_mode slave [ipx::get_bus_interfaces axis_net_tx -of_objects [ipx::current_core]]
set_property abstraction_type_vlnv xilinx.com:interface:axis_rtl:1.0 [ipx::get_bus_interfaces axis_net_tx -of_objects [ipx::current_core]]
ipx::associate_bus_interfaces -busif axis_net_tx -clock ap_clk [ipx::current_core]

puts "TEMPORARY: Not packaging reference clock as diff clock due to post-System Linker validate error"


set_property xpm_libraries {XPM_CDC XPM_MEMORY XPM_FIFO} [ipx::current_core]
set_property supported_families { } [ipx::current_core]
set_property auto_family_support_level level_2 [ipx::current_core]
ipx::update_checksums [ipx::current_core]
ipx::save_core [ipx::current_core]
close_project -delete

