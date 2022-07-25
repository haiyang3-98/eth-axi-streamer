; ModuleID = '/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/dhcp_client/dhcp_client_prj/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream.3" = type { i1 }
%"class.hls::stream.8" = type { %struct.udpMetadata }
%struct.udpMetadata = type { %struct.sockaddr_in, %struct.sockaddr_in }
%struct.sockaddr_in = type { %struct.ap_uint.0, %struct.ap_uint }
%struct.ap_uint.0 = type { %struct.ap_int_base.1 }
%struct.ap_int_base.1 = type { %struct.ssdm_int.2 }
%struct.ssdm_int.2 = type { i16 }
%struct.ap_uint = type { %struct.ap_int_base }
%struct.ap_int_base = type { %struct.ssdm_int }
%struct.ssdm_int = type { i32 }
%"class.hls::stream" = type { %struct.ap_uint.0 }
%"class.hls::stream.9" = type { %"struct.hls::axis" }
%"struct.hls::axis" = type { %struct.ap_uint.10, %struct.ap_uint.13, %struct.ap_uint.13, %struct.ap_uint.5, %struct.ap_uint.5, %struct.ap_uint.5, %struct.ap_uint.5 }
%struct.ap_uint.10 = type { %struct.ap_int_base.11 }
%struct.ap_int_base.11 = type { %struct.ssdm_int.12 }
%struct.ssdm_int.12 = type { i64 }
%struct.ap_uint.13 = type { %struct.ap_int_base.14 }
%struct.ap_int_base.14 = type { %"class.std::ios_base::Init" }
%"class.std::ios_base::Init" = type { i8 }
%struct.ap_uint.5 = type { %struct.ap_int_base.6 }
%struct.ap_int_base.6 = type { %"class.hls::stream.3" }
%struct.ap_uint.17 = type { %struct.ap_int_base.18 }
%struct.ap_int_base.18 = type { %struct.ssdm_int.19 }
%struct.ssdm_int.19 = type { i48 }

; Function Attrs: noinline
define void @apatb_dhcp_client_ir(%"class.hls::stream"* %openPort, %"class.hls::stream.3"* %confirmPortStatus, %"class.hls::stream.8"* %dataInMeta, %"class.hls::stream.9"* %dataIn, %"class.hls::stream.8"* %dataOutMeta, %"class.hls::stream"* %dataOutLength, %"class.hls::stream.9"* %dataOut, %struct.ap_uint.5* %dhcpEnable, %struct.ap_uint* %inputIpAddress, %struct.ap_uint* %dhcpIpAddressOut, %struct.ap_uint.17* %myMacAddress) local_unnamed_addr #0 {
entry:
  %openPort_copy1 = alloca %"class.hls::stream", align 512
  %confirmPortStatus_copy2 = alloca %"class.hls::stream.3", align 512
  %dataInMeta_copy = alloca %"class.hls::stream.8", align 512
  %dataIn_copy = alloca %"class.hls::stream.9", align 512
  %dataOutMeta_copy = alloca %"class.hls::stream.8", align 512
  %dataOutLength_copy3 = alloca %"class.hls::stream", align 512
  %dataOut_copy = alloca %"class.hls::stream.9", align 512
  %dhcpEnable_copy4 = alloca %struct.ap_uint.5, align 512
  %inputIpAddress_copy5 = alloca %struct.ap_uint, align 512
  %dhcpIpAddressOut_copy6 = alloca %struct.ap_uint, align 512
  %myMacAddress_copy7 = alloca %struct.ap_uint.17, align 512
  call fastcc void @copy_in(%"class.hls::stream"* %openPort, %"class.hls::stream"* nonnull align 512 %openPort_copy1, %"class.hls::stream.3"* %confirmPortStatus, %"class.hls::stream.3"* nonnull align 512 %confirmPortStatus_copy2, %"class.hls::stream.8"* %dataInMeta, %"class.hls::stream.8"* nonnull align 512 %dataInMeta_copy, %"class.hls::stream.9"* %dataIn, %"class.hls::stream.9"* nonnull align 512 %dataIn_copy, %"class.hls::stream.8"* %dataOutMeta, %"class.hls::stream.8"* nonnull align 512 %dataOutMeta_copy, %"class.hls::stream"* %dataOutLength, %"class.hls::stream"* nonnull align 512 %dataOutLength_copy3, %"class.hls::stream.9"* %dataOut, %"class.hls::stream.9"* nonnull align 512 %dataOut_copy, %struct.ap_uint.5* %dhcpEnable, %struct.ap_uint.5* nonnull align 512 %dhcpEnable_copy4, %struct.ap_uint* %inputIpAddress, %struct.ap_uint* nonnull align 512 %inputIpAddress_copy5, %struct.ap_uint* %dhcpIpAddressOut, %struct.ap_uint* nonnull align 512 %dhcpIpAddressOut_copy6, %struct.ap_uint.17* %myMacAddress, %struct.ap_uint.17* nonnull align 512 %myMacAddress_copy7)
  call void @apatb_dhcp_client_hw(%"class.hls::stream"* %openPort_copy1, %"class.hls::stream.3"* %confirmPortStatus_copy2, %"class.hls::stream.8"* %dataInMeta_copy, %"class.hls::stream.9"* %dataIn_copy, %"class.hls::stream.8"* %dataOutMeta_copy, %"class.hls::stream"* %dataOutLength_copy3, %"class.hls::stream.9"* %dataOut_copy, %struct.ap_uint.5* %dhcpEnable_copy4, %struct.ap_uint* %inputIpAddress_copy5, %struct.ap_uint* %dhcpIpAddressOut_copy6, %struct.ap_uint.17* %myMacAddress_copy7)
  call fastcc void @copy_out(%"class.hls::stream"* %openPort, %"class.hls::stream"* nonnull align 512 %openPort_copy1, %"class.hls::stream.3"* %confirmPortStatus, %"class.hls::stream.3"* nonnull align 512 %confirmPortStatus_copy2, %"class.hls::stream.8"* %dataInMeta, %"class.hls::stream.8"* nonnull align 512 %dataInMeta_copy, %"class.hls::stream.9"* %dataIn, %"class.hls::stream.9"* nonnull align 512 %dataIn_copy, %"class.hls::stream.8"* %dataOutMeta, %"class.hls::stream.8"* nonnull align 512 %dataOutMeta_copy, %"class.hls::stream"* %dataOutLength, %"class.hls::stream"* nonnull align 512 %dataOutLength_copy3, %"class.hls::stream.9"* %dataOut, %"class.hls::stream.9"* nonnull align 512 %dataOut_copy, %struct.ap_uint.5* %dhcpEnable, %struct.ap_uint.5* nonnull align 512 %dhcpEnable_copy4, %struct.ap_uint* %inputIpAddress, %struct.ap_uint* nonnull align 512 %inputIpAddress_copy5, %struct.ap_uint* %dhcpIpAddressOut, %struct.ap_uint* nonnull align 512 %dhcpIpAddressOut_copy6, %struct.ap_uint.17* %myMacAddress, %struct.ap_uint.17* nonnull align 512 %myMacAddress_copy7)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @copy_in(%"class.hls::stream"*, %"class.hls::stream"* noalias align 512, %"class.hls::stream.3"*, %"class.hls::stream.3"* noalias align 512, %"class.hls::stream.8"*, %"class.hls::stream.8"* noalias align 512, %"class.hls::stream.9"*, %"class.hls::stream.9"* noalias align 512, %"class.hls::stream.8"*, %"class.hls::stream.8"* noalias align 512, %"class.hls::stream"*, %"class.hls::stream"* noalias align 512, %"class.hls::stream.9"*, %"class.hls::stream.9"* noalias align 512, %struct.ap_uint.5*, %struct.ap_uint.5* noalias align 512, %struct.ap_uint*, %struct.ap_uint* noalias align 512, %struct.ap_uint*, %struct.ap_uint* noalias align 512, %struct.ap_uint.17*, %struct.ap_uint.17* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* align 512 %1, %"class.hls::stream"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.3"(%"class.hls::stream.3"* align 512 %3, %"class.hls::stream.3"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.8"(%"class.hls::stream.8"* align 512 %5, %"class.hls::stream.8"* %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.9"(%"class.hls::stream.9"* align 512 %7, %"class.hls::stream.9"* %6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.8"(%"class.hls::stream.8"* align 512 %9, %"class.hls::stream.8"* %8)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* align 512 %11, %"class.hls::stream"* %10)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.9"(%"class.hls::stream.9"* align 512 %13, %"class.hls::stream.9"* %12)
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint.5(%struct.ap_uint.5* align 512 %15, %struct.ap_uint.5* %14)
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint(%struct.ap_uint* align 512 %17, %struct.ap_uint* %16)
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint(%struct.ap_uint* align 512 %19, %struct.ap_uint* %18)
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint.17(%struct.ap_uint.17* align 512 %21, %struct.ap_uint.17* %20)
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
  call fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* align 512 %.01, %struct.ap_uint.0* %.0)
  br label %ret

