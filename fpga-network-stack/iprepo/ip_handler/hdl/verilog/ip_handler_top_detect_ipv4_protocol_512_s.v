// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module ip_handler_top_detect_ipv4_protocol_512_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        ipv4ProtocolFifo_dout,
        ipv4ProtocolFifo_empty_n,
        ipv4ProtocolFifo_read,
        ipv4ValidFifo_dout,
        ipv4ValidFifo_empty_n,
        ipv4ValidFifo_read,
        ipDataCutFifo_dout,
        ipDataCutFifo_empty_n,
        ipDataCutFifo_read,
        m_axis_tcp_internal_din,
        m_axis_tcp_internal_full_n,
        m_axis_tcp_internal_write,
        udpDataFifo_din,
        udpDataFifo_full_n,
        udpDataFifo_write,
        m_axis_icmp_internal_din,
        m_axis_icmp_internal_full_n,
        m_axis_icmp_internal_write
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [7:0] ipv4ProtocolFifo_dout;
input   ipv4ProtocolFifo_empty_n;
output   ipv4ProtocolFifo_read;
input  [0:0] ipv4ValidFifo_dout;
input   ipv4ValidFifo_empty_n;
output   ipv4ValidFifo_read;
input  [1023:0] ipDataCutFifo_dout;
input   ipDataCutFifo_empty_n;
output   ipDataCutFifo_read;
output  [1023:0] m_axis_tcp_internal_din;
input   m_axis_tcp_internal_full_n;
output   m_axis_tcp_internal_write;
output  [1023:0] udpDataFifo_din;
input   udpDataFifo_full_n;
output   udpDataFifo_write;
output  [1023:0] m_axis_icmp_internal_din;
input   m_axis_icmp_internal_full_n;
output   m_axis_icmp_internal_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg ipv4ProtocolFifo_read;
reg ipv4ValidFifo_read;
reg ipDataCutFifo_read;
reg m_axis_tcp_internal_write;
reg udpDataFifo_write;
reg m_axis_icmp_internal_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [0:0] tmp_i_nbreadreq_fu_56_p3;
wire   [0:0] tmp_1_i_nbreadreq_fu_64_p3;
reg    ap_predicate_op32_read_state1;
reg    ap_predicate_op34_read_state1;
wire   [0:0] tmp_i_54_nbreadreq_fu_84_p3;
reg    ap_predicate_op40_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] dip_state_load_reg_153;
reg   [0:0] tmp_i_54_reg_166;
reg   [7:0] dip_ipProtocol_V_load_reg_180;
reg    ap_predicate_op47_write_state2;
reg    ap_predicate_op49_write_state2;
reg    ap_predicate_op51_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] dip_state;
reg   [7:0] dip_ipProtocol_V;
reg    ipv4ProtocolFifo_blk_n;
wire    ap_block_pp0_stage0;
reg    ipv4ValidFifo_blk_n;
reg    ipDataCutFifo_blk_n;
reg    m_axis_icmp_internal_blk_n;
reg    udpDataFifo_blk_n;
reg    m_axis_tcp_internal_blk_n;
reg   [1023:0] ipDataCutFifo_read_reg_170;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_68_read_fu_78_p2;
wire   [0:0] tmp_last_V_fu_135_p3;
reg    ap_block_pp0_stage0_01001;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_166;
reg    ap_condition_170;
reg    ap_condition_127;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 dip_state = 1'd0;
#0 dip_ipProtocol_V = 8'd0;
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
    if ((1'b1 == ap_condition_127)) begin
        if ((1'b1 == ap_condition_170)) begin
            dip_state <= 1'd0;
        end else if ((1'b1 == ap_condition_166)) begin
            dip_state <= 1'd1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_1_i_nbreadreq_fu_64_p3 == 1'd1) & (tmp_i_nbreadreq_fu_56_p3 == 1'd1) & (dip_state == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dip_ipProtocol_V <= ipv4ProtocolFifo_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_i_54_nbreadreq_fu_84_p3 == 1'd1) & (dip_state == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dip_ipProtocol_V_load_reg_180 <= dip_ipProtocol_V;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dip_state_load_reg_153 <= dip_state;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_predicate_op40_read_state1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ipDataCutFifo_read_reg_170 <= ipDataCutFifo_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((dip_state == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_i_54_reg_166 <= tmp_i_54_nbreadreq_fu_84_p3;
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
    if (((ap_predicate_op40_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0))) begin
        ipDataCutFifo_blk_n = ipDataCutFifo_empty_n;
    end else begin
        ipDataCutFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op40_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ipDataCutFifo_read = 1'b1;
    end else begin
        ipDataCutFifo_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_predicate_op32_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0))) begin
        ipv4ProtocolFifo_blk_n = ipv4ProtocolFifo_empty_n;
    end else begin
        ipv4ProtocolFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op32_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ipv4ProtocolFifo_read = 1'b1;
    end else begin
        ipv4ProtocolFifo_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_predicate_op34_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0))) begin
        ipv4ValidFifo_blk_n = ipv4ValidFifo_empty_n;
    end else begin
        ipv4ValidFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op34_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ipv4ValidFifo_read = 1'b1;
    end else begin
        ipv4ValidFifo_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op51_write_state2 == 1'b1))) begin
        m_axis_icmp_internal_blk_n = m_axis_icmp_internal_full_n;
    end else begin
        m_axis_icmp_internal_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op51_write_state2 == 1'b1))) begin
        m_axis_icmp_internal_write = 1'b1;
    end else begin
        m_axis_icmp_internal_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_predicate_op47_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        m_axis_tcp_internal_blk_n = m_axis_tcp_internal_full_n;
    end else begin
        m_axis_tcp_internal_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op47_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        m_axis_tcp_internal_write = 1'b1;
    end else begin
        m_axis_tcp_internal_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op49_write_state2 == 1'b1))) begin
        udpDataFifo_blk_n = udpDataFifo_full_n;
    end else begin
        udpDataFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op49_write_state2 == 1'b1))) begin
        udpDataFifo_write = 1'b1;
    end else begin
        udpDataFifo_write = 1'b0;
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
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op40_read_state1 == 1'b1) & (ipDataCutFifo_empty_n == 1'b0)) | ((ap_predicate_op34_read_state1 == 1'b1) & (ipv4ValidFifo_empty_n == 1'b0)) | ((ap_predicate_op32_read_state1 == 1'b1) & (ipv4ProtocolFifo_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((udpDataFifo_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1)) | ((ap_predicate_op47_write_state2 == 1'b1) & (m_axis_tcp_internal_full_n == 1'b0)) | ((ap_predicate_op51_write_state2 == 1'b1) & (m_axis_icmp_internal_full_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op40_read_state1 == 1'b1) & (ipDataCutFifo_empty_n == 1'b0)) | ((ap_predicate_op34_read_state1 == 1'b1) & (ipv4ValidFifo_empty_n == 1'b0)) | ((ap_predicate_op32_read_state1 == 1'b1) & (ipv4ProtocolFifo_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((udpDataFifo_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1)) | ((ap_predicate_op47_write_state2 == 1'b1) & (m_axis_tcp_internal_full_n == 1'b0)) | ((ap_predicate_op51_write_state2 == 1'b1) & (m_axis_icmp_internal_full_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op40_read_state1 == 1'b1) & (ipDataCutFifo_empty_n == 1'b0)) | ((ap_predicate_op34_read_state1 == 1'b1) & (ipv4ValidFifo_empty_n == 1'b0)) | ((ap_predicate_op32_read_state1 == 1'b1) & (ipv4ProtocolFifo_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((udpDataFifo_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1)) | ((ap_predicate_op47_write_state2 == 1'b1) & (m_axis_tcp_internal_full_n == 1'b0)) | ((ap_predicate_op51_write_state2 == 1'b1) & (m_axis_icmp_internal_full_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | ((ap_predicate_op40_read_state1 == 1'b1) & (ipDataCutFifo_empty_n == 1'b0)) | ((ap_predicate_op34_read_state1 == 1'b1) & (ipv4ValidFifo_empty_n == 1'b0)) | ((ap_predicate_op32_read_state1 == 1'b1) & (ipv4ProtocolFifo_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((udpDataFifo_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1)) | ((ap_predicate_op47_write_state2 == 1'b1) & (m_axis_tcp_internal_full_n == 1'b0)) | ((ap_predicate_op51_write_state2 == 1'b1) & (m_axis_icmp_internal_full_n == 1'b0)));
end

always @ (*) begin
    ap_condition_127 = ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

always @ (*) begin
    ap_condition_166 = ((tmp_1_i_nbreadreq_fu_64_p3 == 1'd1) & (tmp_i_nbreadreq_fu_56_p3 == 1'd1) & (dip_state == 1'd0) & (tmp_68_read_fu_78_p2 == 1'd1));
end

always @ (*) begin
    ap_condition_170 = ((tmp_i_54_nbreadreq_fu_84_p3 == 1'd1) & (dip_state == 1'd1) & (tmp_last_V_fu_135_p3 == 1'd1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

always @ (*) begin
    ap_predicate_op32_read_state1 = ((tmp_1_i_nbreadreq_fu_64_p3 == 1'd1) & (tmp_i_nbreadreq_fu_56_p3 == 1'd1) & (dip_state == 1'd0));
end

always @ (*) begin
    ap_predicate_op34_read_state1 = ((tmp_1_i_nbreadreq_fu_64_p3 == 1'd1) & (tmp_i_nbreadreq_fu_56_p3 == 1'd1) & (dip_state == 1'd0));
end

always @ (*) begin
    ap_predicate_op40_read_state1 = ((tmp_i_54_nbreadreq_fu_84_p3 == 1'd1) & (dip_state == 1'd1));
end

always @ (*) begin
    ap_predicate_op47_write_state2 = ((dip_ipProtocol_V_load_reg_180 == 8'd6) & (tmp_i_54_reg_166 == 1'd1) & (dip_state_load_reg_153 == 1'd1));
end

always @ (*) begin
    ap_predicate_op49_write_state2 = ((dip_ipProtocol_V_load_reg_180 == 8'd17) & (tmp_i_54_reg_166 == 1'd1) & (dip_state_load_reg_153 == 1'd1));
end

always @ (*) begin
    ap_predicate_op51_write_state2 = ((dip_ipProtocol_V_load_reg_180 == 8'd1) & (tmp_i_54_reg_166 == 1'd1) & (dip_state_load_reg_153 == 1'd1));
end

assign m_axis_icmp_internal_din = ipDataCutFifo_read_reg_170;

assign m_axis_tcp_internal_din = ipDataCutFifo_read_reg_170;

assign tmp_1_i_nbreadreq_fu_64_p3 = ipv4ValidFifo_empty_n;

assign tmp_68_read_fu_78_p2 = ipv4ValidFifo_dout;

assign tmp_i_54_nbreadreq_fu_84_p3 = ipDataCutFifo_empty_n;

assign tmp_i_nbreadreq_fu_56_p3 = ipv4ProtocolFifo_empty_n;

assign tmp_last_V_fu_135_p3 = ipDataCutFifo_dout[32'd576];

assign udpDataFifo_din = ipDataCutFifo_read_reg_170;

endmodule //ip_handler_top_detect_ipv4_protocol_512_s
