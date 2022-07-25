; ModuleID = '/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/hash_table/hash_table_prj/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream" = type { %struct.htLookupReq }
%struct.htLookupReq = type { %struct.ap_uint.0, i32 }
%struct.ap_uint.0 = type { %struct.ap_int_base.1 }
%struct.ap_int_base.1 = type { %struct.ssdm_int.2 }
%struct.ssdm_int.2 = type { i64 }
%"class.hls::stream.6" = type { %struct.htUpdateReq }
%struct.htUpdateReq = type { i32, %struct.ap_uint.0, %struct.ap_uint, i32 }
%struct.ap_uint = type { %struct.ap_int_base }
%struct.ap_int_base = type { %struct.ssdm_int }
%struct.ssdm_int = type { i16 }
%"class.hls::stream.7" = type { %struct.htLookupResp }
%struct.htLookupResp = type { %struct.ap_uint.0, %struct.ap_uint, i1, i32 }
%"class.hls::stream.8" = type { %struct.htUpdateResp }
%struct.htUpdateResp = type { i32, %struct.ap_uint.0, %struct.ap_uint, i1, i32 }

; Function Attrs: noinline
define void @apatb_hash_table_top_ir(%"class.hls::stream"* %s_axis_lup_req, %"class.hls::stream.6"* %s_axis_upd_req, %"class.hls::stream.7"* %m_axis_lup_rsp, %"class.hls::stream.8"* %m_axis_upd_rsp, %struct.ap_uint* %regInsertFailureCount) local_unnamed_addr #0 {
entry:
  %s_axis_lup_req_copy = alloca %"class.hls::stream", align 512
  %s_axis_upd_req_copy = alloca %"class.hls::stream.6", align 512
  %m_axis_lup_rsp_copy = alloca %"class.hls::stream.7", align 512
  %m_axis_upd_rsp_copy = alloca %"class.hls::stream.8", align 512
  %regInsertFailureCount_copy1 = alloca %struct.ap_uint, align 512
  call fastcc void @copy_in(%"class.hls::stream"* %s_axis_lup_req, %"class.hls::stream"* nonnull align 512 %s_axis_lup_req_copy, %"class.hls::stream.6"* %s_axis_upd_req, %"class.hls::stream.6"* nonnull align 512 %s_axis_upd_req_copy, %"class.hls::stream.7"* %m_axis_lup_rsp, %"class.hls::stream.7"* nonnull align 512 %m_axis_lup_rsp_copy, %"class.hls::stream.8"* %m_axis_upd_rsp, %"class.hls::stream.8"* nonnull align 512 %m_axis_upd_rsp_copy, %struct.ap_uint* %regInsertFailureCount, %struct.ap_uint* nonnull align 512 %regInsertFailureCount_copy1)
  call void @apatb_hash_table_top_hw(%"class.hls::stream"* %s_axis_lup_req_copy, %"class.hls::stream.6"* %s_axis_upd_req_copy, %"class.hls::stream.7"* %m_axis_lup_rsp_copy, %"class.hls::stream.8"* %m_axis_upd_rsp_copy, %struct.ap_uint* %regInsertFailureCount_copy1)
  call fastcc void @copy_out(%"class.hls::stream"* %s_axis_lup_req, %"class.hls::stream"* nonnull align 512 %s_axis_lup_req_copy, %"class.hls::stream.6"* %s_axis_upd_req, %"class.hls::stream.6"* nonnull align 512 %s_axis_upd_req_copy, %"class.hls::stream.7"* %m_axis_lup_rsp, %"class.hls::stream.7"* nonnull align 512 %m_axis_lup_rsp_copy, %"class.hls::stream.8"* %m_axis_upd_rsp, %"class.hls::stream.8"* nonnull align 512 %m_axis_upd_rsp_copy, %struct.ap_uint* %regInsertFailureCount, %struct.ap_uint* nonnull align 512 %regInsertFailureCount_copy1)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @copy_in(%"class.hls::stream"*, %"class.hls::stream"* noalias align 512, %"class.hls::stream.6"*, %"class.hls::stream.6"* noalias align 512, %"class.hls::stream.7"*, %"class.hls::stream.7"* noalias align 512, %"class.hls::stream.8"*, %"class.hls::stream.8"* noalias align 512, %struct.ap_uint*, %struct.ap_uint* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* align 512 %1, %"class.hls::stream"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.6"(%"class.hls::stream.6"* align 512 %3, %"class.hls::stream.6"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.7"(%"class.hls::stream.7"* align 512 %5, %"class.hls::stream.7"* %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.8"(%"class.hls::stream.8"* align 512 %7, %"class.hls::stream.8"* %6)
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint(%struct.ap_uint* align 512 %9, %struct.ap_uint* %8)
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
  %6 = call i1 @fpga_fifo_exist_16(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream"(%"class.hls::stream"* nonnull align 512 %0, %"class.hls::stream"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0.02 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 0
  %.01.03 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_8(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* align 512 %.01.03, %struct.ap_uint.0* %.0.02)
  br label %19

; <label>:11:                                     ; preds = %8
  %.0.0.04 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_8(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* align 512 %.01.0.05, %struct.ap_int_base.1* %.0.0.04)
  br label %19

; <label>:14:                                     ; preds = %11
  %.0.0.0.06 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.07 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_8(i8* %5)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %14
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* align 512 %.01.0.0.07, %struct.ssdm_int.2* %.0.0.0.06)
  br label %19

; <label>:17:                                     ; preds = %14
  %18 = bitcast %"class.hls::stream"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %5, i64 8, i1 false)
  br label %19

; <label>:19:                                     ; preds = %17, %16, %13, %10
  %.01.111.gep13 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 1
  %20 = bitcast i32* %.01.111.gep13 to i8*
  %.0.110.gep14 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 1
  %21 = bitcast i32* %.0.110.gep14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 %21, i64 4, i1 false)
  br label %ret