; <label>:11:                                     ; preds = %8
  %.0.02 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 0
  %.01.03 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* align 512 %.01.03, %struct.ap_int_base.1* %.0.02)
  br label %ret

; <label>:14:                                     ; preds = %11
  %.0.0.04 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %14
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* align 512 %.01.0.05, %struct.ssdm_int.2* %.0.0.04)
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
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* noalias nocapture align 512, %struct.ap_uint.0* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint.0
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.0* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_2(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.0* %2 to i8*
  %6 = bitcast %struct.ap_uint.0* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.0, %struct.ap_uint.0* %2
  %8 = bitcast %struct.ap_uint.0* %2 to i8*
  %9 = bitcast %struct.ap_uint.0* %0 to i8*
  call void @fpga_fifo_push_2(i8* %8, i8* %9)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.0* %1 to i8*
  %11 = bitcast %struct.ap_uint.0* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 2, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* noalias nocapture align 512, %struct.ap_int_base.1* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.1
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.1* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_2(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.1* %2 to i8*
  %6 = bitcast %struct.ap_int_base.1* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.1, %struct.ap_int_base.1* %2
  %8 = bitcast %struct.ap_int_base.1* %2 to i8*
  %9 = bitcast %struct.ap_int_base.1* %0 to i8*
  call void @fpga_fifo_push_2(i8* %8, i8* %9)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.1* %1 to i8*
  %11 = bitcast %struct.ap_int_base.1* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 2, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* noalias nocapture align 512, %struct.ssdm_int.2* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int.2
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.2* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_2(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.2* %2 to i8*
  %6 = bitcast %struct.ssdm_int.2* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.2, %struct.ssdm_int.2* %2
  %8 = bitcast %struct.ssdm_int.2* %2 to i8*
  %9 = bitcast %struct.ssdm_int.2* %0 to i8*
  call void @fpga_fifo_push_2(i8* %8, i8* %9)
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.2* %1 to i8*
  %11 = bitcast %struct.ssdm_int.2* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 2, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.3"(%"class.hls::stream.3"* noalias align 512, %"class.hls::stream.3"* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %"class.hls::stream.3"* %0, null
  %3 = icmp eq %"class.hls::stream.3"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream.3"* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_1(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream.3"(%"class.hls::stream.3"* nonnull align 512 %0, %"class.hls::stream.3"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %9 = bitcast %"class.hls::stream.3"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %5, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %8, %7, %entry
  ret void
}

declare i1 @fpga_fifo_exist_1(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.3"(%"class.hls::stream.3"* noalias nocapture align 512, %"class.hls::stream.3"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream.3"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream.3"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream.3"* %2 to i8*
  %6 = bitcast %"class.hls::stream.3"* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream.3", %"class.hls::stream.3"* %2
  %8 = bitcast %"class.hls::stream.3"* %2 to i8*
  %9 = bitcast %"class.hls::stream.3"* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !10

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream.3"* %1 to i8*
  %11 = bitcast %"class.hls::stream.3"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.8"(%"class.hls::stream.8"* noalias align 512, %"class.hls::stream.8"* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %"class.hls::stream.8"* %0, null
  %3 = icmp eq %"class.hls::stream.8"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream.8"* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_16(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream.8"(%"class.hls::stream.8"* nonnull align 512 %0, %"class.hls::stream.8"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0.0.04 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %0, i32 0, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* align 512 %.01.0.05, %struct.ap_uint.0* %.0.0.04)
  br label %19

; <label>:11:                                     ; preds = %8
  %.0.0.0.06 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.07 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* align 512 %.01.0.0.07, %struct.ap_int_base.1* %.0.0.0.06)
  br label %19

; <label>:14:                                     ; preds = %11
  %.0.0.0.0.08 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.0.09 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %14
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* align 512 %.01.0.0.0.09, %struct.ssdm_int.2* %.0.0.0.0.08)
  br label %19

; <label>:17:                                     ; preds = %14
  %18 = bitcast %"class.hls::stream.8"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %5, i64 2, i1 false)
  br label %19

; <label>:19:                                     ; preds = %17, %16, %13, %10
  %.0.0.112 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %1, i32 0, i32 0, i32 0, i32 1
  %.01.0.113 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %0, i32 0, i32 0, i32 0, i32 1
  %20 = bitcast %struct.ap_uint* %.0.0.112 to i8*
  %21 = call i1 @fpga_fifo_exist_4(i8* %20)
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* %.01.0.113, %struct.ap_uint* %.0.0.112)
  br label %34

