// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module toe_top_rxPackageDropper_512_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        rxEng_dataBuffer3_dout,
        rxEng_dataBuffer3_empty_n,
        rxEng_dataBuffer3_read,
        rxEng_fsmDropFifo_dout,
        rxEng_fsmDropFifo_empty_n,
        rxEng_fsmDropFifo_read,
        rxEng_metaHandlerDropFifo_dout,
        rxEng_metaHandlerDropFifo_empty_n,
        rxEng_metaHandlerDropFifo_read,
        rxBufferWriteData_internal_din,
        rxBufferWriteData_internal_full_n,
        rxBufferWriteData_internal_write
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [1023:0] rxEng_dataBuffer3_dout;
input   rxEng_dataBuffer3_empty_n;
output   rxEng_dataBuffer3_read;
input  [0:0] rxEng_fsmDropFifo_dout;
input   rxEng_fsmDropFifo_empty_n;
output   rxEng_fsmDropFifo_read;
input  [0:0] rxEng_metaHandlerDropFifo_dout;
input   rxEng_metaHandlerDropFifo_empty_n;
output   rxEng_metaHandlerDropFifo_read;
output  [1023:0] rxBufferWriteData_internal_din;
input   rxBufferWriteData_internal_full_n;
output   rxBufferWriteData_internal_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg rxEng_dataBuffer3_read;
reg rxEng_fsmDropFifo_read;
reg rxEng_metaHandlerDropFifo_read;
reg rxBufferWriteData_internal_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [0:0] grp_nbreadreq_fu_44_p3;
reg    ap_predicate_op23_read_state1;
reg    ap_predicate_op30_read_state1;
wire   [0:0] tmp_i_262_nbreadreq_fu_58_p3;
reg    ap_predicate_op38_read_state1;
wire   [0:0] tmp_i_nbreadreq_fu_72_p3;
reg    ap_predicate_op46_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [1:0] tpf_state_load_reg_129;
reg   [0:0] tmp_9_i_reg_139;
reg    ap_predicate_op52_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg   [1:0] tpf_state;
reg    rxEng_metaHandlerDropFifo_blk_n;
wire    ap_block_pp0_stage0;
reg    rxEng_fsmDropFifo_blk_n;
reg    rxEng_dataBuffer3_blk_n;
reg    rxBufferWriteData_internal_blk_n;
reg   [1023:0] rxEng_dataBuffer3_read_reg_143;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] grp_fu_93_p3;
wire   [0:0] drop_1_read_fu_66_p2;
wire   [0:0] drop_read_fu_80_p2;
reg    ap_block_pp0_stage0_01001;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 tpf_state = 2'd0;
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
    if (((tmp_i_nbreadreq_fu_72_p3 == 1'd1) & (tpf_state == 2'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (drop_read_fu_80_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tpf_state <= 2'd1;
    end else if ((((tmp_i_nbreadreq_fu_72_p3 == 1'd1) & (tpf_state == 2'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (drop_read_fu_80_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((tmp_i_262_nbreadreq_fu_58_p3 == 1'd1) & (tpf_state == 2'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (drop_1_read_fu_66_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        tpf_state <= 2'd3;
    end else if (((tmp_i_262_nbreadreq_fu_58_p3 == 1'd1) & (tpf_state == 2'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (drop_1_read_fu_66_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tpf_state <= 2'd2;
    end else if ((((grp_nbreadreq_fu_44_p3 == 1'd1) & (tpf_state == 2'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (grp_fu_93_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((grp_nbreadreq_fu_44_p3 == 1'd1) & (tpf_state == 2'd3) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (grp_fu_93_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        tpf_state <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_predicate_op30_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rxEng_dataBuffer3_read_reg_143 <= rxEng_dataBuffer3_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((tpf_state == 2'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_9_i_reg_139 <= grp_nbreadreq_fu_44_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tpf_state_load_reg_129 <= tpf_state;
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
    if (((ap_predicate_op52_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        rxBufferWriteData_internal_blk_n = rxBufferWriteData_internal_full_n;
    end else begin
        rxBufferWriteData_internal_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op52_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rxBufferWriteData_internal_write = 1'b1;
    end else begin
        rxBufferWriteData_internal_write = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_predicate_op30_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_done_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_predicate_op23_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_done_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0)))) begin
        rxEng_dataBuffer3_blk_n = rxEng_dataBuffer3_empty_n;
    end else begin
        rxEng_dataBuffer3_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_predicate_op30_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op23_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        rxEng_dataBuffer3_read = 1'b1;
    end else begin
        rxEng_dataBuffer3_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_predicate_op38_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_done_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0))) begin
        rxEng_fsmDropFifo_blk_n = rxEng_fsmDropFifo_empty_n;
    end else begin
        rxEng_fsmDropFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op38_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rxEng_fsmDropFifo_read = 1'b1;
    end else begin
        rxEng_fsmDropFifo_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_predicate_op46_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_done_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0))) begin
        rxEng_metaHandlerDropFifo_blk_n = rxEng_metaHandlerDropFifo_empty_n;
    end else begin
        rxEng_metaHandlerDropFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op46_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rxEng_metaHandlerDropFifo_read = 1'b1;
    end else begin
        rxEng_metaHandlerDropFifo_read = 1'b0;
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
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_predicate_op52_write_state2 == 1'b1) & (rxBufferWriteData_internal_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op46_read_state1 == 1'b1) & (rxEng_metaHandlerDropFifo_empty_n == 1'b0)) | ((ap_predicate_op38_read_state1 == 1'b1) & (rxEng_fsmDropFifo_empty_n == 1'b0)) | ((ap_predicate_op30_read_state1 == 1'b1) & (rxEng_dataBuffer3_empty_n == 1'b0)) | ((ap_predicate_op23_read_state1 == 1'b1) & (rxEng_dataBuffer3_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_predicate_op52_write_state2 == 1'b1) & (rxBufferWriteData_internal_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op46_read_state1 == 1'b1) & (rxEng_metaHandlerDropFifo_empty_n == 1'b0)) | ((ap_predicate_op38_read_state1 == 1'b1) & (rxEng_fsmDropFifo_empty_n == 1'b0)) | ((ap_predicate_op30_read_state1 == 1'b1) & (rxEng_dataBuffer3_empty_n == 1'b0)) | ((ap_predicate_op23_read_state1 == 1'b1) & (rxEng_dataBuffer3_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_predicate_op52_write_state2 == 1'b1) & (rxBufferWriteData_internal_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op46_read_state1 == 1'b1) & (rxEng_metaHandlerDropFifo_empty_n == 1'b0)) | ((ap_predicate_op38_read_state1 == 1'b1) & (rxEng_fsmDropFifo_empty_n == 1'b0)) | ((ap_predicate_op30_read_state1 == 1'b1) & (rxEng_dataBuffer3_empty_n == 1'b0)) | ((ap_predicate_op23_read_state1 == 1'b1) & (rxEng_dataBuffer3_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | ((ap_predicate_op46_read_state1 == 1'b1) & (rxEng_metaHandlerDropFifo_empty_n == 1'b0)) | ((ap_predicate_op38_read_state1 == 1'b1) & (rxEng_fsmDropFifo_empty_n == 1'b0)) | ((ap_predicate_op30_read_state1 == 1'b1) & (rxEng_dataBuffer3_empty_n == 1'b0)) | ((ap_predicate_op23_read_state1 == 1'b1) & (rxEng_dataBuffer3_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((ap_predicate_op52_write_state2 == 1'b1) & (rxBufferWriteData_internal_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

always @ (*) begin
    ap_predicate_op23_read_state1 = ((grp_nbreadreq_fu_44_p3 == 1'd1) & (tpf_state == 2'd3));
end

always @ (*) begin
    ap_predicate_op30_read_state1 = ((grp_nbreadreq_fu_44_p3 == 1'd1) & (tpf_state == 2'd2));
end

always @ (*) begin
    ap_predicate_op38_read_state1 = ((tmp_i_262_nbreadreq_fu_58_p3 == 1'd1) & (tpf_state == 2'd1));
end

always @ (*) begin
    ap_predicate_op46_read_state1 = ((tmp_i_nbreadreq_fu_72_p3 == 1'd1) & (tpf_state == 2'd0));
end

always @ (*) begin
    ap_predicate_op52_write_state2 = ((tmp_9_i_reg_139 == 1'd1) & (tpf_state_load_reg_129 == 2'd2));
end

assign drop_1_read_fu_66_p2 = rxEng_fsmDropFifo_dout;

assign drop_read_fu_80_p2 = rxEng_metaHandlerDropFifo_dout;

assign grp_fu_93_p3 = rxEng_dataBuffer3_dout[32'd576];

assign grp_nbreadreq_fu_44_p3 = rxEng_dataBuffer3_empty_n;

assign rxBufferWriteData_internal_din = rxEng_dataBuffer3_read_reg_143;

assign tmp_i_262_nbreadreq_fu_58_p3 = rxEng_fsmDropFifo_empty_n;

assign tmp_i_nbreadreq_fu_72_p3 = rxEng_metaHandlerDropFifo_empty_n;

endmodule //toe_top_rxPackageDropper_512_s
