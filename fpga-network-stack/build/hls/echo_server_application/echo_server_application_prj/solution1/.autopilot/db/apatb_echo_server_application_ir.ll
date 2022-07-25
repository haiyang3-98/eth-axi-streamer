; ModuleID = '/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/echo_server_application/echo_server_application_prj/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.ssdm_int.9 = type { i1 }
%"class.hls::stream.27" = type { %struct.appNotification }
%struct.appNotification = type { %struct.ap_uint, %struct.ap_uint, %struct.ap_uint.12, %struct.ap_uint, i1 }
%struct.ap_uint.12 = type { %struct.ap_int_base.13 }
%struct.ap_int_base.13 = type { %struct.ssdm_int.14 }
%struct.ssdm_int.14 = type { i32 }
%struct.ap_uint = type { %struct.ap_int_base }
%struct.ap_int_base = type { %struct.ssdm_int }
%struct.ssdm_int = type { i16 }
%"class.hls::stream.11" = type { %struct.ipTuple }
%struct.ipTuple = type { %struct.ap_uint.12, %struct.ap_uint }
%"class.hls::stream.15" = type { %struct.openStatus }
%struct.openStatus = type { %struct.ap_uint, %struct.ap_uint.16, %struct.ap_uint.12, %struct.ap_uint }
%struct.ap_uint.16 = type { %struct.ap_int_base.17 }
%struct.ap_int_base.17 = type { %"class.std::ios_base::Init" }
%"class.std::ios_base::Init" = type { i8 }
%"class.hls::stream" = type { %struct.ap_uint }
%"class.hls::stream.10" = type { %struct.appTxMeta }
%struct.appTxMeta = type { %struct.ap_uint, %struct.ap_uint }
%"class.hls::stream.0" = type { %struct.net_axis }
%struct.net_axis = type { %struct.ap_uint.1, %struct.ap_uint.4, %struct.ap_uint.7 }
%struct.ap_uint.1 = type { %struct.ap_int_base.2 }
%struct.ap_int_base.2 = type { %struct.ssdm_int.3 }
%struct.ssdm_int.3 = type { i512 }
%struct.ap_uint.4 = type { %struct.ap_int_base.5 }
%struct.ap_int_base.5 = type { %struct.ssdm_int.6 }
%struct.ssdm_int.6 = type { i64 }
%struct.ap_uint.7 = type { %struct.ap_int_base.8 }
%struct.ap_int_base.8 = type { %struct.ssdm_int.9 }
%"class.hls::stream.19" = type { %struct.appTxRsp }
%struct.appTxRsp = type { %struct.ap_uint, %struct.ap_uint, %struct.ap_uint.20, %struct.ap_uint.23 }
%struct.ap_uint.20 = type { %struct.ap_int_base.21 }
%struct.ap_int_base.21 = type { %struct.ssdm_int.22 }
%struct.ssdm_int.22 = type { i30 }
%struct.ap_uint.23 = type { %struct.ap_int_base.24 }
%struct.ap_int_base.24 = type { %struct.ssdm_int.25 }
%struct.ssdm_int.25 = type { i2 }

; Function Attrs: noinline
define void @apatb_echo_server_application_ir(%"class.hls::stream"* %listenPort, %struct.ssdm_int.9* %listenPortStatus, %"class.hls::stream.27"* %notifications, %"class.hls::stream.10"* %readRequest, %"class.hls::stream"* %rxMetaData, %"class.hls::stream.0"* %rxData, %"class.hls::stream.11"* %openConnection, %"class.hls::stream.15"* %openConStatus, %"class.hls::stream"* %closeConnection, %"class.hls::stream.10"* %txMetaData, %"class.hls::stream.0"* %txData, %"class.hls::stream.19"* %txStatus) local_unnamed_addr #0 {
entry:
  %listenPort_copy1 = alloca %"class.hls::stream", align 512
  %listenPortStatus_copy2 = alloca %struct.ssdm_int.9, align 512
  %notifications_copy = alloca %"class.hls::stream.27", align 512
  %readRequest_copy = alloca %"class.hls::stream.10", align 512
  %rxMetaData_copy3 = alloca %"class.hls::stream", align 512
  %rxData_copy = alloca %"class.hls::stream.0", align 512
  %openConnection_copy = alloca %"class.hls::stream.11", align 512
  %openConStatus_copy = alloca %"class.hls::stream.15", align 512
  %closeConnection_copy4 = alloca %"class.hls::stream", align 512
  %txMetaData_copy = alloca %"class.hls::stream.10", align 512
  %txData_copy = alloca %"class.hls::stream.0", align 512
  %txStatus_copy = alloca %"class.hls::stream.19", align 512
  call fastcc void @copy_in(%"class.hls::stream"* %listenPort, %"class.hls::stream"* nonnull align 512 %listenPort_copy1, %struct.ssdm_int.9* %listenPortStatus, %struct.ssdm_int.9* nonnull align 512 %listenPortStatus_copy2, %"class.hls::stream.27"* %notifications, %"class.hls::stream.27"* nonnull align 512 %notifications_copy, %"class.hls::stream.10"* %readRequest, %"class.hls::stream.10"* nonnull align 512 %readRequest_copy, %"class.hls::stream"* %rxMetaData, %"class.hls::stream"* nonnull align 512 %rxMetaData_copy3, %"class.hls::stream.0"* %rxData, %"class.hls::stream.0"* nonnull align 512 %rxData_copy, %"class.hls::stream.11"* %openConnection, %"class.hls::stream.11"* nonnull align 512 %openConnection_copy, %"class.hls::stream.15"* %openConStatus, %"class.hls::stream.15"* nonnull align 512 %openConStatus_copy, %"class.hls::stream"* %closeConnection, %"class.hls::stream"* nonnull align 512 %closeConnection_copy4, %"class.hls::stream.10"* %txMetaData, %"class.hls::stream.10"* nonnull align 512 %txMetaData_copy, %"class.hls::stream.0"* %txData, %"class.hls::stream.0"* nonnull align 512 %txData_copy, %"class.hls::stream.19"* %txStatus, %"class.hls::stream.19"* nonnull align 512 %txStatus_copy)
  call void @apatb_echo_server_application_hw(%"class.hls::stream"* %listenPort_copy1, %struct.ssdm_int.9* %listenPortStatus_copy2, %"class.hls::stream.27"* %notifications_copy, %"class.hls::stream.10"* %readRequest_copy, %"class.hls::stream"* %rxMetaData_copy3, %"class.hls::stream.0"* %rxData_copy, %"class.hls::stream.11"* %openConnection_copy, %"class.hls::stream.15"* %openConStatus_copy, %"class.hls::stream"* %closeConnection_copy4, %"class.hls::stream.10"* %txMetaData_copy, %"class.hls::stream.0"* %txData_copy, %"class.hls::stream.19"* %txStatus_copy)
  call fastcc void @copy_out(%"class.hls::stream"* %listenPort, %"class.hls::stream"* nonnull align 512 %listenPort_copy1, %struct.ssdm_int.9* %listenPortStatus, %struct.ssdm_int.9* nonnull align 512 %listenPortStatus_copy2, %"class.hls::stream.27"* %notifications, %"class.hls::stream.27"* nonnull align 512 %notifications_copy, %"class.hls::stream.10"* %readRequest, %"class.hls::stream.10"* nonnull align 512 %readRequest_copy, %"class.hls::stream"* %rxMetaData, %"class.hls::stream"* nonnull align 512 %rxMetaData_copy3, %"class.hls::stream.0"* %rxData, %"class.hls::stream.0"* nonnull align 512 %rxData_copy, %"class.hls::stream.11"* %openConnection, %"class.hls::stream.11"* nonnull align 512 %openConnection_copy, %"class.hls::stream.15"* %openConStatus, %"class.hls::stream.15"* nonnull align 512 %openConStatus_copy, %"class.hls::stream"* %closeConnection, %"class.hls::stream"* nonnull align 512 %closeConnection_copy4, %"class.hls::stream.10"* %txMetaData, %"class.hls::stream.10"* nonnull align 512 %txMetaData_copy, %"class.hls::stream.0"* %txData, %"class.hls::stream.0"* nonnull align 512 %txData_copy, %"class.hls::stream.19"* %txStatus, %"class.hls::stream.19"* nonnull align 512 %txStatus_copy)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @copy_in(%"class.hls::stream"*, %"class.hls::stream"* noalias align 512, %struct.ssdm_int.9*, %struct.ssdm_int.9* noalias align 512, %"class.hls::stream.27"*, %"class.hls::stream.27"* noalias align 512, %"class.hls::stream.10"*, %"class.hls::stream.10"* noalias align 512, %"class.hls::stream"*, %"class.hls::stream"* noalias align 512, %"class.hls::stream.0"*, %"class.hls::stream.0"* noalias align 512, %"class.hls::stream.11"*, %"class.hls::stream.11"* noalias align 512, %"class.hls::stream.15"*, %"class.hls::stream.15"* noalias align 512, %"class.hls::stream"*, %"class.hls::stream"* noalias align 512, %"class.hls::stream.10"*, %"class.hls::stream.10"* noalias align 512, %"class.hls::stream.0"*, %"class.hls::stream.0"* noalias align 512, %"class.hls::stream.19"*, %"class.hls::stream.19"* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* align 512 %1, %"class.hls::stream"* %0)
  call fastcc void @onebyonecpy_hls.p0struct.ssdm_int.9(%struct.ssdm_int.9* align 512 %3, %struct.ssdm_int.9* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.27"(%"class.hls::stream.27"* align 512 %5, %"class.hls::stream.27"* %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.10"(%"class.hls::stream.10"* align 512 %7, %"class.hls::stream.10"* %6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* align 512 %9, %"class.hls::stream"* %8)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.0"(%"class.hls::stream.0"* align 512 %11, %"class.hls::stream.0"* %10)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.11"(%"class.hls::stream.11"* align 512 %13, %"class.hls::stream.11"* %12)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.15"(%"class.hls::stream.15"* align 512 %15, %"class.hls::stream.15"* %14)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* align 512 %17, %"class.hls::stream"* %16)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.10"(%"class.hls::stream.10"* align 512 %19, %"class.hls::stream.10"* %18)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.0"(%"class.hls::stream.0"* align 512 %21, %"class.hls::stream.0"* %20)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.19"(%"class.hls::stream.19"* align 512 %23, %"class.hls::stream.19"* %22)
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
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* align 512 %.01, %struct.ap_uint* %.0)
  br label %ret

