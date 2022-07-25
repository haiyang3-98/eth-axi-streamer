; ModuleID = '/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/toe/toe_prj/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream.49" = type { %struct.mmStatus }
%struct.mmStatus = type { %struct.ap_uint.30, %struct.ap_uint.24, %struct.ap_uint.24, %struct.ap_uint.24, %struct.ap_uint.24 }
%struct.ap_uint.30 = type { %struct.ap_int_base.31 }
%struct.ap_int_base.31 = type { %struct.ssdm_int.32 }
%struct.ssdm_int.32 = type { i4 }
%struct.ap_uint.24 = type { %struct.ap_int_base.25 }
%struct.ap_int_base.25 = type { %struct.ssdm_int.26 }
%struct.ssdm_int.26 = type { i1 }
%"class.hls::stream.20" = type { %struct.mmCmd }
%struct.mmCmd = type { %struct.ap_uint.21, %struct.ap_uint.24, %struct.ap_uint.27, %struct.ap_uint.24, %struct.ap_uint.24, %struct.ap_uint, %struct.ap_uint.30, %struct.ap_uint.30 }
%struct.ap_uint.21 = type { %struct.ap_int_base.22 }
%struct.ap_int_base.22 = type { %struct.ssdm_int.23 }
%struct.ssdm_int.23 = type { i23 }
%struct.ap_uint.27 = type { %struct.ap_int_base.28 }
%struct.ap_int_base.28 = type { %struct.ssdm_int.29 }
%struct.ssdm_int.29 = type { i6 }
%struct.ap_uint = type { %struct.ap_int_base }
%struct.ap_int_base = type { %struct.ssdm_int }
%struct.ssdm_int = type { i32 }
%"class.hls::stream.50" = type { %struct.rtlSessionLookupReply }
%struct.rtlSessionLookupReply = type { %struct.threeTupleInternal, %struct.ap_uint.3, i1, i32 }
%struct.threeTupleInternal = type { %struct.ap_uint, %struct.ap_uint.3, %struct.ap_uint.3 }
%struct.ap_uint.3 = type { %struct.ap_int_base.4 }
%struct.ap_int_base.4 = type { %struct.ssdm_int.5 }
%struct.ssdm_int.5 = type { i16 }
%"class.hls::stream.51" = type { %struct.rtlSessionUpdateReply }
%struct.rtlSessionUpdateReply = type { i32, %struct.threeTupleInternal, %struct.ap_uint.3, i1, i32 }
%"class.hls::stream.52" = type { %struct.rtlSessionLookupRequest }
%struct.rtlSessionLookupRequest = type { %struct.threeTupleInternal, i32 }
%"class.hls::stream.53" = type { %struct.rtlSessionUpdateRequest }
%struct.rtlSessionUpdateRequest = type { i32, %struct.threeTupleInternal, %struct.ap_uint.3, i32 }
%"class.hls::stream.55" = type { %struct.ipTuple }
%struct.ipTuple = type { %struct.ap_uint, %struct.ap_uint.3 }
%"class.hls::stream.54" = type { %struct.appReadRequest }
%struct.appReadRequest = type { %struct.ap_uint.3, %struct.ap_uint.3 }
%"class.hls::stream.15" = type { %struct.appNotification }
%struct.appNotification = type { %struct.ap_uint.3, %struct.ap_uint.3, %struct.ap_uint, %struct.ap_uint.3, i1 }
%"class.hls::stream" = type { %struct.ap_uint.3 }
%"class.hls::stream.42" = type { %"struct.hls::axis" }
%"struct.hls::axis" = type { %struct.ap_uint.43, %struct.ap_uint.46, %struct.ap_uint.46, %struct.ap_uint.24, %struct.ap_uint.24, %struct.ap_uint.24, %struct.ap_uint.24 }
%struct.ap_uint.43 = type { %struct.ap_int_base.44 }
%struct.ap_int_base.44 = type { %struct.ssdm_int.45 }
%struct.ssdm_int.45 = type { i512 }
%struct.ap_uint.46 = type { %struct.ap_int_base.47 }
%struct.ap_int_base.47 = type { %struct.ssdm_int.48 }
%struct.ssdm_int.48 = type { i64 }
%"class.hls::stream.16" = type { %struct.openStatus }
%struct.openStatus = type { %struct.ap_uint.3, %struct.ap_uint.17, %struct.ap_uint, %struct.ap_uint.3 }
%struct.ap_uint.17 = type { %struct.ap_int_base.18 }
%struct.ap_int_base.18 = type { %"class.std::ios_base::Init" }
%"class.std::ios_base::Init" = type { i8 }
%"class.hls::stream.58" = type { %struct.appTxRsp }
%struct.appTxRsp = type { %struct.ap_uint.3, %struct.ap_uint.3, %struct.ap_uint.59, %struct.ap_uint.0 }
%struct.ap_uint.59 = type { %struct.ap_int_base.60 }
%struct.ap_int_base.60 = type { %struct.ssdm_int.61 }
%struct.ssdm_int.61 = type { i30 }
%struct.ap_uint.0 = type { %struct.ap_int_base.1 }
%struct.ap_int_base.1 = type { %struct.ssdm_int.2 }
%struct.ssdm_int.2 = type { i2 }

; Function Attrs: noinline
define void @apatb_toe_top_ir(%"class.hls::stream.42"* %ipRxData, %"class.hls::stream.49"* %txBufferWriteStatus, %"class.hls::stream.42"* %rxBufferReadData, %"class.hls::stream.42"* %txBufferReadData, %"class.hls::stream.42"* %ipTxData, %"class.hls::stream.20"* %txBufferWriteCmd, %"class.hls::stream.20"* %txBufferReadCmd, %"class.hls::stream.42"* %rxBufferWriteData, %"class.hls::stream.42"* %txBufferWriteData, %"class.hls::stream.50"* %sessionLookup_rsp, %"class.hls::stream.51"* %sessionUpdate_rsp, %"class.hls::stream.52"* %sessionLookup_req, %"class.hls::stream.53"* %sessionUpdate_req, %"class.hls::stream"* %listenPortReq, %"class.hls::stream.54"* %rxDataReq, %"class.hls::stream.55"* %openConnReq, %"class.hls::stream"* %closeConnReq, %"class.hls::stream.54"* %txDataReqMeta, %"class.hls::stream.42"* %txDataReq, %struct.ssdm_int.26* %listenPortRsp, %"class.hls::stream.15"* %notification, %"class.hls::stream"* %rxDataRspMeta, %"class.hls::stream.42"* %rxDataRsp, %"class.hls::stream.16"* %openConnRsp, %"class.hls::stream.58"* %txDataRsp, %struct.ap_uint.3* nocapture readonly %axis_data_count, %struct.ap_uint.3* nocapture readonly %axis_max_data_count, %struct.ap_uint* nocapture readonly %myIpAddress, %struct.ap_uint.3* %regSessionCount) local_unnamed_addr #0 {
entry:
  %ipRxData_copy = alloca %"class.hls::stream.42", align 512
  %txBufferWriteStatus_copy = alloca %"class.hls::stream.49", align 512
  %rxBufferReadData_copy = alloca %"class.hls::stream.42", align 512
  %txBufferReadData_copy = alloca %"class.hls::stream.42", align 512
  %ipTxData_copy = alloca %"class.hls::stream.42", align 512
  %txBufferWriteCmd_copy = alloca %"class.hls::stream.20", align 512
  %txBufferReadCmd_copy = alloca %"class.hls::stream.20", align 512
  %rxBufferWriteData_copy = alloca %"class.hls::stream.42", align 512
  %txBufferWriteData_copy = alloca %"class.hls::stream.42", align 512
  %sessionLookup_rsp_copy = alloca %"class.hls::stream.50", align 512
  %sessionUpdate_rsp_copy = alloca %"class.hls::stream.51", align 512
  %sessionLookup_req_copy = alloca %"class.hls::stream.52", align 512
  %sessionUpdate_req_copy = alloca %"class.hls::stream.53", align 512
  %listenPortReq_copy1 = alloca %"class.hls::stream", align 512
  %rxDataReq_copy = alloca %"class.hls::stream.54", align 512
  %openConnReq_copy = alloca %"class.hls::stream.55", align 512
  %closeConnReq_copy2 = alloca %"class.hls::stream", align 512
  %txDataReqMeta_copy = alloca %"class.hls::stream.54", align 512
  %txDataReq_copy = alloca %"class.hls::stream.42", align 512
  %listenPortRsp_copy3 = alloca %struct.ssdm_int.26, align 512
  %notification_copy = alloca %"class.hls::stream.15", align 512
  %rxDataRspMeta_copy4 = alloca %"class.hls::stream", align 512
  %rxDataRsp_copy = alloca %"class.hls::stream.42", align 512
  %openConnRsp_copy = alloca %"class.hls::stream.16", align 512
  %txDataRsp_copy = alloca %"class.hls::stream.58", align 512
  %regSessionCount_copy5 = alloca %struct.ap_uint.3, align 512
  call fastcc void @copy_in(%"class.hls::stream.42"* %ipRxData, %"class.hls::stream.42"* nonnull align 512 %ipRxData_copy, %"class.hls::stream.49"* %txBufferWriteStatus, %"class.hls::stream.49"* nonnull align 512 %txBufferWriteStatus_copy, %"class.hls::stream.42"* %rxBufferReadData, %"class.hls::stream.42"* nonnull align 512 %rxBufferReadData_copy, %"class.hls::stream.42"* %txBufferReadData, %"class.hls::stream.42"* nonnull align 512 %txBufferReadData_copy, %"class.hls::stream.42"* %ipTxData, %"class.hls::stream.42"* nonnull align 512 %ipTxData_copy, %"class.hls::stream.20"* %txBufferWriteCmd, %"class.hls::stream.20"* nonnull align 512 %txBufferWriteCmd_copy, %"class.hls::stream.20"* %txBufferReadCmd, %"class.hls::stream.20"* nonnull align 512 %txBufferReadCmd_copy, %"class.hls::stream.42"* %rxBufferWriteData, %"class.hls::stream.42"* nonnull align 512 %rxBufferWriteData_copy, %"class.hls::stream.42"* %txBufferWriteData, %"class.hls::stream.42"* nonnull align 512 %txBufferWriteData_copy, %"class.hls::stream.50"* %sessionLookup_rsp, %"class.hls::stream.50"* nonnull align 512 %sessionLookup_rsp_copy, %"class.hls::stream.51"* %sessionUpdate_rsp, %"class.hls::stream.51"* nonnull align 512 %sessionUpdate_rsp_copy, %"class.hls::stream.52"* %sessionLookup_req, %"class.hls::stream.52"* nonnull align 512 %sessionLookup_req_copy, %"class.hls::stream.53"* %sessionUpdate_req, %"class.hls::stream.53"* nonnull align 512 %sessionUpdate_req_copy, %"class.hls::stream"* %listenPortReq, %"class.hls::stream"* nonnull align 512 %listenPortReq_copy1, %"class.hls::stream.54"* %rxDataReq, %"class.hls::stream.54"* nonnull align 512 %rxDataReq_copy, %"class.hls::stream.55"* %openConnReq, %"class.hls::stream.55"* nonnull align 512 %openConnReq_copy, %"class.hls::stream"* %closeConnReq, %"class.hls::stream"* nonnull align 512 %closeConnReq_copy2, %"class.hls::stream.54"* %txDataReqMeta, %"class.hls::stream.54"* nonnull align 512 %txDataReqMeta_copy, %"class.hls::stream.42"* %txDataReq, %"class.hls::stream.42"* nonnull align 512 %txDataReq_copy, %struct.ssdm_int.26* %listenPortRsp, %struct.ssdm_int.26* nonnull align 512 %listenPortRsp_copy3, %"class.hls::stream.15"* %notification, %"class.hls::stream.15"* nonnull align 512 %notification_copy, %"class.hls::stream"* %rxDataRspMeta, %"class.hls::stream"* nonnull align 512 %rxDataRspMeta_copy4, %"class.hls::stream.42"* %rxDataRsp, %"class.hls::stream.42"* nonnull align 512 %rxDataRsp_copy, %"class.hls::stream.16"* %openConnRsp, %"class.hls::stream.16"* nonnull align 512 %openConnRsp_copy, %"class.hls::stream.58"* %txDataRsp, %"class.hls::stream.58"* nonnull align 512 %txDataRsp_copy, %struct.ap_uint.3* %regSessionCount, %struct.ap_uint.3* nonnull align 512 %regSessionCount_copy5)
  call void @apatb_toe_top_hw(%"class.hls::stream.42"* %ipRxData_copy, %"class.hls::stream.49"* %txBufferWriteStatus_copy, %"class.hls::stream.42"* %rxBufferReadData_copy, %"class.hls::stream.42"* %txBufferReadData_copy, %"class.hls::stream.42"* %ipTxData_copy, %"class.hls::stream.20"* %txBufferWriteCmd_copy, %"class.hls::stream.20"* %txBufferReadCmd_copy, %"class.hls::stream.42"* %rxBufferWriteData_copy, %"class.hls::stream.42"* %txBufferWriteData_copy, %"class.hls::stream.50"* %sessionLookup_rsp_copy, %"class.hls::stream.51"* %sessionUpdate_rsp_copy, %"class.hls::stream.52"* %sessionLookup_req_copy, %"class.hls::stream.53"* %sessionUpdate_req_copy, %"class.hls::stream"* %listenPortReq_copy1, %"class.hls::stream.54"* %rxDataReq_copy, %"class.hls::stream.55"* %openConnReq_copy, %"class.hls::stream"* %closeConnReq_copy2, %"class.hls::stream.54"* %txDataReqMeta_copy, %"class.hls::stream.42"* %txDataReq_copy, %struct.ssdm_int.26* %listenPortRsp_copy3, %"class.hls::stream.15"* %notification_copy, %"class.hls::stream"* %rxDataRspMeta_copy4, %"class.hls::stream.42"* %rxDataRsp_copy, %"class.hls::stream.16"* %openConnRsp_copy, %"class.hls::stream.58"* %txDataRsp_copy, %struct.ap_uint.3* %axis_data_count, %struct.ap_uint.3* %axis_max_data_count, %struct.ap_uint* %myIpAddress, %struct.ap_uint.3* %regSessionCount_copy5)
  call fastcc void @copy_out(%"class.hls::stream.42"* %ipRxData, %"class.hls::stream.42"* nonnull align 512 %ipRxData_copy, %"class.hls::stream.49"* %txBufferWriteStatus, %"class.hls::stream.49"* nonnull align 512 %txBufferWriteStatus_copy, %"class.hls::stream.42"* %rxBufferReadData, %"class.hls::stream.42"* nonnull align 512 %rxBufferReadData_copy, %"class.hls::stream.42"* %txBufferReadData, %"class.hls::stream.42"* nonnull align 512 %txBufferReadData_copy, %"class.hls::stream.42"* %ipTxData, %"class.hls::stream.42"* nonnull align 512 %ipTxData_copy, %"class.hls::stream.20"* %txBufferWriteCmd, %"class.hls::stream.20"* nonnull align 512 %txBufferWriteCmd_copy, %"class.hls::stream.20"* %txBufferReadCmd, %"class.hls::stream.20"* nonnull align 512 %txBufferReadCmd_copy, %"class.hls::stream.42"* %rxBufferWriteData, %"class.hls::stream.42"* nonnull align 512 %rxBufferWriteData_copy, %"class.hls::stream.42"* %txBufferWriteData, %"class.hls::stream.42"* nonnull align 512 %txBufferWriteData_copy, %"class.hls::stream.50"* %sessionLookup_rsp, %"class.hls::stream.50"* nonnull align 512 %sessionLookup_rsp_copy, %"class.hls::stream.51"* %sessionUpdate_rsp, %"class.hls::stream.51"* nonnull align 512 %sessionUpdate_rsp_copy, %"class.hls::stream.52"* %sessionLookup_req, %"class.hls::stream.52"* nonnull align 512 %sessionLookup_req_copy, %"class.hls::stream.53"* %sessionUpdate_req, %"class.hls::stream.53"* nonnull align 512 %sessionUpdate_req_copy, %"class.hls::stream"* %listenPortReq, %"class.hls::stream"* nonnull align 512 %listenPortReq_copy1, %"class.hls::stream.54"* %rxDataReq, %"class.hls::stream.54"* nonnull align 512 %rxDataReq_copy, %"class.hls::stream.55"* %openConnReq, %"class.hls::stream.55"* nonnull align 512 %openConnReq_copy, %"class.hls::stream"* %closeConnReq, %"class.hls::stream"* nonnull align 512 %closeConnReq_copy2, %"class.hls::stream.54"* %txDataReqMeta, %"class.hls::stream.54"* nonnull align 512 %txDataReqMeta_copy, %"class.hls::stream.42"* %txDataReq, %"class.hls::stream.42"* nonnull align 512 %txDataReq_copy, %struct.ssdm_int.26* %listenPortRsp, %struct.ssdm_int.26* nonnull align 512 %listenPortRsp_copy3, %"class.hls::stream.15"* %notification, %"class.hls::stream.15"* nonnull align 512 %notification_copy, %"class.hls::stream"* %rxDataRspMeta, %"class.hls::stream"* nonnull align 512 %rxDataRspMeta_copy4, %"class.hls::stream.42"* %rxDataRsp, %"class.hls::stream.42"* nonnull align 512 %rxDataRsp_copy, %"class.hls::stream.16"* %openConnRsp, %"class.hls::stream.16"* nonnull align 512 %openConnRsp_copy, %"class.hls::stream.58"* %txDataRsp, %"class.hls::stream.58"* nonnull align 512 %txDataRsp_copy, %struct.ap_uint.3* %regSessionCount, %struct.ap_uint.3* nonnull align 512 %regSessionCount_copy5)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @copy_in(%"class.hls::stream.42"*, %"class.hls::stream.42"* noalias align 512, %"class.hls::stream.49"*, %"class.hls::stream.49"* noalias align 512, %"class.hls::stream.42"*, %"class.hls::stream.42"* noalias align 512, %"class.hls::stream.42"*, %"class.hls::stream.42"* noalias align 512, %"class.hls::stream.42"*, %"class.hls::stream.42"* noalias align 512, %"class.hls::stream.20"*, %"class.hls::stream.20"* noalias align 512, %"class.hls::stream.20"*, %"class.hls::stream.20"* noalias align 512, %"class.hls::stream.42"*, %"class.hls::stream.42"* noalias align 512, %"class.hls::stream.42"*, %"class.hls::stream.42"* noalias align 512, %"class.hls::stream.50"*, %"class.hls::stream.50"* noalias align 512, %"class.hls::stream.51"*, %"class.hls::stream.51"* noalias align 512, %"class.hls::stream.52"*, %"class.hls::stream.52"* noalias align 512, %"class.hls::stream.53"*, %"class.hls::stream.53"* noalias align 512, %"class.hls::stream"*, %"class.hls::stream"* noalias align 512, %"class.hls::stream.54"*, %"class.hls::stream.54"* noalias align 512, %"class.hls::stream.55"*, %"class.hls::stream.55"* noalias align 512, %"class.hls::stream"*, %"class.hls::stream"* noalias align 512, %"class.hls::stream.54"*, %"class.hls::stream.54"* noalias align 512, %"class.hls::stream.42"*, %"class.hls::stream.42"* noalias align 512, %struct.ssdm_int.26*, %struct.ssdm_int.26* noalias align 512, %"class.hls::stream.15"*, %"class.hls::stream.15"* noalias align 512, %"class.hls::stream"*, %"class.hls::stream"* noalias align 512, %"class.hls::stream.42"*, %"class.hls::stream.42"* noalias align 512, %"class.hls::stream.16"*, %"class.hls::stream.16"* noalias align 512, %"class.hls::stream.58"*, %"class.hls::stream.58"* noalias align 512, %struct.ap_uint.3*, %struct.ap_uint.3* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.42"(%"class.hls::stream.42"* align 512 %1, %"class.hls::stream.42"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.49"(%"class.hls::stream.49"* align 512 %3, %"class.hls::stream.49"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.42"(%"class.hls::stream.42"* align 512 %5, %"class.hls::stream.42"* %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.42"(%"class.hls::stream.42"* align 512 %7, %"class.hls::stream.42"* %6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.42"(%"class.hls::stream.42"* align 512 %9, %"class.hls::stream.42"* %8)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.20"(%"class.hls::stream.20"* align 512 %11, %"class.hls::stream.20"* %10)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.20"(%"class.hls::stream.20"* align 512 %13, %"class.hls::stream.20"* %12)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.42"(%"class.hls::stream.42"* align 512 %15, %"class.hls::stream.42"* %14)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.42"(%"class.hls::stream.42"* align 512 %17, %"class.hls::stream.42"* %16)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.50"(%"class.hls::stream.50"* align 512 %19, %"class.hls::stream.50"* %18)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.51"(%"class.hls::stream.51"* align 512 %21, %"class.hls::stream.51"* %20)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.52"(%"class.hls::stream.52"* align 512 %23, %"class.hls::stream.52"* %22)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.53"(%"class.hls::stream.53"* align 512 %25, %"class.hls::stream.53"* %24)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* align 512 %27, %"class.hls::stream"* %26)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.54"(%"class.hls::stream.54"* align 512 %29, %"class.hls::stream.54"* %28)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.55"(%"class.hls::stream.55"* align 512 %31, %"class.hls::stream.55"* %30)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* align 512 %33, %"class.hls::stream"* %32)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.54"(%"class.hls::stream.54"* align 512 %35, %"class.hls::stream.54"* %34)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.42"(%"class.hls::stream.42"* align 512 %37, %"class.hls::stream.42"* %36)
  call fastcc void @onebyonecpy_hls.p0struct.ssdm_int.26(%struct.ssdm_int.26* align 512 %39, %struct.ssdm_int.26* %38)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.15"(%"class.hls::stream.15"* align 512 %41, %"class.hls::stream.15"* %40)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* align 512 %43, %"class.hls::stream"* %42)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.42"(%"class.hls::stream.42"* align 512 %45, %"class.hls::stream.42"* %44)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.16"(%"class.hls::stream.16"* align 512 %47, %"class.hls::stream.16"* %46)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.58"(%"class.hls::stream.58"* align 512 %49, %"class.hls::stream.58"* %48)
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* align 512 %51, %struct.ap_uint.3* %50)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.42"(%"class.hls::stream.42"* noalias align 512, %"class.hls::stream.42"* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %"class.hls::stream.42"* %0, null
  %3 = icmp eq %"class.hls::stream.42"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream.42"* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_128(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream.42"(%"class.hls::stream.42"* nonnull align 512 %0, %"class.hls::stream.42"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0.02 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %1, i32 0, i32 0, i32 0
  %.01.03 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %0, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_64(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_uint.43(%struct.ap_uint.43* align 512 %.01.03, %struct.ap_uint.43* %.0.02)
  br label %19

; <label>:11:                                     ; preds = %8
  %.0.0.04 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %0, i32 0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_64(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.44(%struct.ap_int_base.44* align 512 %.01.0.05, %struct.ap_int_base.44* %.0.0.04)
  br label %19

; <label>:14:                                     ; preds = %11
  %.0.0.0.06 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.07 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_64(i8* %5)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %14
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.45(%struct.ssdm_int.45* align 512 %.01.0.0.07, %struct.ssdm_int.45* %.0.0.0.06)
  br label %19

; <label>:17:                                     ; preds = %14
  %18 = bitcast %"class.hls::stream.42"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %5, i64 64, i1 false)
  br label %19

; <label>:19:                                     ; preds = %17, %16, %13, %10
  %.0.110 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %1, i32 0, i32 0, i32 1
  %.01.111 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %0, i32 0, i32 0, i32 1
  %20 = bitcast %struct.ap_uint.46* %.0.110 to i8*
  %21 = call i1 @fpga_fifo_exist_8(i8* %20)
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  call fastcc void @streamcpy_hls.p0struct.ap_uint.46(%struct.ap_uint.46* align 64 %.01.111, %struct.ap_uint.46* %.0.110)
  br label %34

; <label>:23:                                     ; preds = %19
  %.0.1.012 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %1, i32 0, i32 0, i32 1, i32 0
  %.01.1.013 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %0, i32 0, i32 0, i32 1, i32 0
  %24 = bitcast %struct.ap_int_base.47* %.0.1.012 to i8*
  %25 = call i1 @fpga_fifo_exist_8(i8* %24)
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %23
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.47(%struct.ap_int_base.47* align 64 %.01.1.013, %struct.ap_int_base.47* %.0.1.012)
  br label %34

; <label>:27:                                     ; preds = %23
  %.0.1.0.014 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %1, i32 0, i32 0, i32 1, i32 0, i32 0
  %.01.1.0.015 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %0, i32 0, i32 0, i32 1, i32 0, i32 0
  %28 = bitcast %struct.ssdm_int.48* %.0.1.0.014 to i8*
  %29 = call i1 @fpga_fifo_exist_8(i8* %28)
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %27
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.48(%struct.ssdm_int.48* align 64 %.01.1.0.015, %struct.ssdm_int.48* %.0.1.0.014)
  br label %34

; <label>:31:                                     ; preds = %27
  %.01.1.0.0.017.gep59 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %32 = bitcast i64* %.01.1.0.0.017.gep59 to i8*
  %.0.1.0.0.016.gep60 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %33 = bitcast i64* %.0.1.0.0.016.gep60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %33, i64 8, i1 false)
  br label %34

; <label>:34:                                     ; preds = %31, %30, %26, %22
  %.0.218 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %1, i32 0, i32 0, i32 2
  %.01.219 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %0, i32 0, i32 0, i32 2
  %35 = bitcast %struct.ap_uint.46* %.0.218 to i8*
  %36 = call i1 @fpga_fifo_exist_8(i8* %35)
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %34
  call fastcc void @streamcpy_hls.p0struct.ap_uint.46(%struct.ap_uint.46* %.01.219, %struct.ap_uint.46* %.0.218)
  br label %49

; <label>:38:                                     ; preds = %34
  %.0.2.020 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %1, i32 0, i32 0, i32 2, i32 0
  %.01.2.021 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %0, i32 0, i32 0, i32 2, i32 0
  %39 = bitcast %struct.ap_int_base.47* %.0.2.020 to i8*
  %40 = call i1 @fpga_fifo_exist_8(i8* %39)
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %38
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.47(%struct.ap_int_base.47* %.01.2.021, %struct.ap_int_base.47* %.0.2.020)
  br label %49

; <label>:42:                                     ; preds = %38
  %.0.2.0.022 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %1, i32 0, i32 0, i32 2, i32 0, i32 0
  %.01.2.0.023 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %0, i32 0, i32 0, i32 2, i32 0, i32 0
  %43 = bitcast %struct.ssdm_int.48* %.0.2.0.022 to i8*
  %44 = call i1 @fpga_fifo_exist_8(i8* %43)
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %42
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.48(%struct.ssdm_int.48* %.01.2.0.023, %struct.ssdm_int.48* %.0.2.0.022)
  br label %49

; <label>:46:                                     ; preds = %42
  %.01.2.0.0.025.gep61 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %47 = bitcast i64* %.01.2.0.0.025.gep61 to i8*
  %.0.2.0.0.024.gep62 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %1, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %48 = bitcast i64* %.0.2.0.0.024.gep62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %47, i8* align 1 %48, i64 8, i1 false)
  br label %49

; <label>:49:                                     ; preds = %46, %45, %41, %37
  %.0.326 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %1, i32 0, i32 0, i32 3
  %.01.327 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %0, i32 0, i32 0, i32 3
  %50 = bitcast %struct.ap_uint.24* %.0.326 to i8*
  %51 = call i1 @fpga_fifo_exist_1(i8* %50)
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %49
  call fastcc void @streamcpy_hls.p0struct.ap_uint.24(%struct.ap_uint.24* align 16 %.01.327, %struct.ap_uint.24* %.0.326)
  br label %64

; <label>:53:                                     ; preds = %49
  %.0.3.028 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %1, i32 0, i32 0, i32 3, i32 0
  %.01.3.029 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %0, i32 0, i32 0, i32 3, i32 0
  %54 = bitcast %struct.ap_int_base.25* %.0.3.028 to i8*
  %55 = call i1 @fpga_fifo_exist_1(i8* %54)
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %53
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.25(%struct.ap_int_base.25* align 16 %.01.3.029, %struct.ap_int_base.25* %.0.3.028)
  br label %64

; <label>:57:                                     ; preds = %53
  %.0.3.0.030 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %1, i32 0, i32 0, i32 3, i32 0, i32 0
  %.01.3.0.031 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %0, i32 0, i32 0, i32 3, i32 0, i32 0
  %58 = bitcast %struct.ssdm_int.26* %.0.3.0.030 to i8*
  %59 = call i1 @fpga_fifo_exist_1(i8* %58)
  br i1 %59, label %60, label %61

; <label>:60:                                     ; preds = %57
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.26(%struct.ssdm_int.26* align 16 %.01.3.0.031, %struct.ssdm_int.26* %.0.3.0.030)
  br label %64

; <label>:61:                                     ; preds = %57
  %.01.3.0.0.033.gep63 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %62 = bitcast i1* %.01.3.0.0.033.gep63 to i8*
  %.0.3.0.0.032.gep64 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %1, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %63 = bitcast i1* %.0.3.0.0.032.gep64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %62, i8* align 1 %63, i64 1, i1 false)
  br label %64

; <label>:64:                                     ; preds = %61, %60, %56, %52
  %.0.434 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %1, i32 0, i32 0, i32 4
  %.01.435 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %0, i32 0, i32 0, i32 4
  %65 = bitcast %struct.ap_uint.24* %.0.434 to i8*
  %66 = call i1 @fpga_fifo_exist_1(i8* %65)
  br i1 %66, label %67, label %68

; <label>:67:                                     ; preds = %64
  call fastcc void @streamcpy_hls.p0struct.ap_uint.24(%struct.ap_uint.24* %.01.435, %struct.ap_uint.24* %.0.434)
  br label %79

; <label>:68:                                     ; preds = %64
  %.0.4.036 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %1, i32 0, i32 0, i32 4, i32 0
  %.01.4.037 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %0, i32 0, i32 0, i32 4, i32 0
  %69 = bitcast %struct.ap_int_base.25* %.0.4.036 to i8*
  %70 = call i1 @fpga_fifo_exist_1(i8* %69)
  br i1 %70, label %71, label %72

; <label>:71:                                     ; preds = %68
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.25(%struct.ap_int_base.25* %.01.4.037, %struct.ap_int_base.25* %.0.4.036)
  br label %79

; <label>:72:                                     ; preds = %68
  %.0.4.0.038 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %1, i32 0, i32 0, i32 4, i32 0, i32 0
  %.01.4.0.039 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %0, i32 0, i32 0, i32 4, i32 0, i32 0
  %73 = bitcast %struct.ssdm_int.26* %.0.4.0.038 to i8*
  %74 = call i1 @fpga_fifo_exist_1(i8* %73)
  br i1 %74, label %75, label %76

; <label>:75:                                     ; preds = %72
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.26(%struct.ssdm_int.26* %.01.4.0.039, %struct.ssdm_int.26* %.0.4.0.038)
  br label %79

; <label>:76:                                     ; preds = %72
  %.01.4.0.0.041.gep65 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %0, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0
  %77 = bitcast i1* %.01.4.0.0.041.gep65 to i8*
  %.0.4.0.0.040.gep66 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %1, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0
  %78 = bitcast i1* %.0.4.0.0.040.gep66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %77, i8* align 1 %78, i64 1, i1 false)
  br label %79

