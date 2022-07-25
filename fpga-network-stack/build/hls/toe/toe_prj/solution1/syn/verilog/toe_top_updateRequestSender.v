// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module toe_top_updateRequestSender (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        sessionInsert_req_dout,
        sessionInsert_req_empty_n,
        sessionInsert_req_read,
        sessionDelete_req_dout,
        sessionDelete_req_empty_n,
        sessionDelete_req_read,
        m_axis_session_upd_req_V_TREADY,
        slc_sessionIdFinFifo_din,
        slc_sessionIdFinFifo_full_n,
        slc_sessionIdFinFifo_write,
        m_axis_session_upd_req_V_TDATA,
        m_axis_session_upd_req_V_TVALID,
        regSessionCount,
        regSessionCount_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [159:0] sessionInsert_req_dout;
input   sessionInsert_req_empty_n;
output   sessionInsert_req_read;
input  [159:0] sessionDelete_req_dout;
input   sessionDelete_req_empty_n;
output   sessionDelete_req_read;
input   m_axis_session_upd_req_V_TREADY;
output  [13:0] slc_sessionIdFinFifo_din;
input   slc_sessionIdFinFifo_full_n;
output   slc_sessionIdFinFifo_write;
output  [159:0] m_axis_session_upd_req_V_TDATA;
output   m_axis_session_upd_req_V_TVALID;
output  [15:0] regSessionCount;
output   regSessionCount_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg sessionInsert_req_read;
reg sessionDelete_req_read;
reg slc_sessionIdFinFifo_write;
reg[15:0] regSessionCount;
reg regSessionCount_ap_vld;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire   [0:0] tmp_i_nbreadreq_fu_48_p3;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] tmp_i_reg_137;
wire   [0:0] tmp_2_i_nbreadreq_fu_62_p3;
reg    ap_predicate_op10_read_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg   [0:0] tmp_i_reg_137_pp0_iter1_reg;
reg   [0:0] tmp_2_i_reg_146;
reg    ap_predicate_op12_write_state3;
reg    ap_predicate_op13_write_state3;
reg    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_state3_io;
reg   [0:0] tmp_i_reg_137_pp0_iter2_reg;
reg   [0:0] tmp_2_i_reg_146_pp0_iter2_reg;
reg    ap_predicate_op30_write_state4;
wire    regslice_both_m_axis_session_upd_req_V_U_apdone_blk;
reg    ap_block_state4_pp0_stage0_iter3;
reg    ap_block_state4_io;
reg    ap_block_pp0_stage0_11001;
reg   [15:0] usedSessionIDs_V;
reg    m_axis_session_upd_req_V_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    sessionInsert_req_blk_n;
reg    sessionDelete_req_blk_n;
reg    slc_sessionIdFinFifo_blk_n;
reg   [159:0] tmp_reg_141;
reg   [159:0] tmp_reg_141_pp0_iter1_reg;
reg   [159:0] sessionDelete_req_read_reg_150;
reg   [13:0] p_0_reg_155;
reg    ap_block_pp0_stage0_subdone;
wire   [15:0] add_ln692_fu_111_p2;
wire   [15:0] add_ln691_fu_124_p2;
reg    ap_block_pp0_stage0_01001;
reg   [15:0] regSessionCount_preg;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to2;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg   [159:0] m_axis_session_upd_req_V_TDATA_int_regslice;
reg    m_axis_session_upd_req_V_TVALID_int_regslice;
wire    m_axis_session_upd_req_V_TREADY_int_regslice;
wire    regslice_both_m_axis_session_upd_req_V_U_vld_out;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 usedSessionIDs_V = 16'd0;
#0 regSessionCount_preg = 16'd0;
end

toe_top_regslice_both #(
    .DataWidth( 160 ))
