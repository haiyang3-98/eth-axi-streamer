// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module ipv4_top_ipv4_top_entry6 (
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
        local_ipv4_address_out_din,
        local_ipv4_address_out_full_n,
        local_ipv4_address_out_write,
        protocol_out_din,
        protocol_out_full_n,
        protocol_out_write
);

parameter    ap_ST_fsm_state1 = 1'd1;

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
output  [31:0] local_ipv4_address_out_din;
input   local_ipv4_address_out_full_n;
output   local_ipv4_address_out_write;
output  [7:0] protocol_out_din;
input   protocol_out_full_n;
output   protocol_out_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg local_ipv4_address_read;
reg protocol_read;
reg local_ipv4_address_out_write;
reg protocol_out_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    local_ipv4_address_blk_n;
reg    protocol_blk_n;
reg    local_ipv4_address_out_blk_n;
reg    protocol_out_blk_n;
reg    ap_block_state1;
reg   [0:0] ap_NS_fsm;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
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
        end else if ((~((ap_start == 1'b0) | (protocol_out_full_n == 1'b0) | (local_ipv4_address_out_full_n == 1'b0) | (protocol_empty_n == 1'b0) | (local_ipv4_address_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (protocol_out_full_n == 1'b0) | (local_ipv4_address_out_full_n == 1'b0) | (protocol_empty_n == 1'b0) | (local_ipv4_address_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (protocol_out_full_n == 1'b0) | (local_ipv4_address_out_full_n == 1'b0) | (protocol_empty_n == 1'b0) | (local_ipv4_address_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        local_ipv4_address_blk_n = local_ipv4_address_empty_n;
    end else begin
        local_ipv4_address_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        local_ipv4_address_out_blk_n = local_ipv4_address_out_full_n;
    end else begin
        local_ipv4_address_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (protocol_out_full_n == 1'b0) | (local_ipv4_address_out_full_n == 1'b0) | (protocol_empty_n == 1'b0) | (local_ipv4_address_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        local_ipv4_address_out_write = 1'b1;
    end else begin
        local_ipv4_address_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (protocol_out_full_n == 1'b0) | (local_ipv4_address_out_full_n == 1'b0) | (protocol_empty_n == 1'b0) | (local_ipv4_address_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        local_ipv4_address_read = 1'b1;
    end else begin
        local_ipv4_address_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        protocol_blk_n = protocol_empty_n;
    end else begin
        protocol_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        protocol_out_blk_n = protocol_out_full_n;
    end else begin
        protocol_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (protocol_out_full_n == 1'b0) | (local_ipv4_address_out_full_n == 1'b0) | (protocol_empty_n == 1'b0) | (local_ipv4_address_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        protocol_out_write = 1'b1;
    end else begin
        protocol_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (protocol_out_full_n == 1'b0) | (local_ipv4_address_out_full_n == 1'b0) | (protocol_empty_n == 1'b0) | (local_ipv4_address_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        protocol_read = 1'b1;
    end else begin
        protocol_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (protocol_out_full_n == 1'b0) | (local_ipv4_address_out_full_n == 1'b0) | (protocol_empty_n == 1'b0) | (local_ipv4_address_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign local_ipv4_address_out_din = local_ipv4_address_dout;

assign protocol_out_din = protocol_dout;

endmodule //ipv4_top_ipv4_top_entry6
