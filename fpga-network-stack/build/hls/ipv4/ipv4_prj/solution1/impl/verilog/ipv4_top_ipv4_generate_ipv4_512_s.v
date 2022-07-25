// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module ipv4_top_ipv4_generate_ipv4_512_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        local_ipv4_address_dout,
        local_ipv4_address_empty_n,
        local_ipv4_address_read,
        protocol_dout,
        protocol_empty_n,
        protocol_read,
        tx_shift2ipv4Fifo_dout,
        tx_shift2ipv4Fifo_empty_n,
        tx_shift2ipv4Fifo_read,
        s_axis_tx_meta_V_TVALID,
        m_axis_tx_data_internal_din,
        m_axis_tx_data_internal_full_n,
        m_axis_tx_data_internal_write,
        s_axis_tx_meta_V_TDATA,
        s_axis_tx_meta_V_TREADY
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
parameter    ap_const_lv512_lc_2 = 512'd0;
parameter    ap_const_lv16_0 = 16'd0;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] local_ipv4_address_dout;
input   local_ipv4_address_empty_n;
output   local_ipv4_address_read;
input  [7:0] protocol_dout;
input   protocol_empty_n;
output   protocol_read;
input  [1023:0] tx_shift2ipv4Fifo_dout;
input   tx_shift2ipv4Fifo_empty_n;
output   tx_shift2ipv4Fifo_read;
input   s_axis_tx_meta_V_TVALID;
output  [1023:0] m_axis_tx_data_internal_din;
input   m_axis_tx_data_internal_full_n;
output   m_axis_tx_data_internal_write;
input  [63:0] s_axis_tx_meta_V_TDATA;
output   s_axis_tx_meta_V_TREADY;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg local_ipv4_address_read;
reg protocol_read;
reg tx_shift2ipv4Fifo_read;
reg[1023:0] m_axis_tx_data_internal_din;
reg m_axis_tx_data_internal_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [1:0] gi_state_load_load_fu_224_p1;
wire   [0:0] grp_nbreadreq_fu_144_p3;
reg    ap_predicate_op28_read_state1;
reg    ap_predicate_op35_read_state1;
wire   [0:0] tmp_i_i_nbreadreq_fu_158_p3;
reg    ap_predicate_op61_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [1:0] gi_state_load_reg_476;
reg   [0:0] tmp_1_i_i_reg_480;
reg    ap_predicate_op77_write_state2;
reg   [0:0] tmp_i_i_50_reg_492;
reg    ap_predicate_op81_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg   [1:0] gi_state;
reg   [15:0] header_idx_1;
reg   [159:0] header_header_V_1;
reg    s_axis_tx_meta_V_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    local_ipv4_address_blk_n;
reg    protocol_blk_n;
reg    m_axis_tx_data_internal_blk_n;
reg    tx_shift2ipv4Fifo_blk_n;
reg   [1023:0] tx_shift2ipv4Fifo_read_1_reg_484;
wire   [511:0] currWord_data_V_fu_243_p1;
wire   [511:0] p_Result_19_fu_261_p5;
wire   [0:0] icmp_ln82_1_fu_255_p2;
reg   [64:0] tmp_reg_509;
wire   [511:0] p_Result_18_fu_317_p5;
wire   [0:0] icmp_ln82_fu_311_p2;
reg    ap_block_pp0_stage0_subdone;
wire   [511:0] ap_phi_reg_pp0_iter0_currWord_data_V_3_reg_179;
reg   [511:0] ap_phi_reg_pp0_iter1_currWord_data_V_3_reg_179;
wire   [511:0] ap_phi_reg_pp0_iter0_currWord_data_V_1_reg_188;
reg   [511:0] ap_phi_reg_pp0_iter1_currWord_data_V_1_reg_188;
wire   [0:0] grp_fu_199_p3;
wire   [1:0] select_ln222_cast_i_i_fu_289_p3;
wire   [15:0] grp_fu_207_p2;
wire   [159:0] p_Result_s_fu_429_p5;
reg    ap_block_pp0_stage0_01001;
wire   [1023:0] zext_ln174_1_fu_454_p1;
wire   [1023:0] zext_ln174_fu_471_p1;
wire   [24:0] shl_ln76_1_fu_247_p3;
wire   [0:0] xor_ln222_fu_283_p2;
wire   [24:0] shl_ln_fu_303_p3;
wire   [15:0] meta_length_V_fu_333_p4;
wire   [15:0] len_V_fu_349_p2;
wire   [7:0] p_Result_i_i_fu_355_p4;
wire   [15:0] p_Result_13_fu_365_p5;
wire   [7:0] trunc_ln674_fu_377_p1;
wire   [15:0] p_Result_14_fu_381_p5;
wire   [159:0] p_Result_15_fu_393_p5;
wire   [31:0] meta_their_address_V_fu_329_p1;
wire   [159:0] p_Result_16_fu_405_p5;
wire   [159:0] p_Result_17_fu_417_p5;
wire   [576:0] tmp_1_fu_447_p3;
wire   [512:0] or_ln_fu_459_p3;
wire  signed [543:0] sext_ln174_fu_467_p1;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
wire    regslice_both_s_axis_tx_meta_V_U_apdone_blk;
wire   [63:0] s_axis_tx_meta_V_TDATA_int_regslice;
wire    s_axis_tx_meta_V_TVALID_int_regslice;
reg    s_axis_tx_meta_V_TREADY_int_regslice;
wire    regslice_both_s_axis_tx_meta_V_U_ack_in;
reg    ap_condition_116;
reg    ap_condition_166;
reg    ap_condition_188;
reg    ap_condition_222;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 gi_state = 2'd0;
#0 header_idx_1 = 16'd0;
#0 header_header_V_1 = 160'd1180591620717411303493;
end