regslice_both_m_axis_session_upd_req_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(m_axis_session_upd_req_V_TDATA_int_regslice),
    .vld_in(m_axis_session_upd_req_V_TVALID_int_regslice),
    .ack_in(m_axis_session_upd_req_V_TREADY_int_regslice),
    .data_out(m_axis_session_upd_req_V_TDATA),
    .vld_out(regslice_both_m_axis_session_upd_req_V_U_vld_out),
    .ack_out(m_axis_session_upd_req_V_TREADY),
    .apdone_blk(regslice_both_m_axis_session_upd_req_V_U_apdone_blk)
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
        end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        regSessionCount_preg <= 16'd0;
    end else begin
        if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001))) begin
            if ((tmp_i_reg_137_pp0_iter2_reg == 1'd1)) begin
                regSessionCount_preg <= add_ln691_fu_124_p2;
            end else if (((tmp_2_i_reg_146_pp0_iter2_reg == 1'd1) & (tmp_i_reg_137_pp0_iter2_reg == 1'd0))) begin
                regSessionCount_preg <= add_ln692_fu_111_p2;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if ((tmp_i_reg_137_pp0_iter2_reg == 1'd1)) begin
            usedSessionIDs_V <= add_ln691_fu_124_p2;
        end else if (((tmp_2_i_reg_146_pp0_iter2_reg == 1'd1) & (tmp_i_reg_137_pp0_iter2_reg == 1'd0))) begin
            usedSessionIDs_V <= add_ln692_fu_111_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_2_i_nbreadreq_fu_62_p3 == 1'd1) & (tmp_i_reg_137 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_0_reg_155 <= {{sessionDelete_req_dout[109:96]}};
    end
end

always @ (posedge ap_clk) begin
    if (((ap_predicate_op10_read_state2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        sessionDelete_req_read_reg_150 <= sessionDelete_req_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_i_reg_137 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_2_i_reg_146 <= tmp_2_i_nbreadreq_fu_62_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        tmp_2_i_reg_146_pp0_iter2_reg <= tmp_2_i_reg_146;
        tmp_i_reg_137_pp0_iter2_reg <= tmp_i_reg_137_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_i_reg_137 <= tmp_i_nbreadreq_fu_48_p3;
        tmp_i_reg_137_pp0_iter1_reg <= tmp_i_reg_137;
        tmp_reg_141_pp0_iter1_reg <= tmp_reg_141;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_i_nbreadreq_fu_48_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_reg_141 <= sessionInsert_req_dout;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
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
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((((tmp_i_reg_137_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_predicate_op12_write_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (tmp_i_reg_137_pp0_iter2_reg == 1'd1)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op30_write_state4 == 1'b1)))) begin
        m_axis_session_upd_req_V_TDATA_blk_n = m_axis_session_upd_req_V_TREADY_int_regslice;
    end else begin
        m_axis_session_upd_req_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        if ((tmp_i_reg_137_pp0_iter1_reg == 1'd1)) begin
            m_axis_session_upd_req_V_TDATA_int_regslice = tmp_reg_141_pp0_iter1_reg;
        end else if ((ap_predicate_op12_write_state3 == 1'b1)) begin
            m_axis_session_upd_req_V_TDATA_int_regslice = sessionDelete_req_read_reg_150;
        end else begin
            m_axis_session_upd_req_V_TDATA_int_regslice = 'bx;
        end
    end else begin
        m_axis_session_upd_req_V_TDATA_int_regslice = 'bx;
    end
end

always @ (*) begin
    if ((((tmp_i_reg_137_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op12_write_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        m_axis_session_upd_req_V_TVALID_int_regslice = 1'b1;
    end else begin
        m_axis_session_upd_req_V_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        if ((tmp_i_reg_137_pp0_iter2_reg == 1'd1)) begin
            regSessionCount = add_ln691_fu_124_p2;
        end else if (((tmp_2_i_reg_146_pp0_iter2_reg == 1'd1) & (tmp_i_reg_137_pp0_iter2_reg == 1'd0))) begin
            regSessionCount = add_ln692_fu_111_p2;
        end else begin
            regSessionCount = regSessionCount_preg;
        end
    end else begin
        regSessionCount = regSessionCount_preg;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_reg_137_pp0_iter2_reg == 1'd1)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (tmp_2_i_reg_146_pp0_iter2_reg == 1'd1) & (tmp_i_reg_137_pp0_iter2_reg == 1'd0)))) begin
        regSessionCount_ap_vld = 1'b1;
    end else begin
        regSessionCount_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_predicate_op10_read_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        sessionDelete_req_blk_n = sessionDelete_req_empty_n;
    end else begin
        sessionDelete_req_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op10_read_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        sessionDelete_req_read = 1'b1;
    end else begin
        sessionDelete_req_read = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_i_nbreadreq_fu_48_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0))) begin
        sessionInsert_req_blk_n = sessionInsert_req_empty_n;
    end else begin
        sessionInsert_req_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_i_nbreadreq_fu_48_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        sessionInsert_req_read = 1'b1;
    end else begin
        sessionInsert_req_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_predicate_op13_write_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        slc_sessionIdFinFifo_blk_n = slc_sessionIdFinFifo_full_n;
    end else begin
        slc_sessionIdFinFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op13_write_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        slc_sessionIdFinFifo_write = 1'b1;
    end else begin
        slc_sessionIdFinFifo_write = 1'b0;
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

assign add_ln691_fu_124_p2 = (usedSessionIDs_V + 16'd1);

assign add_ln692_fu_111_p2 = ($signed(usedSessionIDs_V) + $signed(16'd65535));

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (((tmp_i_reg_137_pp0_iter1_reg == 1'd1) & (m_axis_session_upd_req_V_TREADY_int_regslice == 1'b0)) | ((ap_predicate_op13_write_state3 == 1'b1) & (slc_sessionIdFinFifo_full_n == 1'b0)) | ((ap_predicate_op12_write_state3 == 1'b1) & (m_axis_session_upd_req_V_TREADY_int_regslice == 1'b0)))) | ((ap_predicate_op10_read_state2 == 1'b1) & (sessionDelete_req_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((tmp_i_nbreadreq_fu_48_p3 == 1'd1) & (sessionInsert_req_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter3 == 1'b1) & ((regslice_both_m_axis_session_upd_req_V_U_apdone_blk == 1'b1) | ((m_axis_session_upd_req_V_TREADY_int_regslice == 1'b0) & (tmp_i_reg_137_pp0_iter2_reg == 1'd1)) | ((m_axis_session_upd_req_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op30_write_state4 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((1'b1 == ap_block_state3_io) | ((tmp_i_reg_137_pp0_iter1_reg == 1'd1) & (m_axis_session_upd_req_V_TREADY_int_regslice == 1'b0)) | ((ap_predicate_op13_write_state3 == 1'b1) & (slc_sessionIdFinFifo_full_n == 1'b0)) | ((ap_predicate_op12_write_state3 == 1'b1) & (m_axis_session_upd_req_V_TREADY_int_regslice == 1'b0)))) | ((ap_predicate_op10_read_state2 == 1'b1) & (sessionDelete_req_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((tmp_i_nbreadreq_fu_48_p3 == 1'd1) & (sessionInsert_req_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter3 == 1'b1) & ((1'b1 == ap_block_state4_io) | (regslice_both_m_axis_session_upd_req_V_U_apdone_blk == 1'b1) | ((m_axis_session_upd_req_V_TREADY_int_regslice == 1'b0) & (tmp_i_reg_137_pp0_iter2_reg == 1'd1)) | ((m_axis_session_upd_req_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op30_write_state4 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((1'b1 == ap_block_state3_io) | ((tmp_i_reg_137_pp0_iter1_reg == 1'd1) & (m_axis_session_upd_req_V_TREADY_int_regslice == 1'b0)) | ((ap_predicate_op13_write_state3 == 1'b1) & (slc_sessionIdFinFifo_full_n == 1'b0)) | ((ap_predicate_op12_write_state3 == 1'b1) & (m_axis_session_upd_req_V_TREADY_int_regslice == 1'b0)))) | ((ap_predicate_op10_read_state2 == 1'b1) & (sessionDelete_req_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((tmp_i_nbreadreq_fu_48_p3 == 1'd1) & (sessionInsert_req_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter3 == 1'b1) & ((1'b1 == ap_block_state4_io) | (regslice_both_m_axis_session_upd_req_V_U_apdone_blk == 1'b1) | ((m_axis_session_upd_req_V_TREADY_int_regslice == 1'b0) & (tmp_i_reg_137_pp0_iter2_reg == 1'd1)) | ((m_axis_session_upd_req_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op30_write_state4 == 1'b1)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | ((tmp_i_nbreadreq_fu_48_p3 == 1'd1) & (sessionInsert_req_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((ap_predicate_op10_read_state2 == 1'b1) & (sessionDelete_req_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state3_io = (((tmp_i_reg_137_pp0_iter1_reg == 1'd1) & (m_axis_session_upd_req_V_TREADY_int_regslice == 1'b0)) | ((ap_predicate_op12_write_state3 == 1'b1) & (m_axis_session_upd_req_V_TREADY_int_regslice == 1'b0)));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = (((tmp_i_reg_137_pp0_iter1_reg == 1'd1) & (m_axis_session_upd_req_V_TREADY_int_regslice == 1'b0)) | ((ap_predicate_op13_write_state3 == 1'b1) & (slc_sessionIdFinFifo_full_n == 1'b0)) | ((ap_predicate_op12_write_state3 == 1'b1) & (m_axis_session_upd_req_V_TREADY_int_regslice == 1'b0)));
end

always @ (*) begin
    ap_block_state4_io = (((m_axis_session_upd_req_V_TREADY_int_regslice == 1'b0) & (tmp_i_reg_137_pp0_iter2_reg == 1'd1)) | ((m_axis_session_upd_req_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op30_write_state4 == 1'b1)));
end

always @ (*) begin
    ap_block_state4_pp0_stage0_iter3 = ((regslice_both_m_axis_session_upd_req_V_U_apdone_blk == 1'b1) | ((m_axis_session_upd_req_V_TREADY_int_regslice == 1'b0) & (tmp_i_reg_137_pp0_iter2_reg == 1'd1)) | ((m_axis_session_upd_req_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op30_write_state4 == 1'b1)));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

always @ (*) begin
    ap_predicate_op10_read_state2 = ((tmp_2_i_nbreadreq_fu_62_p3 == 1'd1) & (tmp_i_reg_137 == 1'd0));
end

always @ (*) begin
    ap_predicate_op12_write_state3 = ((tmp_2_i_reg_146 == 1'd1) & (tmp_i_reg_137_pp0_iter1_reg == 1'd0));
end

always @ (*) begin
    ap_predicate_op13_write_state3 = ((tmp_2_i_reg_146 == 1'd1) & (tmp_i_reg_137_pp0_iter1_reg == 1'd0));
end

always @ (*) begin
    ap_predicate_op30_write_state4 = ((tmp_2_i_reg_146_pp0_iter2_reg == 1'd1) & (tmp_i_reg_137_pp0_iter2_reg == 1'd0));
end

assign m_axis_session_upd_req_V_TVALID = regslice_both_m_axis_session_upd_req_V_U_vld_out;

assign slc_sessionIdFinFifo_din = p_0_reg_155;

assign tmp_2_i_nbreadreq_fu_62_p3 = sessionDelete_req_empty_n;

assign tmp_i_nbreadreq_fu_48_p3 = sessionInsert_req_empty_n;

endmodule //toe_top_updateRequestSender