; <label>:11:                                     ; preds = %8
  %.0.02 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 0
  %.01.03 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* align 512 %.01.03, %struct.ap_int_base* %.0.02)
  br label %ret

; <label>:14:                                     ; preds = %11
  %.0.0.04 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %14
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* align 512 %.01.0.05, %struct.ssdm_int* %.0.0.04)
  br label %ret

; <label>:17:                                     ; preds = %14
  %18 = bitcast %"class.hls::stream"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %5, i64 2, i1 false)
  br label %ret

ret:                                              ; preds = %17, %16, %13, %10, %7, %entry
  ret void
}

declare i1 @fpga_fifo_exist_2(i8*) local_unnamed_addr

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
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream"* %1 to i8*
  %11 = bitcast %"class.hls::stream"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 2, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #4

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* noalias nocapture align 512, %struct.ap_uint* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_2(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint* %2 to i8*
  %6 = bitcast %struct.ap_uint* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint, %struct.ap_uint* %2
  %8 = bitcast %struct.ap_uint* %2 to i8*
  %9 = bitcast %struct.ap_uint* %0 to i8*
  call void @fpga_fifo_push_2(i8* %8, i8* %9)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint* %1 to i8*
  %11 = bitcast %struct.ap_uint* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 2, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* noalias nocapture align 512, %struct.ap_int_base* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_2(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base* %2 to i8*
  %6 = bitcast %struct.ap_int_base* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base, %struct.ap_int_base* %2
  %8 = bitcast %struct.ap_int_base* %2 to i8*
  %9 = bitcast %struct.ap_int_base* %0 to i8*
  call void @fpga_fifo_push_2(i8* %8, i8* %9)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base* %1 to i8*
  %11 = bitcast %struct.ap_int_base* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 2, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* noalias nocapture align 512, %struct.ssdm_int* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_2(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int* %2 to i8*
  %6 = bitcast %struct.ssdm_int* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int, %struct.ssdm_int* %2
  %8 = bitcast %struct.ssdm_int* %2 to i8*
  %9 = bitcast %struct.ssdm_int* %0 to i8*
  call void @fpga_fifo_push_2(i8* %8, i8* %9)
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int* %1 to i8*
  %11 = bitcast %struct.ssdm_int* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 2, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0struct.ssdm_int.9(%struct.ssdm_int.9* noalias align 512, %struct.ssdm_int.9* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %struct.ssdm_int.9* %0, null
  %3 = icmp eq %struct.ssdm_int.9* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %struct.ssdm_int.9* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_1(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.9(%struct.ssdm_int.9* nonnull align 512 %0, %struct.ssdm_int.9* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %9 = bitcast %struct.ssdm_int.9* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %5, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %8, %7, %entry
  ret void
}

declare i1 @fpga_fifo_exist_1(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.9(%struct.ssdm_int.9* noalias nocapture align 512, %struct.ssdm_int.9* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int.9
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.9* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.9* %2 to i8*
  %6 = bitcast %struct.ssdm_int.9* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.9, %struct.ssdm_int.9* %2
  %8 = bitcast %struct.ssdm_int.9* %2 to i8*
  %9 = bitcast %struct.ssdm_int.9* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !10

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.9* %1 to i8*
  %11 = bitcast %struct.ssdm_int.9* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.27"(%"class.hls::stream.27"* noalias align 512, %"class.hls::stream.27"* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %"class.hls::stream.27"* %0, null
  %3 = icmp eq %"class.hls::stream.27"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream.27"* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_12(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream.27"(%"class.hls::stream.27"* nonnull align 512 %0, %"class.hls::stream.27"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0.02 = getelementptr %"class.hls::stream.27", %"class.hls::stream.27"* %1, i32 0, i32 0, i32 0
  %.01.03 = getelementptr %"class.hls::stream.27", %"class.hls::stream.27"* %0, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* align 512 %.01.03, %struct.ap_uint* %.0.02)
  br label %19

; <label>:11:                                     ; preds = %8
  %.0.0.04 = getelementptr %"class.hls::stream.27", %"class.hls::stream.27"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"class.hls::stream.27", %"class.hls::stream.27"* %0, i32 0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* align 512 %.01.0.05, %struct.ap_int_base* %.0.0.04)
  br label %19

; <label>:14:                                     ; preds = %11
  %.0.0.0.06 = getelementptr %"class.hls::stream.27", %"class.hls::stream.27"* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.07 = getelementptr %"class.hls::stream.27", %"class.hls::stream.27"* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %14
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* align 512 %.01.0.0.07, %struct.ssdm_int* %.0.0.0.06)
  br label %19

; <label>:17:                                     ; preds = %14
  %18 = bitcast %"class.hls::stream.27"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %5, i64 2, i1 false)
  br label %19

; <label>:19:                                     ; preds = %17, %16, %13, %10
  %.0.110 = getelementptr %"class.hls::stream.27", %"class.hls::stream.27"* %1, i32 0, i32 0, i32 1
  %.01.111 = getelementptr %"class.hls::stream.27", %"class.hls::stream.27"* %0, i32 0, i32 0, i32 1
  %20 = bitcast %struct.ap_uint* %.0.110 to i8*
  %21 = call i1 @fpga_fifo_exist_2(i8* %20)
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* %.01.111, %struct.ap_uint* %.0.110)
  br label %34

; <label>:23:                                     ; preds = %19
  %.0.1.012 = getelementptr %"class.hls::stream.27", %"class.hls::stream.27"* %1, i32 0, i32 0, i32 1, i32 0
  %.01.1.013 = getelementptr %"class.hls::stream.27", %"class.hls::stream.27"* %0, i32 0, i32 0, i32 1, i32 0
  %24 = bitcast %struct.ap_int_base* %.0.1.012 to i8*
  %25 = call i1 @fpga_fifo_exist_2(i8* %24)
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %23
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* %.01.1.013, %struct.ap_int_base* %.0.1.012)
  br label %34

; <label>:27:                                     ; preds = %23
  %.0.1.0.014 = getelementptr %"class.hls::stream.27", %"class.hls::stream.27"* %1, i32 0, i32 0, i32 1, i32 0, i32 0
  %.01.1.0.015 = getelementptr %"class.hls::stream.27", %"class.hls::stream.27"* %0, i32 0, i32 0, i32 1, i32 0, i32 0
  %28 = bitcast %struct.ssdm_int* %.0.1.0.014 to i8*
  %29 = call i1 @fpga_fifo_exist_2(i8* %28)
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %27
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %.01.1.0.015, %struct.ssdm_int* %.0.1.0.014)
  br label %34

; <label>:31:                                     ; preds = %27
  %.01.1.0.0.017.gep37 = getelementptr %"class.hls::stream.27", %"class.hls::stream.27"* %0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %32 = bitcast i16* %.01.1.0.0.017.gep37 to i8*
  %.0.1.0.0.016.gep38 = getelementptr %"class.hls::stream.27", %"class.hls::stream.27"* %1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %33 = bitcast i16* %.0.1.0.0.016.gep38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %33, i64 2, i1 false)
  br label %34

; <label>:34:                                     ; preds = %31, %30, %26, %22
  %.0.218 = getelementptr %"class.hls::stream.27", %"class.hls::stream.27"* %1, i32 0, i32 0, i32 2
  %.01.219 = getelementptr %"class.hls::stream.27", %"class.hls::stream.27"* %0, i32 0, i32 0, i32 2
  %35 = bitcast %struct.ap_uint.12* %.0.218 to i8*
  %36 = call i1 @fpga_fifo_exist_4(i8* %35)
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %34
  call fastcc void @streamcpy_hls.p0struct.ap_uint.12(%struct.ap_uint.12* %.01.219, %struct.ap_uint.12* %.0.218)
  br label %49

