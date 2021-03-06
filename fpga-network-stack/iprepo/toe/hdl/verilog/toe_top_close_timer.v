// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module toe_top_close_timer (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        rxEng2timer_setCloseTimer_dout,
        rxEng2timer_setCloseTimer_empty_n,
        rxEng2timer_setCloseTimer_read,
        closeTimer2stateTable_releaseState_din,
        closeTimer2stateTable_releaseState_full_n,
        closeTimer2stateTable_releaseState_write
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [15:0] rxEng2timer_setCloseTimer_dout;
input   rxEng2timer_setCloseTimer_empty_n;
output   rxEng2timer_setCloseTimer_read;
output  [15:0] closeTimer2stateTable_releaseState_din;
input   closeTimer2stateTable_releaseState_full_n;
output   closeTimer2stateTable_releaseState_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg rxEng2timer_setCloseTimer_read;
reg closeTimer2stateTable_releaseState_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire   [0:0] tmp_i_nbreadreq_fu_60_p3;
reg    ap_predicate_op32_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
reg   [0:0] ct_waitForWrite_load_reg_241;
reg   [0:0] ct_waitForWrite_load_reg_241_pp0_iter2_reg;
reg   [0:0] tmp_i_reg_245;
reg   [0:0] tmp_i_reg_245_pp0_iter2_reg;
reg   [0:0] closeTimerTable_active_load_reg_274;
reg   [0:0] closeTimerTable_active_load_reg_274_pp0_iter2_reg;
reg   [0:0] icmp_ln886_reg_289;
reg    ap_predicate_op60_write_state4;
reg    ap_block_state4_pp0_stage0_iter3;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] ct_waitForWrite;
reg   [15:0] ct_setSessionID_V;
reg   [15:0] ct_prevSessionID_V;
wire   [9:0] closeTimerTable_time_V_address0;
reg    closeTimerTable_time_V_ce0;
reg    closeTimerTable_time_V_we0;
reg   [31:0] closeTimerTable_time_V_d0;
reg   [9:0] closeTimerTable_time_V_address1;
reg    closeTimerTable_time_V_ce1;
reg    closeTimerTable_time_V_we1;
wire   [31:0] closeTimerTable_time_V_q1;
wire   [9:0] closeTimerTable_active_address0;
reg    closeTimerTable_active_ce0;
reg    closeTimerTable_active_we0;
reg   [9:0] closeTimerTable_active_address1;
reg    closeTimerTable_active_ce1;
reg    closeTimerTable_active_we1;
wire   [0:0] closeTimerTable_active_q1;
reg   [15:0] ct_currSessionID_V;
reg    rxEng2timer_setCloseTimer_blk_n;
wire    ap_block_pp0_stage0;
reg    closeTimer2stateTable_releaseState_blk_n;
reg   [0:0] ct_waitForWrite_load_reg_241_pp0_iter1_reg;
reg   [0:0] tmp_i_reg_245_pp0_iter1_reg;
reg   [15:0] ct_currSessionID_V_load_reg_249;
reg   [15:0] ct_currSessionID_V_load_reg_249_pp0_iter1_reg;
reg   [15:0] ct_currSessionID_V_load_reg_249_pp0_iter2_reg;
wire   [63:0] zext_ln534_18_fu_157_p1;
reg   [63:0] zext_ln534_18_reg_254;
reg   [9:0] closeTimerTable_active_addr_1_reg_259;
reg   [9:0] closeTimerTable_active_addr_1_reg_259_pp0_iter1_reg;
reg   [9:0] closeTimerTable_active_addr_1_reg_259_pp0_iter2_reg;
wire   [0:0] icmp_ln874_fu_200_p2;
reg   [0:0] icmp_ln874_reg_265;
wire   [63:0] zext_ln534_fu_206_p1;
reg   [63:0] zext_ln534_reg_269;
reg   [9:0] closeTimerTable_time_V_addr_1_reg_278;
reg   [9:0] closeTimerTable_time_V_addr_1_reg_278_pp0_iter2_reg;
reg   [31:0] closeTimerTable_time_V_load_reg_284;
wire   [0:0] icmp_ln886_fu_229_p2;
reg    ap_block_pp0_stage0_subdone;
wire   [15:0] add_ln692_fu_217_p2;
wire   [15:0] select_ln93_fu_174_p3;
reg    ap_block_pp0_stage0_01001;
wire   [31:0] add_ln692_2_fu_235_p2;
wire   [15:0] add_ln691_fu_162_p2;
wire   [0:0] icmp_ln870_fu_168_p2;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to2;
reg    ap_reset_idle_pp0;
reg    ap_block_pp0;
reg    ap_predicate_op40_store_state1;
reg    ap_enable_operation_40;
reg    ap_enable_state1_pp0_iter0_stage0;
reg    ap_predicate_op26_load_state1;
reg    ap_enable_operation_26;
reg    ap_predicate_op45_load_state2;
reg    ap_enable_operation_45;
reg    ap_enable_state2_pp0_iter1_stage0;
reg    ap_predicate_op59_store_state4;
reg    ap_enable_operation_59;
reg    ap_enable_state4_pp0_iter3_stage0;
reg    ap_predicate_op50_store_state2;
reg    ap_enable_operation_50;
reg    ap_predicate_op48_load_state2;
reg    ap_enable_operation_48;
reg    ap_predicate_op52_load_state3;
reg    ap_enable_operation_52;
reg    ap_enable_state3_pp0_iter2_stage0;
reg    ap_predicate_op56_store_state4;
reg    ap_enable_operation_56;
reg    ap_predicate_op58_store_state4;
reg    ap_enable_operation_58;
wire    ap_enable_pp0;
reg    ap_condition_130;
reg    ap_condition_177;
reg    ap_condition_199;
reg    ap_condition_345;
reg    ap_condition_91;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ct_waitForWrite = 1'd0;
#0 ct_setSessionID_V = 16'd0;
#0 ct_prevSessionID_V = 16'd0;
#0 ct_currSessionID_V = 16'd0;
end

