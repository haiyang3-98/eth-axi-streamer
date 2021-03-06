// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module toe_top_toe_process_ipv4_512_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        ipRxData_internal_dout,
        ipRxData_internal_empty_n,
        ipRxData_internal_read,
        rxEng_dataBuffer0_din,
        rxEng_dataBuffer0_full_n,
        rxEng_dataBuffer0_write,
        rx_process2dropLengthFifo_din,
        rx_process2dropLengthFifo_full_n,
        rx_process2dropLengthFifo_write,
        rxEng_ipMetaFifo_din,
        rxEng_ipMetaFifo_full_n,
        rxEng_ipMetaFifo_write
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [1023:0] ipRxData_internal_dout;
input   ipRxData_internal_empty_n;
output   ipRxData_internal_read;
output  [1023:0] rxEng_dataBuffer0_din;
input   rxEng_dataBuffer0_full_n;
output   rxEng_dataBuffer0_write;
output  [3:0] rx_process2dropLengthFifo_din;
input   rx_process2dropLengthFifo_full_n;
output   rx_process2dropLengthFifo_write;
output  [95:0] rxEng_ipMetaFifo_din;
input   rxEng_ipMetaFifo_full_n;
output   rxEng_ipMetaFifo_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg ipRxData_internal_read;
reg rxEng_dataBuffer0_write;
reg rx_process2dropLengthFifo_write;
reg rxEng_ipMetaFifo_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire   [0:0] tmp_i_nbreadreq_fu_96_p3;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] tmp_i_reg_471;
reg    ap_block_state2_pp0_stage0_iter1;
reg   [0:0] tmp_i_reg_471_pp0_iter1_reg;
reg   [0:0] metaWritten_load_reg_503;
reg    ap_predicate_op71_write_state3;
reg    ap_predicate_op81_write_state3;
reg    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] header_ready;
reg   [15:0] header_idx;
reg   [159:0] header_header_V;
reg   [0:0] metaWritten;
reg    ipRxData_internal_blk_n;
wire    ap_block_pp0_stage0;
reg    rxEng_dataBuffer0_blk_n;
reg    rx_process2dropLengthFifo_blk_n;
reg    rxEng_ipMetaFifo_blk_n;
reg   [1023:0] ipRxData_internal_read_reg_475;
reg   [0:0] tmp_last_V_reg_482;
wire   [159:0] p_Result_s_fu_330_p2;
wire   [0:0] header_ready_load_load_fu_224_p1;
wire   [0:0] metaWritten_load_load_fu_349_p1;
reg    ap_block_pp0_stage0_subdone;
reg   [0:0] ap_phi_mux_header_ready_flag_0_i_phi_fu_134_p4;
wire   [0:0] ap_phi_reg_pp0_iter1_header_ready_flag_0_i_reg_131;
reg   [15:0] ap_phi_mux_header_idx_new_0_i_phi_fu_145_p4;
wire   [15:0] add_ln67_fu_342_p2;
wire   [15:0] ap_phi_reg_pp0_iter1_header_idx_new_0_i_reg_142;
reg   [0:0] ap_phi_mux_metaWritten_flag_0_i_phi_fu_155_p4;
wire   [0:0] ap_phi_reg_pp0_iter1_metaWritten_flag_0_i_reg_152;
reg   [0:0] ap_phi_mux_header_ready_flag_1_i_phi_fu_167_p4;
wire   [0:0] ap_phi_reg_pp0_iter0_header_ready_flag_1_i_reg_163;
reg   [0:0] ap_phi_reg_pp0_iter1_header_ready_flag_1_i_reg_163;
wire   [0:0] or_ln69_fu_353_p2;
reg   [0:0] ap_phi_mux_header_ready_new_1_i_phi_fu_178_p4;
wire   [0:0] xor_ln69_fu_359_p2;
wire   [0:0] ap_phi_reg_pp0_iter1_header_ready_new_1_i_reg_174;
reg   [15:0] ap_phi_mux_header_idx_new_1_i_phi_fu_189_p4;
wire   [15:0] select_ln69_fu_365_p3;
wire   [15:0] ap_phi_reg_pp0_iter1_header_idx_new_1_i_reg_185;
reg   [0:0] ap_phi_mux_metaWritten_flag_1_i_phi_fu_200_p4;
wire   [0:0] ap_phi_reg_pp0_iter0_metaWritten_flag_1_i_reg_196;
reg   [0:0] ap_phi_reg_pp0_iter1_metaWritten_flag_1_i_reg_196;
wire   [0:0] or_ln69_1_fu_373_p2;
wire   [159:0] ap_phi_reg_pp0_iter0_p_Val2_1_reg_207;
reg   [159:0] ap_phi_reg_pp0_iter1_p_Val2_1_reg_207;
reg   [159:0] ap_phi_reg_pp0_iter2_p_Val2_1_reg_207;
reg    ap_block_pp0_stage0_01001;
wire   [3:0] trunc_ln674_fu_397_p1;
wire   [24:0] shl_ln_fu_236_p3;
wire   [0:0] trunc_ln414_fu_253_p1;
wire   [0:0] icmp_ln414_fu_247_p2;
wire   [159:0] st8_fu_256_p3;
wire   [159:0] tmp_193_fu_244_p1;
wire   [159:0] select_ln414_fu_264_p3;
reg   [159:0] tmp_fu_272_p4;
wire   [159:0] select_ln414_2_fu_290_p3;
wire   [159:0] select_ln414_3_fu_298_p3;
wire   [159:0] and_ln414_fu_306_p2;
wire   [159:0] xor_ln414_fu_312_p2;
wire   [159:0] select_ln414_1_fu_282_p3;
wire   [159:0] and_ln414_4_fu_318_p2;
wire   [159:0] and_ln414_5_fu_324_p2;
wire   [7:0] p_Result_450_i_fu_412_p4;
wire   [7:0] p_Result_449_i_fu_402_p4;
wire   [5:0] shl_ln1_fu_430_p3;
wire   [15:0] p_Result_129_fu_422_p3;
wire   [15:0] zext_ln213_fu_438_p1;
wire   [15:0] sub_ln213_fu_442_p2;
wire   [63:0] tmp_21_i_fu_448_p4;
wire   [79:0] tmp_22_i_fu_458_p3;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to1;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_93;
reg    ap_condition_156;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 header_ready = 1'd0;
#0 header_idx = 16'd0;
#0 header_header_V = 160'd1180591620717411303493;
#0 metaWritten = 1'd0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_93)) begin
        if ((tmp_i_nbreadreq_fu_96_p3 == 1'd0)) begin
            ap_phi_reg_pp0_iter1_header_ready_flag_1_i_reg_163 <= 1'd0;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_header_ready_flag_1_i_reg_163 <= ap_phi_reg_pp0_iter0_header_ready_flag_1_i_reg_163;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_93)) begin
        if ((tmp_i_nbreadreq_fu_96_p3 == 1'd0)) begin
            ap_phi_reg_pp0_iter1_metaWritten_flag_1_i_reg_196 <= 1'd0;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_metaWritten_flag_1_i_reg_196 <= ap_phi_reg_pp0_iter0_metaWritten_flag_1_i_reg_196;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_156)) begin
        if (((tmp_i_reg_471 == 1'd1) & (header_ready_load_load_fu_224_p1 == 1'd0))) begin
            ap_phi_reg_pp0_iter2_p_Val2_1_reg_207 <= p_Result_s_fu_330_p2;
        end else if (((tmp_i_reg_471 == 1'd1) & (header_ready_load_load_fu_224_p1 == 1'd1))) begin
            ap_phi_reg_pp0_iter2_p_Val2_1_reg_207 <= header_header_V;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter2_p_Val2_1_reg_207 <= ap_phi_reg_pp0_iter1_p_Val2_1_reg_207;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_reg_pp0_iter1_p_Val2_1_reg_207 <= ap_phi_reg_pp0_iter0_p_Val2_1_reg_207;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_reg_471 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (header_ready_load_load_fu_224_p1 == 1'd0))) begin
        header_header_V <= p_Result_s_fu_330_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_phi_mux_header_ready_flag_1_i_phi_fu_167_p4 == 1'd1))) begin
        header_idx <= ap_phi_mux_header_idx_new_1_i_phi_fu_189_p4;
        header_ready <= ap_phi_mux_header_ready_new_1_i_phi_fu_178_p4;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_nbreadreq_fu_96_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ipRxData_internal_read_reg_475 <= ipRxData_internal_dout;
        tmp_last_V_reg_482 <= ipRxData_internal_dout[32'd576];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_phi_mux_metaWritten_flag_1_i_phi_fu_200_p4 == 1'd1))) begin
        metaWritten <= ap_phi_mux_header_ready_new_1_i_phi_fu_178_p4;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_reg_471 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        metaWritten_load_reg_503 <= metaWritten;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_i_reg_471 <= tmp_i_nbreadreq_fu_96_p3;
        tmp_i_reg_471_pp0_iter1_reg <= tmp_i_reg_471;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_i_reg_471 == 1'd1) & (header_ready_load_load_fu_224_p1 == 1'd0))) begin
        ap_phi_mux_header_idx_new_0_i_phi_fu_145_p4 = add_ln67_fu_342_p2;
    end else begin
        ap_phi_mux_header_idx_new_0_i_phi_fu_145_p4 = ap_phi_reg_pp0_iter1_header_idx_new_0_i_reg_142;
    end