; <label>:38:                                     ; preds = %34
  %.0.2.020 = getelementptr %"class.hls::stream.27", %"class.hls::stream.27"* %1, i32 0, i32 0, i32 2, i32 0
  %.01.2.021 = getelementptr %"class.hls::stream.27", %"class.hls::stream.27"* %0, i32 0, i32 0, i32 2, i32 0
  %39 = bitcast %struct.ap_int_base.13* %.0.2.020 to i8*
  %40 = call i1 @fpga_fifo_exist_4(i8* %39)
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %38
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.13(%struct.ap_int_base.13* %.01.2.021, %struct.ap_int_base.13* %.0.2.020)
  br label %49

; <label>:42:                                     ; preds = %38
  %.0.2.0.022 = getelementptr %"class.hls::stream.27", %"class.hls::stream.27"* %1, i32 0, i32 0, i32 2, i32 0, i32 0
  %.01.2.0.023 = getelementptr %"class.hls::stream.27", %"class.hls::stream.27"* %0, i32 0, i32 0, i32 2, i32 0, i32 0
  %43 = bitcast %struct.ssdm_int.14* %.0.2.0.022 to i8*
  %44 = call i1 @fpga_fifo_exist_4(i8* %43)
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %42
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.14(%struct.ssdm_int.14* %.01.2.0.023, %struct.ssdm_int.14* %.0.2.0.022)
  br label %49

; <label>:46:                                     ; preds = %42
  %.01.2.0.0.025.gep39 = getelementptr %"class.hls::stream.27", %"class.hls::stream.27"* %0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %47 = bitcast i32* %.01.2.0.0.025.gep39 to i8*
  %.0.2.0.0.024.gep40 = getelementptr %"class.hls::stream.27", %"class.hls::stream.27"* %1, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %48 = bitcast i32* %.0.2.0.0.024.gep40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %47, i8* align 1 %48, i64 4, i1 false)
  br label %49

; <label>:49:                                     ; preds = %46, %45, %41, %37
  %.0.326 = getelementptr %"class.hls::stream.27", %"class.hls::stream.27"* %1, i32 0, i32 0, i32 3
  %.01.327 = getelementptr %"class.hls::stream.27", %"class.hls::stream.27"* %0, i32 0, i32 0, i32 3
  %50 = bitcast %struct.ap_uint* %.0.326 to i8*
  %51 = call i1 @fpga_fifo_exist_2(i8* %50)
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %49
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* %.01.327, %struct.ap_uint* %.0.326)
  br label %64

; <label>:53:                                     ; preds = %49
  %.0.3.028 = getelementptr %"class.hls::stream.27", %"class.hls::stream.27"* %1, i32 0, i32 0, i32 3, i32 0
  %.01.3.029 = getelementptr %"class.hls::stream.27", %"class.hls::stream.27"* %0, i32 0, i32 0, i32 3, i32 0
  %54 = bitcast %struct.ap_int_base* %.0.3.028 to i8*
  %55 = call i1 @fpga_fifo_exist_2(i8* %54)
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %53
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* %.01.3.029, %struct.ap_int_base* %.0.3.028)
  br label %64

; <label>:57:                                     ; preds = %53
  %.0.3.0.030 = getelementptr %"class.hls::stream.27", %"class.hls::stream.27"* %1, i32 0, i32 0, i32 3, i32 0, i32 0
  %.01.3.0.031 = getelementptr %"class.hls::stream.27", %"class.hls::stream.27"* %0, i32 0, i32 0, i32 3, i32 0, i32 0
  %58 = bitcast %struct.ssdm_int* %.0.3.0.030 to i8*
  %59 = call i1 @fpga_fifo_exist_2(i8* %58)
  br i1 %59, label %60, label %61

; <label>:60:                                     ; preds = %57
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %.01.3.0.031, %struct.ssdm_int* %.0.3.0.030)
  br label %64

; <label>:61:                                     ; preds = %57
  %.01.3.0.0.033.gep41 = getelementptr %"class.hls::stream.27", %"class.hls::stream.27"* %0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %62 = bitcast i16* %.01.3.0.0.033.gep41 to i8*
  %.0.3.0.0.032.gep42 = getelementptr %"class.hls::stream.27", %"class.hls::stream.27"* %1, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %63 = bitcast i16* %.0.3.0.0.032.gep42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %62, i8* align 1 %63, i64 2, i1 false)
  br label %64

; <label>:64:                                     ; preds = %61, %60, %56, %52
  %.01.435.gep43 = getelementptr %"class.hls::stream.27", %"class.hls::stream.27"* %0, i32 0, i32 0, i32 4
  %65 = bitcast i1* %.01.435.gep43 to i8*
  %.0.434.gep44 = getelementptr %"class.hls::stream.27", %"class.hls::stream.27"* %1, i32 0, i32 0, i32 4
  %66 = bitcast i1* %.0.434.gep44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %65, i8* align 1 %66, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %64, %7, %entry
  ret void
}

declare i1 @fpga_fifo_exist_12(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.27"(%"class.hls::stream.27"* noalias nocapture align 512, %"class.hls::stream.27"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream.27"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream.27"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_12(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream.27"* %2 to i8*
  %6 = bitcast %"class.hls::stream.27"* %1 to i8*
  call void @fpga_fifo_pop_12(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream.27", %"class.hls::stream.27"* %2
  %8 = bitcast %"class.hls::stream.27"* %2 to i8*
  %9 = bitcast %"class.hls::stream.27"* %0 to i8*
  call void @fpga_fifo_push_12(i8* %8, i8* %9)
  br label %empty, !llvm.loop !11

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream.27"* %1 to i8*
  %11 = bitcast %"class.hls::stream.27"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 12, i1 false)
  ret void
}

declare i1 @fpga_fifo_exist_4(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.12(%struct.ap_uint.12* noalias nocapture, %struct.ap_uint.12* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint.12
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.12* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.12* %2 to i8*
  %6 = bitcast %struct.ap_uint.12* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.12, %struct.ap_uint.12* %2
  %8 = bitcast %struct.ap_uint.12* %2 to i8*
  %9 = bitcast %struct.ap_uint.12* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !12

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.12* %1 to i8*
  %11 = bitcast %struct.ap_uint.12* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.13(%struct.ap_int_base.13* noalias nocapture, %struct.ap_int_base.13* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.13
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.13* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.13* %2 to i8*
  %6 = bitcast %struct.ap_int_base.13* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.13, %struct.ap_int_base.13* %2
  %8 = bitcast %struct.ap_int_base.13* %2 to i8*
  %9 = bitcast %struct.ap_int_base.13* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !13

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.13* %1 to i8*
  %11 = bitcast %struct.ap_int_base.13* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.14(%struct.ssdm_int.14* noalias nocapture, %struct.ssdm_int.14* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int.14
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.14* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.14* %2 to i8*
  %6 = bitcast %struct.ssdm_int.14* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.14, %struct.ssdm_int.14* %2
  %8 = bitcast %struct.ssdm_int.14* %2 to i8*
  %9 = bitcast %struct.ssdm_int.14* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !14

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.14* %1 to i8*
  %11 = bitcast %struct.ssdm_int.14* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.10"(%"class.hls::stream.10"* noalias align 512, %"class.hls::stream.10"* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %"class.hls::stream.10"* %0, null
  %3 = icmp eq %"class.hls::stream.10"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream.10"* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream.10"(%"class.hls::stream.10"* nonnull align 512 %0, %"class.hls::stream.10"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0.02 = getelementptr %"class.hls::stream.10", %"class.hls::stream.10"* %1, i32 0, i32 0, i32 0
  %.01.03 = getelementptr %"class.hls::stream.10", %"class.hls::stream.10"* %0, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* align 512 %.01.03, %struct.ap_uint* %.0.02)
  br label %19

; <label>:11:                                     ; preds = %8
  %.0.0.04 = getelementptr %"class.hls::stream.10", %"class.hls::stream.10"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"class.hls::stream.10", %"class.hls::stream.10"* %0, i32 0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* align 512 %.01.0.05, %struct.ap_int_base* %.0.0.04)
  br label %19

; <label>:14:                                     ; preds = %11
  %.0.0.0.06 = getelementptr %"class.hls::stream.10", %"class.hls::stream.10"* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.07 = getelementptr %"class.hls::stream.10", %"class.hls::stream.10"* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %14
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* align 512 %.01.0.0.07, %struct.ssdm_int* %.0.0.0.06)
  br label %19

; <label>:17:                                     ; preds = %14
  %18 = bitcast %"class.hls::stream.10"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %5, i64 2, i1 false)
  br label %19

; <label>:19:                                     ; preds = %17, %16, %13, %10
  %.0.110 = getelementptr %"class.hls::stream.10", %"class.hls::stream.10"* %1, i32 0, i32 0, i32 1
  %.01.111 = getelementptr %"class.hls::stream.10", %"class.hls::stream.10"* %0, i32 0, i32 0, i32 1
  %20 = bitcast %struct.ap_uint* %.0.110 to i8*
  %21 = call i1 @fpga_fifo_exist_2(i8* %20)
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* %.01.111, %struct.ap_uint* %.0.110)
  br label %ret

