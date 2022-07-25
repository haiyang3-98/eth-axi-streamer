// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module toe_top_rx_app_if (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        s_axis_listen_port_req_V_TVALID,
        portTable2rxApp_listen_rsp_dout,
        portTable2rxApp_listen_rsp_empty_n,
        portTable2rxApp_listen_rsp_read,
        rxApp2portTable_listen_req_din,
        rxApp2portTable_listen_req_full_n,
        rxApp2portTable_listen_req_write,
        m_axis_listen_port_rsp_V_TREADY,
        s_axis_listen_port_req_V_TDATA,
        s_axis_listen_port_req_V_TREADY,
        m_axis_listen_port_rsp_V_TDATA,
        m_axis_listen_port_rsp_V_TVALID
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input   s_axis_listen_port_req_V_TVALID;
input  [0:0] portTable2rxApp_listen_rsp_dout;
input   portTable2rxApp_listen_rsp_empty_n;
output   portTable2rxApp_listen_rsp_read;
output  [15:0] rxApp2portTable_listen_req_din;
input   rxApp2portTable_listen_req_full_n;
output   rxApp2portTable_listen_req_write;
input   m_axis_listen_port_rsp_V_TREADY;
input  [15:0] s_axis_listen_port_req_V_TDATA;
output   s_axis_listen_port_req_V_TREADY;
output  [7:0] m_axis_listen_port_rsp_V_TDATA;
output   m_axis_listen_port_rsp_V_TVALID;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg portTable2rxApp_listen_rsp_read;
reg rxApp2portTable_listen_req_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire   [0:0] or_ln63_fu_94_p2;
wire   [0:0] and_ln71_fu_106_p2;
reg    ap_predicate_op25_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] or_ln63_reg_122;
reg   [0:0] and_ln71_reg_131;
reg    ap_predicate_op30_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_state2_io;
reg   [0:0] or_ln63_reg_122_pp0_iter1_reg;
reg   [0:0] and_ln71_reg_131_pp0_iter1_reg;
reg    ap_predicate_op31_write_state3;
wire    regslice_both_m_axis_listen_port_rsp_V_U_apdone_blk;
reg    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_state3_io;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] rai_wait;
reg    s_axis_listen_port_req_V_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    m_axis_listen_port_rsp_V_TDATA_blk_n;
reg    rxApp2portTable_listen_req_blk_n;
reg    portTable2rxApp_listen_rsp_blk_n;
reg   [15:0] tmp_reg_126;
reg   [0:0] listening_reg_135;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_i_nbreadreq_fu_42_p3;
wire   [0:0] tmp_i_252_nbreadreq_fu_56_p3;
reg    ap_block_pp0_stage0_01001;
wire   [0:0] xor_ln63_fu_88_p2;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to1;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
wire    regslice_both_s_axis_listen_port_req_V_U_apdone_blk;
wire   [15:0] s_axis_listen_port_req_V_TDATA_int_regslice;
wire    s_axis_listen_port_req_V_TVALID_int_regslice;
reg    s_axis_listen_port_req_V_TREADY_int_regslice;
wire    regslice_both_s_axis_listen_port_req_V_U_ack_in;
wire   [7:0] m_axis_listen_port_rsp_V_TDATA_int_regslice;
reg    m_axis_listen_port_rsp_V_TVALID_int_regslice;
wire    m_axis_listen_port_rsp_V_TREADY_int_regslice;
wire    regslice_both_m_axis_listen_port_rsp_V_U_vld_out;
reg    ap_condition_108;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 rai_wait = 1'd0;
end

toe_top_regslice_both #(
    .DataWidth( 16 ))
regslice_both_s_axis_listen_port_req_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(s_axis_listen_port_req_V_TDATA),
    .vld_in(s_axis_listen_port_req_V_TVALID),
    .ack_in(regslice_both_s_axis_listen_port_req_V_U_ack_in),
    .data_out(s_axis_listen_port_req_V_TDATA_int_regslice),
    .vld_out(s_axis_listen_port_req_V_TVALID_int_regslice),
    .ack_out(s_axis_listen_port_req_V_TREADY_int_regslice),
    .apdone_blk(regslice_both_s_axis_listen_port_req_V_U_apdone_blk)
);

