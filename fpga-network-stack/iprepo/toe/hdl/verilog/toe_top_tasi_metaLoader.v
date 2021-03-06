// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module toe_top_tasi_metaLoader (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        s_axis_tx_data_req_metadata_V_TVALID,
        stateTable2txApp_rsp_dout,
        stateTable2txApp_rsp_empty_n,
        stateTable2txApp_rsp_read,
        txSar2txApp_upd_rsp_dout,
        txSar2txApp_upd_rsp_empty_n,
        txSar2txApp_upd_rsp_read,
        txApp2stateTable_req_din,
        txApp2stateTable_req_full_n,
        txApp2stateTable_req_write,
        txApp2txSar_upd_req_din,
        txApp2txSar_upd_req_full_n,
        txApp2txSar_upd_req_write,
        m_axis_tx_data_rsp_V_TREADY,
        tasi_meta2pkgPushCmd_din,
        tasi_meta2pkgPushCmd_full_n,
        tasi_meta2pkgPushCmd_write,
        txAppStream2event_mergeEvent_din,
        txAppStream2event_mergeEvent_full_n,
        txAppStream2event_mergeEvent_write,
        s_axis_tx_data_req_metadata_V_TDATA,
        s_axis_tx_data_req_metadata_V_TREADY,
        m_axis_tx_data_rsp_V_TDATA,
        m_axis_tx_data_rsp_V_TVALID
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input   s_axis_tx_data_req_metadata_V_TVALID;
input  [31:0] stateTable2txApp_rsp_dout;
input   stateTable2txApp_rsp_empty_n;
output   stateTable2txApp_rsp_read;
input  [127:0] txSar2txApp_upd_rsp_dout;
input   txSar2txApp_upd_rsp_empty_n;
output   txSar2txApp_upd_rsp_read;
output  [15:0] txApp2stateTable_req_din;
input   txApp2stateTable_req_full_n;
output   txApp2stateTable_req_write;
output  [95:0] txApp2txSar_upd_req_din;
input   txApp2txSar_upd_req_full_n;
output   txApp2txSar_upd_req_write;
input   m_axis_tx_data_rsp_V_TREADY;
output  [127:0] tasi_meta2pkgPushCmd_din;
input   tasi_meta2pkgPushCmd_full_n;
output   tasi_meta2pkgPushCmd_write;
output  [127:0] txAppStream2event_mergeEvent_din;
input   txAppStream2event_mergeEvent_full_n;
output   txAppStream2event_mergeEvent_write;
input  [31:0] s_axis_tx_data_req_metadata_V_TDATA;
output   s_axis_tx_data_req_metadata_V_TREADY;
output  [95:0] m_axis_tx_data_rsp_V_TDATA;
output   m_axis_tx_data_rsp_V_TVALID;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg stateTable2txApp_rsp_read;
reg txSar2txApp_upd_rsp_read;
reg txApp2stateTable_req_write;
reg[95:0] txApp2txSar_upd_req_din;
reg txApp2txSar_upd_req_write;
reg tasi_meta2pkgPushCmd_write;
reg txAppStream2event_mergeEvent_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire   [0:0] tmp_i_nbreadreq_fu_110_p3;
reg    ap_predicate_op36_read_state1;
wire   [0:0] tmp_i_245_nbreadreq_fu_124_p3;
wire   [0:0] tmp_3_i_nbreadreq_fu_132_p3;
reg    ap_predicate_op46_read_state1;
reg    ap_predicate_op47_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] tai_state_load_reg_445;
reg   [0:0] tmp_i_reg_458;
reg    ap_predicate_op67_write_state2;
reg    ap_predicate_op69_write_state2;
reg   [0:0] tmp_i_245_reg_468;
reg   [0:0] tmp_3_i_reg_472;
reg   [0:0] icmp_ln86_reg_494;
reg    ap_predicate_op74_write_state2;
reg   [0:0] or_ln100_reg_503;
reg    ap_predicate_op79_write_state2;
reg    ap_predicate_op82_write_state2;
reg    ap_predicate_op85_write_state2;
reg    ap_predicate_op89_write_state2;
reg    ap_predicate_op92_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_state2_io;
reg   [0:0] tai_state_load_reg_445_pp0_iter1_reg;
reg   [0:0] tmp_i_245_reg_468_pp0_iter1_reg;
reg   [0:0] tmp_3_i_reg_472_pp0_iter1_reg;
reg   [0:0] icmp_ln86_reg_494_pp0_iter1_reg;
reg    ap_predicate_op93_write_state3;
reg   [0:0] or_ln100_reg_503_pp0_iter1_reg;
reg    ap_predicate_op95_write_state3;
reg    ap_predicate_op97_write_state3;
wire    regslice_both_m_axis_tx_data_rsp_V_U_apdone_blk;
reg    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_state3_io;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] tai_state;
reg   [15:0] tasi_writeMeta_length_V;
reg   [15:0] tasi_writeMeta_sessionID_V;
reg    s_axis_tx_data_req_metadata_V_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    m_axis_tx_data_rsp_V_TDATA_blk_n;
reg    txApp2stateTable_req_blk_n;
reg    txApp2txSar_upd_req_blk_n;
reg    txSar2txApp_upd_rsp_blk_n;
reg    stateTable2txApp_rsp_blk_n;
reg    tasi_meta2pkgPushCmd_blk_n;
reg    txAppStream2event_mergeEvent_blk_n;
reg   [15:0] len_V_reg_449;
wire   [15:0] trunc_ln145_fu_201_p1;
reg   [15:0] trunc_ln145_reg_462;
wire   [17:0] writeSar_mempt_V_fu_243_p4;
reg   [17:0] writeSar_mempt_V_reg_476;
wire   [17:0] maxWriteLength_fu_269_p2;
reg   [17:0] maxWriteLength_reg_483;
wire   [17:0] usableWindow_V_1_fu_293_p3;
reg   [17:0] usableWindow_V_1_reg_489;
wire   [0:0] icmp_ln86_fu_301_p2;
wire   [17:0] zext_ln886_fu_307_p1;
reg   [17:0] zext_ln886_reg_498;
wire   [0:0] or_ln100_fu_323_p2;
wire   [95:0] zext_ln174_11_fu_347_p1;
wire   [95:0] zext_ln174_14_fu_385_p1;
wire   [95:0] zext_ln174_12_fu_440_p1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_block_pp0_stage0_01001;
wire   [95:0] zext_ln174_fu_329_p1;
wire   [95:0] zext_ln174_16_fu_425_p1;
wire   [17:0] writeSar_ackd_V_fu_233_p4;
wire   [17:0] sub_ln213_fu_263_p2;
wire   [17:0] writeSar_min_window_V_fu_253_p4;
wire   [17:0] usedLength_fu_275_p2;
wire   [0:0] icmp_ln886_fu_281_p2;
wire   [17:0] usableWindow_V_fu_287_p2;
wire   [0:0] icmp_ln886_2_fu_311_p2;
wire   [0:0] icmp_ln878_fu_317_p2;
wire   [64:0] or_ln_fu_337_p5;
wire   [11:0] trunc_ln215_fu_352_p1;
wire   [93:0] tmp_57_i_fu_356_p5;
wire   [93:0] or_ln174_fu_366_p2;
wire   [49:0] tmp_58_i_fu_377_p4;
wire   [111:0] or_ln174_s_fu_390_p7;
wire   [17:0] add_ln208_fu_409_p2;
wire   [64:0] or_ln174_2_fu_413_p5;
wire   [65:0] or_ln174_1_fu_430_p5;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to1;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
wire    regslice_both_s_axis_tx_data_req_metadata_V_U_apdone_blk;
wire   [31:0] s_axis_tx_data_req_metadata_V_TDATA_int_regslice;
wire    s_axis_tx_data_req_metadata_V_TVALID_int_regslice;
reg    s_axis_tx_data_req_metadata_V_TREADY_int_regslice;
wire    regslice_both_s_axis_tx_data_req_metadata_V_U_ack_in;
reg   [95:0] m_axis_tx_data_rsp_V_TDATA_int_regslice;
reg    m_axis_tx_data_rsp_V_TVALID_int_regslice;
wire    m_axis_tx_data_rsp_V_TREADY_int_regslice;
wire    regslice_both_m_axis_tx_data_rsp_V_U_vld_out;
reg    ap_condition_329;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 tai_state = 1'd0;
#0 tasi_writeMeta_length_V = 16'd0;
#0 tasi_writeMeta_sessionID_V = 16'd0;
end