; <label>:23:                                     ; preds = %19
  %.0.1.012 = getelementptr %"class.hls::stream.10", %"class.hls::stream.10"* %1, i32 0, i32 0, i32 1, i32 0
  %.01.1.013 = getelementptr %"class.hls::stream.10", %"class.hls::stream.10"* %0, i32 0, i32 0, i32 1, i32 0
  %24 = bitcast %struct.ap_int_base* %.0.1.012 to i8*
  %25 = call i1 @fpga_fifo_exist_2(i8* %24)
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %23
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* %.01.1.013, %struct.ap_int_base* %.0.1.012)
  br label %ret

; <label>:27:                                     ; preds = %23
  %.0.1.0.014 = getelementptr %"class.hls::stream.10", %"class.hls::stream.10"* %1, i32 0, i32 0, i32 1, i32 0, i32 0
  %.01.1.0.015 = getelementptr %"class.hls::stream.10", %"class.hls::stream.10"* %0, i32 0, i32 0, i32 1, i32 0, i32 0
  %28 = bitcast %struct.ssdm_int* %.0.1.0.014 to i8*
  %29 = call i1 @fpga_fifo_exist_2(i8* %28)
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %27
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %.01.1.0.015, %struct.ssdm_int* %.0.1.0.014)
  br label %ret

; <label>:31:                                     ; preds = %27
  %.01.1.0.0.017.gep19 = getelementptr %"class.hls::stream.10", %"class.hls::stream.10"* %0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %32 = bitcast i16* %.01.1.0.0.017.gep19 to i8*
  %.0.1.0.0.016.gep20 = getelementptr %"class.hls::stream.10", %"class.hls::stream.10"* %1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %33 = bitcast i16* %.0.1.0.0.016.gep20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %33, i64 2, i1 false)
  br label %ret

ret:                                              ; preds = %31, %30, %26, %22, %7, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.10"(%"class.hls::stream.10"* noalias nocapture align 512, %"class.hls::stream.10"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream.10"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream.10"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream.10"* %2 to i8*
  %6 = bitcast %"class.hls::stream.10"* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream.10", %"class.hls::stream.10"* %2
  %8 = bitcast %"class.hls::stream.10"* %2 to i8*
  %9 = bitcast %"class.hls::stream.10"* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !15

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream.10"* %1 to i8*
  %11 = bitcast %"class.hls::stream.10"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.0"(%"class.hls::stream.0"* noalias align 512, %"class.hls::stream.0"* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %"class.hls::stream.0"* %0, null
  %3 = icmp eq %"class.hls::stream.0"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream.0"* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_128(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream.0"(%"class.hls::stream.0"* nonnull align 512 %0, %"class.hls::stream.0"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0.02 = getelementptr %"class.hls::stream.0", %"class.hls::stream.0"* %1, i32 0, i32 0, i32 0
  %.01.03 = getelementptr %"class.hls::stream.0", %"class.hls::stream.0"* %0, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_64(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_uint.1(%struct.ap_uint.1* align 512 %.01.03, %struct.ap_uint.1* %.0.02)
  br label %19

; <label>:11:                                     ; preds = %8
  %.0.0.04 = getelementptr %"class.hls::stream.0", %"class.hls::stream.0"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"class.hls::stream.0", %"class.hls::stream.0"* %0, i32 0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_64(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.2(%struct.ap_int_base.2* align 512 %.01.0.05, %struct.ap_int_base.2* %.0.0.04)
  br label %19

; <label>:14:                                     ; preds = %11
  %.0.0.0.06 = getelementptr %"class.hls::stream.0", %"class.hls::stream.0"* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.07 = getelementptr %"class.hls::stream.0", %"class.hls::stream.0"* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_64(i8* %5)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %14
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.3(%struct.ssdm_int.3* align 512 %.01.0.0.07, %struct.ssdm_int.3* %.0.0.0.06)
  br label %19

; <label>:17:                                     ; preds = %14
  %18 = bitcast %"class.hls::stream.0"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %5, i64 64, i1 false)
  br label %19

; <label>:19:                                     ; preds = %17, %16, %13, %10
  %.0.110 = getelementptr %"class.hls::stream.0", %"class.hls::stream.0"* %1, i32 0, i32 0, i32 1
  %.01.111 = getelementptr %"class.hls::stream.0", %"class.hls::stream.0"* %0, i32 0, i32 0, i32 1
  %20 = bitcast %struct.ap_uint.4* %.0.110 to i8*
  %21 = call i1 @fpga_fifo_exist_8(i8* %20)
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  call fastcc void @streamcpy_hls.p0struct.ap_uint.4(%struct.ap_uint.4* align 64 %.01.111, %struct.ap_uint.4* %.0.110)
  br label %34

; <label>:23:                                     ; preds = %19
  %.0.1.012 = getelementptr %"class.hls::stream.0", %"class.hls::stream.0"* %1, i32 0, i32 0, i32 1, i32 0
  %.01.1.013 = getelementptr %"class.hls::stream.0", %"class.hls::stream.0"* %0, i32 0, i32 0, i32 1, i32 0
  %24 = bitcast %struct.ap_int_base.5* %.0.1.012 to i8*
  %25 = call i1 @fpga_fifo_exist_8(i8* %24)
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %23
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.5(%struct.ap_int_base.5* align 64 %.01.1.013, %struct.ap_int_base.5* %.0.1.012)
  br label %34

; <label>:27:                                     ; preds = %23
  %.0.1.0.014 = getelementptr %"class.hls::stream.0", %"class.hls::stream.0"* %1, i32 0, i32 0, i32 1, i32 0, i32 0
  %.01.1.0.015 = getelementptr %"class.hls::stream.0", %"class.hls::stream.0"* %0, i32 0, i32 0, i32 1, i32 0, i32 0
  %28 = bitcast %struct.ssdm_int.6* %.0.1.0.014 to i8*
  %29 = call i1 @fpga_fifo_exist_8(i8* %28)
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %27
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.6(%struct.ssdm_int.6* align 64 %.01.1.0.015, %struct.ssdm_int.6* %.0.1.0.014)
  br label %34

; <label>:31:                                     ; preds = %27
  %.01.1.0.0.017.gep27 = getelementptr %"class.hls::stream.0", %"class.hls::stream.0"* %0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %32 = bitcast i64* %.01.1.0.0.017.gep27 to i8*
  %.0.1.0.0.016.gep28 = getelementptr %"class.hls::stream.0", %"class.hls::stream.0"* %1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %33 = bitcast i64* %.0.1.0.0.016.gep28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %33, i64 8, i1 false)
  br label %34

; <label>:34:                                     ; preds = %31, %30, %26, %22
  %.0.218 = getelementptr %"class.hls::stream.0", %"class.hls::stream.0"* %1, i32 0, i32 0, i32 2
  %.01.219 = getelementptr %"class.hls::stream.0", %"class.hls::stream.0"* %0, i32 0, i32 0, i32 2
  %35 = bitcast %struct.ap_uint.7* %.0.218 to i8*
  %36 = call i1 @fpga_fifo_exist_1(i8* %35)
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %34
  call fastcc void @streamcpy_hls.p0struct.ap_uint.7(%struct.ap_uint.7* %.01.219, %struct.ap_uint.7* %.0.218)
  br label %ret

; <label>:38:                                     ; preds = %34
  %.0.2.020 = getelementptr %"class.hls::stream.0", %"class.hls::stream.0"* %1, i32 0, i32 0, i32 2, i32 0
  %.01.2.021 = getelementptr %"class.hls::stream.0", %"class.hls::stream.0"* %0, i32 0, i32 0, i32 2, i32 0
  %39 = bitcast %struct.ap_int_base.8* %.0.2.020 to i8*
  %40 = call i1 @fpga_fifo_exist_1(i8* %39)
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %38
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.8(%struct.ap_int_base.8* %.01.2.021, %struct.ap_int_base.8* %.0.2.020)
  br label %ret

; <label>:42:                                     ; preds = %38
  %.0.2.0.022 = getelementptr %"class.hls::stream.0", %"class.hls::stream.0"* %1, i32 0, i32 0, i32 2, i32 0, i32 0
  %.01.2.0.023 = getelementptr %"class.hls::stream.0", %"class.hls::stream.0"* %0, i32 0, i32 0, i32 2, i32 0, i32 0
  %43 = bitcast %struct.ssdm_int.9* %.0.2.0.022 to i8*
  %44 = call i1 @fpga_fifo_exist_1(i8* %43)
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %42
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.9(%struct.ssdm_int.9* %.01.2.0.023, %struct.ssdm_int.9* %.0.2.0.022)
  br label %ret

; <label>:46:                                     ; preds = %42
  %.01.2.0.0.025.gep29 = getelementptr %"class.hls::stream.0", %"class.hls::stream.0"* %0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %47 = bitcast i1* %.01.2.0.0.025.gep29 to i8*
  %.0.2.0.0.024.gep30 = getelementptr %"class.hls::stream.0", %"class.hls::stream.0"* %1, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %48 = bitcast i1* %.0.2.0.0.024.gep30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %47, i8* align 1 %48, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %46, %45, %41, %37, %7, %entry
  ret void
}

