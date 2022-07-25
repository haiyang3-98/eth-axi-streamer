set moduleName remove_pseudo_header_512_s
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
set C_modelName {remove_pseudo_header<512>}
set C_modelType { void 0 }
set C_modelArgList {
	{ txEng_tcpPkgBuffer2 int 1024 regular {fifo 0 volatile } {global 0}  }
	{ txEng_tcpPkgBuffer3 int 1024 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "txEng_tcpPkgBuffer2", "interface" : "fifo", "bitwidth" : 1024, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "txEng_tcpPkgBuffer3", "interface" : "fifo", "bitwidth" : 1024, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ txEng_tcpPkgBuffer2_dout sc_in sc_lv 1024 signal 0 } 
	{ txEng_tcpPkgBuffer2_empty_n sc_in sc_logic 1 signal 0 } 
	{ txEng_tcpPkgBuffer2_read sc_out sc_logic 1 signal 0 } 
	{ txEng_tcpPkgBuffer3_din sc_out sc_lv 1024 signal 1 } 
	{ txEng_tcpPkgBuffer3_full_n sc_in sc_logic 1 signal 1 } 
	{ txEng_tcpPkgBuffer3_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "txEng_tcpPkgBuffer2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "txEng_tcpPkgBuffer2", "role": "dout" }} , 
 	{ "name": "txEng_tcpPkgBuffer2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_tcpPkgBuffer2", "role": "empty_n" }} , 
 	{ "name": "txEng_tcpPkgBuffer2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_tcpPkgBuffer2", "role": "read" }} , 
 	{ "name": "txEng_tcpPkgBuffer3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "txEng_tcpPkgBuffer3", "role": "din" }} , 
 	{ "name": "txEng_tcpPkgBuffer3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_tcpPkgBuffer3", "role": "full_n" }} , 
 	{ "name": "txEng_tcpPkgBuffer3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txEng_tcpPkgBuffer3", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "remove_pseudo_header_512_s",
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
			{"Name" : "txEng_tcpPkgBuffer2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "256", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txEng_tcpPkgBuffer2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txEng_tcpPkgBuffer3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txEng_tcpPkgBuffer3_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	remove_pseudo_header_512_s {
		txEng_tcpPkgBuffer2 {Type I LastRead 0 FirstWrite -1}
		txEng_tcpPkgBuffer3 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	txEng_tcpPkgBuffer2 { ap_fifo {  { txEng_tcpPkgBuffer2_dout fifo_data 0 1024 }  { txEng_tcpPkgBuffer2_empty_n fifo_status 0 1 }  { txEng_tcpPkgBuffer2_read fifo_update 1 1 } } }
	txEng_tcpPkgBuffer3 { ap_fifo {  { txEng_tcpPkgBuffer3_din fifo_data 1 1024 }  { txEng_tcpPkgBuffer3_full_n fifo_status 0 1 }  { txEng_tcpPkgBuffer3_write fifo_update 1 1 } } }
}
