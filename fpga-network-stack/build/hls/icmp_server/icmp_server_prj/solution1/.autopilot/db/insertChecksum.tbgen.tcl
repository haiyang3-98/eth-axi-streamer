set moduleName insertChecksum
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
set C_modelName {insertChecksum}
set C_modelType { void 0 }
set C_modelArgList {
	{ dataStreams_V_data_V_0 int 64 regular {fifo 0 volatile } {global 0}  }
	{ dataStreams_V_keep_V_0 int 8 regular {fifo 0 volatile } {global 0}  }
	{ dataStreams_V_last_V_0 int 1 regular {fifo 0 volatile } {global 0}  }
	{ dataStreams_V_data_V_1 int 64 regular {fifo 0 volatile } {global 0}  }
	{ dataStreams_V_keep_V_1 int 8 regular {fifo 0 volatile } {global 0}  }
	{ dataStreams_V_last_V_1 int 1 regular {fifo 0 volatile } {global 0}  }
	{ dataOut_internal int 128 regular {fifo 1 volatile } {global 1}  }
	{ checksumStreams_V_V_0 int 16 regular {fifo 0 volatile } {global 0}  }
	{ checksumStreams_V_V_1 int 16 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dataStreams_V_data_V_0", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "dataStreams_V_keep_V_0", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "dataStreams_V_last_V_0", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "dataStreams_V_data_V_1", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "dataStreams_V_keep_V_1", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "dataStreams_V_last_V_1", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "dataOut_internal", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "checksumStreams_V_V_0", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "checksumStreams_V_V_1", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ dataStreams_V_data_V_0_dout sc_in sc_lv 64 signal 0 } 
	{ dataStreams_V_data_V_0_empty_n sc_in sc_logic 1 signal 0 } 
	{ dataStreams_V_data_V_0_read sc_out sc_logic 1 signal 0 } 
	{ dataStreams_V_keep_V_0_dout sc_in sc_lv 8 signal 1 } 
	{ dataStreams_V_keep_V_0_empty_n sc_in sc_logic 1 signal 1 } 
	{ dataStreams_V_keep_V_0_read sc_out sc_logic 1 signal 1 } 
	{ dataStreams_V_last_V_0_dout sc_in sc_lv 1 signal 2 } 
	{ dataStreams_V_last_V_0_empty_n sc_in sc_logic 1 signal 2 } 
	{ dataStreams_V_last_V_0_read sc_out sc_logic 1 signal 2 } 
	{ dataStreams_V_data_V_1_dout sc_in sc_lv 64 signal 3 } 
	{ dataStreams_V_data_V_1_empty_n sc_in sc_logic 1 signal 3 } 
	{ dataStreams_V_data_V_1_read sc_out sc_logic 1 signal 3 } 
	{ dataStreams_V_keep_V_1_dout sc_in sc_lv 8 signal 4 } 
	{ dataStreams_V_keep_V_1_empty_n sc_in sc_logic 1 signal 4 } 
	{ dataStreams_V_keep_V_1_read sc_out sc_logic 1 signal 4 } 
	{ dataStreams_V_last_V_1_dout sc_in sc_lv 1 signal 5 } 
	{ dataStreams_V_last_V_1_empty_n sc_in sc_logic 1 signal 5 } 
	{ dataStreams_V_last_V_1_read sc_out sc_logic 1 signal 5 } 
	{ checksumStreams_V_V_0_dout sc_in sc_lv 16 signal 7 } 
	{ checksumStreams_V_V_0_empty_n sc_in sc_logic 1 signal 7 } 
	{ checksumStreams_V_V_0_read sc_out sc_logic 1 signal 7 } 
	{ checksumStreams_V_V_1_dout sc_in sc_lv 16 signal 8 } 
	{ checksumStreams_V_V_1_empty_n sc_in sc_logic 1 signal 8 } 
	{ checksumStreams_V_V_1_read sc_out sc_logic 1 signal 8 } 
	{ dataOut_internal_din sc_out sc_lv 128 signal 6 } 
	{ dataOut_internal_full_n sc_in sc_logic 1 signal 6 } 
	{ dataOut_internal_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dataStreams_V_data_V_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataStreams_V_data_V_0", "role": "dout" }} , 
 	{ "name": "dataStreams_V_data_V_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataStreams_V_data_V_0", "role": "empty_n" }} , 
 	{ "name": "dataStreams_V_data_V_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataStreams_V_data_V_0", "role": "read" }} , 
 	{ "name": "dataStreams_V_keep_V_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dataStreams_V_keep_V_0", "role": "dout" }} , 
 	{ "name": "dataStreams_V_keep_V_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataStreams_V_keep_V_0", "role": "empty_n" }} , 
 	{ "name": "dataStreams_V_keep_V_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataStreams_V_keep_V_0", "role": "read" }} , 
 	{ "name": "dataStreams_V_last_V_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dataStreams_V_last_V_0", "role": "dout" }} , 
 	{ "name": "dataStreams_V_last_V_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataStreams_V_last_V_0", "role": "empty_n" }} , 
 	{ "name": "dataStreams_V_last_V_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataStreams_V_last_V_0", "role": "read" }} , 
 	{ "name": "dataStreams_V_data_V_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataStreams_V_data_V_1", "role": "dout" }} , 
 	{ "name": "dataStreams_V_data_V_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataStreams_V_data_V_1", "role": "empty_n" }} , 
 	{ "name": "dataStreams_V_data_V_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataStreams_V_data_V_1", "role": "read" }} , 
 	{ "name": "dataStreams_V_keep_V_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dataStreams_V_keep_V_1", "role": "dout" }} , 
 	{ "name": "dataStreams_V_keep_V_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataStreams_V_keep_V_1", "role": "empty_n" }} , 
 	{ "name": "dataStreams_V_keep_V_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataStreams_V_keep_V_1", "role": "read" }} , 
 	{ "name": "dataStreams_V_last_V_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dataStreams_V_last_V_1", "role": "dout" }} , 
 	{ "name": "dataStreams_V_last_V_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataStreams_V_last_V_1", "role": "empty_n" }} , 
 	{ "name": "dataStreams_V_last_V_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataStreams_V_last_V_1", "role": "read" }} , 
 	{ "name": "checksumStreams_V_V_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "checksumStreams_V_V_0", "role": "dout" }} , 
 	{ "name": "checksumStreams_V_V_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "checksumStreams_V_V_0", "role": "empty_n" }} , 
 	{ "name": "checksumStreams_V_V_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "checksumStreams_V_V_0", "role": "read" }} , 
 	{ "name": "checksumStreams_V_V_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "checksumStreams_V_V_1", "role": "dout" }} , 
 	{ "name": "checksumStreams_V_V_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "checksumStreams_V_V_1", "role": "empty_n" }} , 
 	{ "name": "checksumStreams_V_V_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "checksumStreams_V_V_1", "role": "read" }} , 
 	{ "name": "dataOut_internal_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "dataOut_internal", "role": "din" }} , 
 	{ "name": "dataOut_internal_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataOut_internal", "role": "full_n" }} , 
 	{ "name": "dataOut_internal_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataOut_internal", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "insertChecksum",
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
			{"Name" : "ic_wordCount_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "streamSource_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dataStreams_V_data_V_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dataStreams_V_data_V_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataStreams_V_keep_V_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dataStreams_V_keep_V_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataStreams_V_last_V_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dataStreams_V_last_V_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataStreams_V_data_V_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dataStreams_V_data_V_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataStreams_V_keep_V_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dataStreams_V_keep_V_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataStreams_V_last_V_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dataStreams_V_last_V_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataOut_internal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "dataOut_internal_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "checksumStreams_V_V_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "checksumStreams_V_V_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "checksumStreams_V_V_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "checksumStreams_V_V_1_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	insertChecksum {
		ic_wordCount_V {Type IO LastRead -1 FirstWrite -1}
		streamSource_V_1 {Type IO LastRead -1 FirstWrite -1}
		dataStreams_V_data_V_0 {Type I LastRead 0 FirstWrite -1}
		dataStreams_V_keep_V_0 {Type I LastRead 0 FirstWrite -1}
		dataStreams_V_last_V_0 {Type I LastRead 0 FirstWrite -1}
		dataStreams_V_data_V_1 {Type I LastRead 0 FirstWrite -1}
		dataStreams_V_keep_V_1 {Type I LastRead 0 FirstWrite -1}
		dataStreams_V_last_V_1 {Type I LastRead 0 FirstWrite -1}
		dataOut_internal {Type O LastRead -1 FirstWrite 1}
		checksumStreams_V_V_0 {Type I LastRead 0 FirstWrite -1}
		checksumStreams_V_V_1 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	dataStreams_V_data_V_0 { ap_fifo {  { dataStreams_V_data_V_0_dout fifo_data 0 64 }  { dataStreams_V_data_V_0_empty_n fifo_status 0 1 }  { dataStreams_V_data_V_0_read fifo_update 1 1 } } }
	dataStreams_V_keep_V_0 { ap_fifo {  { dataStreams_V_keep_V_0_dout fifo_data 0 8 }  { dataStreams_V_keep_V_0_empty_n fifo_status 0 1 }  { dataStreams_V_keep_V_0_read fifo_update 1 1 } } }
	dataStreams_V_last_V_0 { ap_fifo {  { dataStreams_V_last_V_0_dout fifo_data 0 1 }  { dataStreams_V_last_V_0_empty_n fifo_status 0 1 }  { dataStreams_V_last_V_0_read fifo_update 1 1 } } }
	dataStreams_V_data_V_1 { ap_fifo {  { dataStreams_V_data_V_1_dout fifo_data 0 64 }  { dataStreams_V_data_V_1_empty_n fifo_status 0 1 }  { dataStreams_V_data_V_1_read fifo_update 1 1 } } }
	dataStreams_V_keep_V_1 { ap_fifo {  { dataStreams_V_keep_V_1_dout fifo_data 0 8 }  { dataStreams_V_keep_V_1_empty_n fifo_status 0 1 }  { dataStreams_V_keep_V_1_read fifo_update 1 1 } } }
	dataStreams_V_last_V_1 { ap_fifo {  { dataStreams_V_last_V_1_dout fifo_data 0 1 }  { dataStreams_V_last_V_1_empty_n fifo_status 0 1 }  { dataStreams_V_last_V_1_read fifo_update 1 1 } } }
	dataOut_internal { ap_fifo {  { dataOut_internal_din fifo_data 1 128 }  { dataOut_internal_full_n fifo_status 0 1 }  { dataOut_internal_write fifo_update 1 1 } } }
	checksumStreams_V_V_0 { ap_fifo {  { checksumStreams_V_V_0_dout fifo_data 0 16 }  { checksumStreams_V_V_0_empty_n fifo_status 0 1 }  { checksumStreams_V_V_0_read fifo_update 1 1 } } }
	checksumStreams_V_V_1 { ap_fifo {  { checksumStreams_V_V_1_dout fifo_data 0 16 }  { checksumStreams_V_V_1_empty_n fifo_status 0 1 }  { checksumStreams_V_V_1_read fifo_update 1 1 } } }
}
