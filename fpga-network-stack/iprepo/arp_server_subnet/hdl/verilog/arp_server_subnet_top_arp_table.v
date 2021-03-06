// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module arp_server_subnet_top_arp_table (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        s_axis_host_arp_lookup_request_V_TVALID,
        s_axis_arp_lookup_request_V_TVALID,
        arpTableInsertFifo_dout,
        arpTableInsertFifo_empty_n,
        arpTableInsertFifo_read,
        m_axis_host_arp_lookup_reply_V_TREADY,
        m_axis_arp_lookup_reply_V_TREADY,
        arpRequestMetaFifo_din,
        arpRequestMetaFifo_full_n,
        arpRequestMetaFifo_write,
        s_axis_arp_lookup_request_V_TDATA,
        s_axis_arp_lookup_request_V_TREADY,
        s_axis_host_arp_lookup_request_V_TDATA,
        s_axis_host_arp_lookup_request_V_TREADY,
        m_axis_arp_lookup_reply_V_TDATA,
        m_axis_arp_lookup_reply_V_TVALID,
        m_axis_host_arp_lookup_reply_V_TDATA,
        m_axis_host_arp_lookup_reply_V_TVALID
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input   s_axis_host_arp_lookup_request_V_TVALID;
input   s_axis_arp_lookup_request_V_TVALID;
input  [191:0] arpTableInsertFifo_dout;
input   arpTableInsertFifo_empty_n;
output   arpTableInsertFifo_read;
input   m_axis_host_arp_lookup_reply_V_TREADY;
input   m_axis_arp_lookup_reply_V_TREADY;
output  [31:0] arpRequestMetaFifo_din;
input   arpRequestMetaFifo_full_n;
output   arpRequestMetaFifo_write;
input  [31:0] s_axis_arp_lookup_request_V_TDATA;
output   s_axis_arp_lookup_request_V_TREADY;
input  [31:0] s_axis_host_arp_lookup_request_V_TDATA;
output   s_axis_host_arp_lookup_request_V_TREADY;
output  [127:0] m_axis_arp_lookup_reply_V_TDATA;
output   m_axis_arp_lookup_reply_V_TVALID;
output  [127:0] m_axis_host_arp_lookup_reply_V_TDATA;
output   m_axis_host_arp_lookup_reply_V_TVALID;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg arpTableInsertFifo_read;
reg[31:0] arpRequestMetaFifo_din;
reg arpRequestMetaFifo_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire   [0:0] tmp_i_nbreadreq_fu_76_p3;
wire   [0:0] tmp_i_34_nbreadreq_fu_84_p3;
wire   [0:0] tmp_1_i_nbreadreq_fu_92_p3;
reg    ap_predicate_op25_read_state1;
reg    ap_predicate_op32_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] tmp_i_reg_295;
reg   [0:0] tmp_i_34_reg_299;
reg   [0:0] tmp_1_i_reg_303;
reg    ap_predicate_op54_write_state2;
reg    ap_predicate_op60_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_state2_io;
reg   [0:0] tmp_i_reg_295_pp0_iter1_reg;
reg   [0:0] tmp_i_34_reg_299_pp0_iter1_reg;
reg   [0:0] tmp_1_i_reg_303_pp0_iter1_reg;
reg   [0:0] currEntry_valid_2_reg_337;
reg    ap_predicate_op61_write_state3;
reg    ap_predicate_op63_write_state3;
reg   [0:0] currEntry_valid_1_reg_346;
reg    ap_predicate_op65_write_state3;
reg    ap_predicate_op67_write_state3;
wire    regslice_both_m_axis_arp_lookup_reply_V_U_apdone_blk;
wire    regslice_both_m_axis_host_arp_lookup_reply_V_U_apdone_blk;
reg    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_state3_io;
reg    ap_block_pp0_stage0_11001;
reg   [7:0] arpTable_macAddress_V_address0;
reg    arpTable_macAddress_V_ce0;
reg    arpTable_macAddress_V_we0;
wire   [47:0] arpTable_macAddress_V_d0;
wire   [47:0] arpTable_macAddress_V_q0;
reg   [7:0] arpTable_valid_address0;
reg    arpTable_valid_ce0;
reg    arpTable_valid_we0;
wire   [0:0] arpTable_valid_d0;
wire   [0:0] arpTable_valid_q0;
reg    s_axis_arp_lookup_request_V_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    s_axis_host_arp_lookup_request_V_TDATA_blk_n;
reg    m_axis_arp_lookup_reply_V_TDATA_blk_n;
reg    m_axis_host_arp_lookup_reply_V_TDATA_blk_n;
reg    arpTableInsertFifo_blk_n;
reg    arpRequestMetaFifo_blk_n;
reg   [31:0] query_ip_V_1_reg_307;
reg   [31:0] query_ip_V_1_reg_307_pp0_iter1_reg;
reg   [31:0] query_ip_V_reg_322;
reg   [31:0] query_ip_V_reg_322_pp0_iter1_reg;
reg    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln708_2_fu_207_p1;
wire   [63:0] zext_ln708_1_fu_223_p1;
wire   [63:0] zext_ln708_fu_259_p1;
reg    ap_block_pp0_stage0_01001;
wire   [7:0] p_Result_4_i_fu_197_p4;
wire   [7:0] p_Result_i_35_fu_213_p4;
wire   [7:0] p_Result_i_fu_249_p4;
wire   [64:0] tmp_15_i_fu_265_p4;
wire   [64:0] tmp_14_i_fu_280_p4;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to1;
reg    ap_reset_idle_pp0;
reg    ap_block_pp0;
reg    ap_enable_operation_46;
reg    ap_enable_state1_pp0_iter0_stage0;
reg    ap_predicate_op30_load_state1;
reg    ap_enable_operation_30;
reg    ap_predicate_op49_load_state2;
reg    ap_enable_operation_49;
reg    ap_enable_state2_pp0_iter1_stage0;
reg    ap_predicate_op37_load_state1;
reg    ap_enable_operation_37;
reg    ap_predicate_op55_load_state2;
reg    ap_enable_operation_55;
reg    ap_enable_operation_47;
reg    ap_predicate_op31_load_state1;
reg    ap_enable_operation_31;
reg    ap_predicate_op50_load_state2;
reg    ap_enable_operation_50;
reg    ap_predicate_op38_load_state1;
reg    ap_enable_operation_38;
reg    ap_predicate_op56_load_state2;
reg    ap_enable_operation_56;
wire    ap_enable_pp0;
wire    regslice_both_s_axis_arp_lookup_request_V_U_apdone_blk;
wire   [31:0] s_axis_arp_lookup_request_V_TDATA_int_regslice;
wire    s_axis_arp_lookup_request_V_TVALID_int_regslice;
reg    s_axis_arp_lookup_request_V_TREADY_int_regslice;
wire    regslice_both_s_axis_arp_lookup_request_V_U_ack_in;
wire    regslice_both_s_axis_host_arp_lookup_request_V_U_apdone_blk;
wire   [31:0] s_axis_host_arp_lookup_request_V_TDATA_int_regslice;
wire    s_axis_host_arp_lookup_request_V_TVALID_int_regslice;
reg    s_axis_host_arp_lookup_request_V_TREADY_int_regslice;
wire    regslice_both_s_axis_host_arp_lookup_request_V_U_ack_in;
wire   [127:0] m_axis_arp_lookup_reply_V_TDATA_int_regslice;
reg    m_axis_arp_lookup_reply_V_TVALID_int_regslice;
wire    m_axis_arp_lookup_reply_V_TREADY_int_regslice;
wire    regslice_both_m_axis_arp_lookup_reply_V_U_vld_out;
wire   [127:0] m_axis_host_arp_lookup_reply_V_TDATA_int_regslice;
reg    m_axis_host_arp_lookup_reply_V_TVALID_int_regslice;
wire    m_axis_host_arp_lookup_reply_V_TREADY_int_regslice;
wire    regslice_both_m_axis_host_arp_lookup_reply_V_U_vld_out;
reg    ap_condition_47;
reg    ap_condition_186;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

