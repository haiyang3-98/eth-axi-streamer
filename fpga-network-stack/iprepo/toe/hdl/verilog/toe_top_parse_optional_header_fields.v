// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module toe_top_parse_optional_header_fields (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        rxEng_dataOffsetFifo_dout,
        rxEng_dataOffsetFifo_empty_n,
        rxEng_dataOffsetFifo_read,
        rxEng_optionalFieldsFifo_dout,
        rxEng_optionalFieldsFifo_empty_n,
        rxEng_optionalFieldsFifo_read,
        rxEng_winScaleFifo_din,
        rxEng_winScaleFifo_full_n,
        rxEng_winScaleFifo_write
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [3:0] rxEng_dataOffsetFifo_dout;
input   rxEng_dataOffsetFifo_empty_n;
output   rxEng_dataOffsetFifo_read;
input  [319:0] rxEng_optionalFieldsFifo_dout;
input   rxEng_optionalFieldsFifo_empty_n;
output   rxEng_optionalFieldsFifo_read;
output  [3:0] rxEng_winScaleFifo_din;
input   rxEng_winScaleFifo_full_n;
output   rxEng_winScaleFifo_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg rxEng_dataOffsetFifo_read;
reg rxEng_optionalFieldsFifo_read;
reg[3:0] rxEng_winScaleFifo_din;
reg rxEng_winScaleFifo_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [0:0] state_4_load_load_fu_120_p1;
wire   [0:0] tmp_i_nbreadreq_fu_62_p3;
wire   [0:0] tmp_i_276_nbreadreq_fu_70_p3;
reg    ap_predicate_op24_read_state1;
reg    ap_predicate_op26_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] state_4_load_reg_228;
reg   [7:0] optionKind_reg_238;
reg    ap_predicate_op52_write_state2;
reg    ap_predicate_op53_write_state2;
reg   [0:0] icmp_ln870_reg_247;
reg    ap_predicate_op54_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] state_4;
reg   [3:0] dataOffset_V_1;
reg   [319:0] fields_V;
reg    rxEng_dataOffsetFifo_blk_n;
wire    ap_block_pp0_stage0;
reg    rxEng_optionalFieldsFifo_blk_n;
reg    rxEng_winScaleFifo_blk_n;
wire   [7:0] optionKind_fu_150_p1;
reg   [3:0] p_03_reg_242;
wire   [0:0] icmp_ln870_fu_182_p2;
reg    ap_block_pp0_stage0_subdone;
reg   [7:0] ap_phi_mux_optionLength_V_1_phi_fu_101_p10;
wire   [7:0] optionLength_V_fu_154_p4;
wire   [7:0] ap_phi_reg_pp0_iter0_optionLength_V_1_reg_98;
wire   [3:0] sub_ln692_fu_192_p2;
wire   [319:0] r_fu_216_p2;
reg    ap_block_pp0_stage0_01001;
wire   [7:0] zext_ln870_fu_178_p1;
wire   [3:0] trunc_ln692_fu_188_p1;
wire   [10:0] shl_ln_fu_204_p3;
wire   [319:0] zext_ln799_fu_212_p1;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_47;
reg    ap_condition_109;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 state_4 = 1'd0;
#0 dataOffset_V_1 = 4'd0;
#0 fields_V = 320'd0;
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
    if ((1'b1 == ap_condition_109)) begin
        if ((state_4_load_load_fu_120_p1 == 1'd1)) begin
            dataOffset_V_1 <= sub_ln692_fu_192_p2;
        end else if ((1'b1 == ap_condition_47)) begin
            dataOffset_V_1 <= rxEng_dataOffsetFifo_dout;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_109)) begin
        if ((state_4_load_load_fu_120_p1 == 1'd1)) begin
            fields_V <= r_fu_216_p2;
        end else if ((1'b1 == ap_condition_47)) begin
            fields_V <= rxEng_optionalFieldsFifo_dout;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((~(optionKind_fu_150_p1 == 8'd1) & ~(optionKind_fu_150_p1 == 8'd0) & ~(optionKind_fu_150_p1 == 8'd3) & (state_4_load_load_fu_120_p1 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln870_fu_182_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((state_4_load_load_fu_120_p1 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (optionKind_fu_150_p1 == 8'd0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((state_4_load_load_fu_120_p1 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (optionKind_fu_150_p1 == 8'd3) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        state_4 <= 1'd0;
    end else if (((tmp_i_276_nbreadreq_fu_70_p3 == 1'd1) & (tmp_i_nbreadreq_fu_62_p3 == 1'd1) & (state_4 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        state_4 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if ((~(optionKind_fu_150_p1 == 8'd1) & ~(optionKind_fu_150_p1 == 8'd0) & ~(optionKind_fu_150_p1 == 8'd3) & (state_4_load_load_fu_120_p1 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln870_reg_247 <= icmp_ln870_fu_182_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((state_4_load_load_fu_120_p1 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        optionKind_reg_238 <= optionKind_fu_150_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((state_4_load_load_fu_120_p1 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (optionKind_fu_150_p1 == 8'd3) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_03_reg_242 <= {{fields_V[19:16]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        state_4_load_reg_228 <= state_4;
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
    if (((state_4_load_load_fu_120_p1 == 1'd1) & (optionKind_fu_150_p1 == 8'd1))) begin
        ap_phi_mux_optionLength_V_1_phi_fu_101_p10 = 8'd1;
    end else if (((~(optionKind_fu_150_p1 == 8'd1) & ~(optionKind_fu_150_p1 == 8'd0) & ~(optionKind_fu_150_p1 == 8'd3) & (state_4_load_load_fu_120_p1 == 1'd1) & (icmp_ln870_fu_182_p2 == 1'd0)) | (~(optionKind_fu_150_p1 == 8'd1) & ~(optionKind_fu_150_p1 == 8'd0) & ~(optionKind_fu_150_p1 == 8'd3) & (state_4_load_load_fu_120_p1 == 1'd1) & (icmp_ln870_fu_182_p2 == 1'd1)) | ((state_4_load_load_fu_120_p1 == 1'd1) & (optionKind_fu_150_p1 == 8'd0)) | ((state_4_load_load_fu_120_p1 == 1'd1) & (optionKind_fu_150_p1 == 8'd3)))) begin
        ap_phi_mux_optionLength_V_1_phi_fu_101_p10 = {{fields_V[15:8]}};
    end else begin
        ap_phi_mux_optionLength_V_1_phi_fu_101_p10 = ap_phi_reg_pp0_iter0_optionLength_V_1_reg_98;
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
    if (((ap_predicate_op24_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_done_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0))) begin
        rxEng_dataOffsetFifo_blk_n = rxEng_dataOffsetFifo_empty_n;
    end else begin
        rxEng_dataOffsetFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op24_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rxEng_dataOffsetFifo_read = 1'b1;
    end else begin
        rxEng_dataOffsetFifo_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_predicate_op26_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_done_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0))) begin
        rxEng_optionalFieldsFifo_blk_n = rxEng_optionalFieldsFifo_empty_n;
    end else begin
        rxEng_optionalFieldsFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op26_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rxEng_optionalFieldsFifo_read = 1'b1;
    end else begin
        rxEng_optionalFieldsFifo_read = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_predicate_op54_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_predicate_op53_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_predicate_op52_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        rxEng_winScaleFifo_blk_n = rxEng_winScaleFifo_full_n;
    end else begin
        rxEng_winScaleFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_predicate_op54_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_01001)) | ((ap_predicate_op53_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_01001)))) begin
        rxEng_winScaleFifo_din = 4'd0;
    end else if (((ap_predicate_op52_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        rxEng_winScaleFifo_din = p_03_reg_242;
    end else begin
        rxEng_winScaleFifo_din = 'bx;
    end
end

always @ (*) begin
    if ((((ap_predicate_op54_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op53_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op52_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        rxEng_winScaleFifo_write = 1'b1;
    end else begin
        rxEng_winScaleFifo_write = 1'b0;
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
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op26_read_state1 == 1'b1) & (rxEng_optionalFieldsFifo_empty_n == 1'b0)) | ((ap_predicate_op24_read_state1 == 1'b1) & (rxEng_dataOffsetFifo_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ap_predicate_op54_write_state2 == 1'b1) & (rxEng_winScaleFifo_full_n == 1'b0)) | ((ap_predicate_op53_write_state2 == 1'b1) & (rxEng_winScaleFifo_full_n == 1'b0)) | ((ap_predicate_op52_write_state2 == 1'b1) & (rxEng_winScaleFifo_full_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op26_read_state1 == 1'b1) & (rxEng_optionalFieldsFifo_empty_n == 1'b0)) | ((ap_predicate_op24_read_state1 == 1'b1) & (rxEng_dataOffsetFifo_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ap_predicate_op54_write_state2 == 1'b1) & (rxEng_winScaleFifo_full_n == 1'b0)) | ((ap_predicate_op53_write_state2 == 1'b1) & (rxEng_winScaleFifo_full_n == 1'b0)) | ((ap_predicate_op52_write_state2 == 1'b1) & (rxEng_winScaleFifo_full_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op26_read_state1 == 1'b1) & (rxEng_optionalFieldsFifo_empty_n == 1'b0)) | ((ap_predicate_op24_read_state1 == 1'b1) & (rxEng_dataOffsetFifo_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ap_predicate_op54_write_state2 == 1'b1) & (rxEng_winScaleFifo_full_n == 1'b0)) | ((ap_predicate_op53_write_state2 == 1'b1) & (rxEng_winScaleFifo_full_n == 1'b0)) | ((ap_predicate_op52_write_state2 == 1'b1) & (rxEng_winScaleFifo_full_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | ((ap_predicate_op26_read_state1 == 1'b1) & (rxEng_optionalFieldsFifo_empty_n == 1'b0)) | ((ap_predicate_op24_read_state1 == 1'b1) & (rxEng_dataOffsetFifo_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((ap_predicate_op54_write_state2 == 1'b1) & (rxEng_winScaleFifo_full_n == 1'b0)) | ((ap_predicate_op53_write_state2 == 1'b1) & (rxEng_winScaleFifo_full_n == 1'b0)) | ((ap_predicate_op52_write_state2 == 1'b1) & (rxEng_winScaleFifo_full_n == 1'b0)));
end

always @ (*) begin
    ap_condition_109 = ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

always @ (*) begin
    ap_condition_47 = ((tmp_i_276_nbreadreq_fu_70_p3 == 1'd1) & (tmp_i_nbreadreq_fu_62_p3 == 1'd1) & (state_4 == 1'd0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_phi_reg_pp0_iter0_optionLength_V_1_reg_98 = 'bx;

always @ (*) begin
    ap_predicate_op24_read_state1 = ((tmp_i_276_nbreadreq_fu_70_p3 == 1'd1) & (tmp_i_nbreadreq_fu_62_p3 == 1'd1) & (state_4 == 1'd0));
end

always @ (*) begin
    ap_predicate_op26_read_state1 = ((tmp_i_276_nbreadreq_fu_70_p3 == 1'd1) & (tmp_i_nbreadreq_fu_62_p3 == 1'd1) & (state_4 == 1'd0));
end

always @ (*) begin
    ap_predicate_op52_write_state2 = ((optionKind_reg_238 == 8'd3) & (state_4_load_reg_228 == 1'd1));
end

always @ (*) begin
    ap_predicate_op53_write_state2 = ((optionKind_reg_238 == 8'd0) & (state_4_load_reg_228 == 1'd1));
end

always @ (*) begin
    ap_predicate_op54_write_state2 = (~(optionKind_reg_238 == 8'd1) & ~(optionKind_reg_238 == 8'd0) & ~(optionKind_reg_238 == 8'd3) & (icmp_ln870_reg_247 == 1'd1) & (state_4_load_reg_228 == 1'd1));
end

assign icmp_ln870_fu_182_p2 = ((zext_ln870_fu_178_p1 == optionLength_V_fu_154_p4) ? 1'b1 : 1'b0);

assign optionKind_fu_150_p1 = fields_V[7:0];

assign optionLength_V_fu_154_p4 = {{fields_V[15:8]}};

assign r_fu_216_p2 = fields_V >> zext_ln799_fu_212_p1;

assign shl_ln_fu_204_p3 = {{ap_phi_mux_optionLength_V_1_phi_fu_101_p10}, {3'd0}};

assign state_4_load_load_fu_120_p1 = state_4;

assign sub_ln692_fu_192_p2 = (dataOffset_V_1 - trunc_ln692_fu_188_p1);

assign tmp_i_276_nbreadreq_fu_70_p3 = rxEng_optionalFieldsFifo_empty_n;

assign tmp_i_nbreadreq_fu_62_p3 = rxEng_dataOffsetFifo_empty_n;

assign trunc_ln692_fu_188_p1 = ap_phi_mux_optionLength_V_1_phi_fu_101_p10[3:0];

assign zext_ln799_fu_212_p1 = shl_ln_fu_204_p3;

assign zext_ln870_fu_178_p1 = dataOffset_V_1;

endmodule //toe_top_parse_optional_header_fields