; <label>:23:                                     ; preds = %19
  %.0.0.1.014 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %1, i32 0, i32 0, i32 0, i32 1, i32 0
  %.01.0.1.015 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %0, i32 0, i32 0, i32 0, i32 1, i32 0
  %24 = bitcast %struct.ap_int_base* %.0.0.1.014 to i8*
  %25 = call i1 @fpga_fifo_exist_4(i8* %24)
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %23
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* %.01.0.1.015, %struct.ap_int_base* %.0.0.1.014)
  br label %34

; <label>:27:                                     ; preds = %23
  %.0.0.1.0.016 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %.01.0.1.0.017 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %28 = bitcast %struct.ssdm_int* %.0.0.1.0.016 to i8*
  %29 = call i1 @fpga_fifo_exist_4(i8* %28)
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %27
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %.01.0.1.0.017, %struct.ssdm_int* %.0.0.1.0.016)
  br label %34

; <label>:31:                                     ; preds = %27
  %.01.0.1.0.0.019.gep39 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %32 = bitcast i32* %.01.0.1.0.0.019.gep39 to i8*
  %.0.0.1.0.0.018.gep40 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %33 = bitcast i32* %.0.0.1.0.0.018.gep40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %33, i64 4, i1 false)
  br label %34

; <label>:34:                                     ; preds = %31, %30, %26, %22
  %.0.1.022 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %1, i32 0, i32 0, i32 1, i32 0
  %.01.1.023 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %0, i32 0, i32 0, i32 1, i32 0
  %35 = bitcast %struct.ap_uint.0* %.0.1.022 to i8*
  %36 = call i1 @fpga_fifo_exist_2(i8* %35)
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %34
  call fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* %.01.1.023, %struct.ap_uint.0* %.0.1.022)
  br label %49

; <label>:38:                                     ; preds = %34
  %.0.1.0.024 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %1, i32 0, i32 0, i32 1, i32 0, i32 0
  %.01.1.0.025 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %0, i32 0, i32 0, i32 1, i32 0, i32 0
  %39 = bitcast %struct.ap_int_base.1* %.0.1.0.024 to i8*
  %40 = call i1 @fpga_fifo_exist_2(i8* %39)
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %38
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* %.01.1.0.025, %struct.ap_int_base.1* %.0.1.0.024)
  br label %49

; <label>:42:                                     ; preds = %38
  %.0.1.0.0.026 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %.01.1.0.0.027 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %43 = bitcast %struct.ssdm_int.2* %.0.1.0.0.026 to i8*
  %44 = call i1 @fpga_fifo_exist_2(i8* %43)
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %42
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* %.01.1.0.0.027, %struct.ssdm_int.2* %.0.1.0.0.026)
  br label %49

; <label>:46:                                     ; preds = %42
  %.01.1.0.0.0.029.gep41 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0
  %47 = bitcast i16* %.01.1.0.0.0.029.gep41 to i8*
  %.0.1.0.0.0.028.gep42 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0
  %48 = bitcast i16* %.0.1.0.0.0.028.gep42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %47, i8* align 1 %48, i64 2, i1 false)
  br label %49

; <label>:49:                                     ; preds = %46, %45, %41, %37
  %.0.1.130 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %1, i32 0, i32 0, i32 1, i32 1
  %.01.1.131 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %0, i32 0, i32 0, i32 1, i32 1
  %50 = bitcast %struct.ap_uint* %.0.1.130 to i8*
  %51 = call i1 @fpga_fifo_exist_4(i8* %50)
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %49
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* %.01.1.131, %struct.ap_uint* %.0.1.130)
  br label %ret

; <label>:53:                                     ; preds = %49
  %.0.1.1.032 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %1, i32 0, i32 0, i32 1, i32 1, i32 0
  %.01.1.1.033 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %0, i32 0, i32 0, i32 1, i32 1, i32 0
  %54 = bitcast %struct.ap_int_base* %.0.1.1.032 to i8*
  %55 = call i1 @fpga_fifo_exist_4(i8* %54)
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %53
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* %.01.1.1.033, %struct.ap_int_base* %.0.1.1.032)
  br label %ret

; <label>:57:                                     ; preds = %53
  %.0.1.1.0.034 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0
  %.01.1.1.0.035 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0
  %58 = bitcast %struct.ssdm_int* %.0.1.1.0.034 to i8*
  %59 = call i1 @fpga_fifo_exist_4(i8* %58)
  br i1 %59, label %60, label %61

; <label>:60:                                     ; preds = %57
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %.01.1.1.0.035, %struct.ssdm_int* %.0.1.1.0.034)
  br label %ret

