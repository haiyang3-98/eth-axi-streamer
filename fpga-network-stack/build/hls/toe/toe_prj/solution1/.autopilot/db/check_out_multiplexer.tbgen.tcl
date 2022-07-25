set moduleName check_out_multiplexer
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
set C_modelName {check_out_multiplexer}
set C_modelType { void 0 }
set C_modelArgList {
	{ pt_dstFifo int 1 regular {fifo 0 volatile } {global 0}  }
	{ pt_portCheckListening_rsp_fifo int 1 regular {fifo 0 volatile } {global 0}  }
	{ portTable2rxEng_check_rsp int 1 regular {fifo 1 volatile } {global 1}  }
	{ pt_portCheckUsed_rsp_fifo int 1 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pt_dstFifo", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "pt_portCheckListening_rsp_fifo", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "portTable2rxEng_check_rsp", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "pt_portCheckUsed_rsp_fifo", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "extern" : 0} ]}
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
	{ pt_portCheckUsed_rsp_fifo_dout sc_in sc_lv 1 signal 3 } 
	{ pt_portCheckUsed_rsp_fifo_empty_n sc_in sc_logic 1 signal 3 } 
	{ pt_portCheckUsed_rsp_fifo_read sc_out sc_logic 1 signal 3 } 
	{ pt_portCheckListening_rsp_fifo_dout sc_in sc_lv 1 signal 1 } 
	{ pt_portCheckListening_rsp_fifo_empty_n sc_in sc_logic 1 signal 1 } 
	{ pt_portCheckListening_rsp_fifo_read sc_out sc_logic 1 signal 1 } 
	{ pt_dstFifo_dout sc_in sc_lv 1 signal 0 } 
	{ pt_dstFifo_empty_n sc_in sc_logic 1 signal 0 } 
	{ pt_dstFifo_read sc_out sc_logic 1 signal 0 } 
	{ portTable2rxEng_check_rsp_din sc_out sc_lv 1 signal 2 } 
	{ portTable2rxEng_check_rsp_full_n sc_in sc_logic 1 signal 2 } 
	{ portTable2rxEng_check_rsp_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pt_portCheckUsed_rsp_fifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pt_portCheckUsed_rsp_fifo", "role": "dout" }} , 
 	{ "name": "pt_portCheckUsed_rsp_fifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pt_portCheckUsed_rsp_fifo", "role": "empty_n" }} , 
 	{ "name": "pt_portCheckUsed_rsp_fifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pt_portCheckUsed_rsp_fifo", "role": "read" }} , 
 	{ "name": "pt_portCheckListening_rsp_fifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pt_portCheckListening_rsp_fifo", "role": "dout" }} , 
 	{ "name": "pt_portCheckListening_rsp_fifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pt_portCheckListening_rsp_fifo", "role": "empty_n" }} , 
 	{ "name": "pt_portCheckListening_rsp_fifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pt_portCheckListening_rsp_fifo", "role": "read" }} , 
 	{ "name": "pt_dstFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pt_dstFifo", "role": "dout" }} , 
 	{ "name": "pt_dstFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pt_dstFifo", "role": "empty_n" }} , 
 	{ "name": "pt_dstFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pt_dstFifo", "role": "read" }} , 
 	{ "name": "portTable2rxEng_check_rsp_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "portTable2rxEng_check_rsp", "role": "din" }} , 
 	{ "name": "portTable2rxEng_check_rsp_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "portTable2rxEng_check_rsp", "role": "full_n" }} , 
 	{ "name": "portTable2rxEng_check_rsp_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "portTable2rxEng_check_rsp", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "check_out_multiplexer",
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
			{"Name" : "cm_fsmState", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pt_dstFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pt_dstFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pt_portCheckListening_rsp_fifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pt_portCheckListening_rsp_fifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "portTable2rxEng_check_rsp", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "portTable2rxEng_check_rsp_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pt_portCheckUsed_rsp_fifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pt_portCheckUsed_rsp_fifo_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	check_out_multiplexer {
		cm_fsmState {Type IO LastRead -1 FirstWrite -1}
		pt_dstFifo {Type I LastRead 0 FirstWrite -1}
		pt_portCheckListening_rsp_fifo {Type I LastRead 0 FirstWrite -1}
		portTable2rxEng_check_rsp {Type O LastRead -1 FirstWrite 1}
		pt_portCheckUsed_rsp_fifo {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	pt_dstFifo { ap_fifo {  { pt_dstFifo_dout fifo_data 0 1 }  { pt_dstFifo_empty_n fifo_status 0 1 }  { pt_dstFifo_read fifo_update 1 1 } } }
	pt_portCheckListening_rsp_fifo { ap_fifo {  { pt_portCheckListening_rsp_fifo_dout fifo_data 0 1 }  { pt_portCheckListening_rsp_fifo_empty_n fifo_status 0 1 }  { pt_portCheckListening_rsp_fifo_read fifo_update 1 1 } } }
	portTable2rxEng_check_rsp { ap_fifo {  { portTable2rxEng_check_rsp_din fifo_data 1 1 }  { portTable2rxEng_check_rsp_full_n fifo_status 0 1 }  { portTable2rxEng_check_rsp_write fifo_update 1 1 } } }
	pt_portCheckUsed_rsp_fifo { ap_fifo {  { pt_portCheckUsed_rsp_fifo_dout fifo_data 0 1 }  { pt_portCheckUsed_rsp_fifo_empty_n fifo_status 0 1 }  { pt_portCheckUsed_rsp_fifo_read fifo_update 1 1 } } }
}