ipv4_top_regslice_both #(
    .DataWidth( 64 ))
regslice_both_s_axis_tx_meta_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(s_axis_tx_meta_V_TDATA),
    .vld_in(s_axis_tx_meta_V_TVALID),
    .ack_in(regslice_both_s_axis_tx_meta_V_U_ack_in),
    .data_out(s_axis_tx_meta_V_TDATA_int_regslice),
    .vld_out(s_axis_tx_meta_V_TVALID_int_regslice),
    .ack_out(s_axis_tx_meta_V_TREADY_int_regslice),
    .apdone_blk(regslice_both_s_axis_tx_meta_V_U_apdone_blk)
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
    if ((1'b1 == ap_condition_116)) begin
        if (((gi_state_load_load_fu_224_p1 == 2'd1) & (icmp_ln82_fu_311_p2 == 1'd1))) begin
            ap_phi_reg_pp0_iter1_currWord_data_V_1_reg_188 <= p_Result_18_fu_317_p5;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_currWord_data_V_1_reg_188 <= ap_phi_reg_pp0_iter0_currWord_data_V_1_reg_188;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_116)) begin
        if ((1'b1 == ap_condition_188)) begin
            ap_phi_reg_pp0_iter1_currWord_data_V_3_reg_179 <= currWord_data_V_fu_243_p1;
        end else if ((1'b1 == ap_condition_166)) begin
            ap_phi_reg_pp0_iter1_currWord_data_V_3_reg_179 <= p_Result_19_fu_261_p5;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_currWord_data_V_3_reg_179 <= ap_phi_reg_pp0_iter0_currWord_data_V_3_reg_179;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((((tmp_i_i_nbreadreq_fu_158_p3 == 1'd1) & (gi_state == 2'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((gi_state_load_load_fu_224_p1 == 2'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        gi_state <= 2'd2;
    end else if (((grp_nbreadreq_fu_144_p3 == 1'd1) & (gi_state == 2'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        gi_state <= select_ln222_cast_i_i_fu_289_p3;
    end else if (((grp_nbreadreq_fu_144_p3 == 1'd1) & (gi_state == 2'd3) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (grp_fu_199_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        gi_state <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_i_i_nbreadreq_fu_158_p3 == 1'd1) & (gi_state == 2'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        header_idx_1 <= 16'd0;
    end else if ((((grp_nbreadreq_fu_144_p3 == 1'd1) & (gi_state == 2'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln82_1_fu_255_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((gi_state_load_load_fu_224_p1 == 2'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln82_fu_311_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        header_idx_1 <= grp_fu_207_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        gi_state_load_reg_476 <= gi_state;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_i_i_nbreadreq_fu_158_p3 == 1'd1) & (gi_state == 2'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        header_header_V_1 <= p_Result_s_fu_429_p5;
    end
end

always @ (posedge ap_clk) begin
    if (((gi_state == 2'd3) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_1_i_i_reg_480 <= grp_nbreadreq_fu_144_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((gi_state == 2'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_i_i_50_reg_492 <= grp_nbreadreq_fu_144_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_nbreadreq_fu_144_p3 == 1'd1) & (gi_state == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_reg_509 <= {{tx_shift2ipv4Fifo_dout[576:512]}};
    end
end

always @ (posedge ap_clk) begin
    if (((ap_predicate_op28_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tx_shift2ipv4Fifo_read_1_reg_484 <= tx_shift2ipv4Fifo_dout;
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
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0))) begin
        local_ipv4_address_blk_n = local_ipv4_address_empty_n;
    end else begin
        local_ipv4_address_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        local_ipv4_address_read = 1'b1;
    end else begin
        local_ipv4_address_read = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_predicate_op77_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((gi_state_load_reg_476 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_predicate_op81_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        m_axis_tx_data_internal_blk_n = m_axis_tx_data_internal_full_n;
    end else begin
        m_axis_tx_data_internal_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_222)) begin
        if ((gi_state_load_reg_476 == 2'd1)) begin
            m_axis_tx_data_internal_din = zext_ln174_fu_471_p1;
        end else if ((ap_predicate_op81_write_state2 == 1'b1)) begin
            m_axis_tx_data_internal_din = zext_ln174_1_fu_454_p1;
        end else if ((ap_predicate_op77_write_state2 == 1'b1)) begin
            m_axis_tx_data_internal_din = tx_shift2ipv4Fifo_read_1_reg_484;
        end else begin
            m_axis_tx_data_internal_din = 'bx;
        end
    end else begin
        m_axis_tx_data_internal_din = 'bx;
    end
end

always @ (*) begin
    if ((((ap_predicate_op77_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((gi_state_load_reg_476 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op81_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        m_axis_tx_data_internal_write = 1'b1;
    end else begin
        m_axis_tx_data_internal_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0))) begin
        protocol_blk_n = protocol_empty_n;
    end else begin
        protocol_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        protocol_read = 1'b1;
    end else begin
        protocol_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_predicate_op61_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0))) begin
        s_axis_tx_meta_V_TDATA_blk_n = s_axis_tx_meta_V_TVALID_int_regslice;
    end else begin
        s_axis_tx_meta_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op61_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        s_axis_tx_meta_V_TREADY_int_regslice = 1'b1;
    end else begin
        s_axis_tx_meta_V_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_predicate_op35_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0)) | ((ap_predicate_op28_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0)))) begin
        tx_shift2ipv4Fifo_blk_n = tx_shift2ipv4Fifo_empty_n;
    end else begin
        tx_shift2ipv4Fifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_predicate_op35_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op28_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        tx_shift2ipv4Fifo_read = 1'b1;
    end else begin
        tx_shift2ipv4Fifo_read = 1'b0;
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
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((protocol_empty_n == 1'b0) | (local_ipv4_address_empty_n == 1'b0) | (ap_done_reg == 1'b1) | ((ap_predicate_op61_read_state1 == 1'b1) & (s_axis_tx_meta_V_TVALID_int_regslice == 1'b0)) | ((ap_predicate_op35_read_state1 == 1'b1) & (tx_shift2ipv4Fifo_empty_n == 1'b0)) | ((ap_predicate_op28_read_state1 == 1'b1) & (tx_shift2ipv4Fifo_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ap_predicate_op77_write_state2 == 1'b1) & (m_axis_tx_data_internal_full_n == 1'b0)) | ((gi_state_load_reg_476 == 2'd1) & (m_axis_tx_data_internal_full_n == 1'b0)) | ((ap_predicate_op81_write_state2 == 1'b1) & (m_axis_tx_data_internal_full_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((protocol_empty_n == 1'b0) | (local_ipv4_address_empty_n == 1'b0) | (ap_done_reg == 1'b1) | ((ap_predicate_op61_read_state1 == 1'b1) & (s_axis_tx_meta_V_TVALID_int_regslice == 1'b0)) | ((ap_predicate_op35_read_state1 == 1'b1) & (tx_shift2ipv4Fifo_empty_n == 1'b0)) | ((ap_predicate_op28_read_state1 == 1'b1) & (tx_shift2ipv4Fifo_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ap_predicate_op77_write_state2 == 1'b1) & (m_axis_tx_data_internal_full_n == 1'b0)) | ((gi_state_load_reg_476 == 2'd1) & (m_axis_tx_data_internal_full_n == 1'b0)) | ((ap_predicate_op81_write_state2 == 1'b1) & (m_axis_tx_data_internal_full_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((protocol_empty_n == 1'b0) | (local_ipv4_address_empty_n == 1'b0) | (ap_done_reg == 1'b1) | ((ap_predicate_op61_read_state1 == 1'b1) & (s_axis_tx_meta_V_TVALID_int_regslice == 1'b0)) | ((ap_predicate_op35_read_state1 == 1'b1) & (tx_shift2ipv4Fifo_empty_n == 1'b0)) | ((ap_predicate_op28_read_state1 == 1'b1) & (tx_shift2ipv4Fifo_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ap_predicate_op77_write_state2 == 1'b1) & (m_axis_tx_data_internal_full_n == 1'b0)) | ((gi_state_load_reg_476 == 2'd1) & (m_axis_tx_data_internal_full_n == 1'b0)) | ((ap_predicate_op81_write_state2 == 1'b1) & (m_axis_tx_data_internal_full_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((protocol_empty_n == 1'b0) | (local_ipv4_address_empty_n == 1'b0) | (ap_done_reg == 1'b1) | ((ap_predicate_op61_read_state1 == 1'b1) & (s_axis_tx_meta_V_TVALID_int_regslice == 1'b0)) | ((ap_predicate_op35_read_state1 == 1'b1) & (tx_shift2ipv4Fifo_empty_n == 1'b0)) | ((ap_predicate_op28_read_state1 == 1'b1) & (tx_shift2ipv4Fifo_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((ap_predicate_op77_write_state2 == 1'b1) & (m_axis_tx_data_internal_full_n == 1'b0)) | ((gi_state_load_reg_476 == 2'd1) & (m_axis_tx_data_internal_full_n == 1'b0)) | ((ap_predicate_op81_write_state2 == 1'b1) & (m_axis_tx_data_internal_full_n == 1'b0)));
end

always @ (*) begin
    ap_condition_116 = ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

always @ (*) begin
    ap_condition_166 = ((grp_nbreadreq_fu_144_p3 == 1'd1) & (gi_state == 2'd2) & (icmp_ln82_1_fu_255_p2 == 1'd1));
end

always @ (*) begin
    ap_condition_188 = ((grp_nbreadreq_fu_144_p3 == 1'd1) & (gi_state == 2'd2) & (icmp_ln82_1_fu_255_p2 == 1'd0));
end

always @ (*) begin
    ap_condition_222 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_01001));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_phi_reg_pp0_iter0_currWord_data_V_1_reg_188 = 'bx;

assign ap_phi_reg_pp0_iter0_currWord_data_V_3_reg_179 = 'bx;

always @ (*) begin
    ap_predicate_op28_read_state1 = ((grp_nbreadreq_fu_144_p3 == 1'd1) & (gi_state == 2'd3));
end

always @ (*) begin
    ap_predicate_op35_read_state1 = ((grp_nbreadreq_fu_144_p3 == 1'd1) & (gi_state == 2'd2));
end

always @ (*) begin
    ap_predicate_op61_read_state1 = ((tmp_i_i_nbreadreq_fu_158_p3 == 1'd1) & (gi_state == 2'd0));
end

always @ (*) begin
    ap_predicate_op77_write_state2 = ((tmp_1_i_i_reg_480 == 1'd1) & (gi_state_load_reg_476 == 2'd3));
end

always @ (*) begin
    ap_predicate_op81_write_state2 = ((tmp_i_i_50_reg_492 == 1'd1) & (gi_state_load_reg_476 == 2'd2));
end

assign currWord_data_V_fu_243_p1 = tx_shift2ipv4Fifo_dout[511:0];

assign gi_state_load_load_fu_224_p1 = gi_state;

assign grp_fu_199_p3 = tx_shift2ipv4Fifo_dout[32'd576];

assign grp_fu_207_p2 = (header_idx_1 + 16'd1);

assign grp_nbreadreq_fu_144_p3 = tx_shift2ipv4Fifo_empty_n;

assign icmp_ln82_1_fu_255_p2 = ((shl_ln76_1_fu_247_p3 < 25'd160) ? 1'b1 : 1'b0);

assign icmp_ln82_fu_311_p2 = ((shl_ln_fu_303_p3 < 25'd160) ? 1'b1 : 1'b0);

assign len_V_fu_349_p2 = (meta_length_V_fu_333_p4 + 16'd20);

assign meta_length_V_fu_333_p4 = {{s_axis_tx_meta_V_TDATA_int_regslice[47:32]}};

assign meta_their_address_V_fu_329_p1 = s_axis_tx_meta_V_TDATA_int_regslice[31:0];

assign or_ln_fu_459_p3 = {{1'd1}, {ap_phi_reg_pp0_iter1_currWord_data_V_1_reg_188}};

assign p_Result_13_fu_365_p5 = {{ap_const_lv16_0[15:8]}, {p_Result_i_i_fu_355_p4}};

assign p_Result_14_fu_381_p5 = {{trunc_ln674_fu_377_p1}, {p_Result_13_fu_365_p5[7:0]}};

assign p_Result_15_fu_393_p5 = {{header_header_V_1[159:32]}, {p_Result_14_fu_381_p5}, {header_header_V_1[15:0]}};

assign p_Result_16_fu_405_p5 = {{meta_their_address_V_fu_329_p1}, {p_Result_15_fu_393_p5[127:0]}};

assign p_Result_17_fu_417_p5 = {{p_Result_16_fu_405_p5[159:128]}, {local_ipv4_address_dout}, {p_Result_16_fu_405_p5[95:0]}};

assign p_Result_18_fu_317_p5 = {{ap_const_lv512_lc_2[511:160]}, {header_header_V_1}};

assign p_Result_19_fu_261_p5 = {{currWord_data_V_fu_243_p1[511:160]}, {header_header_V_1}};

assign p_Result_i_i_fu_355_p4 = {{len_V_fu_349_p2[15:8]}};

assign p_Result_s_fu_429_p5 = {{p_Result_17_fu_417_p5[159:80]}, {protocol_dout}, {p_Result_17_fu_417_p5[71:0]}};

assign s_axis_tx_meta_V_TREADY = regslice_both_s_axis_tx_meta_V_U_ack_in;

assign select_ln222_cast_i_i_fu_289_p3 = ((xor_ln222_fu_283_p2[0:0] == 1'b1) ? 2'd3 : 2'd0);

assign sext_ln174_fu_467_p1 = $signed(or_ln_fu_459_p3);

assign shl_ln76_1_fu_247_p3 = {{header_idx_1}, {9'd0}};

assign shl_ln_fu_303_p3 = {{header_idx_1}, {9'd0}};

assign tmp_1_fu_447_p3 = {{tmp_reg_509}, {ap_phi_reg_pp0_iter1_currWord_data_V_3_reg_179}};

assign tmp_i_i_nbreadreq_fu_158_p3 = s_axis_tx_meta_V_TVALID_int_regslice;

assign trunc_ln674_fu_377_p1 = len_V_fu_349_p2[7:0];

assign xor_ln222_fu_283_p2 = (grp_fu_199_p3 ^ 1'd1);

assign zext_ln174_1_fu_454_p1 = tmp_1_fu_447_p3;

assign zext_ln174_fu_471_p1 = $unsigned(sext_ln174_fu_467_p1);

endmodule //ipv4_top_ipv4_generate_ipv4_512_s