arp_server_subnet_top_arp_table_arpTable_macAddress_V #(
    .DataWidth( 48 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
arpTable_macAddress_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(arpTable_macAddress_V_address0),
    .ce0(arpTable_macAddress_V_ce0),
    .we0(arpTable_macAddress_V_we0),
    .d0(arpTable_macAddress_V_d0),
    .q0(arpTable_macAddress_V_q0)
);

arp_server_subnet_top_arp_table_arpTable_valid #(
    .DataWidth( 1 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
arpTable_valid_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(arpTable_valid_address0),
    .ce0(arpTable_valid_ce0),
    .we0(arpTable_valid_we0),
    .d0(arpTable_valid_d0),
    .q0(arpTable_valid_q0)
);

arp_server_subnet_top_regslice_both #(
    .DataWidth( 32 ))
regslice_both_s_axis_arp_lookup_request_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(s_axis_arp_lookup_request_V_TDATA),
    .vld_in(s_axis_arp_lookup_request_V_TVALID),
    .ack_in(regslice_both_s_axis_arp_lookup_request_V_U_ack_in),
    .data_out(s_axis_arp_lookup_request_V_TDATA_int_regslice),
    .vld_out(s_axis_arp_lookup_request_V_TVALID_int_regslice),
    .ack_out(s_axis_arp_lookup_request_V_TREADY_int_regslice),
    .apdone_blk(regslice_both_s_axis_arp_lookup_request_V_U_apdone_blk)
);

