// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module udp_top_generate_udp_512_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        tx_shift2udpFifo_dout,
        tx_shift2udpFifo_empty_n,
        tx_shift2udpFifo_read,
        tx_udpMetaFifo_dout,
        tx_udpMetaFifo_empty_n,
        tx_udpMetaFifo_read,
        m_axis_tx_data_internal_din,
        m_axis_tx_data_internal_full_n,
        m_axis_tx_data_internal_write
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
parameter    ap_const_lv512_lc_1 = 512'd0;
parameter    ap_const_lv16_0 = 16'd0;



input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [1023:0] tx_shift2udpFifo_dout;
input   tx_shift2udpFifo_empty_n;
output   tx_shift2udpFifo_read;
input  [63:0] tx_udpMetaFifo_dout;
input   tx_udpMetaFifo_empty_n;
output   tx_udpMetaFifo_read;
output  [1023:0] m_axis_tx_data_internal_din;
input   m_axis_tx_data_internal_full_n;
output   m_axis_tx_data_internal_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg tx_shift2udpFifo_read;
reg tx_udpMetaFifo_read;
reg[1023:0] m_axis_tx_data_internal_din;
reg m_axis_tx_data_internal_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [1:0] state_load_load_fu_182_p1;
wire   [0:0] grp_nbreadreq_fu_102_p3;
reg    ap_predicate_op21_read_state1;
reg    ap_predicate_op28_read_state1;
wire   [0:0] tmp_i_nbreadreq_fu_116_p3;
reg    ap_predicate_op54_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [1:0] state_load_reg_490;
reg   [0:0] tmp_1_i_reg_494;
reg    ap_predicate_op74_write_state2;
reg   [0:0] tmp_i_46_reg_506;
reg    ap_predicate_op78_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg   [1:0] state;
reg   [15:0] header_idx;
reg   [63:0] header_header_V;
reg    tx_udpMetaFifo_blk_n;
wire    ap_block_pp0_stage0;
reg    m_axis_tx_data_internal_blk_n;
reg    tx_shift2udpFifo_blk_n;
reg   [1023:0] tx_shift2udpFifo_read_1_reg_498;
wire   [511:0] currWord_data_V_fu_201_p1;
wire   [511:0] p_Result_27_fu_219_p5;
wire   [0:0] icmp_ln82_1_fu_213_p2;
reg   [64:0] tmp_reg_523;
wire   [511:0] p_Result_26_fu_275_p5;
wire   [0:0] icmp_ln82_fu_269_p2;
reg    ap_block_pp0_stage0_subdone;
wire   [511:0] ap_phi_reg_pp0_iter0_currWord_data_V_3_reg_137;
reg   [511:0] ap_phi_reg_pp0_iter1_currWord_data_V_3_reg_137;
wire   [511:0] ap_phi_reg_pp0_iter0_currWord_data_V_1_reg_146;
reg   [511:0] ap_phi_reg_pp0_iter1_currWord_data_V_1_reg_146;
wire   [0:0] grp_fu_157_p3;
wire   [1:0] select_ln132_cast_i_fu_247_p3;
wire   [15:0] grp_fu_165_p2;
wire   [63:0] p_Result_s_fu_443_p5;
reg    ap_block_pp0_stage0_01001;
wire   [1023:0] zext_ln174_3_fu_468_p1;
wire   [1023:0] zext_ln174_fu_485_p1;
wire   [18:0] tmp_6_fu_205_p3;
wire   [0:0] xor_ln132_fu_241_p2;
wire   [18:0] tmp_4_fu_261_p3;
wire   [7:0] p_Result_i_fu_293_p4;
wire   [15:0] p_Result_18_fu_303_p5;
wire   [7:0] trunc_ln674_fu_315_p1;
wire   [15:0] p_Result_19_fu_319_p5;
wire   [7:0] p_Result_26_i_fu_343_p4;
wire   [15:0] p_Result_21_fu_353_p5;
wire   [7:0] p_Result_28_i_fu_365_p4;
wire   [63:0] p_Result_20_fu_331_p5;
wire   [15:0] p_Result_22_fu_375_p5;
wire   [7:0] p_Result_31_i_fu_399_p4;
wire   [15:0] p_Result_24_fu_409_p5;
wire   [7:0] p_Result_33_i_fu_421_p4;
wire   [63:0] p_Result_23_fu_387_p5;
wire   [15:0] p_Result_25_fu_431_p5;
wire   [576:0] tmp_3_fu_461_p3;
wire   [512:0] or_ln_fu_473_p3;
wire  signed [543:0] sext_ln174_fu_481_p1;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_107;
reg    ap_condition_152;
reg    ap_condition_174;
reg    ap_condition_206;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 state = 2'd0;
#0 header_idx = 16'd0;
#0 header_header_V = 64'd0;
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
    if ((1'b1 == ap_condition_107)) begin
        if (((state_load_load_fu_182_p1 == 2'd1) & (icmp_ln82_fu_269_p2 == 1'd1))) begin
            ap_phi_reg_pp0_iter1_currWord_data_V_1_reg_146 <= p_Result_26_fu_275_p5;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_currWord_data_V_1_reg_146 <= ap_phi_reg_pp0_iter0_currWord_data_V_1_reg_146;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_107)) begin
        if ((1'b1 == ap_condition_174)) begin
            ap_phi_reg_pp0_iter1_currWord_data_V_3_reg_137 <= currWord_data_V_fu_201_p1;
        end else if ((1'b1 == ap_condition_152)) begin
            ap_phi_reg_pp0_iter1_currWord_data_V_3_reg_137 <= p_Result_27_fu_219_p5;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_currWord_data_V_3_reg_137 <= ap_phi_reg_pp0_iter0_currWord_data_V_3_reg_137;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_i_nbreadreq_fu_116_p3 == 1'd1) & (state == 2'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        header_idx <= 16'd0;
    end else if ((((grp_nbreadreq_fu_102_p3 == 1'd1) & (state == 2'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln82_1_fu_213_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((state_load_load_fu_182_p1 == 2'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln82_fu_269_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        header_idx <= grp_fu_165_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((((tmp_i_nbreadreq_fu_116_p3 == 1'd1) & (state == 2'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((state_load_load_fu_182_p1 == 2'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        state <= 2'd2;
    end else if (((grp_nbreadreq_fu_102_p3 == 1'd1) & (state == 2'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        state <= select_ln132_cast_i_fu_247_p3;
    end else if (((grp_nbreadreq_fu_102_p3 == 1'd1) & (state == 2'd3) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (grp_fu_157_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        state <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_i_nbreadreq_fu_116_p3 == 1'd1) & (state == 2'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        header_header_V <= p_Result_s_fu_443_p5;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        state_load_reg_490 <= state;
    end
end

always @ (posedge ap_clk) begin
    if (((state == 2'd3) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_1_i_reg_494 <= grp_nbreadreq_fu_102_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((state == 2'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_i_46_reg_506 <= grp_nbreadreq_fu_102_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_nbreadreq_fu_102_p3 == 1'd1) & (state == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_reg_523 <= {{tx_shift2udpFifo_dout[576:512]}};
    end
end

always @ (posedge ap_clk) begin
    if (((ap_predicate_op21_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tx_shift2udpFifo_read_1_reg_498 <= tx_shift2udpFifo_dout;
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
    if ((((state_load_reg_490 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_predicate_op78_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_predicate_op74_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        m_axis_tx_data_internal_blk_n = m_axis_tx_data_internal_full_n;
    end else begin
        m_axis_tx_data_internal_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_206)) begin
        if ((state_load_reg_490 == 2'd1)) begin
            m_axis_tx_data_internal_din = zext_ln174_fu_485_p1;
        end else if ((ap_predicate_op78_write_state2 == 1'b1)) begin
            m_axis_tx_data_internal_din = zext_ln174_3_fu_468_p1;
        end else if ((ap_predicate_op74_write_state2 == 1'b1)) begin
            m_axis_tx_data_internal_din = tx_shift2udpFifo_read_1_reg_498;
        end else begin
            m_axis_tx_data_internal_din = 'bx;
        end
    end else begin
        m_axis_tx_data_internal_din = 'bx;
    end
end

always @ (*) begin
    if ((((state_load_reg_490 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op78_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op74_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        m_axis_tx_data_internal_write = 1'b1;
    end else begin
        m_axis_tx_data_internal_write = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_predicate_op28_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_done_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_predicate_op21_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_done_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0)))) begin
        tx_shift2udpFifo_blk_n = tx_shift2udpFifo_empty_n;
    end else begin
        tx_shift2udpFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_predicate_op28_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op21_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        tx_shift2udpFifo_read = 1'b1;
    end else begin
        tx_shift2udpFifo_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_predicate_op54_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_done_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0))) begin
        tx_udpMetaFifo_blk_n = tx_udpMetaFifo_empty_n;
    end else begin
        tx_udpMetaFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op54_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tx_udpMetaFifo_read = 1'b1;
    end else begin
        tx_udpMetaFifo_read = 1'b0;
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
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((state_load_reg_490 == 2'd1) & (m_axis_tx_data_internal_full_n == 1'b0)) | ((ap_predicate_op78_write_state2 == 1'b1) & (m_axis_tx_data_internal_full_n == 1'b0)) | ((ap_predicate_op74_write_state2 == 1'b1) & (m_axis_tx_data_internal_full_n == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op54_read_state1 == 1'b1) & (tx_udpMetaFifo_empty_n == 1'b0)) | ((ap_predicate_op28_read_state1 == 1'b1) & (tx_shift2udpFifo_empty_n == 1'b0)) | ((ap_predicate_op21_read_state1 == 1'b1) & (tx_shift2udpFifo_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((state_load_reg_490 == 2'd1) & (m_axis_tx_data_internal_full_n == 1'b0)) | ((ap_predicate_op78_write_state2 == 1'b1) & (m_axis_tx_data_internal_full_n == 1'b0)) | ((ap_predicate_op74_write_state2 == 1'b1) & (m_axis_tx_data_internal_full_n == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op54_read_state1 == 1'b1) & (tx_udpMetaFifo_empty_n == 1'b0)) | ((ap_predicate_op28_read_state1 == 1'b1) & (tx_shift2udpFifo_empty_n == 1'b0)) | ((ap_predicate_op21_read_state1 == 1'b1) & (tx_shift2udpFifo_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((state_load_reg_490 == 2'd1) & (m_axis_tx_data_internal_full_n == 1'b0)) | ((ap_predicate_op78_write_state2 == 1'b1) & (m_axis_tx_data_internal_full_n == 1'b0)) | ((ap_predicate_op74_write_state2 == 1'b1) & (m_axis_tx_data_internal_full_n == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op54_read_state1 == 1'b1) & (tx_udpMetaFifo_empty_n == 1'b0)) | ((ap_predicate_op28_read_state1 == 1'b1) & (tx_shift2udpFifo_empty_n == 1'b0)) | ((ap_predicate_op21_read_state1 == 1'b1) & (tx_shift2udpFifo_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | ((ap_predicate_op54_read_state1 == 1'b1) & (tx_udpMetaFifo_empty_n == 1'b0)) | ((ap_predicate_op28_read_state1 == 1'b1) & (tx_shift2udpFifo_empty_n == 1'b0)) | ((ap_predicate_op21_read_state1 == 1'b1) & (tx_shift2udpFifo_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((state_load_reg_490 == 2'd1) & (m_axis_tx_data_internal_full_n == 1'b0)) | ((ap_predicate_op78_write_state2 == 1'b1) & (m_axis_tx_data_internal_full_n == 1'b0)) | ((ap_predicate_op74_write_state2 == 1'b1) & (m_axis_tx_data_internal_full_n == 1'b0)));
end

always @ (*) begin
    ap_condition_107 = ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

always @ (*) begin
    ap_condition_152 = ((grp_nbreadreq_fu_102_p3 == 1'd1) & (state == 2'd2) & (icmp_ln82_1_fu_213_p2 == 1'd1));
end

always @ (*) begin
    ap_condition_174 = ((grp_nbreadreq_fu_102_p3 == 1'd1) & (state == 2'd2) & (icmp_ln82_1_fu_213_p2 == 1'd0));
end

always @ (*) begin
    ap_condition_206 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_01001));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_phi_reg_pp0_iter0_currWord_data_V_1_reg_146 = 'bx;

assign ap_phi_reg_pp0_iter0_currWord_data_V_3_reg_137 = 'bx;

always @ (*) begin
    ap_predicate_op21_read_state1 = ((grp_nbreadreq_fu_102_p3 == 1'd1) & (state == 2'd3));
end

always @ (*) begin
    ap_predicate_op28_read_state1 = ((grp_nbreadreq_fu_102_p3 == 1'd1) & (state == 2'd2));
end

always @ (*) begin
    ap_predicate_op54_read_state1 = ((tmp_i_nbreadreq_fu_116_p3 == 1'd1) & (state == 2'd0));
end

always @ (*) begin
    ap_predicate_op74_write_state2 = ((tmp_1_i_reg_494 == 1'd1) & (state_load_reg_490 == 2'd3));
end

always @ (*) begin
    ap_predicate_op78_write_state2 = ((tmp_i_46_reg_506 == 1'd1) & (state_load_reg_490 == 2'd2));
end

assign currWord_data_V_fu_201_p1 = tx_shift2udpFifo_dout[511:0];

assign grp_fu_157_p3 = tx_shift2udpFifo_dout[32'd576];

assign grp_fu_165_p2 = (header_idx + 16'd1);

assign grp_nbreadreq_fu_102_p3 = tx_shift2udpFifo_empty_n;

assign icmp_ln82_1_fu_213_p2 = ((tmp_6_fu_205_p3 == 19'd0) ? 1'b1 : 1'b0);

assign icmp_ln82_fu_269_p2 = ((tmp_4_fu_261_p3 == 19'd0) ? 1'b1 : 1'b0);

assign or_ln_fu_473_p3 = {{1'd1}, {ap_phi_reg_pp0_iter1_currWord_data_V_1_reg_146}};

assign p_Result_18_fu_303_p5 = {{ap_const_lv16_0[15:8]}, {p_Result_i_fu_293_p4}};

assign p_Result_19_fu_319_p5 = {{trunc_ln674_fu_315_p1}, {p_Result_18_fu_303_p5[7:0]}};

assign p_Result_20_fu_331_p5 = {{header_header_V[63:32]}, {p_Result_19_fu_319_p5}, {header_header_V[15:0]}};

assign p_Result_21_fu_353_p5 = {{ap_const_lv16_0[15:8]}, {p_Result_26_i_fu_343_p4}};

assign p_Result_22_fu_375_p5 = {{p_Result_28_i_fu_365_p4}, {p_Result_21_fu_353_p5[7:0]}};

assign p_Result_23_fu_387_p5 = {{p_Result_20_fu_331_p5[63:16]}, {p_Result_22_fu_375_p5}};

assign p_Result_24_fu_409_p5 = {{ap_const_lv16_0[15:8]}, {p_Result_31_i_fu_399_p4}};

assign p_Result_25_fu_431_p5 = {{p_Result_33_i_fu_421_p4}, {p_Result_24_fu_409_p5[7:0]}};

assign p_Result_26_fu_275_p5 = {{ap_const_lv512_lc_1[511:64]}, {header_header_V}};

assign p_Result_26_i_fu_343_p4 = {{tx_udpMetaFifo_dout[31:24]}};

assign p_Result_27_fu_219_p5 = {{currWord_data_V_fu_201_p1[511:64]}, {header_header_V}};

assign p_Result_28_i_fu_365_p4 = {{tx_udpMetaFifo_dout[23:16]}};

assign p_Result_31_i_fu_399_p4 = {{tx_udpMetaFifo_dout[47:40]}};

assign p_Result_33_i_fu_421_p4 = {{tx_udpMetaFifo_dout[39:32]}};

assign p_Result_i_fu_293_p4 = {{tx_udpMetaFifo_dout[15:8]}};

assign p_Result_s_fu_443_p5 = {{p_Result_23_fu_387_p5[63:48]}, {p_Result_25_fu_431_p5}, {p_Result_23_fu_387_p5[31:0]}};

assign select_ln132_cast_i_fu_247_p3 = ((xor_ln132_fu_241_p2[0:0] == 1'b1) ? 2'd3 : 2'd0);

assign sext_ln174_fu_481_p1 = $signed(or_ln_fu_473_p3);

assign state_load_load_fu_182_p1 = state;

assign tmp_3_fu_461_p3 = {{tmp_reg_523}, {ap_phi_reg_pp0_iter1_currWord_data_V_3_reg_137}};

assign tmp_4_fu_261_p3 = {{header_idx}, {3'd0}};

assign tmp_6_fu_205_p3 = {{header_idx}, {3'd0}};

assign tmp_i_nbreadreq_fu_116_p3 = tx_udpMetaFifo_empty_n;

assign trunc_ln674_fu_315_p1 = tx_udpMetaFifo_dout[7:0];

assign xor_ln132_fu_241_p2 = (grp_fu_157_p3 ^ 1'd1);

assign zext_ln174_3_fu_468_p1 = tmp_3_fu_461_p3;

assign zext_ln174_fu_485_p1 = $unsigned(sext_ln174_fu_481_p1);

endmodule //udp_top_generate_udp_512_s