ret:                                              ; preds = %19, %7, %entry
  ret void
}

declare i1 @fpga_fifo_exist_16(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream"(%"class.hls::stream"* noalias nocapture align 512, %"class.hls::stream"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream"* %2 to i8*
  %6 = bitcast %"class.hls::stream"* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream", %"class.hls::stream"* %2
  %8 = bitcast %"class.hls::stream"* %2 to i8*
  %9 = bitcast %"class.hls::stream"* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream"* %1 to i8*
  %11 = bitcast %"class.hls::stream"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #4

declare i1 @fpga_fifo_exist_8(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* noalias nocapture align 512, %struct.ap_uint.0* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint.0
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.0* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.0* %2 to i8*
  %6 = bitcast %struct.ap_uint.0* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.0, %struct.ap_uint.0* %2
  %8 = bitcast %struct.ap_uint.0* %2 to i8*
  %9 = bitcast %struct.ap_uint.0* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.0* %1 to i8*
  %11 = bitcast %struct.ap_uint.0* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 8, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* noalias nocapture align 512, %struct.ap_int_base.1* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.1
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.1* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.1* %2 to i8*
  %6 = bitcast %struct.ap_int_base.1* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.1, %struct.ap_int_base.1* %2
  %8 = bitcast %struct.ap_int_base.1* %2 to i8*
  %9 = bitcast %struct.ap_int_base.1* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.1* %1 to i8*
  %11 = bitcast %struct.ap_int_base.1* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 8, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* noalias nocapture align 512, %struct.ssdm_int.2* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int.2
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.2* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.2* %2 to i8*
  %6 = bitcast %struct.ssdm_int.2* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.2, %struct.ssdm_int.2* %2
  %8 = bitcast %struct.ssdm_int.2* %2 to i8*
  %9 = bitcast %struct.ssdm_int.2* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.2* %1 to i8*
  %11 = bitcast %struct.ssdm_int.2* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 8, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.6"(%"class.hls::stream.6"* noalias align 512, %"class.hls::stream.6"* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %"class.hls::stream.6"* %0, null
  %3 = icmp eq %"class.hls::stream.6"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream.6"* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_24(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream.6"(%"class.hls::stream.6"* nonnull align 512 %0, %"class.hls::stream.6"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %9 = bitcast %"class.hls::stream.6"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %5, i64 4, i1 false)
  %.0.14 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 1
  %.01.15 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 1
  %10 = bitcast %struct.ap_uint.0* %.0.14 to i8*
  %11 = call i1 @fpga_fifo_exist_8(i8* %10)
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* %.01.15, %struct.ap_uint.0* %.0.14)
  br label %24

; <label>:13:                                     ; preds = %8
  %.0.1.06 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 1, i32 0
  %.01.1.07 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 1, i32 0
  %14 = bitcast %struct.ap_int_base.1* %.0.1.06 to i8*
  %15 = call i1 @fpga_fifo_exist_8(i8* %14)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* %.01.1.07, %struct.ap_int_base.1* %.0.1.06)
  br label %24