end

always @ (*) begin
    if ((tmp_i_reg_471 == 1'd1)) begin
        ap_phi_mux_header_idx_new_1_i_phi_fu_189_p4 = select_ln69_fu_365_p3;
    end else begin
        ap_phi_mux_header_idx_new_1_i_phi_fu_189_p4 = ap_phi_reg_pp0_iter1_header_idx_new_1_i_reg_185;
    end
end

always @ (*) begin
    if ((tmp_i_reg_471 == 1'd1)) begin
        if ((header_ready_load_load_fu_224_p1 == 1'd0)) begin
            ap_phi_mux_header_ready_flag_0_i_phi_fu_134_p4 = 1'd1;
        end else if ((header_ready_load_load_fu_224_p1 == 1'd1)) begin
            ap_phi_mux_header_ready_flag_0_i_phi_fu_134_p4 = 1'd0;
        end else begin
            ap_phi_mux_header_ready_flag_0_i_phi_fu_134_p4 = ap_phi_reg_pp0_iter1_header_ready_flag_0_i_reg_131;
        end
    end else begin
        ap_phi_mux_header_ready_flag_0_i_phi_fu_134_p4 = ap_phi_reg_pp0_iter1_header_ready_flag_0_i_reg_131;
    end
end

always @ (*) begin
    if ((tmp_i_reg_471 == 1'd1)) begin
        ap_phi_mux_header_ready_flag_1_i_phi_fu_167_p4 = or_ln69_fu_353_p2;
    end else begin
        ap_phi_mux_header_ready_flag_1_i_phi_fu_167_p4 = ap_phi_reg_pp0_iter1_header_ready_flag_1_i_reg_163;
    end
end

always @ (*) begin
    if ((tmp_i_reg_471 == 1'd1)) begin
        ap_phi_mux_header_ready_new_1_i_phi_fu_178_p4 = xor_ln69_fu_359_p2;
    end else begin
        ap_phi_mux_header_ready_new_1_i_phi_fu_178_p4 = ap_phi_reg_pp0_iter1_header_ready_new_1_i_reg_174;
    end
end

always @ (*) begin
    if ((tmp_i_reg_471 == 1'd1)) begin
        if ((metaWritten_load_load_fu_349_p1 == 1'd0)) begin
            ap_phi_mux_metaWritten_flag_0_i_phi_fu_155_p4 = 1'd1;
        end else if ((metaWritten_load_load_fu_349_p1 == 1'd1)) begin
            ap_phi_mux_metaWritten_flag_0_i_phi_fu_155_p4 = 1'd0;
        end else begin
            ap_phi_mux_metaWritten_flag_0_i_phi_fu_155_p4 = ap_phi_reg_pp0_iter1_metaWritten_flag_0_i_reg_152;
        end
    end else begin
        ap_phi_mux_metaWritten_flag_0_i_phi_fu_155_p4 = ap_phi_reg_pp0_iter1_metaWritten_flag_0_i_reg_152;
    end
end

always @ (*) begin
    if ((tmp_i_reg_471 == 1'd1)) begin
        ap_phi_mux_metaWritten_flag_1_i_phi_fu_200_p4 = or_ln69_1_fu_373_p2;
    end else begin
        ap_phi_mux_metaWritten_flag_1_i_phi_fu_200_p4 = ap_phi_reg_pp0_iter1_metaWritten_flag_1_i_reg_196;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to1 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (tmp_i_nbreadreq_fu_96_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_done_reg == 1'b0))) begin
        ipRxData_internal_blk_n = ipRxData_internal_empty_n;
    end else begin
        ipRxData_internal_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_nbreadreq_fu_96_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ipRxData_internal_read = 1'b1;
    end else begin
        ipRxData_internal_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (tmp_i_reg_471 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        rxEng_dataBuffer0_blk_n = rxEng_dataBuffer0_full_n;
    end else begin
        rxEng_dataBuffer0_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_reg_471 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        rxEng_dataBuffer0_write = 1'b1;
    end else begin
        rxEng_dataBuffer0_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_predicate_op81_write_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        rxEng_ipMetaFifo_blk_n = rxEng_ipMetaFifo_full_n;
    end else begin
        rxEng_ipMetaFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op81_write_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        rxEng_ipMetaFifo_write = 1'b1;
    end else begin
        rxEng_ipMetaFifo_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_predicate_op71_write_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        rx_process2dropLengthFifo_blk_n = rx_process2dropLengthFifo_full_n;
    end else begin
        rx_process2dropLengthFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op71_write_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        rx_process2dropLengthFifo_write = 1'b1;
    end else begin
        rx_process2dropLengthFifo_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln67_fu_342_p2 = (header_idx + 16'd1);

assign and_ln414_4_fu_318_p2 = (xor_ln414_fu_312_p2 & header_header_V);

assign and_ln414_5_fu_324_p2 = (select_ln414_1_fu_282_p3 & and_ln414_fu_306_p2);

assign and_ln414_fu_306_p2 = (select_ln414_3_fu_298_p3 & select_ln414_2_fu_290_p3);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (((ap_predicate_op81_write_state3 == 1'b1) & (rxEng_ipMetaFifo_full_n == 1'b0)) | ((ap_predicate_op71_write_state3 == 1'b1) & (rx_process2dropLengthFifo_full_n == 1'b0)))) | ((tmp_i_reg_471 == 1'd1) & (rxEng_dataBuffer0_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((tmp_i_nbreadreq_fu_96_p3 == 1'd1) & (ipRxData_internal_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (((ap_predicate_op81_write_state3 == 1'b1) & (rxEng_ipMetaFifo_full_n == 1'b0)) | ((ap_predicate_op71_write_state3 == 1'b1) & (rx_process2dropLengthFifo_full_n == 1'b0)))) | ((tmp_i_reg_471 == 1'd1) & (rxEng_dataBuffer0_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((tmp_i_nbreadreq_fu_96_p3 == 1'd1) & (ipRxData_internal_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (((ap_predicate_op81_write_state3 == 1'b1) & (rxEng_ipMetaFifo_full_n == 1'b0)) | ((ap_predicate_op71_write_state3 == 1'b1) & (rx_process2dropLengthFifo_full_n == 1'b0)))) | ((tmp_i_reg_471 == 1'd1) & (rxEng_dataBuffer0_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((tmp_i_nbreadreq_fu_96_p3 == 1'd1) & (ipRxData_internal_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | ((tmp_i_nbreadreq_fu_96_p3 == 1'd1) & (ipRxData_internal_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((tmp_i_reg_471 == 1'd1) & (rxEng_dataBuffer0_full_n == 1'b0));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = (((ap_predicate_op81_write_state3 == 1'b1) & (rxEng_ipMetaFifo_full_n == 1'b0)) | ((ap_predicate_op71_write_state3 == 1'b1) & (rx_process2dropLengthFifo_full_n == 1'b0)));
end

always @ (*) begin
    ap_condition_156 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_93 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_phi_reg_pp0_iter0_header_ready_flag_1_i_reg_163 = 'bx;

assign ap_phi_reg_pp0_iter0_metaWritten_flag_1_i_reg_196 = 'bx;

assign ap_phi_reg_pp0_iter0_p_Val2_1_reg_207 = 'bx;

assign ap_phi_reg_pp0_iter1_header_idx_new_0_i_reg_142 = 'bx;

assign ap_phi_reg_pp0_iter1_header_idx_new_1_i_reg_185 = 'bx;

assign ap_phi_reg_pp0_iter1_header_ready_flag_0_i_reg_131 = 'bx;

assign ap_phi_reg_pp0_iter1_header_ready_new_1_i_reg_174 = 'bx;

assign ap_phi_reg_pp0_iter1_metaWritten_flag_0_i_reg_152 = 'bx;

always @ (*) begin
    ap_predicate_op71_write_state3 = ((metaWritten_load_reg_503 == 1'd0) & (tmp_i_reg_471_pp0_iter1_reg == 1'd1));
end

always @ (*) begin
    ap_predicate_op81_write_state3 = ((metaWritten_load_reg_503 == 1'd0) & (tmp_i_reg_471_pp0_iter1_reg == 1'd1));
end

assign header_ready_load_load_fu_224_p1 = header_ready;

assign icmp_ln414_fu_247_p2 = ((shl_ln_fu_236_p3 > 25'd159) ? 1'b1 : 1'b0);

assign metaWritten_load_load_fu_349_p1 = metaWritten;

assign or_ln69_1_fu_373_p2 = (tmp_last_V_reg_482 | ap_phi_mux_metaWritten_flag_0_i_phi_fu_155_p4);

assign or_ln69_fu_353_p2 = (tmp_last_V_reg_482 | ap_phi_mux_header_ready_flag_0_i_phi_fu_134_p4);

assign p_Result_129_fu_422_p3 = {{p_Result_450_i_fu_412_p4}, {p_Result_449_i_fu_402_p4}};

assign p_Result_449_i_fu_402_p4 = {{ap_phi_reg_pp0_iter2_p_Val2_1_reg_207[31:24]}};

assign p_Result_450_i_fu_412_p4 = {{ap_phi_reg_pp0_iter2_p_Val2_1_reg_207[23:16]}};

assign p_Result_s_fu_330_p2 = (and_ln414_5_fu_324_p2 | and_ln414_4_fu_318_p2);

assign rxEng_dataBuffer0_din = ipRxData_internal_read_reg_475;

assign rxEng_ipMetaFifo_din = tmp_22_i_fu_458_p3;

assign rx_process2dropLengthFifo_din = trunc_ln674_fu_397_p1;

assign select_ln414_1_fu_282_p3 = ((icmp_ln414_fu_247_p2[0:0] == 1'b1) ? tmp_fu_272_p4 : tmp_193_fu_244_p1);

assign select_ln414_2_fu_290_p3 = ((icmp_ln414_fu_247_p2[0:0] == 1'b1) ? 160'd730750818665451459101842416358141509827966271488 : 160'd1461501637330902918203684832716283019655932542975);

assign select_ln414_3_fu_298_p3 = ((icmp_ln414_fu_247_p2[0:0] == 1'b1) ? 160'd1 : 160'd1461501637330902918203684832716283019655932542975);

assign select_ln414_fu_264_p3 = ((icmp_ln414_fu_247_p2[0:0] == 1'b1) ? st8_fu_256_p3 : tmp_193_fu_244_p1);

assign select_ln69_fu_365_p3 = ((tmp_last_V_reg_482[0:0] == 1'b1) ? 16'd0 : ap_phi_mux_header_idx_new_0_i_phi_fu_145_p4);

assign shl_ln1_fu_430_p3 = {{trunc_ln674_fu_397_p1}, {2'd0}};

assign shl_ln_fu_236_p3 = {{header_idx}, {9'd0}};

assign st8_fu_256_p3 = {{trunc_ln414_fu_253_p1}, {159'd0}};

assign sub_ln213_fu_442_p2 = (p_Result_129_fu_422_p3 - zext_ln213_fu_438_p1);

assign tmp_193_fu_244_p1 = ipRxData_internal_read_reg_475[159:0];

assign tmp_21_i_fu_448_p4 = {{ap_phi_reg_pp0_iter2_p_Val2_1_reg_207[159:96]}};

assign tmp_22_i_fu_458_p3 = {{sub_ln213_fu_442_p2}, {tmp_21_i_fu_448_p4}};

integer ap_tvar_int_0;

always @ (select_ln414_fu_264_p3) begin
    for (ap_tvar_int_0 = 160 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 159 - 0) begin
            tmp_fu_272_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            tmp_fu_272_p4[ap_tvar_int_0] = select_ln414_fu_264_p3[159 - ap_tvar_int_0];
        end
    end
end

assign tmp_i_nbreadreq_fu_96_p3 = ipRxData_internal_empty_n;

assign trunc_ln414_fu_253_p1 = ipRxData_internal_read_reg_475[0:0];

assign trunc_ln674_fu_397_p1 = ap_phi_reg_pp0_iter2_p_Val2_1_reg_207[3:0];

assign xor_ln414_fu_312_p2 = (160'd1461501637330902918203684832716283019655932542975 ^ and_ln414_fu_306_p2);

assign xor_ln69_fu_359_p2 = (tmp_last_V_reg_482 ^ 1'd1);

assign zext_ln213_fu_438_p1 = shl_ln1_fu_430_p3;

endmodule //toe_top_toe_process_ipv4_512_s