; <label>:79:                                     ; preds = %76, %75, %71, %67
  %.0.542 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %1, i32 0, i32 0, i32 5
  %.01.543 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %0, i32 0, i32 0, i32 5
  %80 = bitcast %struct.ap_uint.24* %.0.542 to i8*
  %81 = call i1 @fpga_fifo_exist_1(i8* %80)
  br i1 %81, label %82, label %83

; <label>:82:                                     ; preds = %79
  call fastcc void @streamcpy_hls.p0struct.ap_uint.24(%struct.ap_uint.24* %.01.543, %struct.ap_uint.24* %.0.542)
  br label %94

; <label>:83:                                     ; preds = %79
  %.0.5.044 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %1, i32 0, i32 0, i32 5, i32 0
  %.01.5.045 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %0, i32 0, i32 0, i32 5, i32 0
  %84 = bitcast %struct.ap_int_base.25* %.0.5.044 to i8*
  %85 = call i1 @fpga_fifo_exist_1(i8* %84)
  br i1 %85, label %86, label %87

; <label>:86:                                     ; preds = %83
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.25(%struct.ap_int_base.25* %.01.5.045, %struct.ap_int_base.25* %.0.5.044)
  br label %94

; <label>:87:                                     ; preds = %83
  %.0.5.0.046 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %1, i32 0, i32 0, i32 5, i32 0, i32 0
  %.01.5.0.047 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %0, i32 0, i32 0, i32 5, i32 0, i32 0
  %88 = bitcast %struct.ssdm_int.26* %.0.5.0.046 to i8*
  %89 = call i1 @fpga_fifo_exist_1(i8* %88)
  br i1 %89, label %90, label %91

; <label>:90:                                     ; preds = %87
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.26(%struct.ssdm_int.26* %.01.5.0.047, %struct.ssdm_int.26* %.0.5.0.046)
  br label %94

; <label>:91:                                     ; preds = %87
  %.01.5.0.0.049.gep67 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %0, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0
  %92 = bitcast i1* %.01.5.0.0.049.gep67 to i8*
  %.0.5.0.0.048.gep68 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %1, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0
  %93 = bitcast i1* %.0.5.0.0.048.gep68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %92, i8* align 1 %93, i64 1, i1 false)
  br label %94

; <label>:94:                                     ; preds = %91, %90, %86, %82
  %.0.650 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %1, i32 0, i32 0, i32 6
  %.01.651 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %0, i32 0, i32 0, i32 6
  %95 = bitcast %struct.ap_uint.24* %.0.650 to i8*
  %96 = call i1 @fpga_fifo_exist_1(i8* %95)
  br i1 %96, label %97, label %98

; <label>:97:                                     ; preds = %94
  call fastcc void @streamcpy_hls.p0struct.ap_uint.24(%struct.ap_uint.24* %.01.651, %struct.ap_uint.24* %.0.650)
  br label %ret

; <label>:98:                                     ; preds = %94
  %.0.6.052 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %1, i32 0, i32 0, i32 6, i32 0
  %.01.6.053 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %0, i32 0, i32 0, i32 6, i32 0
  %99 = bitcast %struct.ap_int_base.25* %.0.6.052 to i8*
  %100 = call i1 @fpga_fifo_exist_1(i8* %99)
  br i1 %100, label %101, label %102

; <label>:101:                                    ; preds = %98
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.25(%struct.ap_int_base.25* %.01.6.053, %struct.ap_int_base.25* %.0.6.052)
  br label %ret

; <label>:102:                                    ; preds = %98
  %.0.6.0.054 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %1, i32 0, i32 0, i32 6, i32 0, i32 0
  %.01.6.0.055 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %0, i32 0, i32 0, i32 6, i32 0, i32 0
  %103 = bitcast %struct.ssdm_int.26* %.0.6.0.054 to i8*
  %104 = call i1 @fpga_fifo_exist_1(i8* %103)
  br i1 %104, label %105, label %106

; <label>:105:                                    ; preds = %102
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.26(%struct.ssdm_int.26* %.01.6.0.055, %struct.ssdm_int.26* %.0.6.0.054)
  br label %ret

; <label>:106:                                    ; preds = %102
  %.01.6.0.0.057.gep69 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %0, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0
  %107 = bitcast i1* %.01.6.0.0.057.gep69 to i8*
  %.0.6.0.0.056.gep70 = getelementptr %"class.hls::stream.42", %"class.hls::stream.42"* %1, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0
  %108 = bitcast i1* %.0.6.0.0.056.gep70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %107, i8* align 1 %108, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %106, %105, %101, %97, %7, %entry
  ret void
}