; <label>:17:                                     ; preds = %13
  %.0.1.0.08 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 1, i32 0, i32 0
  %.01.1.0.09 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 1, i32 0, i32 0
  %18 = bitcast %struct.ssdm_int.2* %.0.1.0.08 to i8*
  %19 = call i1 @fpga_fifo_exist_8(i8* %18)
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %17
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* %.01.1.0.09, %struct.ssdm_int.2* %.0.1.0.08)
  br label %24

; <label>:21:                                     ; preds = %17
  %.01.1.0.0.011.gep23 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %22 = bitcast i64* %.01.1.0.0.011.gep23 to i8*
  %.0.1.0.0.010.gep24 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %23 = bitcast i64* %.0.1.0.0.010.gep24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %22, i8* align 1 %23, i64 8, i1 false)
  br label %24

; <label>:24:                                     ; preds = %21, %20, %16, %12
  %.0.212 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 2
  %.01.213 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 2
  %25 = bitcast %struct.ap_uint* %.0.212 to i8*
  %26 = call i1 @fpga_fifo_exist_2(i8* %25)
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %24
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* align 16 %.01.213, %struct.ap_uint* %.0.212)
  br label %39

; <label>:28:                                     ; preds = %24
  %.0.2.014 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 2, i32 0
  %.01.2.015 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 2, i32 0
  %29 = bitcast %struct.ap_int_base* %.0.2.014 to i8*
  %30 = call i1 @fpga_fifo_exist_2(i8* %29)
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %28
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* align 16 %.01.2.015, %struct.ap_int_base* %.0.2.014)
  br label %39

; <label>:32:                                     ; preds = %28
  %.0.2.0.016 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 2, i32 0, i32 0
  %.01.2.0.017 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 2, i32 0, i32 0
  %33 = bitcast %struct.ssdm_int* %.0.2.0.016 to i8*
  %34 = call i1 @fpga_fifo_exist_2(i8* %33)
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %32
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* align 16 %.01.2.0.017, %struct.ssdm_int* %.0.2.0.016)
  br label %39

; <label>:36:                                     ; preds = %32
  %.01.2.0.0.019.gep25 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %37 = bitcast i16* %.01.2.0.0.019.gep25 to i8*
  %.0.2.0.0.018.gep26 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %38 = bitcast i16* %.0.2.0.0.018.gep26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %37, i8* align 1 %38, i64 2, i1 false)
  br label %39

; <label>:39:                                     ; preds = %36, %35, %31, %27
  %.01.321.gep27 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 3
  %40 = bitcast i32* %.01.321.gep27 to i8*
  %.0.320.gep28 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 3
  %41 = bitcast i32* %.0.320.gep28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %40, i8* align 1 %41, i64 4, i1 false)
  br label %ret

ret:                                              ; preds = %39, %7, %entry
  ret void
}

declare i1 @fpga_fifo_exist_24(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.6"(%"class.hls::stream.6"* noalias nocapture align 512, %"class.hls::stream.6"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream.6"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream.6"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_24(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream.6"* %2 to i8*
  %6 = bitcast %"class.hls::stream.6"* %1 to i8*
  call void @fpga_fifo_pop_24(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream.6", %"class.hls::stream.6"* %2
  %8 = bitcast %"class.hls::stream.6"* %2 to i8*
  %9 = bitcast %"class.hls::stream.6"* %0 to i8*
  call void @fpga_fifo_push_24(i8* %8, i8* %9)
  br label %empty, !llvm.loop !10

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream.6"* %1 to i8*
  %11 = bitcast %"class.hls::stream.6"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 24, i1 false)
  ret void
}

