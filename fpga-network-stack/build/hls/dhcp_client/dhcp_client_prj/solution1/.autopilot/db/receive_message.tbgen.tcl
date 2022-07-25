set moduleName receive_message
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {receive_message}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_axis_rx_metadata_V int 128 regular {axi_s 0 volatile  { s_axis_rx_metadata_V Data } }  }
	{ s_axis_rx_data_V_data_V int 64 regular {axi_s 0 volatile  { s_axis_rx_data Data } }  }
	{ s_axis_rx_data_V_keep_V int 8 regular {axi_s 0 volatile  { s_axis_rx_data Keep } }  }
	{ s_axis_rx_data_V_strb_V int 8 regular {axi_s 0 volatile  { s_axis_rx_data Strb } }  }
	{ s_axis_rx_data_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_rx_data Last } }  }
	{ myMacAddress int 48 regular {fifo 0}  }
	{ dhcp_replyMetaFifo int 128 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "s_axis_rx_metadata_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_rx_data_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_rx_data_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_rx_data_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_rx_data_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "myMacAddress", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "dhcp_replyMetaFifo", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ myMacAddress_dout sc_in sc_lv 48 signal 5 } 
	{ myMacAddress_empty_n sc_in sc_logic 1 signal 5 } 
	{ myMacAddress_read sc_out sc_logic 1 signal 5 } 
	{ s_axis_rx_data_TVALID sc_in sc_logic 1 invld 4 } 
	{ s_axis_rx_metadata_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ dhcp_replyMetaFifo_din sc_out sc_lv 128 signal 6 } 
	{ dhcp_replyMetaFifo_full_n sc_in sc_logic 1 signal 6 } 
	{ dhcp_replyMetaFifo_write sc_out sc_logic 1 signal 6 } 
	{ s_axis_rx_metadata_V_TDATA sc_in sc_lv 128 signal 0 } 
	{ s_axis_rx_metadata_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ s_axis_rx_data_TDATA sc_in sc_lv 64 signal 1 } 
	{ s_axis_rx_data_TREADY sc_out sc_logic 1 inacc 4 } 
	{ s_axis_rx_data_TKEEP sc_in sc_lv 8 signal 2 } 
	{ s_axis_rx_data_TSTRB sc_in sc_lv 8 signal 3 } 
	{ s_axis_rx_data_TLAST sc_in sc_lv 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "myMacAddress_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "myMacAddress", "role": "dout" }} , 
 	{ "name": "myMacAddress_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myMacAddress", "role": "empty_n" }} , 
 	{ "name": "myMacAddress_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myMacAddress", "role": "read" }} , 
 	{ "name": "s_axis_rx_data_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_rx_data_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_rx_metadata_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_rx_metadata_V", "role": "TVALID" }} , 
 	{ "name": "dhcp_replyMetaFifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "dhcp_replyMetaFifo", "role": "din" }} , 
 	{ "name": "dhcp_replyMetaFifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dhcp_replyMetaFifo", "role": "full_n" }} , 
 	{ "name": "dhcp_replyMetaFifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dhcp_replyMetaFifo", "role": "write" }} , 
 	{ "name": "s_axis_rx_metadata_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "s_axis_rx_metadata_V", "role": "TDATA" }} , 
 	{ "name": "s_axis_rx_metadata_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_rx_metadata_V", "role": "TREADY" }} , 
 	{ "name": "s_axis_rx_data_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_rx_data_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_rx_data_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_rx_data_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_rx_data_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_axis_rx_data_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_rx_data_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_axis_rx_data_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_rx_data_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_rx_data_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
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
			{"Name" : "myMacAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
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
			{"Name" : "dhcp_replyMetaFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dhcp_replyMetaFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_rx_metadata_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_rx_data_V_data_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_rx_data_V_keep_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_rx_data_V_strb_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_rx_data_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		dhcp_replyMetaFifo {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	s_axis_rx_metadata_V { axis {  { s_axis_rx_metadata_V_TVALID in_vld 0 1 }  { s_axis_rx_metadata_V_TDATA in_data 0 128 }  { s_axis_rx_metadata_V_TREADY in_acc 1 1 } } }
	s_axis_rx_data_V_data_V { axis {  { s_axis_rx_data_TDATA in_data 0 64 } } }
	s_axis_rx_data_V_keep_V { axis {  { s_axis_rx_data_TKEEP in_data 0 8 } } }
	s_axis_rx_data_V_strb_V { axis {  { s_axis_rx_data_TSTRB in_data 0 8 } } }
	s_axis_rx_data_V_last_V { axis {  { s_axis_rx_data_TVALID in_vld 0 1 }  { s_axis_rx_data_TREADY in_acc 1 1 }  { s_axis_rx_data_TLAST in_data 0 1 } } }
	myMacAddress { ap_fifo {  { myMacAddress_dout fifo_data 0 48 }  { myMacAddress_empty_n fifo_status 0 1 }  { myMacAddress_read fifo_update 1 1 } } }
	dhcp_replyMetaFifo { ap_fifo {  { dhcp_replyMetaFifo_din fifo_data 1 128 }  { dhcp_replyMetaFifo_full_n fifo_status 0 1 }  { dhcp_replyMetaFifo_write fifo_update 1 1 } } }
}