toe_top_regslice_both #(
    .DataWidth( 32 ))
regslice_both_s_axis_tx_data_req_metadata_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(s_axis_tx_data_req_metadata_V_TDATA),
    .vld_in(s_axis_tx_data_req_metadata_V_TVALID),
    .ack_in(regslice_both_s_axis_tx_data_req_metadata_V_U_ack_in),
    .data_out(s_axis_tx_data_req_metadata_V_TDATA_int_regslice),
    .vld_out(s_axis_tx_data_req_metadata_V_TVALID_int_regslice),
    .ack_out(s_axis_tx_data_req_metadata_V_TREADY_int_regslice),
    .apdone_blk(regslice_both_s_axis_tx_data_req_metadata_V_U_apdone_blk)
);

toe_top_regslice_both #(
    .DataWidth( 96 ))
regslice_both_m_axis_tx_data_rsp_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(m_axis_tx_data_rsp_V_TDATA_int_regslice),
    .vld_in(m_axis_tx_data_rsp_V_TVALID_int_regslice),
    .ack_in(m_axis_tx_data_rsp_V_TREADY_int_regslice),
    .data_out(m_axis_tx_data_rsp_V_TDATA),
    .vld_out(regslice_both_m_axis_tx_data_rsp_V_U_vld_out),
    .ack_out(m_axis_tx_data_rsp_V_TREADY),
    .apdone_blk(regslice_both_m_axis_tx_data_rsp_V_U_apdone_blk)
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
    if ((((tmp_3_i_nbreadreq_fu_132_p3 == 1'd1) & (tmp_i_245_nbreadreq_fu_124_p3 == 1'd1) & (tai_state == 1'd1) & (or_ln100_fu_323_p2 == 1'd1) & (icmp_ln86_fu_301_p2 == 1'd1) & (ap_start == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_3_i_nbreadreq_fu_132_p3 == 1'd1) & (tmp_i_245_nbreadreq_fu_124_p3 == 1'd1) & (tai_state == 1'd1) & (or_ln100_fu_323_p2 == 1'd0) & (icmp_ln86_fu_301_p2 == 1'd1) & (ap_start == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_3_i_nbreadreq_fu_132_p3 == 1'd1) & (tmp_i_245_nbreadreq_fu_124_p3 == 1'd1) & (tai_state == 1'd1) & (icmp_ln86_fu_301_p2 == 1'd0) & (ap_start == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        tai_state <= 1'd0;
    end else if (((tmp_i_nbreadreq_fu_110_p3 == 1'd1) & (tai_state == 1'd0) & (ap_start == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tai_state <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_i_nbreadreq_fu_132_p3 == 1'd1) & (tmp_i_245_nbreadreq_fu_124_p3 == 1'd1) & (tai_state == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln86_reg_494 <= icmp_ln86_fu_301_p2;
        maxWriteLength_reg_483 <= maxWriteLength_fu_269_p2;
        usableWindow_V_1_reg_489 <= usableWindow_V_1_fu_293_p3;
        writeSar_mempt_V_reg_476 <= {{txSar2txApp_upd_rsp_dout[81:64]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln86_reg_494_pp0_iter1_reg <= icmp_ln86_reg_494;
        len_V_reg_449 <= tasi_writeMeta_length_V;
        or_ln100_reg_503_pp0_iter1_reg <= or_ln100_reg_503;
        tai_state_load_reg_445 <= tai_state;
        tai_state_load_reg_445_pp0_iter1_reg <= tai_state_load_reg_445;
        tmp_3_i_reg_472_pp0_iter1_reg <= tmp_3_i_reg_472;
        tmp_i_245_reg_468_pp0_iter1_reg <= tmp_i_245_reg_468;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_i_nbreadreq_fu_132_p3 == 1'd1) & (tmp_i_245_nbreadreq_fu_124_p3 == 1'd1) & (tai_state == 1'd1) & (icmp_ln86_fu_301_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        or_ln100_reg_503 <= or_ln100_fu_323_p2;
        zext_ln886_reg_498[15 : 0] <= zext_ln886_fu_307_p1[15 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_i_nbreadreq_fu_110_p3 == 1'd1) & (tai_state == 1'd0) & (ap_start == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tasi_writeMeta_length_V <= {{s_axis_tx_data_req_metadata_V_TDATA_int_regslice[31:16]}};
        tasi_writeMeta_sessionID_V <= trunc_ln145_fu_201_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_i_245_nbreadreq_fu_124_p3 == 1'd1) & (tai_state == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_3_i_reg_472 <= tmp_3_i_nbreadreq_fu_132_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((tai_state == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_i_245_reg_468 <= tmp_i_245_nbreadreq_fu_124_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((tai_state == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_i_reg_458 <= tmp_i_nbreadreq_fu_110_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_i_nbreadreq_fu_110_p3 == 1'd1) & (tai_state == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        trunc_ln145_reg_462 <= trunc_ln145_fu_201_p1;
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
    if (((ap_start == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op97_write_state3 == 1'b1)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op95_write_state3 == 1'b1)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op93_write_state3 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op92_write_state2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op82_write_state2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op74_write_state2 == 1'b1)))) begin
        m_axis_tx_data_rsp_V_TDATA_blk_n = m_axis_tx_data_rsp_V_TREADY_int_regslice;
    end else begin
        m_axis_tx_data_rsp_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_329)) begin
        if ((ap_predicate_op92_write_state2 == 1'b1)) begin
            m_axis_tx_data_rsp_V_TDATA_int_regslice = zext_ln174_12_fu_440_p1;
        end else if ((ap_predicate_op82_write_state2 == 1'b1)) begin
            m_axis_tx_data_rsp_V_TDATA_int_regslice = zext_ln174_14_fu_385_p1;
        end else if ((ap_predicate_op74_write_state2 == 1'b1)) begin
            m_axis_tx_data_rsp_V_TDATA_int_regslice = zext_ln174_11_fu_347_p1;
        end else begin
            m_axis_tx_data_rsp_V_TDATA_int_regslice = 'bx;
        end
    end else begin
        m_axis_tx_data_rsp_V_TDATA_int_regslice = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op92_write_state2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op82_write_state2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op74_write_state2 == 1'b1)))) begin
        m_axis_tx_data_rsp_V_TVALID_int_regslice = 1'b1;
    end else begin
        m_axis_tx_data_rsp_V_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if (((ap_predicate_op36_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_done_reg == 1'b0))) begin
        s_axis_tx_data_req_metadata_V_TDATA_blk_n = s_axis_tx_data_req_metadata_V_TVALID_int_regslice;
    end else begin
        s_axis_tx_data_req_metadata_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op36_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_axis_tx_data_req_metadata_V_TREADY_int_regslice = 1'b1;
    end else begin
        s_axis_tx_data_req_metadata_V_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if (((ap_predicate_op46_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_done_reg == 1'b0))) begin
        stateTable2txApp_rsp_blk_n = stateTable2txApp_rsp_empty_n;
    end else begin
        stateTable2txApp_rsp_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op46_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        stateTable2txApp_rsp_read = 1'b1;
    end else begin
        stateTable2txApp_rsp_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op79_write_state2 == 1'b1))) begin
        tasi_meta2pkgPushCmd_blk_n = tasi_meta2pkgPushCmd_full_n;
    end else begin
        tasi_meta2pkgPushCmd_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op79_write_state2 == 1'b1))) begin
        tasi_meta2pkgPushCmd_write = 1'b1;
    end else begin
        tasi_meta2pkgPushCmd_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_predicate_op67_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        txApp2stateTable_req_blk_n = txApp2stateTable_req_full_n;
    end else begin
        txApp2stateTable_req_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op67_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        txApp2stateTable_req_write = 1'b1;
    end else begin
        txApp2stateTable_req_write = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_predicate_op69_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op89_write_state2 == 1'b1)))) begin
        txApp2txSar_upd_req_blk_n = txApp2txSar_upd_req_full_n;
    end else begin
        txApp2txSar_upd_req_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_329)) begin
        if ((ap_predicate_op89_write_state2 == 1'b1)) begin
            txApp2txSar_upd_req_din = zext_ln174_16_fu_425_p1;
        end else if ((ap_predicate_op69_write_state2 == 1'b1)) begin
            txApp2txSar_upd_req_din = zext_ln174_fu_329_p1;
        end else begin
            txApp2txSar_upd_req_din = 'bx;
        end
    end else begin
        txApp2txSar_upd_req_din = 'bx;
    end
end

always @ (*) begin
    if ((((ap_predicate_op69_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op89_write_state2 == 1'b1)))) begin
        txApp2txSar_upd_req_write = 1'b1;
    end else begin
        txApp2txSar_upd_req_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op85_write_state2 == 1'b1))) begin
        txAppStream2event_mergeEvent_blk_n = txAppStream2event_mergeEvent_full_n;
    end else begin
        txAppStream2event_mergeEvent_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op85_write_state2 == 1'b1))) begin
        txAppStream2event_mergeEvent_write = 1'b1;
    end else begin
        txAppStream2event_mergeEvent_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_predicate_op47_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_done_reg == 1'b0))) begin
        txSar2txApp_upd_rsp_blk_n = txSar2txApp_upd_rsp_empty_n;
    end else begin
        txSar2txApp_upd_rsp_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op47_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        txSar2txApp_upd_rsp_read = 1'b1;
    end else begin
        txSar2txApp_upd_rsp_read = 1'b0;
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

assign add_ln208_fu_409_p2 = (writeSar_mempt_V_reg_476 + zext_ln886_reg_498);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op47_read_state1 == 1'b1) & (txSar2txApp_upd_rsp_empty_n == 1'b0)) | ((ap_predicate_op46_read_state1 == 1'b1) & (stateTable2txApp_rsp_empty_n == 1'b0)) | ((s_axis_tx_data_req_metadata_V_TVALID_int_regslice == 1'b0) & (ap_predicate_op36_read_state1 == 1'b1)))) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_m_axis_tx_data_rsp_V_U_apdone_blk == 1'b1) | ((m_axis_tx_data_rsp_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op97_write_state3 == 1'b1)) | ((m_axis_tx_data_rsp_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op95_write_state3 == 1'b1)) | ((m_axis_tx_data_rsp_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op93_write_state3 == 1'b1)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ap_predicate_op69_write_state2 == 1'b1) & (txApp2txSar_upd_req_full_n == 1'b0)) | ((txApp2txSar_upd_req_full_n == 1'b0) & (ap_predicate_op89_write_state2 == 1'b1)) | ((ap_predicate_op67_write_state2 == 1'b1) & (txApp2stateTable_req_full_n == 1'b0)) | ((m_axis_tx_data_rsp_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op92_write_state2 == 1'b1)) | ((m_axis_tx_data_rsp_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op82_write_state2 == 1'b1)) | ((m_axis_tx_data_rsp_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op74_write_state2 == 1'b1)) | ((ap_predicate_op85_write_state2 == 1'b1) & (txAppStream2event_mergeEvent_full_n == 1'b0)) | ((ap_predicate_op79_write_state2 == 1'b1) & (tasi_meta2pkgPushCmd_full_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op47_read_state1 == 1'b1) & (txSar2txApp_upd_rsp_empty_n == 1'b0)) | ((ap_predicate_op46_read_state1 == 1'b1) & (stateTable2txApp_rsp_empty_n == 1'b0)) | ((s_axis_tx_data_req_metadata_V_TVALID_int_regslice == 1'b0) & (ap_predicate_op36_read_state1 == 1'b1)))) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_m_axis_tx_data_rsp_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((m_axis_tx_data_rsp_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op97_write_state3 == 1'b1)) | ((m_axis_tx_data_rsp_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op95_write_state3 == 1'b1)) | ((m_axis_tx_data_rsp_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op93_write_state3 == 1'b1)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state2_io) | ((ap_predicate_op69_write_state2 == 1'b1) & (txApp2txSar_upd_req_full_n == 1'b0)) | ((txApp2txSar_upd_req_full_n == 1'b0) & (ap_predicate_op89_write_state2 == 1'b1)) | ((ap_predicate_op67_write_state2 == 1'b1) & (txApp2stateTable_req_full_n == 1'b0)) | ((m_axis_tx_data_rsp_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op92_write_state2 == 1'b1)) | ((m_axis_tx_data_rsp_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op82_write_state2 == 1'b1)) | ((m_axis_tx_data_rsp_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op74_write_state2 == 1'b1)) | ((ap_predicate_op85_write_state2 == 1'b1) & (txAppStream2event_mergeEvent_full_n == 1'b0)) | ((ap_predicate_op79_write_state2 == 1'b1) & (tasi_meta2pkgPushCmd_full_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op47_read_state1 == 1'b1) & (txSar2txApp_upd_rsp_empty_n == 1'b0)) | ((ap_predicate_op46_read_state1 == 1'b1) & (stateTable2txApp_rsp_empty_n == 1'b0)) | ((s_axis_tx_data_req_metadata_V_TVALID_int_regslice == 1'b0) & (ap_predicate_op36_read_state1 == 1'b1)))) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_m_axis_tx_data_rsp_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((m_axis_tx_data_rsp_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op97_write_state3 == 1'b1)) | ((m_axis_tx_data_rsp_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op95_write_state3 == 1'b1)) | ((m_axis_tx_data_rsp_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op93_write_state3 == 1'b1)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state2_io) | ((ap_predicate_op69_write_state2 == 1'b1) & (txApp2txSar_upd_req_full_n == 1'b0)) | ((txApp2txSar_upd_req_full_n == 1'b0) & (ap_predicate_op89_write_state2 == 1'b1)) | ((ap_predicate_op67_write_state2 == 1'b1) & (txApp2stateTable_req_full_n == 1'b0)) | ((m_axis_tx_data_rsp_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op92_write_state2 == 1'b1)) | ((m_axis_tx_data_rsp_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op82_write_state2 == 1'b1)) | ((m_axis_tx_data_rsp_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op74_write_state2 == 1'b1)) | ((ap_predicate_op85_write_state2 == 1'b1) & (txAppStream2event_mergeEvent_full_n == 1'b0)) | ((ap_predicate_op79_write_state2 == 1'b1) & (tasi_meta2pkgPushCmd_full_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | ((ap_predicate_op47_read_state1 == 1'b1) & (txSar2txApp_upd_rsp_empty_n == 1'b0)) | ((ap_predicate_op46_read_state1 == 1'b1) & (stateTable2txApp_rsp_empty_n == 1'b0)) | ((s_axis_tx_data_req_metadata_V_TVALID_int_regslice == 1'b0) & (ap_predicate_op36_read_state1 == 1'b1)));
end

always @ (*) begin
    ap_block_state2_io = (((m_axis_tx_data_rsp_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op92_write_state2 == 1'b1)) | ((m_axis_tx_data_rsp_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op82_write_state2 == 1'b1)) | ((m_axis_tx_data_rsp_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op74_write_state2 == 1'b1)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((ap_predicate_op69_write_state2 == 1'b1) & (txApp2txSar_upd_req_full_n == 1'b0)) | ((txApp2txSar_upd_req_full_n == 1'b0) & (ap_predicate_op89_write_state2 == 1'b1)) | ((ap_predicate_op67_write_state2 == 1'b1) & (txApp2stateTable_req_full_n == 1'b0)) | ((m_axis_tx_data_rsp_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op92_write_state2 == 1'b1)) | ((m_axis_tx_data_rsp_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op82_write_state2 == 1'b1)) | ((m_axis_tx_data_rsp_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op74_write_state2 == 1'b1)) | ((ap_predicate_op85_write_state2 == 1'b1) & (txAppStream2event_mergeEvent_full_n == 1'b0)) | ((ap_predicate_op79_write_state2 == 1'b1) & (tasi_meta2pkgPushCmd_full_n == 1'b0)));
end

always @ (*) begin
    ap_block_state3_io = (((m_axis_tx_data_rsp_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op97_write_state3 == 1'b1)) | ((m_axis_tx_data_rsp_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op95_write_state3 == 1'b1)) | ((m_axis_tx_data_rsp_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op93_write_state3 == 1'b1)));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = ((regslice_both_m_axis_tx_data_rsp_V_U_apdone_blk == 1'b1) | ((m_axis_tx_data_rsp_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op97_write_state3 == 1'b1)) | ((m_axis_tx_data_rsp_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op95_write_state3 == 1'b1)) | ((m_axis_tx_data_rsp_V_TREADY_int_regslice == 1'b0) & (ap_predicate_op93_write_state3 == 1'b1)));
end

always @ (*) begin
    ap_condition_329 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

always @ (*) begin
    ap_predicate_op36_read_state1 = ((tmp_i_nbreadreq_fu_110_p3 == 1'd1) & (tai_state == 1'd0));
end

always @ (*) begin
    ap_predicate_op46_read_state1 = ((tmp_3_i_nbreadreq_fu_132_p3 == 1'd1) & (tmp_i_245_nbreadreq_fu_124_p3 == 1'd1) & (tai_state == 1'd1));
end

always @ (*) begin
    ap_predicate_op47_read_state1 = ((tmp_3_i_nbreadreq_fu_132_p3 == 1'd1) & (tmp_i_245_nbreadreq_fu_124_p3 == 1'd1) & (tai_state == 1'd1));
end

always @ (*) begin
    ap_predicate_op67_write_state2 = ((tmp_i_reg_458 == 1'd1) & (tai_state_load_reg_445 == 1'd0));
end

always @ (*) begin
    ap_predicate_op69_write_state2 = ((tmp_i_reg_458 == 1'd1) & (tai_state_load_reg_445 == 1'd0));
end

always @ (*) begin
    ap_predicate_op74_write_state2 = ((tai_state_load_reg_445 == 1'd1) & (icmp_ln86_reg_494 == 1'd0) & (tmp_3_i_reg_472 == 1'd1) & (tmp_i_245_reg_468 == 1'd1));
end

always @ (*) begin
    ap_predicate_op79_write_state2 = ((tai_state_load_reg_445 == 1'd1) & (or_ln100_reg_503 == 1'd0) & (icmp_ln86_reg_494 == 1'd1) & (tmp_3_i_reg_472 == 1'd1) & (tmp_i_245_reg_468 == 1'd1));
end

always @ (*) begin
    ap_predicate_op82_write_state2 = ((tai_state_load_reg_445 == 1'd1) & (or_ln100_reg_503 == 1'd0) & (icmp_ln86_reg_494 == 1'd1) & (tmp_3_i_reg_472 == 1'd1) & (tmp_i_245_reg_468 == 1'd1));
end

always @ (*) begin
    ap_predicate_op85_write_state2 = ((tai_state_load_reg_445 == 1'd1) & (or_ln100_reg_503 == 1'd0) & (icmp_ln86_reg_494 == 1'd1) & (tmp_3_i_reg_472 == 1'd1) & (tmp_i_245_reg_468 == 1'd1));
end

always @ (*) begin
    ap_predicate_op89_write_state2 = ((tai_state_load_reg_445 == 1'd1) & (or_ln100_reg_503 == 1'd0) & (icmp_ln86_reg_494 == 1'd1) & (tmp_3_i_reg_472 == 1'd1) & (tmp_i_245_reg_468 == 1'd1));
end

always @ (*) begin
    ap_predicate_op92_write_state2 = ((tai_state_load_reg_445 == 1'd1) & (or_ln100_reg_503 == 1'd1) & (icmp_ln86_reg_494 == 1'd1) & (tmp_3_i_reg_472 == 1'd1) & (tmp_i_245_reg_468 == 1'd1));
end

always @ (*) begin
    ap_predicate_op93_write_state3 = ((icmp_ln86_reg_494_pp0_iter1_reg == 1'd0) & (tmp_3_i_reg_472_pp0_iter1_reg == 1'd1) & (tmp_i_245_reg_468_pp0_iter1_reg == 1'd1) & (tai_state_load_reg_445_pp0_iter1_reg == 1'd1));
end

always @ (*) begin
    ap_predicate_op95_write_state3 = ((or_ln100_reg_503_pp0_iter1_reg == 1'd0) & (icmp_ln86_reg_494_pp0_iter1_reg == 1'd1) & (tmp_3_i_reg_472_pp0_iter1_reg == 1'd1) & (tmp_i_245_reg_468_pp0_iter1_reg == 1'd1) & (tai_state_load_reg_445_pp0_iter1_reg == 1'd1));
end

always @ (*) begin
    ap_predicate_op97_write_state3 = ((or_ln100_reg_503_pp0_iter1_reg == 1'd1) & (icmp_ln86_reg_494_pp0_iter1_reg == 1'd1) & (tmp_3_i_reg_472_pp0_iter1_reg == 1'd1) & (tmp_i_245_reg_468_pp0_iter1_reg == 1'd1) & (tai_state_load_reg_445_pp0_iter1_reg == 1'd1));
end

assign icmp_ln86_fu_301_p2 = ((stateTable2txApp_rsp_dout == 32'd3) ? 1'b1 : 1'b0);

assign icmp_ln878_fu_317_p2 = ((usableWindow_V_1_fu_293_p3 < zext_ln886_fu_307_p1) ? 1'b1 : 1'b0);

assign icmp_ln886_2_fu_311_p2 = ((zext_ln886_fu_307_p1 > maxWriteLength_fu_269_p2) ? 1'b1 : 1'b0);

assign icmp_ln886_fu_281_p2 = ((writeSar_min_window_V_fu_253_p4 > usedLength_fu_275_p2) ? 1'b1 : 1'b0);

assign m_axis_tx_data_rsp_V_TVALID = regslice_both_m_axis_tx_data_rsp_V_U_vld_out;

assign maxWriteLength_fu_269_p2 = ($signed(sub_ln213_fu_263_p2) + $signed(18'd262143));

assign or_ln100_fu_323_p2 = (icmp_ln886_2_fu_311_p2 | icmp_ln878_fu_317_p2);

assign or_ln174_1_fu_430_p5 = {{{{{{16'd32768}, {usableWindow_V_1_reg_489}}}, {len_V_reg_449}}}, {tasi_writeMeta_sessionID_V}};

assign or_ln174_2_fu_413_p5 = {{{{{{15'd16384}, {add_ln208_fu_409_p2}}}, {16'd0}}}, {tasi_writeMeta_sessionID_V}};

assign or_ln174_fu_366_p2 = (tmp_57_i_fu_356_p5 | 94'd72339073309605888);

assign or_ln174_s_fu_390_p7 = {{{{{{len_V_reg_449}, {14'd0}}, {writeSar_mempt_V_reg_476}}, {16'd0}}, {tasi_writeMeta_sessionID_V}}, {32'd0}};

assign or_ln_fu_337_p5 = {{{{{{15'd16384}, {maxWriteLength_reg_483}}}, {len_V_reg_449}}}, {tasi_writeMeta_sessionID_V}};

assign s_axis_tx_data_req_metadata_V_TREADY = regslice_both_s_axis_tx_data_req_metadata_V_U_ack_in;

assign sub_ln213_fu_263_p2 = (writeSar_ackd_V_fu_233_p4 - writeSar_mempt_V_fu_243_p4);

assign tasi_meta2pkgPushCmd_din = or_ln174_fu_366_p2;

assign tmp_3_i_nbreadreq_fu_132_p3 = stateTable2txApp_rsp_empty_n;

assign tmp_57_i_fu_356_p5 = {{{{trunc_ln215_fu_352_p1}, {writeSar_mempt_V_reg_476}}, {48'd0}}, {len_V_reg_449}};

assign tmp_58_i_fu_377_p4 = {{{maxWriteLength_reg_483}, {len_V_reg_449}}, {tasi_writeMeta_sessionID_V}};

assign tmp_i_245_nbreadreq_fu_124_p3 = txSar2txApp_upd_rsp_empty_n;

assign tmp_i_nbreadreq_fu_110_p3 = s_axis_tx_data_req_metadata_V_TVALID_int_regslice;

assign trunc_ln145_fu_201_p1 = s_axis_tx_data_req_metadata_V_TDATA_int_regslice[15:0];

assign trunc_ln215_fu_352_p1 = tasi_writeMeta_sessionID_V[11:0];

assign txApp2stateTable_req_din = trunc_ln145_reg_462;

assign txAppStream2event_mergeEvent_din = or_ln174_s_fu_390_p7;

assign usableWindow_V_1_fu_293_p3 = ((icmp_ln886_fu_281_p2[0:0] == 1'b1) ? usableWindow_V_fu_287_p2 : 18'd0);

assign usableWindow_V_fu_287_p2 = (writeSar_min_window_V_fu_253_p4 - usedLength_fu_275_p2);

assign usedLength_fu_275_p2 = (writeSar_mempt_V_fu_243_p4 - writeSar_ackd_V_fu_233_p4);

assign writeSar_ackd_V_fu_233_p4 = {{txSar2txApp_upd_rsp_dout[49:32]}};

assign writeSar_mempt_V_fu_243_p4 = {{txSar2txApp_upd_rsp_dout[81:64]}};

assign writeSar_min_window_V_fu_253_p4 = {{txSar2txApp_upd_rsp_dout[113:96]}};

assign zext_ln174_11_fu_347_p1 = or_ln_fu_337_p5;

assign zext_ln174_12_fu_440_p1 = or_ln174_1_fu_430_p5;

assign zext_ln174_14_fu_385_p1 = tmp_58_i_fu_377_p4;

assign zext_ln174_16_fu_425_p1 = or_ln174_2_fu_413_p5;

assign zext_ln174_fu_329_p1 = trunc_ln145_reg_462;

assign zext_ln886_fu_307_p1 = tasi_writeMeta_length_V;

always @ (posedge ap_clk) begin
    zext_ln886_reg_498[17:16] <= 2'b00;
end

endmodule //toe_top_tasi_metaLoader
