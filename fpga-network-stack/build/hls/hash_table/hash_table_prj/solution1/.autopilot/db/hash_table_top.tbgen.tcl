set moduleName hash_table_top
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {hash_table_top}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_axis_lup_req_V int 128 regular {axi_s 0 volatile  { s_axis_lup_req_V Data } }  }
	{ s_axis_upd_req_V int 192 regular {axi_s 0 volatile  { s_axis_upd_req_V Data } }  }
	{ m_axis_lup_rsp_V int 128 regular {axi_s 1 volatile  { m_axis_lup_rsp_V Data } }  }
	{ m_axis_upd_rsp_V int 192 regular {axi_s 1 volatile  { m_axis_upd_rsp_V Data } }  }
	{ regInsertFailureCount int 16 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "s_axis_lup_req_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_lup_req.V","cData": "int128","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_upd_req_V", "interface" : "axis", "bitwidth" : 192, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_upd_req.V","cData": "int192","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_lup_rsp_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_lup_rsp.V","cData": "int128","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_upd_rsp_V", "interface" : "axis", "bitwidth" : 192, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_upd_rsp.V","cData": "int192","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "regInsertFailureCount", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "regInsertFailureCount","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axis_lup_req_V_TDATA sc_in sc_lv 128 signal 0 } 
	{ s_axis_lup_req_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ s_axis_lup_req_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ s_axis_upd_req_V_TDATA sc_in sc_lv 192 signal 1 } 
	{ s_axis_upd_req_V_TVALID sc_in sc_logic 1 invld 1 } 
	{ s_axis_upd_req_V_TREADY sc_out sc_logic 1 inacc 1 } 
	{ m_axis_lup_rsp_V_TDATA sc_out sc_lv 128 signal 2 } 
	{ m_axis_lup_rsp_V_TVALID sc_out sc_logic 1 outvld 2 } 
	{ m_axis_lup_rsp_V_TREADY sc_in sc_logic 1 outacc 2 } 
	{ m_axis_upd_rsp_V_TDATA sc_out sc_lv 192 signal 3 } 
	{ m_axis_upd_rsp_V_TVALID sc_out sc_logic 1 outvld 3 } 
	{ m_axis_upd_rsp_V_TREADY sc_in sc_logic 1 outacc 3 } 
	{ regInsertFailureCount sc_out sc_lv 16 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "s_axis_lup_req_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "s_axis_lup_req_V", "role": "TDATA" }} , 
 	{ "name": "s_axis_lup_req_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_lup_req_V", "role": "TVALID" }} , 
 	{ "name": "s_axis_lup_req_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_lup_req_V", "role": "TREADY" }} , 
 	{ "name": "s_axis_upd_req_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":192, "type": "signal", "bundle":{"name": "s_axis_upd_req_V", "role": "TDATA" }} , 
 	{ "name": "s_axis_upd_req_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_upd_req_V", "role": "TVALID" }} , 
 	{ "name": "s_axis_upd_req_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_upd_req_V", "role": "TREADY" }} , 
 	{ "name": "m_axis_lup_rsp_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "m_axis_lup_rsp_V", "role": "TDATA" }} , 
 	{ "name": "m_axis_lup_rsp_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_lup_rsp_V", "role": "TVALID" }} , 
 	{ "name": "m_axis_lup_rsp_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_lup_rsp_V", "role": "TREADY" }} , 
 	{ "name": "m_axis_upd_rsp_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":192, "type": "signal", "bundle":{"name": "m_axis_upd_rsp_V", "role": "TDATA" }} , 
 	{ "name": "m_axis_upd_rsp_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_upd_rsp_V", "role": "TVALID" }} , 
 	{ "name": "m_axis_upd_rsp_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_upd_rsp_V", "role": "TREADY" }} , 
 	{ "name": "regInsertFailureCount", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "regInsertFailureCount", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37"],
		"CDFG" : "hash_table_top",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "82",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "s_axis_lup_req_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_lup_req_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_upd_req_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_upd_req_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_lup_rsp_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_lup_rsp_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_upd_rsp_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_upd_rsp_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regInsertFailureCount", "Type" : "None", "Direction" : "O"},
			{"Name" : "cuckooTables_key_V_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_value_V_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_valid_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_key_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_value_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_valid_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_key_V_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_value_V_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_valid_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_key_V_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_value_V_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_valid_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_key_V_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_value_V_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_valid_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_key_V_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_value_V_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_valid_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_key_V_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_value_V_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_valid_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_key_V_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_value_V_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_valid_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_key_V_8", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_value_V_8", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cuckooTables_valid_8", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "insertFailureCounter", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "victimIdx_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "victimBit_V", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_key_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_value_V_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_valid_0_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_key_V_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_value_V_1_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_valid_1_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_key_V_2_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_value_V_2_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_valid_2_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_key_V_3_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_value_V_3_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_valid_3_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_key_V_4_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_value_V_4_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_valid_4_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_key_V_5_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_value_V_5_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_valid_5_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_key_V_6_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_value_V_6_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_valid_6_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_key_V_7_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_value_V_7_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_valid_7_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_key_V_8_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_value_V_8_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cuckooTables_valid_8_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_calculate_hashes_fu_1634", "Parent" : "0",
		"CDFG" : "calculate_hashes",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "key", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_94_6_1_1_U2", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_94_64_1_1_U3", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_94_16_1_1_U4", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_94_1_1_1_U5", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_94_16_1_1_U6", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_lup_req_V_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_upd_req_V_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_lup_rsp_V_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_upd_rsp_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	hash_table_top {
		s_axis_lup_req_V {Type I LastRead 0 FirstWrite -1}
		s_axis_upd_req_V {Type I LastRead 0 FirstWrite -1}
		m_axis_lup_rsp_V {Type O LastRead -1 FirstWrite 4}
		m_axis_upd_rsp_V {Type O LastRead -1 FirstWrite 4}
		regInsertFailureCount {Type O LastRead -1 FirstWrite 0}
		cuckooTables_key_V_0 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_value_V_0 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_valid_0 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_key_V_1 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_value_V_1 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_valid_1 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_key_V_2 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_value_V_2 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_valid_2 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_key_V_3 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_value_V_3 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_valid_3 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_key_V_4 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_value_V_4 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_valid_4 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_key_V_5 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_value_V_5 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_valid_5 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_key_V_6 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_value_V_6 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_valid_6 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_key_V_7 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_value_V_7 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_valid_7 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_key_V_8 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_value_V_8 {Type IO LastRead -1 FirstWrite -1}
		cuckooTables_valid_8 {Type IO LastRead -1 FirstWrite -1}
		insertFailureCounter {Type IO LastRead -1 FirstWrite -1}
		victimIdx_V {Type IO LastRead -1 FirstWrite -1}
		victimBit_V {Type IO LastRead -1 FirstWrite -1}}
	calculate_hashes {
		key {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "82"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "83"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	s_axis_lup_req_V { axis {  { s_axis_lup_req_V_TDATA in_data 0 128 }  { s_axis_lup_req_V_TVALID in_vld 0 1 }  { s_axis_lup_req_V_TREADY in_acc 1 1 } } }
	s_axis_upd_req_V { axis {  { s_axis_upd_req_V_TDATA in_data 0 192 }  { s_axis_upd_req_V_TVALID in_vld 0 1 }  { s_axis_upd_req_V_TREADY in_acc 1 1 } } }
	m_axis_lup_rsp_V { axis {  { m_axis_lup_rsp_V_TDATA out_data 1 128 }  { m_axis_lup_rsp_V_TVALID out_vld 1 1 }  { m_axis_lup_rsp_V_TREADY out_acc 0 1 } } }
	m_axis_upd_rsp_V { axis {  { m_axis_upd_rsp_V_TDATA out_data 1 192 }  { m_axis_upd_rsp_V_TVALID out_vld 1 1 }  { m_axis_upd_rsp_V_TREADY out_acc 0 1 } } }
	regInsertFailureCount { ap_none {  { regInsertFailureCount out_data 1 16 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
