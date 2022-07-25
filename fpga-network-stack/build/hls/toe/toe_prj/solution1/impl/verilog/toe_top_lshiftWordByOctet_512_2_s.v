// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module toe_top_lshiftWordByOctet_512_2_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        rxEng_dataBuffer4_dout,
        rxEng_dataBuffer4_empty_n,
        rxEng_dataBuffer4_read,
        rxEng_dataBuffer5_din,
        rxEng_dataBuffer5_full_n,
        rxEng_dataBuffer5_write
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [1023:0] rxEng_dataBuffer4_dout;
input   rxEng_dataBuffer4_empty_n;
output   rxEng_dataBuffer4_read;
output  [1023:0] rxEng_dataBuffer5_din;
input   rxEng_dataBuffer5_full_n;
output   rxEng_dataBuffer5_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg rxEng_dataBuffer4_read;
reg[1023:0] rxEng_dataBuffer5_din;
reg rxEng_dataBuffer5_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [0:0] ls_writeRemainder_2_load_load_fu_172_p1;
wire   [0:0] tmp_i_nbreadreq_fu_86_p3;
reg    ap_predicate_op18_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] ls_writeRemainder_2_load_reg_351;
reg   [0:0] tmp_i_reg_355;
reg    ap_predicate_op46_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] ls_writeRemainder_2;
reg   [511:0] prevWord_data_V_1;
reg   [63:0] prevWord_keep_V_4;
reg   [0:0] ls_firstWord_2;
reg    rxEng_dataBuffer5_blk_n;
wire    ap_block_pp0_stage0;
reg    rxEng_dataBuffer4_blk_n;
reg   [95:0] reg_164;
reg   [11:0] reg_168;
wire   [415:0] trunc_ln674_fu_208_p1;
reg   [415:0] trunc_ln674_reg_362;
reg   [51:0] p_Result_563_i_reg_368;
wire   [0:0] sendWord_last_V_fu_232_p2;
reg   [0:0] sendWord_last_V_reg_374;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] ap_phi_mux_ls_firstWord_2_flag_0_i_phi_fu_112_p8;
wire   [0:0] ap_phi_reg_pp0_iter0_ls_firstWord_2_flag_0_i_reg_107;
reg   [0:0] ap_phi_reg_pp0_iter1_ls_firstWord_2_flag_0_i_reg_107;
wire   [0:0] currWord_last_V_fu_200_p3;
wire   [0:0] ap_phi_reg_pp0_iter0_ls_firstWord_2_new_0_i_reg_126;
reg   [0:0] ap_phi_reg_pp0_iter1_ls_firstWord_2_new_0_i_reg_126;
wire   [0:0] xor_ln752_fu_250_p2;
wire   [511:0] currWord_data_V_fu_186_p1;
wire   [1023:0] p_02_fu_316_p5;
reg    ap_block_pp0_stage0_01001;
wire   [1023:0] zext_ln174_fu_340_p1;
wire   [11:0] p_Result_564_i_fu_222_p4;
wire   [511:0] p_Result_s_fu_272_p3;
wire   [511:0] p_Result_211_fu_286_p3;
wire   [63:0] p_Result_210_fu_279_p3;
wire   [63:0] p_Result_212_fu_293_p3;
wire   [63:0] select_ln600_fu_308_p3;
wire   [511:0] sendWord_data_V_15_fu_300_p3;
wire   [576:0] or_ln_fu_328_p5;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_129;
reg    ap_condition_132;
reg    ap_condition_77;
reg    ap_condition_162;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ls_writeRemainder_2 = 1'd0;
#0 prevWord_data_V_1 = 512'd0;
#0 prevWord_keep_V_4 = 64'd0;
#0 ls_firstWord_2 = 1'd1;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_nbreadreq_fu_86_p3 == 1'd1) & (ls_writeRemainder_2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (currWord_last_V_fu_200_p3 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_nbreadreq_fu_86_p3 == 1'd1) & (ls_writeRemainder_2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (currWord_last_V_fu_200_p3 == 1'd1)))) begin
        ap_phi_reg_pp0_iter1_ls_firstWord_2_flag_0_i_reg_107 <= 1'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_nbreadreq_fu_86_p3 == 1'd0) & (ls_writeRemainder_2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ls_writeRemainder_2_load_load_fu_172_p1 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ap_phi_reg_pp0_iter1_ls_firstWord_2_flag_0_i_reg_107 <= 1'd0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_reg_pp0_iter1_ls_firstWord_2_flag_0_i_reg_107 <= ap_phi_reg_pp0_iter0_ls_firstWord_2_flag_0_i_reg_107;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_77)) begin
        if ((1'b1 == ap_condition_132)) begin
            ap_phi_reg_pp0_iter1_ls_firstWord_2_new_0_i_reg_126 <= 1'd0;
        end else if ((1'b1 == ap_condition_129)) begin
            ap_phi_reg_pp0_iter1_ls_firstWord_2_new_0_i_reg_126 <= 1'd1;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_ls_firstWord_2_new_0_i_reg_126 <= ap_phi_reg_pp0_iter0_ls_firstWord_2_new_0_i_reg_126;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_77)) begin
        if ((ls_writeRemainder_2_load_load_fu_172_p1 == 1'd1)) begin
            ls_writeRemainder_2 <= 1'd0;
        end else if ((1'b1 == ap_condition_129)) begin
            ls_writeRemainder_2 <= xor_ln752_fu_250_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_phi_mux_ls_firstWord_2_flag_0_i_phi_fu_112_p8 == 1'd1))) begin
        ls_firstWord_2 <= ap_phi_reg_pp0_iter1_ls_firstWord_2_new_0_i_reg_126;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ls_writeRemainder_2_load_reg_351 <= ls_writeRemainder_2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_nbreadreq_fu_86_p3 == 1'd1) & (ls_writeRemainder_2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_Result_563_i_reg_368 <= {{rxEng_dataBuffer4_dout[563:512]}};
        sendWord_last_V_reg_374 <= sendWord_last_V_fu_232_p2;
        trunc_ln674_reg_362 <= trunc_ln674_fu_208_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_nbreadreq_fu_86_p3 == 1'd1) & (ls_writeRemainder_2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prevWord_data_V_1 <= currWord_data_V_fu_186_p1;
        prevWord_keep_V_4 <= {{rxEng_dataBuffer4_dout[575:512]}};
    end
end

always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_nbreadreq_fu_86_p3 == 1'd1) & (ls_writeRemainder_2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ls_writeRemainder_2_load_load_fu_172_p1 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_164 <= {{prevWord_data_V_1[511:416]}};
        reg_168 <= {{prevWord_keep_V_4[63:52]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ls_writeRemainder_2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_i_reg_355 <= tmp_i_nbreadreq_fu_86_p3;
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
        rxEng_dataBuffer4_blk_n = rxEng_dataBuffer4_empty_n;
    end else begin
        rxEng_dataBuffer4_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op18_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        rxEng_dataBuffer4_read = 1'b1;
    end else begin
        rxEng_dataBuffer4_read = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ls_writeRemainder_2_load_reg_351 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0) & (ap_predicate_op46_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        rxEng_dataBuffer5_blk_n = rxEng_dataBuffer5_full_n;
    end else begin
        rxEng_dataBuffer5_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_162)) begin
        if ((ls_writeRemainder_2_load_reg_351 == 1'd1)) begin
            rxEng_dataBuffer5_din = zext_ln174_fu_340_p1;
        end else if ((ap_predicate_op46_write_state2 == 1'b1)) begin
            rxEng_dataBuffer5_din = p_02_fu_316_p5;
        end else begin
            rxEng_dataBuffer5_din = 'bx;
        end
    end else begin
        rxEng_dataBuffer5_din = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ls_writeRemainder_2_load_reg_351 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op46_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        rxEng_dataBuffer5_write = 1'b1;
    end else begin
        rxEng_dataBuffer5_write = 1'b0;
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
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ls_writeRemainder_2_load_reg_351 == 1'd1) & (rxEng_dataBuffer5_full_n == 1'b0)) | ((ap_predicate_op46_write_state2 == 1'b1) & (rxEng_dataBuffer5_full_n == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op18_read_state1 == 1'b1) & (rxEng_dataBuffer4_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ls_writeRemainder_2_load_reg_351 == 1'd1) & (rxEng_dataBuffer5_full_n == 1'b0)) | ((ap_predicate_op46_write_state2 == 1'b1) & (rxEng_dataBuffer5_full_n == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op18_read_state1 == 1'b1) & (rxEng_dataBuffer4_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ls_writeRemainder_2_load_reg_351 == 1'd1) & (rxEng_dataBuffer5_full_n == 1'b0)) | ((ap_predicate_op46_write_state2 == 1'b1) & (rxEng_dataBuffer5_full_n == 1'b0)))) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op18_read_state1 == 1'b1) & (rxEng_dataBuffer4_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | ((ap_predicate_op18_read_state1 == 1'b1) & (rxEng_dataBuffer4_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((ls_writeRemainder_2_load_reg_351 == 1'd1) & (rxEng_dataBuffer5_full_n == 1'b0)) | ((ap_predicate_op46_write_state2 == 1'b1) & (rxEng_dataBuffer5_full_n == 1'b0)));
end

always @ (*) begin
    ap_condition_129 = ((tmp_i_nbreadreq_fu_86_p3 == 1'd1) & (ls_writeRemainder_2 == 1'd0) & (currWord_last_V_fu_200_p3 == 1'd1));
end

always @ (*) begin
    ap_condition_132 = ((tmp_i_nbreadreq_fu_86_p3 == 1'd1) & (ls_writeRemainder_2 == 1'd0) & (currWord_last_V_fu_200_p3 == 1'd0));
end

always @ (*) begin
    ap_condition_162 = ((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_77 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_phi_mux_ls_firstWord_2_flag_0_i_phi_fu_112_p8 = ap_phi_reg_pp0_iter1_ls_firstWord_2_flag_0_i_reg_107;

assign ap_phi_reg_pp0_iter0_ls_firstWord_2_flag_0_i_reg_107 = 'bx;

assign ap_phi_reg_pp0_iter0_ls_firstWord_2_new_0_i_reg_126 = 'bx;

always @ (*) begin
    ap_predicate_op18_read_state1 = ((tmp_i_nbreadreq_fu_86_p3 == 1'd1) & (ls_writeRemainder_2 == 1'd0));
end

always @ (*) begin
    ap_predicate_op46_write_state2 = ((tmp_i_reg_355 == 1'd1) & (ls_writeRemainder_2_load_reg_351 == 1'd0));
end

assign currWord_data_V_fu_186_p1 = rxEng_dataBuffer4_dout[511:0];

assign currWord_last_V_fu_200_p3 = rxEng_dataBuffer4_dout[32'd576];

assign ls_writeRemainder_2_load_load_fu_172_p1 = ls_writeRemainder_2;

assign or_ln_fu_328_p5 = {{{{{{53'd4503599627370496}, {reg_168}}}, {416'd0}}}, {reg_164}};

assign p_02_fu_316_p5 = {{{{{{447'd0}, {sendWord_last_V_reg_374}}}, {select_ln600_fu_308_p3}}}, {sendWord_data_V_15_fu_300_p3}};

assign p_Result_210_fu_279_p3 = {{p_Result_563_i_reg_368}, {12'd4095}};

assign p_Result_211_fu_286_p3 = {{trunc_ln674_reg_362}, {reg_164}};

assign p_Result_212_fu_293_p3 = {{p_Result_563_i_reg_368}, {reg_168}};

assign p_Result_564_i_fu_222_p4 = {{rxEng_dataBuffer4_dout[575:564]}};

assign p_Result_s_fu_272_p3 = {{trunc_ln674_reg_362}, {96'd0}};

assign select_ln600_fu_308_p3 = ((ls_firstWord_2[0:0] == 1'b1) ? p_Result_210_fu_279_p3 : p_Result_212_fu_293_p3);

assign sendWord_data_V_15_fu_300_p3 = ((ls_firstWord_2[0:0] == 1'b1) ? p_Result_s_fu_272_p3 : p_Result_211_fu_286_p3);

assign sendWord_last_V_fu_232_p2 = ((p_Result_564_i_fu_222_p4 == 12'd0) ? 1'b1 : 1'b0);

assign tmp_i_nbreadreq_fu_86_p3 = rxEng_dataBuffer4_empty_n;

assign trunc_ln674_fu_208_p1 = rxEng_dataBuffer4_dout[415:0];

assign xor_ln752_fu_250_p2 = (sendWord_last_V_fu_232_p2 ^ 1'd1);

assign zext_ln174_fu_340_p1 = or_ln_fu_328_p5;

endmodule //toe_top_lshiftWordByOctet_512_2_s