; <label>:61:                                     ; preds = %57
  %.01.1.1.0.0.037.gep43 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0
  %62 = bitcast i32* %.01.1.1.0.0.037.gep43 to i8*
  %.0.1.1.0.0.036.gep44 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0
  %63 = bitcast i32* %.0.1.1.0.0.036.gep44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %62, i8* align 1 %63, i64 4, i1 false)
  br label %ret

ret:                                              ; preds = %61, %60, %56, %52, %7, %entry
  ret void
}

declare i1 @fpga_fifo_exist_16(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.8"(%"class.hls::stream.8"* noalias nocapture align 512, %"class.hls::stream.8"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream.8"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream.8"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream.8"* %2 to i8*
  %6 = bitcast %"class.hls::stream.8"* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream.8", %"class.hls::stream.8"* %2
  %8 = bitcast %"class.hls::stream.8"* %2 to i8*
  %9 = bitcast %"class.hls::stream.8"* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !11

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream.8"* %1 to i8*
  %11 = bitcast %"class.hls::stream.8"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 16, i1 false)
  ret void
}

declare i1 @fpga_fifo_exist_4(i8*) local_unnamed_addr

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
  br label %empty, !llvm.loop !12

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
  br label %empty, !llvm.loop !13

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
  br label %empty, !llvm.loop !14

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int* %1 to i8*
  %11 = bitcast %struct.ssdm_int* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.9"(%"class.hls::stream.9"* noalias align 512, %"class.hls::stream.9"* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %"class.hls::stream.9"* %0, null
  %3 = icmp eq %"class.hls::stream.9"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream.9"* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_16(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream.9"(%"class.hls::stream.9"* nonnull align 512 %0, %"class.hls::stream.9"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0.02 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %1, i32 0, i32 0, i32 0
  %.01.03 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %0, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_8(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_uint.10(%struct.ap_uint.10* align 512 %.01.03, %struct.ap_uint.10* %.0.02)
  br label %19

; <label>:11:                                     ; preds = %8
  %.0.0.04 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %0, i32 0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_8(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.11(%struct.ap_int_base.11* align 512 %.01.0.05, %struct.ap_int_base.11* %.0.0.04)
  br label %19

; <label>:14:                                     ; preds = %11
  %.0.0.0.06 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.07 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_8(i8* %5)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %14
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.12(%struct.ssdm_int.12* align 512 %.01.0.0.07, %struct.ssdm_int.12* %.0.0.0.06)
  br label %19

; <label>:17:                                     ; preds = %14
  %18 = bitcast %"class.hls::stream.9"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %5, i64 8, i1 false)
  br label %19

; <label>:19:                                     ; preds = %17, %16, %13, %10
  %.0.110 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %1, i32 0, i32 0, i32 1
  %.01.111 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %0, i32 0, i32 0, i32 1
  %20 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %21 = call i1 @fpga_fifo_exist_1(i8* %20)
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  call fastcc void @streamcpy_hls.p0struct.ap_uint.13(%struct.ap_uint.13* %.01.111, %struct.ap_uint.13* %.0.110)
  br label %30

; <label>:23:                                     ; preds = %19
  %.0.1.012 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %1, i32 0, i32 0, i32 1, i32 0
  %.01.1.013 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %0, i32 0, i32 0, i32 1, i32 0
  %24 = call i1 @fpga_fifo_exist_1(i8* %20)
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %23
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.14(%struct.ap_int_base.14* %.01.1.013, %struct.ap_int_base.14* %.0.1.012)
  br label %30

; <label>:26:                                     ; preds = %23
  %.0.1.0.014 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %1, i32 0, i32 0, i32 1, i32 0, i32 0
  %.01.1.0.015 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %0, i32 0, i32 0, i32 1, i32 0, i32 0
  %27 = call i1 @fpga_fifo_exist_1(i8* %20)
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %26
  call fastcc void @"streamcpy_hls.p0class.std::ios_base::Init"(%"class.std::ios_base::Init"* %.01.1.0.015, %"class.std::ios_base::Init"* %.0.1.0.014)
  br label %30

; <label>:29:                                     ; preds = %26
  %.01.1.0.0.017 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %.01.1.0.0.017, i8* align 1 %20, i64 1, i1 false)
  br label %30

; <label>:30:                                     ; preds = %29, %28, %25, %22
  %.0.218 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %1, i32 0, i32 0, i32 2
  %.01.219 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %0, i32 0, i32 0, i32 2
  %31 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %1, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %32 = call i1 @fpga_fifo_exist_1(i8* %31)
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %30
  call fastcc void @streamcpy_hls.p0struct.ap_uint.13(%struct.ap_uint.13* %.01.219, %struct.ap_uint.13* %.0.218)
  br label %41

; <label>:34:                                     ; preds = %30
  %.0.2.020 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %1, i32 0, i32 0, i32 2, i32 0
  %.01.2.021 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %0, i32 0, i32 0, i32 2, i32 0
  %35 = call i1 @fpga_fifo_exist_1(i8* %31)
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %34
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.14(%struct.ap_int_base.14* %.01.2.021, %struct.ap_int_base.14* %.0.2.020)
  br label %41

; <label>:37:                                     ; preds = %34
  %.0.2.0.022 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %1, i32 0, i32 0, i32 2, i32 0, i32 0
  %.01.2.0.023 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %0, i32 0, i32 0, i32 2, i32 0, i32 0
  %38 = call i1 @fpga_fifo_exist_1(i8* %31)
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %37
  call fastcc void @"streamcpy_hls.p0class.std::ios_base::Init"(%"class.std::ios_base::Init"* %.01.2.0.023, %"class.std::ios_base::Init"* %.0.2.0.022)
  br label %41

; <label>:40:                                     ; preds = %37
  %.01.2.0.0.025 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %.01.2.0.0.025, i8* align 1 %31, i64 1, i1 false)
  br label %41

