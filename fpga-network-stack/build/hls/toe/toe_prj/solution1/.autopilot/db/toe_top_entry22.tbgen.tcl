set moduleName toe_top_entry22
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {toe_top.entry22}
set C_modelType { void 0 }
set C_modelArgList {
	{ axis_data_count int 16 regular {fifo 0}  }
	{ axis_max_data_count int 16 regular {fifo 0}  }
	{ myIpAddress int 32 regular {fifo 0}  }
	{ axis_data_count_out int 16 regular {fifo 1}  }
	{ axis_max_data_count_out int 16 regular {fifo 1}  }
	{ myIpAddress_out int 32 regular {fifo 1}  }
	{ myIpAddress_out1 int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "axis_data_count", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "axis_max_data_count", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "myIpAddress", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "axis_data_count_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "axis_max_data_count_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "myIpAddress_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "myIpAddress_out1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ axis_data_count_dout sc_in sc_lv 16 signal 0 } 
	{ axis_data_count_empty_n sc_in sc_logic 1 signal 0 } 
	{ axis_data_count_read sc_out sc_logic 1 signal 0 } 
	{ axis_max_data_count_dout sc_in sc_lv 16 signal 1 } 
	{ axis_max_data_count_empty_n sc_in sc_logic 1 signal 1 } 
	{ axis_max_data_count_read sc_out sc_logic 1 signal 1 } 
	{ myIpAddress_dout sc_in sc_lv 32 signal 2 } 
	{ myIpAddress_empty_n sc_in sc_logic 1 signal 2 } 
	{ myIpAddress_read sc_out sc_logic 1 signal 2 } 
	{ axis_data_count_out_din sc_out sc_lv 16 signal 3 } 
	{ axis_data_count_out_full_n sc_in sc_logic 1 signal 3 } 
	{ axis_data_count_out_write sc_out sc_logic 1 signal 3 } 
	{ axis_max_data_count_out_din sc_out sc_lv 16 signal 4 } 
	{ axis_max_data_count_out_full_n sc_in sc_logic 1 signal 4 } 
	{ axis_max_data_count_out_write sc_out sc_logic 1 signal 4 } 
	{ myIpAddress_out_din sc_out sc_lv 32 signal 5 } 
	{ myIpAddress_out_full_n sc_in sc_logic 1 signal 5 } 
	{ myIpAddress_out_write sc_out sc_logic 1 signal 5 } 
	{ myIpAddress_out1_din sc_out sc_lv 32 signal 6 } 
	{ myIpAddress_out1_full_n sc_in sc_logic 1 signal 6 } 
	{ myIpAddress_out1_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "axis_data_count_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "axis_data_count", "role": "dout" }} , 
 	{ "name": "axis_data_count_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axis_data_count", "role": "empty_n" }} , 
 	{ "name": "axis_data_count_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axis_data_count", "role": "read" }} , 
 	{ "name": "axis_max_data_count_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "axis_max_data_count", "role": "dout" }} , 
 	{ "name": "axis_max_data_count_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axis_max_data_count", "role": "empty_n" }} , 
 	{ "name": "axis_max_data_count_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axis_max_data_count", "role": "read" }} , 
 	{ "name": "myIpAddress_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "myIpAddress", "role": "dout" }} , 
 	{ "name": "myIpAddress_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress", "role": "empty_n" }} , 
 	{ "name": "myIpAddress_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress", "role": "read" }} , 
 	{ "name": "axis_data_count_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "axis_data_count_out", "role": "din" }} , 
 	{ "name": "axis_data_count_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axis_data_count_out", "role": "full_n" }} , 
 	{ "name": "axis_data_count_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axis_data_count_out", "role": "write" }} , 
 	{ "name": "axis_max_data_count_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "axis_max_data_count_out", "role": "din" }} , 
 	{ "name": "axis_max_data_count_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axis_max_data_count_out", "role": "full_n" }} , 
 	{ "name": "axis_max_data_count_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axis_max_data_count_out", "role": "write" }} , 
 	{ "name": "myIpAddress_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "myIpAddress_out", "role": "din" }} , 
 	{ "name": "myIpAddress_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress_out", "role": "full_n" }} , 
 	{ "name": "myIpAddress_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress_out", "role": "write" }} , 
 	{ "name": "myIpAddress_out1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "myIpAddress_out1", "role": "din" }} , 
 	{ "name": "myIpAddress_out1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress_out1", "role": "full_n" }} , 
 	{ "name": "myIpAddress_out1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress_out1", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "toe_top_entry22",
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
			{"Name" : "axis_data_count", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "axis_data_count_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "axis_max_data_count", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "axis_max_data_count_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "axis_data_count_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "15", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "axis_data_count_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "axis_max_data_count_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "15", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "axis_max_data_count_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_out1_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	toe_top_entry22 {
		axis_data_count {Type I LastRead 0 FirstWrite -1}
		axis_max_data_count {Type I LastRead 0 FirstWrite -1}
		myIpAddress {Type I LastRead 0 FirstWrite -1}
		axis_data_count_out {Type O LastRead -1 FirstWrite 0}
		axis_max_data_count_out {Type O LastRead -1 FirstWrite 0}
		myIpAddress_out {Type O LastRead -1 FirstWrite 0}
		myIpAddress_out1 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	axis_data_count { ap_fifo {  { axis_data_count_dout fifo_data 0 16 }  { axis_data_count_empty_n fifo_status 0 1 }  { axis_data_count_read fifo_update 1 1 } } }
	axis_max_data_count { ap_fifo {  { axis_max_data_count_dout fifo_data 0 16 }  { axis_max_data_count_empty_n fifo_status 0 1 }  { axis_max_data_count_read fifo_update 1 1 } } }
	myIpAddress { ap_fifo {  { myIpAddress_dout fifo_data 0 32 }  { myIpAddress_empty_n fifo_status 0 1 }  { myIpAddress_read fifo_update 1 1 } } }
	axis_data_count_out { ap_fifo {  { axis_data_count_out_din fifo_data 1 16 }  { axis_data_count_out_full_n fifo_status 0 1 }  { axis_data_count_out_write fifo_update 1 1 } } }
	axis_max_data_count_out { ap_fifo {  { axis_max_data_count_out_din fifo_data 1 16 }  { axis_max_data_count_out_full_n fifo_status 0 1 }  { axis_max_data_count_out_write fifo_update 1 1 } } }
	myIpAddress_out { ap_fifo {  { myIpAddress_out_din fifo_data 1 32 }  { myIpAddress_out_full_n fifo_status 0 1 }  { myIpAddress_out_write fifo_update 1 1 } } }
	myIpAddress_out1 { ap_fifo {  { myIpAddress_out1_din fifo_data 1 32 }  { myIpAddress_out1_full_n fifo_status 0 1 }  { myIpAddress_out1_write fifo_update 1 1 } } }
}