declare i1 @fpga_fifo_exist_128(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.42"(%"class.hls::stream.42"* noalias nocapture align 512, %"class.hls::stream.42"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream.42"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream.42"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_128(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream.42"* %2 to i8*
  %6 = bitcast %"class.hls::stream.42"* %1 to i8*
  call void @fpga_fifo_pop_128(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream.42", %"class.hls::stream.42"* %2
  %8 = bitcast %"class.hls::stream.42"* %2 to i8*
  %9 = bitcast %"class.hls::stream.42"* %0 to i8*
  call void @fpga_fifo_push_128(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream.42"* %1 to i8*
  %11 = bitcast %"class.hls::stream.42"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 128, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #4

declare i1 @fpga_fifo_exist_64(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.43(%struct.ap_uint.43* noalias nocapture align 512, %struct.ap_uint.43* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint.43
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.43* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_64(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.43* %2 to i8*
  %6 = bitcast %struct.ap_uint.43* %1 to i8*
  call void @fpga_fifo_pop_64(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.43, %struct.ap_uint.43* %2
  %8 = bitcast %struct.ap_uint.43* %2 to i8*
  %9 = bitcast %struct.ap_uint.43* %0 to i8*
  call void @fpga_fifo_push_64(i8* %8, i8* %9)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.43* %1 to i8*
  %11 = bitcast %struct.ap_uint.43* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 64, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.44(%struct.ap_int_base.44* noalias nocapture align 512, %struct.ap_int_base.44* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.44
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.44* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_64(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.44* %2 to i8*
  %6 = bitcast %struct.ap_int_base.44* %1 to i8*
  call void @fpga_fifo_pop_64(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.44, %struct.ap_int_base.44* %2
  %8 = bitcast %struct.ap_int_base.44* %2 to i8*
  %9 = bitcast %struct.ap_int_base.44* %0 to i8*
  call void @fpga_fifo_push_64(i8* %8, i8* %9)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.44* %1 to i8*
  %11 = bitcast %struct.ap_int_base.44* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 64, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.45(%struct.ssdm_int.45* noalias nocapture align 512, %struct.ssdm_int.45* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int.45
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.45* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_64(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.45* %2 to i8*
  %6 = bitcast %struct.ssdm_int.45* %1 to i8*
  call void @fpga_fifo_pop_64(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.45, %struct.ssdm_int.45* %2
  %8 = bitcast %struct.ssdm_int.45* %2 to i8*
  %9 = bitcast %struct.ssdm_int.45* %0 to i8*
  call void @fpga_fifo_push_64(i8* %8, i8* %9)
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.45* %1 to i8*
  %11 = bitcast %struct.ssdm_int.45* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 64, i1 false)
  ret void
}

declare i1 @fpga_fifo_exist_8(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.46(%struct.ap_uint.46* noalias nocapture, %struct.ap_uint.46* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint.46
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.46* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.46* %2 to i8*
  %6 = bitcast %struct.ap_uint.46* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.46, %struct.ap_uint.46* %2
  %8 = bitcast %struct.ap_uint.46* %2 to i8*
  %9 = bitcast %struct.ap_uint.46* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !10

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.46* %1 to i8*
  %11 = bitcast %struct.ap_uint.46* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 8, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.47(%struct.ap_int_base.47* noalias nocapture, %struct.ap_int_base.47* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.47
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.47* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.47* %2 to i8*
  %6 = bitcast %struct.ap_int_base.47* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.47, %struct.ap_int_base.47* %2
  %8 = bitcast %struct.ap_int_base.47* %2 to i8*
  %9 = bitcast %struct.ap_int_base.47* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !11

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.47* %1 to i8*
  %11 = bitcast %struct.ap_int_base.47* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 8, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.48(%struct.ssdm_int.48* noalias nocapture, %struct.ssdm_int.48* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int.48
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.48* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.48* %2 to i8*
  %6 = bitcast %struct.ssdm_int.48* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.48, %struct.ssdm_int.48* %2
  %8 = bitcast %struct.ssdm_int.48* %2 to i8*
  %9 = bitcast %struct.ssdm_int.48* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !12

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.48* %1 to i8*
  %11 = bitcast %struct.ssdm_int.48* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 8, i1 false)
  ret void
}

declare i1 @fpga_fifo_exist_1(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.24(%struct.ap_uint.24* noalias nocapture, %struct.ap_uint.24* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint.24
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.24* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.24* %2 to i8*
  %6 = bitcast %struct.ap_uint.24* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.24, %struct.ap_uint.24* %2
  %8 = bitcast %struct.ap_uint.24* %2 to i8*
  %9 = bitcast %struct.ap_uint.24* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !13

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.24* %1 to i8*
  %11 = bitcast %struct.ap_uint.24* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.25(%struct.ap_int_base.25* noalias nocapture, %struct.ap_int_base.25* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.25
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.25* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.25* %2 to i8*
  %6 = bitcast %struct.ap_int_base.25* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.25, %struct.ap_int_base.25* %2
  %8 = bitcast %struct.ap_int_base.25* %2 to i8*
  %9 = bitcast %struct.ap_int_base.25* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !14

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.25* %1 to i8*
  %11 = bitcast %struct.ap_int_base.25* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.26(%struct.ssdm_int.26* noalias nocapture, %struct.ssdm_int.26* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int.26
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.26* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.26* %2 to i8*
  %6 = bitcast %struct.ssdm_int.26* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.26, %struct.ssdm_int.26* %2
  %8 = bitcast %struct.ssdm_int.26* %2 to i8*
  %9 = bitcast %struct.ssdm_int.26* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !15

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.26* %1 to i8*
  %11 = bitcast %struct.ssdm_int.26* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.49"(%"class.hls::stream.49"* noalias align 512, %"class.hls::stream.49"* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %"class.hls::stream.49"* %0, null
  %3 = icmp eq %"class.hls::stream.49"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream.49"* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_5(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream.49"(%"class.hls::stream.49"* nonnull align 512 %0, %"class.hls::stream.49"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0.02 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %1, i32 0, i32 0, i32 0
  %.01.03 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %0, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_1(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_uint.30(%struct.ap_uint.30* align 512 %.01.03, %struct.ap_uint.30* %.0.02)
  br label %19

; <label>:11:                                     ; preds = %8
  %.0.0.04 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %0, i32 0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_1(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.31(%struct.ap_int_base.31* align 512 %.01.0.05, %struct.ap_int_base.31* %.0.0.04)
  br label %19

; <label>:14:                                     ; preds = %11
  %.0.0.0.06 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.07 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_1(i8* %5)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %14
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.32(%struct.ssdm_int.32* align 512 %.01.0.0.07, %struct.ssdm_int.32* %.0.0.0.06)
  br label %19

; <label>:17:                                     ; preds = %14
  %18 = bitcast %"class.hls::stream.49"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %5, i64 1, i1 false)
  br label %19

; <label>:19:                                     ; preds = %17, %16, %13, %10
  %.0.110 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %1, i32 0, i32 0, i32 1
  %.01.111 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %0, i32 0, i32 0, i32 1
  %20 = bitcast %struct.ap_uint.24* %.0.110 to i8*
  %21 = call i1 @fpga_fifo_exist_1(i8* %20)
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  call fastcc void @streamcpy_hls.p0struct.ap_uint.24(%struct.ap_uint.24* %.01.111, %struct.ap_uint.24* %.0.110)
  br label %34

; <label>:23:                                     ; preds = %19
  %.0.1.012 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %1, i32 0, i32 0, i32 1, i32 0
  %.01.1.013 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %0, i32 0, i32 0, i32 1, i32 0
  %24 = bitcast %struct.ap_int_base.25* %.0.1.012 to i8*
  %25 = call i1 @fpga_fifo_exist_1(i8* %24)
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %23
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.25(%struct.ap_int_base.25* %.01.1.013, %struct.ap_int_base.25* %.0.1.012)
  br label %34

; <label>:27:                                     ; preds = %23
  %.0.1.0.014 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %1, i32 0, i32 0, i32 1, i32 0, i32 0
  %.01.1.0.015 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %0, i32 0, i32 0, i32 1, i32 0, i32 0
  %28 = bitcast %struct.ssdm_int.26* %.0.1.0.014 to i8*
  %29 = call i1 @fpga_fifo_exist_1(i8* %28)
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %27
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.26(%struct.ssdm_int.26* %.01.1.0.015, %struct.ssdm_int.26* %.0.1.0.014)
  br label %34

; <label>:31:                                     ; preds = %27
  %.01.1.0.0.017.gep43 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %32 = bitcast i1* %.01.1.0.0.017.gep43 to i8*
  %.0.1.0.0.016.gep44 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %33 = bitcast i1* %.0.1.0.0.016.gep44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %33, i64 1, i1 false)
  br label %34

; <label>:34:                                     ; preds = %31, %30, %26, %22
  %.0.218 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %1, i32 0, i32 0, i32 2
  %.01.219 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %0, i32 0, i32 0, i32 2
  %35 = bitcast %struct.ap_uint.24* %.0.218 to i8*
  %36 = call i1 @fpga_fifo_exist_1(i8* %35)
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %34
  call fastcc void @streamcpy_hls.p0struct.ap_uint.24(%struct.ap_uint.24* %.01.219, %struct.ap_uint.24* %.0.218)
  br label %49

; <label>:38:                                     ; preds = %34
  %.0.2.020 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %1, i32 0, i32 0, i32 2, i32 0
  %.01.2.021 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %0, i32 0, i32 0, i32 2, i32 0
  %39 = bitcast %struct.ap_int_base.25* %.0.2.020 to i8*
  %40 = call i1 @fpga_fifo_exist_1(i8* %39)
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %38
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.25(%struct.ap_int_base.25* %.01.2.021, %struct.ap_int_base.25* %.0.2.020)
  br label %49

; <label>:42:                                     ; preds = %38
  %.0.2.0.022 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %1, i32 0, i32 0, i32 2, i32 0, i32 0
  %.01.2.0.023 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %0, i32 0, i32 0, i32 2, i32 0, i32 0
  %43 = bitcast %struct.ssdm_int.26* %.0.2.0.022 to i8*
  %44 = call i1 @fpga_fifo_exist_1(i8* %43)
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %42
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.26(%struct.ssdm_int.26* %.01.2.0.023, %struct.ssdm_int.26* %.0.2.0.022)
  br label %49

; <label>:46:                                     ; preds = %42
  %.01.2.0.0.025.gep45 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %47 = bitcast i1* %.01.2.0.0.025.gep45 to i8*
  %.0.2.0.0.024.gep46 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %1, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %48 = bitcast i1* %.0.2.0.0.024.gep46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %47, i8* align 1 %48, i64 1, i1 false)
  br label %49

; <label>:49:                                     ; preds = %46, %45, %41, %37
  %.0.326 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %1, i32 0, i32 0, i32 3
  %.01.327 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %0, i32 0, i32 0, i32 3
  %50 = bitcast %struct.ap_uint.24* %.0.326 to i8*
  %51 = call i1 @fpga_fifo_exist_1(i8* %50)
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %49
  call fastcc void @streamcpy_hls.p0struct.ap_uint.24(%struct.ap_uint.24* %.01.327, %struct.ap_uint.24* %.0.326)
  br label %64

; <label>:53:                                     ; preds = %49
  %.0.3.028 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %1, i32 0, i32 0, i32 3, i32 0
  %.01.3.029 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %0, i32 0, i32 0, i32 3, i32 0
  %54 = bitcast %struct.ap_int_base.25* %.0.3.028 to i8*
  %55 = call i1 @fpga_fifo_exist_1(i8* %54)
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %53
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.25(%struct.ap_int_base.25* %.01.3.029, %struct.ap_int_base.25* %.0.3.028)
  br label %64

; <label>:57:                                     ; preds = %53
  %.0.3.0.030 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %1, i32 0, i32 0, i32 3, i32 0, i32 0
  %.01.3.0.031 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %0, i32 0, i32 0, i32 3, i32 0, i32 0
  %58 = bitcast %struct.ssdm_int.26* %.0.3.0.030 to i8*
  %59 = call i1 @fpga_fifo_exist_1(i8* %58)
  br i1 %59, label %60, label %61

; <label>:60:                                     ; preds = %57
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.26(%struct.ssdm_int.26* %.01.3.0.031, %struct.ssdm_int.26* %.0.3.0.030)
  br label %64

; <label>:61:                                     ; preds = %57
  %.01.3.0.0.033.gep47 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %62 = bitcast i1* %.01.3.0.0.033.gep47 to i8*
  %.0.3.0.0.032.gep48 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %1, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %63 = bitcast i1* %.0.3.0.0.032.gep48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %62, i8* align 1 %63, i64 1, i1 false)
  br label %64

; <label>:64:                                     ; preds = %61, %60, %56, %52
  %.0.434 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %1, i32 0, i32 0, i32 4
  %.01.435 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %0, i32 0, i32 0, i32 4
  %65 = bitcast %struct.ap_uint.24* %.0.434 to i8*
  %66 = call i1 @fpga_fifo_exist_1(i8* %65)
  br i1 %66, label %67, label %68

; <label>:67:                                     ; preds = %64
  call fastcc void @streamcpy_hls.p0struct.ap_uint.24(%struct.ap_uint.24* %.01.435, %struct.ap_uint.24* %.0.434)
  br label %ret

; <label>:68:                                     ; preds = %64
  %.0.4.036 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %1, i32 0, i32 0, i32 4, i32 0
  %.01.4.037 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %0, i32 0, i32 0, i32 4, i32 0
  %69 = bitcast %struct.ap_int_base.25* %.0.4.036 to i8*
  %70 = call i1 @fpga_fifo_exist_1(i8* %69)
  br i1 %70, label %71, label %72

; <label>:71:                                     ; preds = %68
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.25(%struct.ap_int_base.25* %.01.4.037, %struct.ap_int_base.25* %.0.4.036)
  br label %ret

; <label>:72:                                     ; preds = %68
  %.0.4.0.038 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %1, i32 0, i32 0, i32 4, i32 0, i32 0
  %.01.4.0.039 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %0, i32 0, i32 0, i32 4, i32 0, i32 0
  %73 = bitcast %struct.ssdm_int.26* %.0.4.0.038 to i8*
  %74 = call i1 @fpga_fifo_exist_1(i8* %73)
  br i1 %74, label %75, label %76

; <label>:75:                                     ; preds = %72
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.26(%struct.ssdm_int.26* %.01.4.0.039, %struct.ssdm_int.26* %.0.4.0.038)
  br label %ret

; <label>:76:                                     ; preds = %72
  %.01.4.0.0.041.gep49 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %0, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0
  %77 = bitcast i1* %.01.4.0.0.041.gep49 to i8*
  %.0.4.0.0.040.gep50 = getelementptr %"class.hls::stream.49", %"class.hls::stream.49"* %1, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0
  %78 = bitcast i1* %.0.4.0.0.040.gep50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %77, i8* align 1 %78, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %76, %75, %71, %67, %7, %entry
  ret void
}

declare i1 @fpga_fifo_exist_5(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.49"(%"class.hls::stream.49"* noalias nocapture align 512, %"class.hls::stream.49"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream.49"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream.49"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_5(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream.49"* %2 to i8*
  %6 = bitcast %"class.hls::stream.49"* %1 to i8*
  call void @fpga_fifo_pop_5(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream.49", %"class.hls::stream.49"* %2
  %8 = bitcast %"class.hls::stream.49"* %2 to i8*
  %9 = bitcast %"class.hls::stream.49"* %0 to i8*
  call void @fpga_fifo_push_5(i8* %8, i8* %9)
  br label %empty, !llvm.loop !16

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream.49"* %1 to i8*
  %11 = bitcast %"class.hls::stream.49"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 5, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.30(%struct.ap_uint.30* noalias nocapture align 512, %struct.ap_uint.30* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint.30
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.30* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.30* %2 to i8*
  %6 = bitcast %struct.ap_uint.30* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.30, %struct.ap_uint.30* %2
  %8 = bitcast %struct.ap_uint.30* %2 to i8*
  %9 = bitcast %struct.ap_uint.30* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !17

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.30* %1 to i8*
  %11 = bitcast %struct.ap_uint.30* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.31(%struct.ap_int_base.31* noalias nocapture align 512, %struct.ap_int_base.31* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.31
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.31* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.31* %2 to i8*
  %6 = bitcast %struct.ap_int_base.31* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.31, %struct.ap_int_base.31* %2
  %8 = bitcast %struct.ap_int_base.31* %2 to i8*
  %9 = bitcast %struct.ap_int_base.31* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !18

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.31* %1 to i8*
  %11 = bitcast %struct.ap_int_base.31* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.32(%struct.ssdm_int.32* noalias nocapture align 512, %struct.ssdm_int.32* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int.32
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.32* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.32* %2 to i8*
  %6 = bitcast %struct.ssdm_int.32* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.32, %struct.ssdm_int.32* %2
  %8 = bitcast %struct.ssdm_int.32* %2 to i8*
  %9 = bitcast %struct.ssdm_int.32* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !19

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.32* %1 to i8*
  %11 = bitcast %struct.ssdm_int.32* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.20"(%"class.hls::stream.20"* noalias align 512, %"class.hls::stream.20"* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %"class.hls::stream.20"* %0, null
  %3 = icmp eq %"class.hls::stream.20"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream.20"* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_16(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream.20"(%"class.hls::stream.20"* nonnull align 512 %0, %"class.hls::stream.20"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0.02 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %1, i32 0, i32 0, i32 0
  %.01.03 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %0, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_uint.21(%struct.ap_uint.21* align 512 %.01.03, %struct.ap_uint.21* %.0.02)
  br label %19

; <label>:11:                                     ; preds = %8
  %.0.0.04 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %0, i32 0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.22(%struct.ap_int_base.22* align 512 %.01.0.05, %struct.ap_int_base.22* %.0.0.04)
  br label %19

; <label>:14:                                     ; preds = %11
  %.0.0.0.06 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.07 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %14
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.23(%struct.ssdm_int.23* align 512 %.01.0.0.07, %struct.ssdm_int.23* %.0.0.0.06)
  br label %19

; <label>:17:                                     ; preds = %14
  %18 = bitcast %"class.hls::stream.20"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %5, i64 4, i1 false)
  br label %19

; <label>:19:                                     ; preds = %17, %16, %13, %10
  %.0.110 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %1, i32 0, i32 0, i32 1
  %.01.111 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %0, i32 0, i32 0, i32 1
  %20 = bitcast %struct.ap_uint.24* %.0.110 to i8*
  %21 = call i1 @fpga_fifo_exist_1(i8* %20)
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  call fastcc void @streamcpy_hls.p0struct.ap_uint.24(%struct.ap_uint.24* %.01.111, %struct.ap_uint.24* %.0.110)
  br label %34

; <label>:23:                                     ; preds = %19
  %.0.1.012 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %1, i32 0, i32 0, i32 1, i32 0
  %.01.1.013 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %0, i32 0, i32 0, i32 1, i32 0
  %24 = bitcast %struct.ap_int_base.25* %.0.1.012 to i8*
  %25 = call i1 @fpga_fifo_exist_1(i8* %24)
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %23
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.25(%struct.ap_int_base.25* %.01.1.013, %struct.ap_int_base.25* %.0.1.012)
  br label %34

; <label>:27:                                     ; preds = %23
  %.0.1.0.014 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %1, i32 0, i32 0, i32 1, i32 0, i32 0
  %.01.1.0.015 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %0, i32 0, i32 0, i32 1, i32 0, i32 0
  %28 = bitcast %struct.ssdm_int.26* %.0.1.0.014 to i8*
  %29 = call i1 @fpga_fifo_exist_1(i8* %28)
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %27
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.26(%struct.ssdm_int.26* %.01.1.0.015, %struct.ssdm_int.26* %.0.1.0.014)
  br label %34

; <label>:31:                                     ; preds = %27
  %.01.1.0.0.017.gep67 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %32 = bitcast i1* %.01.1.0.0.017.gep67 to i8*
  %.0.1.0.0.016.gep68 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %33 = bitcast i1* %.0.1.0.0.016.gep68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %33, i64 1, i1 false)
  br label %34

; <label>:34:                                     ; preds = %31, %30, %26, %22
  %.0.218 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %1, i32 0, i32 0, i32 2
  %.01.219 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %0, i32 0, i32 0, i32 2
  %35 = bitcast %struct.ap_uint.27* %.0.218 to i8*
  %36 = call i1 @fpga_fifo_exist_1(i8* %35)
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %34
  call fastcc void @streamcpy_hls.p0struct.ap_uint.27(%struct.ap_uint.27* %.01.219, %struct.ap_uint.27* %.0.218)
  br label %49

; <label>:38:                                     ; preds = %34
  %.0.2.020 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %1, i32 0, i32 0, i32 2, i32 0
  %.01.2.021 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %0, i32 0, i32 0, i32 2, i32 0
  %39 = bitcast %struct.ap_int_base.28* %.0.2.020 to i8*
  %40 = call i1 @fpga_fifo_exist_1(i8* %39)
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %38
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.28(%struct.ap_int_base.28* %.01.2.021, %struct.ap_int_base.28* %.0.2.020)
  br label %49

; <label>:42:                                     ; preds = %38
  %.0.2.0.022 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %1, i32 0, i32 0, i32 2, i32 0, i32 0
  %.01.2.0.023 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %0, i32 0, i32 0, i32 2, i32 0, i32 0
  %43 = bitcast %struct.ssdm_int.29* %.0.2.0.022 to i8*
  %44 = call i1 @fpga_fifo_exist_1(i8* %43)
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %42
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.29(%struct.ssdm_int.29* %.01.2.0.023, %struct.ssdm_int.29* %.0.2.0.022)
  br label %49

; <label>:46:                                     ; preds = %42
  %.01.2.0.0.025.gep69 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %47 = bitcast i6* %.01.2.0.0.025.gep69 to i8*
  %.0.2.0.0.024.gep70 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %1, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %48 = bitcast i6* %.0.2.0.0.024.gep70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %47, i8* align 1 %48, i64 1, i1 false)
  br label %49

; <label>:49:                                     ; preds = %46, %45, %41, %37
  %.0.326 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %1, i32 0, i32 0, i32 3
  %.01.327 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %0, i32 0, i32 0, i32 3
  %50 = bitcast %struct.ap_uint.24* %.0.326 to i8*
  %51 = call i1 @fpga_fifo_exist_1(i8* %50)
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %49
  call fastcc void @streamcpy_hls.p0struct.ap_uint.24(%struct.ap_uint.24* %.01.327, %struct.ap_uint.24* %.0.326)
  br label %64

; <label>:53:                                     ; preds = %49
  %.0.3.028 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %1, i32 0, i32 0, i32 3, i32 0
  %.01.3.029 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %0, i32 0, i32 0, i32 3, i32 0
  %54 = bitcast %struct.ap_int_base.25* %.0.3.028 to i8*
  %55 = call i1 @fpga_fifo_exist_1(i8* %54)
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %53
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.25(%struct.ap_int_base.25* %.01.3.029, %struct.ap_int_base.25* %.0.3.028)
  br label %64

; <label>:57:                                     ; preds = %53
  %.0.3.0.030 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %1, i32 0, i32 0, i32 3, i32 0, i32 0
  %.01.3.0.031 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %0, i32 0, i32 0, i32 3, i32 0, i32 0
  %58 = bitcast %struct.ssdm_int.26* %.0.3.0.030 to i8*
  %59 = call i1 @fpga_fifo_exist_1(i8* %58)
  br i1 %59, label %60, label %61

; <label>:60:                                     ; preds = %57
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.26(%struct.ssdm_int.26* %.01.3.0.031, %struct.ssdm_int.26* %.0.3.0.030)
  br label %64

; <label>:61:                                     ; preds = %57
  %.01.3.0.0.033.gep71 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %62 = bitcast i1* %.01.3.0.0.033.gep71 to i8*
  %.0.3.0.0.032.gep72 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %1, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %63 = bitcast i1* %.0.3.0.0.032.gep72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %62, i8* align 1 %63, i64 1, i1 false)
  br label %64

; <label>:64:                                     ; preds = %61, %60, %56, %52
  %.0.434 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %1, i32 0, i32 0, i32 4
  %.01.435 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %0, i32 0, i32 0, i32 4
  %65 = bitcast %struct.ap_uint.24* %.0.434 to i8*
  %66 = call i1 @fpga_fifo_exist_1(i8* %65)
  br i1 %66, label %67, label %68

; <label>:67:                                     ; preds = %64
  call fastcc void @streamcpy_hls.p0struct.ap_uint.24(%struct.ap_uint.24* %.01.435, %struct.ap_uint.24* %.0.434)
  br label %79

; <label>:68:                                     ; preds = %64
  %.0.4.036 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %1, i32 0, i32 0, i32 4, i32 0
  %.01.4.037 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %0, i32 0, i32 0, i32 4, i32 0
  %69 = bitcast %struct.ap_int_base.25* %.0.4.036 to i8*
  %70 = call i1 @fpga_fifo_exist_1(i8* %69)
  br i1 %70, label %71, label %72

; <label>:71:                                     ; preds = %68
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.25(%struct.ap_int_base.25* %.01.4.037, %struct.ap_int_base.25* %.0.4.036)
  br label %79

; <label>:72:                                     ; preds = %68
  %.0.4.0.038 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %1, i32 0, i32 0, i32 4, i32 0, i32 0
  %.01.4.0.039 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %0, i32 0, i32 0, i32 4, i32 0, i32 0
  %73 = bitcast %struct.ssdm_int.26* %.0.4.0.038 to i8*
  %74 = call i1 @fpga_fifo_exist_1(i8* %73)
  br i1 %74, label %75, label %76

; <label>:75:                                     ; preds = %72
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.26(%struct.ssdm_int.26* %.01.4.0.039, %struct.ssdm_int.26* %.0.4.0.038)
  br label %79

; <label>:76:                                     ; preds = %72
  %.01.4.0.0.041.gep73 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %0, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0
  %77 = bitcast i1* %.01.4.0.0.041.gep73 to i8*
  %.0.4.0.0.040.gep74 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %1, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0
  %78 = bitcast i1* %.0.4.0.0.040.gep74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %77, i8* align 1 %78, i64 1, i1 false)
  br label %79

; <label>:79:                                     ; preds = %76, %75, %71, %67
  %.0.542 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %1, i32 0, i32 0, i32 5
  %.01.543 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %0, i32 0, i32 0, i32 5
  %80 = bitcast %struct.ap_uint* %.0.542 to i8*
  %81 = call i1 @fpga_fifo_exist_4(i8* %80)
  br i1 %81, label %82, label %83

; <label>:82:                                     ; preds = %79
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* %.01.543, %struct.ap_uint* %.0.542)
  br label %94

; <label>:83:                                     ; preds = %79
  %.0.5.044 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %1, i32 0, i32 0, i32 5, i32 0
  %.01.5.045 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %0, i32 0, i32 0, i32 5, i32 0
  %84 = bitcast %struct.ap_int_base* %.0.5.044 to i8*
  %85 = call i1 @fpga_fifo_exist_4(i8* %84)
  br i1 %85, label %86, label %87

; <label>:86:                                     ; preds = %83
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* %.01.5.045, %struct.ap_int_base* %.0.5.044)
  br label %94

; <label>:87:                                     ; preds = %83
  %.0.5.0.046 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %1, i32 0, i32 0, i32 5, i32 0, i32 0
  %.01.5.0.047 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %0, i32 0, i32 0, i32 5, i32 0, i32 0
  %88 = bitcast %struct.ssdm_int* %.0.5.0.046 to i8*
  %89 = call i1 @fpga_fifo_exist_4(i8* %88)
  br i1 %89, label %90, label %91

; <label>:90:                                     ; preds = %87
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %.01.5.0.047, %struct.ssdm_int* %.0.5.0.046)
  br label %94

; <label>:91:                                     ; preds = %87
  %.01.5.0.0.049.gep75 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %0, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0
  %92 = bitcast i32* %.01.5.0.0.049.gep75 to i8*
  %.0.5.0.0.048.gep76 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %1, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0
  %93 = bitcast i32* %.0.5.0.0.048.gep76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %92, i8* align 1 %93, i64 4, i1 false)
  br label %94

; <label>:94:                                     ; preds = %91, %90, %86, %82
  %.0.650 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %1, i32 0, i32 0, i32 6
  %.01.651 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %0, i32 0, i32 0, i32 6
  %95 = bitcast %struct.ap_uint.30* %.0.650 to i8*
  %96 = call i1 @fpga_fifo_exist_1(i8* %95)
  br i1 %96, label %97, label %98

; <label>:97:                                     ; preds = %94
  call fastcc void @streamcpy_hls.p0struct.ap_uint.30(%struct.ap_uint.30* %.01.651, %struct.ap_uint.30* %.0.650)
  br label %109

; <label>:98:                                     ; preds = %94
  %.0.6.052 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %1, i32 0, i32 0, i32 6, i32 0
  %.01.6.053 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %0, i32 0, i32 0, i32 6, i32 0
  %99 = bitcast %struct.ap_int_base.31* %.0.6.052 to i8*
  %100 = call i1 @fpga_fifo_exist_1(i8* %99)
  br i1 %100, label %101, label %102

; <label>:101:                                    ; preds = %98
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.31(%struct.ap_int_base.31* %.01.6.053, %struct.ap_int_base.31* %.0.6.052)
  br label %109

; <label>:102:                                    ; preds = %98
  %.0.6.0.054 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %1, i32 0, i32 0, i32 6, i32 0, i32 0
  %.01.6.0.055 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %0, i32 0, i32 0, i32 6, i32 0, i32 0
  %103 = bitcast %struct.ssdm_int.32* %.0.6.0.054 to i8*
  %104 = call i1 @fpga_fifo_exist_1(i8* %103)
  br i1 %104, label %105, label %106

; <label>:105:                                    ; preds = %102
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.32(%struct.ssdm_int.32* %.01.6.0.055, %struct.ssdm_int.32* %.0.6.0.054)
  br label %109

; <label>:106:                                    ; preds = %102
  %.01.6.0.0.057.gep77 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %0, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0
  %107 = bitcast i4* %.01.6.0.0.057.gep77 to i8*
  %.0.6.0.0.056.gep78 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %1, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0
  %108 = bitcast i4* %.0.6.0.0.056.gep78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %107, i8* align 1 %108, i64 1, i1 false)
  br label %109

; <label>:109:                                    ; preds = %106, %105, %101, %97
  %.0.758 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %1, i32 0, i32 0, i32 7
  %.01.759 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %0, i32 0, i32 0, i32 7
  %110 = bitcast %struct.ap_uint.30* %.0.758 to i8*
  %111 = call i1 @fpga_fifo_exist_1(i8* %110)
  br i1 %111, label %112, label %113

; <label>:112:                                    ; preds = %109
  call fastcc void @streamcpy_hls.p0struct.ap_uint.30(%struct.ap_uint.30* %.01.759, %struct.ap_uint.30* %.0.758)
  br label %ret

; <label>:113:                                    ; preds = %109
  %.0.7.060 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %1, i32 0, i32 0, i32 7, i32 0
  %.01.7.061 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %0, i32 0, i32 0, i32 7, i32 0
  %114 = bitcast %struct.ap_int_base.31* %.0.7.060 to i8*
  %115 = call i1 @fpga_fifo_exist_1(i8* %114)
  br i1 %115, label %116, label %117

; <label>:116:                                    ; preds = %113
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.31(%struct.ap_int_base.31* %.01.7.061, %struct.ap_int_base.31* %.0.7.060)
  br label %ret

; <label>:117:                                    ; preds = %113
  %.0.7.0.062 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %1, i32 0, i32 0, i32 7, i32 0, i32 0
  %.01.7.0.063 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %0, i32 0, i32 0, i32 7, i32 0, i32 0
  %118 = bitcast %struct.ssdm_int.32* %.0.7.0.062 to i8*
  %119 = call i1 @fpga_fifo_exist_1(i8* %118)
  br i1 %119, label %120, label %121

; <label>:120:                                    ; preds = %117
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.32(%struct.ssdm_int.32* %.01.7.0.063, %struct.ssdm_int.32* %.0.7.0.062)
  br label %ret

; <label>:121:                                    ; preds = %117
  %.01.7.0.0.065.gep79 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0
  %122 = bitcast i4* %.01.7.0.0.065.gep79 to i8*
  %.0.7.0.0.064.gep80 = getelementptr %"class.hls::stream.20", %"class.hls::stream.20"* %1, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0
  %123 = bitcast i4* %.0.7.0.0.064.gep80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %122, i8* align 1 %123, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %121, %120, %116, %112, %7, %entry
  ret void
}

declare i1 @fpga_fifo_exist_16(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.20"(%"class.hls::stream.20"* noalias nocapture align 512, %"class.hls::stream.20"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream.20"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream.20"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream.20"* %2 to i8*
  %6 = bitcast %"class.hls::stream.20"* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream.20", %"class.hls::stream.20"* %2
  %8 = bitcast %"class.hls::stream.20"* %2 to i8*
  %9 = bitcast %"class.hls::stream.20"* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !20

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream.20"* %1 to i8*
  %11 = bitcast %"class.hls::stream.20"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 16, i1 false)
  ret void
}

declare i1 @fpga_fifo_exist_4(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.21(%struct.ap_uint.21* noalias nocapture align 512, %struct.ap_uint.21* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint.21
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.21* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.21* %2 to i8*
  %6 = bitcast %struct.ap_uint.21* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.21, %struct.ap_uint.21* %2
  %8 = bitcast %struct.ap_uint.21* %2 to i8*
  %9 = bitcast %struct.ap_uint.21* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !21

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.21* %1 to i8*
  %11 = bitcast %struct.ap_uint.21* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.22(%struct.ap_int_base.22* noalias nocapture align 512, %struct.ap_int_base.22* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.22
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.22* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.22* %2 to i8*
  %6 = bitcast %struct.ap_int_base.22* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.22, %struct.ap_int_base.22* %2
  %8 = bitcast %struct.ap_int_base.22* %2 to i8*
  %9 = bitcast %struct.ap_int_base.22* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !22

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.22* %1 to i8*
  %11 = bitcast %struct.ap_int_base.22* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.23(%struct.ssdm_int.23* noalias nocapture align 512, %struct.ssdm_int.23* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int.23
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.23* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.23* %2 to i8*
  %6 = bitcast %struct.ssdm_int.23* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.23, %struct.ssdm_int.23* %2
  %8 = bitcast %struct.ssdm_int.23* %2 to i8*
  %9 = bitcast %struct.ssdm_int.23* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !23

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.23* %1 to i8*
  %11 = bitcast %struct.ssdm_int.23* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.27(%struct.ap_uint.27* noalias nocapture, %struct.ap_uint.27* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint.27
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.27* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.27* %2 to i8*
  %6 = bitcast %struct.ap_uint.27* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.27, %struct.ap_uint.27* %2
  %8 = bitcast %struct.ap_uint.27* %2 to i8*
  %9 = bitcast %struct.ap_uint.27* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !24

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.27* %1 to i8*
  %11 = bitcast %struct.ap_uint.27* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.28(%struct.ap_int_base.28* noalias nocapture, %struct.ap_int_base.28* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.28
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.28* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.28* %2 to i8*
  %6 = bitcast %struct.ap_int_base.28* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.28, %struct.ap_int_base.28* %2
  %8 = bitcast %struct.ap_int_base.28* %2 to i8*
  %9 = bitcast %struct.ap_int_base.28* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !25

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.28* %1 to i8*
  %11 = bitcast %struct.ap_int_base.28* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.29(%struct.ssdm_int.29* noalias nocapture, %struct.ssdm_int.29* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int.29
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.29* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.29* %2 to i8*
  %6 = bitcast %struct.ssdm_int.29* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.29, %struct.ssdm_int.29* %2
  %8 = bitcast %struct.ssdm_int.29* %2 to i8*
  %9 = bitcast %struct.ssdm_int.29* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !26

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.29* %1 to i8*
  %11 = bitcast %struct.ssdm_int.29* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* noalias nocapture, %struct.ap_uint* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint* %2 to i8*
  %6 = bitcast %struct.ap_uint* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint, %struct.ap_uint* %2
  %8 = bitcast %struct.ap_uint* %2 to i8*
  %9 = bitcast %struct.ap_uint* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !27

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint* %1 to i8*
  %11 = bitcast %struct.ap_uint* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* noalias nocapture, %struct.ap_int_base* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base* %2 to i8*
  %6 = bitcast %struct.ap_int_base* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base, %struct.ap_int_base* %2
  %8 = bitcast %struct.ap_int_base* %2 to i8*
  %9 = bitcast %struct.ap_int_base* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !28

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base* %1 to i8*
  %11 = bitcast %struct.ap_int_base* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* noalias nocapture, %struct.ssdm_int* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int* %2 to i8*
  %6 = bitcast %struct.ssdm_int* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int, %struct.ssdm_int* %2
  %8 = bitcast %struct.ssdm_int* %2 to i8*
  %9 = bitcast %struct.ssdm_int* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !29

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int* %1 to i8*
  %11 = bitcast %struct.ssdm_int* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.50"(%"class.hls::stream.50"* noalias align 512, %"class.hls::stream.50"* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %"class.hls::stream.50"* %0, null
  %3 = icmp eq %"class.hls::stream.50"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream.50"* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_16(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream.50"(%"class.hls::stream.50"* nonnull align 512 %0, %"class.hls::stream.50"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0.0.04 = getelementptr %"class.hls::stream.50", %"class.hls::stream.50"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"class.hls::stream.50", %"class.hls::stream.50"* %0, i32 0, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* align 512 %.01.0.05, %struct.ap_uint* %.0.0.04)
  br label %19

; <label>:11:                                     ; preds = %8
  %.0.0.0.06 = getelementptr %"class.hls::stream.50", %"class.hls::stream.50"* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.07 = getelementptr %"class.hls::stream.50", %"class.hls::stream.50"* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* align 512 %.01.0.0.07, %struct.ap_int_base* %.0.0.0.06)
  br label %19

; <label>:14:                                     ; preds = %11
  %.0.0.0.0.08 = getelementptr %"class.hls::stream.50", %"class.hls::stream.50"* %1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.0.09 = getelementptr %"class.hls::stream.50", %"class.hls::stream.50"* %0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %14
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* align 512 %.01.0.0.0.09, %struct.ssdm_int* %.0.0.0.0.08)
  br label %19

; <label>:17:                                     ; preds = %14
  %18 = bitcast %"class.hls::stream.50"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %5, i64 4, i1 false)
  br label %19

; <label>:19:                                     ; preds = %17, %16, %13, %10
  %.0.0.112 = getelementptr %"class.hls::stream.50", %"class.hls::stream.50"* %1, i32 0, i32 0, i32 0, i32 1
  %.01.0.113 = getelementptr %"class.hls::stream.50", %"class.hls::stream.50"* %0, i32 0, i32 0, i32 0, i32 1
  %20 = bitcast %struct.ap_uint.3* %.0.0.112 to i8*
  %21 = call i1 @fpga_fifo_exist_2(i8* %20)
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.0.113, %struct.ap_uint.3* %.0.0.112)
  br label %34

; <label>:23:                                     ; preds = %19
  %.0.0.1.014 = getelementptr %"class.hls::stream.50", %"class.hls::stream.50"* %1, i32 0, i32 0, i32 0, i32 1, i32 0
  %.01.0.1.015 = getelementptr %"class.hls::stream.50", %"class.hls::stream.50"* %0, i32 0, i32 0, i32 0, i32 1, i32 0
  %24 = bitcast %struct.ap_int_base.4* %.0.0.1.014 to i8*
  %25 = call i1 @fpga_fifo_exist_2(i8* %24)
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %23
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.0.1.015, %struct.ap_int_base.4* %.0.0.1.014)
  br label %34

; <label>:27:                                     ; preds = %23
  %.0.0.1.0.016 = getelementptr %"class.hls::stream.50", %"class.hls::stream.50"* %1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %.01.0.1.0.017 = getelementptr %"class.hls::stream.50", %"class.hls::stream.50"* %0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %28 = bitcast %struct.ssdm_int.5* %.0.0.1.0.016 to i8*
  %29 = call i1 @fpga_fifo_exist_2(i8* %28)
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %27
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.0.1.0.017, %struct.ssdm_int.5* %.0.0.1.0.016)
  br label %34

; <label>:31:                                     ; preds = %27
  %.01.0.1.0.0.019.gep41 = getelementptr %"class.hls::stream.50", %"class.hls::stream.50"* %0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %32 = bitcast i16* %.01.0.1.0.0.019.gep41 to i8*
  %.0.0.1.0.0.018.gep42 = getelementptr %"class.hls::stream.50", %"class.hls::stream.50"* %1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %33 = bitcast i16* %.0.0.1.0.0.018.gep42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %33, i64 2, i1 false)
  br label %34

; <label>:34:                                     ; preds = %31, %30, %26, %22
  %.0.0.220 = getelementptr %"class.hls::stream.50", %"class.hls::stream.50"* %1, i32 0, i32 0, i32 0, i32 2
  %.01.0.221 = getelementptr %"class.hls::stream.50", %"class.hls::stream.50"* %0, i32 0, i32 0, i32 0, i32 2
  %35 = bitcast %struct.ap_uint.3* %.0.0.220 to i8*
  %36 = call i1 @fpga_fifo_exist_2(i8* %35)
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %34
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.0.221, %struct.ap_uint.3* %.0.0.220)
  br label %49

; <label>:38:                                     ; preds = %34
  %.0.0.2.022 = getelementptr %"class.hls::stream.50", %"class.hls::stream.50"* %1, i32 0, i32 0, i32 0, i32 2, i32 0
  %.01.0.2.023 = getelementptr %"class.hls::stream.50", %"class.hls::stream.50"* %0, i32 0, i32 0, i32 0, i32 2, i32 0
  %39 = bitcast %struct.ap_int_base.4* %.0.0.2.022 to i8*
  %40 = call i1 @fpga_fifo_exist_2(i8* %39)
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %38
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.0.2.023, %struct.ap_int_base.4* %.0.0.2.022)
  br label %49

; <label>:42:                                     ; preds = %38
  %.0.0.2.0.024 = getelementptr %"class.hls::stream.50", %"class.hls::stream.50"* %1, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0
  %.01.0.2.0.025 = getelementptr %"class.hls::stream.50", %"class.hls::stream.50"* %0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0
  %43 = bitcast %struct.ssdm_int.5* %.0.0.2.0.024 to i8*
  %44 = call i1 @fpga_fifo_exist_2(i8* %43)
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %42
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.0.2.0.025, %struct.ssdm_int.5* %.0.0.2.0.024)
  br label %49

; <label>:46:                                     ; preds = %42
  %.01.0.2.0.0.027.gep43 = getelementptr %"class.hls::stream.50", %"class.hls::stream.50"* %0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %47 = bitcast i16* %.01.0.2.0.0.027.gep43 to i8*
  %.0.0.2.0.0.026.gep44 = getelementptr %"class.hls::stream.50", %"class.hls::stream.50"* %1, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %48 = bitcast i16* %.0.0.2.0.0.026.gep44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %47, i8* align 1 %48, i64 2, i1 false)
  br label %49

; <label>:49:                                     ; preds = %46, %45, %41, %37
  %.0.128 = getelementptr %"class.hls::stream.50", %"class.hls::stream.50"* %1, i32 0, i32 0, i32 1
  %.01.129 = getelementptr %"class.hls::stream.50", %"class.hls::stream.50"* %0, i32 0, i32 0, i32 1
  %50 = bitcast %struct.ap_uint.3* %.0.128 to i8*
  %51 = call i1 @fpga_fifo_exist_2(i8* %50)
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %49
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.129, %struct.ap_uint.3* %.0.128)
  br label %64

; <label>:53:                                     ; preds = %49
  %.0.1.030 = getelementptr %"class.hls::stream.50", %"class.hls::stream.50"* %1, i32 0, i32 0, i32 1, i32 0
  %.01.1.031 = getelementptr %"class.hls::stream.50", %"class.hls::stream.50"* %0, i32 0, i32 0, i32 1, i32 0
  %54 = bitcast %struct.ap_int_base.4* %.0.1.030 to i8*
  %55 = call i1 @fpga_fifo_exist_2(i8* %54)
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %53
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.1.031, %struct.ap_int_base.4* %.0.1.030)
  br label %64

; <label>:57:                                     ; preds = %53
  %.0.1.0.032 = getelementptr %"class.hls::stream.50", %"class.hls::stream.50"* %1, i32 0, i32 0, i32 1, i32 0, i32 0
  %.01.1.0.033 = getelementptr %"class.hls::stream.50", %"class.hls::stream.50"* %0, i32 0, i32 0, i32 1, i32 0, i32 0
  %58 = bitcast %struct.ssdm_int.5* %.0.1.0.032 to i8*
  %59 = call i1 @fpga_fifo_exist_2(i8* %58)
  br i1 %59, label %60, label %61

; <label>:60:                                     ; preds = %57
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.1.0.033, %struct.ssdm_int.5* %.0.1.0.032)
  br label %64

; <label>:61:                                     ; preds = %57
  %.01.1.0.0.035.gep45 = getelementptr %"class.hls::stream.50", %"class.hls::stream.50"* %0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %62 = bitcast i16* %.01.1.0.0.035.gep45 to i8*
  %.0.1.0.0.034.gep46 = getelementptr %"class.hls::stream.50", %"class.hls::stream.50"* %1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %63 = bitcast i16* %.0.1.0.0.034.gep46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %62, i8* align 1 %63, i64 2, i1 false)
  br label %64

; <label>:64:                                     ; preds = %61, %60, %56, %52
  %.01.237.gep47 = getelementptr %"class.hls::stream.50", %"class.hls::stream.50"* %0, i32 0, i32 0, i32 2
  %65 = bitcast i1* %.01.237.gep47 to i8*
  %.0.236.gep48 = getelementptr %"class.hls::stream.50", %"class.hls::stream.50"* %1, i32 0, i32 0, i32 2
  %66 = bitcast i1* %.0.236.gep48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %65, i8* align 1 %66, i64 1, i1 false)
  %.01.339.gep49 = getelementptr %"class.hls::stream.50", %"class.hls::stream.50"* %0, i32 0, i32 0, i32 3
  %67 = bitcast i32* %.01.339.gep49 to i8*
  %.0.338.gep50 = getelementptr %"class.hls::stream.50", %"class.hls::stream.50"* %1, i32 0, i32 0, i32 3
  %68 = bitcast i32* %.0.338.gep50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %67, i8* align 1 %68, i64 4, i1 false)
  br label %ret

