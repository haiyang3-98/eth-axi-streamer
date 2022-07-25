set moduleName arp_server_subnet_top
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {arp_server_subnet_top}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_axis_V_data_V int 64 regular {axi_s 0 volatile  { s_axis Data } }  }
	{ s_axis_V_keep_V int 8 regular {axi_s 0 volatile  { s_axis Keep } }  }
	{ s_axis_V_strb_V int 8 regular {axi_s 0 volatile  { s_axis Strb } }  }
	{ s_axis_V_last_V int 1 regular {axi_s 0 volatile  { s_axis Last } }  }
	{ s_axis_arp_lookup_request_V int 32 regular {axi_s 0 volatile  { s_axis_arp_lookup_request_V Data } }  }
	{ s_axis_host_arp_lookup_request_V int 32 regular {axi_s 0 volatile  { s_axis_host_arp_lookup_request_V Data } }  }
	{ m_axis_V_data_V int 64 regular {axi_s 1 volatile  { m_axis Data } }  }
	{ m_axis_V_keep_V int 8 regular {axi_s 1 volatile  { m_axis Keep } }  }
	{ m_axis_V_strb_V int 8 regular {axi_s 1 volatile  { m_axis Strb } }  }
	{ m_axis_V_last_V int 1 regular {axi_s 1 volatile  { m_axis Last } }  }
	{ m_axis_arp_lookup_reply_V int 128 regular {axi_s 1 volatile  { m_axis_arp_lookup_reply_V Data } }  }
	{ m_axis_host_arp_lookup_reply_V int 128 regular {axi_s 1 volatile  { m_axis_host_arp_lookup_reply_V Data } }  }
	{ myMacAddress int 48 regular  }
	{ myIpAddress int 32 regular  }
	{ regRequestCount int 16 regular {pointer 1}  }
	{ regReplyCount int 16 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "s_axis_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis.V.data.V","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis.V.keep.V","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis.V.strb.V","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_arp_lookup_request_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_arp_lookup_request.V","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_host_arp_lookup_request_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_host_arp_lookup_request.V","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis.V.data.V","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis.V.keep.V","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis.V.strb.V","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_arp_lookup_reply_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_arp_lookup_reply.V","cData": "int128","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_host_arp_lookup_reply_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_host_arp_lookup_reply.V","cData": "int128","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "myMacAddress", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "myMacAddress","cData": "int48","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "myIpAddress", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "myIpAddress","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "regRequestCount", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "regRequestCount","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "regReplyCount", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "regReplyCount","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ s_axis_TDATA sc_in sc_lv 64 signal 0 } 
	{ s_axis_TKEEP sc_in sc_lv 8 signal 1 } 
	{ s_axis_TSTRB sc_in sc_lv 8 signal 2 } 
	{ s_axis_TLAST sc_in sc_lv 1 signal 3 } 
	{ s_axis_arp_lookup_request_V_TDATA sc_in sc_lv 32 signal 4 } 
	{ s_axis_host_arp_lookup_request_V_TDATA sc_in sc_lv 32 signal 5 } 
	{ m_axis_TDATA sc_out sc_lv 64 signal 6 } 
	{ m_axis_TKEEP sc_out sc_lv 8 signal 7 } 
	{ m_axis_TSTRB sc_out sc_lv 8 signal 8 } 
	{ m_axis_TLAST sc_out sc_lv 1 signal 9 } 
	{ m_axis_arp_lookup_reply_V_TDATA sc_out sc_lv 128 signal 10 } 
	{ m_axis_host_arp_lookup_reply_V_TDATA sc_out sc_lv 128 signal 11 } 
	{ myMacAddress sc_in sc_lv 48 signal 12 } 
	{ myIpAddress sc_in sc_lv 32 signal 13 } 
	{ regRequestCount sc_out sc_lv 16 signal 14 } 
	{ regReplyCount sc_out sc_lv 16 signal 15 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axis_TVALID sc_in sc_logic 1 invld 3 } 
	{ s_axis_TREADY sc_out sc_logic 1 inacc 3 } 
	{ m_axis_TVALID sc_out sc_logic 1 outvld 9 } 
	{ m_axis_TREADY sc_in sc_logic 1 outacc 9 } 
	{ regRequestCount_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ regReplyCount_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ s_axis_arp_lookup_request_V_TVALID sc_in sc_logic 1 invld 4 } 
	{ s_axis_arp_lookup_request_V_TREADY sc_out sc_logic 1 inacc 4 } 
	{ s_axis_host_arp_lookup_request_V_TVALID sc_in sc_logic 1 invld 5 } 
	{ s_axis_host_arp_lookup_request_V_TREADY sc_out sc_logic 1 inacc 5 } 
	{ m_axis_arp_lookup_reply_V_TVALID sc_out sc_logic 1 outvld 10 } 
	{ m_axis_arp_lookup_reply_V_TREADY sc_in sc_logic 1 outacc 10 } 
	{ m_axis_host_arp_lookup_reply_V_TVALID sc_out sc_logic 1 outvld 11 } 
	{ m_axis_host_arp_lookup_reply_V_TREADY sc_in sc_logic 1 outacc 11 } 
}
set NewPortList {[ 
	{ "name": "s_axis_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_axis_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_axis_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_arp_lookup_request_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_axis_arp_lookup_request_V", "role": "TDATA" }} , 
 	{ "name": "s_axis_host_arp_lookup_request_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_axis_host_arp_lookup_request_V", "role": "TDATA" }} , 
 	{ "name": "m_axis_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m_axis_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m_axis_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_arp_lookup_reply_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "m_axis_arp_lookup_reply_V", "role": "TDATA" }} , 
 	{ "name": "m_axis_host_arp_lookup_reply_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "m_axis_host_arp_lookup_reply_V", "role": "TDATA" }} , 
 	{ "name": "myMacAddress", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "myMacAddress", "role": "default" }} , 
 	{ "name": "myIpAddress", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "myIpAddress", "role": "default" }} , 
 	{ "name": "regRequestCount", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "regRequestCount", "role": "default" }} , 
 	{ "name": "regReplyCount", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "regReplyCount", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "s_axis_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_V_last_V", "role": "default" }} , 
 	{ "name": "regRequestCount_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "regRequestCount", "role": "ap_vld" }} , 
 	{ "name": "regReplyCount_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "regReplyCount", "role": "ap_vld" }} , 
 	{ "name": "s_axis_arp_lookup_request_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_arp_lookup_request_V", "role": "TVALID" }} , 
 	{ "name": "s_axis_arp_lookup_request_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_arp_lookup_request_V", "role": "TREADY" }} , 
 	{ "name": "s_axis_host_arp_lookup_request_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_host_arp_lookup_request_V", "role": "TVALID" }} , 
 	{ "name": "s_axis_host_arp_lookup_request_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_host_arp_lookup_request_V", "role": "TREADY" }} , 
 	{ "name": "m_axis_arp_lookup_reply_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_arp_lookup_reply_V", "role": "TVALID" }} , 
 	{ "name": "m_axis_arp_lookup_reply_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_arp_lookup_reply_V", "role": "TREADY" }} , 
 	{ "name": "m_axis_host_arp_lookup_reply_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_host_arp_lookup_reply_V", "role": "TVALID" }} , 
 	{ "name": "m_axis_host_arp_lookup_reply_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_host_arp_lookup_reply_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "8", "13", "14", "16", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32"],
		"CDFG" : "arp_server_subnet_top",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "arp_server_subnet_top_entry3_U0"},
			{"ID" : "3", "Name" : "convert_axis_to_net_axis_64_U0"},
			{"ID" : "8", "Name" : "convert_net_axis_to_axis_64_U0"}],
		"OutputProcess" : [
			{"ID" : "8", "Name" : "convert_net_axis_to_axis_64_U0"},
			{"ID" : "13", "Name" : "process_arp_pkg_64_U0"},
			{"ID" : "14", "Name" : "generate_arp_pkg_64_U0"},
			{"ID" : "16", "Name" : "arp_table_U0"}],
		"Port" : [
			{"Name" : "s_axis_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "convert_axis_to_net_axis_64_U0", "Port" : "input_V_data_V"}]},
			{"Name" : "s_axis_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "convert_axis_to_net_axis_64_U0", "Port" : "input_V_keep_V"}]},
			{"Name" : "s_axis_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "convert_axis_to_net_axis_64_U0", "Port" : "input_V_strb_V"}]},
			{"Name" : "s_axis_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "convert_axis_to_net_axis_64_U0", "Port" : "input_V_last_V"}]},
			{"Name" : "s_axis_arp_lookup_request_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "s_axis_arp_lookup_request_V"}]},
			{"Name" : "s_axis_host_arp_lookup_request_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "s_axis_host_arp_lookup_request_V"}]},
			{"Name" : "m_axis_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "convert_net_axis_to_axis_64_U0", "Port" : "output_V_data_V"}]},
			{"Name" : "m_axis_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "convert_net_axis_to_axis_64_U0", "Port" : "output_V_keep_V"}]},
			{"Name" : "m_axis_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "convert_net_axis_to_axis_64_U0", "Port" : "output_V_strb_V"}]},
			{"Name" : "m_axis_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "convert_net_axis_to_axis_64_U0", "Port" : "output_V_last_V"}]},
			{"Name" : "m_axis_arp_lookup_reply_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "m_axis_arp_lookup_reply_V"}]},
			{"Name" : "m_axis_host_arp_lookup_reply_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "m_axis_host_arp_lookup_reply_V"}]},
			{"Name" : "myMacAddress", "Type" : "None", "Direction" : "I"},
			{"Name" : "myIpAddress", "Type" : "None", "Direction" : "I"},
			{"Name" : "regRequestCount", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "regRequestCount"}]},
			{"Name" : "regReplyCount", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "regReplyCount"}]},
			{"Name" : "arpDataIn_internal", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "arpDataIn_internal"},
					{"ID" : "3", "SubInstance" : "convert_axis_to_net_axis_64_U0", "Port" : "arpDataIn_internal"}]},
			{"Name" : "arpDataOut_internal", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "generate_arp_pkg_64_U0", "Port" : "arpDataOut_internal"},
					{"ID" : "8", "SubInstance" : "convert_net_axis_to_axis_64_U0", "Port" : "arpDataOut_internal"}]},
			{"Name" : "header_ready", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "header_ready"}]},
			{"Name" : "header_idx", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "header_idx"}]},
			{"Name" : "header_header_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "header_header_V"}]},
			{"Name" : "arpReplyMetaFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "arpReplyMetaFifo"},
					{"ID" : "14", "SubInstance" : "generate_arp_pkg_64_U0", "Port" : "arpReplyMetaFifo"}]},
			{"Name" : "pag_requestCounter_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "pag_requestCounter_V"}]},
			{"Name" : "arpTableInsertFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "arpTableInsertFifo"},
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "arpTableInsertFifo"}]},
			{"Name" : "pag_replyCounter_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "pag_replyCounter_V"}]},
			{"Name" : "gap_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "generate_arp_pkg_64_U0", "Port" : "gap_state"}]},
			{"Name" : "header_idx_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "generate_arp_pkg_64_U0", "Port" : "header_idx_1"}]},
			{"Name" : "header_header_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "generate_arp_pkg_64_U0", "Port" : "header_header_V_1"}]},
			{"Name" : "arpRequestMetaFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "generate_arp_pkg_64_U0", "Port" : "arpRequestMetaFifo"},
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "arpRequestMetaFifo"}]},
			{"Name" : "remainingLength_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "generate_arp_pkg_64_U0", "Port" : "remainingLength_V"}]},
			{"Name" : "arpTable_macAddress_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "arpTable_macAddress_V"}]},
			{"Name" : "arpTable_valid", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "arpTable_valid"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arp_server_subnet_top_entry3_U0", "Parent" : "0",
		"CDFG" : "arp_server_subnet_top_entry3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "myMacAddress", "Type" : "None", "Direction" : "I"},
			{"Name" : "myIpAddress", "Type" : "None", "Direction" : "I"},
			{"Name" : "myMacAddress_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "23", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myMacAddress_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "24", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arp_server_subnet_top_entry7_U0", "Parent" : "0",
		"CDFG" : "arp_server_subnet_top_entry7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "myMacAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "23", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myMacAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "24", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myMacAddress_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "25", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myMacAddress_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "26", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_64_U0", "Parent" : "0", "Child" : ["4", "5", "6", "7"],
		"CDFG" : "convert_axis_to_net_axis_64_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "input_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "arpDataIn_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "27", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpDataIn_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_64_U0.regslice_both_input_V_data_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_64_U0.regslice_both_input_V_keep_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_64_U0.regslice_both_input_V_strb_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_64_U0.regslice_both_input_V_last_V_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_64_U0", "Parent" : "0", "Child" : ["9", "10", "11", "12"],
		"CDFG" : "convert_net_axis_to_axis_64_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "output_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "arpDataOut_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "28", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpDataOut_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_64_U0.regslice_both_output_V_data_V_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_64_U0.regslice_both_output_V_keep_V_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_64_U0.regslice_both_output_V_strb_V_U", "Parent" : "8"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_64_U0.regslice_both_output_V_last_V_U", "Parent" : "8"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.process_arp_pkg_64_U0", "Parent" : "0",
		"CDFG" : "process_arp_pkg_64_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "regRequestCount", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "regReplyCount", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "myIpAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "26", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "29", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arpDataIn_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "27", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpDataIn_internal_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "header_ready", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_idx", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_header_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arpReplyMetaFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "30", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpReplyMetaFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pag_requestCounter_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arpTableInsertFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "16", "DependentChan" : "31", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpTableInsertFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pag_replyCounter_V", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.generate_arp_pkg_64_U0", "Parent" : "0", "Child" : ["15"],
		"CDFG" : "generate_arp_pkg_64_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "myMacAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "25", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myMacAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "29", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gap_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_idx_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_header_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arpReplyMetaFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "30", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpReplyMetaFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arpRequestMetaFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "32", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpRequestMetaFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "remainingLength_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arpDataOut_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "28", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpDataOut_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.generate_arp_pkg_64_U0.mux_646_64_1_1_U34", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arp_table_U0", "Parent" : "0", "Child" : ["17", "18", "19", "20", "21", "22"],
		"CDFG" : "arp_table",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_46", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_46", "FromFinalSV" : "0", "FromAddress" : "arpTable_macAddress_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_30", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_49", "ToFinalSV" : "1", "ToAddress" : "arpTable_macAddress_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/arp_server_subnet.cpp:177:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_46", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_46", "FromFinalSV" : "0", "FromAddress" : "arpTable_macAddress_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_37", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_55", "ToFinalSV" : "1", "ToAddress" : "arpTable_macAddress_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/arp_server_subnet.cpp:177:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_47", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_47", "FromFinalSV" : "0", "FromAddress" : "arpTable_valid_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_31", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_50", "ToFinalSV" : "1", "ToAddress" : "arpTable_valid_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/arp_server_subnet.cpp:177:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_47", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_47", "FromFinalSV" : "0", "FromAddress" : "arpTable_valid_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_38", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_56", "ToFinalSV" : "1", "ToAddress" : "arpTable_valid_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/arp_server_subnet.cpp:177:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_30", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_49", "FromFinalSV" : "1", "FromAddress" : "arpTable_macAddress_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_46", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_46", "ToFinalSV" : "0", "ToAddress" : "arpTable_macAddress_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/arp_server_subnet.cpp:177:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_31", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_50", "FromFinalSV" : "1", "FromAddress" : "arpTable_valid_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_47", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_47", "ToFinalSV" : "0", "ToAddress" : "arpTable_valid_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/arp_server_subnet.cpp:177:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_37", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_55", "FromFinalSV" : "1", "FromAddress" : "arpTable_macAddress_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_46", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_46", "ToFinalSV" : "0", "ToAddress" : "arpTable_macAddress_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/arp_server_subnet.cpp:177:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_38", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_56", "FromFinalSV" : "1", "FromAddress" : "arpTable_valid_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_47", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_47", "ToFinalSV" : "0", "ToAddress" : "arpTable_valid_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/arp_server_subnet.cpp:177:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]}],
		"Port" : [
			{"Name" : "s_axis_arp_lookup_request_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_arp_lookup_request_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_host_arp_lookup_request_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_host_arp_lookup_request_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_arp_lookup_reply_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_arp_lookup_reply_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_host_arp_lookup_reply_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_host_arp_lookup_reply_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arpTableInsertFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "31", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpTableInsertFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arpTable_macAddress_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "arpTable_valid", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "arpRequestMetaFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "32", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpRequestMetaFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.arp_table_U0.arpTable_macAddress_V_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.arp_table_U0.arpTable_valid_U", "Parent" : "16"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.arp_table_U0.regslice_both_s_axis_arp_lookup_request_V_U", "Parent" : "16"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.arp_table_U0.regslice_both_s_axis_host_arp_lookup_request_V_U", "Parent" : "16"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.arp_table_U0.regslice_both_m_axis_arp_lookup_reply_V_U", "Parent" : "16"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.arp_table_U0.regslice_both_m_axis_host_arp_lookup_reply_V_U", "Parent" : "16"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myMacAddress_c1_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myIpAddress_c2_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myMacAddress_c_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myIpAddress_c_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arpDataIn_internal_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arpDataOut_internal_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myIpAddress_c16_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arpReplyMetaFifo_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arpTableInsertFifo_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arpRequestMetaFifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	arp_server_subnet_top {
		s_axis_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_arp_lookup_request_V {Type I LastRead 0 FirstWrite -1}
		s_axis_host_arp_lookup_request_V {Type I LastRead 0 FirstWrite -1}
		m_axis_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_arp_lookup_reply_V {Type O LastRead -1 FirstWrite 1}
		m_axis_host_arp_lookup_reply_V {Type O LastRead -1 FirstWrite 1}
		myMacAddress {Type I LastRead 0 FirstWrite -1}
		myIpAddress {Type I LastRead 0 FirstWrite -1}
		regRequestCount {Type O LastRead -1 FirstWrite 2}
		regReplyCount {Type O LastRead -1 FirstWrite 2}
		arpDataIn_internal {Type IO LastRead -1 FirstWrite -1}
		arpDataOut_internal {Type IO LastRead -1 FirstWrite -1}
		header_ready {Type IO LastRead -1 FirstWrite -1}
		header_idx {Type IO LastRead -1 FirstWrite -1}
		header_header_V {Type IO LastRead -1 FirstWrite -1}
		arpReplyMetaFifo {Type IO LastRead -1 FirstWrite -1}
		pag_requestCounter_V {Type IO LastRead -1 FirstWrite -1}
		arpTableInsertFifo {Type IO LastRead -1 FirstWrite -1}
		pag_replyCounter_V {Type IO LastRead -1 FirstWrite -1}
		gap_state {Type IO LastRead -1 FirstWrite -1}
		header_idx_1 {Type IO LastRead -1 FirstWrite -1}
		header_header_V_1 {Type IO LastRead -1 FirstWrite -1}
		arpRequestMetaFifo {Type IO LastRead -1 FirstWrite -1}
		remainingLength_V {Type IO LastRead -1 FirstWrite -1}
		arpTable_macAddress_V {Type IO LastRead -1 FirstWrite -1}
		arpTable_valid {Type IO LastRead -1 FirstWrite -1}}
	arp_server_subnet_top_entry3 {
		myMacAddress {Type I LastRead 0 FirstWrite -1}
		myIpAddress {Type I LastRead 0 FirstWrite -1}
		myMacAddress_out {Type O LastRead -1 FirstWrite 0}
		myIpAddress_out {Type O LastRead -1 FirstWrite 0}}
	arp_server_subnet_top_entry7 {
		myMacAddress {Type I LastRead 0 FirstWrite -1}
		myIpAddress {Type I LastRead 0 FirstWrite -1}
		myMacAddress_out {Type O LastRead -1 FirstWrite 0}
		myIpAddress_out {Type O LastRead -1 FirstWrite 0}}
	convert_axis_to_net_axis_64_s {
		input_V_data_V {Type I LastRead 0 FirstWrite -1}
		input_V_keep_V {Type I LastRead 0 FirstWrite -1}
		input_V_strb_V {Type I LastRead 0 FirstWrite -1}
		input_V_last_V {Type I LastRead 0 FirstWrite -1}
		arpDataIn_internal {Type O LastRead -1 FirstWrite 1}}
	convert_net_axis_to_axis_64_s {
		output_V_data_V {Type O LastRead -1 FirstWrite 1}
		output_V_keep_V {Type O LastRead -1 FirstWrite 1}
		output_V_strb_V {Type O LastRead -1 FirstWrite 1}
		output_V_last_V {Type O LastRead -1 FirstWrite 1}
		arpDataOut_internal {Type I LastRead 0 FirstWrite -1}}
	process_arp_pkg_64_s {
		regRequestCount {Type O LastRead -1 FirstWrite 2}
		regReplyCount {Type O LastRead -1 FirstWrite 2}
		myIpAddress {Type I LastRead 1 FirstWrite -1}
		myIpAddress_out {Type O LastRead -1 FirstWrite 1}
		arpDataIn_internal {Type I LastRead 0 FirstWrite -1}
		header_ready {Type IO LastRead -1 FirstWrite -1}
		header_idx {Type IO LastRead -1 FirstWrite -1}
		header_header_V {Type IO LastRead -1 FirstWrite -1}
		arpReplyMetaFifo {Type O LastRead -1 FirstWrite 2}
		pag_requestCounter_V {Type IO LastRead -1 FirstWrite -1}
		arpTableInsertFifo {Type O LastRead -1 FirstWrite 2}
		pag_replyCounter_V {Type IO LastRead -1 FirstWrite -1}}
	generate_arp_pkg_64_s {
		myMacAddress {Type I LastRead 0 FirstWrite -1}
		myIpAddress {Type I LastRead 0 FirstWrite -1}
		gap_state {Type IO LastRead -1 FirstWrite -1}
		header_idx_1 {Type IO LastRead -1 FirstWrite -1}
		header_header_V_1 {Type IO LastRead -1 FirstWrite -1}
		arpReplyMetaFifo {Type I LastRead 0 FirstWrite -1}
		arpRequestMetaFifo {Type I LastRead 0 FirstWrite -1}
		remainingLength_V {Type IO LastRead -1 FirstWrite -1}
		arpDataOut_internal {Type O LastRead -1 FirstWrite 1}}
	arp_table {
		s_axis_arp_lookup_request_V {Type I LastRead 0 FirstWrite -1}
		s_axis_host_arp_lookup_request_V {Type I LastRead 0 FirstWrite -1}
		m_axis_arp_lookup_reply_V {Type O LastRead -1 FirstWrite 1}
		m_axis_host_arp_lookup_reply_V {Type O LastRead -1 FirstWrite 1}
		arpTableInsertFifo {Type I LastRead 0 FirstWrite -1}
		arpTable_macAddress_V {Type IO LastRead -1 FirstWrite -1}
		arpTable_valid {Type IO LastRead -1 FirstWrite -1}
		arpRequestMetaFifo {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7", "Max" : "7"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	s_axis_V_data_V { axis {  { s_axis_TDATA in_data 0 64 } } }
	s_axis_V_keep_V { axis {  { s_axis_TKEEP in_data 0 8 } } }
	s_axis_V_strb_V { axis {  { s_axis_TSTRB in_data 0 8 } } }
	s_axis_V_last_V { axis {  { s_axis_TLAST in_data 0 1 }  { s_axis_TVALID in_vld 0 1 }  { s_axis_TREADY in_acc 1 1 } } }
	s_axis_arp_lookup_request_V { axis {  { s_axis_arp_lookup_request_V_TDATA in_data 0 32 }  { s_axis_arp_lookup_request_V_TVALID in_vld 0 1 }  { s_axis_arp_lookup_request_V_TREADY in_acc 1 1 } } }
	s_axis_host_arp_lookup_request_V { axis {  { s_axis_host_arp_lookup_request_V_TDATA in_data 0 32 }  { s_axis_host_arp_lookup_request_V_TVALID in_vld 0 1 }  { s_axis_host_arp_lookup_request_V_TREADY in_acc 1 1 } } }
	m_axis_V_data_V { axis {  { m_axis_TDATA out_data 1 64 } } }
	m_axis_V_keep_V { axis {  { m_axis_TKEEP out_data 1 8 } } }
	m_axis_V_strb_V { axis {  { m_axis_TSTRB out_data 1 8 } } }
	m_axis_V_last_V { axis {  { m_axis_TLAST out_data 1 1 }  { m_axis_TVALID out_vld 1 1 }  { m_axis_TREADY out_acc 0 1 } } }
	m_axis_arp_lookup_reply_V { axis {  { m_axis_arp_lookup_reply_V_TDATA out_data 1 128 }  { m_axis_arp_lookup_reply_V_TVALID out_vld 1 1 }  { m_axis_arp_lookup_reply_V_TREADY out_acc 0 1 } } }
	m_axis_host_arp_lookup_reply_V { axis {  { m_axis_host_arp_lookup_reply_V_TDATA out_data 1 128 }  { m_axis_host_arp_lookup_reply_V_TVALID out_vld 1 1 }  { m_axis_host_arp_lookup_reply_V_TREADY out_acc 0 1 } } }
	myMacAddress { ap_none {  { myMacAddress in_data 0 48 } } }
	myIpAddress { ap_none {  { myIpAddress in_data 0 32 } } }
	regRequestCount { ap_vld {  { regRequestCount out_data 1 16 }  { regRequestCount_ap_vld out_vld 1 1 } } }
	regReplyCount { ap_vld {  { regReplyCount out_data 1 16 }  { regReplyCount_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
set moduleName arp_server_subnet_top
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {arp_server_subnet_top}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_axis_V_data_V int 64 regular {axi_s 0 volatile  { s_axis Data } }  }
	{ s_axis_V_keep_V int 8 regular {axi_s 0 volatile  { s_axis Keep } }  }
	{ s_axis_V_strb_V int 8 regular {axi_s 0 volatile  { s_axis Strb } }  }
	{ s_axis_V_last_V int 1 regular {axi_s 0 volatile  { s_axis Last } }  }
	{ s_axis_arp_lookup_request_V int 32 regular {axi_s 0 volatile  { s_axis_arp_lookup_request_V Data } }  }
	{ s_axis_host_arp_lookup_request_V int 32 regular {axi_s 0 volatile  { s_axis_host_arp_lookup_request_V Data } }  }
	{ m_axis_V_data_V int 64 regular {axi_s 1 volatile  { m_axis Data } }  }
	{ m_axis_V_keep_V int 8 regular {axi_s 1 volatile  { m_axis Keep } }  }
	{ m_axis_V_strb_V int 8 regular {axi_s 1 volatile  { m_axis Strb } }  }
	{ m_axis_V_last_V int 1 regular {axi_s 1 volatile  { m_axis Last } }  }
	{ m_axis_arp_lookup_reply_V int 128 regular {axi_s 1 volatile  { m_axis_arp_lookup_reply_V Data } }  }
	{ m_axis_host_arp_lookup_reply_V int 128 regular {axi_s 1 volatile  { m_axis_host_arp_lookup_reply_V Data } }  }
	{ myMacAddress int 48 regular  }
	{ myIpAddress int 32 regular  }
	{ regRequestCount int 16 regular {pointer 1}  }
	{ regReplyCount int 16 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "s_axis_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis.V.data.V","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis.V.keep.V","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis.V.strb.V","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_arp_lookup_request_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_arp_lookup_request.V","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_host_arp_lookup_request_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_host_arp_lookup_request.V","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis.V.data.V","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis.V.keep.V","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis.V.strb.V","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_arp_lookup_reply_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_arp_lookup_reply.V","cData": "int128","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_host_arp_lookup_reply_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_host_arp_lookup_reply.V","cData": "int128","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "myMacAddress", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "myMacAddress","cData": "int48","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "myIpAddress", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "myIpAddress","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "regRequestCount", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "regRequestCount","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "regReplyCount", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "regReplyCount","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ s_axis_TDATA sc_in sc_lv 64 signal 0 } 
	{ s_axis_TKEEP sc_in sc_lv 8 signal 1 } 
	{ s_axis_TSTRB sc_in sc_lv 8 signal 2 } 
	{ s_axis_TLAST sc_in sc_lv 1 signal 3 } 
	{ s_axis_arp_lookup_request_V_TDATA sc_in sc_lv 32 signal 4 } 
	{ s_axis_host_arp_lookup_request_V_TDATA sc_in sc_lv 32 signal 5 } 
	{ m_axis_TDATA sc_out sc_lv 64 signal 6 } 
	{ m_axis_TKEEP sc_out sc_lv 8 signal 7 } 
	{ m_axis_TSTRB sc_out sc_lv 8 signal 8 } 
	{ m_axis_TLAST sc_out sc_lv 1 signal 9 } 
	{ m_axis_arp_lookup_reply_V_TDATA sc_out sc_lv 128 signal 10 } 
	{ m_axis_host_arp_lookup_reply_V_TDATA sc_out sc_lv 128 signal 11 } 
	{ myMacAddress sc_in sc_lv 48 signal 12 } 
	{ myIpAddress sc_in sc_lv 32 signal 13 } 
	{ regRequestCount sc_out sc_lv 16 signal 14 } 
	{ regReplyCount sc_out sc_lv 16 signal 15 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axis_TVALID sc_in sc_logic 1 invld 3 } 
	{ s_axis_TREADY sc_out sc_logic 1 inacc 3 } 
	{ m_axis_TVALID sc_out sc_logic 1 outvld 9 } 
	{ m_axis_TREADY sc_in sc_logic 1 outacc 9 } 
	{ regRequestCount_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ regReplyCount_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ s_axis_arp_lookup_request_V_TVALID sc_in sc_logic 1 invld 4 } 
	{ s_axis_arp_lookup_request_V_TREADY sc_out sc_logic 1 inacc 4 } 
	{ s_axis_host_arp_lookup_request_V_TVALID sc_in sc_logic 1 invld 5 } 
	{ s_axis_host_arp_lookup_request_V_TREADY sc_out sc_logic 1 inacc 5 } 
	{ m_axis_arp_lookup_reply_V_TVALID sc_out sc_logic 1 outvld 10 } 
	{ m_axis_arp_lookup_reply_V_TREADY sc_in sc_logic 1 outacc 10 } 
	{ m_axis_host_arp_lookup_reply_V_TVALID sc_out sc_logic 1 outvld 11 } 
	{ m_axis_host_arp_lookup_reply_V_TREADY sc_in sc_logic 1 outacc 11 } 
}
set NewPortList {[ 
	{ "name": "s_axis_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_axis_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_axis_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_arp_lookup_request_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_axis_arp_lookup_request_V", "role": "TDATA" }} , 
 	{ "name": "s_axis_host_arp_lookup_request_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_axis_host_arp_lookup_request_V", "role": "TDATA" }} , 
 	{ "name": "m_axis_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m_axis_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m_axis_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_arp_lookup_reply_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "m_axis_arp_lookup_reply_V", "role": "TDATA" }} , 
 	{ "name": "m_axis_host_arp_lookup_reply_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "m_axis_host_arp_lookup_reply_V", "role": "TDATA" }} , 
 	{ "name": "myMacAddress", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "myMacAddress", "role": "default" }} , 
 	{ "name": "myIpAddress", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "myIpAddress", "role": "default" }} , 
 	{ "name": "regRequestCount", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "regRequestCount", "role": "default" }} , 
 	{ "name": "regReplyCount", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "regReplyCount", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "s_axis_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_V_last_V", "role": "default" }} , 
 	{ "name": "regRequestCount_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "regRequestCount", "role": "ap_vld" }} , 
 	{ "name": "regReplyCount_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "regReplyCount", "role": "ap_vld" }} , 
 	{ "name": "s_axis_arp_lookup_request_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_arp_lookup_request_V", "role": "TVALID" }} , 
 	{ "name": "s_axis_arp_lookup_request_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_arp_lookup_request_V", "role": "TREADY" }} , 
 	{ "name": "s_axis_host_arp_lookup_request_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_host_arp_lookup_request_V", "role": "TVALID" }} , 
 	{ "name": "s_axis_host_arp_lookup_request_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_host_arp_lookup_request_V", "role": "TREADY" }} , 
 	{ "name": "m_axis_arp_lookup_reply_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_arp_lookup_reply_V", "role": "TVALID" }} , 
 	{ "name": "m_axis_arp_lookup_reply_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_arp_lookup_reply_V", "role": "TREADY" }} , 
 	{ "name": "m_axis_host_arp_lookup_reply_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_host_arp_lookup_reply_V", "role": "TVALID" }} , 
 	{ "name": "m_axis_host_arp_lookup_reply_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_host_arp_lookup_reply_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "8", "13", "14", "16", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32"],
		"CDFG" : "arp_server_subnet_top",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "arp_server_subnet_top_entry3_U0"},
			{"ID" : "3", "Name" : "convert_axis_to_net_axis_64_U0"},
			{"ID" : "8", "Name" : "convert_net_axis_to_axis_64_U0"}],
		"OutputProcess" : [
			{"ID" : "8", "Name" : "convert_net_axis_to_axis_64_U0"},
			{"ID" : "13", "Name" : "process_arp_pkg_64_U0"},
			{"ID" : "14", "Name" : "generate_arp_pkg_64_U0"},
			{"ID" : "16", "Name" : "arp_table_U0"}],
		"Port" : [
			{"Name" : "s_axis_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "convert_axis_to_net_axis_64_U0", "Port" : "input_V_data_V"}]},
			{"Name" : "s_axis_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "convert_axis_to_net_axis_64_U0", "Port" : "input_V_keep_V"}]},
			{"Name" : "s_axis_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "convert_axis_to_net_axis_64_U0", "Port" : "input_V_strb_V"}]},
			{"Name" : "s_axis_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "convert_axis_to_net_axis_64_U0", "Port" : "input_V_last_V"}]},
			{"Name" : "s_axis_arp_lookup_request_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "s_axis_arp_lookup_request_V"}]},
			{"Name" : "s_axis_host_arp_lookup_request_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "s_axis_host_arp_lookup_request_V"}]},
			{"Name" : "m_axis_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "convert_net_axis_to_axis_64_U0", "Port" : "output_V_data_V"}]},
			{"Name" : "m_axis_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "convert_net_axis_to_axis_64_U0", "Port" : "output_V_keep_V"}]},
			{"Name" : "m_axis_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "convert_net_axis_to_axis_64_U0", "Port" : "output_V_strb_V"}]},
			{"Name" : "m_axis_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "convert_net_axis_to_axis_64_U0", "Port" : "output_V_last_V"}]},
			{"Name" : "m_axis_arp_lookup_reply_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "m_axis_arp_lookup_reply_V"}]},
			{"Name" : "m_axis_host_arp_lookup_reply_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "m_axis_host_arp_lookup_reply_V"}]},
			{"Name" : "myMacAddress", "Type" : "None", "Direction" : "I"},
			{"Name" : "myIpAddress", "Type" : "None", "Direction" : "I"},
			{"Name" : "regRequestCount", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "regRequestCount"}]},
			{"Name" : "regReplyCount", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "regReplyCount"}]},
			{"Name" : "arpDataIn_internal", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "convert_axis_to_net_axis_64_U0", "Port" : "arpDataIn_internal"},
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "arpDataIn_internal"}]},
			{"Name" : "arpDataOut_internal", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "generate_arp_pkg_64_U0", "Port" : "arpDataOut_internal"},
					{"ID" : "8", "SubInstance" : "convert_net_axis_to_axis_64_U0", "Port" : "arpDataOut_internal"}]},
			{"Name" : "header_ready", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "header_ready"}]},
			{"Name" : "header_idx", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "header_idx"}]},
			{"Name" : "header_header_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "header_header_V"}]},
			{"Name" : "arpReplyMetaFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "generate_arp_pkg_64_U0", "Port" : "arpReplyMetaFifo"},
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "arpReplyMetaFifo"}]},
			{"Name" : "pag_requestCounter_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "pag_requestCounter_V"}]},
			{"Name" : "arpTableInsertFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "arpTableInsertFifo"},
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "arpTableInsertFifo"}]},
			{"Name" : "pag_replyCounter_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "pag_replyCounter_V"}]},
			{"Name" : "gap_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "generate_arp_pkg_64_U0", "Port" : "gap_state"}]},
			{"Name" : "header_idx_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "generate_arp_pkg_64_U0", "Port" : "header_idx_1"}]},
			{"Name" : "header_header_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "generate_arp_pkg_64_U0", "Port" : "header_header_V_1"}]},
			{"Name" : "arpRequestMetaFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "generate_arp_pkg_64_U0", "Port" : "arpRequestMetaFifo"},
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "arpRequestMetaFifo"}]},
			{"Name" : "remainingLength_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "generate_arp_pkg_64_U0", "Port" : "remainingLength_V"}]},
			{"Name" : "arpTable_macAddress_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "arpTable_macAddress_V"}]},
			{"Name" : "arpTable_valid", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "arpTable_valid"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arp_server_subnet_top_entry3_U0", "Parent" : "0",
		"CDFG" : "arp_server_subnet_top_entry3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "myMacAddress", "Type" : "None", "Direction" : "I"},
			{"Name" : "myIpAddress", "Type" : "None", "Direction" : "I"},
			{"Name" : "myMacAddress_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "23", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myMacAddress_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "24", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arp_server_subnet_top_entry7_U0", "Parent" : "0",
		"CDFG" : "arp_server_subnet_top_entry7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "myMacAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "23", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myMacAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "24", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myMacAddress_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "25", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myMacAddress_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "26", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_64_U0", "Parent" : "0", "Child" : ["4", "5", "6", "7"],
		"CDFG" : "convert_axis_to_net_axis_64_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "input_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "arpDataIn_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "27", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpDataIn_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_64_U0.regslice_both_input_V_data_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_64_U0.regslice_both_input_V_keep_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_64_U0.regslice_both_input_V_strb_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_64_U0.regslice_both_input_V_last_V_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_64_U0", "Parent" : "0", "Child" : ["9", "10", "11", "12"],
		"CDFG" : "convert_net_axis_to_axis_64_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "output_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "arpDataOut_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "28", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpDataOut_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_64_U0.regslice_both_output_V_data_V_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_64_U0.regslice_both_output_V_keep_V_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_64_U0.regslice_both_output_V_strb_V_U", "Parent" : "8"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_64_U0.regslice_both_output_V_last_V_U", "Parent" : "8"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.process_arp_pkg_64_U0", "Parent" : "0",
		"CDFG" : "process_arp_pkg_64_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "regRequestCount", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "regReplyCount", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "myIpAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "26", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "29", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arpDataIn_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "27", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpDataIn_internal_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "header_ready", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_idx", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_header_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arpReplyMetaFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "30", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpReplyMetaFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pag_requestCounter_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arpTableInsertFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "16", "DependentChan" : "31", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpTableInsertFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pag_replyCounter_V", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.generate_arp_pkg_64_U0", "Parent" : "0", "Child" : ["15"],
		"CDFG" : "generate_arp_pkg_64_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "myMacAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "25", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myMacAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "29", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gap_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_idx_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_header_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arpReplyMetaFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "30", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpReplyMetaFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arpRequestMetaFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "32", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpRequestMetaFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "remainingLength_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arpDataOut_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "28", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpDataOut_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.generate_arp_pkg_64_U0.mux_646_64_1_1_U34", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arp_table_U0", "Parent" : "0", "Child" : ["17", "18", "19", "20", "21", "22"],
		"CDFG" : "arp_table",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_46", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_46", "FromFinalSV" : "0", "FromAddress" : "arpTable_macAddress_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_30", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_49", "ToFinalSV" : "1", "ToAddress" : "arpTable_macAddress_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/arp_server_subnet.cpp:177:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_46", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_46", "FromFinalSV" : "0", "FromAddress" : "arpTable_macAddress_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_37", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_55", "ToFinalSV" : "1", "ToAddress" : "arpTable_macAddress_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/arp_server_subnet.cpp:177:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_47", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_47", "FromFinalSV" : "0", "FromAddress" : "arpTable_valid_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_31", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_50", "ToFinalSV" : "1", "ToAddress" : "arpTable_valid_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/arp_server_subnet.cpp:177:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_47", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_47", "FromFinalSV" : "0", "FromAddress" : "arpTable_valid_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_38", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_56", "ToFinalSV" : "1", "ToAddress" : "arpTable_valid_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/arp_server_subnet.cpp:177:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_30", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_49", "FromFinalSV" : "1", "FromAddress" : "arpTable_macAddress_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_46", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_46", "ToFinalSV" : "0", "ToAddress" : "arpTable_macAddress_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/arp_server_subnet.cpp:177:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_31", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_50", "FromFinalSV" : "1", "FromAddress" : "arpTable_valid_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_47", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_47", "ToFinalSV" : "0", "ToAddress" : "arpTable_valid_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/arp_server_subnet.cpp:177:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_37", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_55", "FromFinalSV" : "1", "FromAddress" : "arpTable_macAddress_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_46", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_46", "ToFinalSV" : "0", "ToAddress" : "arpTable_macAddress_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/arp_server_subnet.cpp:177:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_38", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_56", "FromFinalSV" : "1", "FromAddress" : "arpTable_valid_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_47", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_47", "ToFinalSV" : "0", "ToAddress" : "arpTable_valid_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/arp_server_subnet.cpp:177:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]}],
		"Port" : [
			{"Name" : "s_axis_arp_lookup_request_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_arp_lookup_request_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_host_arp_lookup_request_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_host_arp_lookup_request_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_arp_lookup_reply_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_arp_lookup_reply_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_host_arp_lookup_reply_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_host_arp_lookup_reply_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arpTableInsertFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "31", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpTableInsertFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arpTable_macAddress_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "arpTable_valid", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "arpRequestMetaFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "32", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpRequestMetaFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.arp_table_U0.arpTable_macAddress_V_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.arp_table_U0.arpTable_valid_U", "Parent" : "16"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.arp_table_U0.regslice_both_s_axis_arp_lookup_request_V_U", "Parent" : "16"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.arp_table_U0.regslice_both_s_axis_host_arp_lookup_request_V_U", "Parent" : "16"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.arp_table_U0.regslice_both_m_axis_arp_lookup_reply_V_U", "Parent" : "16"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.arp_table_U0.regslice_both_m_axis_host_arp_lookup_reply_V_U", "Parent" : "16"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myMacAddress_c1_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myIpAddress_c2_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myMacAddress_c_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myIpAddress_c_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arpDataIn_internal_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arpDataOut_internal_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myIpAddress_c16_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arpReplyMetaFifo_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arpTableInsertFifo_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arpRequestMetaFifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	arp_server_subnet_top {
		s_axis_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_arp_lookup_request_V {Type I LastRead 0 FirstWrite -1}
		s_axis_host_arp_lookup_request_V {Type I LastRead 0 FirstWrite -1}
		m_axis_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_arp_lookup_reply_V {Type O LastRead -1 FirstWrite 1}
		m_axis_host_arp_lookup_reply_V {Type O LastRead -1 FirstWrite 1}
		myMacAddress {Type I LastRead 0 FirstWrite -1}
		myIpAddress {Type I LastRead 0 FirstWrite -1}
		regRequestCount {Type O LastRead -1 FirstWrite 2}
		regReplyCount {Type O LastRead -1 FirstWrite 2}
		arpDataIn_internal {Type IO LastRead -1 FirstWrite -1}
		arpDataOut_internal {Type IO LastRead -1 FirstWrite -1}
		header_ready {Type IO LastRead -1 FirstWrite -1}
		header_idx {Type IO LastRead -1 FirstWrite -1}
		header_header_V {Type IO LastRead -1 FirstWrite -1}
		arpReplyMetaFifo {Type IO LastRead -1 FirstWrite -1}
		pag_requestCounter_V {Type IO LastRead -1 FirstWrite -1}
		arpTableInsertFifo {Type IO LastRead -1 FirstWrite -1}
		pag_replyCounter_V {Type IO LastRead -1 FirstWrite -1}
		gap_state {Type IO LastRead -1 FirstWrite -1}
		header_idx_1 {Type IO LastRead -1 FirstWrite -1}
		header_header_V_1 {Type IO LastRead -1 FirstWrite -1}
		arpRequestMetaFifo {Type IO LastRead -1 FirstWrite -1}
		remainingLength_V {Type IO LastRead -1 FirstWrite -1}
		arpTable_macAddress_V {Type IO LastRead -1 FirstWrite -1}
		arpTable_valid {Type IO LastRead -1 FirstWrite -1}}
	arp_server_subnet_top_entry3 {
		myMacAddress {Type I LastRead 0 FirstWrite -1}
		myIpAddress {Type I LastRead 0 FirstWrite -1}
		myMacAddress_out {Type O LastRead -1 FirstWrite 0}
		myIpAddress_out {Type O LastRead -1 FirstWrite 0}}
	arp_server_subnet_top_entry7 {
		myMacAddress {Type I LastRead 0 FirstWrite -1}
		myIpAddress {Type I LastRead 0 FirstWrite -1}
		myMacAddress_out {Type O LastRead -1 FirstWrite 0}
		myIpAddress_out {Type O LastRead -1 FirstWrite 0}}
	convert_axis_to_net_axis_64_s {
		input_V_data_V {Type I LastRead 0 FirstWrite -1}
		input_V_keep_V {Type I LastRead 0 FirstWrite -1}
		input_V_strb_V {Type I LastRead 0 FirstWrite -1}
		input_V_last_V {Type I LastRead 0 FirstWrite -1}
		arpDataIn_internal {Type O LastRead -1 FirstWrite 1}}
	convert_net_axis_to_axis_64_s {
		output_V_data_V {Type O LastRead -1 FirstWrite 1}
		output_V_keep_V {Type O LastRead -1 FirstWrite 1}
		output_V_strb_V {Type O LastRead -1 FirstWrite 1}
		output_V_last_V {Type O LastRead -1 FirstWrite 1}
		arpDataOut_internal {Type I LastRead 0 FirstWrite -1}}
	process_arp_pkg_64_s {
		regRequestCount {Type O LastRead -1 FirstWrite 2}
		regReplyCount {Type O LastRead -1 FirstWrite 2}
		myIpAddress {Type I LastRead 1 FirstWrite -1}
		myIpAddress_out {Type O LastRead -1 FirstWrite 1}
		arpDataIn_internal {Type I LastRead 0 FirstWrite -1}
		header_ready {Type IO LastRead -1 FirstWrite -1}
		header_idx {Type IO LastRead -1 FirstWrite -1}
		header_header_V {Type IO LastRead -1 FirstWrite -1}
		arpReplyMetaFifo {Type O LastRead -1 FirstWrite 2}
		pag_requestCounter_V {Type IO LastRead -1 FirstWrite -1}
		arpTableInsertFifo {Type O LastRead -1 FirstWrite 2}
		pag_replyCounter_V {Type IO LastRead -1 FirstWrite -1}}
	generate_arp_pkg_64_s {
		myMacAddress {Type I LastRead 0 FirstWrite -1}
		myIpAddress {Type I LastRead 0 FirstWrite -1}
		gap_state {Type IO LastRead -1 FirstWrite -1}
		header_idx_1 {Type IO LastRead -1 FirstWrite -1}
		header_header_V_1 {Type IO LastRead -1 FirstWrite -1}
		arpReplyMetaFifo {Type I LastRead 0 FirstWrite -1}
		arpRequestMetaFifo {Type I LastRead 0 FirstWrite -1}
		remainingLength_V {Type IO LastRead -1 FirstWrite -1}
		arpDataOut_internal {Type O LastRead -1 FirstWrite 1}}
	arp_table {
		s_axis_arp_lookup_request_V {Type I LastRead 0 FirstWrite -1}
		s_axis_host_arp_lookup_request_V {Type I LastRead 0 FirstWrite -1}
		m_axis_arp_lookup_reply_V {Type O LastRead -1 FirstWrite 1}
		m_axis_host_arp_lookup_reply_V {Type O LastRead -1 FirstWrite 1}
		arpTableInsertFifo {Type I LastRead 0 FirstWrite -1}
		arpTable_macAddress_V {Type IO LastRead -1 FirstWrite -1}
		arpTable_valid {Type IO LastRead -1 FirstWrite -1}
		arpRequestMetaFifo {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7", "Max" : "7"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	s_axis_V_data_V { axis {  { s_axis_TDATA in_data 0 64 } } }
	s_axis_V_keep_V { axis {  { s_axis_TKEEP in_data 0 8 } } }
	s_axis_V_strb_V { axis {  { s_axis_TSTRB in_data 0 8 } } }
	s_axis_V_last_V { axis {  { s_axis_TLAST in_data 0 1 }  { s_axis_TVALID in_vld 0 1 }  { s_axis_TREADY in_acc 1 1 } } }
	s_axis_arp_lookup_request_V { axis {  { s_axis_arp_lookup_request_V_TDATA in_data 0 32 }  { s_axis_arp_lookup_request_V_TVALID in_vld 0 1 }  { s_axis_arp_lookup_request_V_TREADY in_acc 1 1 } } }
	s_axis_host_arp_lookup_request_V { axis {  { s_axis_host_arp_lookup_request_V_TDATA in_data 0 32 }  { s_axis_host_arp_lookup_request_V_TVALID in_vld 0 1 }  { s_axis_host_arp_lookup_request_V_TREADY in_acc 1 1 } } }
	m_axis_V_data_V { axis {  { m_axis_TDATA out_data 1 64 } } }
	m_axis_V_keep_V { axis {  { m_axis_TKEEP out_data 1 8 } } }
	m_axis_V_strb_V { axis {  { m_axis_TSTRB out_data 1 8 } } }
	m_axis_V_last_V { axis {  { m_axis_TLAST out_data 1 1 }  { m_axis_TVALID out_vld 1 1 }  { m_axis_TREADY out_acc 0 1 } } }
	m_axis_arp_lookup_reply_V { axis {  { m_axis_arp_lookup_reply_V_TDATA out_data 1 128 }  { m_axis_arp_lookup_reply_V_TVALID out_vld 1 1 }  { m_axis_arp_lookup_reply_V_TREADY out_acc 0 1 } } }
	m_axis_host_arp_lookup_reply_V { axis {  { m_axis_host_arp_lookup_reply_V_TDATA out_data 1 128 }  { m_axis_host_arp_lookup_reply_V_TVALID out_vld 1 1 }  { m_axis_host_arp_lookup_reply_V_TREADY out_acc 0 1 } } }
	myMacAddress { ap_none {  { myMacAddress in_data 0 48 } } }
	myIpAddress { ap_none {  { myIpAddress in_data 0 32 } } }
	regRequestCount { ap_vld {  { regRequestCount out_data 1 16 }  { regRequestCount_ap_vld out_vld 1 1 } } }
	regReplyCount { ap_vld {  { regReplyCount out_data 1 16 }  { regReplyCount_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
set moduleName arp_server_subnet_top
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {arp_server_subnet_top}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_axis_V_data_V int 64 regular {axi_s 0 volatile  { s_axis Data } }  }
	{ s_axis_V_keep_V int 8 regular {axi_s 0 volatile  { s_axis Keep } }  }
	{ s_axis_V_strb_V int 8 regular {axi_s 0 volatile  { s_axis Strb } }  }
	{ s_axis_V_last_V int 1 regular {axi_s 0 volatile  { s_axis Last } }  }
	{ s_axis_arp_lookup_request_V int 32 regular {axi_s 0 volatile  { s_axis_arp_lookup_request_V Data } }  }
	{ s_axis_host_arp_lookup_request_V int 32 regular {axi_s 0 volatile  { s_axis_host_arp_lookup_request_V Data } }  }
	{ m_axis_V_data_V int 64 regular {axi_s 1 volatile  { m_axis Data } }  }
	{ m_axis_V_keep_V int 8 regular {axi_s 1 volatile  { m_axis Keep } }  }
	{ m_axis_V_strb_V int 8 regular {axi_s 1 volatile  { m_axis Strb } }  }
	{ m_axis_V_last_V int 1 regular {axi_s 1 volatile  { m_axis Last } }  }
	{ m_axis_arp_lookup_reply_V int 128 regular {axi_s 1 volatile  { m_axis_arp_lookup_reply_V Data } }  }
	{ m_axis_host_arp_lookup_reply_V int 128 regular {axi_s 1 volatile  { m_axis_host_arp_lookup_reply_V Data } }  }
	{ myMacAddress int 48 regular  }
	{ myIpAddress int 32 regular  }
	{ regRequestCount int 16 regular {pointer 1}  }
	{ regReplyCount int 16 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "s_axis_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis.V.data.V","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis.V.keep.V","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis.V.strb.V","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_arp_lookup_request_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_arp_lookup_request.V","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_host_arp_lookup_request_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_host_arp_lookup_request.V","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis.V.data.V","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis.V.keep.V","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis.V.strb.V","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_arp_lookup_reply_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_arp_lookup_reply.V","cData": "int128","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_host_arp_lookup_reply_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_host_arp_lookup_reply.V","cData": "int128","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "myMacAddress", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "myMacAddress","cData": "int48","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "myIpAddress", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "myIpAddress","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "regRequestCount", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "regRequestCount","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "regReplyCount", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "regReplyCount","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ s_axis_TDATA sc_in sc_lv 64 signal 0 } 
	{ s_axis_TKEEP sc_in sc_lv 8 signal 1 } 
	{ s_axis_TSTRB sc_in sc_lv 8 signal 2 } 
	{ s_axis_TLAST sc_in sc_lv 1 signal 3 } 
	{ s_axis_arp_lookup_request_V_TDATA sc_in sc_lv 32 signal 4 } 
	{ s_axis_host_arp_lookup_request_V_TDATA sc_in sc_lv 32 signal 5 } 
	{ m_axis_TDATA sc_out sc_lv 64 signal 6 } 
	{ m_axis_TKEEP sc_out sc_lv 8 signal 7 } 
	{ m_axis_TSTRB sc_out sc_lv 8 signal 8 } 
	{ m_axis_TLAST sc_out sc_lv 1 signal 9 } 
	{ m_axis_arp_lookup_reply_V_TDATA sc_out sc_lv 128 signal 10 } 
	{ m_axis_host_arp_lookup_reply_V_TDATA sc_out sc_lv 128 signal 11 } 
	{ myMacAddress sc_in sc_lv 48 signal 12 } 
	{ myIpAddress sc_in sc_lv 32 signal 13 } 
	{ regRequestCount sc_out sc_lv 16 signal 14 } 
	{ regReplyCount sc_out sc_lv 16 signal 15 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axis_TVALID sc_in sc_logic 1 invld 3 } 
	{ s_axis_TREADY sc_out sc_logic 1 inacc 3 } 
	{ m_axis_TVALID sc_out sc_logic 1 outvld 9 } 
	{ m_axis_TREADY sc_in sc_logic 1 outacc 9 } 
	{ regRequestCount_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ regReplyCount_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ s_axis_arp_lookup_request_V_TVALID sc_in sc_logic 1 invld 4 } 
	{ s_axis_arp_lookup_request_V_TREADY sc_out sc_logic 1 inacc 4 } 
	{ s_axis_host_arp_lookup_request_V_TVALID sc_in sc_logic 1 invld 5 } 
	{ s_axis_host_arp_lookup_request_V_TREADY sc_out sc_logic 1 inacc 5 } 
	{ m_axis_arp_lookup_reply_V_TVALID sc_out sc_logic 1 outvld 10 } 
	{ m_axis_arp_lookup_reply_V_TREADY sc_in sc_logic 1 outacc 10 } 
	{ m_axis_host_arp_lookup_reply_V_TVALID sc_out sc_logic 1 outvld 11 } 
	{ m_axis_host_arp_lookup_reply_V_TREADY sc_in sc_logic 1 outacc 11 } 
}
set NewPortList {[ 
	{ "name": "s_axis_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_axis_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_axis_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_arp_lookup_request_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_axis_arp_lookup_request_V", "role": "TDATA" }} , 
 	{ "name": "s_axis_host_arp_lookup_request_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_axis_host_arp_lookup_request_V", "role": "TDATA" }} , 
 	{ "name": "m_axis_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m_axis_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m_axis_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_arp_lookup_reply_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "m_axis_arp_lookup_reply_V", "role": "TDATA" }} , 
 	{ "name": "m_axis_host_arp_lookup_reply_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "m_axis_host_arp_lookup_reply_V", "role": "TDATA" }} , 
 	{ "name": "myMacAddress", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "myMacAddress", "role": "default" }} , 
 	{ "name": "myIpAddress", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "myIpAddress", "role": "default" }} , 
 	{ "name": "regRequestCount", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "regRequestCount", "role": "default" }} , 
 	{ "name": "regReplyCount", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "regReplyCount", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "s_axis_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_V_last_V", "role": "default" }} , 
 	{ "name": "regRequestCount_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "regRequestCount", "role": "ap_vld" }} , 
 	{ "name": "regReplyCount_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "regReplyCount", "role": "ap_vld" }} , 
 	{ "name": "s_axis_arp_lookup_request_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_arp_lookup_request_V", "role": "TVALID" }} , 
 	{ "name": "s_axis_arp_lookup_request_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_arp_lookup_request_V", "role": "TREADY" }} , 
 	{ "name": "s_axis_host_arp_lookup_request_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_host_arp_lookup_request_V", "role": "TVALID" }} , 
 	{ "name": "s_axis_host_arp_lookup_request_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_host_arp_lookup_request_V", "role": "TREADY" }} , 
 	{ "name": "m_axis_arp_lookup_reply_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_arp_lookup_reply_V", "role": "TVALID" }} , 
 	{ "name": "m_axis_arp_lookup_reply_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_arp_lookup_reply_V", "role": "TREADY" }} , 
 	{ "name": "m_axis_host_arp_lookup_reply_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_host_arp_lookup_reply_V", "role": "TVALID" }} , 
 	{ "name": "m_axis_host_arp_lookup_reply_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_host_arp_lookup_reply_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "8", "13", "14", "16", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32"],
		"CDFG" : "arp_server_subnet_top",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "arp_server_subnet_top_entry3_U0"},
			{"ID" : "3", "Name" : "convert_axis_to_net_axis_64_U0"},
			{"ID" : "8", "Name" : "convert_net_axis_to_axis_64_U0"}],
		"OutputProcess" : [
			{"ID" : "8", "Name" : "convert_net_axis_to_axis_64_U0"},
			{"ID" : "13", "Name" : "process_arp_pkg_64_U0"},
			{"ID" : "14", "Name" : "generate_arp_pkg_64_U0"},
			{"ID" : "16", "Name" : "arp_table_U0"}],
		"Port" : [
			{"Name" : "s_axis_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "convert_axis_to_net_axis_64_U0", "Port" : "input_V_data_V"}]},
			{"Name" : "s_axis_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "convert_axis_to_net_axis_64_U0", "Port" : "input_V_keep_V"}]},
			{"Name" : "s_axis_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "convert_axis_to_net_axis_64_U0", "Port" : "input_V_strb_V"}]},
			{"Name" : "s_axis_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "convert_axis_to_net_axis_64_U0", "Port" : "input_V_last_V"}]},
			{"Name" : "s_axis_arp_lookup_request_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "s_axis_arp_lookup_request_V"}]},
			{"Name" : "s_axis_host_arp_lookup_request_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "s_axis_host_arp_lookup_request_V"}]},
			{"Name" : "m_axis_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "convert_net_axis_to_axis_64_U0", "Port" : "output_V_data_V"}]},
			{"Name" : "m_axis_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "convert_net_axis_to_axis_64_U0", "Port" : "output_V_keep_V"}]},
			{"Name" : "m_axis_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "convert_net_axis_to_axis_64_U0", "Port" : "output_V_strb_V"}]},
			{"Name" : "m_axis_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "convert_net_axis_to_axis_64_U0", "Port" : "output_V_last_V"}]},
			{"Name" : "m_axis_arp_lookup_reply_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "m_axis_arp_lookup_reply_V"}]},
			{"Name" : "m_axis_host_arp_lookup_reply_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "m_axis_host_arp_lookup_reply_V"}]},
			{"Name" : "myMacAddress", "Type" : "None", "Direction" : "I"},
			{"Name" : "myIpAddress", "Type" : "None", "Direction" : "I"},
			{"Name" : "regRequestCount", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "regRequestCount"}]},
			{"Name" : "regReplyCount", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "regReplyCount"}]},
			{"Name" : "arpDataIn_internal", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "arpDataIn_internal"},
					{"ID" : "3", "SubInstance" : "convert_axis_to_net_axis_64_U0", "Port" : "arpDataIn_internal"}]},
			{"Name" : "arpDataOut_internal", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "convert_net_axis_to_axis_64_U0", "Port" : "arpDataOut_internal"},
					{"ID" : "14", "SubInstance" : "generate_arp_pkg_64_U0", "Port" : "arpDataOut_internal"}]},
			{"Name" : "header_ready", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "header_ready"}]},
			{"Name" : "header_idx", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "header_idx"}]},
			{"Name" : "header_header_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "header_header_V"}]},
			{"Name" : "arpReplyMetaFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "generate_arp_pkg_64_U0", "Port" : "arpReplyMetaFifo"},
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "arpReplyMetaFifo"}]},
			{"Name" : "pag_requestCounter_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "pag_requestCounter_V"}]},
			{"Name" : "arpTableInsertFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "arpTableInsertFifo"},
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "arpTableInsertFifo"}]},
			{"Name" : "pag_replyCounter_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "pag_replyCounter_V"}]},
			{"Name" : "gap_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "generate_arp_pkg_64_U0", "Port" : "gap_state"}]},
			{"Name" : "header_idx_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "generate_arp_pkg_64_U0", "Port" : "header_idx_1"}]},
			{"Name" : "header_header_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "generate_arp_pkg_64_U0", "Port" : "header_header_V_1"}]},
			{"Name" : "arpRequestMetaFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "generate_arp_pkg_64_U0", "Port" : "arpRequestMetaFifo"},
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "arpRequestMetaFifo"}]},
			{"Name" : "remainingLength_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "generate_arp_pkg_64_U0", "Port" : "remainingLength_V"}]},
			{"Name" : "arpTable_macAddress_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "arpTable_macAddress_V"}]},
			{"Name" : "arpTable_valid", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "arpTable_valid"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arp_server_subnet_top_entry3_U0", "Parent" : "0",
		"CDFG" : "arp_server_subnet_top_entry3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "myMacAddress", "Type" : "None", "Direction" : "I"},
			{"Name" : "myIpAddress", "Type" : "None", "Direction" : "I"},
			{"Name" : "myMacAddress_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "23", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myMacAddress_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "24", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arp_server_subnet_top_entry7_U0", "Parent" : "0",
		"CDFG" : "arp_server_subnet_top_entry7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "myMacAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "23", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myMacAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "24", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myMacAddress_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "25", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myMacAddress_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "26", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_64_U0", "Parent" : "0", "Child" : ["4", "5", "6", "7"],
		"CDFG" : "convert_axis_to_net_axis_64_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "input_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "arpDataIn_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "27", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpDataIn_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_64_U0.regslice_both_input_V_data_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_64_U0.regslice_both_input_V_keep_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_64_U0.regslice_both_input_V_strb_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_64_U0.regslice_both_input_V_last_V_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_64_U0", "Parent" : "0", "Child" : ["9", "10", "11", "12"],
		"CDFG" : "convert_net_axis_to_axis_64_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "output_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "arpDataOut_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "28", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpDataOut_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_64_U0.regslice_both_output_V_data_V_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_64_U0.regslice_both_output_V_keep_V_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_64_U0.regslice_both_output_V_strb_V_U", "Parent" : "8"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_64_U0.regslice_both_output_V_last_V_U", "Parent" : "8"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.process_arp_pkg_64_U0", "Parent" : "0",
		"CDFG" : "process_arp_pkg_64_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "regRequestCount", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "regReplyCount", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "myIpAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "26", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "29", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arpDataIn_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "27", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpDataIn_internal_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "header_ready", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_idx", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_header_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arpReplyMetaFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "30", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpReplyMetaFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pag_requestCounter_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arpTableInsertFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "16", "DependentChan" : "31", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpTableInsertFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pag_replyCounter_V", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.generate_arp_pkg_64_U0", "Parent" : "0", "Child" : ["15"],
		"CDFG" : "generate_arp_pkg_64_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "myMacAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "25", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myMacAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "29", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gap_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_idx_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_header_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arpReplyMetaFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "30", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpReplyMetaFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arpRequestMetaFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "32", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpRequestMetaFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "remainingLength_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arpDataOut_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "28", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpDataOut_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.generate_arp_pkg_64_U0.mux_646_64_1_1_U34", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arp_table_U0", "Parent" : "0", "Child" : ["17", "18", "19", "20", "21", "22"],
		"CDFG" : "arp_table",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_46", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_46", "FromFinalSV" : "0", "FromAddress" : "arpTable_macAddress_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_30", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_49", "ToFinalSV" : "1", "ToAddress" : "arpTable_macAddress_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/arp_server_subnet.cpp:177:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_46", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_46", "FromFinalSV" : "0", "FromAddress" : "arpTable_macAddress_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_37", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_55", "ToFinalSV" : "1", "ToAddress" : "arpTable_macAddress_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/arp_server_subnet.cpp:177:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_47", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_47", "FromFinalSV" : "0", "FromAddress" : "arpTable_valid_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_31", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_50", "ToFinalSV" : "1", "ToAddress" : "arpTable_valid_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/arp_server_subnet.cpp:177:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_47", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_47", "FromFinalSV" : "0", "FromAddress" : "arpTable_valid_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_38", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_56", "ToFinalSV" : "1", "ToAddress" : "arpTable_valid_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/arp_server_subnet.cpp:177:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_30", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_49", "FromFinalSV" : "1", "FromAddress" : "arpTable_macAddress_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_46", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_46", "ToFinalSV" : "0", "ToAddress" : "arpTable_macAddress_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/arp_server_subnet.cpp:177:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_31", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_50", "FromFinalSV" : "1", "FromAddress" : "arpTable_valid_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_47", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_47", "ToFinalSV" : "0", "ToAddress" : "arpTable_valid_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/arp_server_subnet.cpp:177:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_37", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_55", "FromFinalSV" : "1", "FromAddress" : "arpTable_macAddress_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_46", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_46", "ToFinalSV" : "0", "ToAddress" : "arpTable_macAddress_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/arp_server_subnet.cpp:177:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_38", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_56", "FromFinalSV" : "1", "FromAddress" : "arpTable_valid_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_47", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_47", "ToFinalSV" : "0", "ToAddress" : "arpTable_valid_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/arp_server_subnet.cpp:177:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]}],
		"Port" : [
			{"Name" : "s_axis_arp_lookup_request_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_arp_lookup_request_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_host_arp_lookup_request_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_host_arp_lookup_request_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_arp_lookup_reply_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_arp_lookup_reply_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_host_arp_lookup_reply_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_host_arp_lookup_reply_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arpTableInsertFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "31", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpTableInsertFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arpTable_macAddress_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "arpTable_valid", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "arpRequestMetaFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "32", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpRequestMetaFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.arp_table_U0.arpTable_macAddress_V_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.arp_table_U0.arpTable_valid_U", "Parent" : "16"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.arp_table_U0.regslice_both_s_axis_arp_lookup_request_V_U", "Parent" : "16"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.arp_table_U0.regslice_both_s_axis_host_arp_lookup_request_V_U", "Parent" : "16"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.arp_table_U0.regslice_both_m_axis_arp_lookup_reply_V_U", "Parent" : "16"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.arp_table_U0.regslice_both_m_axis_host_arp_lookup_reply_V_U", "Parent" : "16"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myMacAddress_c1_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myIpAddress_c2_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myMacAddress_c_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myIpAddress_c_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arpDataIn_internal_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arpDataOut_internal_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myIpAddress_c16_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arpReplyMetaFifo_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arpTableInsertFifo_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arpRequestMetaFifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	arp_server_subnet_top {
		s_axis_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_arp_lookup_request_V {Type I LastRead 0 FirstWrite -1}
		s_axis_host_arp_lookup_request_V {Type I LastRead 0 FirstWrite -1}
		m_axis_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_arp_lookup_reply_V {Type O LastRead -1 FirstWrite 1}
		m_axis_host_arp_lookup_reply_V {Type O LastRead -1 FirstWrite 1}
		myMacAddress {Type I LastRead 0 FirstWrite -1}
		myIpAddress {Type I LastRead 0 FirstWrite -1}
		regRequestCount {Type O LastRead -1 FirstWrite 2}
		regReplyCount {Type O LastRead -1 FirstWrite 2}
		arpDataIn_internal {Type IO LastRead -1 FirstWrite -1}
		arpDataOut_internal {Type IO LastRead -1 FirstWrite -1}
		header_ready {Type IO LastRead -1 FirstWrite -1}
		header_idx {Type IO LastRead -1 FirstWrite -1}
		header_header_V {Type IO LastRead -1 FirstWrite -1}
		arpReplyMetaFifo {Type IO LastRead -1 FirstWrite -1}
		pag_requestCounter_V {Type IO LastRead -1 FirstWrite -1}
		arpTableInsertFifo {Type IO LastRead -1 FirstWrite -1}
		pag_replyCounter_V {Type IO LastRead -1 FirstWrite -1}
		gap_state {Type IO LastRead -1 FirstWrite -1}
		header_idx_1 {Type IO LastRead -1 FirstWrite -1}
		header_header_V_1 {Type IO LastRead -1 FirstWrite -1}
		arpRequestMetaFifo {Type IO LastRead -1 FirstWrite -1}
		remainingLength_V {Type IO LastRead -1 FirstWrite -1}
		arpTable_macAddress_V {Type IO LastRead -1 FirstWrite -1}
		arpTable_valid {Type IO LastRead -1 FirstWrite -1}}
	arp_server_subnet_top_entry3 {
		myMacAddress {Type I LastRead 0 FirstWrite -1}
		myIpAddress {Type I LastRead 0 FirstWrite -1}
		myMacAddress_out {Type O LastRead -1 FirstWrite 0}
		myIpAddress_out {Type O LastRead -1 FirstWrite 0}}
	arp_server_subnet_top_entry7 {
		myMacAddress {Type I LastRead 0 FirstWrite -1}
		myIpAddress {Type I LastRead 0 FirstWrite -1}
		myMacAddress_out {Type O LastRead -1 FirstWrite 0}
		myIpAddress_out {Type O LastRead -1 FirstWrite 0}}
	convert_axis_to_net_axis_64_s {
		input_V_data_V {Type I LastRead 0 FirstWrite -1}
		input_V_keep_V {Type I LastRead 0 FirstWrite -1}
		input_V_strb_V {Type I LastRead 0 FirstWrite -1}
		input_V_last_V {Type I LastRead 0 FirstWrite -1}
		arpDataIn_internal {Type O LastRead -1 FirstWrite 1}}
	convert_net_axis_to_axis_64_s {
		output_V_data_V {Type O LastRead -1 FirstWrite 1}
		output_V_keep_V {Type O LastRead -1 FirstWrite 1}
		output_V_strb_V {Type O LastRead -1 FirstWrite 1}
		output_V_last_V {Type O LastRead -1 FirstWrite 1}
		arpDataOut_internal {Type I LastRead 0 FirstWrite -1}}
	process_arp_pkg_64_s {
		regRequestCount {Type O LastRead -1 FirstWrite 2}
		regReplyCount {Type O LastRead -1 FirstWrite 2}
		myIpAddress {Type I LastRead 1 FirstWrite -1}
		myIpAddress_out {Type O LastRead -1 FirstWrite 1}
		arpDataIn_internal {Type I LastRead 0 FirstWrite -1}
		header_ready {Type IO LastRead -1 FirstWrite -1}
		header_idx {Type IO LastRead -1 FirstWrite -1}
		header_header_V {Type IO LastRead -1 FirstWrite -1}
		arpReplyMetaFifo {Type O LastRead -1 FirstWrite 2}
		pag_requestCounter_V {Type IO LastRead -1 FirstWrite -1}
		arpTableInsertFifo {Type O LastRead -1 FirstWrite 2}
		pag_replyCounter_V {Type IO LastRead -1 FirstWrite -1}}
	generate_arp_pkg_64_s {
		myMacAddress {Type I LastRead 0 FirstWrite -1}
		myIpAddress {Type I LastRead 0 FirstWrite -1}
		gap_state {Type IO LastRead -1 FirstWrite -1}
		header_idx_1 {Type IO LastRead -1 FirstWrite -1}
		header_header_V_1 {Type IO LastRead -1 FirstWrite -1}
		arpReplyMetaFifo {Type I LastRead 0 FirstWrite -1}
		arpRequestMetaFifo {Type I LastRead 0 FirstWrite -1}
		remainingLength_V {Type IO LastRead -1 FirstWrite -1}
		arpDataOut_internal {Type O LastRead -1 FirstWrite 1}}
	arp_table {
		s_axis_arp_lookup_request_V {Type I LastRead 0 FirstWrite -1}
		s_axis_host_arp_lookup_request_V {Type I LastRead 0 FirstWrite -1}
		m_axis_arp_lookup_reply_V {Type O LastRead -1 FirstWrite 1}
		m_axis_host_arp_lookup_reply_V {Type O LastRead -1 FirstWrite 1}
		arpTableInsertFifo {Type I LastRead 0 FirstWrite -1}
		arpTable_macAddress_V {Type IO LastRead -1 FirstWrite -1}
		arpTable_valid {Type IO LastRead -1 FirstWrite -1}
		arpRequestMetaFifo {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7", "Max" : "7"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	s_axis_V_data_V { axis {  { s_axis_TDATA in_data 0 64 } } }
	s_axis_V_keep_V { axis {  { s_axis_TKEEP in_data 0 8 } } }
	s_axis_V_strb_V { axis {  { s_axis_TSTRB in_data 0 8 } } }
	s_axis_V_last_V { axis {  { s_axis_TLAST in_data 0 1 }  { s_axis_TVALID in_vld 0 1 }  { s_axis_TREADY in_acc 1 1 } } }
	s_axis_arp_lookup_request_V { axis {  { s_axis_arp_lookup_request_V_TDATA in_data 0 32 }  { s_axis_arp_lookup_request_V_TVALID in_vld 0 1 }  { s_axis_arp_lookup_request_V_TREADY in_acc 1 1 } } }
	s_axis_host_arp_lookup_request_V { axis {  { s_axis_host_arp_lookup_request_V_TDATA in_data 0 32 }  { s_axis_host_arp_lookup_request_V_TVALID in_vld 0 1 }  { s_axis_host_arp_lookup_request_V_TREADY in_acc 1 1 } } }
	m_axis_V_data_V { axis {  { m_axis_TDATA out_data 1 64 } } }
	m_axis_V_keep_V { axis {  { m_axis_TKEEP out_data 1 8 } } }
	m_axis_V_strb_V { axis {  { m_axis_TSTRB out_data 1 8 } } }
	m_axis_V_last_V { axis {  { m_axis_TLAST out_data 1 1 }  { m_axis_TVALID out_vld 1 1 }  { m_axis_TREADY out_acc 0 1 } } }
	m_axis_arp_lookup_reply_V { axis {  { m_axis_arp_lookup_reply_V_TDATA out_data 1 128 }  { m_axis_arp_lookup_reply_V_TVALID out_vld 1 1 }  { m_axis_arp_lookup_reply_V_TREADY out_acc 0 1 } } }
	m_axis_host_arp_lookup_reply_V { axis {  { m_axis_host_arp_lookup_reply_V_TDATA out_data 1 128 }  { m_axis_host_arp_lookup_reply_V_TVALID out_vld 1 1 }  { m_axis_host_arp_lookup_reply_V_TREADY out_acc 0 1 } } }
	myMacAddress { ap_none {  { myMacAddress in_data 0 48 } } }
	myIpAddress { ap_none {  { myIpAddress in_data 0 32 } } }
	regRequestCount { ap_vld {  { regRequestCount out_data 1 16 }  { regRequestCount_ap_vld out_vld 1 1 } } }
	regReplyCount { ap_vld {  { regReplyCount out_data 1 16 }  { regReplyCount_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
set moduleName arp_server_subnet_top
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {arp_server_subnet_top}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_axis_V_data_V int 64 regular {axi_s 0 volatile  { s_axis Data } }  }
	{ s_axis_V_keep_V int 8 regular {axi_s 0 volatile  { s_axis Keep } }  }
	{ s_axis_V_strb_V int 8 regular {axi_s 0 volatile  { s_axis Strb } }  }
	{ s_axis_V_last_V int 1 regular {axi_s 0 volatile  { s_axis Last } }  }
	{ s_axis_arp_lookup_request_V int 32 regular {axi_s 0 volatile  { s_axis_arp_lookup_request_V Data } }  }
	{ s_axis_host_arp_lookup_request_V int 32 regular {axi_s 0 volatile  { s_axis_host_arp_lookup_request_V Data } }  }
	{ m_axis_V_data_V int 64 regular {axi_s 1 volatile  { m_axis Data } }  }
	{ m_axis_V_keep_V int 8 regular {axi_s 1 volatile  { m_axis Keep } }  }
	{ m_axis_V_strb_V int 8 regular {axi_s 1 volatile  { m_axis Strb } }  }
	{ m_axis_V_last_V int 1 regular {axi_s 1 volatile  { m_axis Last } }  }
	{ m_axis_arp_lookup_reply_V int 128 regular {axi_s 1 volatile  { m_axis_arp_lookup_reply_V Data } }  }
	{ m_axis_host_arp_lookup_reply_V int 128 regular {axi_s 1 volatile  { m_axis_host_arp_lookup_reply_V Data } }  }
	{ myMacAddress int 48 regular  }
	{ myIpAddress int 32 regular  }
	{ regRequestCount int 16 regular {pointer 1}  }
	{ regReplyCount int 16 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "s_axis_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis.V.data.V","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis.V.keep.V","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis.V.strb.V","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_arp_lookup_request_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_arp_lookup_request.V","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_host_arp_lookup_request_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_host_arp_lookup_request.V","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis.V.data.V","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis.V.keep.V","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis.V.strb.V","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_arp_lookup_reply_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_arp_lookup_reply.V","cData": "int128","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_host_arp_lookup_reply_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_host_arp_lookup_reply.V","cData": "int128","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "myMacAddress", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "myMacAddress","cData": "int48","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "myIpAddress", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "myIpAddress","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "regRequestCount", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "regRequestCount","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "regReplyCount", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "regReplyCount","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ s_axis_TDATA sc_in sc_lv 64 signal 0 } 
	{ s_axis_TKEEP sc_in sc_lv 8 signal 1 } 
	{ s_axis_TSTRB sc_in sc_lv 8 signal 2 } 
	{ s_axis_TLAST sc_in sc_lv 1 signal 3 } 
	{ s_axis_arp_lookup_request_V_TDATA sc_in sc_lv 32 signal 4 } 
	{ s_axis_host_arp_lookup_request_V_TDATA sc_in sc_lv 32 signal 5 } 
	{ m_axis_TDATA sc_out sc_lv 64 signal 6 } 
	{ m_axis_TKEEP sc_out sc_lv 8 signal 7 } 
	{ m_axis_TSTRB sc_out sc_lv 8 signal 8 } 
	{ m_axis_TLAST sc_out sc_lv 1 signal 9 } 
	{ m_axis_arp_lookup_reply_V_TDATA sc_out sc_lv 128 signal 10 } 
	{ m_axis_host_arp_lookup_reply_V_TDATA sc_out sc_lv 128 signal 11 } 
	{ myMacAddress sc_in sc_lv 48 signal 12 } 
	{ myIpAddress sc_in sc_lv 32 signal 13 } 
	{ regRequestCount sc_out sc_lv 16 signal 14 } 
	{ regReplyCount sc_out sc_lv 16 signal 15 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axis_TVALID sc_in sc_logic 1 invld 3 } 
	{ s_axis_TREADY sc_out sc_logic 1 inacc 3 } 
	{ m_axis_TVALID sc_out sc_logic 1 outvld 9 } 
	{ m_axis_TREADY sc_in sc_logic 1 outacc 9 } 
	{ regRequestCount_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ regReplyCount_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ s_axis_arp_lookup_request_V_TVALID sc_in sc_logic 1 invld 4 } 
	{ s_axis_arp_lookup_request_V_TREADY sc_out sc_logic 1 inacc 4 } 
	{ s_axis_host_arp_lookup_request_V_TVALID sc_in sc_logic 1 invld 5 } 
	{ s_axis_host_arp_lookup_request_V_TREADY sc_out sc_logic 1 inacc 5 } 
	{ m_axis_arp_lookup_reply_V_TVALID sc_out sc_logic 1 outvld 10 } 
	{ m_axis_arp_lookup_reply_V_TREADY sc_in sc_logic 1 outacc 10 } 
	{ m_axis_host_arp_lookup_reply_V_TVALID sc_out sc_logic 1 outvld 11 } 
	{ m_axis_host_arp_lookup_reply_V_TREADY sc_in sc_logic 1 outacc 11 } 
}
set NewPortList {[ 
	{ "name": "s_axis_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_axis_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_axis_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_arp_lookup_request_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_axis_arp_lookup_request_V", "role": "TDATA" }} , 
 	{ "name": "s_axis_host_arp_lookup_request_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_axis_host_arp_lookup_request_V", "role": "TDATA" }} , 
 	{ "name": "m_axis_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m_axis_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m_axis_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_arp_lookup_reply_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "m_axis_arp_lookup_reply_V", "role": "TDATA" }} , 
 	{ "name": "m_axis_host_arp_lookup_reply_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "m_axis_host_arp_lookup_reply_V", "role": "TDATA" }} , 
 	{ "name": "myMacAddress", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "myMacAddress", "role": "default" }} , 
 	{ "name": "myIpAddress", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "myIpAddress", "role": "default" }} , 
 	{ "name": "regRequestCount", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "regRequestCount", "role": "default" }} , 
 	{ "name": "regReplyCount", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "regReplyCount", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "s_axis_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_V_last_V", "role": "default" }} , 
 	{ "name": "regRequestCount_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "regRequestCount", "role": "ap_vld" }} , 
 	{ "name": "regReplyCount_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "regReplyCount", "role": "ap_vld" }} , 
 	{ "name": "s_axis_arp_lookup_request_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_arp_lookup_request_V", "role": "TVALID" }} , 
 	{ "name": "s_axis_arp_lookup_request_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_arp_lookup_request_V", "role": "TREADY" }} , 
 	{ "name": "s_axis_host_arp_lookup_request_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_host_arp_lookup_request_V", "role": "TVALID" }} , 
 	{ "name": "s_axis_host_arp_lookup_request_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_host_arp_lookup_request_V", "role": "TREADY" }} , 
 	{ "name": "m_axis_arp_lookup_reply_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_arp_lookup_reply_V", "role": "TVALID" }} , 
 	{ "name": "m_axis_arp_lookup_reply_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_arp_lookup_reply_V", "role": "TREADY" }} , 
 	{ "name": "m_axis_host_arp_lookup_reply_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_host_arp_lookup_reply_V", "role": "TVALID" }} , 
 	{ "name": "m_axis_host_arp_lookup_reply_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_host_arp_lookup_reply_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "8", "13", "14", "16", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32"],
		"CDFG" : "arp_server_subnet_top",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "arp_server_subnet_top_entry3_U0"},
			{"ID" : "3", "Name" : "convert_axis_to_net_axis_64_U0"},
			{"ID" : "8", "Name" : "convert_net_axis_to_axis_64_U0"}],
		"OutputProcess" : [
			{"ID" : "8", "Name" : "convert_net_axis_to_axis_64_U0"},
			{"ID" : "13", "Name" : "process_arp_pkg_64_U0"},
			{"ID" : "14", "Name" : "generate_arp_pkg_64_U0"},
			{"ID" : "16", "Name" : "arp_table_U0"}],
		"Port" : [
			{"Name" : "s_axis_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "convert_axis_to_net_axis_64_U0", "Port" : "input_V_data_V"}]},
			{"Name" : "s_axis_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "convert_axis_to_net_axis_64_U0", "Port" : "input_V_keep_V"}]},
			{"Name" : "s_axis_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "convert_axis_to_net_axis_64_U0", "Port" : "input_V_strb_V"}]},
			{"Name" : "s_axis_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "convert_axis_to_net_axis_64_U0", "Port" : "input_V_last_V"}]},
			{"Name" : "s_axis_arp_lookup_request_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "s_axis_arp_lookup_request_V"}]},
			{"Name" : "s_axis_host_arp_lookup_request_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "s_axis_host_arp_lookup_request_V"}]},
			{"Name" : "m_axis_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "convert_net_axis_to_axis_64_U0", "Port" : "output_V_data_V"}]},
			{"Name" : "m_axis_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "convert_net_axis_to_axis_64_U0", "Port" : "output_V_keep_V"}]},
			{"Name" : "m_axis_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "convert_net_axis_to_axis_64_U0", "Port" : "output_V_strb_V"}]},
			{"Name" : "m_axis_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "convert_net_axis_to_axis_64_U0", "Port" : "output_V_last_V"}]},
			{"Name" : "m_axis_arp_lookup_reply_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "m_axis_arp_lookup_reply_V"}]},
			{"Name" : "m_axis_host_arp_lookup_reply_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "m_axis_host_arp_lookup_reply_V"}]},
			{"Name" : "myMacAddress", "Type" : "None", "Direction" : "I"},
			{"Name" : "myIpAddress", "Type" : "None", "Direction" : "I"},
			{"Name" : "regRequestCount", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "regRequestCount"}]},
			{"Name" : "regReplyCount", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "regReplyCount"}]},
			{"Name" : "arpDataIn_internal", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "convert_axis_to_net_axis_64_U0", "Port" : "arpDataIn_internal"},
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "arpDataIn_internal"}]},
			{"Name" : "arpDataOut_internal", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "convert_net_axis_to_axis_64_U0", "Port" : "arpDataOut_internal"},
					{"ID" : "14", "SubInstance" : "generate_arp_pkg_64_U0", "Port" : "arpDataOut_internal"}]},
			{"Name" : "header_ready", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "header_ready"}]},
			{"Name" : "header_idx", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "header_idx"}]},
			{"Name" : "header_header_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "header_header_V"}]},
			{"Name" : "arpReplyMetaFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "generate_arp_pkg_64_U0", "Port" : "arpReplyMetaFifo"},
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "arpReplyMetaFifo"}]},
			{"Name" : "pag_requestCounter_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "pag_requestCounter_V"}]},
			{"Name" : "arpTableInsertFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "arpTableInsertFifo"},
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "arpTableInsertFifo"}]},
			{"Name" : "pag_replyCounter_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "process_arp_pkg_64_U0", "Port" : "pag_replyCounter_V"}]},
			{"Name" : "gap_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "generate_arp_pkg_64_U0", "Port" : "gap_state"}]},
			{"Name" : "header_idx_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "generate_arp_pkg_64_U0", "Port" : "header_idx_1"}]},
			{"Name" : "header_header_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "generate_arp_pkg_64_U0", "Port" : "header_header_V_1"}]},
			{"Name" : "arpRequestMetaFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "generate_arp_pkg_64_U0", "Port" : "arpRequestMetaFifo"},
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "arpRequestMetaFifo"}]},
			{"Name" : "remainingLength_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "generate_arp_pkg_64_U0", "Port" : "remainingLength_V"}]},
			{"Name" : "arpTable_macAddress_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "arpTable_macAddress_V"}]},
			{"Name" : "arpTable_valid", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "arpTable_valid"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arp_server_subnet_top_entry3_U0", "Parent" : "0",
		"CDFG" : "arp_server_subnet_top_entry3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "myMacAddress", "Type" : "None", "Direction" : "I"},
			{"Name" : "myIpAddress", "Type" : "None", "Direction" : "I"},
			{"Name" : "myMacAddress_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "23", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myMacAddress_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "24", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arp_server_subnet_top_entry7_U0", "Parent" : "0",
		"CDFG" : "arp_server_subnet_top_entry7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "myMacAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "23", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myMacAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "24", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myMacAddress_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "25", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myMacAddress_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "26", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_64_U0", "Parent" : "0", "Child" : ["4", "5", "6", "7"],
		"CDFG" : "convert_axis_to_net_axis_64_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "input_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "arpDataIn_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "27", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpDataIn_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_64_U0.regslice_both_input_V_data_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_64_U0.regslice_both_input_V_keep_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_64_U0.regslice_both_input_V_strb_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_axis_to_net_axis_64_U0.regslice_both_input_V_last_V_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_64_U0", "Parent" : "0", "Child" : ["9", "10", "11", "12"],
		"CDFG" : "convert_net_axis_to_axis_64_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "output_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "arpDataOut_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "28", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpDataOut_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_64_U0.regslice_both_output_V_data_V_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_64_U0.regslice_both_output_V_keep_V_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_64_U0.regslice_both_output_V_strb_V_U", "Parent" : "8"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_net_axis_to_axis_64_U0.regslice_both_output_V_last_V_U", "Parent" : "8"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.process_arp_pkg_64_U0", "Parent" : "0",
		"CDFG" : "process_arp_pkg_64_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "regRequestCount", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "regReplyCount", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "myIpAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "26", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "29", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arpDataIn_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "27", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpDataIn_internal_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "header_ready", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_idx", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_header_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arpReplyMetaFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "30", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpReplyMetaFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pag_requestCounter_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arpTableInsertFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "16", "DependentChan" : "31", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpTableInsertFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pag_replyCounter_V", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.generate_arp_pkg_64_U0", "Parent" : "0", "Child" : ["15"],
		"CDFG" : "generate_arp_pkg_64_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "myMacAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "25", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myMacAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "29", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gap_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_idx_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "header_header_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arpReplyMetaFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "30", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpReplyMetaFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arpRequestMetaFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "32", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpRequestMetaFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "remainingLength_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arpDataOut_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "28", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpDataOut_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.generate_arp_pkg_64_U0.mux_646_64_1_1_U34", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arp_table_U0", "Parent" : "0", "Child" : ["17", "18", "19", "20", "21", "22"],
		"CDFG" : "arp_table",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_46", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_46", "FromFinalSV" : "0", "FromAddress" : "arpTable_macAddress_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_30", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_49", "ToFinalSV" : "1", "ToAddress" : "arpTable_macAddress_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/arp_server_subnet.cpp:177:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_46", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_46", "FromFinalSV" : "0", "FromAddress" : "arpTable_macAddress_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_37", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_55", "ToFinalSV" : "1", "ToAddress" : "arpTable_macAddress_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/arp_server_subnet.cpp:177:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_47", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_47", "FromFinalSV" : "0", "FromAddress" : "arpTable_valid_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_31", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_50", "ToFinalSV" : "1", "ToAddress" : "arpTable_valid_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/arp_server_subnet.cpp:177:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_47", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_47", "FromFinalSV" : "0", "FromAddress" : "arpTable_valid_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_38", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_56", "ToFinalSV" : "1", "ToAddress" : "arpTable_valid_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/arp_server_subnet.cpp:177:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_30", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_49", "FromFinalSV" : "1", "FromAddress" : "arpTable_macAddress_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_46", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_46", "ToFinalSV" : "0", "ToAddress" : "arpTable_macAddress_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/arp_server_subnet.cpp:177:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_31", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_50", "FromFinalSV" : "1", "FromAddress" : "arpTable_valid_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_47", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_47", "ToFinalSV" : "0", "ToAddress" : "arpTable_valid_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/arp_server_subnet.cpp:177:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_37", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_55", "FromFinalSV" : "1", "FromAddress" : "arpTable_macAddress_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_46", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_46", "ToFinalSV" : "0", "ToAddress" : "arpTable_macAddress_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/arp_server_subnet.cpp:177:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_38", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_56", "FromFinalSV" : "1", "FromAddress" : "arpTable_valid_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_47", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_47", "ToFinalSV" : "0", "ToAddress" : "arpTable_valid_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/arp_server_subnet.cpp:177:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]}],
		"Port" : [
			{"Name" : "s_axis_arp_lookup_request_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_arp_lookup_request_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_host_arp_lookup_request_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_host_arp_lookup_request_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_arp_lookup_reply_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_arp_lookup_reply_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_host_arp_lookup_reply_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_host_arp_lookup_reply_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arpTableInsertFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "31", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpTableInsertFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arpTable_macAddress_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "arpTable_valid", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "arpRequestMetaFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "32", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpRequestMetaFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.arp_table_U0.arpTable_macAddress_V_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.arp_table_U0.arpTable_valid_U", "Parent" : "16"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.arp_table_U0.regslice_both_s_axis_arp_lookup_request_V_U", "Parent" : "16"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.arp_table_U0.regslice_both_s_axis_host_arp_lookup_request_V_U", "Parent" : "16"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.arp_table_U0.regslice_both_m_axis_arp_lookup_reply_V_U", "Parent" : "16"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.arp_table_U0.regslice_both_m_axis_host_arp_lookup_reply_V_U", "Parent" : "16"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myMacAddress_c1_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myIpAddress_c2_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myMacAddress_c_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myIpAddress_c_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arpDataIn_internal_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arpDataOut_internal_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myIpAddress_c16_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arpReplyMetaFifo_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arpTableInsertFifo_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arpRequestMetaFifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	arp_server_subnet_top {
		s_axis_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_arp_lookup_request_V {Type I LastRead 0 FirstWrite -1}
		s_axis_host_arp_lookup_request_V {Type I LastRead 0 FirstWrite -1}
		m_axis_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_arp_lookup_reply_V {Type O LastRead -1 FirstWrite 1}
		m_axis_host_arp_lookup_reply_V {Type O LastRead -1 FirstWrite 1}
		myMacAddress {Type I LastRead 0 FirstWrite -1}
		myIpAddress {Type I LastRead 0 FirstWrite -1}
		regRequestCount {Type O LastRead -1 FirstWrite 2}
		regReplyCount {Type O LastRead -1 FirstWrite 2}
		arpDataIn_internal {Type IO LastRead -1 FirstWrite -1}
		arpDataOut_internal {Type IO LastRead -1 FirstWrite -1}
		header_ready {Type IO LastRead -1 FirstWrite -1}
		header_idx {Type IO LastRead -1 FirstWrite -1}
		header_header_V {Type IO LastRead -1 FirstWrite -1}
		arpReplyMetaFifo {Type IO LastRead -1 FirstWrite -1}
		pag_requestCounter_V {Type IO LastRead -1 FirstWrite -1}
		arpTableInsertFifo {Type IO LastRead -1 FirstWrite -1}
		pag_replyCounter_V {Type IO LastRead -1 FirstWrite -1}
		gap_state {Type IO LastRead -1 FirstWrite -1}
		header_idx_1 {Type IO LastRead -1 FirstWrite -1}
		header_header_V_1 {Type IO LastRead -1 FirstWrite -1}
		arpRequestMetaFifo {Type IO LastRead -1 FirstWrite -1}
		remainingLength_V {Type IO LastRead -1 FirstWrite -1}
		arpTable_macAddress_V {Type IO LastRead -1 FirstWrite -1}
		arpTable_valid {Type IO LastRead -1 FirstWrite -1}}
	arp_server_subnet_top_entry3 {
		myMacAddress {Type I LastRead 0 FirstWrite -1}
		myIpAddress {Type I LastRead 0 FirstWrite -1}
		myMacAddress_out {Type O LastRead -1 FirstWrite 0}
		myIpAddress_out {Type O LastRead -1 FirstWrite 0}}
	arp_server_subnet_top_entry7 {
		myMacAddress {Type I LastRead 0 FirstWrite -1}
		myIpAddress {Type I LastRead 0 FirstWrite -1}
		myMacAddress_out {Type O LastRead -1 FirstWrite 0}
		myIpAddress_out {Type O LastRead -1 FirstWrite 0}}
	convert_axis_to_net_axis_64_s {
		input_V_data_V {Type I LastRead 0 FirstWrite -1}
		input_V_keep_V {Type I LastRead 0 FirstWrite -1}
		input_V_strb_V {Type I LastRead 0 FirstWrite -1}
		input_V_last_V {Type I LastRead 0 FirstWrite -1}
		arpDataIn_internal {Type O LastRead -1 FirstWrite 1}}
	convert_net_axis_to_axis_64_s {
		output_V_data_V {Type O LastRead -1 FirstWrite 1}
		output_V_keep_V {Type O LastRead -1 FirstWrite 1}
		output_V_strb_V {Type O LastRead -1 FirstWrite 1}
		output_V_last_V {Type O LastRead -1 FirstWrite 1}
		arpDataOut_internal {Type I LastRead 0 FirstWrite -1}}
	process_arp_pkg_64_s {
		regRequestCount {Type O LastRead -1 FirstWrite 2}
		regReplyCount {Type O LastRead -1 FirstWrite 2}
		myIpAddress {Type I LastRead 1 FirstWrite -1}
		myIpAddress_out {Type O LastRead -1 FirstWrite 1}
		arpDataIn_internal {Type I LastRead 0 FirstWrite -1}
		header_ready {Type IO LastRead -1 FirstWrite -1}
		header_idx {Type IO LastRead -1 FirstWrite -1}
		header_header_V {Type IO LastRead -1 FirstWrite -1}
		arpReplyMetaFifo {Type O LastRead -1 FirstWrite 2}
		pag_requestCounter_V {Type IO LastRead -1 FirstWrite -1}
		arpTableInsertFifo {Type O LastRead -1 FirstWrite 2}
		pag_replyCounter_V {Type IO LastRead -1 FirstWrite -1}}
	generate_arp_pkg_64_s {
		myMacAddress {Type I LastRead 0 FirstWrite -1}
		myIpAddress {Type I LastRead 0 FirstWrite -1}
		gap_state {Type IO LastRead -1 FirstWrite -1}
		header_idx_1 {Type IO LastRead -1 FirstWrite -1}
		header_header_V_1 {Type IO LastRead -1 FirstWrite -1}
		arpReplyMetaFifo {Type I LastRead 0 FirstWrite -1}
		arpRequestMetaFifo {Type I LastRead 0 FirstWrite -1}
		remainingLength_V {Type IO LastRead -1 FirstWrite -1}
		arpDataOut_internal {Type O LastRead -1 FirstWrite 1}}
	arp_table {
		s_axis_arp_lookup_request_V {Type I LastRead 0 FirstWrite -1}
		s_axis_host_arp_lookup_request_V {Type I LastRead 0 FirstWrite -1}
		m_axis_arp_lookup_reply_V {Type O LastRead -1 FirstWrite 1}
		m_axis_host_arp_lookup_reply_V {Type O LastRead -1 FirstWrite 1}
		arpTableInsertFifo {Type I LastRead 0 FirstWrite -1}
		arpTable_macAddress_V {Type IO LastRead -1 FirstWrite -1}
		arpTable_valid {Type IO LastRead -1 FirstWrite -1}
		arpRequestMetaFifo {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7", "Max" : "7"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	s_axis_V_data_V { axis {  { s_axis_TDATA in_data 0 64 } } }
	s_axis_V_keep_V { axis {  { s_axis_TKEEP in_data 0 8 } } }
	s_axis_V_strb_V { axis {  { s_axis_TSTRB in_data 0 8 } } }
	s_axis_V_last_V { axis {  { s_axis_TLAST in_data 0 1 }  { s_axis_TVALID in_vld 0 1 }  { s_axis_TREADY in_acc 1 1 } } }
	s_axis_arp_lookup_request_V { axis {  { s_axis_arp_lookup_request_V_TDATA in_data 0 32 }  { s_axis_arp_lookup_request_V_TVALID in_vld 0 1 }  { s_axis_arp_lookup_request_V_TREADY in_acc 1 1 } } }
	s_axis_host_arp_lookup_request_V { axis {  { s_axis_host_arp_lookup_request_V_TDATA in_data 0 32 }  { s_axis_host_arp_lookup_request_V_TVALID in_vld 0 1 }  { s_axis_host_arp_lookup_request_V_TREADY in_acc 1 1 } } }
	m_axis_V_data_V { axis {  { m_axis_TDATA out_data 1 64 } } }
	m_axis_V_keep_V { axis {  { m_axis_TKEEP out_data 1 8 } } }
	m_axis_V_strb_V { axis {  { m_axis_TSTRB out_data 1 8 } } }
	m_axis_V_last_V { axis {  { m_axis_TLAST out_data 1 1 }  { m_axis_TVALID out_vld 1 1 }  { m_axis_TREADY out_acc 0 1 } } }
	m_axis_arp_lookup_reply_V { axis {  { m_axis_arp_lookup_reply_V_TDATA out_data 1 128 }  { m_axis_arp_lookup_reply_V_TVALID out_vld 1 1 }  { m_axis_arp_lookup_reply_V_TREADY out_acc 0 1 } } }
	m_axis_host_arp_lookup_reply_V { axis {  { m_axis_host_arp_lookup_reply_V_TDATA out_data 1 128 }  { m_axis_host_arp_lookup_reply_V_TVALID out_vld 1 1 }  { m_axis_host_arp_lookup_reply_V_TREADY out_acc 0 1 } } }
	myMacAddress { ap_none {  { myMacAddress in_data 0 48 } } }
	myIpAddress { ap_none {  { myIpAddress in_data 0 32 } } }
	regRequestCount { ap_vld {  { regRequestCount out_data 1 16 }  { regRequestCount_ap_vld out_vld 1 1 } } }
	regReplyCount { ap_vld {  { regReplyCount out_data 1 16 }  { regReplyCount_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