declare i1 @fpga_fifo_exist_128(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.0"(%"class.hls::stream.0"* noalias nocapture align 512, %"class.hls::stream.0"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream.0"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream.0"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_128(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream.0"* %2 to i8*
  %6 = bitcast %"class.hls::stream.0"* %1 to i8*
  call void @fpga_fifo_pop_128(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream.0", %"class.hls::stream.0"* %2
  %8 = bitcast %"class.hls::stream.0"* %2 to i8*
  %9 = bitcast %"class.hls::stream.0"* %0 to i8*
  call void @fpga_fifo_push_128(i8* %8, i8* %9)
  br label %empty, !llvm.loop !16

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream.0"* %1 to i8*
  %11 = bitcast %"class.hls::stream.0"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 128, i1 false)
  ret void
}

declare i1 @fpga_fifo_exist_64(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.1(%struct.ap_uint.1* noalias nocapture align 512, %struct.ap_uint.1* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint.1
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.1* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_64(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.1* %2 to i8*
  %6 = bitcast %struct.ap_uint.1* %1 to i8*
  call void @fpga_fifo_pop_64(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.1, %struct.ap_uint.1* %2
  %8 = bitcast %struct.ap_uint.1* %2 to i8*
  %9 = bitcast %struct.ap_uint.1* %0 to i8*
  call void @fpga_fifo_push_64(i8* %8, i8* %9)
  br label %empty, !llvm.loop !17

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.1* %1 to i8*
  %11 = bitcast %struct.ap_uint.1* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 64, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.2(%struct.ap_int_base.2* noalias nocapture align 512, %struct.ap_int_base.2* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.2
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.2* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_64(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.2* %2 to i8*
  %6 = bitcast %struct.ap_int_base.2* %1 to i8*
  call void @fpga_fifo_pop_64(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.2, %struct.ap_int_base.2* %2
  %8 = bitcast %struct.ap_int_base.2* %2 to i8*
  %9 = bitcast %struct.ap_int_base.2* %0 to i8*
  call void @fpga_fifo_push_64(i8* %8, i8* %9)
  br label %empty, !llvm.loop !18

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.2* %1 to i8*
  %11 = bitcast %struct.ap_int_base.2* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 64, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.3(%struct.ssdm_int.3* noalias nocapture align 512, %struct.ssdm_int.3* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int.3
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.3* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_64(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.3* %2 to i8*
  %6 = bitcast %struct.ssdm_int.3* %1 to i8*
  call void @fpga_fifo_pop_64(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.3, %struct.ssdm_int.3* %2
  %8 = bitcast %struct.ssdm_int.3* %2 to i8*
  %9 = bitcast %struct.ssdm_int.3* %0 to i8*
  call void @fpga_fifo_push_64(i8* %8, i8* %9)
  br label %empty, !llvm.loop !19

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.3* %1 to i8*
  %11 = bitcast %struct.ssdm_int.3* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 64, i1 false)
  ret void
}

declare i1 @fpga_fifo_exist_8(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.4(%struct.ap_uint.4* noalias nocapture align 64, %struct.ap_uint.4* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint.4
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.4* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.4* %2 to i8*
  %6 = bitcast %struct.ap_uint.4* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.4, %struct.ap_uint.4* %2
  %8 = bitcast %struct.ap_uint.4* %2 to i8*
  %9 = bitcast %struct.ap_uint.4* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !20

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.4* %1 to i8*
  %11 = bitcast %struct.ap_uint.4* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 8, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.5(%struct.ap_int_base.5* noalias nocapture align 64, %struct.ap_int_base.5* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.5
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.5* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.5* %2 to i8*
  %6 = bitcast %struct.ap_int_base.5* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.5, %struct.ap_int_base.5* %2
  %8 = bitcast %struct.ap_int_base.5* %2 to i8*
  %9 = bitcast %struct.ap_int_base.5* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !21

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.5* %1 to i8*
  %11 = bitcast %struct.ap_int_base.5* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 8, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.6(%struct.ssdm_int.6* noalias nocapture align 64, %struct.ssdm_int.6* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int.6
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.6* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.6* %2 to i8*
  %6 = bitcast %struct.ssdm_int.6* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.6, %struct.ssdm_int.6* %2
  %8 = bitcast %struct.ssdm_int.6* %2 to i8*
  %9 = bitcast %struct.ssdm_int.6* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !22

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.6* %1 to i8*
  %11 = bitcast %struct.ssdm_int.6* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 8, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.7(%struct.ap_uint.7* noalias nocapture, %struct.ap_uint.7* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint.7
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.7* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.7* %2 to i8*
  %6 = bitcast %struct.ap_uint.7* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.7, %struct.ap_uint.7* %2
  %8 = bitcast %struct.ap_uint.7* %2 to i8*
  %9 = bitcast %struct.ap_uint.7* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !23

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.7* %1 to i8*
  %11 = bitcast %struct.ap_uint.7* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.8(%struct.ap_int_base.8* noalias nocapture, %struct.ap_int_base.8* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.8
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.8* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.8* %2 to i8*
  %6 = bitcast %struct.ap_int_base.8* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.8, %struct.ap_int_base.8* %2
  %8 = bitcast %struct.ap_int_base.8* %2 to i8*
  %9 = bitcast %struct.ap_int_base.8* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !24

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.8* %1 to i8*
  %11 = bitcast %struct.ap_int_base.8* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.11"(%"class.hls::stream.11"* noalias align 512, %"class.hls::stream.11"* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %"class.hls::stream.11"* %0, null
  %3 = icmp eq %"class.hls::stream.11"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream.11"* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_8(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream.11"(%"class.hls::stream.11"* nonnull align 512 %0, %"class.hls::stream.11"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0.02 = getelementptr %"class.hls::stream.11", %"class.hls::stream.11"* %1, i32 0, i32 0, i32 0
  %.01.03 = getelementptr %"class.hls::stream.11", %"class.hls::stream.11"* %0, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_uint.12(%struct.ap_uint.12* align 512 %.01.03, %struct.ap_uint.12* %.0.02)
  br label %19

; <label>:11:                                     ; preds = %8
  %.0.0.04 = getelementptr %"class.hls::stream.11", %"class.hls::stream.11"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"class.hls::stream.11", %"class.hls::stream.11"* %0, i32 0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.13(%struct.ap_int_base.13* align 512 %.01.0.05, %struct.ap_int_base.13* %.0.0.04)
  br label %19

; <label>:14:                                     ; preds = %11
  %.0.0.0.06 = getelementptr %"class.hls::stream.11", %"class.hls::stream.11"* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.07 = getelementptr %"class.hls::stream.11", %"class.hls::stream.11"* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %14
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.14(%struct.ssdm_int.14* align 512 %.01.0.0.07, %struct.ssdm_int.14* %.0.0.0.06)
  br label %19

; <label>:17:                                     ; preds = %14
  %18 = bitcast %"class.hls::stream.11"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %5, i64 4, i1 false)
  br label %19

; <label>:19:                                     ; preds = %17, %16, %13, %10
  %.0.110 = getelementptr %"class.hls::stream.11", %"class.hls::stream.11"* %1, i32 0, i32 0, i32 1
  %.01.111 = getelementptr %"class.hls::stream.11", %"class.hls::stream.11"* %0, i32 0, i32 0, i32 1
  %20 = bitcast %struct.ap_uint* %.0.110 to i8*
  %21 = call i1 @fpga_fifo_exist_2(i8* %20)
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* %.01.111, %struct.ap_uint* %.0.110)
  br label %ret

; <label>:23:                                     ; preds = %19
  %.0.1.012 = getelementptr %"class.hls::stream.11", %"class.hls::stream.11"* %1, i32 0, i32 0, i32 1, i32 0
  %.01.1.013 = getelementptr %"class.hls::stream.11", %"class.hls::stream.11"* %0, i32 0, i32 0, i32 1, i32 0
  %24 = bitcast %struct.ap_int_base* %.0.1.012 to i8*
  %25 = call i1 @fpga_fifo_exist_2(i8* %24)
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %23
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* %.01.1.013, %struct.ap_int_base* %.0.1.012)
  br label %ret

; <label>:27:                                     ; preds = %23
  %.0.1.0.014 = getelementptr %"class.hls::stream.11", %"class.hls::stream.11"* %1, i32 0, i32 0, i32 1, i32 0, i32 0
  %.01.1.0.015 = getelementptr %"class.hls::stream.11", %"class.hls::stream.11"* %0, i32 0, i32 0, i32 1, i32 0, i32 0
  %28 = bitcast %struct.ssdm_int* %.0.1.0.014 to i8*
  %29 = call i1 @fpga_fifo_exist_2(i8* %28)
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %27
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %.01.1.0.015, %struct.ssdm_int* %.0.1.0.014)
  br label %ret

; <label>:31:                                     ; preds = %27
  %.01.1.0.0.017.gep19 = getelementptr %"class.hls::stream.11", %"class.hls::stream.11"* %0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %32 = bitcast i16* %.01.1.0.0.017.gep19 to i8*
  %.0.1.0.0.016.gep20 = getelementptr %"class.hls::stream.11", %"class.hls::stream.11"* %1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %33 = bitcast i16* %.0.1.0.0.016.gep20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %33, i64 2, i1 false)
  br label %ret

ret:                                              ; preds = %31, %30, %26, %22, %7, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.11"(%"class.hls::stream.11"* noalias nocapture align 512, %"class.hls::stream.11"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream.11"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream.11"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream.11"* %2 to i8*
  %6 = bitcast %"class.hls::stream.11"* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream.11", %"class.hls::stream.11"* %2
  %8 = bitcast %"class.hls::stream.11"* %2 to i8*
  %9 = bitcast %"class.hls::stream.11"* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !25

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream.11"* %1 to i8*
  %11 = bitcast %"class.hls::stream.11"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 8, i1 false)
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
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* align 512 %.01.03, %struct.ap_uint* %.0.02)
  br label %19

; <label>:11:                                     ; preds = %8
  %.0.0.04 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %0, i32 0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* align 512 %.01.0.05, %struct.ap_int_base* %.0.0.04)
  br label %19

; <label>:14:                                     ; preds = %11
  %.0.0.0.06 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.07 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %14
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* align 512 %.01.0.0.07, %struct.ssdm_int* %.0.0.0.06)
  br label %19

; <label>:17:                                     ; preds = %14
  %18 = bitcast %"class.hls::stream.15"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %5, i64 2, i1 false)
  br label %19

; <label>:19:                                     ; preds = %17, %16, %13, %10
  %.0.110 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 1
  %.01.111 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %0, i32 0, i32 0, i32 1
  %20 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %21 = call i1 @fpga_fifo_exist_1(i8* %20)
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  call fastcc void @streamcpy_hls.p0struct.ap_uint.16(%struct.ap_uint.16* %.01.111, %struct.ap_uint.16* %.0.110)
  br label %30

; <label>:23:                                     ; preds = %19
  %.0.1.012 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 1, i32 0
  %.01.1.013 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %0, i32 0, i32 0, i32 1, i32 0
  %24 = call i1 @fpga_fifo_exist_1(i8* %20)
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %23
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.17(%struct.ap_int_base.17* %.01.1.013, %struct.ap_int_base.17* %.0.1.012)
  br label %30

; <label>:26:                                     ; preds = %23
  %.0.1.0.014 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 1, i32 0, i32 0
  %.01.1.0.015 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %0, i32 0, i32 0, i32 1, i32 0, i32 0
  %27 = call i1 @fpga_fifo_exist_1(i8* %20)
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %26
  call fastcc void @"streamcpy_hls.p0class.std::ios_base::Init"(%"class.std::ios_base::Init"* %.01.1.0.015, %"class.std::ios_base::Init"* %.0.1.0.014)
  br label %30

; <label>:29:                                     ; preds = %26
  %.01.1.0.0.017 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %.01.1.0.0.017, i8* align 1 %20, i64 1, i1 false)
  br label %30

; <label>:30:                                     ; preds = %29, %28, %25, %22
  %.0.218 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 2
  %.01.219 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %0, i32 0, i32 0, i32 2
  %31 = bitcast %struct.ap_uint.12* %.0.218 to i8*
  %32 = call i1 @fpga_fifo_exist_4(i8* %31)
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %30
  call fastcc void @streamcpy_hls.p0struct.ap_uint.12(%struct.ap_uint.12* %.01.219, %struct.ap_uint.12* %.0.218)
  br label %45

; <label>:34:                                     ; preds = %30
  %.0.2.020 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 2, i32 0
  %.01.2.021 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %0, i32 0, i32 0, i32 2, i32 0
  %35 = bitcast %struct.ap_int_base.13* %.0.2.020 to i8*
  %36 = call i1 @fpga_fifo_exist_4(i8* %35)
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %34
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.13(%struct.ap_int_base.13* %.01.2.021, %struct.ap_int_base.13* %.0.2.020)
  br label %45

; <label>:38:                                     ; preds = %34
  %.0.2.0.022 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 2, i32 0, i32 0
  %.01.2.0.023 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %0, i32 0, i32 0, i32 2, i32 0, i32 0
  %39 = bitcast %struct.ssdm_int.14* %.0.2.0.022 to i8*
  %40 = call i1 @fpga_fifo_exist_4(i8* %39)
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %38
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.14(%struct.ssdm_int.14* %.01.2.0.023, %struct.ssdm_int.14* %.0.2.0.022)
  br label %45

; <label>:42:                                     ; preds = %38
  %.01.2.0.0.025.gep35 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %43 = bitcast i32* %.01.2.0.0.025.gep35 to i8*
  %.0.2.0.0.024.gep36 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %44 = bitcast i32* %.0.2.0.0.024.gep36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %43, i8* align 1 %44, i64 4, i1 false)
  br label %45

; <label>:45:                                     ; preds = %42, %41, %37, %33
  %.0.326 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 3
  %.01.327 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %0, i32 0, i32 0, i32 3
  %46 = bitcast %struct.ap_uint* %.0.326 to i8*
  %47 = call i1 @fpga_fifo_exist_2(i8* %46)
  br i1 %47, label %48, label %49

; <label>:48:                                     ; preds = %45
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* %.01.327, %struct.ap_uint* %.0.326)
  br label %ret

; <label>:49:                                     ; preds = %45
  %.0.3.028 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 3, i32 0
  %.01.3.029 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %0, i32 0, i32 0, i32 3, i32 0
  %50 = bitcast %struct.ap_int_base* %.0.3.028 to i8*
  %51 = call i1 @fpga_fifo_exist_2(i8* %50)
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %49
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* %.01.3.029, %struct.ap_int_base* %.0.3.028)
  br label %ret

; <label>:53:                                     ; preds = %49
  %.0.3.0.030 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 3, i32 0, i32 0
  %.01.3.0.031 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %0, i32 0, i32 0, i32 3, i32 0, i32 0
  %54 = bitcast %struct.ssdm_int* %.0.3.0.030 to i8*
  %55 = call i1 @fpga_fifo_exist_2(i8* %54)
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %53
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %.01.3.0.031, %struct.ssdm_int* %.0.3.0.030)
  br label %ret