ret:                                              ; preds = %64, %7, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.50"(%"class.hls::stream.50"* noalias nocapture align 512, %"class.hls::stream.50"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream.50"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream.50"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream.50"* %2 to i8*
  %6 = bitcast %"class.hls::stream.50"* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream.50", %"class.hls::stream.50"* %2
  %8 = bitcast %"class.hls::stream.50"* %2 to i8*
  %9 = bitcast %"class.hls::stream.50"* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !30

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream.50"* %1 to i8*
  %11 = bitcast %"class.hls::stream.50"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 16, i1 false)
  ret void
}

declare i1 @fpga_fifo_exist_2(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* noalias nocapture, %struct.ap_uint.3* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint.3
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.3* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_2(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.3* %2 to i8*
  %6 = bitcast %struct.ap_uint.3* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.3, %struct.ap_uint.3* %2
  %8 = bitcast %struct.ap_uint.3* %2 to i8*
  %9 = bitcast %struct.ap_uint.3* %0 to i8*
  call void @fpga_fifo_push_2(i8* %8, i8* %9)
  br label %empty, !llvm.loop !31

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.3* %1 to i8*
  %11 = bitcast %struct.ap_uint.3* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 2, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* noalias nocapture, %struct.ap_int_base.4* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.4
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.4* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_2(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.4* %2 to i8*
  %6 = bitcast %struct.ap_int_base.4* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.4, %struct.ap_int_base.4* %2
  %8 = bitcast %struct.ap_int_base.4* %2 to i8*
  %9 = bitcast %struct.ap_int_base.4* %0 to i8*
  call void @fpga_fifo_push_2(i8* %8, i8* %9)
  br label %empty, !llvm.loop !32

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.4* %1 to i8*
  %11 = bitcast %struct.ap_int_base.4* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 2, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* noalias nocapture, %struct.ssdm_int.5* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int.5
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.5* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_2(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.5* %2 to i8*
  %6 = bitcast %struct.ssdm_int.5* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.5, %struct.ssdm_int.5* %2
  %8 = bitcast %struct.ssdm_int.5* %2 to i8*
  %9 = bitcast %struct.ssdm_int.5* %0 to i8*
  call void @fpga_fifo_push_2(i8* %8, i8* %9)
  br label %empty, !llvm.loop !33

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.5* %1 to i8*
  %11 = bitcast %struct.ssdm_int.5* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 2, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.51"(%"class.hls::stream.51"* noalias align 512, %"class.hls::stream.51"* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %"class.hls::stream.51"* %0, null
  %3 = icmp eq %"class.hls::stream.51"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream.51"* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_20(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream.51"(%"class.hls::stream.51"* nonnull align 512 %0, %"class.hls::stream.51"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %9 = bitcast %"class.hls::stream.51"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %5, i64 4, i1 false)
  %.0.1.06 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %1, i32 0, i32 0, i32 1, i32 0
  %.01.1.07 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %0, i32 0, i32 0, i32 1, i32 0
  %10 = bitcast %struct.ap_uint* %.0.1.06 to i8*
  %11 = call i1 @fpga_fifo_exist_4(i8* %10)
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* %.01.1.07, %struct.ap_uint* %.0.1.06)
  br label %24

; <label>:13:                                     ; preds = %8
  %.0.1.0.08 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %1, i32 0, i32 0, i32 1, i32 0, i32 0
  %.01.1.0.09 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %0, i32 0, i32 0, i32 1, i32 0, i32 0
  %14 = bitcast %struct.ap_int_base* %.0.1.0.08 to i8*
  %15 = call i1 @fpga_fifo_exist_4(i8* %14)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* %.01.1.0.09, %struct.ap_int_base* %.0.1.0.08)
  br label %24

; <label>:17:                                     ; preds = %13
  %.0.1.0.0.010 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %.01.1.0.0.011 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %18 = bitcast %struct.ssdm_int* %.0.1.0.0.010 to i8*
  %19 = call i1 @fpga_fifo_exist_4(i8* %18)
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %17
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %.01.1.0.0.011, %struct.ssdm_int* %.0.1.0.0.010)
  br label %24

; <label>:21:                                     ; preds = %17
  %.01.1.0.0.0.013.gep43 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0
  %22 = bitcast i32* %.01.1.0.0.0.013.gep43 to i8*
  %.0.1.0.0.0.012.gep44 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0
  %23 = bitcast i32* %.0.1.0.0.0.012.gep44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %22, i8* align 1 %23, i64 4, i1 false)
  br label %24