arp_server_subnet_top_regslice_both #(
    .DataWidth( 32 ))
regslice_both_s_axis_host_arp_lookup_request_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(s_axis_host_arp_lookup_request_V_TDATA),
    .vld_in(s_axis_host_arp_lookup_request_V_TVALID),
    .ack_in(regslice_both_s_axis_host_arp_lookup_request_V_U_ack_in),
    .data_out(s_axis_host_arp_lookup_request_V_TDATA_int_regslice),
    .vld_out(s_axis_host_arp_lookup_request_V_TVALID_int_regslice),
    .ack_out(s_axis_host_arp_lookup_request_V_TREADY_int_regslice),
    .apdone_blk(regslice_both_s_axis_host_arp_lookup_request_V_U_apdone_blk)
);

arp_server_subnet_top_regslice_both #(
    .DataWidth( 128 ))
regslice_both_m_axis_arp_lookup_reply_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(m_axis_arp_lookup_reply_V_TDATA_int_regslice),
    .vld_in(m_axis_arp_lookup_reply_V_TVALID_int_regslice),
    .ack_in(m_axis_arp_lookup_reply_V_TREADY_int_regslice),
    .data_out(m_axis_arp_lookup_reply_V_TDATA),
    .vld_out(regslice_both_m_axis_arp_lookup_reply_V_U_vld_out),
    .ack_out(m_axis_arp_lookup_reply_V_TREADY),
    .apdone_blk(regslice_both_m_axis_arp_lookup_reply_V_U_apdone_blk)
);

arp_server_subnet_top_regslice_both #(
    .DataWidth( 128 ))
