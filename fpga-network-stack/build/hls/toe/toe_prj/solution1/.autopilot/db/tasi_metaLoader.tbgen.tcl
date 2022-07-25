set moduleName tasi_metaLoader
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
set C_modelName {tasi_metaLoader}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_axis_tx_data_req_metadata_V int 32 regular {axi_s 0 volatile  { s_axis_tx_data_req_metadata_V Data } }  }
	{ m_axis_tx_data_rsp_V int 96 regular {axi_s 1 volatile  { m_axis_tx_data_rsp_V Data } }  }
	{ txApp2stateTable_req int 16 regular {fifo 1 volatile } {global 1}  }
	{ txApp2txSar_upd_req int 96 regular {fifo 1 volatile } {global 1}  }
	{ txSar2txApp_upd_rsp int 128 regular {fifo 0 volatile } {global 0}  }
	{ stateTable2txApp_rsp int 32 regular {fifo 0 volatile } {global 0}  }
	{ tasi_meta2pkgPushCmd int 128 regular {fifo 1 volatile } {global 1}  }
	{ txAppStream2event_mergeEvent int 128 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "s_axis_tx_data_req_metadata_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "m_axis_tx_data_rsp_V", "interface" : "axis", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "txApp2stateTable_req", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "txApp2txSar_upd_req", "interface" : "fifo", "bitwidth" : 96, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "txSar2txApp_upd_rsp", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "stateTable2txApp_rsp", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "tasi_meta2pkgPushCmd", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "txAppStream2event_mergeEvent", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ s_axis_tx_data_req_metadata_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ stateTable2txApp_rsp_dout sc_in sc_lv 32 signal 5 } 
	{ stateTable2txApp_rsp_empty_n sc_in sc_logic 1 signal 5 } 
	{ stateTable2txApp_rsp_read sc_out sc_logic 1 signal 5 } 
	{ txSar2txApp_upd_rsp_dout sc_in sc_lv 128 signal 4 } 
	{ txSar2txApp_upd_rsp_empty_n sc_in sc_logic 1 signal 4 } 
	{ txSar2txApp_upd_rsp_read sc_out sc_logic 1 signal 4 } 
	{ txApp2stateTable_req_din sc_out sc_lv 16 signal 2 } 
	{ txApp2stateTable_req_full_n sc_in sc_logic 1 signal 2 } 
	{ txApp2stateTable_req_write sc_out sc_logic 1 signal 2 } 
	{ txApp2txSar_upd_req_din sc_out sc_lv 96 signal 3 } 
	{ txApp2txSar_upd_req_full_n sc_in sc_logic 1 signal 3 } 
	{ txApp2txSar_upd_req_write sc_out sc_logic 1 signal 3 } 
	{ m_axis_tx_data_rsp_V_TREADY sc_in sc_logic 1 outacc 1 } 
	{ tasi_meta2pkgPushCmd_din sc_out sc_lv 128 signal 6 } 
	{ tasi_meta2pkgPushCmd_full_n sc_in sc_logic 1 signal 6 } 
	{ tasi_meta2pkgPushCmd_write sc_out sc_logic 1 signal 6 } 
	{ txAppStream2event_mergeEvent_din sc_out sc_lv 128 signal 7 } 
	{ txAppStream2event_mergeEvent_full_n sc_in sc_logic 1 signal 7 } 
	{ txAppStream2event_mergeEvent_write sc_out sc_logic 1 signal 7 } 
	{ s_axis_tx_data_req_metadata_V_TDATA sc_in sc_lv 32 signal 0 } 
	{ s_axis_tx_data_req_metadata_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ m_axis_tx_data_rsp_V_TDATA sc_out sc_lv 96 signal 1 } 
	{ m_axis_tx_data_rsp_V_TVALID sc_out sc_logic 1 outvld 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "s_axis_tx_data_req_metadata_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_tx_data_req_metadata_V", "role": "TVALID" }} , 
 	{ "name": "stateTable2txApp_rsp_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stateTable2txApp_rsp", "role": "dout" }} , 
 	{ "name": "stateTable2txApp_rsp_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stateTable2txApp_rsp", "role": "empty_n" }} , 
 	{ "name": "stateTable2txApp_rsp_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stateTable2txApp_rsp", "role": "read" }} , 
 	{ "name": "txSar2txApp_upd_rsp_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "txSar2txApp_upd_rsp", "role": "dout" }} , 
 	{ "name": "txSar2txApp_upd_rsp_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txSar2txApp_upd_rsp", "role": "empty_n" }} , 
 	{ "name": "txSar2txApp_upd_rsp_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txSar2txApp_upd_rsp", "role": "read" }} , 
 	{ "name": "txApp2stateTable_req_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "txApp2stateTable_req", "role": "din" }} , 
 	{ "name": "txApp2stateTable_req_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txApp2stateTable_req", "role": "full_n" }} , 
 	{ "name": "txApp2stateTable_req_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txApp2stateTable_req", "role": "write" }} , 
 	{ "name": "txApp2txSar_upd_req_din", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "txApp2txSar_upd_req", "role": "din" }} , 
 	{ "name": "txApp2txSar_upd_req_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txApp2txSar_upd_req", "role": "full_n" }} , 
 	{ "name": "txApp2txSar_upd_req_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txApp2txSar_upd_req", "role": "write" }} , 
 	{ "name": "m_axis_tx_data_rsp_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_tx_data_rsp_V", "role": "TREADY" }} , 
 	{ "name": "tasi_meta2pkgPushCmd_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "tasi_meta2pkgPushCmd", "role": "din" }} , 
 	{ "name": "tasi_meta2pkgPushCmd_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tasi_meta2pkgPushCmd", "role": "full_n" }} , 
 	{ "name": "tasi_meta2pkgPushCmd_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tasi_meta2pkgPushCmd", "role": "write" }} , 
 	{ "name": "txAppStream2event_mergeEvent_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "txAppStream2event_mergeEvent", "role": "din" }} , 
 	{ "name": "txAppStream2event_mergeEvent_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txAppStream2event_mergeEvent", "role": "full_n" }} , 
 	{ "name": "txAppStream2event_mergeEvent_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txAppStream2event_mergeEvent", "role": "write" }} , 
 	{ "name": "s_axis_tx_data_req_metadata_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_axis_tx_data_req_metadata_V", "role": "TDATA" }} , 
 	{ "name": "s_axis_tx_data_req_metadata_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_tx_data_req_metadata_V", "role": "TREADY" }} , 
 	{ "name": "m_axis_tx_data_rsp_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "m_axis_tx_data_rsp_V", "role": "TDATA" }} , 
 	{ "name": "m_axis_tx_data_rsp_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_tx_data_rsp_V", "role": "TVALID" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "tasi_metaLoader",
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
			{"Name" : "s_axis_tx_data_req_metadata_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_tx_data_req_metadata_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_tx_data_rsp_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_tx_data_rsp_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tai_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tasi_writeMeta_length_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tasi_writeMeta_sessionID_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "txApp2stateTable_req", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txApp2stateTable_req_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txApp2txSar_upd_req", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txApp2txSar_upd_req_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txSar2txApp_upd_rsp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txSar2txApp_upd_rsp_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stateTable2txApp_rsp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "stateTable2txApp_rsp_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tasi_meta2pkgPushCmd", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "tasi_meta2pkgPushCmd_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txAppStream2event_mergeEvent", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txAppStream2event_mergeEvent_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_tx_data_req_metadata_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_tx_data_rsp_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	tasi_metaLoader {
		s_axis_tx_data_req_metadata_V {Type I LastRead 0 FirstWrite -1}
		m_axis_tx_data_rsp_V {Type O LastRead -1 FirstWrite 1}
		tai_state {Type IO LastRead -1 FirstWrite -1}
		tasi_writeMeta_length_V {Type IO LastRead -1 FirstWrite -1}
		tasi_writeMeta_sessionID_V {Type IO LastRead -1 FirstWrite -1}
		txApp2stateTable_req {Type O LastRead -1 FirstWrite 1}
		txApp2txSar_upd_req {Type O LastRead -1 FirstWrite 1}
		txSar2txApp_upd_rsp {Type I LastRead 0 FirstWrite -1}
		stateTable2txApp_rsp {Type I LastRead 0 FirstWrite -1}
		tasi_meta2pkgPushCmd {Type O LastRead -1 FirstWrite 1}
		txAppStream2event_mergeEvent {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	s_axis_tx_data_req_metadata_V { axis {  { s_axis_tx_data_req_metadata_V_TVALID in_vld 0 1 }  { s_axis_tx_data_req_metadata_V_TDATA in_data 0 32 }  { s_axis_tx_data_req_metadata_V_TREADY in_acc 1 1 } } }
	m_axis_tx_data_rsp_V { axis {  { m_axis_tx_data_rsp_V_TREADY out_acc 0 1 }  { m_axis_tx_data_rsp_V_TDATA out_data 1 96 }  { m_axis_tx_data_rsp_V_TVALID out_vld 1 1 } } }
	txApp2stateTable_req { ap_fifo {  { txApp2stateTable_req_din fifo_data 1 16 }  { txApp2stateTable_req_full_n fifo_status 0 1 }  { txApp2stateTable_req_write fifo_update 1 1 } } }
	txApp2txSar_upd_req { ap_fifo {  { txApp2txSar_upd_req_din fifo_data 1 96 }  { txApp2txSar_upd_req_full_n fifo_status 0 1 }  { txApp2txSar_upd_req_write fifo_update 1 1 } } }
	txSar2txApp_upd_rsp { ap_fifo {  { txSar2txApp_upd_rsp_dout fifo_data 0 128 }  { txSar2txApp_upd_rsp_empty_n fifo_status 0 1 }  { txSar2txApp_upd_rsp_read fifo_update 1 1 } } }
	stateTable2txApp_rsp { ap_fifo {  { stateTable2txApp_rsp_dout fifo_data 0 32 }  { stateTable2txApp_rsp_empty_n fifo_status 0 1 }  { stateTable2txApp_rsp_read fifo_update 1 1 } } }
	tasi_meta2pkgPushCmd { ap_fifo {  { tasi_meta2pkgPushCmd_din fifo_data 1 128 }  { tasi_meta2pkgPushCmd_full_n fifo_status 0 1 }  { tasi_meta2pkgPushCmd_write fifo_update 1 1 } } }
	txAppStream2event_mergeEvent { ap_fifo {  { txAppStream2event_mergeEvent_din fifo_data 1 128 }  { txAppStream2event_mergeEvent_full_n fifo_status 0 1 }  { txAppStream2event_mergeEvent_write fifo_update 1 1 } } }
}