; <label>:24:                                     ; preds = %21, %20, %16, %12
  %.0.1.114 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %1, i32 0, i32 0, i32 1, i32 1
  %.01.1.115 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %0, i32 0, i32 0, i32 1, i32 1
  %25 = bitcast %struct.ap_uint.3* %.0.1.114 to i8*
  %26 = call i1 @fpga_fifo_exist_2(i8* %25)
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %24
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.1.115, %struct.ap_uint.3* %.0.1.114)
  br label %39

; <label>:28:                                     ; preds = %24
  %.0.1.1.016 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %1, i32 0, i32 0, i32 1, i32 1, i32 0
  %.01.1.1.017 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %0, i32 0, i32 0, i32 1, i32 1, i32 0
  %29 = bitcast %struct.ap_int_base.4* %.0.1.1.016 to i8*
  %30 = call i1 @fpga_fifo_exist_2(i8* %29)
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %28
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.1.1.017, %struct.ap_int_base.4* %.0.1.1.016)
  br label %39

; <label>:32:                                     ; preds = %28
  %.0.1.1.0.018 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0
  %.01.1.1.0.019 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0
  %33 = bitcast %struct.ssdm_int.5* %.0.1.1.0.018 to i8*
  %34 = call i1 @fpga_fifo_exist_2(i8* %33)
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %32
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.1.1.0.019, %struct.ssdm_int.5* %.0.1.1.0.018)
  br label %39

; <label>:36:                                     ; preds = %32
  %.01.1.1.0.0.021.gep45 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0
  %37 = bitcast i16* %.01.1.1.0.0.021.gep45 to i8*
  %.0.1.1.0.0.020.gep46 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0
  %38 = bitcast i16* %.0.1.1.0.0.020.gep46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %37, i8* align 1 %38, i64 2, i1 false)
  br label %39

; <label>:39:                                     ; preds = %36, %35, %31, %27
  %.0.1.222 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %1, i32 0, i32 0, i32 1, i32 2
  %.01.1.223 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %0, i32 0, i32 0, i32 1, i32 2
  %40 = bitcast %struct.ap_uint.3* %.0.1.222 to i8*
  %41 = call i1 @fpga_fifo_exist_2(i8* %40)
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %39
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.1.223, %struct.ap_uint.3* %.0.1.222)
  br label %54

; <label>:43:                                     ; preds = %39
  %.0.1.2.024 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %1, i32 0, i32 0, i32 1, i32 2, i32 0
  %.01.1.2.025 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %0, i32 0, i32 0, i32 1, i32 2, i32 0
  %44 = bitcast %struct.ap_int_base.4* %.0.1.2.024 to i8*
  %45 = call i1 @fpga_fifo_exist_2(i8* %44)
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %43
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.1.2.025, %struct.ap_int_base.4* %.0.1.2.024)
  br label %54

; <label>:47:                                     ; preds = %43
  %.0.1.2.0.026 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %1, i32 0, i32 0, i32 1, i32 2, i32 0, i32 0
  %.01.1.2.0.027 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %0, i32 0, i32 0, i32 1, i32 2, i32 0, i32 0
  %48 = bitcast %struct.ssdm_int.5* %.0.1.2.0.026 to i8*
  %49 = call i1 @fpga_fifo_exist_2(i8* %48)
  br i1 %49, label %50, label %51

; <label>:50:                                     ; preds = %47
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.1.2.0.027, %struct.ssdm_int.5* %.0.1.2.0.026)
  br label %54

; <label>:51:                                     ; preds = %47
  %.01.1.2.0.0.029.gep47 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %0, i32 0, i32 0, i32 1, i32 2, i32 0, i32 0, i32 0
  %52 = bitcast i16* %.01.1.2.0.0.029.gep47 to i8*
  %.0.1.2.0.0.028.gep48 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %1, i32 0, i32 0, i32 1, i32 2, i32 0, i32 0, i32 0
  %53 = bitcast i16* %.0.1.2.0.0.028.gep48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %52, i8* align 1 %53, i64 2, i1 false)
  br label %54

; <label>:54:                                     ; preds = %51, %50, %46, %42
  %.0.230 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %1, i32 0, i32 0, i32 2
  %.01.231 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %0, i32 0, i32 0, i32 2
  %55 = bitcast %struct.ap_uint.3* %.0.230 to i8*
  %56 = call i1 @fpga_fifo_exist_2(i8* %55)
  br i1 %56, label %57, label %58

; <label>:57:                                     ; preds = %54
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.231, %struct.ap_uint.3* %.0.230)
  br label %69

; <label>:58:                                     ; preds = %54
  %.0.2.032 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %1, i32 0, i32 0, i32 2, i32 0
  %.01.2.033 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %0, i32 0, i32 0, i32 2, i32 0
  %59 = bitcast %struct.ap_int_base.4* %.0.2.032 to i8*
  %60 = call i1 @fpga_fifo_exist_2(i8* %59)
  br i1 %60, label %61, label %62

; <label>:61:                                     ; preds = %58
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.2.033, %struct.ap_int_base.4* %.0.2.032)
  br label %69

; <label>:62:                                     ; preds = %58
  %.0.2.0.034 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %1, i32 0, i32 0, i32 2, i32 0, i32 0
  %.01.2.0.035 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %0, i32 0, i32 0, i32 2, i32 0, i32 0
  %63 = bitcast %struct.ssdm_int.5* %.0.2.0.034 to i8*
  %64 = call i1 @fpga_fifo_exist_2(i8* %63)
  br i1 %64, label %65, label %66

; <label>:65:                                     ; preds = %62
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.2.0.035, %struct.ssdm_int.5* %.0.2.0.034)
  br label %69

; <label>:66:                                     ; preds = %62
  %.01.2.0.0.037.gep49 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %67 = bitcast i16* %.01.2.0.0.037.gep49 to i8*
  %.0.2.0.0.036.gep50 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %1, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %68 = bitcast i16* %.0.2.0.0.036.gep50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %67, i8* align 1 %68, i64 2, i1 false)
  br label %69

; <label>:69:                                     ; preds = %66, %65, %61, %57
  %.01.339.gep51 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %0, i32 0, i32 0, i32 3
  %70 = bitcast i1* %.01.339.gep51 to i8*
  %.0.338.gep52 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %1, i32 0, i32 0, i32 3
  %71 = bitcast i1* %.0.338.gep52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %70, i8* align 1 %71, i64 1, i1 false)
  %.01.441.gep53 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %0, i32 0, i32 0, i32 4
  %72 = bitcast i32* %.01.441.gep53 to i8*
  %.0.440.gep54 = getelementptr %"class.hls::stream.51", %"class.hls::stream.51"* %1, i32 0, i32 0, i32 4
  %73 = bitcast i32* %.0.440.gep54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %72, i8* align 1 %73, i64 4, i1 false)
  br label %ret

ret:                                              ; preds = %69, %7, %entry
  ret void
}

declare i1 @fpga_fifo_exist_20(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.51"(%"class.hls::stream.51"* noalias nocapture align 512, %"class.hls::stream.51"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream.51"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream.51"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_20(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream.51"* %2 to i8*
  %6 = bitcast %"class.hls::stream.51"* %1 to i8*
  call void @fpga_fifo_pop_20(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream.51", %"class.hls::stream.51"* %2
  %8 = bitcast %"class.hls::stream.51"* %2 to i8*
  %9 = bitcast %"class.hls::stream.51"* %0 to i8*
  call void @fpga_fifo_push_20(i8* %8, i8* %9)
  br label %empty, !llvm.loop !34

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream.51"* %1 to i8*
  %11 = bitcast %"class.hls::stream.51"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 20, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.52"(%"class.hls::stream.52"* noalias align 512, %"class.hls::stream.52"* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %"class.hls::stream.52"* %0, null
  %3 = icmp eq %"class.hls::stream.52"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream.52"* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_12(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream.52"(%"class.hls::stream.52"* nonnull align 512 %0, %"class.hls::stream.52"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0.0.04 = getelementptr %"class.hls::stream.52", %"class.hls::stream.52"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"class.hls::stream.52", %"class.hls::stream.52"* %0, i32 0, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* align 512 %.01.0.05, %struct.ap_uint* %.0.0.04)
  br label %19

; <label>:11:                                     ; preds = %8
  %.0.0.0.06 = getelementptr %"class.hls::stream.52", %"class.hls::stream.52"* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.07 = getelementptr %"class.hls::stream.52", %"class.hls::stream.52"* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* align 512 %.01.0.0.07, %struct.ap_int_base* %.0.0.0.06)
  br label %19

; <label>:14:                                     ; preds = %11
  %.0.0.0.0.08 = getelementptr %"class.hls::stream.52", %"class.hls::stream.52"* %1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.0.09 = getelementptr %"class.hls::stream.52", %"class.hls::stream.52"* %0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %14
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* align 512 %.01.0.0.0.09, %struct.ssdm_int* %.0.0.0.0.08)
  br label %19

; <label>:17:                                     ; preds = %14
  %18 = bitcast %"class.hls::stream.52"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %5, i64 4, i1 false)
  br label %19

; <label>:19:                                     ; preds = %17, %16, %13, %10
  %.0.0.112 = getelementptr %"class.hls::stream.52", %"class.hls::stream.52"* %1, i32 0, i32 0, i32 0, i32 1
  %.01.0.113 = getelementptr %"class.hls::stream.52", %"class.hls::stream.52"* %0, i32 0, i32 0, i32 0, i32 1
  %20 = bitcast %struct.ap_uint.3* %.0.0.112 to i8*
  %21 = call i1 @fpga_fifo_exist_2(i8* %20)
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.0.113, %struct.ap_uint.3* %.0.0.112)
  br label %34

; <label>:23:                                     ; preds = %19
  %.0.0.1.014 = getelementptr %"class.hls::stream.52", %"class.hls::stream.52"* %1, i32 0, i32 0, i32 0, i32 1, i32 0
  %.01.0.1.015 = getelementptr %"class.hls::stream.52", %"class.hls::stream.52"* %0, i32 0, i32 0, i32 0, i32 1, i32 0
  %24 = bitcast %struct.ap_int_base.4* %.0.0.1.014 to i8*
  %25 = call i1 @fpga_fifo_exist_2(i8* %24)
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %23
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.0.1.015, %struct.ap_int_base.4* %.0.0.1.014)
  br label %34

; <label>:27:                                     ; preds = %23
  %.0.0.1.0.016 = getelementptr %"class.hls::stream.52", %"class.hls::stream.52"* %1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %.01.0.1.0.017 = getelementptr %"class.hls::stream.52", %"class.hls::stream.52"* %0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %28 = bitcast %struct.ssdm_int.5* %.0.0.1.0.016 to i8*
  %29 = call i1 @fpga_fifo_exist_2(i8* %28)
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %27
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.0.1.0.017, %struct.ssdm_int.5* %.0.0.1.0.016)
  br label %34

; <label>:31:                                     ; preds = %27
  %.01.0.1.0.0.019.gep31 = getelementptr %"class.hls::stream.52", %"class.hls::stream.52"* %0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %32 = bitcast i16* %.01.0.1.0.0.019.gep31 to i8*
  %.0.0.1.0.0.018.gep32 = getelementptr %"class.hls::stream.52", %"class.hls::stream.52"* %1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %33 = bitcast i16* %.0.0.1.0.0.018.gep32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %33, i64 2, i1 false)
  br label %34

; <label>:34:                                     ; preds = %31, %30, %26, %22
  %.0.0.220 = getelementptr %"class.hls::stream.52", %"class.hls::stream.52"* %1, i32 0, i32 0, i32 0, i32 2
  %.01.0.221 = getelementptr %"class.hls::stream.52", %"class.hls::stream.52"* %0, i32 0, i32 0, i32 0, i32 2
  %35 = bitcast %struct.ap_uint.3* %.0.0.220 to i8*
  %36 = call i1 @fpga_fifo_exist_2(i8* %35)
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %34
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.0.221, %struct.ap_uint.3* %.0.0.220)
  br label %49

; <label>:38:                                     ; preds = %34
  %.0.0.2.022 = getelementptr %"class.hls::stream.52", %"class.hls::stream.52"* %1, i32 0, i32 0, i32 0, i32 2, i32 0
  %.01.0.2.023 = getelementptr %"class.hls::stream.52", %"class.hls::stream.52"* %0, i32 0, i32 0, i32 0, i32 2, i32 0
  %39 = bitcast %struct.ap_int_base.4* %.0.0.2.022 to i8*
  %40 = call i1 @fpga_fifo_exist_2(i8* %39)
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %38
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.0.2.023, %struct.ap_int_base.4* %.0.0.2.022)
  br label %49

; <label>:42:                                     ; preds = %38
  %.0.0.2.0.024 = getelementptr %"class.hls::stream.52", %"class.hls::stream.52"* %1, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0
  %.01.0.2.0.025 = getelementptr %"class.hls::stream.52", %"class.hls::stream.52"* %0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0
  %43 = bitcast %struct.ssdm_int.5* %.0.0.2.0.024 to i8*
  %44 = call i1 @fpga_fifo_exist_2(i8* %43)
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %42
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.0.2.0.025, %struct.ssdm_int.5* %.0.0.2.0.024)
  br label %49

; <label>:46:                                     ; preds = %42
  %.01.0.2.0.0.027.gep33 = getelementptr %"class.hls::stream.52", %"class.hls::stream.52"* %0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %47 = bitcast i16* %.01.0.2.0.0.027.gep33 to i8*
  %.0.0.2.0.0.026.gep34 = getelementptr %"class.hls::stream.52", %"class.hls::stream.52"* %1, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %48 = bitcast i16* %.0.0.2.0.0.026.gep34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %47, i8* align 1 %48, i64 2, i1 false)
  br label %49

; <label>:49:                                     ; preds = %46, %45, %41, %37
  %.01.129.gep35 = getelementptr %"class.hls::stream.52", %"class.hls::stream.52"* %0, i32 0, i32 0, i32 1
  %50 = bitcast i32* %.01.129.gep35 to i8*
  %.0.128.gep36 = getelementptr %"class.hls::stream.52", %"class.hls::stream.52"* %1, i32 0, i32 0, i32 1
  %51 = bitcast i32* %.0.128.gep36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %50, i8* align 1 %51, i64 4, i1 false)
  br label %ret

ret:                                              ; preds = %49, %7, %entry
  ret void
}

declare i1 @fpga_fifo_exist_12(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.52"(%"class.hls::stream.52"* noalias nocapture align 512, %"class.hls::stream.52"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream.52"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream.52"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_12(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream.52"* %2 to i8*
  %6 = bitcast %"class.hls::stream.52"* %1 to i8*
  call void @fpga_fifo_pop_12(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream.52", %"class.hls::stream.52"* %2
  %8 = bitcast %"class.hls::stream.52"* %2 to i8*
  %9 = bitcast %"class.hls::stream.52"* %0 to i8*
  call void @fpga_fifo_push_12(i8* %8, i8* %9)
  br label %empty, !llvm.loop !35

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream.52"* %1 to i8*
  %11 = bitcast %"class.hls::stream.52"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 12, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.53"(%"class.hls::stream.53"* noalias align 512, %"class.hls::stream.53"* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %"class.hls::stream.53"* %0, null
  %3 = icmp eq %"class.hls::stream.53"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream.53"* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_20(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream.53"(%"class.hls::stream.53"* nonnull align 512 %0, %"class.hls::stream.53"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %9 = bitcast %"class.hls::stream.53"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %5, i64 4, i1 false)
  %.0.1.06 = getelementptr %"class.hls::stream.53", %"class.hls::stream.53"* %1, i32 0, i32 0, i32 1, i32 0
  %.01.1.07 = getelementptr %"class.hls::stream.53", %"class.hls::stream.53"* %0, i32 0, i32 0, i32 1, i32 0
  %10 = bitcast %struct.ap_uint* %.0.1.06 to i8*
  %11 = call i1 @fpga_fifo_exist_4(i8* %10)
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* %.01.1.07, %struct.ap_uint* %.0.1.06)
  br label %24

; <label>:13:                                     ; preds = %8
  %.0.1.0.08 = getelementptr %"class.hls::stream.53", %"class.hls::stream.53"* %1, i32 0, i32 0, i32 1, i32 0, i32 0
  %.01.1.0.09 = getelementptr %"class.hls::stream.53", %"class.hls::stream.53"* %0, i32 0, i32 0, i32 1, i32 0, i32 0
  %14 = bitcast %struct.ap_int_base* %.0.1.0.08 to i8*
  %15 = call i1 @fpga_fifo_exist_4(i8* %14)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* %.01.1.0.09, %struct.ap_int_base* %.0.1.0.08)
  br label %24

; <label>:17:                                     ; preds = %13
  %.0.1.0.0.010 = getelementptr %"class.hls::stream.53", %"class.hls::stream.53"* %1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %.01.1.0.0.011 = getelementptr %"class.hls::stream.53", %"class.hls::stream.53"* %0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %18 = bitcast %struct.ssdm_int* %.0.1.0.0.010 to i8*
  %19 = call i1 @fpga_fifo_exist_4(i8* %18)
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %17
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %.01.1.0.0.011, %struct.ssdm_int* %.0.1.0.0.010)
  br label %24

; <label>:21:                                     ; preds = %17
  %.01.1.0.0.0.013.gep41 = getelementptr %"class.hls::stream.53", %"class.hls::stream.53"* %0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0
  %22 = bitcast i32* %.01.1.0.0.0.013.gep41 to i8*
  %.0.1.0.0.0.012.gep42 = getelementptr %"class.hls::stream.53", %"class.hls::stream.53"* %1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0
  %23 = bitcast i32* %.0.1.0.0.0.012.gep42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %22, i8* align 1 %23, i64 4, i1 false)
  br label %24

; <label>:24:                                     ; preds = %21, %20, %16, %12
  %.0.1.114 = getelementptr %"class.hls::stream.53", %"class.hls::stream.53"* %1, i32 0, i32 0, i32 1, i32 1
  %.01.1.115 = getelementptr %"class.hls::stream.53", %"class.hls::stream.53"* %0, i32 0, i32 0, i32 1, i32 1
  %25 = bitcast %struct.ap_uint.3* %.0.1.114 to i8*
  %26 = call i1 @fpga_fifo_exist_2(i8* %25)
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %24
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.1.115, %struct.ap_uint.3* %.0.1.114)
  br label %39

; <label>:28:                                     ; preds = %24
  %.0.1.1.016 = getelementptr %"class.hls::stream.53", %"class.hls::stream.53"* %1, i32 0, i32 0, i32 1, i32 1, i32 0
  %.01.1.1.017 = getelementptr %"class.hls::stream.53", %"class.hls::stream.53"* %0, i32 0, i32 0, i32 1, i32 1, i32 0
  %29 = bitcast %struct.ap_int_base.4* %.0.1.1.016 to i8*
  %30 = call i1 @fpga_fifo_exist_2(i8* %29)
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %28
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.1.1.017, %struct.ap_int_base.4* %.0.1.1.016)
  br label %39