; <label>:41:                                     ; preds = %40, %39, %36, %33
  %.0.326 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %1, i32 0, i32 0, i32 3
  %.01.327 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %0, i32 0, i32 0, i32 3
  %42 = bitcast %struct.ap_uint.5* %.0.326 to i8*
  %43 = call i1 @fpga_fifo_exist_1(i8* %42)
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %41
  call fastcc void @streamcpy_hls.p0struct.ap_uint.5(%struct.ap_uint.5* %.01.327, %struct.ap_uint.5* %.0.326)
  br label %56

; <label>:45:                                     ; preds = %41
  %.0.3.028 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %1, i32 0, i32 0, i32 3, i32 0
  %.01.3.029 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %0, i32 0, i32 0, i32 3, i32 0
  %46 = bitcast %struct.ap_int_base.6* %.0.3.028 to i8*
  %47 = call i1 @fpga_fifo_exist_1(i8* %46)
  br i1 %47, label %48, label %49

; <label>:48:                                     ; preds = %45
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.6(%struct.ap_int_base.6* %.01.3.029, %struct.ap_int_base.6* %.0.3.028)
  br label %56

; <label>:49:                                     ; preds = %45
  %.0.3.0.030 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %1, i32 0, i32 0, i32 3, i32 0, i32 0
  %.01.3.0.031 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %0, i32 0, i32 0, i32 3, i32 0, i32 0
  %50 = bitcast %"class.hls::stream.3"* %.0.3.0.030 to i8*
  %51 = call i1 @fpga_fifo_exist_1(i8* %50)
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %49
  call fastcc void @"streamcpy_hls.p0class.hls::stream.3"(%"class.hls::stream.3"* %.01.3.0.031, %"class.hls::stream.3"* %.0.3.0.030)
  br label %56

; <label>:53:                                     ; preds = %49
  %.01.3.0.0.033.gep59 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %54 = bitcast i1* %.01.3.0.0.033.gep59 to i8*
  %.0.3.0.0.032.gep60 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %1, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %55 = bitcast i1* %.0.3.0.0.032.gep60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %54, i8* align 1 %55, i64 1, i1 false)
  br label %56

; <label>:56:                                     ; preds = %53, %52, %48, %44
  %.0.434 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %1, i32 0, i32 0, i32 4
  %.01.435 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %0, i32 0, i32 0, i32 4
  %57 = bitcast %struct.ap_uint.5* %.0.434 to i8*
  %58 = call i1 @fpga_fifo_exist_1(i8* %57)
  br i1 %58, label %59, label %60

; <label>:59:                                     ; preds = %56
  call fastcc void @streamcpy_hls.p0struct.ap_uint.5(%struct.ap_uint.5* %.01.435, %struct.ap_uint.5* %.0.434)
  br label %71

; <label>:60:                                     ; preds = %56
  %.0.4.036 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %1, i32 0, i32 0, i32 4, i32 0
  %.01.4.037 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %0, i32 0, i32 0, i32 4, i32 0
  %61 = bitcast %struct.ap_int_base.6* %.0.4.036 to i8*
  %62 = call i1 @fpga_fifo_exist_1(i8* %61)
  br i1 %62, label %63, label %64

; <label>:63:                                     ; preds = %60
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.6(%struct.ap_int_base.6* %.01.4.037, %struct.ap_int_base.6* %.0.4.036)
  br label %71

; <label>:64:                                     ; preds = %60
  %.0.4.0.038 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %1, i32 0, i32 0, i32 4, i32 0, i32 0
  %.01.4.0.039 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %0, i32 0, i32 0, i32 4, i32 0, i32 0
  %65 = bitcast %"class.hls::stream.3"* %.0.4.0.038 to i8*
  %66 = call i1 @fpga_fifo_exist_1(i8* %65)
  br i1 %66, label %67, label %68

; <label>:67:                                     ; preds = %64
  call fastcc void @"streamcpy_hls.p0class.hls::stream.3"(%"class.hls::stream.3"* %.01.4.0.039, %"class.hls::stream.3"* %.0.4.0.038)
  br label %71

; <label>:68:                                     ; preds = %64
  %.01.4.0.0.041.gep61 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %0, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0
  %69 = bitcast i1* %.01.4.0.0.041.gep61 to i8*
  %.0.4.0.0.040.gep62 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %1, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0
  %70 = bitcast i1* %.0.4.0.0.040.gep62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %69, i8* align 1 %70, i64 1, i1 false)
  br label %71

; <label>:71:                                     ; preds = %68, %67, %63, %59
  %.0.542 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %1, i32 0, i32 0, i32 5
  %.01.543 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %0, i32 0, i32 0, i32 5
  %72 = bitcast %struct.ap_uint.5* %.0.542 to i8*
  %73 = call i1 @fpga_fifo_exist_1(i8* %72)
  br i1 %73, label %74, label %75

; <label>:74:                                     ; preds = %71
  call fastcc void @streamcpy_hls.p0struct.ap_uint.5(%struct.ap_uint.5* %.01.543, %struct.ap_uint.5* %.0.542)
  br label %86

; <label>:75:                                     ; preds = %71
  %.0.5.044 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %1, i32 0, i32 0, i32 5, i32 0
  %.01.5.045 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %0, i32 0, i32 0, i32 5, i32 0
  %76 = bitcast %struct.ap_int_base.6* %.0.5.044 to i8*
  %77 = call i1 @fpga_fifo_exist_1(i8* %76)
  br i1 %77, label %78, label %79

; <label>:78:                                     ; preds = %75
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.6(%struct.ap_int_base.6* %.01.5.045, %struct.ap_int_base.6* %.0.5.044)
  br label %86

; <label>:79:                                     ; preds = %75
  %.0.5.0.046 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %1, i32 0, i32 0, i32 5, i32 0, i32 0
  %.01.5.0.047 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %0, i32 0, i32 0, i32 5, i32 0, i32 0
  %80 = bitcast %"class.hls::stream.3"* %.0.5.0.046 to i8*
  %81 = call i1 @fpga_fifo_exist_1(i8* %80)
  br i1 %81, label %82, label %83