; <label>:57:                                     ; preds = %53
  %.01.3.0.0.033.gep37 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %58 = bitcast i16* %.01.3.0.0.033.gep37 to i8*
  %.0.3.0.0.032.gep38 = getelementptr %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %59 = bitcast i16* %.0.3.0.0.032.gep38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %58, i8* align 1 %59, i64 2, i1 false)
  br label %ret

ret:                                              ; preds = %57, %56, %52, %48, %7, %entry
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
  br label %empty, !llvm.loop !26

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream.15"* %1 to i8*
  %11 = bitcast %"class.hls::stream.15"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 12, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.16(%struct.ap_uint.16* noalias nocapture, %struct.ap_uint.16* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint.16
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.16* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.16* %2 to i8*
  %6 = bitcast %struct.ap_uint.16* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.16, %struct.ap_uint.16* %2
  %8 = bitcast %struct.ap_uint.16* %2 to i8*
  %9 = bitcast %struct.ap_uint.16* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !27

ret:                                              ; preds = %empty
  %10 = getelementptr inbounds %struct.ap_uint.16, %struct.ap_uint.16* %1, i32 0, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %struct.ap_uint.16, %struct.ap_uint.16* %0, i32 0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.17(%struct.ap_int_base.17* noalias nocapture, %struct.ap_int_base.17* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.17
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.17* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.17* %2 to i8*
  %6 = bitcast %struct.ap_int_base.17* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.17, %struct.ap_int_base.17* %2
  %8 = bitcast %struct.ap_int_base.17* %2 to i8*
  %9 = bitcast %struct.ap_int_base.17* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !28

ret:                                              ; preds = %empty
  %10 = getelementptr inbounds %struct.ap_int_base.17, %struct.ap_int_base.17* %1, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %struct.ap_int_base.17, %struct.ap_int_base.17* %0, i32 0, i32 0, i32 0
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
  br label %empty, !llvm.loop !29

ret:                                              ; preds = %empty
  %10 = getelementptr inbounds %"class.std::ios_base::Init", %"class.std::ios_base::Init"* %1, i32 0, i32 0
  %11 = getelementptr inbounds %"class.std::ios_base::Init", %"class.std::ios_base::Init"* %0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.19"(%"class.hls::stream.19"* noalias align 512, %"class.hls::stream.19"* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %"class.hls::stream.19"* %0, null
  %3 = icmp eq %"class.hls::stream.19"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream.19"* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_12(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream.19"(%"class.hls::stream.19"* nonnull align 512 %0, %"class.hls::stream.19"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0.02 = getelementptr %"class.hls::stream.19", %"class.hls::stream.19"* %1, i32 0, i32 0, i32 0
  %.01.03 = getelementptr %"class.hls::stream.19", %"class.hls::stream.19"* %0, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* align 512 %.01.03, %struct.ap_uint* %.0.02)
  br label %19

; <label>:11:                                     ; preds = %8
  %.0.0.04 = getelementptr %"class.hls::stream.19", %"class.hls::stream.19"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"class.hls::stream.19", %"class.hls::stream.19"* %0, i32 0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* align 512 %.01.0.05, %struct.ap_int_base* %.0.0.04)
  br label %19

; <label>:14:                                     ; preds = %11
  %.0.0.0.06 = getelementptr %"class.hls::stream.19", %"class.hls::stream.19"* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.07 = getelementptr %"class.hls::stream.19", %"class.hls::stream.19"* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %14
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* align 512 %.01.0.0.07, %struct.ssdm_int* %.0.0.0.06)
  br label %19