; <label>:32:                                     ; preds = %28
  %.0.1.1.0.018 = getelementptr %"class.hls::stream.53", %"class.hls::stream.53"* %1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0
  %.01.1.1.0.019 = getelementptr %"class.hls::stream.53", %"class.hls::stream.53"* %0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0
  %33 = bitcast %struct.ssdm_int.5* %.0.1.1.0.018 to i8*
  %34 = call i1 @fpga_fifo_exist_2(i8* %33)
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %32
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.1.1.0.019, %struct.ssdm_int.5* %.0.1.1.0.018)
  br label %39

; <label>:36:                                     ; preds = %32
  %.01.1.1.0.0.021.gep43 = getelementptr %"class.hls::stream.53", %"class.hls::stream.53"* %0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0
  %37 = bitcast i16* %.01.1.1.0.0.021.gep43 to i8*
  %.0.1.1.0.0.020.gep44 = getelementptr %"class.hls::stream.53", %"class.hls::stream.53"* %1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0
  %38 = bitcast i16* %.0.1.1.0.0.020.gep44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %37, i8* align 1 %38, i64 2, i1 false)
  br label %39

; <label>:39:                                     ; preds = %36, %35, %31, %27
  %.0.1.222 = getelementptr %"class.hls::stream.53", %"class.hls::stream.53"* %1, i32 0, i32 0, i32 1, i32 2
  %.01.1.223 = getelementptr %"class.hls::stream.53", %"class.hls::stream.53"* %0, i32 0, i32 0, i32 1, i32 2
  %40 = bitcast %struct.ap_uint.3* %.0.1.222 to i8*
  %41 = call i1 @fpga_fifo_exist_2(i8* %40)
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %39
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.1.223, %struct.ap_uint.3* %.0.1.222)
  br label %54

; <label>:43:                                     ; preds = %39
  %.0.1.2.024 = getelementptr %"class.hls::stream.53", %"class.hls::stream.53"* %1, i32 0, i32 0, i32 1, i32 2, i32 0
  %.01.1.2.025 = getelementptr %"class.hls::stream.53", %"class.hls::stream.53"* %0, i32 0, i32 0, i32 1, i32 2, i32 0
  %44 = bitcast %struct.ap_int_base.4* %.0.1.2.024 to i8*
  %45 = call i1 @fpga_fifo_exist_2(i8* %44)
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %43
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.1.2.025, %struct.ap_int_base.4* %.0.1.2.024)
  br label %54

; <label>:47:                                     ; preds = %43
  %.0.1.2.0.026 = getelementptr %"class.hls::stream.53", %"class.hls::stream.53"* %1, i32 0, i32 0, i32 1, i32 2, i32 0, i32 0
  %.01.1.2.0.027 = getelementptr %"class.hls::stream.53", %"class.hls::stream.53"* %0, i32 0, i32 0, i32 1, i32 2, i32 0, i32 0
  %48 = bitcast %struct.ssdm_int.5* %.0.1.2.0.026 to i8*
  %49 = call i1 @fpga_fifo_exist_2(i8* %48)
  br i1 %49, label %50, label %51

; <label>:50:                                     ; preds = %47
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.1.2.0.027, %struct.ssdm_int.5* %.0.1.2.0.026)
  br label %54

; <label>:51:                                     ; preds = %47
  %.01.1.2.0.0.029.gep45 = getelementptr %"class.hls::stream.53", %"class.hls::stream.53"* %0, i32 0, i32 0, i32 1, i32 2, i32 0, i32 0, i32 0
  %52 = bitcast i16* %.01.1.2.0.0.029.gep45 to i8*
  %.0.1.2.0.0.028.gep46 = getelementptr %"class.hls::stream.53", %"class.hls::stream.53"* %1, i32 0, i32 0, i32 1, i32 2, i32 0, i32 0, i32 0
  %53 = bitcast i16* %.0.1.2.0.0.028.gep46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %52, i8* align 1 %53, i64 2, i1 false)
  br label %54

; <label>:54:                                     ; preds = %51, %50, %46, %42
  %.0.230 = getelementptr %"class.hls::stream.53", %"class.hls::stream.53"* %1, i32 0, i32 0, i32 2
  %.01.231 = getelementptr %"class.hls::stream.53", %"class.hls::stream.53"* %0, i32 0, i32 0, i32 2
  %55 = bitcast %struct.ap_uint.3* %.0.230 to i8*
  %56 = call i1 @fpga_fifo_exist_2(i8* %55)
  br i1 %56, label %57, label %58

; <label>:57:                                     ; preds = %54
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.231, %struct.ap_uint.3* %.0.230)
  br label %69

; <label>:58:                                     ; preds = %54
  %.0.2.032 = getelementptr %"class.hls::stream.53", %"class.hls::stream.53"* %1, i32 0, i32 0, i32 2, i32 0
  %.01.2.033 = getelementptr %"class.hls::stream.53", %"class.hls::stream.53"* %0, i32 0, i32 0, i32 2, i32 0
  %59 = bitcast %struct.ap_int_base.4* %.0.2.032 to i8*
  %60 = call i1 @fpga_fifo_exist_2(i8* %59)
  br i1 %60, label %61, label %62

; <label>:61:                                     ; preds = %58
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.2.033, %struct.ap_int_base.4* %.0.2.032)
  br label %69

; <label>:62:                                     ; preds = %58
  %.0.2.0.034 = getelementptr %"class.hls::stream.53", %"class.hls::stream.53"* %1, i32 0, i32 0, i32 2, i32 0, i32 0
  %.01.2.0.035 = getelementptr %"class.hls::stream.53", %"class.hls::stream.53"* %0, i32 0, i32 0, i32 2, i32 0, i32 0
  %63 = bitcast %struct.ssdm_int.5* %.0.2.0.034 to i8*
  %64 = call i1 @fpga_fifo_exist_2(i8* %63)
  br i1 %64, label %65, label %66

; <label>:65:                                     ; preds = %62
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.2.0.035, %struct.ssdm_int.5* %.0.2.0.034)
  br label %69

; <label>:66:                                     ; preds = %62
  %.01.2.0.0.037.gep47 = getelementptr %"class.hls::stream.53", %"class.hls::stream.53"* %0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %67 = bitcast i16* %.01.2.0.0.037.gep47 to i8*
  %.0.2.0.0.036.gep48 = getelementptr %"class.hls::stream.53", %"class.hls::stream.53"* %1, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %68 = bitcast i16* %.0.2.0.0.036.gep48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %67, i8* align 1 %68, i64 2, i1 false)
  br label %69

; <label>:69:                                     ; preds = %66, %65, %61, %57
  %.01.339.gep49 = getelementptr %"class.hls::stream.53", %"class.hls::stream.53"* %0, i32 0, i32 0, i32 3
  %70 = bitcast i32* %.01.339.gep49 to i8*
  %.0.338.gep50 = getelementptr %"class.hls::stream.53", %"class.hls::stream.53"* %1, i32 0, i32 0, i32 3
  %71 = bitcast i32* %.0.338.gep50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %70, i8* align 1 %71, i64 4, i1 false)
  br label %ret

ret:                                              ; preds = %69, %7, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.53"(%"class.hls::stream.53"* noalias nocapture align 512, %"class.hls::stream.53"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream.53"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream.53"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_20(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream.53"* %2 to i8*
  %6 = bitcast %"class.hls::stream.53"* %1 to i8*
  call void @fpga_fifo_pop_20(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream.53", %"class.hls::stream.53"* %2
  %8 = bitcast %"class.hls::stream.53"* %2 to i8*
  %9 = bitcast %"class.hls::stream.53"* %0 to i8*
  call void @fpga_fifo_push_20(i8* %8, i8* %9)
  br label %empty, !llvm.loop !36

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream.53"* %1 to i8*
  %11 = bitcast %"class.hls::stream.53"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 20, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* noalias align 512, %"class.hls::stream"* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %"class.hls::stream"* %0, null
  %3 = icmp eq %"class.hls::stream"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream"* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream"(%"class.hls::stream"* nonnull align 512 %0, %"class.hls::stream"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0
  %.01 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* align 512 %.01, %struct.ap_uint.3* %.0)
  br label %ret

; <label>:11:                                     ; preds = %8
  %.0.02 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 0
  %.01.03 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* align 512 %.01.03, %struct.ap_int_base.4* %.0.02)
  br label %ret

; <label>:14:                                     ; preds = %11
  %.0.0.04 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %14
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* align 512 %.01.0.05, %struct.ssdm_int.5* %.0.0.04)
  br label %ret

; <label>:17:                                     ; preds = %14
  %18 = bitcast %"class.hls::stream"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %5, i64 2, i1 false)
  br label %ret

ret:                                              ; preds = %17, %16, %13, %10, %7, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream"(%"class.hls::stream"* noalias nocapture align 512, %"class.hls::stream"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_2(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream"* %2 to i8*
  %6 = bitcast %"class.hls::stream"* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream", %"class.hls::stream"* %2
  %8 = bitcast %"class.hls::stream"* %2 to i8*
  %9 = bitcast %"class.hls::stream"* %0 to i8*
  call void @fpga_fifo_push_2(i8* %8, i8* %9)
  br label %empty, !llvm.loop !37

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream"* %1 to i8*
  %11 = bitcast %"class.hls::stream"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 2, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.54"(%"class.hls::stream.54"* noalias align 512, %"class.hls::stream.54"* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %"class.hls::stream.54"* %0, null
  %3 = icmp eq %"class.hls::stream.54"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream.54"* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream.54"(%"class.hls::stream.54"* nonnull align 512 %0, %"class.hls::stream.54"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0.02 = getelementptr %"class.hls::stream.54", %"class.hls::stream.54"* %1, i32 0, i32 0, i32 0
  %.01.03 = getelementptr %"class.hls::stream.54", %"class.hls::stream.54"* %0, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* align 512 %.01.03, %struct.ap_uint.3* %.0.02)
  br label %19

; <label>:11:                                     ; preds = %8
  %.0.0.04 = getelementptr %"class.hls::stream.54", %"class.hls::stream.54"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"class.hls::stream.54", %"class.hls::stream.54"* %0, i32 0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* align 512 %.01.0.05, %struct.ap_int_base.4* %.0.0.04)
  br label %19

; <label>:14:                                     ; preds = %11
  %.0.0.0.06 = getelementptr %"class.hls::stream.54", %"class.hls::stream.54"* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.07 = getelementptr %"class.hls::stream.54", %"class.hls::stream.54"* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %14
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* align 512 %.01.0.0.07, %struct.ssdm_int.5* %.0.0.0.06)
  br label %19

; <label>:17:                                     ; preds = %14
  %18 = bitcast %"class.hls::stream.54"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %5, i64 2, i1 false)
  br label %19

; <label>:19:                                     ; preds = %17, %16, %13, %10
  %.0.110 = getelementptr %"class.hls::stream.54", %"class.hls::stream.54"* %1, i32 0, i32 0, i32 1
  %.01.111 = getelementptr %"class.hls::stream.54", %"class.hls::stream.54"* %0, i32 0, i32 0, i32 1
  %20 = bitcast %struct.ap_uint.3* %.0.110 to i8*
  %21 = call i1 @fpga_fifo_exist_2(i8* %20)
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.111, %struct.ap_uint.3* %.0.110)
  br label %ret

; <label>:23:                                     ; preds = %19
  %.0.1.012 = getelementptr %"class.hls::stream.54", %"class.hls::stream.54"* %1, i32 0, i32 0, i32 1, i32 0
  %.01.1.013 = getelementptr %"class.hls::stream.54", %"class.hls::stream.54"* %0, i32 0, i32 0, i32 1, i32 0
  %24 = bitcast %struct.ap_int_base.4* %.0.1.012 to i8*
  %25 = call i1 @fpga_fifo_exist_2(i8* %24)
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %23
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.1.013, %struct.ap_int_base.4* %.0.1.012)
  br label %ret

; <label>:27:                                     ; preds = %23
  %.0.1.0.014 = getelementptr %"class.hls::stream.54", %"class.hls::stream.54"* %1, i32 0, i32 0, i32 1, i32 0, i32 0
  %.01.1.0.015 = getelementptr %"class.hls::stream.54", %"class.hls::stream.54"* %0, i32 0, i32 0, i32 1, i32 0, i32 0
  %28 = bitcast %struct.ssdm_int.5* %.0.1.0.014 to i8*
  %29 = call i1 @fpga_fifo_exist_2(i8* %28)
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %27
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.1.0.015, %struct.ssdm_int.5* %.0.1.0.014)
  br label %ret

; <label>:31:                                     ; preds = %27
  %.01.1.0.0.017.gep19 = getelementptr %"class.hls::stream.54", %"class.hls::stream.54"* %0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %32 = bitcast i16* %.01.1.0.0.017.gep19 to i8*
  %.0.1.0.0.016.gep20 = getelementptr %"class.hls::stream.54", %"class.hls::stream.54"* %1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %33 = bitcast i16* %.0.1.0.0.016.gep20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %33, i64 2, i1 false)
  br label %ret

ret:                                              ; preds = %31, %30, %26, %22, %7, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.54"(%"class.hls::stream.54"* noalias nocapture align 512, %"class.hls::stream.54"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream.54"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream.54"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream.54"* %2 to i8*
  %6 = bitcast %"class.hls::stream.54"* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream.54", %"class.hls::stream.54"* %2
  %8 = bitcast %"class.hls::stream.54"* %2 to i8*
  %9 = bitcast %"class.hls::stream.54"* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !38

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream.54"* %1 to i8*
  %11 = bitcast %"class.hls::stream.54"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.55"(%"class.hls::stream.55"* noalias align 512, %"class.hls::stream.55"* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %"class.hls::stream.55"* %0, null
  %3 = icmp eq %"class.hls::stream.55"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream.55"* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_8(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream.55"(%"class.hls::stream.55"* nonnull align 512 %0, %"class.hls::stream.55"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0.02 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %1, i32 0, i32 0, i32 0
  %.01.03 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %0, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* align 512 %.01.03, %struct.ap_uint* %.0.02)
  br label %19

; <label>:11:                                     ; preds = %8
  %.0.0.04 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %0, i32 0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* align 512 %.01.0.05, %struct.ap_int_base* %.0.0.04)
  br label %19

; <label>:14:                                     ; preds = %11
  %.0.0.0.06 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.07 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %14
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* align 512 %.01.0.0.07, %struct.ssdm_int* %.0.0.0.06)
  br label %19

; <label>:17:                                     ; preds = %14
  %18 = bitcast %"class.hls::stream.55"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %5, i64 4, i1 false)
  br label %19

; <label>:19:                                     ; preds = %17, %16, %13, %10
  %.0.110 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %1, i32 0, i32 0, i32 1
  %.01.111 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %0, i32 0, i32 0, i32 1
  %20 = bitcast %struct.ap_uint.3* %.0.110 to i8*
  %21 = call i1 @fpga_fifo_exist_2(i8* %20)
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.111, %struct.ap_uint.3* %.0.110)
  br label %ret

; <label>:23:                                     ; preds = %19
  %.0.1.012 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %1, i32 0, i32 0, i32 1, i32 0
  %.01.1.013 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %0, i32 0, i32 0, i32 1, i32 0
  %24 = bitcast %struct.ap_int_base.4* %.0.1.012 to i8*
  %25 = call i1 @fpga_fifo_exist_2(i8* %24)
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %23
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.1.013, %struct.ap_int_base.4* %.0.1.012)
  br label %ret

; <label>:27:                                     ; preds = %23
  %.0.1.0.014 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %1, i32 0, i32 0, i32 1, i32 0, i32 0
  %.01.1.0.015 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %0, i32 0, i32 0, i32 1, i32 0, i32 0
  %28 = bitcast %struct.ssdm_int.5* %.0.1.0.014 to i8*
  %29 = call i1 @fpga_fifo_exist_2(i8* %28)
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %27
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.1.0.015, %struct.ssdm_int.5* %.0.1.0.014)
  br label %ret

; <label>:31:                                     ; preds = %27
  %.01.1.0.0.017.gep19 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %32 = bitcast i16* %.01.1.0.0.017.gep19 to i8*
  %.0.1.0.0.016.gep20 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %33 = bitcast i16* %.0.1.0.0.016.gep20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %33, i64 2, i1 false)
  br label %ret

ret:                                              ; preds = %31, %30, %26, %22, %7, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.55"(%"class.hls::stream.55"* noalias nocapture align 512, %"class.hls::stream.55"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream.55"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream.55"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream.55"* %2 to i8*
  %6 = bitcast %"class.hls::stream.55"* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream.55", %"class.hls::stream.55"* %2
  %8 = bitcast %"class.hls::stream.55"* %2 to i8*
  %9 = bitcast %"class.hls::stream.55"* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !39

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream.55"* %1 to i8*
  %11 = bitcast %"class.hls::stream.55"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 8, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0struct.ssdm_int.26(%struct.ssdm_int.26* noalias align 512, %struct.ssdm_int.26* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %struct.ssdm_int.26* %0, null
  %3 = icmp eq %struct.ssdm_int.26* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %struct.ssdm_int.26* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_1(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.26(%struct.ssdm_int.26* nonnull align 512 %0, %struct.ssdm_int.26* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %9 = bitcast %struct.ssdm_int.26* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %5, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %8, %7, %entry
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.15"(%"class.hls::stream.15"* noalias align 512, %"class.hls::stream.15"* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %"class.hls::stream.15"* %0, null
  %3 = icmp eq %"class.hls::stream.15"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream.15"* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_12(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream.15"(%"class.hls::stream.15"* nonnull align 512 %0, %"class.hls::stream.15"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0.02 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 0
  %.01.03 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %0, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* align 512 %.01.03, %struct.ap_uint.3* %.0.02)
  br label %19

; <label>:11:                                     ; preds = %8
  %.0.0.04 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %0, i32 0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* align 512 %.01.0.05, %struct.ap_int_base.4* %.0.0.04)
  br label %19

; <label>:14:                                     ; preds = %11
  %.0.0.0.06 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.07 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %14
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* align 512 %.01.0.0.07, %struct.ssdm_int.5* %.0.0.0.06)
  br label %19

; <label>:17:                                     ; preds = %14
  %18 = bitcast %"class.hls::stream.15"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %5, i64 2, i1 false)
  br label %19

; <label>:19:                                     ; preds = %17, %16, %13, %10
  %.0.110 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 1
  %.01.111 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %0, i32 0, i32 0, i32 1
  %20 = bitcast %struct.ap_uint.3* %.0.110 to i8*
  %21 = call i1 @fpga_fifo_exist_2(i8* %20)
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.111, %struct.ap_uint.3* %.0.110)
  br label %34

; <label>:23:                                     ; preds = %19
  %.0.1.012 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 1, i32 0
  %.01.1.013 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %0, i32 0, i32 0, i32 1, i32 0
  %24 = bitcast %struct.ap_int_base.4* %.0.1.012 to i8*
  %25 = call i1 @fpga_fifo_exist_2(i8* %24)
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %23
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.1.013, %struct.ap_int_base.4* %.0.1.012)
  br label %34

; <label>:27:                                     ; preds = %23
  %.0.1.0.014 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 1, i32 0, i32 0
  %.01.1.0.015 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %0, i32 0, i32 0, i32 1, i32 0, i32 0
  %28 = bitcast %struct.ssdm_int.5* %.0.1.0.014 to i8*
  %29 = call i1 @fpga_fifo_exist_2(i8* %28)
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %27
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.1.0.015, %struct.ssdm_int.5* %.0.1.0.014)
  br label %34

; <label>:31:                                     ; preds = %27
  %.01.1.0.0.017.gep37 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %32 = bitcast i16* %.01.1.0.0.017.gep37 to i8*
  %.0.1.0.0.016.gep38 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %33 = bitcast i16* %.0.1.0.0.016.gep38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %33, i64 2, i1 false)
  br label %34

; <label>:34:                                     ; preds = %31, %30, %26, %22
  %.0.218 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 2
  %.01.219 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %0, i32 0, i32 0, i32 2
  %35 = bitcast %struct.ap_uint* %.0.218 to i8*
  %36 = call i1 @fpga_fifo_exist_4(i8* %35)
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %34
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* %.01.219, %struct.ap_uint* %.0.218)
  br label %49

; <label>:38:                                     ; preds = %34
  %.0.2.020 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 2, i32 0
  %.01.2.021 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %0, i32 0, i32 0, i32 2, i32 0
  %39 = bitcast %struct.ap_int_base* %.0.2.020 to i8*
  %40 = call i1 @fpga_fifo_exist_4(i8* %39)
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %38
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* %.01.2.021, %struct.ap_int_base* %.0.2.020)
  br label %49

; <label>:42:                                     ; preds = %38
  %.0.2.0.022 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 2, i32 0, i32 0
  %.01.2.0.023 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %0, i32 0, i32 0, i32 2, i32 0, i32 0
  %43 = bitcast %struct.ssdm_int* %.0.2.0.022 to i8*
  %44 = call i1 @fpga_fifo_exist_4(i8* %43)
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %42
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %.01.2.0.023, %struct.ssdm_int* %.0.2.0.022)
  br label %49

