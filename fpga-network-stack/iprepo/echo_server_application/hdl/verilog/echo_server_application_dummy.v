// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module echo_server_application_dummy (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        s_axis_open_status_V_TVALID,
        s_axis_tx_status_V_TVALID,
        m_axis_open_connection_V_TREADY,
        m_axis_close_connection_V_TREADY,
        m_axis_open_connection_V_TDATA,
        m_axis_open_connection_V_TVALID,
        s_axis_open_status_V_TDATA,
        s_axis_open_status_V_TREADY,
        m_axis_close_connection_V_TDATA,
        m_axis_close_connection_V_TVALID,
        s_axis_tx_status_V_TDATA,
        s_axis_tx_status_V_TREADY
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input   s_axis_open_status_V_TVALID;
input   s_axis_tx_status_V_TVALID;
input   m_axis_open_connection_V_TREADY;
input   m_axis_close_connection_V_TREADY;
output  [63:0] m_axis_open_connection_V_TDATA;
output   m_axis_open_connection_V_TVALID;
input  [95:0] s_axis_open_status_V_TDATA;
output   s_axis_open_status_V_TREADY;
output  [15:0] m_axis_close_connection_V_TDATA;
output   m_axis_close_connection_V_TVALID;
input  [95:0] s_axis_tx_status_V_TDATA;
output   s_axis_tx_status_V_TREADY;

reg ap_done;
reg ap_idle;
reg ap_ready;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire   [0:0] tmp_nbreadreq_fu_40_p3;
wire   [0:0] tmp_3_nbreadreq_fu_54_p3;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] tmp_reg_103;
reg   [0:0] icmp_ln92_reg_112;
reg    ap_predicate_op21_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_state2_io;
reg   [0:0] tmp_reg_103_pp0_iter1_reg;
reg   [0:0] icmp_ln92_reg_112_pp0_iter1_reg;
reg    ap_predicate_op23_write_state3;
wire    regslice_both_m_axis_open_connection_V_U_apdone_blk;
wire    regslice_both_m_axis_close_connection_V_U_apdone_blk;
reg    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_state3_io;
reg    ap_block_pp0_stage0_11001;
reg    m_axis_open_connection_V_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    s_axis_open_status_V_TDATA_blk_n;
reg    m_axis_close_connection_V_TDATA_blk_n;
reg    s_axis_tx_status_V_TDATA_blk_n;
wire   [15:0] trunc_ln145_fu_83_p1;
reg   [15:0] trunc_ln145_reg_107;
wire   [0:0] icmp_ln92_fu_97_p2;
reg    ap_block_pp0_stage0_subdone;
reg    ap_block_pp0_stage0_01001;
wire   [7:0] newConn_success_V_fu_87_p4;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to1;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    m_axis_open_connection_V_TVALID_int_regslice;
wire    m_axis_open_connection_V_TREADY_int_regslice;
wire    regslice_both_m_axis_open_connection_V_U_vld_out;
wire    regslice_both_s_axis_open_status_V_U_apdone_blk;
wire   [95:0] s_axis_open_status_V_TDATA_int_regslice;
wire    s_axis_open_status_V_TVALID_int_regslice;
reg    s_axis_open_status_V_TREADY_int_regslice;
wire    regslice_both_s_axis_open_status_V_U_ack_in;
reg    m_axis_close_connection_V_TVALID_int_regslice;
wire    m_axis_close_connection_V_TREADY_int_regslice;
wire    regslice_both_m_axis_close_connection_V_U_vld_out;
wire    regslice_both_s_axis_tx_status_V_U_apdone_blk;
wire   [95:0] s_axis_tx_status_V_TDATA_int_regslice;
wire    s_axis_tx_status_V_TVALID_int_regslice;
reg    s_axis_tx_status_V_TREADY_int_regslice;
wire    regslice_both_s_axis_tx_status_V_U_ack_in;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

echo_server_application_regslice_both #(
    .DataWidth( 64 ))
regslice_both_m_axis_open_connection_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(64'd57252081893633),
    .vld_in(m_axis_open_connection_V_TVALID_int_regslice),
    .ack_in(m_axis_open_connection_V_TREADY_int_regslice),
    .data_out(m_axis_open_connection_V_TDATA),
    .vld_out(regslice_both_m_axis_open_connection_V_U_vld_out),
    .ack_out(m_axis_open_connection_V_TREADY),
    .apdone_blk(regslice_both_m_axis_open_connection_V_U_apdone_blk)
);

echo_server_application_regslice_both #(
    .DataWidth( 96 ))
regslice_both_s_axis_open_status_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(s_axis_open_status_V_TDATA),
    .vld_in(s_axis_open_status_V_TVALID),
    .ack_in(regslice_both_s_axis_open_status_V_U_ack_in),
    .data_out(s_axis_open_status_V_TDATA_int_regslice),
    .vld_out(s_axis_open_status_V_TVALID_int_regslice),
    .ack_out(s_axis_open_status_V_TREADY_int_regslice),
    .apdone_blk(regslice_both_s_axis_open_status_V_U_apdone_blk)
);