; <label>:82:                                     ; preds = %79
  call fastcc void @"streamcpy_hls.p0class.hls::stream.3"(%"class.hls::stream.3"* %.01.5.0.047, %"class.hls::stream.3"* %.0.5.0.046)
  br label %86

; <label>:83:                                     ; preds = %79
  %.01.5.0.0.049.gep63 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %0, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0
  %84 = bitcast i1* %.01.5.0.0.049.gep63 to i8*
  %.0.5.0.0.048.gep64 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %1, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0
  %85 = bitcast i1* %.0.5.0.0.048.gep64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %84, i8* align 1 %85, i64 1, i1 false)
  br label %86

; <label>:86:                                     ; preds = %83, %82, %78, %74
  %.0.650 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %1, i32 0, i32 0, i32 6
  %.01.651 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %0, i32 0, i32 0, i32 6
  %87 = bitcast %struct.ap_uint.5* %.0.650 to i8*
  %88 = call i1 @fpga_fifo_exist_1(i8* %87)
  br i1 %88, label %89, label %90

; <label>:89:                                     ; preds = %86
  call fastcc void @streamcpy_hls.p0struct.ap_uint.5(%struct.ap_uint.5* %.01.651, %struct.ap_uint.5* %.0.650)
  br label %ret

; <label>:90:                                     ; preds = %86
  %.0.6.052 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %1, i32 0, i32 0, i32 6, i32 0
  %.01.6.053 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %0, i32 0, i32 0, i32 6, i32 0
  %91 = bitcast %struct.ap_int_base.6* %.0.6.052 to i8*
  %92 = call i1 @fpga_fifo_exist_1(i8* %91)
  br i1 %92, label %93, label %94

; <label>:93:                                     ; preds = %90
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.6(%struct.ap_int_base.6* %.01.6.053, %struct.ap_int_base.6* %.0.6.052)
  br label %ret

; <label>:94:                                     ; preds = %90
  %.0.6.0.054 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %1, i32 0, i32 0, i32 6, i32 0, i32 0
  %.01.6.0.055 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %0, i32 0, i32 0, i32 6, i32 0, i32 0
  %95 = bitcast %"class.hls::stream.3"* %.0.6.0.054 to i8*
  %96 = call i1 @fpga_fifo_exist_1(i8* %95)
  br i1 %96, label %97, label %98

; <label>:97:                                     ; preds = %94
  call fastcc void @"streamcpy_hls.p0class.hls::stream.3"(%"class.hls::stream.3"* %.01.6.0.055, %"class.hls::stream.3"* %.0.6.0.054)
  br label %ret

; <label>:98:                                     ; preds = %94
  %.01.6.0.0.057.gep65 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %0, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0
  %99 = bitcast i1* %.01.6.0.0.057.gep65 to i8*
  %.0.6.0.0.056.gep66 = getelementptr %"class.hls::stream.9", %"class.hls::stream.9"* %1, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0
  %100 = bitcast i1* %.0.6.0.0.056.gep66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %99, i8* align 1 %100, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %98, %97, %93, %89, %7, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.9"(%"class.hls::stream.9"* noalias nocapture align 512, %"class.hls::stream.9"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream.9"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream.9"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream.9"* %2 to i8*
  %6 = bitcast %"class.hls::stream.9"* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream.9", %"class.hls::stream.9"* %2
  %8 = bitcast %"class.hls::stream.9"* %2 to i8*
  %9 = bitcast %"class.hls::stream.9"* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !15

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream.9"* %1 to i8*
  %11 = bitcast %"class.hls::stream.9"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 16, i1 false)
  ret void
}