; <label>:46:                                     ; preds = %42
  %.01.2.0.0.025.gep39 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %47 = bitcast i32* %.01.2.0.0.025.gep39 to i8*
  %.0.2.0.0.024.gep40 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %48 = bitcast i32* %.0.2.0.0.024.gep40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %47, i8* align 1 %48, i64 4, i1 false)
  br label %49

; <label>:49:                                     ; preds = %46, %45, %41, %37
  %.0.326 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 3
  %.01.327 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %0, i32 0, i32 0, i32 3
  %50 = bitcast %struct.ap_uint.3* %.0.326 to i8*
  %51 = call i1 @fpga_fifo_exist_2(i8* %50)
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %49
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.327, %struct.ap_uint.3* %.0.326)
  br label %64

; <label>:53:                                     ; preds = %49
  %.0.3.028 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 3, i32 0
  %.01.3.029 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %0, i32 0, i32 0, i32 3, i32 0
  %54 = bitcast %struct.ap_int_base.4* %.0.3.028 to i8*
  %55 = call i1 @fpga_fifo_exist_2(i8* %54)
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %53
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.3.029, %struct.ap_int_base.4* %.0.3.028)
  br label %64

; <label>:57:                                     ; preds = %53
  %.0.3.0.030 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 3, i32 0, i32 0
  %.01.3.0.031 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %0, i32 0, i32 0, i32 3, i32 0, i32 0
  %58 = bitcast %struct.ssdm_int.5* %.0.3.0.030 to i8*
  %59 = call i1 @fpga_fifo_exist_2(i8* %58)
  br i1 %59, label %60, label %61

; <label>:60:                                     ; preds = %57
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.3.0.031, %struct.ssdm_int.5* %.0.3.0.030)
  br label %64

; <label>:61:                                     ; preds = %57
  %.01.3.0.0.033.gep41 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %62 = bitcast i16* %.01.3.0.0.033.gep41 to i8*
  %.0.3.0.0.032.gep42 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %63 = bitcast i16* %.0.3.0.0.032.gep42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %62, i8* align 1 %63, i64 2, i1 false)
  br label %64

; <label>:64:                                     ; preds = %61, %60, %56, %52
  %.01.435.gep43 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %0, i32 0, i32 0, i32 4
  %65 = bitcast i1* %.01.435.gep43 to i8*
  %.0.434.gep44 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 4
  %66 = bitcast i1* %.0.434.gep44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %65, i8* align 1 %66, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %64, %7, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.15"(%"class.hls::stream.15"* noalias nocapture align 512, %"class.hls::stream.15"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream.15"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream.15"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_12(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream.15"* %2 to i8*
  %6 = bitcast %"class.hls::stream.15"* %1 to i8*
  call void @fpga_fifo_pop_12(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream.15", %"class.hls::stream.15"* %2
  %8 = bitcast %"class.hls::stream.15"* %2 to i8*
  %9 = bitcast %"class.hls::stream.15"* %0 to i8*
  call void @fpga_fifo_push_12(i8* %8, i8* %9)
  br label %empty, !llvm.loop !40

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream.15"* %1 to i8*
  %11 = bitcast %"class.hls::stream.15"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 12, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.16"(%"class.hls::stream.16"* noalias align 512, %"class.hls::stream.16"* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %"class.hls::stream.16"* %0, null
  %3 = icmp eq %"class.hls::stream.16"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream.16"* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_12(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream.16"(%"class.hls::stream.16"* nonnull align 512 %0, %"class.hls::stream.16"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0.02 = getelementptr %"class.hls::stream.16", %"class.hls::stream.16"* %1, i32 0, i32 0, i32 0
  %.01.03 = getelementptr %"class.hls::stream.16", %"class.hls::stream.16"* %0, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* align 512 %.01.03, %struct.ap_uint.3* %.0.02)
  br label %19

; <label>:11:                                     ; preds = %8
  %.0.0.04 = getelementptr %"class.hls::stream.16", %"class.hls::stream.16"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"class.hls::stream.16", %"class.hls::stream.16"* %0, i32 0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* align 512 %.01.0.05, %struct.ap_int_base.4* %.0.0.04)
  br label %19

; <label>:14:                                     ; preds = %11
  %.0.0.0.06 = getelementptr %"class.hls::stream.16", %"class.hls::stream.16"* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.07 = getelementptr %"class.hls::stream.16", %"class.hls::stream.16"* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %14
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* align 512 %.01.0.0.07, %struct.ssdm_int.5* %.0.0.0.06)
  br label %19

; <label>:17:                                     ; preds = %14
  %18 = bitcast %"class.hls::stream.16"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %5, i64 2, i1 false)
  br label %19

; <label>:19:                                     ; preds = %17, %16, %13, %10
  %.0.110 = getelementptr %"class.hls::stream.16", %"class.hls::stream.16"* %1, i32 0, i32 0, i32 1
  %.01.111 = getelementptr %"class.hls::stream.16", %"class.hls::stream.16"* %0, i32 0, i32 0, i32 1
  %20 = getelementptr %"class.hls::stream.16", %"class.hls::stream.16"* %1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %21 = call i1 @fpga_fifo_exist_1(i8* %20)
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  call fastcc void @streamcpy_hls.p0struct.ap_uint.17(%struct.ap_uint.17* %.01.111, %struct.ap_uint.17* %.0.110)
  br label %30

; <label>:23:                                     ; preds = %19
  %.0.1.012 = getelementptr %"class.hls::stream.16", %"class.hls::stream.16"* %1, i32 0, i32 0, i32 1, i32 0
  %.01.1.013 = getelementptr %"class.hls::stream.16", %"class.hls::stream.16"* %0, i32 0, i32 0, i32 1, i32 0
  %24 = call i1 @fpga_fifo_exist_1(i8* %20)
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %23
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.18(%struct.ap_int_base.18* %.01.1.013, %struct.ap_int_base.18* %.0.1.012)
  br label %30

; <label>:26:                                     ; preds = %23
  %.0.1.0.014 = getelementptr %"class.hls::stream.16", %"class.hls::stream.16"* %1, i32 0, i32 0, i32 1, i32 0, i32 0
  %.01.1.0.015 = getelementptr %"class.hls::stream.16", %"class.hls::stream.16"* %0, i32 0, i32 0, i32 1, i32 0, i32 0
  %27 = call i1 @fpga_fifo_exist_1(i8* %20)
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %26
  call fastcc void @"streamcpy_hls.p0class.std::ios_base::Init"(%"class.std::ios_base::Init"* %.01.1.0.015, %"class.std::ios_base::Init"* %.0.1.0.014)
  br label %30

; <label>:29:                                     ; preds = %26
  %.01.1.0.0.017 = getelementptr %"class.hls::stream.16", %"class.hls::stream.16"* %0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %.01.1.0.0.017, i8* align 1 %20, i64 1, i1 false)
  br label %30

; <label>:30:                                     ; preds = %29, %28, %25, %22
  %.0.218 = getelementptr %"class.hls::stream.16", %"class.hls::stream.16"* %1, i32 0, i32 0, i32 2
  %.01.219 = getelementptr %"class.hls::stream.16", %"class.hls::stream.16"* %0, i32 0, i32 0, i32 2
  %31 = bitcast %struct.ap_uint* %.0.218 to i8*
  %32 = call i1 @fpga_fifo_exist_4(i8* %31)
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %30
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* %.01.219, %struct.ap_uint* %.0.218)
  br label %45

; <label>:34:                                     ; preds = %30
  %.0.2.020 = getelementptr %"class.hls::stream.16", %"class.hls::stream.16"* %1, i32 0, i32 0, i32 2, i32 0
  %.01.2.021 = getelementptr %"class.hls::stream.16", %"class.hls::stream.16"* %0, i32 0, i32 0, i32 2, i32 0
  %35 = bitcast %struct.ap_int_base* %.0.2.020 to i8*
  %36 = call i1 @fpga_fifo_exist_4(i8* %35)
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %34
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* %.01.2.021, %struct.ap_int_base* %.0.2.020)
  br label %45

; <label>:38:                                     ; preds = %34
  %.0.2.0.022 = getelementptr %"class.hls::stream.16", %"class.hls::stream.16"* %1, i32 0, i32 0, i32 2, i32 0, i32 0
  %.01.2.0.023 = getelementptr %"class.hls::stream.16", %"class.hls::stream.16"* %0, i32 0, i32 0, i32 2, i32 0, i32 0
  %39 = bitcast %struct.ssdm_int* %.0.2.0.022 to i8*
  %40 = call i1 @fpga_fifo_exist_4(i8* %39)
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %38
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %.01.2.0.023, %struct.ssdm_int* %.0.2.0.022)
  br label %45

; <label>:42:                                     ; preds = %38
  %.01.2.0.0.025.gep35 = getelementptr %"class.hls::stream.16", %"class.hls::stream.16"* %0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %43 = bitcast i32* %.01.2.0.0.025.gep35 to i8*
  %.0.2.0.0.024.gep36 = getelementptr %"class.hls::stream.16", %"class.hls::stream.16"* %1, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %44 = bitcast i32* %.0.2.0.0.024.gep36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %43, i8* align 1 %44, i64 4, i1 false)
  br label %45

; <label>:45:                                     ; preds = %42, %41, %37, %33
  %.0.326 = getelementptr %"class.hls::stream.16", %"class.hls::stream.16"* %1, i32 0, i32 0, i32 3
  %.01.327 = getelementptr %"class.hls::stream.16", %"class.hls::stream.16"* %0, i32 0, i32 0, i32 3
  %46 = bitcast %struct.ap_uint.3* %.0.326 to i8*
  %47 = call i1 @fpga_fifo_exist_2(i8* %46)
  br i1 %47, label %48, label %49

; <label>:48:                                     ; preds = %45
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.327, %struct.ap_uint.3* %.0.326)
  br label %ret

; <label>:49:                                     ; preds = %45
  %.0.3.028 = getelementptr %"class.hls::stream.16", %"class.hls::stream.16"* %1, i32 0, i32 0, i32 3, i32 0
  %.01.3.029 = getelementptr %"class.hls::stream.16", %"class.hls::stream.16"* %0, i32 0, i32 0, i32 3, i32 0
  %50 = bitcast %struct.ap_int_base.4* %.0.3.028 to i8*
  %51 = call i1 @fpga_fifo_exist_2(i8* %50)
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %49
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.3.029, %struct.ap_int_base.4* %.0.3.028)
  br label %ret

; <label>:53:                                     ; preds = %49
  %.0.3.0.030 = getelementptr %"class.hls::stream.16", %"class.hls::stream.16"* %1, i32 0, i32 0, i32 3, i32 0, i32 0
  %.01.3.0.031 = getelementptr %"class.hls::stream.16", %"class.hls::stream.16"* %0, i32 0, i32 0, i32 3, i32 0, i32 0
  %54 = bitcast %struct.ssdm_int.5* %.0.3.0.030 to i8*
  %55 = call i1 @fpga_fifo_exist_2(i8* %54)
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %53
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.3.0.031, %struct.ssdm_int.5* %.0.3.0.030)
  br label %ret

; <label>:57:                                     ; preds = %53
  %.01.3.0.0.033.gep37 = getelementptr %"class.hls::stream.16", %"class.hls::stream.16"* %0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %58 = bitcast i16* %.01.3.0.0.033.gep37 to i8*
  %.0.3.0.0.032.gep38 = getelementptr %"class.hls::stream.16", %"class.hls::stream.16"* %1, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %59 = bitcast i16* %.0.3.0.0.032.gep38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %58, i8* align 1 %59, i64 2, i1 false)
  br label %ret

ret:                                              ; preds = %57, %56, %52, %48, %7, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.16"(%"class.hls::stream.16"* noalias nocapture align 512, %"class.hls::stream.16"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream.16"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream.16"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_12(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream.16"* %2 to i8*
  %6 = bitcast %"class.hls::stream.16"* %1 to i8*
  call void @fpga_fifo_pop_12(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream.16", %"class.hls::stream.16"* %2
  %8 = bitcast %"class.hls::stream.16"* %2 to i8*
  %9 = bitcast %"class.hls::stream.16"* %0 to i8*
  call void @fpga_fifo_push_12(i8* %8, i8* %9)
  br label %empty, !llvm.loop !41

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream.16"* %1 to i8*
  %11 = bitcast %"class.hls::stream.16"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 12, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.17(%struct.ap_uint.17* noalias nocapture, %struct.ap_uint.17* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint.17
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.17* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.17* %2 to i8*
  %6 = bitcast %struct.ap_uint.17* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.17, %struct.ap_uint.17* %2
  %8 = bitcast %struct.ap_uint.17* %2 to i8*
  %9 = bitcast %struct.ap_uint.17* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !42

ret:                                              ; preds = %empty
  %10 = getelementptr inbounds %struct.ap_uint.17, %struct.ap_uint.17* %1, i32 0, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %struct.ap_uint.17, %struct.ap_uint.17* %0, i32 0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.18(%struct.ap_int_base.18* noalias nocapture, %struct.ap_int_base.18* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.18
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.18* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.18* %2 to i8*
  %6 = bitcast %struct.ap_int_base.18* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.18, %struct.ap_int_base.18* %2
  %8 = bitcast %struct.ap_int_base.18* %2 to i8*
  %9 = bitcast %struct.ap_int_base.18* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !43

ret:                                              ; preds = %empty
  %10 = getelementptr inbounds %struct.ap_int_base.18, %struct.ap_int_base.18* %1, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %struct.ap_int_base.18, %struct.ap_int_base.18* %0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.std::ios_base::Init"(%"class.std::ios_base::Init"* noalias nocapture, %"class.std::ios_base::Init"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.std::ios_base::Init"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.std::ios_base::Init"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.std::ios_base::Init"* %2 to i8*
  %6 = bitcast %"class.std::ios_base::Init"* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %"class.std::ios_base::Init", %"class.std::ios_base::Init"* %2
  %8 = bitcast %"class.std::ios_base::Init"* %2 to i8*
  %9 = bitcast %"class.std::ios_base::Init"* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !44

ret:                                              ; preds = %empty
  %10 = getelementptr inbounds %"class.std::ios_base::Init", %"class.std::ios_base::Init"* %1, i32 0, i32 0
  %11 = getelementptr inbounds %"class.std::ios_base::Init", %"class.std::ios_base::Init"* %0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.58"(%"class.hls::stream.58"* noalias align 512, %"class.hls::stream.58"* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %"class.hls::stream.58"* %0, null
  %3 = icmp eq %"class.hls::stream.58"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream.58"* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_12(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream.58"(%"class.hls::stream.58"* nonnull align 512 %0, %"class.hls::stream.58"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0.02 = getelementptr %"class.hls::stream.58", %"class.hls::stream.58"* %1, i32 0, i32 0, i32 0
  %.01.03 = getelementptr %"class.hls::stream.58", %"class.hls::stream.58"* %0, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* align 512 %.01.03, %struct.ap_uint.3* %.0.02)
  br label %19

; <label>:11:                                     ; preds = %8
  %.0.0.04 = getelementptr %"class.hls::stream.58", %"class.hls::stream.58"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"class.hls::stream.58", %"class.hls::stream.58"* %0, i32 0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* align 512 %.01.0.05, %struct.ap_int_base.4* %.0.0.04)
  br label %19

; <label>:14:                                     ; preds = %11
  %.0.0.0.06 = getelementptr %"class.hls::stream.58", %"class.hls::stream.58"* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.07 = getelementptr %"class.hls::stream.58", %"class.hls::stream.58"* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %14
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* align 512 %.01.0.0.07, %struct.ssdm_int.5* %.0.0.0.06)
  br label %19

; <label>:17:                                     ; preds = %14
  %18 = bitcast %"class.hls::stream.58"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %5, i64 2, i1 false)
  br label %19

; <label>:19:                                     ; preds = %17, %16, %13, %10
  %.0.110 = getelementptr %"class.hls::stream.58", %"class.hls::stream.58"* %1, i32 0, i32 0, i32 1
  %.01.111 = getelementptr %"class.hls::stream.58", %"class.hls::stream.58"* %0, i32 0, i32 0, i32 1
  %20 = bitcast %struct.ap_uint.3* %.0.110 to i8*
  %21 = call i1 @fpga_fifo_exist_2(i8* %20)
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.111, %struct.ap_uint.3* %.0.110)
  br label %34

; <label>:23:                                     ; preds = %19
  %.0.1.012 = getelementptr %"class.hls::stream.58", %"class.hls::stream.58"* %1, i32 0, i32 0, i32 1, i32 0
  %.01.1.013 = getelementptr %"class.hls::stream.58", %"class.hls::stream.58"* %0, i32 0, i32 0, i32 1, i32 0
  %24 = bitcast %struct.ap_int_base.4* %.0.1.012 to i8*
  %25 = call i1 @fpga_fifo_exist_2(i8* %24)
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %23
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.1.013, %struct.ap_int_base.4* %.0.1.012)
  br label %34

; <label>:27:                                     ; preds = %23
  %.0.1.0.014 = getelementptr %"class.hls::stream.58", %"class.hls::stream.58"* %1, i32 0, i32 0, i32 1, i32 0, i32 0
  %.01.1.0.015 = getelementptr %"class.hls::stream.58", %"class.hls::stream.58"* %0, i32 0, i32 0, i32 1, i32 0, i32 0
  %28 = bitcast %struct.ssdm_int.5* %.0.1.0.014 to i8*
  %29 = call i1 @fpga_fifo_exist_2(i8* %28)
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %27
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.1.0.015, %struct.ssdm_int.5* %.0.1.0.014)
  br label %34

; <label>:31:                                     ; preds = %27
  %.01.1.0.0.017.gep35 = getelementptr %"class.hls::stream.58", %"class.hls::stream.58"* %0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %32 = bitcast i16* %.01.1.0.0.017.gep35 to i8*
  %.0.1.0.0.016.gep36 = getelementptr %"class.hls::stream.58", %"class.hls::stream.58"* %1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %33 = bitcast i16* %.0.1.0.0.016.gep36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %33, i64 2, i1 false)
  br label %34

; <label>:34:                                     ; preds = %31, %30, %26, %22
  %.0.218 = getelementptr %"class.hls::stream.58", %"class.hls::stream.58"* %1, i32 0, i32 0, i32 2
  %.01.219 = getelementptr %"class.hls::stream.58", %"class.hls::stream.58"* %0, i32 0, i32 0, i32 2
  %35 = bitcast %struct.ap_uint.59* %.0.218 to i8*
  %36 = call i1 @fpga_fifo_exist_4(i8* %35)
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %34
  call fastcc void @streamcpy_hls.p0struct.ap_uint.59(%struct.ap_uint.59* %.01.219, %struct.ap_uint.59* %.0.218)
  br label %49

; <label>:38:                                     ; preds = %34
  %.0.2.020 = getelementptr %"class.hls::stream.58", %"class.hls::stream.58"* %1, i32 0, i32 0, i32 2, i32 0
  %.01.2.021 = getelementptr %"class.hls::stream.58", %"class.hls::stream.58"* %0, i32 0, i32 0, i32 2, i32 0
  %39 = bitcast %struct.ap_int_base.60* %.0.2.020 to i8*
  %40 = call i1 @fpga_fifo_exist_4(i8* %39)
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %38
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.60(%struct.ap_int_base.60* %.01.2.021, %struct.ap_int_base.60* %.0.2.020)
  br label %49

; <label>:42:                                     ; preds = %38
  %.0.2.0.022 = getelementptr %"class.hls::stream.58", %"class.hls::stream.58"* %1, i32 0, i32 0, i32 2, i32 0, i32 0
  %.01.2.0.023 = getelementptr %"class.hls::stream.58", %"class.hls::stream.58"* %0, i32 0, i32 0, i32 2, i32 0, i32 0
  %43 = bitcast %struct.ssdm_int.61* %.0.2.0.022 to i8*
  %44 = call i1 @fpga_fifo_exist_4(i8* %43)
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %42
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.61(%struct.ssdm_int.61* %.01.2.0.023, %struct.ssdm_int.61* %.0.2.0.022)
  br label %49

; <label>:46:                                     ; preds = %42
  %.01.2.0.0.025.gep37 = getelementptr %"class.hls::stream.58", %"class.hls::stream.58"* %0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %47 = bitcast i30* %.01.2.0.0.025.gep37 to i8*
  %.0.2.0.0.024.gep38 = getelementptr %"class.hls::stream.58", %"class.hls::stream.58"* %1, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %48 = bitcast i30* %.0.2.0.0.024.gep38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %47, i8* align 1 %48, i64 4, i1 false)
  br label %49

; <label>:49:                                     ; preds = %46, %45, %41, %37
  %.0.326 = getelementptr %"class.hls::stream.58", %"class.hls::stream.58"* %1, i32 0, i32 0, i32 3
  %.01.327 = getelementptr %"class.hls::stream.58", %"class.hls::stream.58"* %0, i32 0, i32 0, i32 3
  %50 = bitcast %struct.ap_uint.0* %.0.326 to i8*
  %51 = call i1 @fpga_fifo_exist_1(i8* %50)
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %49
  call fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* %.01.327, %struct.ap_uint.0* %.0.326)
  br label %ret