declare i1 @fpga_fifo_exist_2(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* noalias nocapture align 16, %struct.ap_uint* noalias nocapture) unnamed_addr #3 {
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
  br label %empty, !llvm.loop !11

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint* %1 to i8*
  %11 = bitcast %struct.ap_uint* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 2, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* noalias nocapture align 16, %struct.ap_int_base* noalias nocapture) unnamed_addr #3 {
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
  br label %empty, !llvm.loop !12

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base* %1 to i8*
  %11 = bitcast %struct.ap_int_base* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 2, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* noalias nocapture align 16, %struct.ssdm_int* noalias nocapture) unnamed_addr #3 {
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
  br label %empty, !llvm.loop !13

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int* %1 to i8*
  %11 = bitcast %struct.ssdm_int* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 2, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.7"(%"class.hls::stream.7"* noalias align 512, %"class.hls::stream.7"* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %"class.hls::stream.7"* %0, null
  %3 = icmp eq %"class.hls::stream.7"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream.7"* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_16(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream.7"(%"class.hls::stream.7"* nonnull align 512 %0, %"class.hls::stream.7"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0.02 = getelementptr %"class.hls::stream.7", %"class.hls::stream.7"* %1, i32 0, i32 0, i32 0
  %.01.03 = getelementptr %"class.hls::stream.7", %"class.hls::stream.7"* %0, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_8(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* align 512 %.01.03, %struct.ap_uint.0* %.0.02)
  br label %19

; <label>:11:                                     ; preds = %8
  %.0.0.04 = getelementptr %"class.hls::stream.7", %"class.hls::stream.7"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"class.hls::stream.7", %"class.hls::stream.7"* %0, i32 0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_8(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* align 512 %.01.0.05, %struct.ap_int_base.1* %.0.0.04)
  br label %19

; <label>:14:                                     ; preds = %11
  %.0.0.0.06 = getelementptr %"class.hls::stream.7", %"class.hls::stream.7"* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.07 = getelementptr %"class.hls::stream.7", %"class.hls::stream.7"* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_8(i8* %5)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %14
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* align 512 %.01.0.0.07, %struct.ssdm_int.2* %.0.0.0.06)
  br label %19

; <label>:17:                                     ; preds = %14
  %18 = bitcast %"class.hls::stream.7"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %5, i64 8, i1 false)
  br label %19

; <label>:19:                                     ; preds = %17, %16, %13, %10
  %.0.110 = getelementptr %"class.hls::stream.7", %"class.hls::stream.7"* %1, i32 0, i32 0, i32 1
  %.01.111 = getelementptr %"class.hls::stream.7", %"class.hls::stream.7"* %0, i32 0, i32 0, i32 1
  %20 = bitcast %struct.ap_uint* %.0.110 to i8*
  %21 = call i1 @fpga_fifo_exist_2(i8* %20)
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* %.01.111, %struct.ap_uint* %.0.110)
  br label %34

; <label>:23:                                     ; preds = %19
  %.0.1.012 = getelementptr %"class.hls::stream.7", %"class.hls::stream.7"* %1, i32 0, i32 0, i32 1, i32 0
  %.01.1.013 = getelementptr %"class.hls::stream.7", %"class.hls::stream.7"* %0, i32 0, i32 0, i32 1, i32 0
  %24 = bitcast %struct.ap_int_base* %.0.1.012 to i8*
  %25 = call i1 @fpga_fifo_exist_2(i8* %24)
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %23
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* %.01.1.013, %struct.ap_int_base* %.0.1.012)
  br label %34

