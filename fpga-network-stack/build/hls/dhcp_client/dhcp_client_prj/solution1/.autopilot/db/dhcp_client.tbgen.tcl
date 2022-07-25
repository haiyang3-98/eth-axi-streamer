set moduleName dhcp_client
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
set C_modelName {dhcp_client}
set C_modelType { void 0 }
set C_modelArgList {
	{ m_axis_open_port_V int 16 regular {axi_s 1 volatile  { m_axis_open_port_V Data } }  }
	{ s_axis_open_port_status_V int 8 regular {axi_s 0 volatile  { s_axis_open_port_status_V Data } }  }
	{ s_axis_rx_metadata_V int 128 regular {axi_s 0 volatile  { s_axis_rx_metadata_V Data } }  }
	{ s_axis_rx_data_V_data_V int 64 regular {axi_s 0 volatile  { s_axis_rx_data Data } }  }
	{ s_axis_rx_data_V_keep_V int 8 regular {axi_s 0 volatile  { s_axis_rx_data Keep } }  }
	{ s_axis_rx_data_V_strb_V int 8 regular {axi_s 0 volatile  { s_axis_rx_data Strb } }  }
	{ s_axis_rx_data_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_rx_data Last } }  }
	{ m_axis_tx_metadata_V int 128 regular {axi_s 1 volatile  { m_axis_tx_metadata_V Data } }  }
	{ m_axis_tx_length_V int 16 regular {axi_s 1 volatile  { m_axis_tx_length_V Data } }  }
	{ m_axis_tx_data_V_data_V int 64 regular {axi_s 1 volatile  { m_axis_tx_data Data } }  }
	{ m_axis_tx_data_V_keep_V int 8 regular {axi_s 1 volatile  { m_axis_tx_data Keep } }  }
	{ m_axis_tx_data_V_strb_V int 8 regular {axi_s 1 volatile  { m_axis_tx_data Strb } }  }
	{ m_axis_tx_data_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_tx_data Last } }  }
	{ dhcpEnable int 1 regular {pointer 0}  }
	{ inputIpAddress int 32 regular {pointer 0}  }
	{ dhcpIpAddressOut int 32 regular {pointer 1}  }
	{ myMacAddress int 48 regular {pointer 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "m_axis_open_port_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_open_port.V","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_open_port_status_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_open_port_status.V","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_rx_metadata_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_rx_metadata.V","cData": "int128","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_rx_data_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_rx_data.V.data.V","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_rx_data_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_rx_data.V.keep.V","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_rx_data_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_rx_data.V.strb.V","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_rx_data_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_rx_data.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tx_metadata_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tx_metadata.V","cData": "int128","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tx_length_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tx_length.V","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tx_data_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tx_data.V.data.V","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tx_data_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tx_data.V.keep.V","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tx_data_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tx_data.V.strb.V","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tx_data_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tx_data.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "dhcpEnable", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dhcpEnable","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "inputIpAddress", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "inputIpAddress","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "dhcpIpAddressOut", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dhcpIpAddressOut","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "myMacAddress", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "myMacAddress","cData": "int48","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ m_axis_open_port_V_TDATA sc_out sc_lv 16 signal 0 } 
	{ s_axis_open_port_status_V_TDATA sc_in sc_lv 8 signal 1 } 
	{ s_axis_rx_metadata_V_TDATA sc_in sc_lv 128 signal 2 } 
	{ s_axis_rx_data_TDATA sc_in sc_lv 64 signal 3 } 
	{ s_axis_rx_data_TKEEP sc_in sc_lv 8 signal 4 } 
	{ s_axis_rx_data_TSTRB sc_in sc_lv 8 signal 5 } 
	{ s_axis_rx_data_TLAST sc_in sc_lv 1 signal 6 } 
	{ m_axis_tx_metadata_V_TDATA sc_out sc_lv 128 signal 7 } 
	{ m_axis_tx_length_V_TDATA sc_out sc_lv 16 signal 8 } 
	{ m_axis_tx_data_TDATA sc_out sc_lv 64 signal 9 } 
	{ m_axis_tx_data_TKEEP sc_out sc_lv 8 signal 10 } 
	{ m_axis_tx_data_TSTRB sc_out sc_lv 8 signal 11 } 
	{ m_axis_tx_data_TLAST sc_out sc_lv 1 signal 12 } 
	{ dhcpEnable sc_in sc_lv 1 signal 13 } 
	{ inputIpAddress sc_in sc_lv 32 signal 14 } 
	{ dhcpIpAddressOut sc_out sc_lv 32 signal 15 } 
	{ myMacAddress sc_in sc_lv 48 signal 16 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axis_open_port_V_TVALID sc_out sc_logic 1 outvld 0 } 
	{ m_axis_open_port_V_TREADY sc_in sc_logic 1 outacc 0 } 
	{ s_axis_open_port_status_V_TVALID sc_in sc_logic 1 invld 1 } 
	{ s_axis_open_port_status_V_TREADY sc_out sc_logic 1 inacc 1 } 
	{ s_axis_rx_metadata_V_TVALID sc_in sc_logic 1 invld 2 } 
	{ s_axis_rx_metadata_V_TREADY sc_out sc_logic 1 inacc 2 } 
	{ s_axis_rx_data_TVALID sc_in sc_logic 1 invld 6 } 
	{ s_axis_rx_data_TREADY sc_out sc_logic 1 inacc 6 } 
	{ m_axis_tx_metadata_V_TVALID sc_out sc_logic 1 outvld 7 } 
	{ m_axis_tx_metadata_V_TREADY sc_in sc_logic 1 outacc 7 } 
	{ m_axis_tx_length_V_TVALID sc_out sc_logic 1 outvld 8 } 
	{ m_axis_tx_length_V_TREADY sc_in sc_logic 1 outacc 8 } 
	{ m_axis_tx_data_TVALID sc_out sc_logic 1 outvld 12 } 
	{ m_axis_tx_data_TREADY sc_in sc_logic 1 outacc 12 } 
}
set NewPortList {[ 
	{ "name": "m_axis_open_port_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "m_axis_open_port_V", "role": "TDATA" }} , 
 	{ "name": "s_axis_open_port_status_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_axis_open_port_status_V", "role": "TDATA" }} , 
 	{ "name": "s_axis_rx_metadata_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "s_axis_rx_metadata_V", "role": "TDATA" }} , 
 	{ "name": "s_axis_rx_data_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_rx_data_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_rx_data_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_axis_rx_data_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_rx_data_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_axis_rx_data_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_rx_data_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_rx_data_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tx_metadata_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "m_axis_tx_metadata_V", "role": "TDATA" }} , 
 	{ "name": "m_axis_tx_length_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "m_axis_tx_length_V", "role": "TDATA" }} , 
 	{ "name": "m_axis_tx_data_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_tx_data_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_tx_data_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m_axis_tx_data_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_tx_data_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m_axis_tx_data_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_tx_data_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_tx_data_V_last_V", "role": "default" }} , 
 	{ "name": "dhcpEnable", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dhcpEnable", "role": "default" }} , 
 	{ "name": "inputIpAddress", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inputIpAddress", "role": "default" }} , 
 	{ "name": "dhcpIpAddressOut", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dhcpIpAddressOut", "role": "default" }} , 
 	{ "name": "myMacAddress", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "myMacAddress", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axis_open_port_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_open_port_V", "role": "TVALID" }} , 
 	{ "name": "m_axis_open_port_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_open_port_V", "role": "TREADY" }} , 
 	{ "name": "s_axis_open_port_status_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_open_port_status_V", "role": "TVALID" }} , 
 	{ "name": "s_axis_open_port_status_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_open_port_status_V", "role": "TREADY" }} , 
 	{ "name": "s_axis_rx_metadata_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_rx_metadata_V", "role": "TVALID" }} , 
 	{ "name": "s_axis_rx_metadata_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_rx_metadata_V", "role": "TREADY" }} , 
 	{ "name": "s_axis_rx_data_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_rx_data_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_rx_data_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_rx_data_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tx_metadata_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_tx_metadata_V", "role": "TVALID" }} , 
 	{ "name": "m_axis_tx_metadata_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_tx_metadata_V", "role": "TREADY" }} , 
 	{ "name": "m_axis_tx_length_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_tx_length_V", "role": "TVALID" }} , 
 	{ "name": "m_axis_tx_length_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_tx_length_V", "role": "TREADY" }} , 
 	{ "name": "m_axis_tx_data_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_tx_data_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tx_data_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_tx_data_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "12", "13", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29"],
		"CDFG" : "dhcp_client",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "dhcp_client_entry3_U0"},
			{"ID" : "3", "Name" : "open_dhcp_port_U0"}],
		"OutputProcess" : [
			{"ID" : "3", "Name" : "open_dhcp_port_U0"},
			{"ID" : "12", "Name" : "dhcp_fsm_U0"},
			{"ID" : "13", "Name" : "send_message_U0"}],
		"Port" : [
			{"Name" : "m_axis_open_port_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "open_dhcp_port_U0", "Port" : "m_axis_open_port_V"}]},
			{"Name" : "s_axis_open_port_status_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "open_dhcp_port_U0", "Port" : "s_axis_open_port_status_V"}]},
			{"Name" : "s_axis_rx_metadata_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "receive_message_U0", "Port" : "s_axis_rx_metadata_V"}]},
			{"Name" : "s_axis_rx_data_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "receive_message_U0", "Port" : "s_axis_rx_data_V_data_V"}]},
			{"Name" : "s_axis_rx_data_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "receive_message_U0", "Port" : "s_axis_rx_data_V_keep_V"}]},
			{"Name" : "s_axis_rx_data_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "receive_message_U0", "Port" : "s_axis_rx_data_V_strb_V"}]},
			{"Name" : "s_axis_rx_data_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "receive_message_U0", "Port" : "s_axis_rx_data_V_last_V"}]},
			{"Name" : "m_axis_tx_metadata_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "send_message_U0", "Port" : "m_axis_tx_metadata_V"}]},
			{"Name" : "m_axis_tx_length_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "send_message_U0", "Port" : "m_axis_tx_length_V"}]},
			{"Name" : "m_axis_tx_data_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "send_message_U0", "Port" : "m_axis_tx_data_V_data_V"}]},
			{"Name" : "m_axis_tx_data_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "send_message_U0", "Port" : "m_axis_tx_data_V_keep_V"}]},
			{"Name" : "m_axis_tx_data_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "send_message_U0", "Port" : "m_axis_tx_data_V_strb_V"}]},
			{"Name" : "m_axis_tx_data_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "send_message_U0", "Port" : "m_axis_tx_data_V_last_V"}]},
			{"Name" : "dhcpEnable", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dhcp_client_entry3_U0", "Port" : "dhcpEnable"}]},
			{"Name" : "inputIpAddress", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dhcp_client_entry3_U0", "Port" : "inputIpAddress"}]},
			{"Name" : "dhcpIpAddressOut", "Type" : "None", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "dhcp_fsm_U0", "Port" : "dhcpIpAddressOut"}]},
			{"Name" : "myMacAddress", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dhcp_client_entry3_U0", "Port" : "myMacAddress"}]},
			{"Name" : "openPortWaitTime_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "open_dhcp_port_U0", "Port" : "openPortWaitTime_V"}]},
			{"Name" : "odp_listenDone", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "open_dhcp_port_U0", "Port" : "odp_listenDone"}]},
			{"Name" : "odp_waitListenStatus", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "open_dhcp_port_U0", "Port" : "odp_waitListenStatus"}]},
			{"Name" : "portOpen", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "dhcp_fsm_U0", "Port" : "portOpen"},
					{"ID" : "3", "SubInstance" : "open_dhcp_port_U0", "Port" : "portOpen"}]},
			{"Name" : "rm_wordCount_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "receive_message_U0", "Port" : "rm_wordCount_V"}]},
			{"Name" : "rm_isReply", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "receive_message_U0", "Port" : "rm_isReply"}]},
			{"Name" : "rm_correctMac", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "receive_message_U0", "Port" : "rm_correctMac"}]},
			{"Name" : "rm_isDHCP", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "receive_message_U0", "Port" : "rm_isDHCP"}]},
			{"Name" : "meta_identifier_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "receive_message_U0", "Port" : "meta_identifier_V"}]},
			{"Name" : "meta_assignedIpAddress_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "receive_message_U0", "Port" : "meta_assignedIpAddress_V"}]},
			{"Name" : "meta_serverAddress_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "receive_message_U0", "Port" : "meta_serverAddress_V"}]},
			{"Name" : "meta_type_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "receive_message_U0", "Port" : "meta_type_V_1"}]},
			{"Name" : "dhcp_replyMetaFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "receive_message_U0", "Port" : "dhcp_replyMetaFifo"},
					{"ID" : "12", "SubInstance" : "dhcp_fsm_U0", "Port" : "dhcp_replyMetaFifo"}]},
			{"Name" : "myIpAddress_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "dhcp_fsm_U0", "Port" : "myIpAddress_V"}]},
			{"Name" : "state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "dhcp_fsm_U0", "Port" : "state"}]},
			{"Name" : "time_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "dhcp_fsm_U0", "Port" : "time_V"}]},
			{"Name" : "randomValue_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "dhcp_fsm_U0", "Port" : "randomValue_V"}]},
			{"Name" : "myIdentity_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "dhcp_fsm_U0", "Port" : "myIdentity_V"}]},
			{"Name" : "IpAddressBuffer_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "dhcp_fsm_U0", "Port" : "IpAddressBuffer_V"}]},
			{"Name" : "dhcp_requestMetaFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "send_message_U0", "Port" : "dhcp_requestMetaFifo"},
					{"ID" : "12", "SubInstance" : "dhcp_fsm_U0", "Port" : "dhcp_requestMetaFifo"}]},
			{"Name" : "sm_wordCount_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "send_message_U0", "Port" : "sm_wordCount_V"}]},
			{"Name" : "meta_type_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "send_message_U0", "Port" : "meta_type_V"}]},
			{"Name" : "meta_requestedIpAddress_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "send_message_U0", "Port" : "meta_requestedIpAddress_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dhcp_client_entry3_U0", "Parent" : "0",
		"CDFG" : "dhcp_client_entry3",
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
			{"Name" : "dhcpEnable", "Type" : "None", "Direction" : "I"},
			{"Name" : "inputIpAddress", "Type" : "None", "Direction" : "I"},
			{"Name" : "myMacAddress", "Type" : "None", "Direction" : "I"},
			{"Name" : "dhcpEnable_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "20", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dhcpEnable_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inputIpAddress_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "21", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "inputIpAddress_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myMacAddress_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "22", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myMacAddress_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dhcp_client_entry7_U0", "Parent" : "0",
		"CDFG" : "dhcp_client_entry7",
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
			{"Name" : "dhcpEnable", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "20", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dhcpEnable_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inputIpAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "21", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "inputIpAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myMacAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "22", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myMacAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dhcpEnable_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "23", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dhcpEnable_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inputIpAddress_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "24", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "inputIpAddress_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myMacAddress_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "25", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myMacAddress_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myMacAddress_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "26", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myMacAddress_out1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.open_dhcp_port_U0", "Parent" : "0", "Child" : ["4", "5"],
		"CDFG" : "open_dhcp_port",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "2",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "m_axis_open_port_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_open_port_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_open_port_status_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_open_port_status_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "openPortWaitTime_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "odp_listenDone", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "odp_waitListenStatus", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "portOpen", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "27", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "portOpen_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.open_dhcp_port_U0.regslice_both_m_axis_open_port_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.open_dhcp_port_U0.regslice_both_s_axis_open_port_status_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.receive_message_U0", "Parent" : "0", "Child" : ["7", "8", "9", "10", "11"],
		"CDFG" : "receive_message",
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
			{"Name" : "s_axis_rx_metadata_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_rx_metadata_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_rx_data_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_rx_data_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_rx_data_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_rx_data_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_rx_data_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "myMacAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "25", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myMacAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rm_wordCount_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rm_isReply", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rm_correctMac", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rm_isDHCP", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "meta_identifier_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "meta_assignedIpAddress_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "meta_serverAddress_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "meta_type_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dhcp_replyMetaFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "28", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dhcp_replyMetaFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.receive_message_U0.regslice_both_s_axis_rx_metadata_V_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.receive_message_U0.regslice_both_s_axis_rx_data_V_data_V_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.receive_message_U0.regslice_both_s_axis_rx_data_V_keep_V_U", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.receive_message_U0.regslice_both_s_axis_rx_data_V_strb_V_U", "Parent" : "6"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.receive_message_U0.regslice_both_s_axis_rx_data_V_last_V_U", "Parent" : "6"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dhcp_fsm_U0", "Parent" : "0",
		"CDFG" : "dhcp_fsm",
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
			{"Name" : "dhcpIpAddressOut", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dhcpEnable", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "23", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dhcpEnable_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inputIpAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "24", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "inputIpAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "time_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "randomValue_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "myIdentity_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "IpAddressBuffer_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "portOpen", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "27", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "portOpen_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dhcp_requestMetaFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "29", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dhcp_requestMetaFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dhcp_replyMetaFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "28", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dhcp_replyMetaFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.send_message_U0", "Parent" : "0", "Child" : ["14", "15", "16", "17", "18", "19"],
		"CDFG" : "send_message",
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
			{"Name" : "m_axis_tx_metadata_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_tx_metadata_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_tx_length_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_tx_length_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_tx_data_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_tx_data_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_tx_data_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_tx_data_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_tx_data_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "myMacAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "26", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myMacAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sm_wordCount_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "meta_type_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "meta_requestedIpAddress_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dhcp_requestMetaFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "29", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dhcp_requestMetaFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.send_message_U0.regslice_both_m_axis_tx_metadata_V_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.send_message_U0.regslice_both_m_axis_tx_length_V_U", "Parent" : "13"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.send_message_U0.regslice_both_m_axis_tx_data_V_data_V_U", "Parent" : "13"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.send_message_U0.regslice_both_m_axis_tx_data_V_keep_V_U", "Parent" : "13"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.send_message_U0.regslice_both_m_axis_tx_data_V_strb_V_U", "Parent" : "13"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.send_message_U0.regslice_both_m_axis_tx_data_V_last_V_U", "Parent" : "13"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dhcpEnable_c1_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inputIpAddress_c2_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myMacAddress_c3_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dhcpEnable_c_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inputIpAddress_c_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myMacAddress_c_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myMacAddress_c12_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.portOpen_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dhcp_replyMetaFifo_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dhcp_requestMetaFifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dhcp_client {
		m_axis_open_port_V {Type O LastRead 0 FirstWrite 1}
		s_axis_open_port_status_V {Type I LastRead 1 FirstWrite -1}
		s_axis_rx_metadata_V {Type I LastRead 0 FirstWrite -1}
		s_axis_rx_data_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_rx_data_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_rx_data_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_rx_data_V_last_V {Type I LastRead 0 FirstWrite -1}
		m_axis_tx_metadata_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_length_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_data_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_data_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_data_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_data_V_last_V {Type O LastRead -1 FirstWrite 1}
		dhcpEnable {Type I LastRead 0 FirstWrite -1}
		inputIpAddress {Type I LastRead 0 FirstWrite -1}
		dhcpIpAddressOut {Type O LastRead -1 FirstWrite 1}
		myMacAddress {Type I LastRead 0 FirstWrite -1}
		openPortWaitTime_V {Type IO LastRead -1 FirstWrite -1}
		odp_listenDone {Type IO LastRead -1 FirstWrite -1}
		odp_waitListenStatus {Type IO LastRead -1 FirstWrite -1}
		portOpen {Type IO LastRead -1 FirstWrite -1}
		rm_wordCount_V {Type IO LastRead -1 FirstWrite -1}
		rm_isReply {Type IO LastRead -1 FirstWrite -1}
		rm_correctMac {Type IO LastRead -1 FirstWrite -1}
		rm_isDHCP {Type IO LastRead -1 FirstWrite -1}
		meta_identifier_V {Type IO LastRead -1 FirstWrite -1}
		meta_assignedIpAddress_V {Type IO LastRead -1 FirstWrite -1}
		meta_serverAddress_V {Type IO LastRead -1 FirstWrite -1}
		meta_type_V_1 {Type IO LastRead -1 FirstWrite -1}
		dhcp_replyMetaFifo {Type IO LastRead -1 FirstWrite -1}
		myIpAddress_V {Type IO LastRead -1 FirstWrite -1}
		state {Type IO LastRead -1 FirstWrite -1}
		time_V {Type IO LastRead -1 FirstWrite -1}
		randomValue_V {Type IO LastRead -1 FirstWrite -1}
		myIdentity_V {Type IO LastRead -1 FirstWrite -1}
		IpAddressBuffer_V {Type IO LastRead -1 FirstWrite -1}
		dhcp_requestMetaFifo {Type IO LastRead -1 FirstWrite -1}
		sm_wordCount_V {Type IO LastRead -1 FirstWrite -1}
		meta_type_V {Type IO LastRead -1 FirstWrite -1}
		meta_requestedIpAddress_V {Type IO LastRead -1 FirstWrite -1}}
	dhcp_client_entry3 {
		dhcpEnable {Type I LastRead 0 FirstWrite -1}
		inputIpAddress {Type I LastRead 0 FirstWrite -1}
		myMacAddress {Type I LastRead 0 FirstWrite -1}
		dhcpEnable_out {Type O LastRead -1 FirstWrite 0}
		inputIpAddress_out {Type O LastRead -1 FirstWrite 0}
		myMacAddress_out {Type O LastRead -1 FirstWrite 0}}
	dhcp_client_entry7 {
		dhcpEnable {Type I LastRead 0 FirstWrite -1}
		inputIpAddress {Type I LastRead 0 FirstWrite -1}
		myMacAddress {Type I LastRead 0 FirstWrite -1}
		dhcpEnable_out {Type O LastRead -1 FirstWrite 0}
		inputIpAddress_out {Type O LastRead -1 FirstWrite 0}
		myMacAddress_out {Type O LastRead -1 FirstWrite 0}
		myMacAddress_out1 {Type O LastRead -1 FirstWrite 0}}
	open_dhcp_port {
		m_axis_open_port_V {Type O LastRead 0 FirstWrite 1}
		s_axis_open_port_status_V {Type I LastRead 1 FirstWrite -1}
		openPortWaitTime_V {Type IO LastRead -1 FirstWrite -1}
		odp_listenDone {Type IO LastRead -1 FirstWrite -1}
		odp_waitListenStatus {Type IO LastRead -1 FirstWrite -1}
		portOpen {Type O LastRead -1 FirstWrite 2}}
	receive_message {
		s_axis_rx_metadata_V {Type I LastRead 0 FirstWrite -1}
		s_axis_rx_data_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_rx_data_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_rx_data_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_rx_data_V_last_V {Type I LastRead 0 FirstWrite -1}
		myMacAddress {Type I LastRead 0 FirstWrite -1}
		rm_wordCount_V {Type IO LastRead -1 FirstWrite -1}
		rm_isReply {Type IO LastRead -1 FirstWrite -1}
		rm_correctMac {Type IO LastRead -1 FirstWrite -1}
		rm_isDHCP {Type IO LastRead -1 FirstWrite -1}
		meta_identifier_V {Type IO LastRead -1 FirstWrite -1}
		meta_assignedIpAddress_V {Type IO LastRead -1 FirstWrite -1}
		meta_serverAddress_V {Type IO LastRead -1 FirstWrite -1}
		meta_type_V_1 {Type IO LastRead -1 FirstWrite -1}
		dhcp_replyMetaFifo {Type O LastRead -1 FirstWrite 2}}
	dhcp_fsm {
		dhcpIpAddressOut {Type O LastRead -1 FirstWrite 1}
		dhcpEnable {Type I LastRead 0 FirstWrite -1}
		inputIpAddress {Type I LastRead 0 FirstWrite -1}
		myIpAddress_V {Type IO LastRead -1 FirstWrite -1}
		state {Type IO LastRead -1 FirstWrite -1}
		time_V {Type IO LastRead -1 FirstWrite -1}
		randomValue_V {Type IO LastRead -1 FirstWrite -1}
		myIdentity_V {Type IO LastRead -1 FirstWrite -1}
		IpAddressBuffer_V {Type IO LastRead -1 FirstWrite -1}
		portOpen {Type I LastRead 0 FirstWrite -1}
		dhcp_requestMetaFifo {Type O LastRead -1 FirstWrite 1}
		dhcp_replyMetaFifo {Type I LastRead 0 FirstWrite -1}}
	send_message {
		m_axis_tx_metadata_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_length_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_data_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_data_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_data_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_data_V_last_V {Type O LastRead -1 FirstWrite 1}
		myMacAddress {Type I LastRead 1 FirstWrite -1}
		sm_wordCount_V {Type IO LastRead -1 FirstWrite -1}
		meta_type_V {Type IO LastRead -1 FirstWrite -1}
		meta_requestedIpAddress_V {Type IO LastRead -1 FirstWrite -1}
		dhcp_requestMetaFifo {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "9", "Max" : "9"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	m_axis_open_port_V { axis {  { m_axis_open_port_V_TDATA out_data 1 16 }  { m_axis_open_port_V_TVALID out_vld 1 1 }  { m_axis_open_port_V_TREADY out_acc 0 1 } } }
	s_axis_open_port_status_V { axis {  { s_axis_open_port_status_V_TDATA in_data 0 8 }  { s_axis_open_port_status_V_TVALID in_vld 0 1 }  { s_axis_open_port_status_V_TREADY in_acc 1 1 } } }
	s_axis_rx_metadata_V { axis {  { s_axis_rx_metadata_V_TDATA in_data 0 128 }  { s_axis_rx_metadata_V_TVALID in_vld 0 1 }  { s_axis_rx_metadata_V_TREADY in_acc 1 1 } } }
	s_axis_rx_data_V_data_V { axis {  { s_axis_rx_data_TDATA in_data 0 64 } } }
	s_axis_rx_data_V_keep_V { axis {  { s_axis_rx_data_TKEEP in_data 0 8 } } }
	s_axis_rx_data_V_strb_V { axis {  { s_axis_rx_data_TSTRB in_data 0 8 } } }
	s_axis_rx_data_V_last_V { axis {  { s_axis_rx_data_TLAST in_data 0 1 }  { s_axis_rx_data_TVALID in_vld 0 1 }  { s_axis_rx_data_TREADY in_acc 1 1 } } }
	m_axis_tx_metadata_V { axis {  { m_axis_tx_metadata_V_TDATA out_data 1 128 }  { m_axis_tx_metadata_V_TVALID out_vld 1 1 }  { m_axis_tx_metadata_V_TREADY out_acc 0 1 } } }
	m_axis_tx_length_V { axis {  { m_axis_tx_length_V_TDATA out_data 1 16 }  { m_axis_tx_length_V_TVALID out_vld 1 1 }  { m_axis_tx_length_V_TREADY out_acc 0 1 } } }
	m_axis_tx_data_V_data_V { axis {  { m_axis_tx_data_TDATA out_data 1 64 } } }
	m_axis_tx_data_V_keep_V { axis {  { m_axis_tx_data_TKEEP out_data 1 8 } } }
	m_axis_tx_data_V_strb_V { axis {  { m_axis_tx_data_TSTRB out_data 1 8 } } }
	m_axis_tx_data_V_last_V { axis {  { m_axis_tx_data_TLAST out_data 1 1 }  { m_axis_tx_data_TVALID out_vld 1 1 }  { m_axis_tx_data_TREADY out_acc 0 1 } } }
	dhcpEnable { ap_none {  { dhcpEnable in_data 0 1 } } }
	inputIpAddress { ap_none {  { inputIpAddress in_data 0 32 } } }
	dhcpIpAddressOut { ap_none {  { dhcpIpAddressOut out_data 1 32 } } }
	myMacAddress { ap_none {  { myMacAddress in_data 0 48 } } }
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
