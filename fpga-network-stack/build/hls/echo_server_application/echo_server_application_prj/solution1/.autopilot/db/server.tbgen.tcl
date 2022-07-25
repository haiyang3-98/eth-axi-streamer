set moduleName server
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
set C_modelName {server}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_axis_rx_metadata_V int 16 regular {axi_s 0 volatile  { s_axis_rx_metadata_V Data } }  }
	{ s_axis_rx_data_V int 128 regular {axi_s 0 volatile  { s_axis_rx_data_V Data } }  }
	{ esa_sessionidFifo int 16 regular {fifo 1 volatile } {global 1}  }
	{ esa_dataFifo int 128 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "s_axis_rx_metadata_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_rx_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "esa_sessionidFifo", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "esa_dataFifo", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ s_axis_rx_metadata_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ s_axis_rx_data_V_TVALID sc_in sc_logic 1 invld 1 } 
	{ esa_sessionidFifo_din sc_out sc_lv 16 signal 2 } 
	{ esa_sessionidFifo_full_n sc_in sc_logic 1 signal 2 } 
	{ esa_sessionidFifo_write sc_out sc_logic 1 signal 2 } 
	{ esa_dataFifo_din sc_out sc_lv 128 signal 3 } 
	{ esa_dataFifo_full_n sc_in sc_logic 1 signal 3 } 
	{ esa_dataFifo_write sc_out sc_logic 1 signal 3 } 
	{ s_axis_rx_metadata_V_TDATA sc_in sc_lv 16 signal 0 } 
	{ s_axis_rx_metadata_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ s_axis_rx_data_V_TDATA sc_in sc_lv 128 signal 1 } 
	{ s_axis_rx_data_V_TREADY sc_out sc_logic 1 inacc 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "s_axis_rx_metadata_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_rx_metadata_V", "role": "TVALID" }} , 
 	{ "name": "s_axis_rx_data_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_rx_data_V", "role": "TVALID" }} , 
 	{ "name": "esa_sessionidFifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "esa_sessionidFifo", "role": "din" }} , 
 	{ "name": "esa_sessionidFifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "esa_sessionidFifo", "role": "full_n" }} , 
 	{ "name": "esa_sessionidFifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "esa_sessionidFifo", "role": "write" }} , 
 	{ "name": "esa_dataFifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "esa_dataFifo", "role": "din" }} , 
 	{ "name": "esa_dataFifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "esa_dataFifo", "role": "full_n" }} , 
 	{ "name": "esa_dataFifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "esa_dataFifo", "role": "write" }} , 
 	{ "name": "s_axis_rx_metadata_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "s_axis_rx_metadata_V", "role": "TDATA" }} , 
 	{ "name": "s_axis_rx_metadata_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_rx_metadata_V", "role": "TREADY" }} , 
 	{ "name": "s_axis_rx_data_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "s_axis_rx_data_V", "role": "TDATA" }} , 
 	{ "name": "s_axis_rx_data_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_rx_data_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
			{"Name" : "esa_sessionidFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "esa_sessionidFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "esa_dataFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2048", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "esa_dataFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_rx_metadata_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_rx_data_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	server {
		s_axis_rx_metadata_V {Type I LastRead 0 FirstWrite -1}
		s_axis_rx_data_V {Type I LastRead 0 FirstWrite -1}
		ksvs_fsmState_V {Type IO LastRead -1 FirstWrite -1}
		esa_sessionidFifo {Type O LastRead -1 FirstWrite 1}
		esa_dataFifo {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	s_axis_rx_metadata_V { axis {  { s_axis_rx_metadata_V_TVALID in_vld 0 1 }  { s_axis_rx_metadata_V_TDATA in_data 0 16 }  { s_axis_rx_metadata_V_TREADY in_acc 1 1 } } }
	s_axis_rx_data_V { axis {  { s_axis_rx_data_V_TVALID in_vld 0 1 }  { s_axis_rx_data_V_TDATA in_data 0 128 }  { s_axis_rx_data_V_TREADY in_acc 1 1 } } }
	esa_sessionidFifo { ap_fifo {  { esa_sessionidFifo_din fifo_data 1 16 }  { esa_sessionidFifo_full_n fifo_status 0 1 }  { esa_sessionidFifo_write fifo_update 1 1 } } }
	esa_dataFifo { ap_fifo {  { esa_dataFifo_din fifo_data 1 128 }  { esa_dataFifo_full_n fifo_status 0 1 }  { esa_dataFifo_write fifo_update 1 1 } } }
}
set moduleName server
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
set C_modelName {server}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_axis_rx_metadata_V int 16 regular {axi_s 0 volatile  { s_axis_rx_metadata_V Data } }  }
	{ s_axis_rx_data_V int 1024 regular {axi_s 0 volatile  { s_axis_rx_data_V Data } }  }
	{ esa_sessionidFifo int 16 regular {fifo 1 volatile } {global 1}  }
	{ esa_dataFifo int 1024 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "s_axis_rx_metadata_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_rx_data_V", "interface" : "axis", "bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "esa_sessionidFifo", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "esa_dataFifo", "interface" : "fifo", "bitwidth" : 1024, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ s_axis_rx_metadata_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ s_axis_rx_data_V_TVALID sc_in sc_logic 1 invld 1 } 
	{ esa_sessionidFifo_din sc_out sc_lv 16 signal 2 } 
	{ esa_sessionidFifo_full_n sc_in sc_logic 1 signal 2 } 
	{ esa_sessionidFifo_write sc_out sc_logic 1 signal 2 } 
	{ esa_dataFifo_din sc_out sc_lv 1024 signal 3 } 
	{ esa_dataFifo_full_n sc_in sc_logic 1 signal 3 } 
	{ esa_dataFifo_write sc_out sc_logic 1 signal 3 } 
	{ s_axis_rx_metadata_V_TDATA sc_in sc_lv 16 signal 0 } 
	{ s_axis_rx_metadata_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ s_axis_rx_data_V_TDATA sc_in sc_lv 1024 signal 1 } 
	{ s_axis_rx_data_V_TREADY sc_out sc_logic 1 inacc 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "s_axis_rx_metadata_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_rx_metadata_V", "role": "TVALID" }} , 
 	{ "name": "s_axis_rx_data_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_rx_data_V", "role": "TVALID" }} , 
 	{ "name": "esa_sessionidFifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "esa_sessionidFifo", "role": "din" }} , 
 	{ "name": "esa_sessionidFifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "esa_sessionidFifo", "role": "full_n" }} , 
 	{ "name": "esa_sessionidFifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "esa_sessionidFifo", "role": "write" }} , 
 	{ "name": "esa_dataFifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "esa_dataFifo", "role": "din" }} , 
 	{ "name": "esa_dataFifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "esa_dataFifo", "role": "full_n" }} , 
 	{ "name": "esa_dataFifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "esa_dataFifo", "role": "write" }} , 
 	{ "name": "s_axis_rx_metadata_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "s_axis_rx_metadata_V", "role": "TDATA" }} , 
 	{ "name": "s_axis_rx_metadata_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_rx_metadata_V", "role": "TREADY" }} , 
 	{ "name": "s_axis_rx_data_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "s_axis_rx_data_V", "role": "TDATA" }} , 
 	{ "name": "s_axis_rx_data_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_rx_data_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
			{"Name" : "esa_sessionidFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "esa_sessionidFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "esa_dataFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2048", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "esa_dataFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_rx_metadata_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_rx_data_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	server {
		s_axis_rx_metadata_V {Type I LastRead 0 FirstWrite -1}
		s_axis_rx_data_V {Type I LastRead 0 FirstWrite -1}
		ksvs_fsmState_V {Type IO LastRead -1 FirstWrite -1}
		esa_sessionidFifo {Type O LastRead -1 FirstWrite 1}
		esa_dataFifo {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	s_axis_rx_metadata_V { axis {  { s_axis_rx_metadata_V_TVALID in_vld 0 1 }  { s_axis_rx_metadata_V_TDATA in_data 0 16 }  { s_axis_rx_metadata_V_TREADY in_acc 1 1 } } }
	s_axis_rx_data_V { axis {  { s_axis_rx_data_V_TVALID in_vld 0 1 }  { s_axis_rx_data_V_TDATA in_data 0 1024 }  { s_axis_rx_data_V_TREADY in_acc 1 1 } } }
	esa_sessionidFifo { ap_fifo {  { esa_sessionidFifo_din fifo_data 1 16 }  { esa_sessionidFifo_full_n fifo_status 0 1 }  { esa_sessionidFifo_write fifo_update 1 1 } } }
	esa_dataFifo { ap_fifo {  { esa_dataFifo_din fifo_data 1 1024 }  { esa_dataFifo_full_n fifo_status 0 1 }  { esa_dataFifo_write fifo_update 1 1 } } }
}