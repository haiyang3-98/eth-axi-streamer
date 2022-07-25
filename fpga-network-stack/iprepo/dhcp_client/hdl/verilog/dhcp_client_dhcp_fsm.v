// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dhcp_client_dhcp_fsm (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        inputIpAddress_dout,
        inputIpAddress_empty_n,
        inputIpAddress_read,
        dhcpEnable_dout,
        dhcpEnable_empty_n,
        dhcpEnable_read,
        dhcp_replyMetaFifo_dout,
        dhcp_replyMetaFifo_empty_n,
        dhcp_replyMetaFifo_read,
        portOpen_dout,
        portOpen_empty_n,
        portOpen_read,
        dhcp_requestMetaFifo_din,
        dhcp_requestMetaFifo_full_n,
        dhcp_requestMetaFifo_write,
        dhcpIpAddressOut,
        dhcpIpAddressOut_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] inputIpAddress_dout;
input   inputIpAddress_empty_n;
output   inputIpAddress_read;
input  [0:0] dhcpEnable_dout;
input   dhcpEnable_empty_n;
output   dhcpEnable_read;
input  [127:0] dhcp_replyMetaFifo_dout;
input   dhcp_replyMetaFifo_empty_n;
output   dhcp_replyMetaFifo_read;
input  [0:0] portOpen_dout;
input   portOpen_empty_n;
output   portOpen_read;
output  [95:0] dhcp_requestMetaFifo_din;
input   dhcp_requestMetaFifo_full_n;
output   dhcp_requestMetaFifo_write;
output  [31:0] dhcpIpAddressOut;
output   dhcpIpAddressOut_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg inputIpAddress_read;
reg dhcpEnable_read;
reg dhcp_replyMetaFifo_read;
reg portOpen_read;
reg[95:0] dhcp_requestMetaFifo_din;
reg dhcp_requestMetaFifo_write;
reg[31:0] dhcpIpAddressOut;
reg dhcpIpAddressOut_ap_vld;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [2:0] state_load_load_fu_245_p1;
wire   [0:0] grp_nbreadreq_fu_114_p3;
reg    ap_predicate_op12_read_state1;
reg    ap_predicate_op26_read_state1;
reg    ap_predicate_op46_read_state1;
wire   [0:0] tmp_i_i_nbreadreq_fu_128_p3;
reg    ap_predicate_op73_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [2:0] state_load_reg_419;
reg   [0:0] tmp_i_i_24_reg_460;
reg   [0:0] icmp_ln870_6_reg_473;
reg   [0:0] icmp_ln870_10_reg_477;
reg    ap_predicate_op109_write_state2;
reg   [0:0] dhcpEnable_read_reg_428;
reg   [0:0] icmp_ln870_reg_481;
reg    ap_predicate_op113_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg   [31:0] myIpAddress_V;
reg   [2:0] state;
reg   [31:0] time_V;
reg   [31:0] randomValue_V;
reg   [31:0] myIdentity_V;
reg   [31:0] IpAddressBuffer_V;
reg    dhcpEnable_blk_n;
wire    ap_block_pp0_stage0;
reg    inputIpAddress_blk_n;
reg    portOpen_blk_n;
reg    dhcp_requestMetaFifo_blk_n;
reg    dhcp_replyMetaFifo_blk_n;
reg   [31:0] inputIpAddress_read_reg_423;
wire   [0:0] dhcpEnable_read_read_fu_108_p2;
reg   [31:0] randomValue_V_load_reg_432;
reg   [31:0] myIdentity_V_load_reg_437;
reg   [0:0] tmp_1_i_i_reg_445;
wire   [0:0] icmp_ln870_8_fu_285_p2;
reg   [0:0] icmp_ln870_8_reg_452;
wire   [0:0] icmp_ln870_11_fu_291_p2;
reg   [0:0] icmp_ln870_11_reg_456;
reg   [31:0] reply_assignedIpAddress_V_reg_467;
wire   [0:0] icmp_ln870_6_fu_317_p2;
wire   [0:0] icmp_ln870_10_fu_323_p2;
wire   [0:0] grp_fu_208_p2;
reg    ap_block_pp0_stage0_subdone;
reg   [31:0] ap_phi_mux_randomValue_V_loc_0_i_i_phi_fu_159_p36;
wire   [31:0] ap_phi_reg_pp0_iter0_randomValue_V_loc_0_i_i_reg_156;
wire   [0:0] icmp_ln870_9_fu_203_p2;
wire   [31:0] xor_ln213_fu_347_p2;
wire   [31:0] grp_fu_213_p2;
wire   [31:0] add_ln691_fu_360_p2;
wire   [95:0] or_ln174_fu_400_p2;
reg    ap_block_pp0_stage0_01001;
wire   [95:0] zext_ln174_fu_414_p1;
reg   [31:0] dhcpIpAddressOut_preg;
wire   [31:0] reply_identifier_V_1_fu_281_p1;
wire   [7:0] grp_fu_224_p4;
wire   [31:0] reply_identifier_V_fu_303_p1;
wire   [31:0] shl_ln213_fu_341_p2;
wire   [95:0] or_ln174_3_i_i_fu_392_p4;
wire   [32:0] or_ln_fu_407_p3;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_349;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 myIpAddress_V = 32'd0;
#0 state = 3'd0;
#0 time_V = 32'd100;
#0 randomValue_V = 32'd883610443;
#0 myIdentity_V = 32'd0;
#0 IpAddressBuffer_V = 32'd0;
#0 dhcpIpAddressOut_preg = 32'd0;
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
    if (ap_rst == 1'b1) begin
        dhcpIpAddressOut_preg <= 32'd0;
    end else begin
        if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_01001))) begin
            dhcpIpAddressOut_preg <= myIpAddress_V;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((((state_load_reg_419 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((state_load_reg_419 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        myIpAddress_V <= inputIpAddress_read_reg_423;
    end else if (((state_load_reg_419 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln870_11_reg_456 == 1'd1) & (icmp_ln870_8_reg_452 == 1'd1) & (tmp_1_i_i_reg_445 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        myIpAddress_V <= IpAddressBuffer_V;
    end
end

always @ (posedge ap_clk) begin
    if (((state_load_load_fu_245_p1 == 3'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (grp_fu_208_p2 == 1'd1) & (dhcpEnable_read_read_fu_108_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        state <= 3'd2;
    end else if (((grp_nbreadreq_fu_114_p3 == 1'd1) & (state == 3'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln870_10_fu_323_p2 == 1'd1) & (icmp_ln870_6_fu_317_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        state <= 3'd3;
    end else if (((grp_nbreadreq_fu_114_p3 == 1'd1) & (state == 3'd3) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln870_11_fu_291_p2 == 1'd1) & (icmp_ln870_8_fu_285_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        state <= 3'd4;
    end else if ((((tmp_i_i_nbreadreq_fu_128_p3 == 1'd1) & (state == 3'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((grp_nbreadreq_fu_114_p3 == 1'd1) & (state == 3'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln870_10_fu_323_p2 == 1'd0) & (icmp_ln870_6_fu_317_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((grp_nbreadreq_fu_114_p3 == 1'd1) & (state == 3'd3) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln870_11_fu_291_p2 == 1'd0) & (icmp_ln870_8_fu_285_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((state == 3'd4) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (dhcpEnable_read_read_fu_108_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((grp_nbreadreq_fu_114_p3 == 1'd0) & (state == 3'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (grp_fu_208_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((grp_nbreadreq_fu_114_p3 == 1'd0) & (state == 3'd3) & (icmp_ln870_9_fu_203_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        state <= 3'd1;
    end
end

always @ (posedge ap_clk) begin
    if ((((grp_nbreadreq_fu_114_p3 == 1'd1) & (state == 3'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln870_10_fu_323_p2 == 1'd1) & (icmp_ln870_6_fu_317_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((state_load_load_fu_245_p1 == 3'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (grp_fu_208_p2 == 1'd1) & (dhcpEnable_read_read_fu_108_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        time_V <= 32'd750750750;
    end else if ((((grp_nbreadreq_fu_114_p3 == 1'd0) & (state == 3'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (grp_fu_208_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((grp_nbreadreq_fu_114_p3 == 1'd0) & (state == 3'd3) & (icmp_ln870_9_fu_203_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((state_load_load_fu_245_p1 == 3'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (grp_fu_208_p2 == 1'd0) & (dhcpEnable_read_read_fu_108_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        time_V <= grp_fu_213_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_i_i_24_reg_460 == 1'd1) & (state_load_reg_419 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln870_10_reg_477 == 1'd1) & (icmp_ln870_6_reg_473 == 1'd1))) begin
        IpAddressBuffer_V <= reply_assignedIpAddress_V_reg_467;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dhcpEnable_read_reg_428 <= dhcpEnable_dout;
        inputIpAddress_read_reg_423 <= inputIpAddress_dout;
        myIdentity_V_load_reg_437 <= myIdentity_V;
        randomValue_V_load_reg_432 <= randomValue_V;
        state_load_reg_419 <= state;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_nbreadreq_fu_114_p3 == 1'd1) & (state == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln870_6_fu_317_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln870_10_reg_477 <= icmp_ln870_10_fu_323_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_nbreadreq_fu_114_p3 == 1'd1) & (state == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln870_8_fu_285_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln870_11_reg_456 <= icmp_ln870_11_fu_291_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_nbreadreq_fu_114_p3 == 1'd1) & (state == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln870_6_reg_473 <= icmp_ln870_6_fu_317_p2;
        reply_assignedIpAddress_V_reg_467 <= {{dhcp_replyMetaFifo_dout[63:32]}};
    end
end

always @ (posedge ap_clk) begin
    if (((grp_nbreadreq_fu_114_p3 == 1'd1) & (state == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln870_8_reg_452 <= icmp_ln870_8_fu_285_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((state_load_load_fu_245_p1 == 3'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (dhcpEnable_read_read_fu_108_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln870_reg_481 <= grp_fu_208_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((state_load_load_fu_245_p1 == 3'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (grp_fu_208_p2 == 1'd1) & (dhcpEnable_read_read_fu_108_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        myIdentity_V <= randomValue_V;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        randomValue_V <= add_ln691_fu_360_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((state == 3'd3) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_1_i_i_reg_445 <= grp_nbreadreq_fu_114_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((state == 3'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_i_i_24_reg_460 <= grp_nbreadreq_fu_114_p3;
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
    if (((state_load_load_fu_245_p1 == 3'd1) & (grp_fu_208_p2 == 1'd1) & (dhcpEnable_read_read_fu_108_p2 == 1'd1))) begin
        ap_phi_mux_randomValue_V_loc_0_i_i_phi_fu_159_p36 = xor_ln213_fu_347_p2;
    end else if (((state_load_load_fu_245_p1 == 3'd5) | (state_load_load_fu_245_p1 == 3'd6) | (state_load_load_fu_245_p1 == 3'd7) | ((tmp_i_i_nbreadreq_fu_128_p3 == 1'd1) & (state == 3'd0)) | ((grp_nbreadreq_fu_114_p3 == 1'd1) & (state == 3'd2) & (icmp_ln870_6_fu_317_p2 == 1'd0)) | ((grp_nbreadreq_fu_114_p3 == 1'd1) & (state == 3'd2) & (icmp_ln870_10_fu_323_p2 == 1'd0) & (icmp_ln870_6_fu_317_p2 == 1'd1)) | ((grp_nbreadreq_fu_114_p3 == 1'd1) & (state == 3'd2) & (icmp_ln870_10_fu_323_p2 == 1'd1) & (icmp_ln870_6_fu_317_p2 == 1'd1)) | ((grp_nbreadreq_fu_114_p3 == 1'd1) & (state == 3'd3) & (icmp_ln870_8_fu_285_p2 == 1'd0)) | ((grp_nbreadreq_fu_114_p3 == 1'd1) & (state == 3'd3) & (icmp_ln870_11_fu_291_p2 == 1'd0) & (icmp_ln870_8_fu_285_p2 == 1'd1)) | ((grp_nbreadreq_fu_114_p3 == 1'd1) & (state == 3'd3) & (icmp_ln870_11_fu_291_p2 == 1'd1) & (icmp_ln870_8_fu_285_p2 == 1'd1)) | ((state == 3'd4) & (dhcpEnable_read_read_fu_108_p2 == 1'd0)) | ((state == 3'd4) & (dhcpEnable_read_read_fu_108_p2 == 1'd1)) | ((tmp_i_i_nbreadreq_fu_128_p3 == 1'd0) & (state == 3'd0)) | ((grp_nbreadreq_fu_114_p3 == 1'd0) & (state == 3'd2) & (grp_fu_208_p2 == 1'd0)) | ((grp_nbreadreq_fu_114_p3 == 1'd0) & (state == 3'd2) & (grp_fu_208_p2 == 1'd1)) | ((grp_nbreadreq_fu_114_p3 == 1'd0) & (state == 3'd3) & (icmp_ln870_9_fu_203_p2 == 1'd0)) | ((grp_nbreadreq_fu_114_p3 == 1'd0) & (state == 3'd3) & (icmp_ln870_9_fu_203_p2 == 1'd1)) | ((state_load_load_fu_245_p1 == 3'd1) & (dhcpEnable_read_read_fu_108_p2 == 1'd0)) | ((state_load_load_fu_245_p1 == 3'd1) & (grp_fu_208_p2 == 1'd0) & (dhcpEnable_read_read_fu_108_p2 == 1'd1)))) begin
        ap_phi_mux_randomValue_V_loc_0_i_i_phi_fu_159_p36 = randomValue_V;
    end else begin
        ap_phi_mux_randomValue_V_loc_0_i_i_phi_fu_159_p36 = ap_phi_reg_pp0_iter0_randomValue_V_loc_0_i_i_reg_156;
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
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0))) begin
        dhcpEnable_blk_n = dhcpEnable_empty_n;
    end else begin
        dhcpEnable_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dhcpEnable_read = 1'b1;
    end else begin
        dhcpEnable_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        dhcpIpAddressOut = myIpAddress_V;
    end else begin
        dhcpIpAddressOut = dhcpIpAddressOut_preg;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dhcpIpAddressOut_ap_vld = 1'b1;
    end else begin
        dhcpIpAddressOut_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_predicate_op46_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0)) | ((ap_predicate_op26_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0)) | ((ap_predicate_op12_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0)))) begin
        dhcp_replyMetaFifo_blk_n = dhcp_replyMetaFifo_empty_n;
    end else begin
        dhcp_replyMetaFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_predicate_op46_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op26_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op12_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        dhcp_replyMetaFifo_read = 1'b1;
    end else begin
        dhcp_replyMetaFifo_read = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op113_write_state2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op109_write_state2 == 1'b1)))) begin
        dhcp_requestMetaFifo_blk_n = dhcp_requestMetaFifo_full_n;
    end else begin
        dhcp_requestMetaFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_349)) begin
        if ((ap_predicate_op113_write_state2 == 1'b1)) begin
            dhcp_requestMetaFifo_din = zext_ln174_fu_414_p1;
        end else if ((ap_predicate_op109_write_state2 == 1'b1)) begin
            dhcp_requestMetaFifo_din = or_ln174_fu_400_p2;
        end else begin
            dhcp_requestMetaFifo_din = 'bx;
        end
    end else begin
        dhcp_requestMetaFifo_din = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op113_write_state2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op109_write_state2 == 1'b1)))) begin
        dhcp_requestMetaFifo_write = 1'b1;
    end else begin
        dhcp_requestMetaFifo_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0))) begin
        inputIpAddress_blk_n = inputIpAddress_empty_n;
    end else begin
        inputIpAddress_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        inputIpAddress_read = 1'b1;
    end else begin
        inputIpAddress_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_predicate_op73_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0))) begin
        portOpen_blk_n = portOpen_empty_n;
    end else begin
        portOpen_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op73_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        portOpen_read = 1'b1;
    end else begin
        portOpen_read = 1'b0;
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

assign add_ln691_fu_360_p2 = (ap_phi_mux_randomValue_V_loc_0_i_i_phi_fu_159_p36 + 32'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((dhcpEnable_empty_n == 1'b0) | (inputIpAddress_empty_n == 1'b0) | (ap_done_reg == 1'b1) | ((ap_predicate_op73_read_state1 == 1'b1) & (portOpen_empty_n == 1'b0)) | ((ap_predicate_op46_read_state1 == 1'b1) & (dhcp_replyMetaFifo_empty_n == 1'b0)) | ((ap_predicate_op26_read_state1 == 1'b1) & (dhcp_replyMetaFifo_empty_n == 1'b0)) | ((ap_predicate_op12_read_state1 == 1'b1) & (dhcp_replyMetaFifo_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((dhcp_requestMetaFifo_full_n == 1'b0) & (ap_predicate_op113_write_state2 == 1'b1)) | ((dhcp_requestMetaFifo_full_n == 1'b0) & (ap_predicate_op109_write_state2 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((dhcpEnable_empty_n == 1'b0) | (inputIpAddress_empty_n == 1'b0) | (ap_done_reg == 1'b1) | ((ap_predicate_op73_read_state1 == 1'b1) & (portOpen_empty_n == 1'b0)) | ((ap_predicate_op46_read_state1 == 1'b1) & (dhcp_replyMetaFifo_empty_n == 1'b0)) | ((ap_predicate_op26_read_state1 == 1'b1) & (dhcp_replyMetaFifo_empty_n == 1'b0)) | ((ap_predicate_op12_read_state1 == 1'b1) & (dhcp_replyMetaFifo_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((dhcp_requestMetaFifo_full_n == 1'b0) & (ap_predicate_op113_write_state2 == 1'b1)) | ((dhcp_requestMetaFifo_full_n == 1'b0) & (ap_predicate_op109_write_state2 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((dhcpEnable_empty_n == 1'b0) | (inputIpAddress_empty_n == 1'b0) | (ap_done_reg == 1'b1) | ((ap_predicate_op73_read_state1 == 1'b1) & (portOpen_empty_n == 1'b0)) | ((ap_predicate_op46_read_state1 == 1'b1) & (dhcp_replyMetaFifo_empty_n == 1'b0)) | ((ap_predicate_op26_read_state1 == 1'b1) & (dhcp_replyMetaFifo_empty_n == 1'b0)) | ((ap_predicate_op12_read_state1 == 1'b1) & (dhcp_replyMetaFifo_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((dhcp_requestMetaFifo_full_n == 1'b0) & (ap_predicate_op113_write_state2 == 1'b1)) | ((dhcp_requestMetaFifo_full_n == 1'b0) & (ap_predicate_op109_write_state2 == 1'b1)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((dhcpEnable_empty_n == 1'b0) | (inputIpAddress_empty_n == 1'b0) | (ap_done_reg == 1'b1) | ((ap_predicate_op73_read_state1 == 1'b1) & (portOpen_empty_n == 1'b0)) | ((ap_predicate_op46_read_state1 == 1'b1) & (dhcp_replyMetaFifo_empty_n == 1'b0)) | ((ap_predicate_op26_read_state1 == 1'b1) & (dhcp_replyMetaFifo_empty_n == 1'b0)) | ((ap_predicate_op12_read_state1 == 1'b1) & (dhcp_replyMetaFifo_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((dhcp_requestMetaFifo_full_n == 1'b0) & (ap_predicate_op113_write_state2 == 1'b1)) | ((dhcp_requestMetaFifo_full_n == 1'b0) & (ap_predicate_op109_write_state2 == 1'b1)));
end

always @ (*) begin
    ap_condition_349 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_01001));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_phi_reg_pp0_iter0_randomValue_V_loc_0_i_i_reg_156 = 'bx;

always @ (*) begin
    ap_predicate_op109_write_state2 = ((tmp_i_i_24_reg_460 == 1'd1) & (state_load_reg_419 == 3'd2) & (icmp_ln870_10_reg_477 == 1'd1) & (icmp_ln870_6_reg_473 == 1'd1));
end

always @ (*) begin
    ap_predicate_op113_write_state2 = ((state_load_reg_419 == 3'd1) & (icmp_ln870_reg_481 == 1'd1) & (dhcpEnable_read_reg_428 == 1'd1));
end

always @ (*) begin
    ap_predicate_op12_read_state1 = ((grp_nbreadreq_fu_114_p3 == 1'd1) & (state == 3'd4));
end

always @ (*) begin
    ap_predicate_op26_read_state1 = ((grp_nbreadreq_fu_114_p3 == 1'd1) & (state == 3'd3));
end

always @ (*) begin
    ap_predicate_op46_read_state1 = ((grp_nbreadreq_fu_114_p3 == 1'd1) & (state == 3'd2));
end

always @ (*) begin
    ap_predicate_op73_read_state1 = ((tmp_i_i_nbreadreq_fu_128_p3 == 1'd1) & (state == 3'd0));
end

assign dhcpEnable_read_read_fu_108_p2 = dhcpEnable_dout;

assign grp_fu_208_p2 = ((time_V == 32'd0) ? 1'b1 : 1'b0);

assign grp_fu_213_p2 = ($signed(time_V) + $signed(32'd4294967295));

assign grp_fu_224_p4 = {{dhcp_replyMetaFifo_dout[103:96]}};

assign grp_nbreadreq_fu_114_p3 = dhcp_replyMetaFifo_empty_n;

assign icmp_ln870_10_fu_323_p2 = ((grp_fu_224_p4 == 8'd2) ? 1'b1 : 1'b0);

assign icmp_ln870_11_fu_291_p2 = ((grp_fu_224_p4 == 8'd5) ? 1'b1 : 1'b0);

assign icmp_ln870_6_fu_317_p2 = ((reply_identifier_V_fu_303_p1 == myIdentity_V) ? 1'b1 : 1'b0);

assign icmp_ln870_8_fu_285_p2 = ((reply_identifier_V_1_fu_281_p1 == myIdentity_V) ? 1'b1 : 1'b0);

assign icmp_ln870_9_fu_203_p2 = ((time_V == 32'd0) ? 1'b1 : 1'b0);

assign or_ln174_3_i_i_fu_392_p4 = {{{reply_assignedIpAddress_V_reg_467}, {32'd0}}, {myIdentity_V_load_reg_437}};

assign or_ln174_fu_400_p2 = (or_ln174_3_i_i_fu_392_p4 | 96'd12884901888);

assign or_ln_fu_407_p3 = {{1'd1}, {randomValue_V_load_reg_432}};

assign reply_identifier_V_1_fu_281_p1 = dhcp_replyMetaFifo_dout[31:0];

assign reply_identifier_V_fu_303_p1 = dhcp_replyMetaFifo_dout[31:0];

assign shl_ln213_fu_341_p2 = randomValue_V << 32'd3;

assign state_load_load_fu_245_p1 = state;

assign tmp_i_i_nbreadreq_fu_128_p3 = portOpen_empty_n;

assign xor_ln213_fu_347_p2 = (shl_ln213_fu_341_p2 ^ randomValue_V);

assign zext_ln174_fu_414_p1 = or_ln_fu_407_p3;

endmodule //dhcp_client_dhcp_fsm