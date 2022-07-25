set moduleName open_port
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
set C_modelName {open_port}
set C_modelType { void 0 }
set C_modelArgList {
	{ m_axis_listen_port_V int 16 regular {axi_s 1 volatile  { m_axis_listen_port_V Data } }  }
	{ s_axis_listen_port_status_V int 8 regular {axi_s 0 volatile  { s_axis_listen_port_status_V Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "m_axis_listen_port_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s_axis_listen_port_status_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} ]}
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
	{ s_axis_listen_port_status_V_TVALID sc_in sc_logic 1 invld 1 } 
	{ m_axis_listen_port_V_TREADY sc_in sc_logic 1 outacc 0 } 
	{ m_axis_listen_port_V_TDATA sc_out sc_lv 16 signal 0 } 
	{ m_axis_listen_port_V_TVALID sc_out sc_logic 1 outvld 0 } 
	{ s_axis_listen_port_status_V_TDATA sc_in sc_lv 8 signal 1 } 
	{ s_axis_listen_port_status_V_TREADY sc_out sc_logic 1 inacc 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "s_axis_listen_port_status_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_listen_port_status_V", "role": "TVALID" }} , 
 	{ "name": "m_axis_listen_port_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_listen_port_V", "role": "TREADY" }} , 
 	{ "name": "m_axis_listen_port_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "m_axis_listen_port_V", "role": "TDATA" }} , 
 	{ "name": "m_axis_listen_port_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_listen_port_V", "role": "TVALID" }} , 
 	{ "name": "s_axis_listen_port_status_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_axis_listen_port_status_V", "role": "TDATA" }} , 
 	{ "name": "s_axis_listen_port_status_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_listen_port_status_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "open_port",
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
			{"Name" : "m_axis_listen_port_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_listen_port_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_listen_port_status_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_listen_port_status_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "state_V", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_listen_port_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_listen_port_status_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	open_port {
		m_axis_listen_port_V {Type O LastRead -1 FirstWrite 1}
		s_axis_listen_port_status_V {Type I LastRead 0 FirstWrite -1}
		state_V {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	m_axis_listen_port_V { axis {  { m_axis_listen_port_V_TREADY out_acc 0 1 }  { m_axis_listen_port_V_TDATA out_data 1 16 }  { m_axis_listen_port_V_TVALID out_vld 1 1 } } }
	s_axis_listen_port_status_V { axis {  { s_axis_listen_port_status_V_TVALID in_vld 0 1 }  { s_axis_listen_port_status_V_TDATA in_data 0 8 }  { s_axis_listen_port_status_V_TREADY in_acc 1 1 } } }
}
set moduleName open_port
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
set C_modelName {open_port}
set C_modelType { void 0 }
set C_modelArgList {
	{ m_axis_listen_port_V int 16 regular {axi_s 1 volatile  { m_axis_listen_port_V Data } }  }
	{ s_axis_listen_port_status_V int 8 regular {axi_s 0 volatile  { s_axis_listen_port_status_V Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "m_axis_listen_port_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s_axis_listen_port_status_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} ]}
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
	{ s_axis_listen_port_status_V_TVALID sc_in sc_logic 1 invld 1 } 
	{ m_axis_listen_port_V_TREADY sc_in sc_logic 1 outacc 0 } 
	{ m_axis_listen_port_V_TDATA sc_out sc_lv 16 signal 0 } 
	{ m_axis_listen_port_V_TVALID sc_out sc_logic 1 outvld 0 } 
	{ s_axis_listen_port_status_V_TDATA sc_in sc_lv 8 signal 1 } 
	{ s_axis_listen_port_status_V_TREADY sc_out sc_logic 1 inacc 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "s_axis_listen_port_status_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_listen_port_status_V", "role": "TVALID" }} , 
 	{ "name": "m_axis_listen_port_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_listen_port_V", "role": "TREADY" }} , 
 	{ "name": "m_axis_listen_port_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "m_axis_listen_port_V", "role": "TDATA" }} , 
 	{ "name": "m_axis_listen_port_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_listen_port_V", "role": "TVALID" }} , 
 	{ "name": "s_axis_listen_port_status_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_axis_listen_port_status_V", "role": "TDATA" }} , 
 	{ "name": "s_axis_listen_port_status_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_listen_port_status_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "open_port",
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
			{"Name" : "m_axis_listen_port_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_listen_port_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_listen_port_status_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_listen_port_status_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "state_V", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_listen_port_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_listen_port_status_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	open_port {
		m_axis_listen_port_V {Type O LastRead -1 FirstWrite 1}
		s_axis_listen_port_status_V {Type I LastRead 0 FirstWrite -1}
		state_V {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	m_axis_listen_port_V { axis {  { m_axis_listen_port_V_TREADY out_acc 0 1 }  { m_axis_listen_port_V_TDATA out_data 1 16 }  { m_axis_listen_port_V_TVALID out_vld 1 1 } } }
	s_axis_listen_port_status_V { axis {  { s_axis_listen_port_status_V_TVALID in_vld 0 1 }  { s_axis_listen_port_status_V_TDATA in_data 0 8 }  { s_axis_listen_port_status_V_TREADY in_acc 1 1 } } }
}
