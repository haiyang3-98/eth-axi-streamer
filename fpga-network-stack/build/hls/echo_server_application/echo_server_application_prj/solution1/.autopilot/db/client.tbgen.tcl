set moduleName client
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
set C_modelName {client}
set C_modelType { void 0 }
set C_modelArgList {
	{ m_axis_tx_metadata_V int 32 regular {axi_s 1 volatile  { m_axis_tx_metadata_V Data } }  }
	{ m_axis_tx_data_V int 128 regular {axi_s 1 volatile  { m_axis_tx_data_V Data } }  }
	{ esa_sessionidFifo int 16 regular {fifo 0 volatile } {global 0}  }
	{ esa_lengthFifo int 16 regular {fifo 0 volatile } {global 0}  }
	{ esa_dataFifo int 128 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "m_axis_tx_metadata_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tx_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "esa_sessionidFifo", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "esa_lengthFifo", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "esa_dataFifo", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY", "extern" : 0} ]}
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
	{ esa_sessionidFifo_dout sc_in sc_lv 16 signal 2 } 
	{ esa_sessionidFifo_empty_n sc_in sc_logic 1 signal 2 } 
	{ esa_sessionidFifo_read sc_out sc_logic 1 signal 2 } 
	{ esa_lengthFifo_dout sc_in sc_lv 16 signal 3 } 
	{ esa_lengthFifo_empty_n sc_in sc_logic 1 signal 3 } 
	{ esa_lengthFifo_read sc_out sc_logic 1 signal 3 } 
	{ m_axis_tx_metadata_V_TREADY sc_in sc_logic 1 outacc 0 } 
	{ esa_dataFifo_dout sc_in sc_lv 128 signal 4 } 
	{ esa_dataFifo_empty_n sc_in sc_logic 1 signal 4 } 
	{ esa_dataFifo_read sc_out sc_logic 1 signal 4 } 
	{ m_axis_tx_data_V_TREADY sc_in sc_logic 1 outacc 1 } 
	{ m_axis_tx_metadata_V_TDATA sc_out sc_lv 32 signal 0 } 
	{ m_axis_tx_metadata_V_TVALID sc_out sc_logic 1 outvld 0 } 
	{ m_axis_tx_data_V_TDATA sc_out sc_lv 128 signal 1 } 
	{ m_axis_tx_data_V_TVALID sc_out sc_logic 1 outvld 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "esa_sessionidFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "esa_sessionidFifo", "role": "dout" }} , 
 	{ "name": "esa_sessionidFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "esa_sessionidFifo", "role": "empty_n" }} , 
 	{ "name": "esa_sessionidFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "esa_sessionidFifo", "role": "read" }} , 
 	{ "name": "esa_lengthFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "esa_lengthFifo", "role": "dout" }} , 
 	{ "name": "esa_lengthFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "esa_lengthFifo", "role": "empty_n" }} , 
 	{ "name": "esa_lengthFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "esa_lengthFifo", "role": "read" }} , 
 	{ "name": "m_axis_tx_metadata_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_tx_metadata_V", "role": "TREADY" }} , 
 	{ "name": "esa_dataFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "esa_dataFifo", "role": "dout" }} , 
 	{ "name": "esa_dataFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "esa_dataFifo", "role": "empty_n" }} , 
 	{ "name": "esa_dataFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "esa_dataFifo", "role": "read" }} , 
 	{ "name": "m_axis_tx_data_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_tx_data_V", "role": "TREADY" }} , 
 	{ "name": "m_axis_tx_metadata_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_axis_tx_metadata_V", "role": "TDATA" }} , 
 	{ "name": "m_axis_tx_metadata_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_tx_metadata_V", "role": "TVALID" }} , 
 	{ "name": "m_axis_tx_data_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "m_axis_tx_data_V", "role": "TDATA" }} , 
 	{ "name": "m_axis_tx_data_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_tx_data_V", "role": "TVALID" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
			{"Name" : "esa_sessionidFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "esa_sessionidFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "esa_lengthFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "esa_lengthFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "esa_dataFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2048", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "esa_dataFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_tx_metadata_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_tx_data_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	client {
		m_axis_tx_metadata_V {Type O LastRead 0 FirstWrite 1}
		m_axis_tx_data_V {Type O LastRead 0 FirstWrite 1}
		esac_fsmState_V {Type IO LastRead -1 FirstWrite -1}
		esa_sessionidFifo {Type I LastRead 1 FirstWrite -1}
		esa_lengthFifo {Type I LastRead 1 FirstWrite -1}
		esa_dataFifo {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	m_axis_tx_metadata_V { axis {  { m_axis_tx_metadata_V_TREADY out_acc 0 1 }  { m_axis_tx_metadata_V_TDATA out_data 1 32 }  { m_axis_tx_metadata_V_TVALID out_vld 1 1 } } }
	m_axis_tx_data_V { axis {  { m_axis_tx_data_V_TREADY out_acc 0 1 }  { m_axis_tx_data_V_TDATA out_data 1 128 }  { m_axis_tx_data_V_TVALID out_vld 1 1 } } }
	esa_sessionidFifo { ap_fifo {  { esa_sessionidFifo_dout fifo_data 0 16 }  { esa_sessionidFifo_empty_n fifo_status 0 1 }  { esa_sessionidFifo_read fifo_update 1 1 } } }
	esa_lengthFifo { ap_fifo {  { esa_lengthFifo_dout fifo_data 0 16 }  { esa_lengthFifo_empty_n fifo_status 0 1 }  { esa_lengthFifo_read fifo_update 1 1 } } }
	esa_dataFifo { ap_fifo {  { esa_dataFifo_dout fifo_data 0 128 }  { esa_dataFifo_empty_n fifo_status 0 1 }  { esa_dataFifo_read fifo_update 1 1 } } }
}
set moduleName client
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
set C_modelName {client}
set C_modelType { void 0 }
set C_modelArgList {
	{ m_axis_tx_metadata_V int 32 regular {axi_s 1 volatile  { m_axis_tx_metadata_V Data } }  }
	{ m_axis_tx_data_V int 1024 regular {axi_s 1 volatile  { m_axis_tx_data_V Data } }  }
	{ esa_sessionidFifo int 16 regular {fifo 0 volatile } {global 0}  }
	{ esa_lengthFifo int 16 regular {fifo 0 volatile } {global 0}  }
	{ esa_dataFifo int 1024 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "m_axis_tx_metadata_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tx_data_V", "interface" : "axis", "bitwidth" : 1024, "direction" : "WRITEONLY"} , 
 	{ "Name" : "esa_sessionidFifo", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "esa_lengthFifo", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "esa_dataFifo", "interface" : "fifo", "bitwidth" : 1024, "direction" : "READONLY", "extern" : 0} ]}
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
	{ esa_sessionidFifo_dout sc_in sc_lv 16 signal 2 } 
	{ esa_sessionidFifo_empty_n sc_in sc_logic 1 signal 2 } 
	{ esa_sessionidFifo_read sc_out sc_logic 1 signal 2 } 
	{ esa_lengthFifo_dout sc_in sc_lv 16 signal 3 } 
	{ esa_lengthFifo_empty_n sc_in sc_logic 1 signal 3 } 
	{ esa_lengthFifo_read sc_out sc_logic 1 signal 3 } 
	{ m_axis_tx_metadata_V_TREADY sc_in sc_logic 1 outacc 0 } 
	{ esa_dataFifo_dout sc_in sc_lv 1024 signal 4 } 
	{ esa_dataFifo_empty_n sc_in sc_logic 1 signal 4 } 
	{ esa_dataFifo_read sc_out sc_logic 1 signal 4 } 
	{ m_axis_tx_data_V_TREADY sc_in sc_logic 1 outacc 1 } 
	{ m_axis_tx_metadata_V_TDATA sc_out sc_lv 32 signal 0 } 
	{ m_axis_tx_metadata_V_TVALID sc_out sc_logic 1 outvld 0 } 
	{ m_axis_tx_data_V_TDATA sc_out sc_lv 1024 signal 1 } 
	{ m_axis_tx_data_V_TVALID sc_out sc_logic 1 outvld 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "esa_sessionidFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "esa_sessionidFifo", "role": "dout" }} , 
 	{ "name": "esa_sessionidFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "esa_sessionidFifo", "role": "empty_n" }} , 
 	{ "name": "esa_sessionidFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "esa_sessionidFifo", "role": "read" }} , 
 	{ "name": "esa_lengthFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "esa_lengthFifo", "role": "dout" }} , 
 	{ "name": "esa_lengthFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "esa_lengthFifo", "role": "empty_n" }} , 
 	{ "name": "esa_lengthFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "esa_lengthFifo", "role": "read" }} , 
 	{ "name": "m_axis_tx_metadata_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_tx_metadata_V", "role": "TREADY" }} , 
 	{ "name": "esa_dataFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "esa_dataFifo", "role": "dout" }} , 
 	{ "name": "esa_dataFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "esa_dataFifo", "role": "empty_n" }} , 
 	{ "name": "esa_dataFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "esa_dataFifo", "role": "read" }} , 
 	{ "name": "m_axis_tx_data_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_tx_data_V", "role": "TREADY" }} , 
 	{ "name": "m_axis_tx_metadata_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_axis_tx_metadata_V", "role": "TDATA" }} , 
 	{ "name": "m_axis_tx_metadata_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_tx_metadata_V", "role": "TVALID" }} , 
 	{ "name": "m_axis_tx_data_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "m_axis_tx_data_V", "role": "TDATA" }} , 
 	{ "name": "m_axis_tx_data_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_tx_data_V", "role": "TVALID" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
			{"Name" : "esa_sessionidFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "esa_sessionidFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "esa_lengthFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "esa_lengthFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "esa_dataFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2048", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "esa_dataFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_tx_metadata_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_tx_data_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	client {
		m_axis_tx_metadata_V {Type O LastRead 0 FirstWrite 1}
		m_axis_tx_data_V {Type O LastRead 0 FirstWrite 1}
		esac_fsmState_V {Type IO LastRead -1 FirstWrite -1}
		esa_sessionidFifo {Type I LastRead 1 FirstWrite -1}
		esa_lengthFifo {Type I LastRead 1 FirstWrite -1}
		esa_dataFifo {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	m_axis_tx_metadata_V { axis {  { m_axis_tx_metadata_V_TREADY out_acc 0 1 }  { m_axis_tx_metadata_V_TDATA out_data 1 32 }  { m_axis_tx_metadata_V_TVALID out_vld 1 1 } } }
	m_axis_tx_data_V { axis {  { m_axis_tx_data_V_TREADY out_acc 0 1 }  { m_axis_tx_data_V_TDATA out_data 1 1024 }  { m_axis_tx_data_V_TVALID out_vld 1 1 } } }
	esa_sessionidFifo { ap_fifo {  { esa_sessionidFifo_dout fifo_data 0 16 }  { esa_sessionidFifo_empty_n fifo_status 0 1 }  { esa_sessionidFifo_read fifo_update 1 1 } } }
	esa_lengthFifo { ap_fifo {  { esa_lengthFifo_dout fifo_data 0 16 }  { esa_lengthFifo_empty_n fifo_status 0 1 }  { esa_lengthFifo_read fifo_update 1 1 } } }
	esa_dataFifo { ap_fifo {  { esa_dataFifo_dout fifo_data 0 1024 }  { esa_dataFifo_empty_n fifo_status 0 1 }  { esa_dataFifo_read fifo_update 1 1 } } }
}
