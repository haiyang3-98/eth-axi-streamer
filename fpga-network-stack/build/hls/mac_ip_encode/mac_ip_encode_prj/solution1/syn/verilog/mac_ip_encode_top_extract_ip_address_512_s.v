// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module mac_ip_encode_top_extract_ip_address_512_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        dataIn_internal_dout,
        dataIn_internal_empty_n,
        dataIn_internal_read,
        regSubNetMask_dout,
        regSubNetMask_empty_n,
        regSubNetMask_read,
        regDefaultGateway_dout,
        regDefaultGateway_empty_n,
        regDefaultGateway_read,
        dataStreamBuffer0_din,
        dataStreamBuffer0_full_n,
        dataStreamBuffer0_write,
        m_axis_arp_lookup_request_V_TREADY,
        m_axis_arp_lookup_request_V_TDATA,
        m_axis_arp_lookup_request_V_TVALID
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [1023:0] dataIn_internal_dout;
input   dataIn_internal_empty_n;
output   dataIn_internal_read;
input  [31:0] regSubNetMask_dout;
input   regSubNetMask_empty_n;
output   regSubNetMask_read;
input  [31:0] regDefaultGateway_dout;
input   regDefaultGateway_empty_n;
output   regDefaultGateway_read;
output  [1023:0] dataStreamBuffer0_din;
input   dataStreamBuffer0_full_n;
output   dataStreamBuffer0_write;
input   m_axis_arp_lookup_request_V_TREADY;
output  [31:0] m_axis_arp_lookup_request_V_TDATA;
output   m_axis_arp_lookup_request_V_TVALID;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg dataIn_internal_read;
reg regSubNetMask_read;
reg regDefaultGateway_read;
reg dataStreamBuffer0_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire   [0:0] tmp_i_i_nbreadreq_fu_94_p3;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
reg   [0:0] tmp_i_i_reg_428;
reg   [0:0] tmp_i_i_reg_428_pp0_iter1_reg;
reg   [0:0] header_ready_load_reg_447;
reg    ap_predicate_op76_write_state3;
reg    ap_predicate_op77_write_state3;
reg    ap_block_state3_pp0_stage0_iter2;
reg   [0:0] tmp_i_i_reg_428_pp0_iter2_reg;
reg   [0:0] metaWritten_load_reg_461;
reg   [0:0] metaWritten_load_reg_461_pp0_iter2_reg;
reg   [0:0] icmp_ln870_reg_475;
reg    ap_predicate_op84_write_state4;
reg    ap_predicate_op85_write_state4;
reg    ap_block_state4_pp0_stage0_iter3;
reg    ap_block_state4_io;
reg   [0:0] tmp_i_i_reg_428_pp0_iter3_reg;
reg   [0:0] metaWritten_load_reg_461_pp0_iter3_reg;
reg   [0:0] icmp_ln870_reg_475_pp0_iter3_reg;
reg    ap_predicate_op86_write_state5;
reg    ap_predicate_op88_write_state5;
wire    regslice_both_m_axis_arp_lookup_request_V_U_apdone_blk;
reg    ap_block_state5_pp0_stage0_iter4;
reg    ap_block_state5_io;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] header_ready;
reg   [15:0] header_idx;
reg   [159:0] header_header_V;
reg   [0:0] metaWritten;
reg    m_axis_arp_lookup_request_V_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    regSubNetMask_blk_n;
reg    regDefaultGateway_blk_n;
reg    dataIn_internal_blk_n;
reg    dataStreamBuffer0_blk_n;
reg   [1023:0] dataIn_internal_read_reg_432;
reg   [1023:0] dataIn_internal_read_reg_432_pp0_iter1_reg;
reg   [0:0] tmp_last_V_reg_439;
wire   [0:0] header_ready_load_load_fu_227_p1;
wire   [159:0] p_Result_s_fu_333_p2;
wire   [0:0] metaWritten_load_load_fu_352_p1;
reg   [31:0] lhs_V_1_reg_465;
wire   [31:0] dstIpAddress_V_fu_400_p4;
reg   [31:0] dstIpAddress_V_reg_470;
wire   [0:0] icmp_ln870_fu_422_p2;
reg    ap_block_pp0_stage0_subdone;
reg   [0:0] ap_phi_mux_header_ready_flag_0_i_i_phi_fu_137_p4;
wire   [0:0] ap_phi_reg_pp0_iter1_header_ready_flag_0_i_i_reg_134;
reg   [15:0] ap_phi_mux_header_idx_new_0_i_i_phi_fu_148_p4;
wire   [15:0] add_ln67_fu_345_p2;
wire   [15:0] ap_phi_reg_pp0_iter1_header_idx_new_0_i_i_reg_145;
reg   [0:0] ap_phi_mux_metaWritten_flag_0_i_i_phi_fu_158_p4;
wire   [0:0] ap_phi_reg_pp0_iter1_metaWritten_flag_0_i_i_reg_155;
reg   [0:0] ap_phi_mux_header_ready_flag_1_i_i_phi_fu_170_p4;
wire   [0:0] ap_phi_reg_pp0_iter0_header_ready_flag_1_i_i_reg_166;
reg   [0:0] ap_phi_reg_pp0_iter1_header_ready_flag_1_i_i_reg_166;
wire   [0:0] or_ln67_fu_356_p2;
reg   [0:0] ap_phi_mux_header_ready_new_1_i_i_phi_fu_181_p4;
wire   [0:0] xor_ln67_fu_362_p2;
wire   [0:0] ap_phi_reg_pp0_iter1_header_ready_new_1_i_i_reg_177;
reg   [15:0] ap_phi_mux_header_idx_new_1_i_i_phi_fu_192_p4;
wire   [15:0] select_ln67_fu_368_p3;
wire   [15:0] ap_phi_reg_pp0_iter1_header_idx_new_1_i_i_reg_188;
reg   [0:0] ap_phi_mux_metaWritten_flag_1_i_i_phi_fu_203_p4;
wire   [0:0] ap_phi_reg_pp0_iter0_metaWritten_flag_1_i_i_reg_199;
reg   [0:0] ap_phi_reg_pp0_iter1_metaWritten_flag_1_i_i_reg_199;
wire   [0:0] or_ln67_1_fu_376_p2;
wire   [159:0] ap_phi_reg_pp0_iter0_p_Val2_8_reg_210;
reg   [159:0] ap_phi_reg_pp0_iter1_p_Val2_8_reg_210;
reg   [159:0] ap_phi_reg_pp0_iter2_p_Val2_8_reg_210;
reg    ap_block_pp0_stage0_01001;
wire   [24:0] shl_ln_fu_239_p3;
wire   [0:0] trunc_ln414_fu_256_p1;
wire   [0:0] icmp_ln414_fu_250_p2;
wire   [159:0] st_fu_259_p3;
wire   [159:0] tmp_74_fu_247_p1;
wire   [159:0] select_ln414_fu_267_p3;
reg   [159:0] tmp_fu_275_p4;
wire   [159:0] select_ln414_2_fu_293_p3;
wire   [159:0] select_ln414_3_fu_301_p3;
wire   [159:0] and_ln414_fu_309_p2;
wire   [159:0] xor_ln414_fu_315_p2;
wire   [159:0] select_ln414_1_fu_285_p3;
wire   [159:0] and_ln414_1_fu_321_p2;
wire   [159:0] and_ln414_2_fu_327_p2;
wire   [31:0] xor_ln870_fu_410_p2;
wire   [31:0] and_ln870_fu_416_p2;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to3;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg   [31:0] m_axis_arp_lookup_request_V_TDATA_int_regslice;
reg    m_axis_arp_lookup_request_V_TVALID_int_regslice;
wire    m_axis_arp_lookup_request_V_TREADY_int_regslice;
wire    regslice_both_m_axis_arp_lookup_request_V_U_vld_out;
reg    ap_condition_152;
reg    ap_condition_244;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 header_ready = 1'd0;
#0 header_idx = 16'd0;
#0 header_header_V = 160'd1180591620717411303493;
#0 metaWritten = 1'd0;
end

