set moduleName echo_server_application
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
set C_modelName {echo_server_application}
set C_modelType { void 0 }
set C_modelArgList {
	{ m_axis_listen_port_V int 16 regular {axi_s 1 volatile  { m_axis_listen_port_V Data } }  }
	{ s_axis_listen_port_status_V int 8 regular {axi_s 0 volatile  { s_axis_listen_port_status_V Data } }  }
	{ s_axis_notifications_V int 96 regular {axi_s 0 volatile  { s_axis_notifications_V Data } }  }
	{ m_axis_read_package_V int 32 regular {axi_s 1 volatile  { m_axis_read_package_V Data } }  }
	{ s_axis_rx_metadata_V int 16 regular {axi_s 0 volatile  { s_axis_rx_metadata_V Data } }  }
	{ s_axis_rx_data_V int 128 regular {axi_s 0 volatile  { s_axis_rx_data_V Data } }  }
	{ m_axis_open_connection_V int 64 regular {axi_s 1 volatile  { m_axis_open_connection_V Data } }  }
	{ s_axis_open_status_V int 96 regular {axi_s 0 volatile  { s_axis_open_status_V Data } }  }
	{ m_axis_close_connection_V int 16 regular {axi_s 1 volatile  { m_axis_close_connection_V Data } }  }
	{ m_axis_tx_metadata_V int 32 regular {axi_s 1 volatile  { m_axis_tx_metadata_V Data } }  }
	{ m_axis_tx_data_V int 128 regular {axi_s 1 volatile  { m_axis_tx_data_V Data } }  }
	{ s_axis_tx_status_V int 96 regular {axi_s 0 volatile  { s_axis_tx_status_V Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "m_axis_listen_port_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_listen_port.V","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_listen_port_status_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_listen_port_status.V","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_notifications_V", "interface" : "axis", "bitwidth" : 96, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_notifications.V","cData": "int96","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_read_package_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_read_package.V","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_rx_metadata_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_rx_metadata.V","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_rx_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_rx_data.V","cData": "int128","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_open_connection_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_open_connection.V","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_open_status_V", "interface" : "axis", "bitwidth" : 96, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_open_status.V","cData": "int96","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_close_connection_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_close_connection.V","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tx_metadata_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tx_metadata.V","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tx_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tx_data.V","cData": "int128","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_tx_status_V", "interface" : "axis", "bitwidth" : 96, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_tx_status.V","cData": "int96","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ m_axis_listen_port_V_TDATA sc_out sc_lv 16 signal 0 } 
	{ s_axis_listen_port_status_V_TDATA sc_in sc_lv 8 signal 1 } 
	{ s_axis_notifications_V_TDATA sc_in sc_lv 96 signal 2 } 
	{ m_axis_read_package_V_TDATA sc_out sc_lv 32 signal 3 } 
	{ s_axis_rx_metadata_V_TDATA sc_in sc_lv 16 signal 4 } 
	{ s_axis_rx_data_V_TDATA sc_in sc_lv 128 signal 5 } 
	{ m_axis_open_connection_V_TDATA sc_out sc_lv 64 signal 6 } 
	{ s_axis_open_status_V_TDATA sc_in sc_lv 96 signal 7 } 
	{ m_axis_close_connection_V_TDATA sc_out sc_lv 16 signal 8 } 
	{ m_axis_tx_metadata_V_TDATA sc_out sc_lv 32 signal 9 } 
	{ m_axis_tx_data_V_TDATA sc_out sc_lv 128 signal 10 } 
	{ s_axis_tx_status_V_TDATA sc_in sc_lv 96 signal 11 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axis_tx_metadata_V_TVALID sc_out sc_logic 1 outvld 9 } 
	{ m_axis_tx_metadata_V_TREADY sc_in sc_logic 1 outacc 9 } 
	{ m_axis_tx_data_V_TVALID sc_out sc_logic 1 outvld 10 } 
	{ m_axis_tx_data_V_TREADY sc_in sc_logic 1 outacc 10 } 
	{ s_axis_rx_metadata_V_TVALID sc_in sc_logic 1 invld 4 } 
	{ s_axis_rx_metadata_V_TREADY sc_out sc_logic 1 inacc 4 } 
	{ s_axis_rx_data_V_TVALID sc_in sc_logic 1 invld 5 } 
	{ s_axis_rx_data_V_TREADY sc_out sc_logic 1 inacc 5 } 
	{ m_axis_listen_port_V_TVALID sc_out sc_logic 1 outvld 0 } 
	{ m_axis_listen_port_V_TREADY sc_in sc_logic 1 outacc 0 } 
	{ s_axis_listen_port_status_V_TVALID sc_in sc_logic 1 invld 1 } 
	{ s_axis_listen_port_status_V_TREADY sc_out sc_logic 1 inacc 1 } 
	{ s_axis_notifications_V_TVALID sc_in sc_logic 1 invld 2 } 
	{ s_axis_notifications_V_TREADY sc_out sc_logic 1 inacc 2 } 
	{ m_axis_read_package_V_TVALID sc_out sc_logic 1 outvld 3 } 
	{ m_axis_read_package_V_TREADY sc_in sc_logic 1 outacc 3 } 
	{ m_axis_open_connection_V_TVALID sc_out sc_logic 1 outvld 6 } 
	{ m_axis_open_connection_V_TREADY sc_in sc_logic 1 outacc 6 } 
	{ s_axis_open_status_V_TVALID sc_in sc_logic 1 invld 7 } 
	{ s_axis_open_status_V_TREADY sc_out sc_logic 1 inacc 7 } 
	{ m_axis_close_connection_V_TVALID sc_out sc_logic 1 outvld 8 } 
	{ m_axis_close_connection_V_TREADY sc_in sc_logic 1 outacc 8 } 
	{ s_axis_tx_status_V_TVALID sc_in sc_logic 1 invld 11 } 
	{ s_axis_tx_status_V_TREADY sc_out sc_logic 1 inacc 11 } 
}
set NewPortList {[ 
	{ "name": "m_axis_listen_port_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "m_axis_listen_port_V", "role": "TDATA" }} , 
 	{ "name": "s_axis_listen_port_status_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_axis_listen_port_status_V", "role": "TDATA" }} , 
 	{ "name": "s_axis_notifications_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "s_axis_notifications_V", "role": "TDATA" }} , 
 	{ "name": "m_axis_read_package_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_axis_read_package_V", "role": "TDATA" }} , 
 	{ "name": "s_axis_rx_metadata_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "s_axis_rx_metadata_V", "role": "TDATA" }} , 
 	{ "name": "s_axis_rx_data_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "s_axis_rx_data_V", "role": "TDATA" }} , 
 	{ "name": "m_axis_open_connection_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_open_connection_V", "role": "TDATA" }} , 
 	{ "name": "s_axis_open_status_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "s_axis_open_status_V", "role": "TDATA" }} , 
 	{ "name": "m_axis_close_connection_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "m_axis_close_connection_V", "role": "TDATA" }} , 
 	{ "name": "m_axis_tx_metadata_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_axis_tx_metadata_V", "role": "TDATA" }} , 
 	{ "name": "m_axis_tx_data_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "m_axis_tx_data_V", "role": "TDATA" }} , 
 	{ "name": "s_axis_tx_status_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "s_axis_tx_status_V", "role": "TDATA" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axis_tx_metadata_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_tx_metadata_V", "role": "TVALID" }} , 
 	{ "name": "m_axis_tx_metadata_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_tx_metadata_V", "role": "TREADY" }} , 
 	{ "name": "m_axis_tx_data_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_tx_data_V", "role": "TVALID" }} , 
 	{ "name": "m_axis_tx_data_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_tx_data_V", "role": "TREADY" }} , 
 	{ "name": "s_axis_rx_metadata_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_rx_metadata_V", "role": "TVALID" }} , 
 	{ "name": "s_axis_rx_metadata_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_rx_metadata_V", "role": "TREADY" }} , 
 	{ "name": "s_axis_rx_data_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_rx_data_V", "role": "TVALID" }} , 
 	{ "name": "s_axis_rx_data_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_rx_data_V", "role": "TREADY" }} , 
 	{ "name": "m_axis_listen_port_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_listen_port_V", "role": "TVALID" }} , 
 	{ "name": "m_axis_listen_port_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_listen_port_V", "role": "TREADY" }} , 
 	{ "name": "s_axis_listen_port_status_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_listen_port_status_V", "role": "TVALID" }} , 
 	{ "name": "s_axis_listen_port_status_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_listen_port_status_V", "role": "TREADY" }} , 
 	{ "name": "s_axis_notifications_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_notifications_V", "role": "TVALID" }} , 
 	{ "name": "s_axis_notifications_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_notifications_V", "role": "TREADY" }} , 
 	{ "name": "m_axis_read_package_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_read_package_V", "role": "TVALID" }} , 
 	{ "name": "m_axis_read_package_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_read_package_V", "role": "TREADY" }} , 
 	{ "name": "m_axis_open_connection_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_open_connection_V", "role": "TVALID" }} , 
 	{ "name": "m_axis_open_connection_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_open_connection_V", "role": "TREADY" }} , 
 	{ "name": "s_axis_open_status_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_open_status_V", "role": "TVALID" }} , 
 	{ "name": "s_axis_open_status_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_open_status_V", "role": "TREADY" }} , 
 	{ "name": "m_axis_close_connection_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_close_connection_V", "role": "TVALID" }} , 
 	{ "name": "m_axis_close_connection_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_close_connection_V", "role": "TREADY" }} , 
 	{ "name": "s_axis_tx_status_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_tx_status_V", "role": "TVALID" }} , 
 	{ "name": "s_axis_tx_status_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_tx_status_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "4", "7", "10", "13", "18", "19", "20"],
		"CDFG" : "echo_server_application",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "client_U0"},
			{"ID" : "4", "Name" : "server_U0"},
			{"ID" : "7", "Name" : "open_port_U0"},
			{"ID" : "10", "Name" : "notification_handler_U0"},
			{"ID" : "13", "Name" : "dummy_U0"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "client_U0"},
			{"ID" : "4", "Name" : "server_U0"},
			{"ID" : "7", "Name" : "open_port_U0"},
			{"ID" : "10", "Name" : "notification_handler_U0"},
			{"ID" : "13", "Name" : "dummy_U0"}],
		"Port" : [
			{"Name" : "m_axis_listen_port_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "open_port_U0", "Port" : "m_axis_listen_port_V"}]},
			{"Name" : "s_axis_listen_port_status_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "open_port_U0", "Port" : "s_axis_listen_port_status_V"}]},
			{"Name" : "s_axis_notifications_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "notification_handler_U0", "Port" : "s_axis_notifications_V"}]},
			{"Name" : "m_axis_read_package_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "notification_handler_U0", "Port" : "m_axis_read_package_V"}]},
			{"Name" : "s_axis_rx_metadata_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "server_U0", "Port" : "s_axis_rx_metadata_V"}]},
			{"Name" : "s_axis_rx_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "server_U0", "Port" : "s_axis_rx_data_V"}]},
			{"Name" : "m_axis_open_connection_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "dummy_U0", "Port" : "m_axis_open_connection_V"}]},
			{"Name" : "s_axis_open_status_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "dummy_U0", "Port" : "s_axis_open_status_V"}]},
			{"Name" : "m_axis_close_connection_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "dummy_U0", "Port" : "m_axis_close_connection_V"}]},
			{"Name" : "m_axis_tx_metadata_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "client_U0", "Port" : "m_axis_tx_metadata_V"}]},
			{"Name" : "m_axis_tx_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "client_U0", "Port" : "m_axis_tx_data_V"}]},
			{"Name" : "s_axis_tx_status_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "dummy_U0", "Port" : "s_axis_tx_status_V"}]},
			{"Name" : "esac_fsmState_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "client_U0", "Port" : "esac_fsmState_V"}]},
			{"Name" : "esa_sessionidFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "client_U0", "Port" : "esa_sessionidFifo"},
					{"ID" : "4", "SubInstance" : "server_U0", "Port" : "esa_sessionidFifo"}]},
			{"Name" : "esa_lengthFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "client_U0", "Port" : "esa_lengthFifo"},
					{"ID" : "10", "SubInstance" : "notification_handler_U0", "Port" : "esa_lengthFifo"}]},
			{"Name" : "esa_dataFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "client_U0", "Port" : "esa_dataFifo"},
					{"ID" : "4", "SubInstance" : "server_U0", "Port" : "esa_dataFifo"}]},
			{"Name" : "ksvs_fsmState_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "server_U0", "Port" : "ksvs_fsmState_V"}]},
			{"Name" : "state_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "open_port_U0", "Port" : "state_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.client_U0", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "client",
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
			{"Name" : "m_axis_tx_metadata_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_tx_metadata_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_tx_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_tx_data_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "esac_fsmState_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "esa_sessionidFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "18", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "esa_sessionidFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "esa_lengthFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "19", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "esa_lengthFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "esa_dataFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "20", "DependentChanDepth" : "2048", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "esa_dataFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.client_U0.regslice_both_m_axis_tx_metadata_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.client_U0.regslice_both_m_axis_tx_data_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.server_U0", "Parent" : "0", "Child" : ["5", "6"],
		"CDFG" : "server",
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
			{"Name" : "s_axis_rx_metadata_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_rx_metadata_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_rx_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_rx_data_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ksvs_fsmState_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "esa_sessionidFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1", "DependentChan" : "18", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "esa_sessionidFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "esa_dataFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1", "DependentChan" : "20", "DependentChanDepth" : "2048", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "esa_dataFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.server_U0.regslice_both_s_axis_rx_metadata_V_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.server_U0.regslice_both_s_axis_rx_data_V_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.open_port_U0", "Parent" : "0", "Child" : ["8", "9"],
		"CDFG" : "open_port",
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
			{"Name" : "m_axis_listen_port_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_listen_port_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_listen_port_status_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_listen_port_status_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "state_V", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.open_port_U0.regslice_both_m_axis_listen_port_V_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.open_port_U0.regslice_both_s_axis_listen_port_status_V_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.notification_handler_U0", "Parent" : "0", "Child" : ["11", "12"],
		"CDFG" : "notification_handler",
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
			{"Name" : "s_axis_notifications_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_notifications_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_read_package_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_read_package_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "esa_lengthFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1", "DependentChan" : "19", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "esa_lengthFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.notification_handler_U0.regslice_both_s_axis_notifications_V_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.notification_handler_U0.regslice_both_m_axis_read_package_V_U", "Parent" : "10"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dummy_U0", "Parent" : "0", "Child" : ["14", "15", "16", "17"],
		"CDFG" : "dummy",
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
			{"Name" : "m_axis_open_connection_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_open_connection_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_open_status_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_open_status_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_close_connection_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_close_connection_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_tx_status_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_tx_status_V_TDATA_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dummy_U0.regslice_both_m_axis_open_connection_V_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dummy_U0.regslice_both_s_axis_open_status_V_U", "Parent" : "13"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dummy_U0.regslice_both_m_axis_close_connection_V_U", "Parent" : "13"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dummy_U0.regslice_both_s_axis_tx_status_V_U", "Parent" : "13"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.esa_sessionidFifo_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.esa_lengthFifo_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.esa_dataFifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	echo_server_application {
		m_axis_listen_port_V {Type O LastRead -1 FirstWrite 1}
		s_axis_listen_port_status_V {Type I LastRead 0 FirstWrite -1}
		s_axis_notifications_V {Type I LastRead 0 FirstWrite -1}
		m_axis_read_package_V {Type O LastRead -1 FirstWrite 1}
		s_axis_rx_metadata_V {Type I LastRead 0 FirstWrite -1}
		s_axis_rx_data_V {Type I LastRead 0 FirstWrite -1}
		m_axis_open_connection_V {Type O LastRead -1 FirstWrite 1}
		s_axis_open_status_V {Type I LastRead 0 FirstWrite -1}
		m_axis_close_connection_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_metadata_V {Type O LastRead 0 FirstWrite 1}
		m_axis_tx_data_V {Type O LastRead 0 FirstWrite 1}
		s_axis_tx_status_V {Type I LastRead 0 FirstWrite -1}
		esac_fsmState_V {Type IO LastRead -1 FirstWrite -1}
		esa_sessionidFifo {Type IO LastRead -1 FirstWrite -1}
		esa_lengthFifo {Type IO LastRead -1 FirstWrite -1}
		esa_dataFifo {Type IO LastRead -1 FirstWrite -1}
		ksvs_fsmState_V {Type IO LastRead -1 FirstWrite -1}
		state_V {Type IO LastRead -1 FirstWrite -1}}
	client {
		m_axis_tx_metadata_V {Type O LastRead 0 FirstWrite 1}
		m_axis_tx_data_V {Type O LastRead 0 FirstWrite 1}
		esac_fsmState_V {Type IO LastRead -1 FirstWrite -1}
		esa_sessionidFifo {Type I LastRead 1 FirstWrite -1}
		esa_lengthFifo {Type I LastRead 1 FirstWrite -1}
		esa_dataFifo {Type I LastRead 1 FirstWrite -1}}
	server {
		s_axis_rx_metadata_V {Type I LastRead 0 FirstWrite -1}
		s_axis_rx_data_V {Type I LastRead 0 FirstWrite -1}
		ksvs_fsmState_V {Type IO LastRead -1 FirstWrite -1}
		esa_sessionidFifo {Type O LastRead -1 FirstWrite 1}
		esa_dataFifo {Type O LastRead -1 FirstWrite 1}}
	open_port {
		m_axis_listen_port_V {Type O LastRead -1 FirstWrite 1}
		s_axis_listen_port_status_V {Type I LastRead 0 FirstWrite -1}
		state_V {Type IO LastRead -1 FirstWrite -1}}
	notification_handler {
		s_axis_notifications_V {Type I LastRead 0 FirstWrite -1}
		m_axis_read_package_V {Type O LastRead -1 FirstWrite 1}
		esa_lengthFifo {Type O LastRead -1 FirstWrite 1}}
	dummy {
		m_axis_open_connection_V {Type O LastRead -1 FirstWrite 1}
		s_axis_open_status_V {Type I LastRead 0 FirstWrite -1}
		m_axis_close_connection_V {Type O LastRead -1 FirstWrite 1}
		s_axis_tx_status_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	m_axis_listen_port_V { axis {  { m_axis_listen_port_V_TDATA out_data 1 16 }  { m_axis_listen_port_V_TVALID out_vld 1 1 }  { m_axis_listen_port_V_TREADY out_acc 0 1 } } }
	s_axis_listen_port_status_V { axis {  { s_axis_listen_port_status_V_TDATA in_data 0 8 }  { s_axis_listen_port_status_V_TVALID in_vld 0 1 }  { s_axis_listen_port_status_V_TREADY in_acc 1 1 } } }
	s_axis_notifications_V { axis {  { s_axis_notifications_V_TDATA in_data 0 96 }  { s_axis_notifications_V_TVALID in_vld 0 1 }  { s_axis_notifications_V_TREADY in_acc 1 1 } } }
	m_axis_read_package_V { axis {  { m_axis_read_package_V_TDATA out_data 1 32 }  { m_axis_read_package_V_TVALID out_vld 1 1 }  { m_axis_read_package_V_TREADY out_acc 0 1 } } }
	s_axis_rx_metadata_V { axis {  { s_axis_rx_metadata_V_TDATA in_data 0 16 }  { s_axis_rx_metadata_V_TVALID in_vld 0 1 }  { s_axis_rx_metadata_V_TREADY in_acc 1 1 } } }
	s_axis_rx_data_V { axis {  { s_axis_rx_data_V_TDATA in_data 0 128 }  { s_axis_rx_data_V_TVALID in_vld 0 1 }  { s_axis_rx_data_V_TREADY in_acc 1 1 } } }
	m_axis_open_connection_V { axis {  { m_axis_open_connection_V_TDATA out_data 1 64 }  { m_axis_open_connection_V_TVALID out_vld 1 1 }  { m_axis_open_connection_V_TREADY out_acc 0 1 } } }
	s_axis_open_status_V { axis {  { s_axis_open_status_V_TDATA in_data 0 96 }  { s_axis_open_status_V_TVALID in_vld 0 1 }  { s_axis_open_status_V_TREADY in_acc 1 1 } } }
	m_axis_close_connection_V { axis {  { m_axis_close_connection_V_TDATA out_data 1 16 }  { m_axis_close_connection_V_TVALID out_vld 1 1 }  { m_axis_close_connection_V_TREADY out_acc 0 1 } } }
	m_axis_tx_metadata_V { axis {  { m_axis_tx_metadata_V_TDATA out_data 1 32 }  { m_axis_tx_metadata_V_TVALID out_vld 1 1 }  { m_axis_tx_metadata_V_TREADY out_acc 0 1 } } }
	m_axis_tx_data_V { axis {  { m_axis_tx_data_V_TDATA out_data 1 128 }  { m_axis_tx_data_V_TVALID out_vld 1 1 }  { m_axis_tx_data_V_TREADY out_acc 0 1 } } }
	s_axis_tx_status_V { axis {  { s_axis_tx_status_V_TDATA in_data 0 96 }  { s_axis_tx_status_V_TVALID in_vld 0 1 }  { s_axis_tx_status_V_TREADY in_acc 1 1 } } }
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
set moduleName echo_server_application
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
set C_modelName {echo_server_application}
set C_modelType { void 0 }
set C_modelArgList {
	{ m_axis_listen_port_V int 16 regular {axi_s 1 volatile  { m_axis_listen_port_V Data } }  }
	{ s_axis_listen_port_status_V int 8 regular {axi_s 0 volatile  { s_axis_listen_port_status_V Data } }  }
	{ s_axis_notifications_V int 96 regular {axi_s 0 volatile  { s_axis_notifications_V Data } }  }
	{ m_axis_read_package_V int 32 regular {axi_s 1 volatile  { m_axis_read_package_V Data } }  }
	{ s_axis_rx_metadata_V int 16 regular {axi_s 0 volatile  { s_axis_rx_metadata_V Data } }  }
	{ s_axis_rx_data_V int 1024 regular {axi_s 0 volatile  { s_axis_rx_data_V Data } }  }
	{ m_axis_open_connection_V int 64 regular {axi_s 1 volatile  { m_axis_open_connection_V Data } }  }
	{ s_axis_open_status_V int 96 regular {axi_s 0 volatile  { s_axis_open_status_V Data } }  }
	{ m_axis_close_connection_V int 16 regular {axi_s 1 volatile  { m_axis_close_connection_V Data } }  }
	{ m_axis_tx_metadata_V int 32 regular {axi_s 1 volatile  { m_axis_tx_metadata_V Data } }  }
	{ m_axis_tx_data_V int 1024 regular {axi_s 1 volatile  { m_axis_tx_data_V Data } }  }
	{ s_axis_tx_status_V int 96 regular {axi_s 0 volatile  { s_axis_tx_status_V Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "m_axis_listen_port_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_listen_port.V","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_listen_port_status_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_listen_port_status.V","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_notifications_V", "interface" : "axis", "bitwidth" : 96, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_notifications.V","cData": "int96","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_read_package_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_read_package.V","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_rx_metadata_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_rx_metadata.V","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_rx_data_V", "interface" : "axis", "bitwidth" : 1024, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_rx_data.V","cData": "int1024","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_open_connection_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_open_connection.V","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_open_status_V", "interface" : "axis", "bitwidth" : 96, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_open_status.V","cData": "int96","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_close_connection_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_close_connection.V","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tx_metadata_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tx_metadata.V","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tx_data_V", "interface" : "axis", "bitwidth" : 1024, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tx_data.V","cData": "int1024","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_tx_status_V", "interface" : "axis", "bitwidth" : 96, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_tx_status.V","cData": "int96","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ m_axis_listen_port_V_TDATA sc_out sc_lv 16 signal 0 } 
	{ s_axis_listen_port_status_V_TDATA sc_in sc_lv 8 signal 1 } 
	{ s_axis_notifications_V_TDATA sc_in sc_lv 96 signal 2 } 
	{ m_axis_read_package_V_TDATA sc_out sc_lv 32 signal 3 } 
	{ s_axis_rx_metadata_V_TDATA sc_in sc_lv 16 signal 4 } 
	{ s_axis_rx_data_V_TDATA sc_in sc_lv 1024 signal 5 } 
	{ m_axis_open_connection_V_TDATA sc_out sc_lv 64 signal 6 } 
	{ s_axis_open_status_V_TDATA sc_in sc_lv 96 signal 7 } 
	{ m_axis_close_connection_V_TDATA sc_out sc_lv 16 signal 8 } 
	{ m_axis_tx_metadata_V_TDATA sc_out sc_lv 32 signal 9 } 
	{ m_axis_tx_data_V_TDATA sc_out sc_lv 1024 signal 10 } 
	{ s_axis_tx_status_V_TDATA sc_in sc_lv 96 signal 11 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axis_tx_metadata_V_TVALID sc_out sc_logic 1 outvld 9 } 
	{ m_axis_tx_metadata_V_TREADY sc_in sc_logic 1 outacc 9 } 
	{ m_axis_tx_data_V_TVALID sc_out sc_logic 1 outvld 10 } 
	{ m_axis_tx_data_V_TREADY sc_in sc_logic 1 outacc 10 } 
	{ s_axis_rx_metadata_V_TVALID sc_in sc_logic 1 invld 4 } 
	{ s_axis_rx_metadata_V_TREADY sc_out sc_logic 1 inacc 4 } 
	{ s_axis_rx_data_V_TVALID sc_in sc_logic 1 invld 5 } 
	{ s_axis_rx_data_V_TREADY sc_out sc_logic 1 inacc 5 } 
	{ m_axis_listen_port_V_TVALID sc_out sc_logic 1 outvld 0 } 
	{ m_axis_listen_port_V_TREADY sc_in sc_logic 1 outacc 0 } 
	{ s_axis_listen_port_status_V_TVALID sc_in sc_logic 1 invld 1 } 
	{ s_axis_listen_port_status_V_TREADY sc_out sc_logic 1 inacc 1 } 
	{ s_axis_notifications_V_TVALID sc_in sc_logic 1 invld 2 } 
	{ s_axis_notifications_V_TREADY sc_out sc_logic 1 inacc 2 } 
	{ m_axis_read_package_V_TVALID sc_out sc_logic 1 outvld 3 } 
	{ m_axis_read_package_V_TREADY sc_in sc_logic 1 outacc 3 } 
	{ m_axis_open_connection_V_TVALID sc_out sc_logic 1 outvld 6 } 
	{ m_axis_open_connection_V_TREADY sc_in sc_logic 1 outacc 6 } 
	{ s_axis_open_status_V_TVALID sc_in sc_logic 1 invld 7 } 
	{ s_axis_open_status_V_TREADY sc_out sc_logic 1 inacc 7 } 
	{ m_axis_close_connection_V_TVALID sc_out sc_logic 1 outvld 8 } 
	{ m_axis_close_connection_V_TREADY sc_in sc_logic 1 outacc 8 } 
	{ s_axis_tx_status_V_TVALID sc_in sc_logic 1 invld 11 } 
	{ s_axis_tx_status_V_TREADY sc_out sc_logic 1 inacc 11 } 
}
set NewPortList {[ 
	{ "name": "m_axis_listen_port_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "m_axis_listen_port_V", "role": "TDATA" }} , 
 	{ "name": "s_axis_listen_port_status_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_axis_listen_port_status_V", "role": "TDATA" }} , 
 	{ "name": "s_axis_notifications_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "s_axis_notifications_V", "role": "TDATA" }} , 
 	{ "name": "m_axis_read_package_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_axis_read_package_V", "role": "TDATA" }} , 
 	{ "name": "s_axis_rx_metadata_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "s_axis_rx_metadata_V", "role": "TDATA" }} , 
 	{ "name": "s_axis_rx_data_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "s_axis_rx_data_V", "role": "TDATA" }} , 
 	{ "name": "m_axis_open_connection_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_open_connection_V", "role": "TDATA" }} , 
 	{ "name": "s_axis_open_status_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "s_axis_open_status_V", "role": "TDATA" }} , 
 	{ "name": "m_axis_close_connection_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "m_axis_close_connection_V", "role": "TDATA" }} , 
 	{ "name": "m_axis_tx_metadata_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_axis_tx_metadata_V", "role": "TDATA" }} , 
 	{ "name": "m_axis_tx_data_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "m_axis_tx_data_V", "role": "TDATA" }} , 
 	{ "name": "s_axis_tx_status_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "s_axis_tx_status_V", "role": "TDATA" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axis_tx_metadata_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_tx_metadata_V", "role": "TVALID" }} , 
 	{ "name": "m_axis_tx_metadata_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_tx_metadata_V", "role": "TREADY" }} , 
 	{ "name": "m_axis_tx_data_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_tx_data_V", "role": "TVALID" }} , 
 	{ "name": "m_axis_tx_data_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_tx_data_V", "role": "TREADY" }} , 
 	{ "name": "s_axis_rx_metadata_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_rx_metadata_V", "role": "TVALID" }} , 
 	{ "name": "s_axis_rx_metadata_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_rx_metadata_V", "role": "TREADY" }} , 
 	{ "name": "s_axis_rx_data_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_rx_data_V", "role": "TVALID" }} , 
 	{ "name": "s_axis_rx_data_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_rx_data_V", "role": "TREADY" }} , 
 	{ "name": "m_axis_listen_port_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_listen_port_V", "role": "TVALID" }} , 
 	{ "name": "m_axis_listen_port_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_listen_port_V", "role": "TREADY" }} , 
 	{ "name": "s_axis_listen_port_status_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_listen_port_status_V", "role": "TVALID" }} , 
 	{ "name": "s_axis_listen_port_status_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_listen_port_status_V", "role": "TREADY" }} , 
 	{ "name": "s_axis_notifications_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_notifications_V", "role": "TVALID" }} , 
 	{ "name": "s_axis_notifications_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_notifications_V", "role": "TREADY" }} , 
 	{ "name": "m_axis_read_package_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_read_package_V", "role": "TVALID" }} , 
 	{ "name": "m_axis_read_package_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_read_package_V", "role": "TREADY" }} , 
 	{ "name": "m_axis_open_connection_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_open_connection_V", "role": "TVALID" }} , 
 	{ "name": "m_axis_open_connection_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_open_connection_V", "role": "TREADY" }} , 
 	{ "name": "s_axis_open_status_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_open_status_V", "role": "TVALID" }} , 
 	{ "name": "s_axis_open_status_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_open_status_V", "role": "TREADY" }} , 
 	{ "name": "m_axis_close_connection_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_close_connection_V", "role": "TVALID" }} , 
 	{ "name": "m_axis_close_connection_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_close_connection_V", "role": "TREADY" }} , 
 	{ "name": "s_axis_tx_status_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_tx_status_V", "role": "TVALID" }} , 
 	{ "name": "s_axis_tx_status_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_tx_status_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "4", "7", "10", "13", "18", "19", "20"],
		"CDFG" : "echo_server_application",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "client_U0"},
			{"ID" : "4", "Name" : "server_U0"},
			{"ID" : "7", "Name" : "open_port_U0"},
			{"ID" : "10", "Name" : "notification_handler_U0"},
			{"ID" : "13", "Name" : "dummy_U0"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "client_U0"},
			{"ID" : "4", "Name" : "server_U0"},
			{"ID" : "7", "Name" : "open_port_U0"},
			{"ID" : "10", "Name" : "notification_handler_U0"},
			{"ID" : "13", "Name" : "dummy_U0"}],
		"Port" : [
			{"Name" : "m_axis_listen_port_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "open_port_U0", "Port" : "m_axis_listen_port_V"}]},
			{"Name" : "s_axis_listen_port_status_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "open_port_U0", "Port" : "s_axis_listen_port_status_V"}]},
			{"Name" : "s_axis_notifications_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "notification_handler_U0", "Port" : "s_axis_notifications_V"}]},
			{"Name" : "m_axis_read_package_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "notification_handler_U0", "Port" : "m_axis_read_package_V"}]},
			{"Name" : "s_axis_rx_metadata_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "server_U0", "Port" : "s_axis_rx_metadata_V"}]},
			{"Name" : "s_axis_rx_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "server_U0", "Port" : "s_axis_rx_data_V"}]},
			{"Name" : "m_axis_open_connection_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "dummy_U0", "Port" : "m_axis_open_connection_V"}]},
			{"Name" : "s_axis_open_status_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "dummy_U0", "Port" : "s_axis_open_status_V"}]},
			{"Name" : "m_axis_close_connection_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "dummy_U0", "Port" : "m_axis_close_connection_V"}]},
			{"Name" : "m_axis_tx_metadata_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "client_U0", "Port" : "m_axis_tx_metadata_V"}]},
			{"Name" : "m_axis_tx_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "client_U0", "Port" : "m_axis_tx_data_V"}]},
			{"Name" : "s_axis_tx_status_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "dummy_U0", "Port" : "s_axis_tx_status_V"}]},
			{"Name" : "esac_fsmState_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "client_U0", "Port" : "esac_fsmState_V"}]},
			{"Name" : "esa_sessionidFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "server_U0", "Port" : "esa_sessionidFifo"},
					{"ID" : "1", "SubInstance" : "client_U0", "Port" : "esa_sessionidFifo"}]},
			{"Name" : "esa_lengthFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "notification_handler_U0", "Port" : "esa_lengthFifo"},
					{"ID" : "1", "SubInstance" : "client_U0", "Port" : "esa_lengthFifo"}]},
			{"Name" : "esa_dataFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "server_U0", "Port" : "esa_dataFifo"},
					{"ID" : "1", "SubInstance" : "client_U0", "Port" : "esa_dataFifo"}]},
			{"Name" : "ksvs_fsmState_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "server_U0", "Port" : "ksvs_fsmState_V"}]},
			{"Name" : "state_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "open_port_U0", "Port" : "state_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.client_U0", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "client",
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
			{"Name" : "m_axis_tx_metadata_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_tx_metadata_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_tx_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_tx_data_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "esac_fsmState_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "esa_sessionidFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "18", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "esa_sessionidFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "esa_lengthFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "19", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "esa_lengthFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "esa_dataFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "20", "DependentChanDepth" : "2048", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "esa_dataFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.client_U0.regslice_both_m_axis_tx_metadata_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.client_U0.regslice_both_m_axis_tx_data_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.server_U0", "Parent" : "0", "Child" : ["5", "6"],
		"CDFG" : "server",
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
			{"Name" : "s_axis_rx_metadata_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_rx_metadata_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_rx_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_rx_data_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ksvs_fsmState_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "esa_sessionidFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1", "DependentChan" : "18", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "esa_sessionidFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "esa_dataFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1", "DependentChan" : "20", "DependentChanDepth" : "2048", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "esa_dataFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.server_U0.regslice_both_s_axis_rx_metadata_V_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.server_U0.regslice_both_s_axis_rx_data_V_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.open_port_U0", "Parent" : "0", "Child" : ["8", "9"],
		"CDFG" : "open_port",
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
			{"Name" : "m_axis_listen_port_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_listen_port_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_listen_port_status_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_listen_port_status_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "state_V", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.open_port_U0.regslice_both_m_axis_listen_port_V_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.open_port_U0.regslice_both_s_axis_listen_port_status_V_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.notification_handler_U0", "Parent" : "0", "Child" : ["11", "12"],
		"CDFG" : "notification_handler",
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
			{"Name" : "s_axis_notifications_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_notifications_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_read_package_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_read_package_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "esa_lengthFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1", "DependentChan" : "19", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "esa_lengthFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.notification_handler_U0.regslice_both_s_axis_notifications_V_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.notification_handler_U0.regslice_both_m_axis_read_package_V_U", "Parent" : "10"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dummy_U0", "Parent" : "0", "Child" : ["14", "15", "16", "17"],
		"CDFG" : "dummy",
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
			{"Name" : "m_axis_open_connection_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_open_connection_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_open_status_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_open_status_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_close_connection_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_close_connection_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_tx_status_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_tx_status_V_TDATA_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dummy_U0.regslice_both_m_axis_open_connection_V_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dummy_U0.regslice_both_s_axis_open_status_V_U", "Parent" : "13"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dummy_U0.regslice_both_m_axis_close_connection_V_U", "Parent" : "13"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dummy_U0.regslice_both_s_axis_tx_status_V_U", "Parent" : "13"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.esa_sessionidFifo_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.esa_lengthFifo_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.esa_dataFifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	echo_server_application {
		m_axis_listen_port_V {Type O LastRead -1 FirstWrite 1}
		s_axis_listen_port_status_V {Type I LastRead 0 FirstWrite -1}
		s_axis_notifications_V {Type I LastRead 0 FirstWrite -1}
		m_axis_read_package_V {Type O LastRead -1 FirstWrite 1}
		s_axis_rx_metadata_V {Type I LastRead 0 FirstWrite -1}
		s_axis_rx_data_V {Type I LastRead 0 FirstWrite -1}
		m_axis_open_connection_V {Type O LastRead -1 FirstWrite 1}
		s_axis_open_status_V {Type I LastRead 0 FirstWrite -1}
		m_axis_close_connection_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tx_metadata_V {Type O LastRead 0 FirstWrite 1}
		m_axis_tx_data_V {Type O LastRead 0 FirstWrite 1}
		s_axis_tx_status_V {Type I LastRead 0 FirstWrite -1}
		esac_fsmState_V {Type IO LastRead -1 FirstWrite -1}
		esa_sessionidFifo {Type IO LastRead -1 FirstWrite -1}
		esa_lengthFifo {Type IO LastRead -1 FirstWrite -1}
		esa_dataFifo {Type IO LastRead -1 FirstWrite -1}
		ksvs_fsmState_V {Type IO LastRead -1 FirstWrite -1}
		state_V {Type IO LastRead -1 FirstWrite -1}}
	client {
		m_axis_tx_metadata_V {Type O LastRead 0 FirstWrite 1}
		m_axis_tx_data_V {Type O LastRead 0 FirstWrite 1}
		esac_fsmState_V {Type IO LastRead -1 FirstWrite -1}
		esa_sessionidFifo {Type I LastRead 1 FirstWrite -1}
		esa_lengthFifo {Type I LastRead 1 FirstWrite -1}
		esa_dataFifo {Type I LastRead 1 FirstWrite -1}}
	server {
		s_axis_rx_metadata_V {Type I LastRead 0 FirstWrite -1}
		s_axis_rx_data_V {Type I LastRead 0 FirstWrite -1}
		ksvs_fsmState_V {Type IO LastRead -1 FirstWrite -1}
		esa_sessionidFifo {Type O LastRead -1 FirstWrite 1}
		esa_dataFifo {Type O LastRead -1 FirstWrite 1}}
	open_port {
		m_axis_listen_port_V {Type O LastRead -1 FirstWrite 1}
		s_axis_listen_port_status_V {Type I LastRead 0 FirstWrite -1}
		state_V {Type IO LastRead -1 FirstWrite -1}}
	notification_handler {
		s_axis_notifications_V {Type I LastRead 0 FirstWrite -1}
		m_axis_read_package_V {Type O LastRead -1 FirstWrite 1}
		esa_lengthFifo {Type O LastRead -1 FirstWrite 1}}
	dummy {
		m_axis_open_connection_V {Type O LastRead -1 FirstWrite 1}
		s_axis_open_status_V {Type I LastRead 0 FirstWrite -1}
		m_axis_close_connection_V {Type O LastRead -1 FirstWrite 1}
		s_axis_tx_status_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	m_axis_listen_port_V { axis {  { m_axis_listen_port_V_TDATA out_data 1 16 }  { m_axis_listen_port_V_TVALID out_vld 1 1 }  { m_axis_listen_port_V_TREADY out_acc 0 1 } } }
	s_axis_listen_port_status_V { axis {  { s_axis_listen_port_status_V_TDATA in_data 0 8 }  { s_axis_listen_port_status_V_TVALID in_vld 0 1 }  { s_axis_listen_port_status_V_TREADY in_acc 1 1 } } }
	s_axis_notifications_V { axis {  { s_axis_notifications_V_TDATA in_data 0 96 }  { s_axis_notifications_V_TVALID in_vld 0 1 }  { s_axis_notifications_V_TREADY in_acc 1 1 } } }
	m_axis_read_package_V { axis {  { m_axis_read_package_V_TDATA out_data 1 32 }  { m_axis_read_package_V_TVALID out_vld 1 1 }  { m_axis_read_package_V_TREADY out_acc 0 1 } } }
	s_axis_rx_metadata_V { axis {  { s_axis_rx_metadata_V_TDATA in_data 0 16 }  { s_axis_rx_metadata_V_TVALID in_vld 0 1 }  { s_axis_rx_metadata_V_TREADY in_acc 1 1 } } }
	s_axis_rx_data_V { axis {  { s_axis_rx_data_V_TDATA in_data 0 1024 }  { s_axis_rx_data_V_TVALID in_vld 0 1 }  { s_axis_rx_data_V_TREADY in_acc 1 1 } } }
	m_axis_open_connection_V { axis {  { m_axis_open_connection_V_TDATA out_data 1 64 }  { m_axis_open_connection_V_TVALID out_vld 1 1 }  { m_axis_open_connection_V_TREADY out_acc 0 1 } } }
	s_axis_open_status_V { axis {  { s_axis_open_status_V_TDATA in_data 0 96 }  { s_axis_open_status_V_TVALID in_vld 0 1 }  { s_axis_open_status_V_TREADY in_acc 1 1 } } }
	m_axis_close_connection_V { axis {  { m_axis_close_connection_V_TDATA out_data 1 16 }  { m_axis_close_connection_V_TVALID out_vld 1 1 }  { m_axis_close_connection_V_TREADY out_acc 0 1 } } }
	m_axis_tx_metadata_V { axis {  { m_axis_tx_metadata_V_TDATA out_data 1 32 }  { m_axis_tx_metadata_V_TVALID out_vld 1 1 }  { m_axis_tx_metadata_V_TREADY out_acc 0 1 } } }
	m_axis_tx_data_V { axis {  { m_axis_tx_data_V_TDATA out_data 1 1024 }  { m_axis_tx_data_V_TVALID out_vld 1 1 }  { m_axis_tx_data_V_TREADY out_acc 0 1 } } }
	s_axis_tx_status_V { axis {  { s_axis_tx_status_V_TDATA in_data 0 96 }  { s_axis_tx_status_V_TVALID in_vld 0 1 }  { s_axis_tx_status_V_TREADY in_acc 1 1 } } }
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