; <label>:27:                                     ; preds = %23
  %.0.1.0.014 = getelementptr %"class.hls::stream.7", %"class.hls::stream.7"* %1, i32 0, i32 0, i32 1, i32 0, i32 0
  %.01.1.0.015 = getelementptr %"class.hls::stream.7", %"class.hls::stream.7"* %0, i32 0, i32 0, i32 1, i32 0, i32 0
  %28 = bitcast %struct.ssdm_int* %.0.1.0.014 to i8*
  %29 = call i1 @fpga_fifo_exist_2(i8* %28)
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %27
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %.01.1.0.015, %struct.ssdm_int* %.0.1.0.014)
  br label %34

; <label>:31:                                     ; preds = %27
  %.01.1.0.0.017.gep23 = getelementptr %"class.hls::stream.7", %"class.hls::stream.7"* %0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %32 = bitcast i16* %.01.1.0.0.017.gep23 to i8*
  %.0.1.0.0.016.gep24 = getelementptr %"class.hls::stream.7", %"class.hls::stream.7"* %1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %33 = bitcast i16* %.0.1.0.0.016.gep24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %33, i64 2, i1 false)
  br label %34

; <label>:34:                                     ; preds = %31, %30, %26, %22
  %.01.219.gep25 = getelementptr %"class.hls::stream.7", %"class.hls::stream.7"* %0, i32 0, i32 0, i32 2
  %35 = bitcast i1* %.01.219.gep25 to i8*
  %.0.218.gep26 = getelementptr %"class.hls::stream.7", %"class.hls::stream.7"* %1, i32 0, i32 0, i32 2
  %36 = bitcast i1* %.0.218.gep26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %35, i8* align 1 %36, i64 1, i1 false)
  %.01.321.gep27 = getelementptr %"class.hls::stream.7", %"class.hls::stream.7"* %0, i32 0, i32 0, i32 3
  %37 = bitcast i32* %.01.321.gep27 to i8*
  %.0.320.gep28 = getelementptr %"class.hls::stream.7", %"class.hls::stream.7"* %1, i32 0, i32 0, i32 3
  %38 = bitcast i32* %.0.320.gep28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %37, i8* align 1 %38, i64 4, i1 false)
  br label %ret

ret:                                              ; preds = %34, %7, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.7"(%"class.hls::stream.7"* noalias nocapture align 512, %"class.hls::stream.7"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream.7"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream.7"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream.7"* %2 to i8*
  %6 = bitcast %"class.hls::stream.7"* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream.7", %"class.hls::stream.7"* %2
  %8 = bitcast %"class.hls::stream.7"* %2 to i8*
  %9 = bitcast %"class.hls::stream.7"* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !14

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream.7"* %1 to i8*
  %11 = bitcast %"class.hls::stream.7"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 16, i1 false)
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
  %6 = call i1 @fpga_fifo_exist_24(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream.8"(%"class.hls::stream.8"* nonnull align 512 %0, %"class.hls::stream.8"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %9 = bitcast %"class.hls::stream.8"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %5, i64 4, i1 false)
  %.0.14 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %1, i32 0, i32 0, i32 1
  %.01.15 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %0, i32 0, i32 0, i32 1
  %10 = bitcast %struct.ap_uint.0* %.0.14 to i8*
  %11 = call i1 @fpga_fifo_exist_8(i8* %10)
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* %.01.15, %struct.ap_uint.0* %.0.14)
  br label %24

; <label>:13:                                     ; preds = %8
  %.0.1.06 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %1, i32 0, i32 0, i32 1, i32 0
  %.01.1.07 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %0, i32 0, i32 0, i32 1, i32 0
  %14 = bitcast %struct.ap_int_base.1* %.0.1.06 to i8*
  %15 = call i1 @fpga_fifo_exist_8(i8* %14)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* %.01.1.07, %struct.ap_int_base.1* %.0.1.06)
  br label %24

; <label>:17:                                     ; preds = %13
  %.0.1.0.08 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %1, i32 0, i32 0, i32 1, i32 0, i32 0
  %.01.1.0.09 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %0, i32 0, i32 0, i32 1, i32 0, i32 0
  %18 = bitcast %struct.ssdm_int.2* %.0.1.0.08 to i8*
  %19 = call i1 @fpga_fifo_exist_8(i8* %18)
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %17
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* %.01.1.0.09, %struct.ssdm_int.2* %.0.1.0.08)
  br label %24

