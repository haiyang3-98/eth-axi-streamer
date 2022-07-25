set moduleName convert_net_axis_to_axis_512_21
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
set C_modelName {convert_net_axis_to_axis<512>21}
set C_modelType { void 0 }
set C_modelArgList {
	{ output_V_data_V int 512 regular {axi_s 1 volatile  { m_axis_txwrite_data Data } }  }
	{ output_V_keep_V int 64 regular {axi_s 1 volatile  { m_axis_txwrite_data Keep } }  }
	{ output_V_strb_V int 64 regular {axi_s 1 volatile  { m_axis_txwrite_data Strb } }  }
	{ output_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_txwrite_data Last } }  }
	{ txBufferWriteData_internal int 1024 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "output_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "txBufferWriteData_internal", "interface" : "fifo", "bitwidth" : 1024, "direction" : "READONLY", "extern" : 0} ]}
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
	{ txBufferWriteData_internal_dout sc_in sc_lv 1024 signal 4 } 
	{ txBufferWriteData_internal_empty_n sc_in sc_logic 1 signal 4 } 
	{ txBufferWriteData_internal_read sc_out sc_logic 1 signal 4 } 
	{ m_axis_txwrite_data_TREADY sc_in sc_logic 1 outacc 3 } 
	{ m_axis_txwrite_data_TDATA sc_out sc_lv 512 signal 0 } 
	{ m_axis_txwrite_data_TVALID sc_out sc_logic 1 outvld 3 } 
	{ m_axis_txwrite_data_TKEEP sc_out sc_lv 64 signal 1 } 
	{ m_axis_txwrite_data_TSTRB sc_out sc_lv 64 signal 2 } 
	{ m_axis_txwrite_data_TLAST sc_out sc_lv 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "txBufferWriteData_internal_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "txBufferWriteData_internal", "role": "dout" }} , 
 	{ "name": "txBufferWriteData_internal_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txBufferWriteData_internal", "role": "empty_n" }} , 
 	{ "name": "txBufferWriteData_internal_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txBufferWriteData_internal", "role": "read" }} , 
 	{ "name": "m_axis_txwrite_data_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "output_V_last_V", "role": "ata_TREADY" }} , 
 	{ "name": "m_axis_txwrite_data_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "output_V_data_V", "role": "ata_TDATA" }} , 
 	{ "name": "m_axis_txwrite_data_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_V_last_V", "role": "ata_TVALID" }} , 
 	{ "name": "m_axis_txwrite_data_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_V_keep_V", "role": "ata_TKEEP" }} , 
 	{ "name": "m_axis_txwrite_data_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_V_strb_V", "role": "ata_TSTRB" }} , 
 	{ "name": "m_axis_txwrite_data_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_last_V", "role": "ata_TLAST" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "convert_net_axis_to_axis_512_21",
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
			{"Name" : "output_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_txwrite_data_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "txBufferWriteData_internal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txBufferWriteData_internal_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_output_V_data_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_output_V_keep_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_output_V_strb_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_output_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	convert_net_axis_to_axis_512_21 {
		output_V_data_V {Type O LastRead -1 FirstWrite 1}
		output_V_keep_V {Type O LastRead -1 FirstWrite 1}
		output_V_strb_V {Type O LastRead -1 FirstWrite 1}
		output_V_last_V {Type O LastRead -1 FirstWrite 1}
		txBufferWriteData_internal {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	output_V_data_V { axis {  { m_axis_txwrite_data_TDATA out_data 1 512 } } }
	output_V_keep_V { axis {  { m_axis_txwrite_data_TKEEP out_data 1 64 } } }
	output_V_strb_V { axis {  { m_axis_txwrite_data_TSTRB out_data 1 64 } } }
	output_V_last_V { axis {  { m_axis_txwrite_data_TREADY out_acc 0 1 }  { m_axis_txwrite_data_TVALID out_vld 1 1 }  { m_axis_txwrite_data_TLAST out_data 1 1 } } }
	txBufferWriteData_internal { ap_fifo {  { txBufferWriteData_internal_dout fifo_data 0 1024 }  { txBufferWriteData_internal_empty_n fifo_status 0 1 }  { txBufferWriteData_internal_read fifo_update 1 1 } } }
}
