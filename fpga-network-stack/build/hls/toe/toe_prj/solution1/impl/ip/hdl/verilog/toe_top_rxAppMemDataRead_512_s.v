// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module toe_top_rxAppMemDataRead_512_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        rxBufferReadCmd_dout,
        rxBufferReadCmd_empty_n,
        rxBufferReadCmd_read,
        rxBufferReadData_internal_dout,
        rxBufferReadData_internal_empty_n,
        rxBufferReadData_internal_read,
        rxDataRsp_internal_din,
        rxDataRsp_internal_full_n,
        rxDataRsp_internal_write
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [0:0] rxBufferReadCmd_dout;
input   rxBufferReadCmd_empty_n;
output   rxBufferReadCmd_read;
input  [1023:0] rxBufferReadData_internal_dout;
input   rxBufferReadData_internal_empty_n;
output   rxBufferReadData_internal_read;
output  [1023:0] rxDataRsp_internal_din;
input   rxDataRsp_internal_full_n;
output   rxDataRsp_internal_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg rxBufferReadCmd_read;
reg rxBufferReadData_internal_read;
reg rxDataRsp_internal_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [0:0] tmp_i_nbreadreq_fu_38_p3;
reg    ap_predicate_op18_read_state1;
wire   [0:0] tmp_i_265_nbreadreq_fu_52_p3;
reg    ap_predicate_op23_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] ramdr_fsmState_V_load_reg_97;
reg   [0:0] tmp_i_265_reg_104;
reg    ap_predicate_op28_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] ramdr_fsmState_V;
reg    rxBufferReadCmd_blk_n;
wire    ap_block_pp0_stage0;
reg    rxBufferReadData_internal_blk_n;
reg    rxDataRsp_internal_blk_n;
reg   [1023:0] rxBufferReadData_internal_read_reg_108;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_last_V_fu_83_p3;
reg    ap_block_pp0_stage0_01001;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_116;
reg    ap_condition_87;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ramdr_fsmState_V = 1'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_87)) begin
        if ((1'b1 == ap_condition_116)) begin
            ramdr_fsmState_V <= 1'd0;
        end else if (((tmp_i_nbreadreq_fu_38_p3 == 1'd1) & (ramdr_fsmState_V == 1'd0))) begin
            ramdr_fsmState_V <= 1'd1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ramdr_fsmState_V_load_reg_97 <= ramdr_fsmState_V;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op23_read_state1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        rxBufferReadData_internal_read_reg_108 <= rxBufferReadData_internal_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ramdr_fsmState_V == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_i_265_reg_104 <= tmp_i_265_nbreadreq_fu_52_p3;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_predicate_op18_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_done_reg == 1'b0))) begin
        rxBufferReadCmd_blk_n = rxBufferReadCmd_empty_n;
    end else begin
        rxBufferReadCmd_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op18_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        rxBufferReadCmd_read = 1'b1;
    end else begin
        rxBufferReadCmd_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_predicate_op23_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_done_reg == 1'b0))) begin
        rxBufferReadData_internal_blk_n = rxBufferReadData_internal_empty_n;
    end else begin
        rxBufferReadData_internal_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op23_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        rxBufferReadData_internal_read = 1'b1;
    end else begin
        rxBufferReadData_internal_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_predicate_op28_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        rxDataRsp_internal_blk_n = rxDataRsp_internal_full_n;
    end else begin
        rxDataRsp_internal_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op28_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        rxDataRsp_internal_write = 1'b1;
    end else begin
        rxDataRsp_internal_write = 1'b0;
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
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_predicate_op28_write_state2 == 1'b1) & (rxDataRsp_internal_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op23_read_state1 == 1'b1) & (rxBufferReadData_internal_empty_n == 1'b0)) | ((ap_predicate_op18_read_state1 == 1'b1) & (rxBufferReadCmd_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_predicate_op28_write_state2 == 1'b1) & (rxDataRsp_internal_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op23_read_state1 == 1'b1) & (rxBufferReadData_internal_empty_n == 1'b0)) | ((ap_predicate_op18_read_state1 == 1'b1) & (rxBufferReadCmd_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_predicate_op28_write_state2 == 1'b1) & (rxDataRsp_internal_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op23_read_state1 == 1'b1) & (rxBufferReadData_internal_empty_n == 1'b0)) | ((ap_predicate_op18_read_state1 == 1'b1) & (rxBufferReadCmd_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | ((ap_predicate_op23_read_state1 == 1'b1) & (rxBufferReadData_internal_empty_n == 1'b0)) | ((ap_predicate_op18_read_state1 == 1'b1) & (rxBufferReadCmd_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((ap_predicate_op28_write_state2 == 1'b1) & (rxDataRsp_internal_full_n == 1'b0));
end

always @ (*) begin
    ap_condition_116 = ((tmp_i_265_nbreadreq_fu_52_p3 == 1'd1) & (ramdr_fsmState_V == 1'd1) & (tmp_last_V_fu_83_p3 == 1'd1));
end

always @ (*) begin
    ap_condition_87 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

always @ (*) begin
    ap_predicate_op18_read_state1 = ((tmp_i_nbreadreq_fu_38_p3 == 1'd1) & (ramdr_fsmState_V == 1'd0));
end

always @ (*) begin
    ap_predicate_op23_read_state1 = ((tmp_i_265_nbreadreq_fu_52_p3 == 1'd1) & (ramdr_fsmState_V == 1'd1));
end

always @ (*) begin
    ap_predicate_op28_write_state2 = ((tmp_i_265_reg_104 == 1'd1) & (ramdr_fsmState_V_load_reg_97 == 1'd1));
end

assign rxDataRsp_internal_din = rxBufferReadData_internal_read_reg_108;

assign tmp_i_265_nbreadreq_fu_52_p3 = rxBufferReadData_internal_empty_n;

assign tmp_i_nbreadreq_fu_38_p3 = rxBufferReadCmd_empty_n;

assign tmp_last_V_fu_83_p3 = rxBufferReadData_internal_dout[32'd576];

endmodule //toe_top_rxAppMemDataRead_512_s