; <label>:21:                                     ; preds = %17
  %.01.1.0.0.011.gep25 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %22 = bitcast i64* %.01.1.0.0.011.gep25 to i8*
  %.0.1.0.0.010.gep26 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %23 = bitcast i64* %.0.1.0.0.010.gep26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %22, i8* align 1 %23, i64 8, i1 false)
  br label %24

; <label>:24:                                     ; preds = %21, %20, %16, %12
  %.0.212 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %1, i32 0, i32 0, i32 2
  %.01.213 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %0, i32 0, i32 0, i32 2
  %25 = bitcast %struct.ap_uint* %.0.212 to i8*
  %26 = call i1 @fpga_fifo_exist_2(i8* %25)
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %24
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* align 16 %.01.213, %struct.ap_uint* %.0.212)
  br label %39

; <label>:28:                                     ; preds = %24
  %.0.2.014 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %1, i32 0, i32 0, i32 2, i32 0
  %.01.2.015 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %0, i32 0, i32 0, i32 2, i32 0
  %29 = bitcast %struct.ap_int_base* %.0.2.014 to i8*
  %30 = call i1 @fpga_fifo_exist_2(i8* %29)
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %28
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* align 16 %.01.2.015, %struct.ap_int_base* %.0.2.014)
  br label %39

; <label>:32:                                     ; preds = %28
  %.0.2.0.016 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %1, i32 0, i32 0, i32 2, i32 0, i32 0
  %.01.2.0.017 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %0, i32 0, i32 0, i32 2, i32 0, i32 0
  %33 = bitcast %struct.ssdm_int* %.0.2.0.016 to i8*
  %34 = call i1 @fpga_fifo_exist_2(i8* %33)
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %32
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* align 16 %.01.2.0.017, %struct.ssdm_int* %.0.2.0.016)
  br label %39

; <label>:36:                                     ; preds = %32
  %.01.2.0.0.019.gep27 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %37 = bitcast i16* %.01.2.0.0.019.gep27 to i8*
  %.0.2.0.0.018.gep28 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %1, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %38 = bitcast i16* %.0.2.0.0.018.gep28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %37, i8* align 1 %38, i64 2, i1 false)
  br label %39

; <label>:39:                                     ; preds = %36, %35, %31, %27
  %.01.321.gep29 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %0, i32 0, i32 0, i32 3
  %40 = bitcast i1* %.01.321.gep29 to i8*
  %.0.320.gep30 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %1, i32 0, i32 0, i32 3
  %41 = bitcast i1* %.0.320.gep30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %40, i8* align 1 %41, i64 1, i1 false)
  %.01.423.gep31 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %0, i32 0, i32 0, i32 4
  %42 = bitcast i32* %.01.423.gep31 to i8*
  %.0.422.gep32 = getelementptr %"class.hls::stream.8", %"class.hls::stream.8"* %1, i32 0, i32 0, i32 4
  %43 = bitcast i32* %.0.422.gep32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %42, i8* align 1 %43, i64 4, i1 false)
  br label %ret

ret:                                              ; preds = %39, %7, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.8"(%"class.hls::stream.8"* noalias nocapture align 512, %"class.hls::stream.8"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream.8"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream.8"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_24(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream.8"* %2 to i8*
  %6 = bitcast %"class.hls::stream.8"* %1 to i8*
  call void @fpga_fifo_pop_24(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream.8", %"class.hls::stream.8"* %2
  %8 = bitcast %"class.hls::stream.8"* %2 to i8*
  %9 = bitcast %"class.hls::stream.8"* %0 to i8*
  call void @fpga_fifo_push_24(i8* %8, i8* %9)
  br label %empty, !llvm.loop !15

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream.8"* %1 to i8*
  %11 = bitcast %"class.hls::stream.8"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 24, i1 false)
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
  %6 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* nonnull align 512 %0, %struct.ap_uint* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0 = getelementptr %struct.ap_uint, %struct.ap_uint* %1, i32 0, i32 0
  %.01 = getelementptr %struct.ap_uint, %struct.ap_uint* %0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* align 512 %.01, %struct.ap_int_base* %.0)
  br label %ret

