// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module icmp_server_top_dropper (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        packageBuffer1_dout,
        packageBuffer1_empty_n,
        packageBuffer1_read,
        validFifo_dout,
        validFifo_empty_n,
        validFifo_read,
        dataStreams_V_data_V_0_din,
        dataStreams_V_data_V_0_full_n,
        dataStreams_V_data_V_0_write,
        dataStreams_V_keep_V_0_din,
        dataStreams_V_keep_V_0_full_n,
        dataStreams_V_keep_V_0_write,
        dataStreams_V_last_V_0_din,
        dataStreams_V_last_V_0_full_n,
        dataStreams_V_last_V_0_write
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [127:0] packageBuffer1_dout;
input   packageBuffer1_empty_n;
output   packageBuffer1_read;
input  [0:0] validFifo_dout;
input   validFifo_empty_n;
output   validFifo_read;
output  [63:0] dataStreams_V_data_V_0_din;
input   dataStreams_V_data_V_0_full_n;
output   dataStreams_V_data_V_0_write;
output  [7:0] dataStreams_V_keep_V_0_din;
input   dataStreams_V_keep_V_0_full_n;
output   dataStreams_V_keep_V_0_write;
output  [0:0] dataStreams_V_last_V_0_din;
input   dataStreams_V_last_V_0_full_n;
output   dataStreams_V_last_V_0_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg packageBuffer1_read;
reg validFifo_read;
reg[63:0] dataStreams_V_data_V_0_din;
reg dataStreams_V_data_V_0_write;
reg dataStreams_V_keep_V_0_write;
reg[0:0] dataStreams_V_last_V_0_din;
reg dataStreams_V_last_V_0_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [0:0] tmp_i_nbreadreq_fu_60_p3;
reg    ap_predicate_op20_read_state1;
wire   [0:0] tmp_i_58_nbreadreq_fu_74_p3;
reg    ap_predicate_op29_read_state1;
reg    ap_predicate_op31_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire    io_acc_block_signal_op49;
reg   [0:0] tmp_i_reg_243;
reg   [0:0] d_isFirstWord_load_reg_247;
reg   [0:0] d_drop_load_reg_251;
reg    ap_predicate_op49_write_state2;
wire    io_acc_block_signal_op50;
reg   [0:0] tmp_i_58_reg_265;
reg   [0:0] d_valid_reg_274;
reg    ap_predicate_op50_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] d_isFirstWord;
reg   [0:0] d_drop;
reg    packageBuffer1_blk_n;
wire    ap_block_pp0_stage0;
reg    validFifo_blk_n;
reg    dataStreams_V_data_V_0_blk_n;
reg    dataStreams_V_keep_V_0_blk_n;
reg    dataStreams_V_last_V_0_blk_n;
reg   [7:0] reg_210;
wire   [0:0] d_drop_load_load_fu_219_p1;
wire   [0:0] d_valid_read_fu_82_p2;
wire   [0:0] grp_fu_192_p3;
reg   [0:0] currWord_last_V_reg_255;
wire   [63:0] trunc_ln174_fu_223_p1;
reg   [63:0] trunc_ln174_reg_260;
reg   [0:0] currWord_last_V_1_reg_269;
wire   [63:0] trunc_ln174_1_fu_227_p1;
reg   [63:0] trunc_ln174_1_reg_278;
reg    ap_block_pp0_stage0_subdone;
reg   [0:0] ap_phi_mux_d_drop_flag_0_i_phi_fu_104_p4;
wire   [0:0] ap_phi_reg_pp0_iter0_d_drop_flag_0_i_reg_101;
reg   [0:0] ap_phi_mux_d_isFirstWord_flag_0_i_phi_fu_115_p10;
wire   [0:0] ap_phi_reg_pp0_iter0_d_isFirstWord_flag_0_i_reg_112;
reg   [0:0] ap_phi_mux_d_isFirstWord_new_0_i_phi_fu_135_p10;
wire   [0:0] ap_phi_reg_pp0_iter0_d_isFirstWord_new_0_i_reg_132;
reg   [0:0] ap_phi_mux_d_drop_flag_1_i_phi_fu_155_p10;
wire   [0:0] ap_phi_reg_pp0_iter0_d_drop_flag_1_i_reg_152;
reg   [0:0] ap_phi_mux_d_drop_new_1_i_phi_fu_175_p10;
wire   [0:0] ap_phi_reg_pp0_iter0_d_drop_new_1_i_reg_172;
reg    ap_block_pp0_stage0_01001;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_52;
reg    ap_condition_239;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 d_isFirstWord = 1'd1;
#0 d_drop = 1'd0;
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
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_i_58_nbreadreq_fu_74_p3 == 1'd1) & (d_isFirstWord == 1'd1) & (tmp_i_nbreadreq_fu_60_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        currWord_last_V_1_reg_269 <= packageBuffer1_dout[32'd72];
    end
end

always @ (posedge ap_clk) begin
    if (((d_isFirstWord == 1'd0) & (tmp_i_nbreadreq_fu_60_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        currWord_last_V_reg_255 <= packageBuffer1_dout[32'd72];
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (ap_phi_mux_d_drop_flag_1_i_phi_fu_155_p10 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        d_drop <= ap_phi_mux_d_drop_new_1_i_phi_fu_175_p10;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_i_nbreadreq_fu_60_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        d_drop_load_reg_251 <= d_drop;
        d_isFirstWord_load_reg_247 <= d_isFirstWord;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_phi_mux_d_isFirstWord_flag_0_i_phi_fu_115_p10 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        d_isFirstWord <= ap_phi_mux_d_isFirstWord_new_0_i_phi_fu_135_p10;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_predicate_op31_read_state1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        d_valid_reg_274 <= validFifo_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((((tmp_i_58_nbreadreq_fu_74_p3 == 1'd1) & (d_isFirstWord == 1'd1) & (tmp_i_nbreadreq_fu_60_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (d_valid_read_fu_82_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((d_isFirstWord == 1'd0) & (tmp_i_nbreadreq_fu_60_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (d_drop_load_load_fu_219_p1 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        reg_210 <= {{packageBuffer1_dout[71:64]}};
    end
end

always @ (posedge ap_clk) begin
    if (((d_isFirstWord == 1'd1) & (tmp_i_nbreadreq_fu_60_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_i_58_reg_265 <= tmp_i_58_nbreadreq_fu_74_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_i_reg_243 <= tmp_i_nbreadreq_fu_60_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_i_58_nbreadreq_fu_74_p3 == 1'd1) & (d_isFirstWord == 1'd1) & (tmp_i_nbreadreq_fu_60_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (d_valid_read_fu_82_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        trunc_ln174_1_reg_278 <= trunc_ln174_1_fu_227_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((d_isFirstWord == 1'd0) & (tmp_i_nbreadreq_fu_60_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (d_drop_load_load_fu_219_p1 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        trunc_ln174_reg_260 <= trunc_ln174_fu_223_p1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_52)) begin
        if ((d_valid_read_fu_82_p2 == 1'd0)) begin
            ap_phi_mux_d_drop_flag_0_i_phi_fu_104_p4 = 1'd1;
        end else if ((d_valid_read_fu_82_p2 == 1'd1)) begin
            ap_phi_mux_d_drop_flag_0_i_phi_fu_104_p4 = 1'd0;
        end else begin
            ap_phi_mux_d_drop_flag_0_i_phi_fu_104_p4 = ap_phi_reg_pp0_iter0_d_drop_flag_0_i_reg_101;
        end
    end else begin
        ap_phi_mux_d_drop_flag_0_i_phi_fu_104_p4 = ap_phi_reg_pp0_iter0_d_drop_flag_0_i_reg_101;
    end
end

always @ (*) begin
    if (((tmp_i_nbreadreq_fu_60_p3 == 1'd0) | ((d_isFirstWord == 1'd0) & (tmp_i_nbreadreq_fu_60_p3 == 1'd1) & (grp_fu_192_p3 == 1'd0) & (d_drop_load_load_fu_219_p1 == 1'd1)) | ((d_isFirstWord == 1'd0) & (tmp_i_nbreadreq_fu_60_p3 == 1'd1) & (grp_fu_192_p3 == 1'd0) & (d_drop_load_load_fu_219_p1 == 1'd0)))) begin
        ap_phi_mux_d_drop_flag_1_i_phi_fu_155_p10 = 1'd0;
    end else if (((tmp_i_58_nbreadreq_fu_74_p3 == 1'd1) & (d_isFirstWord == 1'd1) & (tmp_i_nbreadreq_fu_60_p3 == 1'd1) & (grp_fu_192_p3 == 1'd0))) begin
        ap_phi_mux_d_drop_flag_1_i_phi_fu_155_p10 = ap_phi_mux_d_drop_flag_0_i_phi_fu_104_p4;
    end else if (((((d_isFirstWord == 1'd1) & (tmp_i_nbreadreq_fu_60_p3 == 1'd1) & (grp_fu_192_p3 == 1'd1)) | ((tmp_i_58_nbreadreq_fu_74_p3 == 1'd0) & (d_isFirstWord == 1'd1) & (tmp_i_nbreadreq_fu_60_p3 == 1'd1))) | ((d_isFirstWord == 1'd0) & (tmp_i_nbreadreq_fu_60_p3 == 1'd1) & (grp_fu_192_p3 == 1'd1)))) begin
        ap_phi_mux_d_drop_flag_1_i_phi_fu_155_p10 = 1'd1;
    end else begin
        ap_phi_mux_d_drop_flag_1_i_phi_fu_155_p10 = ap_phi_reg_pp0_iter0_d_drop_flag_1_i_reg_152;
    end
end

always @ (*) begin
    if (((tmp_i_58_nbreadreq_fu_74_p3 == 1'd1) & (d_isFirstWord == 1'd1) & (tmp_i_nbreadreq_fu_60_p3 == 1'd1) & (grp_fu_192_p3 == 1'd0))) begin
        ap_phi_mux_d_drop_new_1_i_phi_fu_175_p10 = 1'd1;
    end else if (((((d_isFirstWord == 1'd1) & (tmp_i_nbreadreq_fu_60_p3 == 1'd1) & (grp_fu_192_p3 == 1'd1)) | ((tmp_i_58_nbreadreq_fu_74_p3 == 1'd0) & (d_isFirstWord == 1'd1) & (tmp_i_nbreadreq_fu_60_p3 == 1'd1))) | ((d_isFirstWord == 1'd0) & (tmp_i_nbreadreq_fu_60_p3 == 1'd1) & (grp_fu_192_p3 == 1'd1)))) begin
        ap_phi_mux_d_drop_new_1_i_phi_fu_175_p10 = 1'd0;
    end else begin
        ap_phi_mux_d_drop_new_1_i_phi_fu_175_p10 = ap_phi_reg_pp0_iter0_d_drop_new_1_i_reg_172;
    end
end

always @ (*) begin
    if (((tmp_i_nbreadreq_fu_60_p3 == 1'd0) | ((d_isFirstWord == 1'd0) & (tmp_i_nbreadreq_fu_60_p3 == 1'd1) & (grp_fu_192_p3 == 1'd0) & (d_drop_load_load_fu_219_p1 == 1'd1)) | ((d_isFirstWord == 1'd0) & (tmp_i_nbreadreq_fu_60_p3 == 1'd1) & (grp_fu_192_p3 == 1'd0) & (d_drop_load_load_fu_219_p1 == 1'd0)))) begin
        ap_phi_mux_d_isFirstWord_flag_0_i_phi_fu_115_p10 = 1'd0;
    end else if ((((tmp_i_58_nbreadreq_fu_74_p3 == 1'd1) & (d_isFirstWord == 1'd1) & (tmp_i_nbreadreq_fu_60_p3 == 1'd1) & (grp_fu_192_p3 == 1'd0)) | ((d_isFirstWord == 1'd1) & (tmp_i_nbreadreq_fu_60_p3 == 1'd1) & (grp_fu_192_p3 == 1'd1)) | ((d_isFirstWord == 1'd0) & (tmp_i_nbreadreq_fu_60_p3 == 1'd1) & (grp_fu_192_p3 == 1'd1)) | ((tmp_i_58_nbreadreq_fu_74_p3 == 1'd0) & (d_isFirstWord == 1'd1) & (tmp_i_nbreadreq_fu_60_p3 == 1'd1)))) begin
        ap_phi_mux_d_isFirstWord_flag_0_i_phi_fu_115_p10 = 1'd1;
    end else begin
        ap_phi_mux_d_isFirstWord_flag_0_i_phi_fu_115_p10 = ap_phi_reg_pp0_iter0_d_isFirstWord_flag_0_i_reg_112;
    end
end

always @ (*) begin
    if (((tmp_i_58_nbreadreq_fu_74_p3 == 1'd1) & (d_isFirstWord == 1'd1) & (tmp_i_nbreadreq_fu_60_p3 == 1'd1) & (grp_fu_192_p3 == 1'd0))) begin
        ap_phi_mux_d_isFirstWord_new_0_i_phi_fu_135_p10 = 1'd0;
    end else if (((((d_isFirstWord == 1'd1) & (tmp_i_nbreadreq_fu_60_p3 == 1'd1) & (grp_fu_192_p3 == 1'd1)) | ((tmp_i_58_nbreadreq_fu_74_p3 == 1'd0) & (d_isFirstWord == 1'd1) & (tmp_i_nbreadreq_fu_60_p3 == 1'd1))) | ((d_isFirstWord == 1'd0) & (tmp_i_nbreadreq_fu_60_p3 == 1'd1) & (grp_fu_192_p3 == 1'd1)))) begin
        ap_phi_mux_d_isFirstWord_new_0_i_phi_fu_135_p10 = 1'd1;
    end else begin
        ap_phi_mux_d_isFirstWord_new_0_i_phi_fu_135_p10 = ap_phi_reg_pp0_iter0_d_isFirstWord_new_0_i_reg_132;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_predicate_op49_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op50_write_state2 == 1'b1)))) begin
        dataStreams_V_data_V_0_blk_n = dataStreams_V_data_V_0_full_n;
    end else begin
        dataStreams_V_data_V_0_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_239)) begin
        if ((ap_predicate_op50_write_state2 == 1'b1)) begin
            dataStreams_V_data_V_0_din = trunc_ln174_1_reg_278;
        end else if ((ap_predicate_op49_write_state2 == 1'b1)) begin
            dataStreams_V_data_V_0_din = trunc_ln174_reg_260;
        end else begin
            dataStreams_V_data_V_0_din = 'bx;
        end
    end else begin
        dataStreams_V_data_V_0_din = 'bx;
    end
end

always @ (*) begin
    if ((((ap_predicate_op49_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op50_write_state2 == 1'b1)))) begin
        dataStreams_V_data_V_0_write = 1'b1;
    end else begin
        dataStreams_V_data_V_0_write = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_predicate_op49_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op50_write_state2 == 1'b1)))) begin
        dataStreams_V_keep_V_0_blk_n = dataStreams_V_keep_V_0_full_n;
    end else begin
        dataStreams_V_keep_V_0_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_predicate_op49_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op50_write_state2 == 1'b1)))) begin
        dataStreams_V_keep_V_0_write = 1'b1;
    end else begin
        dataStreams_V_keep_V_0_write = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_predicate_op49_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op50_write_state2 == 1'b1)))) begin
        dataStreams_V_last_V_0_blk_n = dataStreams_V_last_V_0_full_n;
    end else begin
        dataStreams_V_last_V_0_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_239)) begin
        if ((ap_predicate_op50_write_state2 == 1'b1)) begin
            dataStreams_V_last_V_0_din = currWord_last_V_1_reg_269;
        end else if ((ap_predicate_op49_write_state2 == 1'b1)) begin
            dataStreams_V_last_V_0_din = currWord_last_V_reg_255;
        end else begin
            dataStreams_V_last_V_0_din = 'bx;
        end
    end else begin
        dataStreams_V_last_V_0_din = 'bx;
    end
end

always @ (*) begin
    if ((((ap_predicate_op49_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op50_write_state2 == 1'b1)))) begin
        dataStreams_V_last_V_0_write = 1'b1;
    end else begin
        dataStreams_V_last_V_0_write = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_predicate_op29_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0)) | ((ap_predicate_op20_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0)))) begin
        packageBuffer1_blk_n = packageBuffer1_empty_n;
    end else begin
        packageBuffer1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_predicate_op29_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op20_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        packageBuffer1_read = 1'b1;
    end else begin
        packageBuffer1_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_predicate_op31_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0))) begin
        validFifo_blk_n = validFifo_empty_n;
    end else begin
        validFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op31_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        validFifo_read = 1'b1;
    end else begin
        validFifo_read = 1'b0;
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

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op31_read_state1 == 1'b1) & (validFifo_empty_n == 1'b0)) | ((ap_predicate_op29_read_state1 == 1'b1) & (packageBuffer1_empty_n == 1'b0)) | ((ap_predicate_op20_read_state1 == 1'b1) & (packageBuffer1_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((io_acc_block_signal_op50 == 1'b0) & (ap_predicate_op50_write_state2 == 1'b1)) | ((ap_predicate_op49_write_state2 == 1'b1) & (io_acc_block_signal_op49 == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op31_read_state1 == 1'b1) & (validFifo_empty_n == 1'b0)) | ((ap_predicate_op29_read_state1 == 1'b1) & (packageBuffer1_empty_n == 1'b0)) | ((ap_predicate_op20_read_state1 == 1'b1) & (packageBuffer1_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((io_acc_block_signal_op50 == 1'b0) & (ap_predicate_op50_write_state2 == 1'b1)) | ((ap_predicate_op49_write_state2 == 1'b1) & (io_acc_block_signal_op49 == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op31_read_state1 == 1'b1) & (validFifo_empty_n == 1'b0)) | ((ap_predicate_op29_read_state1 == 1'b1) & (packageBuffer1_empty_n == 1'b0)) | ((ap_predicate_op20_read_state1 == 1'b1) & (packageBuffer1_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((io_acc_block_signal_op50 == 1'b0) & (ap_predicate_op50_write_state2 == 1'b1)) | ((ap_predicate_op49_write_state2 == 1'b1) & (io_acc_block_signal_op49 == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | ((ap_predicate_op31_read_state1 == 1'b1) & (validFifo_empty_n == 1'b0)) | ((ap_predicate_op29_read_state1 == 1'b1) & (packageBuffer1_empty_n == 1'b0)) | ((ap_predicate_op20_read_state1 == 1'b1) & (packageBuffer1_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((io_acc_block_signal_op50 == 1'b0) & (ap_predicate_op50_write_state2 == 1'b1)) | ((ap_predicate_op49_write_state2 == 1'b1) & (io_acc_block_signal_op49 == 1'b0)));
end

always @ (*) begin
    ap_condition_239 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_01001));
end

always @ (*) begin
    ap_condition_52 = ((tmp_i_58_nbreadreq_fu_74_p3 == 1'd1) & (d_isFirstWord == 1'd1) & (tmp_i_nbreadreq_fu_60_p3 == 1'd1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_phi_reg_pp0_iter0_d_drop_flag_0_i_reg_101 = 'bx;

assign ap_phi_reg_pp0_iter0_d_drop_flag_1_i_reg_152 = 'bx;

assign ap_phi_reg_pp0_iter0_d_drop_new_1_i_reg_172 = 'bx;

assign ap_phi_reg_pp0_iter0_d_isFirstWord_flag_0_i_reg_112 = 'bx;

assign ap_phi_reg_pp0_iter0_d_isFirstWord_new_0_i_reg_132 = 'bx;

always @ (*) begin
    ap_predicate_op20_read_state1 = ((d_isFirstWord == 1'd0) & (tmp_i_nbreadreq_fu_60_p3 == 1'd1));
end

always @ (*) begin
    ap_predicate_op29_read_state1 = ((tmp_i_58_nbreadreq_fu_74_p3 == 1'd1) & (d_isFirstWord == 1'd1) & (tmp_i_nbreadreq_fu_60_p3 == 1'd1));
end

always @ (*) begin
    ap_predicate_op31_read_state1 = ((tmp_i_58_nbreadreq_fu_74_p3 == 1'd1) & (d_isFirstWord == 1'd1) & (tmp_i_nbreadreq_fu_60_p3 == 1'd1));
end

always @ (*) begin
    ap_predicate_op49_write_state2 = ((d_drop_load_reg_251 == 1'd0) & (d_isFirstWord_load_reg_247 == 1'd0) & (tmp_i_reg_243 == 1'd1));
end

always @ (*) begin
    ap_predicate_op50_write_state2 = ((d_isFirstWord_load_reg_247 == 1'd1) & (tmp_i_reg_243 == 1'd1) & (d_valid_reg_274 == 1'd1) & (tmp_i_58_reg_265 == 1'd1));
end

assign d_drop_load_load_fu_219_p1 = d_drop;

assign d_valid_read_fu_82_p2 = validFifo_dout;

assign dataStreams_V_keep_V_0_din = reg_210;

assign grp_fu_192_p3 = packageBuffer1_dout[32'd72];

assign io_acc_block_signal_op49 = (dataStreams_V_last_V_0_full_n & dataStreams_V_keep_V_0_full_n & dataStreams_V_data_V_0_full_n);

assign io_acc_block_signal_op50 = (dataStreams_V_last_V_0_full_n & dataStreams_V_keep_V_0_full_n & dataStreams_V_data_V_0_full_n);

assign tmp_i_58_nbreadreq_fu_74_p3 = validFifo_empty_n;

assign tmp_i_nbreadreq_fu_60_p3 = packageBuffer1_empty_n;

assign trunc_ln174_1_fu_227_p1 = packageBuffer1_dout[63:0];

assign trunc_ln174_fu_223_p1 = packageBuffer1_dout[63:0];

endmodule //icmp_server_top_dropper