mac_ip_encode_top_regslice_both #(
    .DataWidth( 32 ))
regslice_both_m_axis_arp_lookup_request_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(m_axis_arp_lookup_request_V_TDATA_int_regslice),
    .vld_in(m_axis_arp_lookup_request_V_TVALID_int_regslice),
    .ack_in(m_axis_arp_lookup_request_V_TREADY_int_regslice),
    .data_out(m_axis_arp_lookup_request_V_TDATA),
    .vld_out(regslice_both_m_axis_arp_lookup_request_V_U_vld_out),
    .ack_out(m_axis_arp_lookup_request_V_TREADY),
    .apdone_blk(regslice_both_m_axis_arp_lookup_request_V_U_apdone_blk)
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
        end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
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
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_152)) begin
        if ((tmp_i_i_nbreadreq_fu_94_p3 == 1'd0)) begin
            ap_phi_reg_pp0_iter1_header_ready_flag_1_i_i_reg_166 <= 1'd0;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_header_ready_flag_1_i_i_reg_166 <= ap_phi_reg_pp0_iter0_header_ready_flag_1_i_i_reg_166;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_152)) begin
        if ((tmp_i_i_nbreadreq_fu_94_p3 == 1'd0)) begin
            ap_phi_reg_pp0_iter1_metaWritten_flag_1_i_i_reg_199 <= 1'd0;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_metaWritten_flag_1_i_i_reg_199 <= ap_phi_reg_pp0_iter0_metaWritten_flag_1_i_i_reg_199;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_244)) begin
        if (((tmp_i_i_reg_428 == 1'd1) & (header_ready_load_load_fu_227_p1 == 1'd0))) begin
            ap_phi_reg_pp0_iter2_p_Val2_8_reg_210 <= p_Result_s_fu_333_p2;
        end else if (((tmp_i_i_reg_428 == 1'd1) & (header_ready_load_load_fu_227_p1 == 1'd1))) begin
            ap_phi_reg_pp0_iter2_p_Val2_8_reg_210 <= header_header_V;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter2_p_Val2_8_reg_210 <= ap_phi_reg_pp0_iter1_p_Val2_8_reg_210;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_phi_reg_pp0_iter1_p_Val2_8_reg_210 <= ap_phi_reg_pp0_iter0_p_Val2_8_reg_210;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_i_i_nbreadreq_fu_94_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dataIn_internal_read_reg_432 <= dataIn_internal_dout;
        tmp_last_V_reg_439 <= dataIn_internal_dout[32'd576];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dataIn_internal_read_reg_432_pp0_iter1_reg <= dataIn_internal_read_reg_432;
        tmp_i_i_reg_428 <= tmp_i_i_nbreadreq_fu_94_p3;
        tmp_i_i_reg_428_pp0_iter1_reg <= tmp_i_i_reg_428;
    end
end

always @ (posedge ap_clk) begin
    if (((metaWritten_load_reg_461 == 1'd0) & (tmp_i_i_reg_428_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dstIpAddress_V_reg_470 <= {{ap_phi_reg_pp0_iter2_p_Val2_8_reg_210[159:128]}};
        icmp_ln870_reg_475 <= icmp_ln870_fu_422_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_i_i_reg_428 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (header_ready_load_load_fu_227_p1 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        header_header_V <= p_Result_s_fu_333_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_phi_mux_header_ready_flag_1_i_i_phi_fu_170_p4 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        header_idx <= ap_phi_mux_header_idx_new_1_i_i_phi_fu_192_p4;
        header_ready <= ap_phi_mux_header_ready_new_1_i_i_phi_fu_181_p4;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_i_i_reg_428 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        header_ready_load_reg_447 <= header_ready;
        metaWritten_load_reg_461 <= metaWritten;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        icmp_ln870_reg_475_pp0_iter3_reg <= icmp_ln870_reg_475;
        lhs_V_1_reg_465 <= regDefaultGateway_dout;
        metaWritten_load_reg_461_pp0_iter2_reg <= metaWritten_load_reg_461;
        metaWritten_load_reg_461_pp0_iter3_reg <= metaWritten_load_reg_461_pp0_iter2_reg;
        tmp_i_i_reg_428_pp0_iter2_reg <= tmp_i_i_reg_428_pp0_iter1_reg;
        tmp_i_i_reg_428_pp0_iter3_reg <= tmp_i_i_reg_428_pp0_iter2_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_phi_mux_metaWritten_flag_1_i_i_phi_fu_203_p4 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        metaWritten <= ap_phi_mux_header_ready_new_1_i_i_phi_fu_181_p4;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to3 = 1'b1;
    end else begin
        ap_idle_pp0_0to3 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_i_i_reg_428 == 1'd1) & (header_ready_load_load_fu_227_p1 == 1'd0))) begin
        ap_phi_mux_header_idx_new_0_i_i_phi_fu_148_p4 = add_ln67_fu_345_p2;
    end else begin
        ap_phi_mux_header_idx_new_0_i_i_phi_fu_148_p4 = ap_phi_reg_pp0_iter1_header_idx_new_0_i_i_reg_145;
    end
end

always @ (*) begin
    if ((tmp_i_i_reg_428 == 1'd1)) begin
        ap_phi_mux_header_idx_new_1_i_i_phi_fu_192_p4 = select_ln67_fu_368_p3;
    end else begin
        ap_phi_mux_header_idx_new_1_i_i_phi_fu_192_p4 = ap_phi_reg_pp0_iter1_header_idx_new_1_i_i_reg_188;
    end
end

always @ (*) begin
    if ((tmp_i_i_reg_428 == 1'd1)) begin
        if ((header_ready_load_load_fu_227_p1 == 1'd0)) begin
            ap_phi_mux_header_ready_flag_0_i_i_phi_fu_137_p4 = 1'd1;
        end else if ((header_ready_load_load_fu_227_p1 == 1'd1)) begin
            ap_phi_mux_header_ready_flag_0_i_i_phi_fu_137_p4 = 1'd0;
        end else begin
            ap_phi_mux_header_ready_flag_0_i_i_phi_fu_137_p4 = ap_phi_reg_pp0_iter1_header_ready_flag_0_i_i_reg_134;
        end
    end else begin
        ap_phi_mux_header_ready_flag_0_i_i_phi_fu_137_p4 = ap_phi_reg_pp0_iter1_header_ready_flag_0_i_i_reg_134;
    end
end

always @ (*) begin
    if ((tmp_i_i_reg_428 == 1'd1)) begin
        ap_phi_mux_header_ready_flag_1_i_i_phi_fu_170_p4 = or_ln67_fu_356_p2;
    end else begin
        ap_phi_mux_header_ready_flag_1_i_i_phi_fu_170_p4 = ap_phi_reg_pp0_iter1_header_ready_flag_1_i_i_reg_166;
    end
end

always @ (*) begin
    if ((tmp_i_i_reg_428 == 1'd1)) begin
        ap_phi_mux_header_ready_new_1_i_i_phi_fu_181_p4 = xor_ln67_fu_362_p2;
    end else begin
        ap_phi_mux_header_ready_new_1_i_i_phi_fu_181_p4 = ap_phi_reg_pp0_iter1_header_ready_new_1_i_i_reg_177;
    end
end

always @ (*) begin
    if ((tmp_i_i_reg_428 == 1'd1)) begin
        if ((metaWritten_load_load_fu_352_p1 == 1'd0)) begin
            ap_phi_mux_metaWritten_flag_0_i_i_phi_fu_158_p4 = 1'd1;
        end else if ((metaWritten_load_load_fu_352_p1 == 1'd1)) begin
            ap_phi_mux_metaWritten_flag_0_i_i_phi_fu_158_p4 = 1'd0;
        end else begin
            ap_phi_mux_metaWritten_flag_0_i_i_phi_fu_158_p4 = ap_phi_reg_pp0_iter1_metaWritten_flag_0_i_i_reg_155;
        end
    end else begin
        ap_phi_mux_metaWritten_flag_0_i_i_phi_fu_158_p4 = ap_phi_reg_pp0_iter1_metaWritten_flag_0_i_i_reg_155;
    end
end

always @ (*) begin
    if ((tmp_i_i_reg_428 == 1'd1)) begin
        ap_phi_mux_metaWritten_flag_1_i_i_phi_fu_203_p4 = or_ln67_1_fu_376_p2;
    end else begin
        ap_phi_mux_metaWritten_flag_1_i_i_phi_fu_203_p4 = ap_phi_reg_pp0_iter1_metaWritten_flag_1_i_i_reg_199;
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
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_i_i_nbreadreq_fu_94_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0))) begin
        dataIn_internal_blk_n = dataIn_internal_empty_n;
    end else begin
        dataIn_internal_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_i_i_nbreadreq_fu_94_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dataIn_internal_read = 1'b1;
    end else begin
        dataIn_internal_read = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_predicate_op77_write_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_predicate_op76_write_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        dataStreamBuffer0_blk_n = dataStreamBuffer0_full_n;
    end else begin
        dataStreamBuffer0_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_predicate_op77_write_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op76_write_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        dataStreamBuffer0_write = 1'b1;
    end else begin
        dataStreamBuffer0_write = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op88_write_state5 == 1'b1)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op86_write_state5 == 1'b1)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op85_write_state4 == 1'b1)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op84_write_state4 == 1'b1)))) begin
        m_axis_arp_lookup_request_V_TDATA_blk_n = m_axis_arp_lookup_request_V_TREADY_int_regslice;
    end else begin
        m_axis_arp_lookup_request_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        if ((ap_predicate_op85_write_state4 == 1'b1)) begin
            m_axis_arp_lookup_request_V_TDATA_int_regslice = dstIpAddress_V_reg_470;
        end else if ((ap_predicate_op84_write_state4 == 1'b1)) begin
            m_axis_arp_lookup_request_V_TDATA_int_regslice = lhs_V_1_reg_465;
        end else begin
            m_axis_arp_lookup_request_V_TDATA_int_regslice = 'bx;
        end
    end else begin
        m_axis_arp_lookup_request_V_TDATA_int_regslice = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op85_write_state4 == 1'b1)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op84_write_state4 == 1'b1)))) begin
        m_axis_arp_lookup_request_V_TVALID_int_regslice = 1'b1;
    end else begin
        m_axis_arp_lookup_request_V_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        regDefaultGateway_blk_n = regDefaultGateway_empty_n;
    end else begin
        regDefaultGateway_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        regDefaultGateway_read = 1'b1;
    end else begin
        regDefaultGateway_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        regSubNetMask_blk_n = regSubNetMask_empty_n;
    end else begin
        regSubNetMask_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        regSubNetMask_read = 1'b1;
    end else begin
        regSubNetMask_read = 1'b0;
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

assign add_ln67_fu_345_p2 = (header_idx + 16'd1);

assign and_ln414_1_fu_321_p2 = (xor_ln414_fu_315_p2 & header_header_V);

assign and_ln414_2_fu_327_p2 = (select_ln414_1_fu_285_p3 & and_ln414_fu_309_p2);

assign and_ln414_fu_309_p2 = (select_ln414_3_fu_301_p3 & select_ln414_2_fu_293_p3);

assign and_ln870_fu_416_p2 = (xor_ln870_fu_410_p2 & regSubNetMask_dout);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((regDefaultGateway_empty_n == 1'b0) | (regSubNetMask_empty_n == 1'b0) | ((ap_predicate_op77_write_state3 == 1'b1) & (dataStreamBuffer0_full_n == 1'b0)) | ((ap_predicate_op76_write_state3 == 1'b1) & (dataStreamBuffer0_full_n == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((tmp_i_i_nbreadreq_fu_94_p3 == 1'd1) & (dataIn_internal_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter4 == 1'b1) & ((regslice_both_m_axis_arp_lookup_request_V_U_apdone_blk == 1'b1) | ((m_axis_arp_lookup_request_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op88_write_state5 == 1'b1)) | ((m_axis_arp_lookup_request_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op86_write_state5 == 1'b1)))) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (((m_axis_arp_lookup_request_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op85_write_state4 == 1'b1)) | ((m_axis_arp_lookup_request_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op84_write_state4 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((regDefaultGateway_empty_n == 1'b0) | (regSubNetMask_empty_n == 1'b0) | ((ap_predicate_op77_write_state3 == 1'b1) & (dataStreamBuffer0_full_n == 1'b0)) | ((ap_predicate_op76_write_state3 == 1'b1) & (dataStreamBuffer0_full_n == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((tmp_i_i_nbreadreq_fu_94_p3 == 1'd1) & (dataIn_internal_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter4 == 1'b1) & ((1'b1 == ap_block_state5_io) | (regslice_both_m_axis_arp_lookup_request_V_U_apdone_blk == 1'b1) | ((m_axis_arp_lookup_request_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op88_write_state5 == 1'b1)) | ((m_axis_arp_lookup_request_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op86_write_state5 == 1'b1)))) | ((ap_enable_reg_pp0_iter3 == 1'b1) & ((1'b1 == ap_block_state4_io) | ((m_axis_arp_lookup_request_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op85_write_state4 == 1'b1)) | ((m_axis_arp_lookup_request_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op84_write_state4 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((regDefaultGateway_empty_n == 1'b0) | (regSubNetMask_empty_n == 1'b0) | ((ap_predicate_op77_write_state3 == 1'b1) & (dataStreamBuffer0_full_n == 1'b0)) | ((ap_predicate_op76_write_state3 == 1'b1) & (dataStreamBuffer0_full_n == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((tmp_i_i_nbreadreq_fu_94_p3 == 1'd1) & (dataIn_internal_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter4 == 1'b1) & ((1'b1 == ap_block_state5_io) | (regslice_both_m_axis_arp_lookup_request_V_U_apdone_blk == 1'b1) | ((m_axis_arp_lookup_request_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op88_write_state5 == 1'b1)) | ((m_axis_arp_lookup_request_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op86_write_state5 == 1'b1)))) | ((ap_enable_reg_pp0_iter3 == 1'b1) & ((1'b1 == ap_block_state4_io) | ((m_axis_arp_lookup_request_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op85_write_state4 == 1'b1)) | ((m_axis_arp_lookup_request_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op84_write_state4 == 1'b1)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | ((tmp_i_i_nbreadreq_fu_94_p3 == 1'd1) & (dataIn_internal_empty_n == 1'b0)));
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = ((regDefaultGateway_empty_n == 1'b0) | (regSubNetMask_empty_n == 1'b0) | ((ap_predicate_op77_write_state3 == 1'b1) & (dataStreamBuffer0_full_n == 1'b0)) | ((ap_predicate_op76_write_state3 == 1'b1) & (dataStreamBuffer0_full_n == 1'b0)));
end

always @ (*) begin
    ap_block_state4_io = (((m_axis_arp_lookup_request_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op85_write_state4 == 1'b1)) | ((m_axis_arp_lookup_request_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op84_write_state4 == 1'b1)));
end

always @ (*) begin
    ap_block_state4_pp0_stage0_iter3 = (((m_axis_arp_lookup_request_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op85_write_state4 == 1'b1)) | ((m_axis_arp_lookup_request_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op84_write_state4 == 1'b1)));
end

always @ (*) begin
    ap_block_state5_io = (((m_axis_arp_lookup_request_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op88_write_state5 == 1'b1)) | ((m_axis_arp_lookup_request_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op86_write_state5 == 1'b1)));
end

always @ (*) begin
    ap_block_state5_pp0_stage0_iter4 = ((regslice_both_m_axis_arp_lookup_request_V_U_apdone_blk == 1'b1) | ((m_axis_arp_lookup_request_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op88_write_state5 == 1'b1)) | ((m_axis_arp_lookup_request_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op86_write_state5 == 1'b1)));
end

always @ (*) begin
    ap_condition_152 = ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

always @ (*) begin
    ap_condition_244 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_phi_reg_pp0_iter0_header_ready_flag_1_i_i_reg_166 = 'bx;

assign ap_phi_reg_pp0_iter0_metaWritten_flag_1_i_i_reg_199 = 'bx;

assign ap_phi_reg_pp0_iter0_p_Val2_8_reg_210 = 'bx;

assign ap_phi_reg_pp0_iter1_header_idx_new_0_i_i_reg_145 = 'bx;

assign ap_phi_reg_pp0_iter1_header_idx_new_1_i_i_reg_188 = 'bx;

assign ap_phi_reg_pp0_iter1_header_ready_flag_0_i_i_reg_134 = 'bx;

assign ap_phi_reg_pp0_iter1_header_ready_new_1_i_i_reg_177 = 'bx;

assign ap_phi_reg_pp0_iter1_metaWritten_flag_0_i_i_reg_155 = 'bx;

always @ (*) begin
    ap_predicate_op76_write_state3 = ((header_ready_load_reg_447 == 1'd0) & (tmp_i_i_reg_428_pp0_iter1_reg == 1'd1));
end

always @ (*) begin
    ap_predicate_op77_write_state3 = ((header_ready_load_reg_447 == 1'd1) & (tmp_i_i_reg_428_pp0_iter1_reg == 1'd1));
end

always @ (*) begin
    ap_predicate_op84_write_state4 = ((metaWritten_load_reg_461_pp0_iter2_reg == 1'd0) & (tmp_i_i_reg_428_pp0_iter2_reg == 1'd1) & (icmp_ln870_reg_475 == 1'd0));
end

always @ (*) begin
    ap_predicate_op85_write_state4 = ((metaWritten_load_reg_461_pp0_iter2_reg == 1'd0) & (tmp_i_i_reg_428_pp0_iter2_reg == 1'd1) & (icmp_ln870_reg_475 == 1'd1));
end

always @ (*) begin
    ap_predicate_op86_write_state5 = ((icmp_ln870_reg_475_pp0_iter3_reg == 1'd0) & (metaWritten_load_reg_461_pp0_iter3_reg == 1'd0) & (tmp_i_i_reg_428_pp0_iter3_reg == 1'd1));
end

always @ (*) begin
    ap_predicate_op88_write_state5 = ((icmp_ln870_reg_475_pp0_iter3_reg == 1'd1) & (metaWritten_load_reg_461_pp0_iter3_reg == 1'd0) & (tmp_i_i_reg_428_pp0_iter3_reg == 1'd1));
end

assign dataStreamBuffer0_din = dataIn_internal_read_reg_432_pp0_iter1_reg;

assign dstIpAddress_V_fu_400_p4 = {{ap_phi_reg_pp0_iter2_p_Val2_8_reg_210[159:128]}};

assign header_ready_load_load_fu_227_p1 = header_ready;

assign icmp_ln414_fu_250_p2 = ((shl_ln_fu_239_p3 > 25'd159) ? 1'b1 : 1'b0);

assign icmp_ln870_fu_422_p2 = ((and_ln870_fu_416_p2 == 32'd0) ? 1'b1 : 1'b0);

assign m_axis_arp_lookup_request_V_TVALID = regslice_both_m_axis_arp_lookup_request_V_U_vld_out;

assign metaWritten_load_load_fu_352_p1 = metaWritten;

assign or_ln67_1_fu_376_p2 = (tmp_last_V_reg_439 | ap_phi_mux_metaWritten_flag_0_i_i_phi_fu_158_p4);

assign or_ln67_fu_356_p2 = (tmp_last_V_reg_439 | ap_phi_mux_header_ready_flag_0_i_i_phi_fu_137_p4);

assign p_Result_s_fu_333_p2 = (and_ln414_2_fu_327_p2 | and_ln414_1_fu_321_p2);

assign select_ln414_1_fu_285_p3 = ((icmp_ln414_fu_250_p2[0:0] == 1'b1) ? tmp_fu_275_p4 : tmp_74_fu_247_p1);

assign select_ln414_2_fu_293_p3 = ((icmp_ln414_fu_250_p2[0:0] == 1'b1) ? 160'd730750818665451459101842416358141509827966271488 : 160'd1461501637330902918203684832716283019655932542975);

assign select_ln414_3_fu_301_p3 = ((icmp_ln414_fu_250_p2[0:0] == 1'b1) ? 160'd1 : 160'd1461501637330902918203684832716283019655932542975);

assign select_ln414_fu_267_p3 = ((icmp_ln414_fu_250_p2[0:0] == 1'b1) ? st_fu_259_p3 : tmp_74_fu_247_p1);

assign select_ln67_fu_368_p3 = ((tmp_last_V_reg_439[0:0] == 1'b1) ? 16'd0 : ap_phi_mux_header_idx_new_0_i_i_phi_fu_148_p4);

assign shl_ln_fu_239_p3 = {{header_idx}, {9'd0}};

assign st_fu_259_p3 = {{trunc_ln414_fu_256_p1}, {159'd0}};

assign tmp_74_fu_247_p1 = dataIn_internal_read_reg_432[159:0];

integer ap_tvar_int_0;

always @ (select_ln414_fu_267_p3) begin
    for (ap_tvar_int_0 = 160 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 159 - 0) begin
            tmp_fu_275_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            tmp_fu_275_p4[ap_tvar_int_0] = select_ln414_fu_267_p3[159 - ap_tvar_int_0];
        end
    end
end

assign tmp_i_i_nbreadreq_fu_94_p3 = dataIn_internal_empty_n;

assign trunc_ln414_fu_256_p1 = dataIn_internal_read_reg_432[0:0];

assign xor_ln414_fu_315_p2 = (160'd1461501637330902918203684832716283019655932542975 ^ and_ln414_fu_309_p2);

assign xor_ln67_fu_362_p2 = (tmp_last_V_reg_439 ^ 1'd1);

assign xor_ln870_fu_410_p2 = (regDefaultGateway_dout ^ dstIpAddress_V_fu_400_p4);

endmodule //mac_ip_encode_top_extract_ip_address_512_s