; <label>:11:                                     ; preds = %8
  %.0.02 = getelementptr %struct.ap_uint, %struct.ap_uint* %1, i32 0, i32 0, i32 0
  %.01.03 = getelementptr %struct.ap_uint, %struct.ap_uint* %0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* align 512 %.01.03, %struct.ssdm_int* %.0.02)
  br label %ret

; <label>:14:                                     ; preds = %11
  %15 = bitcast %struct.ap_uint* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 %5, i64 2, i1 false)
  br label %ret

ret:                                              ; preds = %14, %13, %10, %7, %entry
  ret void
}

; Function Attrs: noinline
define internal fastcc void @copy_out(%"class.hls::stream"*, %"class.hls::stream"* noalias align 512, %"class.hls::stream.6"*, %"class.hls::stream.6"* noalias align 512, %"class.hls::stream.7"*, %"class.hls::stream.7"* noalias align 512, %"class.hls::stream.8"*, %"class.hls::stream.8"* noalias align 512, %struct.ap_uint*, %struct.ap_uint* noalias align 512) unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* %0, %"class.hls::stream"* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.6"(%"class.hls::stream.6"* %2, %"class.hls::stream.6"* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.7"(%"class.hls::stream.7"* %4, %"class.hls::stream.7"* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.8"(%"class.hls::stream.8"* %6, %"class.hls::stream.8"* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint(%struct.ap_uint* %8, %struct.ap_uint* align 512 %9)
  ret void
}

declare void @apatb_hash_table_top_hw(%"class.hls::stream"*, %"class.hls::stream.6"*, %"class.hls::stream.7"*, %"class.hls::stream.8"*, %struct.ap_uint*)

define void @hash_table_top_hw_stub_wrapper(%"class.hls::stream"*, %"class.hls::stream.6"*, %"class.hls::stream.7"*, %"class.hls::stream.8"*, %struct.ap_uint*) #6 {
entry:
  call void @copy_out(%"class.hls::stream"* null, %"class.hls::stream"* %0, %"class.hls::stream.6"* null, %"class.hls::stream.6"* %1, %"class.hls::stream.7"* null, %"class.hls::stream.7"* %2, %"class.hls::stream.8"* null, %"class.hls::stream.8"* %3, %struct.ap_uint* null, %struct.ap_uint* %4)
  call void @hash_table_top_hw_stub(%"class.hls::stream"* %0, %"class.hls::stream.6"* %1, %"class.hls::stream.7"* %2, %"class.hls::stream.8"* %3, %struct.ap_uint* %4)
  call void @copy_in(%"class.hls::stream"* null, %"class.hls::stream"* %0, %"class.hls::stream.6"* null, %"class.hls::stream.6"* %1, %"class.hls::stream.7"* null, %"class.hls::stream.7"* %2, %"class.hls::stream.8"* null, %"class.hls::stream.8"* %3, %struct.ap_uint* null, %struct.ap_uint* %4)
  ret void
}

declare void @hash_table_top_hw_stub(%"class.hls::stream"*, %"class.hls::stream.6"*, %"class.hls::stream.7"*, %"class.hls::stream.8"*, %struct.ap_uint*)

declare i1 @fpga_fifo_not_empty_16(i8*)

declare i1 @fpga_fifo_not_empty_8(i8*)

declare i1 @fpga_fifo_not_empty_24(i8*)

declare i1 @fpga_fifo_not_empty_2(i8*)

declare void @fpga_fifo_pop_16(i8*, i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_pop_24(i8*, i8*)

declare void @fpga_fifo_pop_2(i8*, i8*)

declare void @fpga_fifo_push_16(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

declare void @fpga_fifo_push_24(i8*, i8*)

declare void @fpga_fifo_push_2(i8*, i8*)

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