declare i1 @fpga_fifo_exist_8(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.10(%struct.ap_uint.10* noalias nocapture align 512, %struct.ap_uint.10* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint.10
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.10* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.10* %2 to i8*
  %6 = bitcast %struct.ap_uint.10* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.10, %struct.ap_uint.10* %2
  %8 = bitcast %struct.ap_uint.10* %2 to i8*
  %9 = bitcast %struct.ap_uint.10* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !16

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.10* %1 to i8*
  %11 = bitcast %struct.ap_uint.10* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 8, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.11(%struct.ap_int_base.11* noalias nocapture align 512, %struct.ap_int_base.11* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.11
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.11* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.11* %2 to i8*
  %6 = bitcast %struct.ap_int_base.11* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.11, %struct.ap_int_base.11* %2
  %8 = bitcast %struct.ap_int_base.11* %2 to i8*
  %9 = bitcast %struct.ap_int_base.11* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !17

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.11* %1 to i8*
  %11 = bitcast %struct.ap_int_base.11* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 8, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.12(%struct.ssdm_int.12* noalias nocapture align 512, %struct.ssdm_int.12* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int.12
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.12* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.12* %2 to i8*
  %6 = bitcast %struct.ssdm_int.12* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.12, %struct.ssdm_int.12* %2
  %8 = bitcast %struct.ssdm_int.12* %2 to i8*
  %9 = bitcast %struct.ssdm_int.12* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !18

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.12* %1 to i8*
  %11 = bitcast %struct.ssdm_int.12* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 8, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.13(%struct.ap_uint.13* noalias nocapture, %struct.ap_uint.13* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint.13
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.13* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.13* %2 to i8*
  %6 = bitcast %struct.ap_uint.13* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.13, %struct.ap_uint.13* %2
  %8 = bitcast %struct.ap_uint.13* %2 to i8*
  %9 = bitcast %struct.ap_uint.13* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !19

ret:                                              ; preds = %empty
  %10 = getelementptr inbounds %struct.ap_uint.13, %struct.ap_uint.13* %1, i32 0, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %struct.ap_uint.13, %struct.ap_uint.13* %0, i32 0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.14(%struct.ap_int_base.14* noalias nocapture, %struct.ap_int_base.14* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.14
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.14* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.14* %2 to i8*
  %6 = bitcast %struct.ap_int_base.14* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.14, %struct.ap_int_base.14* %2
  %8 = bitcast %struct.ap_int_base.14* %2 to i8*
  %9 = bitcast %struct.ap_int_base.14* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !20

ret:                                              ; preds = %empty
  %10 = getelementptr inbounds %struct.ap_int_base.14, %struct.ap_int_base.14* %1, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %struct.ap_int_base.14, %struct.ap_int_base.14* %0, i32 0, i32 0, i32 0
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
  br label %empty, !llvm.loop !21

ret:                                              ; preds = %empty
  %10 = getelementptr inbounds %"class.std::ios_base::Init", %"class.std::ios_base::Init"* %1, i32 0, i32 0
  %11 = getelementptr inbounds %"class.std::ios_base::Init", %"class.std::ios_base::Init"* %0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.5(%struct.ap_uint.5* noalias nocapture, %struct.ap_uint.5* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint.5
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.5* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.5* %2 to i8*
  %6 = bitcast %struct.ap_uint.5* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.5, %struct.ap_uint.5* %2
  %8 = bitcast %struct.ap_uint.5* %2 to i8*
  %9 = bitcast %struct.ap_uint.5* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !22

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.5* %1 to i8*
  %11 = bitcast %struct.ap_uint.5* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.6(%struct.ap_int_base.6* noalias nocapture, %struct.ap_int_base.6* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.6
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.6* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.6* %2 to i8*
  %6 = bitcast %struct.ap_int_base.6* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.6, %struct.ap_int_base.6* %2
  %8 = bitcast %struct.ap_int_base.6* %2 to i8*
  %9 = bitcast %struct.ap_int_base.6* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !23

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.6* %1 to i8*
  %11 = bitcast %struct.ap_int_base.6* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0struct.ap_uint.5(%struct.ap_uint.5* noalias align 512, %struct.ap_uint.5* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %struct.ap_uint.5* %0, null
  %3 = icmp eq %struct.ap_uint.5* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %struct.ap_uint.5* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_1(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @streamcpy_hls.p0struct.ap_uint.5(%struct.ap_uint.5* nonnull align 512 %0, %struct.ap_uint.5* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0 = getelementptr %struct.ap_uint.5, %struct.ap_uint.5* %1, i32 0, i32 0
  %.01 = getelementptr %struct.ap_uint.5, %struct.ap_uint.5* %0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_1(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.6(%struct.ap_int_base.6* align 512 %.01, %struct.ap_int_base.6* %.0)
  br label %ret

; <label>:11:                                     ; preds = %8
  %.0.02 = getelementptr %struct.ap_uint.5, %struct.ap_uint.5* %1, i32 0, i32 0, i32 0
  %.01.03 = getelementptr %struct.ap_uint.5, %struct.ap_uint.5* %0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_1(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @"streamcpy_hls.p0class.hls::stream.3"(%"class.hls::stream.3"* align 512 %.01.03, %"class.hls::stream.3"* %.0.02)
  br label %ret

; <label>:14:                                     ; preds = %11
  %15 = bitcast %struct.ap_uint.5* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 %5, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %14, %13, %10, %7, %entry
  ret void
}

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0struct.ap_uint(%struct.ap_uint* noalias align 512, %struct.ap_uint* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %struct.ap_uint* %0, null
  %3 = icmp eq %struct.ap_uint* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %struct.ap_uint* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* nonnull align 512 %0, %struct.ap_uint* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0 = getelementptr %struct.ap_uint, %struct.ap_uint* %1, i32 0, i32 0
  %.01 = getelementptr %struct.ap_uint, %struct.ap_uint* %0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* align 512 %.01, %struct.ap_int_base* %.0)
  br label %ret

; <label>:11:                                     ; preds = %8
  %.0.02 = getelementptr %struct.ap_uint, %struct.ap_uint* %1, i32 0, i32 0, i32 0
  %.01.03 = getelementptr %struct.ap_uint, %struct.ap_uint* %0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* align 512 %.01.03, %struct.ssdm_int* %.0.02)
  br label %ret

; <label>:14:                                     ; preds = %11
  %15 = bitcast %struct.ap_uint* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 %5, i64 4, i1 false)
  br label %ret

ret:                                              ; preds = %14, %13, %10, %7, %entry
  ret void
}

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0struct.ap_uint.17(%struct.ap_uint.17* noalias align 512, %struct.ap_uint.17* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %struct.ap_uint.17* %0, null
  %3 = icmp eq %struct.ap_uint.17* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %struct.ap_uint.17* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_8(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @streamcpy_hls.p0struct.ap_uint.17(%struct.ap_uint.17* nonnull align 512 %0, %struct.ap_uint.17* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0 = getelementptr %struct.ap_uint.17, %struct.ap_uint.17* %1, i32 0, i32 0
  %.01 = getelementptr %struct.ap_uint.17, %struct.ap_uint.17* %0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_8(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.18(%struct.ap_int_base.18* align 512 %.01, %struct.ap_int_base.18* %.0)
  br label %ret

; <label>:11:                                     ; preds = %8
  %.0.02 = getelementptr %struct.ap_uint.17, %struct.ap_uint.17* %1, i32 0, i32 0, i32 0
  %.01.03 = getelementptr %struct.ap_uint.17, %struct.ap_uint.17* %0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_8(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.19(%struct.ssdm_int.19* align 512 %.01.03, %struct.ssdm_int.19* %.0.02)
  br label %ret

; <label>:14:                                     ; preds = %11
  %15 = bitcast %struct.ap_uint.17* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 %5, i64 8, i1 false)
  br label %ret

ret:                                              ; preds = %14, %13, %10, %7, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.17(%struct.ap_uint.17* noalias nocapture align 512, %struct.ap_uint.17* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint.17
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.17* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.17* %2 to i8*
  %6 = bitcast %struct.ap_uint.17* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.17, %struct.ap_uint.17* %2
  %8 = bitcast %struct.ap_uint.17* %2 to i8*
  %9 = bitcast %struct.ap_uint.17* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !24

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.17* %1 to i8*
  %11 = bitcast %struct.ap_uint.17* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 8, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.18(%struct.ap_int_base.18* noalias nocapture align 512, %struct.ap_int_base.18* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.18
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.18* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.18* %2 to i8*
  %6 = bitcast %struct.ap_int_base.18* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.18, %struct.ap_int_base.18* %2
  %8 = bitcast %struct.ap_int_base.18* %2 to i8*
  %9 = bitcast %struct.ap_int_base.18* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !25

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.18* %1 to i8*
  %11 = bitcast %struct.ap_int_base.18* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 8, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.19(%struct.ssdm_int.19* noalias nocapture align 512, %struct.ssdm_int.19* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int.19
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.19* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.19* %2 to i8*
  %6 = bitcast %struct.ssdm_int.19* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.19, %struct.ssdm_int.19* %2
  %8 = bitcast %struct.ssdm_int.19* %2 to i8*
  %9 = bitcast %struct.ssdm_int.19* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !26

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.19* %1 to i8*
  %11 = bitcast %struct.ssdm_int.19* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 8, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @copy_out(%"class.hls::stream"*, %"class.hls::stream"* noalias align 512, %"class.hls::stream.3"*, %"class.hls::stream.3"* noalias align 512, %"class.hls::stream.8"*, %"class.hls::stream.8"* noalias align 512, %"class.hls::stream.9"*, %"class.hls::stream.9"* noalias align 512, %"class.hls::stream.8"*, %"class.hls::stream.8"* noalias align 512, %"class.hls::stream"*, %"class.hls::stream"* noalias align 512, %"class.hls::stream.9"*, %"class.hls::stream.9"* noalias align 512, %struct.ap_uint.5*, %struct.ap_uint.5* noalias align 512, %struct.ap_uint*, %struct.ap_uint* noalias align 512, %struct.ap_uint*, %struct.ap_uint* noalias align 512, %struct.ap_uint.17*, %struct.ap_uint.17* noalias align 512) unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* %0, %"class.hls::stream"* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.3"(%"class.hls::stream.3"* %2, %"class.hls::stream.3"* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.8"(%"class.hls::stream.8"* %4, %"class.hls::stream.8"* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.9"(%"class.hls::stream.9"* %6, %"class.hls::stream.9"* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.8"(%"class.hls::stream.8"* %8, %"class.hls::stream.8"* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* %10, %"class.hls::stream"* align 512 %11)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.9"(%"class.hls::stream.9"* %12, %"class.hls::stream.9"* align 512 %13)
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint.5(%struct.ap_uint.5* %14, %struct.ap_uint.5* align 512 %15)
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint(%struct.ap_uint* %16, %struct.ap_uint* align 512 %17)
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint(%struct.ap_uint* %18, %struct.ap_uint* align 512 %19)
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint.17(%struct.ap_uint.17* %20, %struct.ap_uint.17* align 512 %21)
  ret void
}

declare void @apatb_dhcp_client_hw(%"class.hls::stream"*, %"class.hls::stream.3"*, %"class.hls::stream.8"*, %"class.hls::stream.9"*, %"class.hls::stream.8"*, %"class.hls::stream"*, %"class.hls::stream.9"*, %struct.ap_uint.5*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint.17*)

define void @dhcp_client_hw_stub_wrapper(%"class.hls::stream"*, %"class.hls::stream.3"*, %"class.hls::stream.8"*, %"class.hls::stream.9"*, %"class.hls::stream.8"*, %"class.hls::stream"*, %"class.hls::stream.9"*, %struct.ap_uint.5*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint.17*) #6 {
entry:
  call void @copy_out(%"class.hls::stream"* null, %"class.hls::stream"* %0, %"class.hls::stream.3"* null, %"class.hls::stream.3"* %1, %"class.hls::stream.8"* null, %"class.hls::stream.8"* %2, %"class.hls::stream.9"* null, %"class.hls::stream.9"* %3, %"class.hls::stream.8"* null, %"class.hls::stream.8"* %4, %"class.hls::stream"* null, %"class.hls::stream"* %5, %"class.hls::stream.9"* null, %"class.hls::stream.9"* %6, %struct.ap_uint.5* null, %struct.ap_uint.5* %7, %struct.ap_uint* null, %struct.ap_uint* %8, %struct.ap_uint* null, %struct.ap_uint* %9, %struct.ap_uint.17* null, %struct.ap_uint.17* %10)
  call void @dhcp_client_hw_stub(%"class.hls::stream"* %0, %"class.hls::stream.3"* %1, %"class.hls::stream.8"* %2, %"class.hls::stream.9"* %3, %"class.hls::stream.8"* %4, %"class.hls::stream"* %5, %"class.hls::stream.9"* %6, %struct.ap_uint.5* %7, %struct.ap_uint* %8, %struct.ap_uint* %9, %struct.ap_uint.17* %10)
  call void @copy_in(%"class.hls::stream"* null, %"class.hls::stream"* %0, %"class.hls::stream.3"* null, %"class.hls::stream.3"* %1, %"class.hls::stream.8"* null, %"class.hls::stream.8"* %2, %"class.hls::stream.9"* null, %"class.hls::stream.9"* %3, %"class.hls::stream.8"* null, %"class.hls::stream.8"* %4, %"class.hls::stream"* null, %"class.hls::stream"* %5, %"class.hls::stream.9"* null, %"class.hls::stream.9"* %6, %struct.ap_uint.5* null, %struct.ap_uint.5* %7, %struct.ap_uint* null, %struct.ap_uint* %8, %struct.ap_uint* null, %struct.ap_uint* %9, %struct.ap_uint.17* null, %struct.ap_uint.17* %10)
  ret void
}

declare void @dhcp_client_hw_stub(%"class.hls::stream"*, %"class.hls::stream.3"*, %"class.hls::stream.8"*, %"class.hls::stream.9"*, %"class.hls::stream.8"*, %"class.hls::stream"*, %"class.hls::stream.9"*, %struct.ap_uint.5*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint.17*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare i1 @fpga_fifo_not_empty_2(i8*)

declare i1 @fpga_fifo_not_empty_16(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare i1 @fpga_fifo_not_empty_8(i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_pop_2(i8*, i8*)

declare void @fpga_fifo_pop_16(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

declare void @fpga_fifo_push_2(i8*, i8*)

declare void @fpga_fifo_push_16(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

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
