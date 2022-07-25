set moduleName stream_merger_event_s
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
set C_modelName {stream_merger<event>}
set C_modelType { void 0 }
set C_modelArgList {
	{ rtTimer2eventEng_setEvent int 128 regular {fifo 0 volatile } {global 0}  }
	{ timer2eventEng_setEvent int 128 regular {fifo 1 volatile } {global 1}  }
	{ probeTimer2eventEng_setEvent int 128 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rtTimer2eventEng_setEvent", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "timer2eventEng_setEvent", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "probeTimer2eventEng_setEvent", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rtTimer2eventEng_setEvent_dout sc_in sc_lv 128 signal 0 } 
	{ rtTimer2eventEng_setEvent_empty_n sc_in sc_logic 1 signal 0 } 
	{ rtTimer2eventEng_setEvent_read sc_out sc_logic 1 signal 0 } 
	{ probeTimer2eventEng_setEvent_dout sc_in sc_lv 128 signal 2 } 
	{ probeTimer2eventEng_setEvent_empty_n sc_in sc_logic 1 signal 2 } 
	{ probeTimer2eventEng_setEvent_read sc_out sc_logic 1 signal 2 } 
	{ timer2eventEng_setEvent_din sc_out sc_lv 128 signal 1 } 
	{ timer2eventEng_setEvent_full_n sc_in sc_logic 1 signal 1 } 
	{ timer2eventEng_setEvent_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rtTimer2eventEng_setEvent_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "rtTimer2eventEng_setEvent", "role": "dout" }} , 
 	{ "name": "rtTimer2eventEng_setEvent_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rtTimer2eventEng_setEvent", "role": "empty_n" }} , 
 	{ "name": "rtTimer2eventEng_setEvent_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rtTimer2eventEng_setEvent", "role": "read" }} , 
 	{ "name": "probeTimer2eventEng_setEvent_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "probeTimer2eventEng_setEvent", "role": "dout" }} , 
 	{ "name": "probeTimer2eventEng_setEvent_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "probeTimer2eventEng_setEvent", "role": "empty_n" }} , 
 	{ "name": "probeTimer2eventEng_setEvent_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "probeTimer2eventEng_setEvent", "role": "read" }} , 
 	{ "name": "timer2eventEng_setEvent_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "timer2eventEng_setEvent", "role": "din" }} , 
 	{ "name": "timer2eventEng_setEvent_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "timer2eventEng_setEvent", "role": "full_n" }} , 
 	{ "name": "timer2eventEng_setEvent_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "timer2eventEng_setEvent", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "stream_merger_event_s",
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
			{"Name" : "rtTimer2eventEng_setEvent", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rtTimer2eventEng_setEvent_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "timer2eventEng_setEvent", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "timer2eventEng_setEvent_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "probeTimer2eventEng_setEvent", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "probeTimer2eventEng_setEvent_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	stream_merger_event_s {
		rtTimer2eventEng_setEvent {Type I LastRead 0 FirstWrite -1}
		timer2eventEng_setEvent {Type O LastRead -1 FirstWrite 2}
		probeTimer2eventEng_setEvent {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	rtTimer2eventEng_setEvent { ap_fifo {  { rtTimer2eventEng_setEvent_dout fifo_data 0 128 }  { rtTimer2eventEng_setEvent_empty_n fifo_status 0 1 }  { rtTimer2eventEng_setEvent_read fifo_update 1 1 } } }
	timer2eventEng_setEvent { ap_fifo {  { timer2eventEng_setEvent_din fifo_data 1 128 }  { timer2eventEng_setEvent_full_n fifo_status 0 1 }  { timer2eventEng_setEvent_write fifo_update 1 1 } } }
	probeTimer2eventEng_setEvent { ap_fifo {  { probeTimer2eventEng_setEvent_dout fifo_data 0 128 }  { probeTimer2eventEng_setEvent_empty_n fifo_status 0 1 }  { probeTimer2eventEng_setEvent_read fifo_update 1 1 } } }
}