toe_top_retransmit_timer_retransmitTimerTable_time_V #(
    .DataWidth( 32 ),
    .AddressRange( 1000 ),
    .AddressWidth( 10 ))
closeTimerTable_time_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(closeTimerTable_time_V_address0),
    .ce0(closeTimerTable_time_V_ce0),
    .we0(closeTimerTable_time_V_we0),
    .d0(closeTimerTable_time_V_d0),
    .address1(closeTimerTable_time_V_address1),
    .ce1(closeTimerTable_time_V_ce1),
    .we1(closeTimerTable_time_V_we1),
    .d1(32'd9375001),
    .q1(closeTimerTable_time_V_q1)
);

toe_top_retransmit_timer_retransmitTimerTable_active #(
    .DataWidth( 1 ),
    .AddressRange( 1000 ),
    .AddressWidth( 10 ))
closeTimerTable_active_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(closeTimerTable_active_address0),
    .ce0(closeTimerTable_active_ce0),
    .we0(closeTimerTable_active_we0),
    .d0(1'd0),
    .address1(closeTimerTable_active_address1),
    .ce1(closeTimerTable_active_ce1),
    .we1(closeTimerTable_active_we1),
    .d1(1'd1),
    .q1(closeTimerTable_active_q1)
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
        end else if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
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
    if ((1'b1 == ap_condition_91)) begin
        if ((ct_waitForWrite == 1'd1)) begin
            ct_prevSessionID_V <= add_ln692_fu_217_p2;
        end else if (((tmp_i_nbreadreq_fu_60_p3 == 1'd0) & (ct_waitForWrite == 1'd0))) begin
            ct_prevSessionID_V <= ct_currSessionID_V;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_91)) begin
        if (((ct_waitForWrite == 1'd1) & (icmp_ln874_fu_200_p2 == 1'd0))) begin
            ct_waitForWrite <= 1'd0;
        end else if (((tmp_i_nbreadreq_fu_60_p3 == 1'd1) & (ct_waitForWrite == 1'd0))) begin
            ct_waitForWrite <= 1'd1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_nbreadreq_fu_60_p3 == 1'd0) & (ct_waitForWrite == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        closeTimerTable_active_addr_1_reg_259 <= zext_ln534_18_fu_157_p1;
        ct_currSessionID_V_load_reg_249 <= ct_currSessionID_V;
        zext_ln534_18_reg_254[15 : 0] <= zext_ln534_18_fu_157_p1[15 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        closeTimerTable_active_addr_1_reg_259_pp0_iter1_reg <= closeTimerTable_active_addr_1_reg_259;
        ct_currSessionID_V_load_reg_249_pp0_iter1_reg <= ct_currSessionID_V_load_reg_249;
        ct_waitForWrite_load_reg_241 <= ct_waitForWrite;
        ct_waitForWrite_load_reg_241_pp0_iter1_reg <= ct_waitForWrite_load_reg_241;
        tmp_i_reg_245_pp0_iter1_reg <= tmp_i_reg_245;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        closeTimerTable_active_addr_1_reg_259_pp0_iter2_reg <= closeTimerTable_active_addr_1_reg_259_pp0_iter1_reg;
        closeTimerTable_active_load_reg_274_pp0_iter2_reg <= closeTimerTable_active_load_reg_274;
        closeTimerTable_time_V_addr_1_reg_278_pp0_iter2_reg <= closeTimerTable_time_V_addr_1_reg_278;
        ct_currSessionID_V_load_reg_249_pp0_iter2_reg <= ct_currSessionID_V_load_reg_249_pp0_iter1_reg;
        ct_waitForWrite_load_reg_241_pp0_iter2_reg <= ct_waitForWrite_load_reg_241_pp0_iter1_reg;
        tmp_i_reg_245_pp0_iter2_reg <= tmp_i_reg_245_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_reg_245 == 1'd0) & (ct_waitForWrite_load_reg_241 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        closeTimerTable_active_load_reg_274 <= closeTimerTable_active_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_reg_245 == 1'd0) & (ct_waitForWrite_load_reg_241 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (closeTimerTable_active_q1 == 1'd1))) begin
        closeTimerTable_time_V_addr_1_reg_278 <= zext_ln534_18_reg_254;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (closeTimerTable_active_load_reg_274 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (tmp_i_reg_245_pp0_iter1_reg == 1'd0) & (ct_waitForWrite_load_reg_241_pp0_iter1_reg == 1'd0))) begin
        closeTimerTable_time_V_load_reg_284 <= closeTimerTable_time_V_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_nbreadreq_fu_60_p3 == 1'd0) & (ct_waitForWrite == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ct_currSessionID_V <= select_ln93_fu_174_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_nbreadreq_fu_60_p3 == 1'd1) & (ct_waitForWrite == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ct_setSessionID_V <= rxEng2timer_setCloseTimer_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ct_waitForWrite == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln874_reg_265 <= icmp_ln874_fu_200_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (closeTimerTable_active_load_reg_274 == 1'd1) & (tmp_i_reg_245_pp0_iter1_reg == 1'd0) & (ct_waitForWrite_load_reg_241_pp0_iter1_reg == 1'd0))) begin
        icmp_ln886_reg_289 <= icmp_ln886_fu_229_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ct_waitForWrite == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_i_reg_245 <= tmp_i_nbreadreq_fu_60_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ct_waitForWrite == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln874_fu_200_p2 == 1'd0))) begin
        zext_ln534_reg_269[15 : 0] <= zext_ln534_fu_206_p1[15 : 0];
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
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
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_predicate_op60_write_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        closeTimer2stateTable_releaseState_blk_n = closeTimer2stateTable_releaseState_full_n;
    end else begin
        closeTimer2stateTable_releaseState_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op60_write_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        closeTimer2stateTable_releaseState_write = 1'b1;
    end else begin
        closeTimer2stateTable_releaseState_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_130)) begin
        if (((ct_waitForWrite == 1'd1) & (icmp_ln874_fu_200_p2 == 1'd0))) begin
            closeTimerTable_active_address1 = zext_ln534_fu_206_p1;
        end else if (((tmp_i_nbreadreq_fu_60_p3 == 1'd0) & (ct_waitForWrite == 1'd0))) begin
            closeTimerTable_active_address1 = zext_ln534_18_fu_157_p1;
        end else begin
            closeTimerTable_active_address1 = 'bx;
        end
    end else begin
        closeTimerTable_active_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        closeTimerTable_active_ce0 = 1'b1;
    end else begin
        closeTimerTable_active_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ct_waitForWrite == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln874_fu_200_p2 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_nbreadreq_fu_60_p3 == 1'd0) & (ct_waitForWrite == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        closeTimerTable_active_ce1 = 1'b1;
    end else begin
        closeTimerTable_active_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln886_reg_289 == 1'd1) & (closeTimerTable_active_load_reg_274_pp0_iter2_reg == 1'd1) & (tmp_i_reg_245_pp0_iter2_reg == 1'd0) & (ct_waitForWrite_load_reg_241_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        closeTimerTable_active_we0 = 1'b1;
    end else begin
        closeTimerTable_active_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ct_waitForWrite == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln874_fu_200_p2 == 1'd0))) begin
        closeTimerTable_active_we1 = 1'b1;
    end else begin
        closeTimerTable_active_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_199)) begin
        if (((ct_waitForWrite_load_reg_241 == 1'd1) & (icmp_ln874_reg_265 == 1'd0))) begin
            closeTimerTable_time_V_address1 = zext_ln534_reg_269;
        end else if ((1'b1 == ap_condition_177)) begin
            closeTimerTable_time_V_address1 = zext_ln534_18_reg_254;
        end else begin
            closeTimerTable_time_V_address1 = 'bx;
        end
    end else begin
        closeTimerTable_time_V_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln886_reg_289 == 1'd1) & (closeTimerTable_active_load_reg_274_pp0_iter2_reg == 1'd1) & (tmp_i_reg_245_pp0_iter2_reg == 1'd0) & (ct_waitForWrite_load_reg_241_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln886_reg_289 == 1'd0) & (closeTimerTable_active_load_reg_274_pp0_iter2_reg == 1'd1) & (tmp_i_reg_245_pp0_iter2_reg == 1'd0) & (ct_waitForWrite_load_reg_241_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1)))) begin
        closeTimerTable_time_V_ce0 = 1'b1;
    end else begin
        closeTimerTable_time_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ct_waitForWrite_load_reg_241 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln874_reg_265 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_reg_245 == 1'd0) & (ct_waitForWrite_load_reg_241 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (closeTimerTable_active_q1 == 1'd1)))) begin
        closeTimerTable_time_V_ce1 = 1'b1;
    end else begin
        closeTimerTable_time_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_345)) begin
        if ((icmp_ln886_reg_289 == 1'd1)) begin
            closeTimerTable_time_V_d0 = 32'd0;
        end else if ((icmp_ln886_reg_289 == 1'd0)) begin
            closeTimerTable_time_V_d0 = add_ln692_2_fu_235_p2;
        end else begin
            closeTimerTable_time_V_d0 = 'bx;
        end
    end else begin
        closeTimerTable_time_V_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln886_reg_289 == 1'd1) & (closeTimerTable_active_load_reg_274_pp0_iter2_reg == 1'd1) & (tmp_i_reg_245_pp0_iter2_reg == 1'd0) & (ct_waitForWrite_load_reg_241_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln886_reg_289 == 1'd0) & (closeTimerTable_active_load_reg_274_pp0_iter2_reg == 1'd1) & (tmp_i_reg_245_pp0_iter2_reg == 1'd0) & (ct_waitForWrite_load_reg_241_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1)))) begin
        closeTimerTable_time_V_we0 = 1'b1;
    end else begin
        closeTimerTable_time_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ct_waitForWrite_load_reg_241 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln874_reg_265 == 1'd0))) begin
        closeTimerTable_time_V_we1 = 1'b1;
    end else begin
        closeTimerTable_time_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_predicate_op32_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_done_reg == 1'b0))) begin
        rxEng2timer_setCloseTimer_blk_n = rxEng2timer_setCloseTimer_empty_n;
    end else begin
        rxEng2timer_setCloseTimer_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op32_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        rxEng2timer_setCloseTimer_read = 1'b1;
    end else begin
        rxEng2timer_setCloseTimer_read = 1'b0;
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