toe_top_regslice_both #(
    .DataWidth( 8 ))
regslice_both_m_axis_listen_port_rsp_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(m_axis_listen_port_rsp_V_TDATA_int_regslice),
    .vld_in(m_axis_listen_port_rsp_V_TVALID_int_regslice),
    .ack_in(m_axis_listen_port_rsp_V_TREADY_int_regslice),
    .data_out(m_axis_listen_port_rsp_V_TDATA),
    .vld_out(regslice_both_m_axis_listen_port_rsp_V_U_vld_out),
    .ack_out(m_axis_listen_port_rsp_V_TREADY),
    .apdone_blk(regslice_both_m_axis_listen_port_rsp_V_U_apdone_blk)
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
    if ((1'b1 == ap_condition_108)) begin
        if (((1'd1 == and_ln71_fu_106_p2) & (or_ln63_fu_94_p2 == 1'd1))) begin
            rai_wait <= 1'd0;
        end else if ((or_ln63_fu_94_p2 == 1'd0)) begin
            rai_wait <= 1'd1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((or_ln63_fu_94_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        and_ln71_reg_131 <= and_ln71_fu_106_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        and_ln71_reg_131_pp0_iter1_reg <= and_ln71_reg_131;
        or_ln63_reg_122 <= or_ln63_fu_94_p2;
        or_ln63_reg_122_pp0_iter1_reg <= or_ln63_reg_122;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_predicate_op25_read_state1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        listening_reg_135 <= portTable2rxApp_listen_rsp_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((or_ln63_fu_94_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_reg_126 <= s_axis_listen_port_req_V_TDATA_int_regslice;
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
    if ((((ap_predicate_op31_write_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_predicate_op30_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        m_axis_listen_port_rsp_V_TDATA_blk_n = m_axis_listen_port_rsp_V_TREADY_int_regslice;
    end else begin
        m_axis_listen_port_rsp_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op30_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        m_axis_listen_port_rsp_V_TVALID_int_regslice = 1'b1;
    end else begin
        m_axis_listen_port_rsp_V_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if (((ap_predicate_op25_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_done_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0))) begin
        portTable2rxApp_listen_rsp_blk_n = portTable2rxApp_listen_rsp_empty_n;
    end else begin
        portTable2rxApp_listen_rsp_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op25_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        portTable2rxApp_listen_rsp_read = 1'b1;
    end else begin
        portTable2rxApp_listen_rsp_read = 1'b0;
    end
end

always @ (*) begin
    if (((or_ln63_reg_122 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        rxApp2portTable_listen_req_blk_n = rxApp2portTable_listen_req_full_n;
    end else begin
        rxApp2portTable_listen_req_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((or_ln63_reg_122 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rxApp2portTable_listen_req_write = 1'b1;
    end else begin
        rxApp2portTable_listen_req_write = 1'b0;
    end
end

always @ (*) begin
    if (((or_ln63_fu_94_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_done_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0))) begin
        s_axis_listen_port_req_V_TDATA_blk_n = s_axis_listen_port_req_V_TVALID_int_regslice;
    end else begin
        s_axis_listen_port_req_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((or_ln63_fu_94_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        s_axis_listen_port_req_V_TREADY_int_regslice = 1'b1;
    end else begin
        s_axis_listen_port_req_V_TREADY_int_regslice = 1'b0;
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

assign and_ln71_fu_106_p2 = (tmp_i_252_nbreadreq_fu_56_p3 & rai_wait);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ap_predicate_op30_write_state2 == 1'b1) & (m_axis_listen_port_rsp_V_TREADY_int_regslice == 1'b0)) | ((or_ln63_reg_122 == 1'd0) & (rxApp2portTable_listen_req_full_n == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op25_read_state1 == 1'b1) & (portTable2rxApp_listen_rsp_empty_n == 1'b0)) | ((or_ln63_fu_94_p2 == 1'd0) & (s_axis_listen_port_req_V_TVALID_int_regslice == 1'b0)))) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_m_axis_listen_port_rsp_V_U_apdone_blk == 1'b1) | ((ap_predicate_op31_write_state3 == 1'b1) & (m_axis_listen_port_rsp_V_TREADY_int_regslice == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state2_io) | ((ap_predicate_op30_write_state2 == 1'b1) & (m_axis_listen_port_rsp_V_TREADY_int_regslice == 1'b0)) | ((or_ln63_reg_122 == 1'd0) & (rxApp2portTable_listen_req_full_n == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op25_read_state1 == 1'b1) & (portTable2rxApp_listen_rsp_empty_n == 1'b0)) | ((or_ln63_fu_94_p2 == 1'd0) & (s_axis_listen_port_req_V_TVALID_int_regslice == 1'b0)))) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_m_axis_listen_port_rsp_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((ap_predicate_op31_write_state3 == 1'b1) & (m_axis_listen_port_rsp_V_TREADY_int_regslice == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state2_io) | ((ap_predicate_op30_write_state2 == 1'b1) & (m_axis_listen_port_rsp_V_TREADY_int_regslice == 1'b0)) | ((or_ln63_reg_122 == 1'd0) & (rxApp2portTable_listen_req_full_n == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op25_read_state1 == 1'b1) & (portTable2rxApp_listen_rsp_empty_n == 1'b0)) | ((or_ln63_fu_94_p2 == 1'd0) & (s_axis_listen_port_req_V_TVALID_int_regslice == 1'b0)))) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_m_axis_listen_port_rsp_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((ap_predicate_op31_write_state3 == 1'b1) & (m_axis_listen_port_rsp_V_TREADY_int_regslice == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | ((ap_predicate_op25_read_state1 == 1'b1) & (portTable2rxApp_listen_rsp_empty_n == 1'b0)) | ((or_ln63_fu_94_p2 == 1'd0) & (s_axis_listen_port_req_V_TVALID_int_regslice == 1'b0)));
end

always @ (*) begin
    ap_block_state2_io = ((ap_predicate_op30_write_state2 == 1'b1) & (m_axis_listen_port_rsp_V_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((ap_predicate_op30_write_state2 == 1'b1) & (m_axis_listen_port_rsp_V_TREADY_int_regslice == 1'b0)) | ((or_ln63_reg_122 == 1'd0) & (rxApp2portTable_listen_req_full_n == 1'b0)));
end

always @ (*) begin
    ap_block_state3_io = ((ap_predicate_op31_write_state3 == 1'b1) & (m_axis_listen_port_rsp_V_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = ((regslice_both_m_axis_listen_port_rsp_V_U_apdone_blk == 1'b1) | ((ap_predicate_op31_write_state3 == 1'b1) & (m_axis_listen_port_rsp_V_TREADY_int_regslice == 1'b0)));
end

always @ (*) begin
    ap_condition_108 = ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

always @ (*) begin
    ap_predicate_op25_read_state1 = ((1'd1 == and_ln71_fu_106_p2) & (or_ln63_fu_94_p2 == 1'd1));
end

always @ (*) begin
    ap_predicate_op30_write_state2 = ((or_ln63_reg_122 == 1'd1) & (1'd1 == and_ln71_reg_131));
end

always @ (*) begin
    ap_predicate_op31_write_state3 = ((or_ln63_reg_122_pp0_iter1_reg == 1'd1) & (1'd1 == and_ln71_reg_131_pp0_iter1_reg));
end

assign m_axis_listen_port_rsp_V_TDATA_int_regslice = listening_reg_135;

assign m_axis_listen_port_rsp_V_TVALID = regslice_both_m_axis_listen_port_rsp_V_U_vld_out;

assign or_ln63_fu_94_p2 = (xor_ln63_fu_88_p2 | rai_wait);

assign rxApp2portTable_listen_req_din = tmp_reg_126;

assign s_axis_listen_port_req_V_TREADY = regslice_both_s_axis_listen_port_req_V_U_ack_in;

assign tmp_i_252_nbreadreq_fu_56_p3 = portTable2rxApp_listen_rsp_empty_n;

assign tmp_i_nbreadreq_fu_42_p3 = s_axis_listen_port_req_V_TVALID_int_regslice;

assign xor_ln63_fu_88_p2 = (tmp_i_nbreadreq_fu_42_p3 ^ 1'd1);

endmodule //toe_top_rx_app_if