echo_server_application_regslice_both #(
    .DataWidth( 16 ))
regslice_both_m_axis_close_connection_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(trunc_ln145_reg_107),
    .vld_in(m_axis_close_connection_V_TVALID_int_regslice),
    .ack_in(m_axis_close_connection_V_TREADY_int_regslice),
    .data_out(m_axis_close_connection_V_TDATA),
    .vld_out(regslice_both_m_axis_close_connection_V_U_vld_out),
    .ack_out(m_axis_close_connection_V_TREADY),
    .apdone_blk(regslice_both_m_axis_close_connection_V_U_apdone_blk)
);

echo_server_application_regslice_both #(
    .DataWidth( 96 ))
regslice_both_s_axis_tx_status_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(s_axis_tx_status_V_TDATA),
    .vld_in(s_axis_tx_status_V_TVALID),
    .ack_in(regslice_both_s_axis_tx_status_V_U_ack_in),
    .data_out(s_axis_tx_status_V_TDATA_int_regslice),
    .vld_out(s_axis_tx_status_V_TVALID_int_regslice),
    .ack_out(s_axis_tx_status_V_TREADY_int_regslice),
    .apdone_blk(regslice_both_s_axis_tx_status_V_U_apdone_blk)
);

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
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_nbreadreq_fu_40_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln92_reg_112 <= icmp_ln92_fu_97_p2;
        trunc_ln145_reg_107 <= trunc_ln145_fu_83_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln92_reg_112_pp0_iter1_reg <= icmp_ln92_reg_112;
        tmp_reg_103 <= tmp_nbreadreq_fu_40_p3;
        tmp_reg_103_pp0_iter1_reg <= tmp_reg_103;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
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
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
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
    if ((((ap_predicate_op23_write_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_predicate_op21_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        m_axis_close_connection_V_TDATA_blk_n = m_axis_close_connection_V_TREADY_int_regslice;
    end else begin
        m_axis_close_connection_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op21_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        m_axis_close_connection_V_TVALID_int_regslice = 1'b1;
    end else begin
        m_axis_close_connection_V_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if ((((tmp_reg_103_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((tmp_reg_103 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        m_axis_open_connection_V_TDATA_blk_n = m_axis_open_connection_V_TREADY_int_regslice;
    end else begin
        m_axis_open_connection_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_reg_103 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        m_axis_open_connection_V_TVALID_int_regslice = 1'b1;
    end else begin
        m_axis_open_connection_V_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_nbreadreq_fu_40_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_done_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0))) begin
        s_axis_open_status_V_TDATA_blk_n = s_axis_open_status_V_TVALID_int_regslice;
    end else begin
        s_axis_open_status_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_nbreadreq_fu_40_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        s_axis_open_status_V_TREADY_int_regslice = 1'b1;
    end else begin
        s_axis_open_status_V_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_3_nbreadreq_fu_54_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_done_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0))) begin
        s_axis_tx_status_V_TDATA_blk_n = s_axis_tx_status_V_TVALID_int_regslice;
    end else begin
        s_axis_tx_status_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_3_nbreadreq_fu_54_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        s_axis_tx_status_V_TREADY_int_regslice = 1'b1;
    end else begin
        s_axis_tx_status_V_TREADY_int_regslice = 1'b0;
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
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_m_axis_close_connection_V_U_apdone_blk == 1'b1) | (regslice_both_m_axis_open_connection_V_U_apdone_blk == 1'b1) | ((ap_predicate_op23_write_state3 == 1'b1) & (m_axis_close_connection_V_TREADY_int_regslice == 1'b0)) | ((tmp_reg_103_pp0_iter1_reg == 1'd1) & (m_axis_open_connection_V_TREADY_int_regslice == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ap_predicate_op21_write_state2 == 1'b1) & (m_axis_close_connection_V_TREADY_int_regslice == 1'b0)) | ((tmp_reg_103 == 1'd1) & (m_axis_open_connection_V_TREADY_int_regslice == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((tmp_3_nbreadreq_fu_54_p3 == 1'd1) & (s_axis_tx_status_V_TVALID_int_regslice == 1'b0)) | ((tmp_nbreadreq_fu_40_p3 == 1'd1) & (s_axis_open_status_V_TVALID_int_regslice == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_m_axis_close_connection_V_U_apdone_blk == 1'b1) | (regslice_both_m_axis_open_connection_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((ap_predicate_op23_write_state3 == 1'b1) & (m_axis_close_connection_V_TREADY_int_regslice == 1'b0)) | ((tmp_reg_103_pp0_iter1_reg == 1'd1) & (m_axis_open_connection_V_TREADY_int_regslice == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state2_io) | ((ap_predicate_op21_write_state2 == 1'b1) & (m_axis_close_connection_V_TREADY_int_regslice == 1'b0)) | ((tmp_reg_103 == 1'd1) & (m_axis_open_connection_V_TREADY_int_regslice == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((tmp_3_nbreadreq_fu_54_p3 == 1'd1) & (s_axis_tx_status_V_TVALID_int_regslice == 1'b0)) | ((tmp_nbreadreq_fu_40_p3 == 1'd1) & (s_axis_open_status_V_TVALID_int_regslice == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_m_axis_close_connection_V_U_apdone_blk == 1'b1) | (regslice_both_m_axis_open_connection_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((ap_predicate_op23_write_state3 == 1'b1) & (m_axis_close_connection_V_TREADY_int_regslice == 1'b0)) | ((tmp_reg_103_pp0_iter1_reg == 1'd1) & (m_axis_open_connection_V_TREADY_int_regslice == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state2_io) | ((ap_predicate_op21_write_state2 == 1'b1) & (m_axis_close_connection_V_TREADY_int_regslice == 1'b0)) | ((tmp_reg_103 == 1'd1) & (m_axis_open_connection_V_TREADY_int_regslice == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((tmp_3_nbreadreq_fu_54_p3 == 1'd1) & (s_axis_tx_status_V_TVALID_int_regslice == 1'b0)) | ((tmp_nbreadreq_fu_40_p3 == 1'd1) & (s_axis_open_status_V_TVALID_int_regslice == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | ((tmp_3_nbreadreq_fu_54_p3 == 1'd1) & (s_axis_tx_status_V_TVALID_int_regslice == 1'b0)) | ((tmp_nbreadreq_fu_40_p3 == 1'd1) & (s_axis_open_status_V_TVALID_int_regslice == 1'b0)));
end

always @ (*) begin
    ap_block_state2_io = (((ap_predicate_op21_write_state2 == 1'b1) & (m_axis_close_connection_V_TREADY_int_regslice == 1'b0)) | ((tmp_reg_103 == 1'd1) & (m_axis_open_connection_V_TREADY_int_regslice == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((ap_predicate_op21_write_state2 == 1'b1) & (m_axis_close_connection_V_TREADY_int_regslice == 1'b0)) | ((tmp_reg_103 == 1'd1) & (m_axis_open_connection_V_TREADY_int_regslice == 1'b0)));
end

always @ (*) begin
    ap_block_state3_io = (((ap_predicate_op23_write_state3 == 1'b1) & (m_axis_close_connection_V_TREADY_int_regslice == 1'b0)) | ((tmp_reg_103_pp0_iter1_reg == 1'd1) & (m_axis_open_connection_V_TREADY_int_regslice == 1'b0)));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = ((regslice_both_m_axis_close_connection_V_U_apdone_blk == 1'b1) | (regslice_both_m_axis_open_connection_V_U_apdone_blk == 1'b1) | ((ap_predicate_op23_write_state3 == 1'b1) & (m_axis_close_connection_V_TREADY_int_regslice == 1'b0)) | ((tmp_reg_103_pp0_iter1_reg == 1'd1) & (m_axis_open_connection_V_TREADY_int_regslice == 1'b0)));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

always @ (*) begin
    ap_predicate_op21_write_state2 = ((icmp_ln92_reg_112 == 1'd0) & (tmp_reg_103 == 1'd1));
end

always @ (*) begin
    ap_predicate_op23_write_state3 = ((icmp_ln92_reg_112_pp0_iter1_reg == 1'd0) & (tmp_reg_103_pp0_iter1_reg == 1'd1));
end

assign icmp_ln92_fu_97_p2 = ((newConn_success_V_fu_87_p4 == 8'd0) ? 1'b1 : 1'b0);

assign m_axis_close_connection_V_TVALID = regslice_both_m_axis_close_connection_V_U_vld_out;

assign m_axis_open_connection_V_TVALID = regslice_both_m_axis_open_connection_V_U_vld_out;

assign newConn_success_V_fu_87_p4 = {{s_axis_open_status_V_TDATA_int_regslice[23:16]}};

assign s_axis_open_status_V_TREADY = regslice_both_s_axis_open_status_V_U_ack_in;

assign s_axis_tx_status_V_TREADY = regslice_both_s_axis_tx_status_V_U_ack_in;

assign tmp_3_nbreadreq_fu_54_p3 = s_axis_tx_status_V_TVALID_int_regslice;

assign tmp_nbreadreq_fu_40_p3 = s_axis_open_status_V_TVALID_int_regslice;

assign trunc_ln145_fu_83_p1 = s_axis_open_status_V_TDATA_int_regslice[15:0];

endmodule //echo_server_application_dummy