assign add_ln691_fu_162_p2 = (ct_currSessionID_V + 16'd1);

assign add_ln692_2_fu_235_p2 = ($signed(closeTimerTable_time_V_load_reg_284) + $signed(32'd4294967295));

assign add_ln692_fu_217_p2 = ($signed(ct_prevSessionID_V) + $signed(16'd65535));

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_pp0 = ((ap_ST_fsm_pp0_stage0 == ap_CS_fsm) & (1'b1 == ap_block_pp0_stage0_subdone));
end

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_predicate_op60_write_state4 == 1'b1) & (closeTimer2stateTable_releaseState_full_n == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op32_read_state1 == 1'b1) & (rxEng2timer_setCloseTimer_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_predicate_op60_write_state4 == 1'b1) & (closeTimer2stateTable_releaseState_full_n == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op32_read_state1 == 1'b1) & (rxEng2timer_setCloseTimer_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_predicate_op60_write_state4 == 1'b1) & (closeTimer2stateTable_releaseState_full_n == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op32_read_state1 == 1'b1) & (rxEng2timer_setCloseTimer_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | ((ap_predicate_op32_read_state1 == 1'b1) & (rxEng2timer_setCloseTimer_empty_n == 1'b0)));
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter3 = ((ap_predicate_op60_write_state4 == 1'b1) & (closeTimer2stateTable_releaseState_full_n == 1'b0));
end

always @ (*) begin
    ap_condition_130 = ((1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_177 = ((tmp_i_reg_245 == 1'd0) & (ct_waitForWrite_load_reg_241 == 1'd0) & (closeTimerTable_active_q1 == 1'd1));
end

always @ (*) begin
    ap_condition_199 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_345 = ((1'b0 == ap_block_pp0_stage0) & (closeTimerTable_active_load_reg_274_pp0_iter2_reg == 1'd1) & (tmp_i_reg_245_pp0_iter2_reg == 1'd0) & (ct_waitForWrite_load_reg_241_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1));
end

always @ (*) begin
    ap_condition_91 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_enable_operation_26 = (ap_predicate_op26_load_state1 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_40 = (ap_predicate_op40_store_state1 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_45 = (ap_predicate_op45_load_state2 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_48 = (ap_predicate_op48_load_state2 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_50 = (ap_predicate_op50_store_state2 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_52 = (ap_predicate_op52_load_state3 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_56 = (ap_predicate_op56_store_state4 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_58 = (ap_predicate_op58_store_state4 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_59 = (ap_predicate_op59_store_state4 == 1'b1);
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
    ap_enable_state3_pp0_iter2_stage0 = ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_enable_state4_pp0_iter3_stage0 = ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_predicate_op26_load_state1 = ((tmp_i_nbreadreq_fu_60_p3 == 1'd0) & (ct_waitForWrite == 1'd0));
end

always @ (*) begin
    ap_predicate_op32_read_state1 = ((tmp_i_nbreadreq_fu_60_p3 == 1'd1) & (ct_waitForWrite == 1'd0));
end

always @ (*) begin
    ap_predicate_op40_store_state1 = ((ct_waitForWrite == 1'd1) & (icmp_ln874_fu_200_p2 == 1'd0));
end

always @ (*) begin
    ap_predicate_op45_load_state2 = ((tmp_i_reg_245 == 1'd0) & (ct_waitForWrite_load_reg_241 == 1'd0));
end

always @ (*) begin
    ap_predicate_op48_load_state2 = ((tmp_i_reg_245 == 1'd0) & (ct_waitForWrite_load_reg_241 == 1'd0) & (closeTimerTable_active_q1 == 1'd1));
end

always @ (*) begin
    ap_predicate_op50_store_state2 = ((ct_waitForWrite_load_reg_241 == 1'd1) & (icmp_ln874_reg_265 == 1'd0));
end

always @ (*) begin
    ap_predicate_op52_load_state3 = ((closeTimerTable_active_load_reg_274 == 1'd1) & (tmp_i_reg_245_pp0_iter1_reg == 1'd0) & (ct_waitForWrite_load_reg_241_pp0_iter1_reg == 1'd0));
end

always @ (*) begin
    ap_predicate_op56_store_state4 = ((icmp_ln886_reg_289 == 1'd0) & (closeTimerTable_active_load_reg_274_pp0_iter2_reg == 1'd1) & (tmp_i_reg_245_pp0_iter2_reg == 1'd0) & (ct_waitForWrite_load_reg_241_pp0_iter2_reg == 1'd0));
end

always @ (*) begin
    ap_predicate_op58_store_state4 = ((icmp_ln886_reg_289 == 1'd1) & (closeTimerTable_active_load_reg_274_pp0_iter2_reg == 1'd1) & (tmp_i_reg_245_pp0_iter2_reg == 1'd0) & (ct_waitForWrite_load_reg_241_pp0_iter2_reg == 1'd0));
end

always @ (*) begin
    ap_predicate_op59_store_state4 = ((icmp_ln886_reg_289 == 1'd1) & (closeTimerTable_active_load_reg_274_pp0_iter2_reg == 1'd1) & (tmp_i_reg_245_pp0_iter2_reg == 1'd0) & (ct_waitForWrite_load_reg_241_pp0_iter2_reg == 1'd0));
end

always @ (*) begin
    ap_predicate_op60_write_state4 = ((icmp_ln886_reg_289 == 1'd1) & (closeTimerTable_active_load_reg_274_pp0_iter2_reg == 1'd1) & (tmp_i_reg_245_pp0_iter2_reg == 1'd0) & (ct_waitForWrite_load_reg_241_pp0_iter2_reg == 1'd0));
end

assign closeTimer2stateTable_releaseState_din = ct_currSessionID_V_load_reg_249_pp0_iter2_reg;

assign closeTimerTable_active_address0 = closeTimerTable_active_addr_1_reg_259_pp0_iter2_reg;

assign closeTimerTable_time_V_address0 = closeTimerTable_time_V_addr_1_reg_278_pp0_iter2_reg;

assign icmp_ln870_fu_168_p2 = ((add_ln691_fu_162_p2 == 16'd1000) ? 1'b1 : 1'b0);

assign icmp_ln874_fu_200_p2 = ((ct_setSessionID_V == ct_prevSessionID_V) ? 1'b1 : 1'b0);

assign icmp_ln886_fu_229_p2 = ((closeTimerTable_time_V_q1 == 32'd0) ? 1'b1 : 1'b0);

assign select_ln93_fu_174_p3 = ((icmp_ln870_fu_168_p2[0:0] == 1'b1) ? 16'd0 : add_ln691_fu_162_p2);

assign tmp_i_nbreadreq_fu_60_p3 = rxEng2timer_setCloseTimer_empty_n;

assign zext_ln534_18_fu_157_p1 = ct_currSessionID_V;

assign zext_ln534_fu_206_p1 = ct_setSessionID_V;

always @ (posedge ap_clk) begin
    zext_ln534_18_reg_254[63:16] <= 48'b000000000000000000000000000000000000000000000000;
    zext_ln534_reg_269[63:16] <= 48'b000000000000000000000000000000000000000000000000;
end

endmodule //toe_top_close_timer