; <label>:17:                                     ; preds = %14
  %18 = bitcast %"class.hls::stream.19"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %5, i64 2, i1 false)
  br label %19

; <label>:19:                                     ; preds = %17, %16, %13, %10
  %.0.110 = getelementptr %"class.hls::stream.19", %"class.hls::stream.19"* %1, i32 0, i32 0, i32 1
  %.01.111 = getelementptr %"class.hls::stream.19", %"class.hls::stream.19"* %0, i32 0, i32 0, i32 1
  %20 = bitcast %struct.ap_uint* %.0.110 to i8*
  %21 = call i1 @fpga_fifo_exist_2(i8* %20)
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* %.01.111, %struct.ap_uint* %.0.110)
  br label %34

; <label>:23:                                     ; preds = %19
  %.0.1.012 = getelementptr %"class.hls::stream.19", %"class.hls::stream.19"* %1, i32 0, i32 0, i32 1, i32 0
  %.01.1.013 = getelementptr %"class.hls::stream.19", %"class.hls::stream.19"* %0, i32 0, i32 0, i32 1, i32 0
  %24 = bitcast %struct.ap_int_base* %.0.1.012 to i8*
  %25 = call i1 @fpga_fifo_exist_2(i8* %24)
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %23
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* %.01.1.013, %struct.ap_int_base* %.0.1.012)
  br label %34

; <label>:27:                                     ; preds = %23
  %.0.1.0.014 = getelementptr %"class.hls::stream.19", %"class.hls::stream.19"* %1, i32 0, i32 0, i32 1, i32 0, i32 0
  %.01.1.0.015 = getelementptr %"class.hls::stream.19", %"class.hls::stream.19"* %0, i32 0, i32 0, i32 1, i32 0, i32 0
  %28 = bitcast %struct.ssdm_int* %.0.1.0.014 to i8*
  %29 = call i1 @fpga_fifo_exist_2(i8* %28)
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %27
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %.01.1.0.015, %struct.ssdm_int* %.0.1.0.014)
  br label %34

; <label>:31:                                     ; preds = %27
  %.01.1.0.0.017.gep35 = getelementptr %"class.hls::stream.19", %"class.hls::stream.19"* %0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %32 = bitcast i16* %.01.1.0.0.017.gep35 to i8*
  %.0.1.0.0.016.gep36 = getelementptr %"class.hls::stream.19", %"class.hls::stream.19"* %1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %33 = bitcast i16* %.0.1.0.0.016.gep36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %33, i64 2, i1 false)
  br label %34

; <label>:34:                                     ; preds = %31, %30, %26, %22
  %.0.218 = getelementptr %"class.hls::stream.19", %"class.hls::stream.19"* %1, i32 0, i32 0, i32 2
  %.01.219 = getelementptr %"class.hls::stream.19", %"class.hls::stream.19"* %0, i32 0, i32 0, i32 2
  %35 = bitcast %struct.ap_uint.20* %.0.218 to i8*
  %36 = call i1 @fpga_fifo_exist_4(i8* %35)
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %34
  call fastcc void @streamcpy_hls.p0struct.ap_uint.20(%struct.ap_uint.20* %.01.219, %struct.ap_uint.20* %.0.218)
  br label %49

; <label>:38:                                     ; preds = %34
  %.0.2.020 = getelementptr %"class.hls::stream.19", %"class.hls::stream.19"* %1, i32 0, i32 0, i32 2, i32 0
  %.01.2.021 = getelementptr %"class.hls::stream.19", %"class.hls::stream.19"* %0, i32 0, i32 0, i32 2, i32 0
  %39 = bitcast %struct.ap_int_base.21* %.0.2.020 to i8*
  %40 = call i1 @fpga_fifo_exist_4(i8* %39)
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %38
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.21(%struct.ap_int_base.21* %.01.2.021, %struct.ap_int_base.21* %.0.2.020)
  br label %49

; <label>:42:                                     ; preds = %38
  %.0.2.0.022 = getelementptr %"class.hls::stream.19", %"class.hls::stream.19"* %1, i32 0, i32 0, i32 2, i32 0, i32 0
  %.01.2.0.023 = getelementptr %"class.hls::stream.19", %"class.hls::stream.19"* %0, i32 0, i32 0, i32 2, i32 0, i32 0
  %43 = bitcast %struct.ssdm_int.22* %.0.2.0.022 to i8*
  %44 = call i1 @fpga_fifo_exist_4(i8* %43)
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %42
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.22(%struct.ssdm_int.22* %.01.2.0.023, %struct.ssdm_int.22* %.0.2.0.022)
  br label %49

; <label>:46:                                     ; preds = %42
  %.01.2.0.0.025.gep37 = getelementptr %"class.hls::stream.19", %"class.hls::stream.19"* %0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %47 = bitcast i30* %.01.2.0.0.025.gep37 to i8*
  %.0.2.0.0.024.gep38 = getelementptr %"class.hls::stream.19", %"class.hls::stream.19"* %1, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %48 = bitcast i30* %.0.2.0.0.024.gep38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %47, i8* align 1 %48, i64 4, i1 false)
  br label %49

; <label>:49:                                     ; preds = %46, %45, %41, %37
  %.0.326 = getelementptr %"class.hls::stream.19", %"class.hls::stream.19"* %1, i32 0, i32 0, i32 3
  %.01.327 = getelementptr %"class.hls::stream.19", %"class.hls::stream.19"* %0, i32 0, i32 0, i32 3
  %50 = bitcast %struct.ap_uint.23* %.0.326 to i8*
  %51 = call i1 @fpga_fifo_exist_1(i8* %50)
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %49
  call fastcc void @streamcpy_hls.p0struct.ap_uint.23(%struct.ap_uint.23* %.01.327, %struct.ap_uint.23* %.0.326)
  br label %ret

; <label>:53:                                     ; preds = %49
  %.0.3.028 = getelementptr %"class.hls::stream.19", %"class.hls::stream.19"* %1, i32 0, i32 0, i32 3, i32 0
  %.01.3.029 = getelementptr %"class.hls::stream.19", %"class.hls::stream.19"* %0, i32 0, i32 0, i32 3, i32 0
  %54 = bitcast %struct.ap_int_base.24* %.0.3.028 to i8*
  %55 = call i1 @fpga_fifo_exist_1(i8* %54)
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %53
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.24(%struct.ap_int_base.24* %.01.3.029, %struct.ap_int_base.24* %.0.3.028)
  br label %ret

; <label>:57:                                     ; preds = %53
  %.0.3.0.030 = getelementptr %"class.hls::stream.19", %"class.hls::stream.19"* %1, i32 0, i32 0, i32 3, i32 0, i32 0
  %.01.3.0.031 = getelementptr %"class.hls::stream.19", %"class.hls::stream.19"* %0, i32 0, i32 0, i32 3, i32 0, i32 0
  %58 = bitcast %struct.ssdm_int.25* %.0.3.0.030 to i8*
  %59 = call i1 @fpga_fifo_exist_1(i8* %58)
  br i1 %59, label %60, label %61

; <label>:60:                                     ; preds = %57
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.25(%struct.ssdm_int.25* %.01.3.0.031, %struct.ssdm_int.25* %.0.3.0.030)
  br label %ret

