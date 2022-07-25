set moduleName dhcp_client_entry7
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
set C_modelName {dhcp_client.entry7}
set C_modelType { void 0 }
set C_modelArgList {
	{ dhcpEnable int 1 regular {fifo 0}  }
	{ inputIpAddress int 32 regular {fifo 0}  }
	{ myMacAddress int 48 regular {fifo 0}  }
	{ dhcpEnable_out int 1 regular {fifo 1}  }
	{ inputIpAddress_out int 32 regular {fifo 1}  }
	{ myMacAddress_out int 48 regular {fifo 1}  }
	{ myMacAddress_out1 int 48 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dhcpEnable", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "inputIpAddress", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "myMacAddress", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "dhcpEnable_out", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inputIpAddress_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "myMacAddress_out", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "myMacAddress_out1", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} ]}
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
	{ dhcpEnable_dout sc_in sc_lv 1 signal 0 } 
	{ dhcpEnable_empty_n sc_in sc_logic 1 signal 0 } 
	{ dhcpEnable_read sc_out sc_logic 1 signal 0 } 
	{ inputIpAddress_dout sc_in sc_lv 32 signal 1 } 
	{ inputIpAddress_empty_n sc_in sc_logic 1 signal 1 } 
	{ inputIpAddress_read sc_out sc_logic 1 signal 1 } 
	{ myMacAddress_dout sc_in sc_lv 48 signal 2 } 
	{ myMacAddress_empty_n sc_in sc_logic 1 signal 2 } 
	{ myMacAddress_read sc_out sc_logic 1 signal 2 } 
	{ dhcpEnable_out_din sc_out sc_lv 1 signal 3 } 
	{ dhcpEnable_out_full_n sc_in sc_logic 1 signal 3 } 
	{ dhcpEnable_out_write sc_out sc_logic 1 signal 3 } 
	{ inputIpAddress_out_din sc_out sc_lv 32 signal 4 } 
	{ inputIpAddress_out_full_n sc_in sc_logic 1 signal 4 } 
	{ inputIpAddress_out_write sc_out sc_logic 1 signal 4 } 
	{ myMacAddress_out_din sc_out sc_lv 48 signal 5 } 
	{ myMacAddress_out_full_n sc_in sc_logic 1 signal 5 } 
	{ myMacAddress_out_write sc_out sc_logic 1 signal 5 } 
	{ myMacAddress_out1_din sc_out sc_lv 48 signal 6 } 
	{ myMacAddress_out1_full_n sc_in sc_logic 1 signal 6 } 
	{ myMacAddress_out1_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dhcpEnable_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dhcpEnable", "role": "dout" }} , 
 	{ "name": "dhcpEnable_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dhcpEnable", "role": "empty_n" }} , 
 	{ "name": "dhcpEnable_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dhcpEnable", "role": "read" }} , 
 	{ "name": "inputIpAddress_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inputIpAddress", "role": "dout" }} , 
 	{ "name": "inputIpAddress_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inputIpAddress", "role": "empty_n" }} , 
 	{ "name": "inputIpAddress_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inputIpAddress", "role": "read" }} , 
 	{ "name": "myMacAddress_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "myMacAddress", "role": "dout" }} , 
 	{ "name": "myMacAddress_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myMacAddress", "role": "empty_n" }} , 
 	{ "name": "myMacAddress_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myMacAddress", "role": "read" }} , 
 	{ "name": "dhcpEnable_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dhcpEnable_out", "role": "din" }} , 
 	{ "name": "dhcpEnable_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dhcpEnable_out", "role": "full_n" }} , 
 	{ "name": "dhcpEnable_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dhcpEnable_out", "role": "write" }} , 
 	{ "name": "inputIpAddress_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inputIpAddress_out", "role": "din" }} , 
 	{ "name": "inputIpAddress_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inputIpAddress_out", "role": "full_n" }} , 
 	{ "name": "inputIpAddress_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inputIpAddress_out", "role": "write" }} , 
 	{ "name": "myMacAddress_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "myMacAddress_out", "role": "din" }} , 
 	{ "name": "myMacAddress_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myMacAddress_out", "role": "full_n" }} , 
 	{ "name": "myMacAddress_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myMacAddress_out", "role": "write" }} , 
 	{ "name": "myMacAddress_out1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "myMacAddress_out1", "role": "din" }} , 
 	{ "name": "myMacAddress_out1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myMacAddress_out1", "role": "full_n" }} , 
 	{ "name": "myMacAddress_out1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myMacAddress_out1", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "dhcpEnable", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dhcpEnable_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inputIpAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "inputIpAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myMacAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myMacAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dhcpEnable_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dhcpEnable_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inputIpAddress_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "inputIpAddress_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myMacAddress_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myMacAddress_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myMacAddress_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myMacAddress_out1_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	dhcp_client_entry7 {
		dhcpEnable {Type I LastRead 0 FirstWrite -1}
		inputIpAddress {Type I LastRead 0 FirstWrite -1}
		myMacAddress {Type I LastRead 0 FirstWrite -1}
		dhcpEnable_out {Type O LastRead -1 FirstWrite 0}
		inputIpAddress_out {Type O LastRead -1 FirstWrite 0}
		myMacAddress_out {Type O LastRead -1 FirstWrite 0}
		myMacAddress_out1 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	dhcpEnable { ap_fifo {  { dhcpEnable_dout fifo_data 0 1 }  { dhcpEnable_empty_n fifo_status 0 1 }  { dhcpEnable_read fifo_update 1 1 } } }
	inputIpAddress { ap_fifo {  { inputIpAddress_dout fifo_data 0 32 }  { inputIpAddress_empty_n fifo_status 0 1 }  { inputIpAddress_read fifo_update 1 1 } } }
	myMacAddress { ap_fifo {  { myMacAddress_dout fifo_data 0 48 }  { myMacAddress_empty_n fifo_status 0 1 }  { myMacAddress_read fifo_update 1 1 } } }
	dhcpEnable_out { ap_fifo {  { dhcpEnable_out_din fifo_data 1 1 }  { dhcpEnable_out_full_n fifo_status 0 1 }  { dhcpEnable_out_write fifo_update 1 1 } } }
	inputIpAddress_out { ap_fifo {  { inputIpAddress_out_din fifo_data 1 32 }  { inputIpAddress_out_full_n fifo_status 0 1 }  { inputIpAddress_out_write fifo_update 1 1 } } }
	myMacAddress_out { ap_fifo {  { myMacAddress_out_din fifo_data 1 48 }  { myMacAddress_out_full_n fifo_status 0 1 }  { myMacAddress_out_write fifo_update 1 1 } } }
	myMacAddress_out1 { ap_fifo {  { myMacAddress_out1_din fifo_data 1 48 }  { myMacAddress_out1_full_n fifo_status 0 1 }  { myMacAddress_out1_write fifo_update 1 1 } } }
}