; <label>:53:                                     ; preds = %49
  %.0.3.028 = getelementptr %"class.hls::stream.58", %"class.hls::stream.58"* %1, i32 0, i32 0, i32 3, i32 0
  %.01.3.029 = getelementptr %"class.hls::stream.58", %"class.hls::stream.58"* %0, i32 0, i32 0, i32 3, i32 0
  %54 = bitcast %struct.ap_int_base.1* %.0.3.028 to i8*
  %55 = call i1 @fpga_fifo_exist_1(i8* %54)
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %53
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* %.01.3.029, %struct.ap_int_base.1* %.0.3.028)
  br label %ret

; <label>:57:                                     ; preds = %53
  %.0.3.0.030 = getelementptr %"class.hls::stream.58", %"class.hls::stream.58"* %1, i32 0, i32 0, i32 3, i32 0, i32 0
  %.01.3.0.031 = getelementptr %"class.hls::stream.58", %"class.hls::stream.58"* %0, i32 0, i32 0, i32 3, i32 0, i32 0
  %58 = bitcast %struct.ssdm_int.2* %.0.3.0.030 to i8*
  %59 = call i1 @fpga_fifo_exist_1(i8* %58)
  br i1 %59, label %60, label %61

; <label>:60:                                     ; preds = %57
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* %.01.3.0.031, %struct.ssdm_int.2* %.0.3.0.030)
  br label %ret

; <label>:61:                                     ; preds = %57
  %.01.3.0.0.033.gep39 = getelementptr %"class.hls::stream.58", %"class.hls::stream.58"* %0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %62 = bitcast i2* %.01.3.0.0.033.gep39 to i8*
  %.0.3.0.0.032.gep40 = getelementptr %"class.hls::stream.58", %"class.hls::stream.58"* %1, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %63 = bitcast i2* %.0.3.0.0.032.gep40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %62, i8* align 1 %63, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %61, %60, %56, %52, %7, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.58"(%"class.hls::stream.58"* noalias nocapture align 512, %"class.hls::stream.58"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream.58"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream.58"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_12(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream.58"* %2 to i8*
  %6 = bitcast %"class.hls::stream.58"* %1 to i8*
  call void @fpga_fifo_pop_12(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream.58", %"class.hls::stream.58"* %2
  %8 = bitcast %"class.hls::stream.58"* %2 to i8*
  %9 = bitcast %"class.hls::stream.58"* %0 to i8*
  call void @fpga_fifo_push_12(i8* %8, i8* %9)
  br label %empty, !llvm.loop !45

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream.58"* %1 to i8*
  %11 = bitcast %"class.hls::stream.58"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 12, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.59(%struct.ap_uint.59* noalias nocapture, %struct.ap_uint.59* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint.59
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.59* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.59* %2 to i8*
  %6 = bitcast %struct.ap_uint.59* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.59, %struct.ap_uint.59* %2
  %8 = bitcast %struct.ap_uint.59* %2 to i8*
  %9 = bitcast %struct.ap_uint.59* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !46

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.59* %1 to i8*
  %11 = bitcast %struct.ap_uint.59* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.60(%struct.ap_int_base.60* noalias nocapture, %struct.ap_int_base.60* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.60
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.60* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.60* %2 to i8*
  %6 = bitcast %struct.ap_int_base.60* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.60, %struct.ap_int_base.60* %2
  %8 = bitcast %struct.ap_int_base.60* %2 to i8*
  %9 = bitcast %struct.ap_int_base.60* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !47

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.60* %1 to i8*
  %11 = bitcast %struct.ap_int_base.60* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.61(%struct.ssdm_int.61* noalias nocapture, %struct.ssdm_int.61* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int.61
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.61* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.61* %2 to i8*
  %6 = bitcast %struct.ssdm_int.61* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.61, %struct.ssdm_int.61* %2
  %8 = bitcast %struct.ssdm_int.61* %2 to i8*
  %9 = bitcast %struct.ssdm_int.61* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !48

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.61* %1 to i8*
  %11 = bitcast %struct.ssdm_int.61* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* noalias nocapture, %struct.ap_uint.0* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint.0
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.0* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.0* %2 to i8*
  %6 = bitcast %struct.ap_uint.0* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.0, %struct.ap_uint.0* %2
  %8 = bitcast %struct.ap_uint.0* %2 to i8*
  %9 = bitcast %struct.ap_uint.0* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !49

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.0* %1 to i8*
  %11 = bitcast %struct.ap_uint.0* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* noalias nocapture, %struct.ap_int_base.1* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.1
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.1* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.1* %2 to i8*
  %6 = bitcast %struct.ap_int_base.1* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.1, %struct.ap_int_base.1* %2
  %8 = bitcast %struct.ap_int_base.1* %2 to i8*
  %9 = bitcast %struct.ap_int_base.1* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !50

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.1* %1 to i8*
  %11 = bitcast %struct.ap_int_base.1* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* noalias nocapture, %struct.ssdm_int.2* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int.2
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.2* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.2* %2 to i8*
  %6 = bitcast %struct.ssdm_int.2* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.2, %struct.ssdm_int.2* %2
  %8 = bitcast %struct.ssdm_int.2* %2 to i8*
  %9 = bitcast %struct.ssdm_int.2* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !51

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.2* %1 to i8*
  %11 = bitcast %struct.ssdm_int.2* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* noalias align 512, %struct.ap_uint.3* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %struct.ap_uint.3* %0, null
  %3 = icmp eq %struct.ap_uint.3* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %struct.ap_uint.3* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* nonnull align 512 %0, %struct.ap_uint.3* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0 = getelementptr %struct.ap_uint.3, %struct.ap_uint.3* %1, i32 0, i32 0
  %.01 = getelementptr %struct.ap_uint.3, %struct.ap_uint.3* %0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* align 512 %.01, %struct.ap_int_base.4* %.0)
  br label %ret

; <label>:11:                                     ; preds = %8
  %.0.02 = getelementptr %struct.ap_uint.3, %struct.ap_uint.3* %1, i32 0, i32 0, i32 0
  %.01.03 = getelementptr %struct.ap_uint.3, %struct.ap_uint.3* %0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* align 512 %.01.03, %struct.ssdm_int.5* %.0.02)
  br label %ret

; <label>:14:                                     ; preds = %11
  %15 = bitcast %struct.ap_uint.3* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 %5, i64 2, i1 false)
  br label %ret

ret:                                              ; preds = %14, %13, %10, %7, %entry
  ret void
}

; Function Attrs: noinline
define internal fastcc void @copy_out(%"class.hls::stream.42"*, %"class.hls::stream.42"* noalias align 512, %"class.hls::stream.49"*, %"class.hls::stream.49"* noalias align 512, %"class.hls::stream.42"*, %"class.hls::stream.42"* noalias align 512, %"class.hls::stream.42"*, %"class.hls::stream.42"* noalias align 512, %"class.hls::stream.42"*, %"class.hls::stream.42"* noalias align 512, %"class.hls::stream.20"*, %"class.hls::stream.20"* noalias align 512, %"class.hls::stream.20"*, %"class.hls::stream.20"* noalias align 512, %"class.hls::stream.42"*, %"class.hls::stream.42"* noalias align 512, %"class.hls::stream.42"*, %"class.hls::stream.42"* noalias align 512, %"class.hls::stream.50"*, %"class.hls::stream.50"* noalias align 512, %"class.hls::stream.51"*, %"class.hls::stream.51"* noalias align 512, %"class.hls::stream.52"*, %"class.hls::stream.52"* noalias align 512, %"class.hls::stream.53"*, %"class.hls::stream.53"* noalias align 512, %"class.hls::stream"*, %"class.hls::stream"* noalias align 512, %"class.hls::stream.54"*, %"class.hls::stream.54"* noalias align 512, %"class.hls::stream.55"*, %"class.hls::stream.55"* noalias align 512, %"class.hls::stream"*, %"class.hls::stream"* noalias align 512, %"class.hls::stream.54"*, %"class.hls::stream.54"* noalias align 512, %"class.hls::stream.42"*, %"class.hls::stream.42"* noalias align 512, %struct.ssdm_int.26*, %struct.ssdm_int.26* noalias align 512, %"class.hls::stream.15"*, %"class.hls::stream.15"* noalias align 512, %"class.hls::stream"*, %"class.hls::stream"* noalias align 512, %"class.hls::stream.42"*, %"class.hls::stream.42"* noalias align 512, %"class.hls::stream.16"*, %"class.hls::stream.16"* noalias align 512, %"class.hls::stream.58"*, %"class.hls::stream.58"* noalias align 512, %struct.ap_uint.3*, %struct.ap_uint.3* noalias align 512) unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.42"(%"class.hls::stream.42"* %0, %"class.hls::stream.42"* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.49"(%"class.hls::stream.49"* %2, %"class.hls::stream.49"* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.42"(%"class.hls::stream.42"* %4, %"class.hls::stream.42"* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.42"(%"class.hls::stream.42"* %6, %"class.hls::stream.42"* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.42"(%"class.hls::stream.42"* %8, %"class.hls::stream.42"* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.20"(%"class.hls::stream.20"* %10, %"class.hls::stream.20"* align 512 %11)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.20"(%"class.hls::stream.20"* %12, %"class.hls::stream.20"* align 512 %13)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.42"(%"class.hls::stream.42"* %14, %"class.hls::stream.42"* align 512 %15)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.42"(%"class.hls::stream.42"* %16, %"class.hls::stream.42"* align 512 %17)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.50"(%"class.hls::stream.50"* %18, %"class.hls::stream.50"* align 512 %19)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.51"(%"class.hls::stream.51"* %20, %"class.hls::stream.51"* align 512 %21)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.52"(%"class.hls::stream.52"* %22, %"class.hls::stream.52"* align 512 %23)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.53"(%"class.hls::stream.53"* %24, %"class.hls::stream.53"* align 512 %25)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* %26, %"class.hls::stream"* align 512 %27)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.54"(%"class.hls::stream.54"* %28, %"class.hls::stream.54"* align 512 %29)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.55"(%"class.hls::stream.55"* %30, %"class.hls::stream.55"* align 512 %31)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* %32, %"class.hls::stream"* align 512 %33)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.54"(%"class.hls::stream.54"* %34, %"class.hls::stream.54"* align 512 %35)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.42"(%"class.hls::stream.42"* %36, %"class.hls::stream.42"* align 512 %37)
  call fastcc void @onebyonecpy_hls.p0struct.ssdm_int.26(%struct.ssdm_int.26* %38, %struct.ssdm_int.26* align 512 %39)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.15"(%"class.hls::stream.15"* %40, %"class.hls::stream.15"* align 512 %41)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* %42, %"class.hls::stream"* align 512 %43)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.42"(%"class.hls::stream.42"* %44, %"class.hls::stream.42"* align 512 %45)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.16"(%"class.hls::stream.16"* %46, %"class.hls::stream.16"* align 512 %47)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.58"(%"class.hls::stream.58"* %48, %"class.hls::stream.58"* align 512 %49)
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %50, %struct.ap_uint.3* align 512 %51)
  ret void
}

declare void @apatb_toe_top_hw(%"class.hls::stream.42"*, %"class.hls::stream.49"*, %"class.hls::stream.42"*, %"class.hls::stream.42"*, %"class.hls::stream.42"*, %"class.hls::stream.20"*, %"class.hls::stream.20"*, %"class.hls::stream.42"*, %"class.hls::stream.42"*, %"class.hls::stream.50"*, %"class.hls::stream.51"*, %"class.hls::stream.52"*, %"class.hls::stream.53"*, %"class.hls::stream"*, %"class.hls::stream.54"*, %"class.hls::stream.55"*, %"class.hls::stream"*, %"class.hls::stream.54"*, %"class.hls::stream.42"*, %struct.ssdm_int.26*, %"class.hls::stream.15"*, %"class.hls::stream"*, %"class.hls::stream.42"*, %"class.hls::stream.16"*, %"class.hls::stream.58"*, %struct.ap_uint.3*, %struct.ap_uint.3*, %struct.ap_uint*, %struct.ap_uint.3*)

define void @toe_top_hw_stub_wrapper(%"class.hls::stream.42"*, %"class.hls::stream.49"*, %"class.hls::stream.42"*, %"class.hls::stream.42"*, %"class.hls::stream.42"*, %"class.hls::stream.20"*, %"class.hls::stream.20"*, %"class.hls::stream.42"*, %"class.hls::stream.42"*, %"class.hls::stream.50"*, %"class.hls::stream.51"*, %"class.hls::stream.52"*, %"class.hls::stream.53"*, %"class.hls::stream"*, %"class.hls::stream.54"*, %"class.hls::stream.55"*, %"class.hls::stream"*, %"class.hls::stream.54"*, %"class.hls::stream.42"*, %struct.ssdm_int.26*, %"class.hls::stream.15"*, %"class.hls::stream"*, %"class.hls::stream.42"*, %"class.hls::stream.16"*, %"class.hls::stream.58"*, %struct.ap_uint.3*, %struct.ap_uint.3*, %struct.ap_uint*, %struct.ap_uint.3*) #6 {
entry:
  call void @copy_out(%"class.hls::stream.42"* null, %"class.hls::stream.42"* %0, %"class.hls::stream.49"* null, %"class.hls::stream.49"* %1, %"class.hls::stream.42"* null, %"class.hls::stream.42"* %2, %"class.hls::stream.42"* null, %"class.hls::stream.42"* %3, %"class.hls::stream.42"* null, %"class.hls::stream.42"* %4, %"class.hls::stream.20"* null, %"class.hls::stream.20"* %5, %"class.hls::stream.20"* null, %"class.hls::stream.20"* %6, %"class.hls::stream.42"* null, %"class.hls::stream.42"* %7, %"class.hls::stream.42"* null, %"class.hls::stream.42"* %8, %"class.hls::stream.50"* null, %"class.hls::stream.50"* %9, %"class.hls::stream.51"* null, %"class.hls::stream.51"* %10, %"class.hls::stream.52"* null, %"class.hls::stream.52"* %11, %"class.hls::stream.53"* null, %"class.hls::stream.53"* %12, %"class.hls::stream"* null, %"class.hls::stream"* %13, %"class.hls::stream.54"* null, %"class.hls::stream.54"* %14, %"class.hls::stream.55"* null, %"class.hls::stream.55"* %15, %"class.hls::stream"* null, %"class.hls::stream"* %16, %"class.hls::stream.54"* null, %"class.hls::stream.54"* %17, %"class.hls::stream.42"* null, %"class.hls::stream.42"* %18, %struct.ssdm_int.26* null, %struct.ssdm_int.26* %19, %"class.hls::stream.15"* null, %"class.hls::stream.15"* %20, %"class.hls::stream"* null, %"class.hls::stream"* %21, %"class.hls::stream.42"* null, %"class.hls::stream.42"* %22, %"class.hls::stream.16"* null, %"class.hls::stream.16"* %23, %"class.hls::stream.58"* null, %"class.hls::stream.58"* %24, %struct.ap_uint.3* null, %struct.ap_uint.3* %28)
  call void @toe_top_hw_stub(%"class.hls::stream.42"* %0, %"class.hls::stream.49"* %1, %"class.hls::stream.42"* %2, %"class.hls::stream.42"* %3, %"class.hls::stream.42"* %4, %"class.hls::stream.20"* %5, %"class.hls::stream.20"* %6, %"class.hls::stream.42"* %7, %"class.hls::stream.42"* %8, %"class.hls::stream.50"* %9, %"class.hls::stream.51"* %10, %"class.hls::stream.52"* %11, %"class.hls::stream.53"* %12, %"class.hls::stream"* %13, %"class.hls::stream.54"* %14, %"class.hls::stream.55"* %15, %"class.hls::stream"* %16, %"class.hls::stream.54"* %17, %"class.hls::stream.42"* %18, %struct.ssdm_int.26* %19, %"class.hls::stream.15"* %20, %"class.hls::stream"* %21, %"class.hls::stream.42"* %22, %"class.hls::stream.16"* %23, %"class.hls::stream.58"* %24, %struct.ap_uint.3* %25, %struct.ap_uint.3* %26, %struct.ap_uint* %27, %struct.ap_uint.3* %28)
  call void @copy_in(%"class.hls::stream.42"* null, %"class.hls::stream.42"* %0, %"class.hls::stream.49"* null, %"class.hls::stream.49"* %1, %"class.hls::stream.42"* null, %"class.hls::stream.42"* %2, %"class.hls::stream.42"* null, %"class.hls::stream.42"* %3, %"class.hls::stream.42"* null, %"class.hls::stream.42"* %4, %"class.hls::stream.20"* null, %"class.hls::stream.20"* %5, %"class.hls::stream.20"* null, %"class.hls::stream.20"* %6, %"class.hls::stream.42"* null, %"class.hls::stream.42"* %7, %"class.hls::stream.42"* null, %"class.hls::stream.42"* %8, %"class.hls::stream.50"* null, %"class.hls::stream.50"* %9, %"class.hls::stream.51"* null, %"class.hls::stream.51"* %10, %"class.hls::stream.52"* null, %"class.hls::stream.52"* %11, %"class.hls::stream.53"* null, %"class.hls::stream.53"* %12, %"class.hls::stream"* null, %"class.hls::stream"* %13, %"class.hls::stream.54"* null, %"class.hls::stream.54"* %14, %"class.hls::stream.55"* null, %"class.hls::stream.55"* %15, %"class.hls::stream"* null, %"class.hls::stream"* %16, %"class.hls::stream.54"* null, %"class.hls::stream.54"* %17, %"class.hls::stream.42"* null, %"class.hls::stream.42"* %18, %struct.ssdm_int.26* null, %struct.ssdm_int.26* %19, %"class.hls::stream.15"* null, %"class.hls::stream.15"* %20, %"class.hls::stream"* null, %"class.hls::stream"* %21, %"class.hls::stream.42"* null, %"class.hls::stream.42"* %22, %"class.hls::stream.16"* null, %"class.hls::stream.16"* %23, %"class.hls::stream.58"* null, %"class.hls::stream.58"* %24, %struct.ap_uint.3* null, %struct.ap_uint.3* %28)
  ret void
}

declare void @toe_top_hw_stub(%"class.hls::stream.42"*, %"class.hls::stream.49"*, %"class.hls::stream.42"*, %"class.hls::stream.42"*, %"class.hls::stream.42"*, %"class.hls::stream.20"*, %"class.hls::stream.20"*, %"class.hls::stream.42"*, %"class.hls::stream.42"*, %"class.hls::stream.50"*, %"class.hls::stream.51"*, %"class.hls::stream.52"*, %"class.hls::stream.53"*, %"class.hls::stream"*, %"class.hls::stream.54"*, %"class.hls::stream.55"*, %"class.hls::stream"*, %"class.hls::stream.54"*, %"class.hls::stream.42"*, %struct.ssdm_int.26*, %"class.hls::stream.15"*, %"class.hls::stream"*, %"class.hls::stream.42"*, %"class.hls::stream.16"*, %"class.hls::stream.58"*, %struct.ap_uint.3*, %struct.ap_uint.3*, %struct.ap_uint*, %struct.ap_uint.3*)

declare i1 @fpga_fifo_not_empty_2(i8*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare i1 @fpga_fifo_not_empty_128(i8*)

declare i1 @fpga_fifo_not_empty_64(i8*)

declare i1 @fpga_fifo_not_empty_8(i8*)

declare i1 @fpga_fifo_not_empty_5(i8*)

declare i1 @fpga_fifo_not_empty_16(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare i1 @fpga_fifo_not_empty_20(i8*)

declare i1 @fpga_fifo_not_empty_12(i8*)

declare void @fpga_fifo_pop_2(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_pop_128(i8*, i8*)

declare void @fpga_fifo_pop_64(i8*, i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_pop_5(i8*, i8*)

declare void @fpga_fifo_pop_16(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_20(i8*, i8*)

declare void @fpga_fifo_pop_12(i8*, i8*)

declare void @fpga_fifo_push_2(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

declare void @fpga_fifo_push_128(i8*, i8*)

declare void @fpga_fifo_push_64(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

declare void @fpga_fifo_push_5(i8*, i8*)

declare void @fpga_fifo_push_16(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_20(i8*, i8*)

declare void @fpga_fifo_push_12(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { noinline "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, !6}
!28 = distinct !{!28, !6}
!29 = distinct !{!29, !6}
!30 = distinct !{!30, !6}
!31 = distinct !{!31, !6}
!32 = distinct !{!32, !6}
!33 = distinct !{!33, !6}
!34 = distinct !{!34, !6}
!35 = distinct !{!35, !6}
!36 = distinct !{!36, !6}
!37 = distinct !{!37, !6}
!38 = distinct !{!38, !6}
!39 = distinct !{!39, !6}
!40 = distinct !{!40, !6}
!41 = distinct !{!41, !6}
!42 = distinct !{!42, !6}
!43 = distinct !{!43, !6}
!44 = distinct !{!44, !6}
!45 = distinct !{!45, !6}
!46 = distinct !{!46, !6}
!47 = distinct !{!47, !6}
!48 = distinct !{!48, !6}
!49 = distinct !{!49, !6}
!50 = distinct !{!50, !6}
!51 = distinct !{!51, !6}