; <label>:61:                                     ; preds = %57
  %.01.3.0.0.033.gep39 = getelementptr %"class.hls::stream.19", %"class.hls::stream.19"* %0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %62 = bitcast i2* %.01.3.0.0.033.gep39 to i8*
  %.0.3.0.0.032.gep40 = getelementptr %"class.hls::stream.19", %"class.hls::stream.19"* %1, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %63 = bitcast i2* %.0.3.0.0.032.gep40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %62, i8* align 1 %63, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %61, %60, %56, %52, %7, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.19"(%"class.hls::stream.19"* noalias nocapture align 512, %"class.hls::stream.19"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream.19"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream.19"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_12(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream.19"* %2 to i8*
  %6 = bitcast %"class.hls::stream.19"* %1 to i8*
  call void @fpga_fifo_pop_12(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream.19", %"class.hls::stream.19"* %2
  %8 = bitcast %"class.hls::stream.19"* %2 to i8*
  %9 = bitcast %"class.hls::stream.19"* %0 to i8*
  call void @fpga_fifo_push_12(i8* %8, i8* %9)
  br label %empty, !llvm.loop !30

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream.19"* %1 to i8*
  %11 = bitcast %"class.hls::stream.19"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 12, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.20(%struct.ap_uint.20* noalias nocapture, %struct.ap_uint.20* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint.20
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.20* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.20* %2 to i8*
  %6 = bitcast %struct.ap_uint.20* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.20, %struct.ap_uint.20* %2
  %8 = bitcast %struct.ap_uint.20* %2 to i8*
  %9 = bitcast %struct.ap_uint.20* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !31

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.20* %1 to i8*
  %11 = bitcast %struct.ap_uint.20* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.21(%struct.ap_int_base.21* noalias nocapture, %struct.ap_int_base.21* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.21
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.21* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.21* %2 to i8*
  %6 = bitcast %struct.ap_int_base.21* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.21, %struct.ap_int_base.21* %2
  %8 = bitcast %struct.ap_int_base.21* %2 to i8*
  %9 = bitcast %struct.ap_int_base.21* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !32

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.21* %1 to i8*
  %11 = bitcast %struct.ap_int_base.21* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.22(%struct.ssdm_int.22* noalias nocapture, %struct.ssdm_int.22* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int.22
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.22* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.22* %2 to i8*
  %6 = bitcast %struct.ssdm_int.22* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.22, %struct.ssdm_int.22* %2
  %8 = bitcast %struct.ssdm_int.22* %2 to i8*
  %9 = bitcast %struct.ssdm_int.22* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !33

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.22* %1 to i8*
  %11 = bitcast %struct.ssdm_int.22* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.23(%struct.ap_uint.23* noalias nocapture, %struct.ap_uint.23* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint.23
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.23* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.23* %2 to i8*
  %6 = bitcast %struct.ap_uint.23* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.23, %struct.ap_uint.23* %2
  %8 = bitcast %struct.ap_uint.23* %2 to i8*
  %9 = bitcast %struct.ap_uint.23* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !34

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.23* %1 to i8*
  %11 = bitcast %struct.ap_uint.23* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.24(%struct.ap_int_base.24* noalias nocapture, %struct.ap_int_base.24* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.24
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.24* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.24* %2 to i8*
  %6 = bitcast %struct.ap_int_base.24* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.24, %struct.ap_int_base.24* %2
  %8 = bitcast %struct.ap_int_base.24* %2 to i8*
  %9 = bitcast %struct.ap_int_base.24* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !35

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.24* %1 to i8*
  %11 = bitcast %struct.ap_int_base.24* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.25(%struct.ssdm_int.25* noalias nocapture, %struct.ssdm_int.25* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int.25
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.25* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.25* %2 to i8*
  %6 = bitcast %struct.ssdm_int.25* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.25, %struct.ssdm_int.25* %2
  %8 = bitcast %struct.ssdm_int.25* %2 to i8*
  %9 = bitcast %struct.ssdm_int.25* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !36

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.25* %1 to i8*
  %11 = bitcast %struct.ssdm_int.25* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @copy_out(%"class.hls::stream"*, %"class.hls::stream"* noalias align 512, %struct.ssdm_int.9*, %struct.ssdm_int.9* noalias align 512, %"class.hls::stream.27"*, %"class.hls::stream.27"* noalias align 512, %"class.hls::stream.10"*, %"class.hls::stream.10"* noalias align 512, %"class.hls::stream"*, %"class.hls::stream"* noalias align 512, %"class.hls::stream.0"*, %"class.hls::stream.0"* noalias align 512, %"class.hls::stream.11"*, %"class.hls::stream.11"* noalias align 512, %"class.hls::stream.15"*, %"class.hls::stream.15"* noalias align 512, %"class.hls::stream"*, %"class.hls::stream"* noalias align 512, %"class.hls::stream.10"*, %"class.hls::stream.10"* noalias align 512, %"class.hls::stream.0"*, %"class.hls::stream.0"* noalias align 512, %"class.hls::stream.19"*, %"class.hls::stream.19"* noalias align 512) unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* %0, %"class.hls::stream"* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0struct.ssdm_int.9(%struct.ssdm_int.9* %2, %struct.ssdm_int.9* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.27"(%"class.hls::stream.27"* %4, %"class.hls::stream.27"* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.10"(%"class.hls::stream.10"* %6, %"class.hls::stream.10"* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* %8, %"class.hls::stream"* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.0"(%"class.hls::stream.0"* %10, %"class.hls::stream.0"* align 512 %11)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.11"(%"class.hls::stream.11"* %12, %"class.hls::stream.11"* align 512 %13)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.15"(%"class.hls::stream.15"* %14, %"class.hls::stream.15"* align 512 %15)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* %16, %"class.hls::stream"* align 512 %17)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.10"(%"class.hls::stream.10"* %18, %"class.hls::stream.10"* align 512 %19)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.0"(%"class.hls::stream.0"* %20, %"class.hls::stream.0"* align 512 %21)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.19"(%"class.hls::stream.19"* %22, %"class.hls::stream.19"* align 512 %23)
  ret void
}

declare void @apatb_echo_server_application_hw(%"class.hls::stream"*, %struct.ssdm_int.9*, %"class.hls::stream.27"*, %"class.hls::stream.10"*, %"class.hls::stream"*, %"class.hls::stream.0"*, %"class.hls::stream.11"*, %"class.hls::stream.15"*, %"class.hls::stream"*, %"class.hls::stream.10"*, %"class.hls::stream.0"*, %"class.hls::stream.19"*)

define void @echo_server_application_hw_stub_wrapper(%"class.hls::stream"*, %struct.ssdm_int.9*, %"class.hls::stream.27"*, %"class.hls::stream.10"*, %"class.hls::stream"*, %"class.hls::stream.0"*, %"class.hls::stream.11"*, %"class.hls::stream.15"*, %"class.hls::stream"*, %"class.hls::stream.10"*, %"class.hls::stream.0"*, %"class.hls::stream.19"*) #6 {
entry:
  call void @copy_out(%"class.hls::stream"* null, %"class.hls::stream"* %0, %struct.ssdm_int.9* null, %struct.ssdm_int.9* %1, %"class.hls::stream.27"* null, %"class.hls::stream.27"* %2, %"class.hls::stream.10"* null, %"class.hls::stream.10"* %3, %"class.hls::stream"* null, %"class.hls::stream"* %4, %"class.hls::stream.0"* null, %"class.hls::stream.0"* %5, %"class.hls::stream.11"* null, %"class.hls::stream.11"* %6, %"class.hls::stream.15"* null, %"class.hls::stream.15"* %7, %"class.hls::stream"* null, %"class.hls::stream"* %8, %"class.hls::stream.10"* null, %"class.hls::stream.10"* %9, %"class.hls::stream.0"* null, %"class.hls::stream.0"* %10, %"class.hls::stream.19"* null, %"class.hls::stream.19"* %11)
  call void @echo_server_application_hw_stub(%"class.hls::stream"* %0, %struct.ssdm_int.9* %1, %"class.hls::stream.27"* %2, %"class.hls::stream.10"* %3, %"class.hls::stream"* %4, %"class.hls::stream.0"* %5, %"class.hls::stream.11"* %6, %"class.hls::stream.15"* %7, %"class.hls::stream"* %8, %"class.hls::stream.10"* %9, %"class.hls::stream.0"* %10, %"class.hls::stream.19"* %11)
  call void @copy_in(%"class.hls::stream"* null, %"class.hls::stream"* %0, %struct.ssdm_int.9* null, %struct.ssdm_int.9* %1, %"class.hls::stream.27"* null, %"class.hls::stream.27"* %2, %"class.hls::stream.10"* null, %"class.hls::stream.10"* %3, %"class.hls::stream"* null, %"class.hls::stream"* %4, %"class.hls::stream.0"* null, %"class.hls::stream.0"* %5, %"class.hls::stream.11"* null, %"class.hls::stream.11"* %6, %"class.hls::stream.15"* null, %"class.hls::stream.15"* %7, %"class.hls::stream"* null, %"class.hls::stream"* %8, %"class.hls::stream.10"* null, %"class.hls::stream.10"* %9, %"class.hls::stream.0"* null, %"class.hls::stream.0"* %10, %"class.hls::stream.19"* null, %"class.hls::stream.19"* %11)
  ret void
}

declare void @echo_server_application_hw_stub(%"class.hls::stream"*, %struct.ssdm_int.9*, %"class.hls::stream.27"*, %"class.hls::stream.10"*, %"class.hls::stream"*, %"class.hls::stream.0"*, %"class.hls::stream.11"*, %"class.hls::stream.15"*, %"class.hls::stream"*, %"class.hls::stream.10"*, %"class.hls::stream.0"*, %"class.hls::stream.19"*)

declare i1 @fpga_fifo_not_empty_2(i8*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare i1 @fpga_fifo_not_empty_12(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare i1 @fpga_fifo_not_empty_128(i8*)

declare i1 @fpga_fifo_not_empty_64(i8*)

declare i1 @fpga_fifo_not_empty_8(i8*)

declare void @fpga_fifo_pop_2(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_pop_12(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_128(i8*, i8*)

declare void @fpga_fifo_pop_64(i8*, i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_push_2(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

declare void @fpga_fifo_push_12(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_128(i8*, i8*)

declare void @fpga_fifo_push_64(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { noinline "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
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