regslice_both_m_axis_host_arp_lookup_reply_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(m_axis_host_arp_lookup_reply_V_TDATA_int_regslice),
    .vld_in(m_axis_host_arp_lookup_reply_V_TVALID_int_regslice),
    .ack_in(m_axis_host_arp_lookup_reply_V_TREADY_int_regslice),
    .data_out(m_axis_host_arp_lookup_reply_V_TDATA),
    .vld_out(regslice_both_m_axis_host_arp_lookup_reply_V_U_vld_out),
    .ack_out(m_axis_host_arp_lookup_reply_V_TREADY),
    .apdone_blk(regslice_both_m_axis_host_arp_lookup_reply_V_U_apdone_blk)
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
    if (((tmp_i_34_reg_299 == 1'd1) & (tmp_i_reg_295 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        currEntry_valid_1_reg_346 <= arpTable_valid_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_1_i_reg_303 == 1'd1) & (tmp_i_34_reg_299 == 1'd0) & (tmp_i_reg_295 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        currEntry_valid_2_reg_337 <= arpTable_valid_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_predicate_op25_read_state1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        query_ip_V_1_reg_307 <= s_axis_host_arp_lookup_request_V_TDATA_int_regslice;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        query_ip_V_1_reg_307_pp0_iter1_reg <= query_ip_V_1_reg_307;
        query_ip_V_reg_322_pp0_iter1_reg <= query_ip_V_reg_322;
        tmp_1_i_reg_303_pp0_iter1_reg <= tmp_1_i_reg_303;
        tmp_i_34_reg_299_pp0_iter1_reg <= tmp_i_34_reg_299;
        tmp_i_reg_295 <= tmp_i_nbreadreq_fu_76_p3;
        tmp_i_reg_295_pp0_iter1_reg <= tmp_i_reg_295;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_predicate_op32_read_state1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        query_ip_V_reg_322 <= s_axis_arp_lookup_request_V_TDATA_int_regslice;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_i_34_nbreadreq_fu_84_p3 == 1'd0) & (tmp_i_nbreadreq_fu_76_p3 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_1_i_reg_303 <= tmp_1_i_nbreadreq_fu_92_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_i_nbreadreq_fu_76_p3 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_i_34_reg_299 <= tmp_i_34_nbreadreq_fu_84_p3;
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
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op65_write_state3 == 1'b1)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op61_write_state3 == 1'b1)))) begin
        arpRequestMetaFifo_blk_n = arpRequestMetaFifo_full_n;
    end else begin
        arpRequestMetaFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        if ((ap_predicate_op65_write_state3 == 1'b1)) begin
            arpRequestMetaFifo_din = query_ip_V_reg_322_pp0_iter1_reg;
        end else if ((ap_predicate_op61_write_state3 == 1'b1)) begin
            arpRequestMetaFifo_din = query_ip_V_1_reg_307_pp0_iter1_reg;
        end else begin
            arpRequestMetaFifo_din = 'bx;
        end
    end else begin
        arpRequestMetaFifo_din = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op65_write_state3 == 1'b1)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op61_write_state3 == 1'b1)))) begin
        arpRequestMetaFifo_write = 1'b1;
    end else begin
        arpRequestMetaFifo_write = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_i_nbreadreq_fu_76_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0))) begin
        arpTableInsertFifo_blk_n = arpTableInsertFifo_empty_n;
    end else begin
        arpTableInsertFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_i_nbreadreq_fu_76_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        arpTableInsertFifo_read = 1'b1;
    end else begin
        arpTableInsertFifo_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_186)) begin
        if ((tmp_i_nbreadreq_fu_76_p3 == 1'd1)) begin
            arpTable_macAddress_V_address0 = zext_ln708_fu_259_p1;
        end else if (((tmp_i_34_nbreadreq_fu_84_p3 == 1'd1) & (tmp_i_nbreadreq_fu_76_p3 == 1'd0))) begin
            arpTable_macAddress_V_address0 = zext_ln708_1_fu_223_p1;
        end else if ((1'b1 == ap_condition_47)) begin
            arpTable_macAddress_V_address0 = zext_ln708_2_fu_207_p1;
        end else begin
            arpTable_macAddress_V_address0 = 'bx;
        end
    end else begin
        arpTable_macAddress_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((tmp_i_nbreadreq_fu_76_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((tmp_i_34_nbreadreq_fu_84_p3 == 1'd1) & (tmp_i_nbreadreq_fu_76_p3 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((tmp_1_i_nbreadreq_fu_92_p3 == 1'd1) & (tmp_i_34_nbreadreq_fu_84_p3 == 1'd0) & (tmp_i_nbreadreq_fu_76_p3 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        arpTable_macAddress_V_ce0 = 1'b1;
    end else begin
        arpTable_macAddress_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_i_nbreadreq_fu_76_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        arpTable_macAddress_V_we0 = 1'b1;
    end else begin
        arpTable_macAddress_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_186)) begin
        if ((tmp_i_nbreadreq_fu_76_p3 == 1'd1)) begin
            arpTable_valid_address0 = zext_ln708_fu_259_p1;
        end else if (((tmp_i_34_nbreadreq_fu_84_p3 == 1'd1) & (tmp_i_nbreadreq_fu_76_p3 == 1'd0))) begin
            arpTable_valid_address0 = zext_ln708_1_fu_223_p1;
        end else if ((1'b1 == ap_condition_47)) begin
            arpTable_valid_address0 = zext_ln708_2_fu_207_p1;
        end else begin
            arpTable_valid_address0 = 'bx;
        end
    end else begin
        arpTable_valid_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((tmp_i_nbreadreq_fu_76_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((tmp_i_34_nbreadreq_fu_84_p3 == 1'd1) & (tmp_i_nbreadreq_fu_76_p3 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((tmp_1_i_nbreadreq_fu_92_p3 == 1'd1) & (tmp_i_34_nbreadreq_fu_84_p3 == 1'd0) & (tmp_i_nbreadreq_fu_76_p3 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        arpTable_valid_ce0 = 1'b1;
    end else begin
        arpTable_valid_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_i_nbreadreq_fu_76_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        arpTable_valid_we0 = 1'b1;
    end else begin
        arpTable_valid_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_predicate_op60_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op67_write_state3 == 1'b1)))) begin
        m_axis_arp_lookup_reply_V_TDATA_blk_n = m_axis_arp_lookup_reply_V_TREADY_int_regslice;
    end else begin
        m_axis_arp_lookup_reply_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op60_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        m_axis_arp_lookup_reply_V_TVALID_int_regslice = 1'b1;
    end else begin
        m_axis_arp_lookup_reply_V_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_predicate_op54_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op63_write_state3 == 1'b1)))) begin
        m_axis_host_arp_lookup_reply_V_TDATA_blk_n = m_axis_host_arp_lookup_reply_V_TREADY_int_regslice;
    end else begin
        m_axis_host_arp_lookup_reply_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op54_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        m_axis_host_arp_lookup_reply_V_TVALID_int_regslice = 1'b1;
    end else begin
        m_axis_host_arp_lookup_reply_V_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if (((ap_predicate_op32_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0))) begin
        s_axis_arp_lookup_request_V_TDATA_blk_n = s_axis_arp_lookup_request_V_TVALID_int_regslice;
    end else begin
        s_axis_arp_lookup_request_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op32_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        s_axis_arp_lookup_request_V_TREADY_int_regslice = 1'b1;
    end else begin
        s_axis_arp_lookup_request_V_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if (((ap_predicate_op25_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0))) begin
        s_axis_host_arp_lookup_request_V_TDATA_blk_n = s_axis_host_arp_lookup_request_V_TVALID_int_regslice;
    end else begin
        s_axis_host_arp_lookup_request_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op25_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        s_axis_host_arp_lookup_request_V_TREADY_int_regslice = 1'b1;
    end else begin
        s_axis_host_arp_lookup_request_V_TREADY_int_regslice = 1'b0;
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

always @ (*) begin
    ap_block_pp0 = ((ap_ST_fsm_pp0_stage0 == ap_CS_fsm) & (1'b1 == ap_block_pp0_stage0_subdone));
end

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ap_predicate_op60_write_state2 == 1'b1) & (m_axis_arp_lookup_reply_V_TREADY_int_regslice == 1'b0)) | ((ap_predicate_op54_write_state2 == 1'b1) & (m_axis_host_arp_lookup_reply_V_TREADY_int_regslice == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((arpTableInsertFifo_empty_n == 1'b0) & (tmp_i_nbreadreq_fu_76_p3 == 1'd1)) | ((ap_predicate_op32_read_state1 == 1'b1) & (s_axis_arp_lookup_request_V_TVALID_int_regslice == 1'b0)) | ((ap_predicate_op25_read_state1 == 1'b1) & (s_axis_host_arp_lookup_request_V_TVALID_int_regslice == 1'b0)))) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_m_axis_host_arp_lookup_reply_V_U_apdone_blk == 1'b1) | (regslice_both_m_axis_arp_lookup_reply_V_U_apdone_blk == 1'b1) | ((m_axis_host_arp_lookup_reply_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op63_write_state3 == 1'b1)) | ((m_axis_arp_lookup_reply_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op67_write_state3 == 1'b1)) | ((ap_predicate_op65_write_state3 == 1'b1) & (arpRequestMetaFifo_full_n == 1'b0)) | ((ap_predicate_op61_write_state3 == 1'b1) & (arpRequestMetaFifo_full_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state2_io) | ((ap_predicate_op60_write_state2 == 1'b1) & (m_axis_arp_lookup_reply_V_TREADY_int_regslice == 1'b0)) | ((ap_predicate_op54_write_state2 == 1'b1) & (m_axis_host_arp_lookup_reply_V_TREADY_int_regslice == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((arpTableInsertFifo_empty_n == 1'b0) & (tmp_i_nbreadreq_fu_76_p3 == 1'd1)) | ((ap_predicate_op32_read_state1 == 1'b1) & (s_axis_arp_lookup_request_V_TVALID_int_regslice == 1'b0)) | ((ap_predicate_op25_read_state1 == 1'b1) & (s_axis_host_arp_lookup_request_V_TVALID_int_regslice == 1'b0)))) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((1'b1 == ap_block_state3_io) | (regslice_both_m_axis_host_arp_lookup_reply_V_U_apdone_blk == 1'b1) | (regslice_both_m_axis_arp_lookup_reply_V_U_apdone_blk == 1'b1) | ((m_axis_host_arp_lookup_reply_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op63_write_state3 == 1'b1)) | ((m_axis_arp_lookup_reply_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op67_write_state3 == 1'b1)) | ((ap_predicate_op65_write_state3 == 1'b1) & (arpRequestMetaFifo_full_n == 1'b0)) | ((ap_predicate_op61_write_state3 == 1'b1) & (arpRequestMetaFifo_full_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state2_io) | ((ap_predicate_op60_write_state2 == 1'b1) & (m_axis_arp_lookup_reply_V_TREADY_int_regslice == 1'b0)) | ((ap_predicate_op54_write_state2 == 1'b1) & (m_axis_host_arp_lookup_reply_V_TREADY_int_regslice == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((arpTableInsertFifo_empty_n == 1'b0) & (tmp_i_nbreadreq_fu_76_p3 == 1'd1)) | ((ap_predicate_op32_read_state1 == 1'b1) & (s_axis_arp_lookup_request_V_TVALID_int_regslice == 1'b0)) | ((ap_predicate_op25_read_state1 == 1'b1) & (s_axis_host_arp_lookup_request_V_TVALID_int_regslice == 1'b0)))) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((1'b1 == ap_block_state3_io) | (regslice_both_m_axis_host_arp_lookup_reply_V_U_apdone_blk == 1'b1) | (regslice_both_m_axis_arp_lookup_reply_V_U_apdone_blk == 1'b1) | ((m_axis_host_arp_lookup_reply_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op63_write_state3 == 1'b1)) | ((m_axis_arp_lookup_reply_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op67_write_state3 == 1'b1)) | ((ap_predicate_op65_write_state3 == 1'b1) & (arpRequestMetaFifo_full_n == 1'b0)) | ((ap_predicate_op61_write_state3 == 1'b1) & (arpRequestMetaFifo_full_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | ((arpTableInsertFifo_empty_n == 1'b0) & (tmp_i_nbreadreq_fu_76_p3 == 1'd1)) | ((ap_predicate_op32_read_state1 == 1'b1) & (s_axis_arp_lookup_request_V_TVALID_int_regslice == 1'b0)) | ((ap_predicate_op25_read_state1 == 1'b1) & (s_axis_host_arp_lookup_request_V_TVALID_int_regslice == 1'b0)));
end

always @ (*) begin
    ap_block_state2_io = (((ap_predicate_op60_write_state2 == 1'b1) & (m_axis_arp_lookup_reply_V_TREADY_int_regslice == 1'b0)) | ((ap_predicate_op54_write_state2 == 1'b1) & (m_axis_host_arp_lookup_reply_V_TREADY_int_regslice == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((ap_predicate_op60_write_state2 == 1'b1) & (m_axis_arp_lookup_reply_V_TREADY_int_regslice == 1'b0)) | ((ap_predicate_op54_write_state2 == 1'b1) & (m_axis_host_arp_lookup_reply_V_TREADY_int_regslice == 1'b0)));
end

always @ (*) begin
    ap_block_state3_io = (((m_axis_host_arp_lookup_reply_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op63_write_state3 == 1'b1)) | ((m_axis_arp_lookup_reply_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op67_write_state3 == 1'b1)));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = ((regslice_both_m_axis_host_arp_lookup_reply_V_U_apdone_blk == 1'b1) | (regslice_both_m_axis_arp_lookup_reply_V_U_apdone_blk == 1'b1) | ((m_axis_host_arp_lookup_reply_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op63_write_state3 == 1'b1)) | ((m_axis_arp_lookup_reply_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op67_write_state3 == 1'b1)) | ((ap_predicate_op65_write_state3 == 1'b1) & (arpRequestMetaFifo_full_n == 1'b0)) | ((ap_predicate_op61_write_state3 == 1'b1) & (arpRequestMetaFifo_full_n == 1'b0)));
end

always @ (*) begin
    ap_condition_186 = ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0));
end

always @ (*) begin
    ap_condition_47 = ((tmp_1_i_nbreadreq_fu_92_p3 == 1'd1) & (tmp_i_34_nbreadreq_fu_84_p3 == 1'd0) & (tmp_i_nbreadreq_fu_76_p3 == 1'd0));
end

always @ (*) begin
    ap_enable_operation_30 = (ap_predicate_op30_load_state1 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_31 = (ap_predicate_op31_load_state1 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_37 = (ap_predicate_op37_load_state1 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_38 = (ap_predicate_op38_load_state1 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_46 = (tmp_i_nbreadreq_fu_76_p3 == 1'd1);
end

always @ (*) begin
    ap_enable_operation_47 = (tmp_i_nbreadreq_fu_76_p3 == 1'd1);
end

always @ (*) begin
    ap_enable_operation_49 = (ap_predicate_op49_load_state2 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_50 = (ap_predicate_op50_load_state2 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_55 = (ap_predicate_op55_load_state2 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_56 = (ap_predicate_op56_load_state2 == 1'b1);
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

always @ (*) begin
    ap_enable_state1_pp0_iter0_stage0 = ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_enable_state2_pp0_iter1_stage0 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_predicate_op25_read_state1 = ((tmp_1_i_nbreadreq_fu_92_p3 == 1'd1) & (tmp_i_34_nbreadreq_fu_84_p3 == 1'd0) & (tmp_i_nbreadreq_fu_76_p3 == 1'd0));
end

always @ (*) begin
    ap_predicate_op30_load_state1 = ((tmp_1_i_nbreadreq_fu_92_p3 == 1'd1) & (tmp_i_34_nbreadreq_fu_84_p3 == 1'd0) & (tmp_i_nbreadreq_fu_76_p3 == 1'd0));
end

always @ (*) begin
    ap_predicate_op31_load_state1 = ((tmp_1_i_nbreadreq_fu_92_p3 == 1'd1) & (tmp_i_34_nbreadreq_fu_84_p3 == 1'd0) & (tmp_i_nbreadreq_fu_76_p3 == 1'd0));
end

always @ (*) begin
    ap_predicate_op32_read_state1 = ((tmp_i_34_nbreadreq_fu_84_p3 == 1'd1) & (tmp_i_nbreadreq_fu_76_p3 == 1'd0));
end

always @ (*) begin
    ap_predicate_op37_load_state1 = ((tmp_i_34_nbreadreq_fu_84_p3 == 1'd1) & (tmp_i_nbreadreq_fu_76_p3 == 1'd0));
end

always @ (*) begin
    ap_predicate_op38_load_state1 = ((tmp_i_34_nbreadreq_fu_84_p3 == 1'd1) & (tmp_i_nbreadreq_fu_76_p3 == 1'd0));
end

always @ (*) begin
    ap_predicate_op49_load_state2 = ((tmp_1_i_reg_303 == 1'd1) & (tmp_i_34_reg_299 == 1'd0) & (tmp_i_reg_295 == 1'd0));
end

always @ (*) begin
    ap_predicate_op50_load_state2 = ((tmp_1_i_reg_303 == 1'd1) & (tmp_i_34_reg_299 == 1'd0) & (tmp_i_reg_295 == 1'd0));
end

always @ (*) begin
    ap_predicate_op54_write_state2 = ((tmp_1_i_reg_303 == 1'd1) & (tmp_i_34_reg_299 == 1'd0) & (tmp_i_reg_295 == 1'd0));
end

always @ (*) begin
    ap_predicate_op55_load_state2 = ((tmp_i_34_reg_299 == 1'd1) & (tmp_i_reg_295 == 1'd0));
end

always @ (*) begin
    ap_predicate_op56_load_state2 = ((tmp_i_34_reg_299 == 1'd1) & (tmp_i_reg_295 == 1'd0));
end

always @ (*) begin
    ap_predicate_op60_write_state2 = ((tmp_i_34_reg_299 == 1'd1) & (tmp_i_reg_295 == 1'd0));
end

always @ (*) begin
    ap_predicate_op61_write_state3 = ((currEntry_valid_2_reg_337 == 1'd0) & (tmp_1_i_reg_303_pp0_iter1_reg == 1'd1) & (tmp_i_34_reg_299_pp0_iter1_reg == 1'd0) & (tmp_i_reg_295_pp0_iter1_reg == 1'd0));
end

always @ (*) begin
    ap_predicate_op63_write_state3 = ((tmp_1_i_reg_303_pp0_iter1_reg == 1'd1) & (tmp_i_34_reg_299_pp0_iter1_reg == 1'd0) & (tmp_i_reg_295_pp0_iter1_reg == 1'd0));
end

always @ (*) begin
    ap_predicate_op65_write_state3 = ((currEntry_valid_1_reg_346 == 1'd0) & (tmp_i_34_reg_299_pp0_iter1_reg == 1'd1) & (tmp_i_reg_295_pp0_iter1_reg == 1'd0));
end

always @ (*) begin
    ap_predicate_op67_write_state3 = ((tmp_i_34_reg_299_pp0_iter1_reg == 1'd1) & (tmp_i_reg_295_pp0_iter1_reg == 1'd0));
end

assign arpTable_macAddress_V_d0 = {{arpTableInsertFifo_dout[111:64]}};

assign arpTable_valid_d0 = arpTableInsertFifo_dout[32'd128];

assign m_axis_arp_lookup_reply_V_TDATA_int_regslice = tmp_14_i_fu_280_p4;

assign m_axis_arp_lookup_reply_V_TVALID = regslice_both_m_axis_arp_lookup_reply_V_U_vld_out;

assign m_axis_host_arp_lookup_reply_V_TDATA_int_regslice = tmp_15_i_fu_265_p4;

assign m_axis_host_arp_lookup_reply_V_TVALID = regslice_both_m_axis_host_arp_lookup_reply_V_U_vld_out;

assign p_Result_4_i_fu_197_p4 = {{s_axis_host_arp_lookup_request_V_TDATA_int_regslice[31:24]}};

assign p_Result_i_35_fu_213_p4 = {{s_axis_arp_lookup_request_V_TDATA_int_regslice[31:24]}};

assign p_Result_i_fu_249_p4 = {{arpTableInsertFifo_dout[31:24]}};

assign s_axis_arp_lookup_request_V_TREADY = regslice_both_s_axis_arp_lookup_request_V_U_ack_in;

assign s_axis_host_arp_lookup_request_V_TREADY = regslice_both_s_axis_host_arp_lookup_request_V_U_ack_in;

assign tmp_14_i_fu_280_p4 = {{{arpTable_valid_q0}, {16'd0}}, {arpTable_macAddress_V_q0}};

assign tmp_15_i_fu_265_p4 = {{{arpTable_valid_q0}, {16'd0}}, {arpTable_macAddress_V_q0}};

assign tmp_1_i_nbreadreq_fu_92_p3 = s_axis_host_arp_lookup_request_V_TVALID_int_regslice;

assign tmp_i_34_nbreadreq_fu_84_p3 = s_axis_arp_lookup_request_V_TVALID_int_regslice;

assign tmp_i_nbreadreq_fu_76_p3 = arpTableInsertFifo_empty_n;

assign zext_ln708_1_fu_223_p1 = p_Result_i_35_fu_213_p4;

assign zext_ln708_2_fu_207_p1 = p_Result_4_i_fu_197_p4;

assign zext_ln708_fu_259_p1 = p_Result_i_fu_249_p4;

endmodule //arp_server_subnet_top_arp_table
