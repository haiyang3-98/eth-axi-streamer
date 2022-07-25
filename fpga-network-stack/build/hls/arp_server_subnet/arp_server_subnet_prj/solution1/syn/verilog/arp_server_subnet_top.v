// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="arp_server_subnet_top_arp_server_subnet_top,hls_ip_2020_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu3p-ffvc1517-2-i,HLS_INPUT_CLOCK=6.400000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=5.125589,HLS_SYN_LAT=7,HLS_SYN_TPT=1,HLS_SYN_MEM=3,HLS_SYN_DSP=0,HLS_SYN_FF=2513,HLS_SYN_LUT=22032,HLS_VERSION=2020_2}" *)

module arp_server_subnet_top (
        s_axis_TDATA,
        s_axis_TKEEP,
        s_axis_TSTRB,
        s_axis_TLAST,
        s_axis_arp_lookup_request_V_TDATA,
        s_axis_host_arp_lookup_request_V_TDATA,
        m_axis_TDATA,
        m_axis_TKEEP,
        m_axis_TSTRB,
        m_axis_TLAST,
        m_axis_arp_lookup_reply_V_TDATA,
        m_axis_host_arp_lookup_reply_V_TDATA,
        myMacAddress,
        myIpAddress,
        regRequestCount,
        regReplyCount,
        ap_clk,
        ap_rst_n,
        s_axis_TVALID,
        s_axis_TREADY,
        m_axis_TVALID,
        m_axis_TREADY,
        regRequestCount_ap_vld,
        regReplyCount_ap_vld,
        s_axis_arp_lookup_request_V_TVALID,
        s_axis_arp_lookup_request_V_TREADY,
        s_axis_host_arp_lookup_request_V_TVALID,
        s_axis_host_arp_lookup_request_V_TREADY,
        m_axis_arp_lookup_reply_V_TVALID,
        m_axis_arp_lookup_reply_V_TREADY,
        m_axis_host_arp_lookup_reply_V_TVALID,
        m_axis_host_arp_lookup_reply_V_TREADY
);


input  [63:0] s_axis_TDATA;
input  [7:0] s_axis_TKEEP;
input  [7:0] s_axis_TSTRB;
input  [0:0] s_axis_TLAST;
input  [31:0] s_axis_arp_lookup_request_V_TDATA;
input  [31:0] s_axis_host_arp_lookup_request_V_TDATA;
output  [63:0] m_axis_TDATA;
output  [7:0] m_axis_TKEEP;
output  [7:0] m_axis_TSTRB;
output  [0:0] m_axis_TLAST;
output  [127:0] m_axis_arp_lookup_reply_V_TDATA;
output  [127:0] m_axis_host_arp_lookup_reply_V_TDATA;
input  [47:0] myMacAddress;
input  [31:0] myIpAddress;
output  [15:0] regRequestCount;
output  [15:0] regReplyCount;
input   ap_clk;
input   ap_rst_n;
input   s_axis_TVALID;
output   s_axis_TREADY;
output   m_axis_TVALID;
input   m_axis_TREADY;
output   regRequestCount_ap_vld;
output   regReplyCount_ap_vld;
input   s_axis_arp_lookup_request_V_TVALID;
output   s_axis_arp_lookup_request_V_TREADY;
input   s_axis_host_arp_lookup_request_V_TVALID;
output   s_axis_host_arp_lookup_request_V_TREADY;
output   m_axis_arp_lookup_reply_V_TVALID;
input   m_axis_arp_lookup_reply_V_TREADY;
output   m_axis_host_arp_lookup_reply_V_TVALID;
input   m_axis_host_arp_lookup_reply_V_TREADY;

 reg    ap_rst_n_inv;
wire    arp_server_subnet_top_entry3_U0_ap_start;
wire    arp_server_subnet_top_entry3_U0_ap_done;
wire    arp_server_subnet_top_entry3_U0_ap_continue;
wire    arp_server_subnet_top_entry3_U0_ap_idle;
wire    arp_server_subnet_top_entry3_U0_ap_ready;
wire   [47:0] arp_server_subnet_top_entry3_U0_myMacAddress_out_din;
wire    arp_server_subnet_top_entry3_U0_myMacAddress_out_write;
wire   [31:0] arp_server_subnet_top_entry3_U0_myIpAddress_out_din;
wire    arp_server_subnet_top_entry3_U0_myIpAddress_out_write;
wire    arp_server_subnet_top_entry7_U0_ap_start;
wire    arp_server_subnet_top_entry7_U0_ap_done;
wire    arp_server_subnet_top_entry7_U0_ap_continue;
wire    arp_server_subnet_top_entry7_U0_ap_idle;
wire    arp_server_subnet_top_entry7_U0_ap_ready;
wire    arp_server_subnet_top_entry7_U0_myMacAddress_read;
wire    arp_server_subnet_top_entry7_U0_myIpAddress_read;
wire   [47:0] arp_server_subnet_top_entry7_U0_myMacAddress_out_din;
wire    arp_server_subnet_top_entry7_U0_myMacAddress_out_write;
wire   [31:0] arp_server_subnet_top_entry7_U0_myIpAddress_out_din;
wire    arp_server_subnet_top_entry7_U0_myIpAddress_out_write;
wire    convert_axis_to_net_axis_64_U0_ap_start;
wire    convert_axis_to_net_axis_64_U0_ap_done;
wire    convert_axis_to_net_axis_64_U0_ap_continue;
wire    convert_axis_to_net_axis_64_U0_ap_idle;
wire    convert_axis_to_net_axis_64_U0_ap_ready;
wire   [127:0] convert_axis_to_net_axis_64_U0_arpDataIn_internal_din;
wire    convert_axis_to_net_axis_64_U0_arpDataIn_internal_write;
wire    convert_axis_to_net_axis_64_U0_s_axis_TREADY;
wire    convert_net_axis_to_axis_64_U0_ap_start;
wire    convert_net_axis_to_axis_64_U0_ap_done;
wire    convert_net_axis_to_axis_64_U0_ap_continue;
wire    convert_net_axis_to_axis_64_U0_ap_idle;
wire    convert_net_axis_to_axis_64_U0_ap_ready;
wire    convert_net_axis_to_axis_64_U0_arpDataOut_internal_read;
wire   [63:0] convert_net_axis_to_axis_64_U0_m_axis_TDATA;
wire    convert_net_axis_to_axis_64_U0_m_axis_TVALID;
wire   [7:0] convert_net_axis_to_axis_64_U0_m_axis_TKEEP;
wire   [7:0] convert_net_axis_to_axis_64_U0_m_axis_TSTRB;
wire   [0:0] convert_net_axis_to_axis_64_U0_m_axis_TLAST;
wire    ap_sync_continue;
wire    process_arp_pkg_64_U0_ap_start;
wire    process_arp_pkg_64_U0_ap_done;
wire    process_arp_pkg_64_U0_ap_continue;
wire    process_arp_pkg_64_U0_ap_idle;
wire    process_arp_pkg_64_U0_ap_ready;
wire    process_arp_pkg_64_U0_arpDataIn_internal_read;
wire    process_arp_pkg_64_U0_myIpAddress_read;
wire   [31:0] process_arp_pkg_64_U0_myIpAddress_out_din;
wire    process_arp_pkg_64_U0_myIpAddress_out_write;
wire   [191:0] process_arp_pkg_64_U0_arpTableInsertFifo_din;
wire    process_arp_pkg_64_U0_arpTableInsertFifo_write;
wire   [191:0] process_arp_pkg_64_U0_arpReplyMetaFifo_din;
wire    process_arp_pkg_64_U0_arpReplyMetaFifo_write;
wire   [15:0] process_arp_pkg_64_U0_regRequestCount;
wire    process_arp_pkg_64_U0_regRequestCount_ap_vld;
wire   [15:0] process_arp_pkg_64_U0_regReplyCount;
wire    process_arp_pkg_64_U0_regReplyCount_ap_vld;
wire    generate_arp_pkg_64_U0_ap_start;
wire    generate_arp_pkg_64_U0_ap_done;
wire    generate_arp_pkg_64_U0_ap_continue;
wire    generate_arp_pkg_64_U0_ap_idle;
wire    generate_arp_pkg_64_U0_ap_ready;
wire    generate_arp_pkg_64_U0_myMacAddress_read;
wire    generate_arp_pkg_64_U0_myIpAddress_read;
wire    generate_arp_pkg_64_U0_arpRequestMetaFifo_read;
wire    generate_arp_pkg_64_U0_arpReplyMetaFifo_read;
wire   [127:0] generate_arp_pkg_64_U0_arpDataOut_internal_din;
wire    generate_arp_pkg_64_U0_arpDataOut_internal_write;
wire    arp_table_U0_ap_start;
wire    arp_table_U0_ap_done;
wire    arp_table_U0_ap_continue;
wire    arp_table_U0_ap_idle;
wire    arp_table_U0_ap_ready;
wire    arp_table_U0_arpTableInsertFifo_read;
wire   [31:0] arp_table_U0_arpRequestMetaFifo_din;
wire    arp_table_U0_arpRequestMetaFifo_write;
wire    arp_table_U0_s_axis_arp_lookup_request_V_TREADY;
wire    arp_table_U0_s_axis_host_arp_lookup_request_V_TREADY;
wire   [127:0] arp_table_U0_m_axis_arp_lookup_reply_V_TDATA;
wire    arp_table_U0_m_axis_arp_lookup_reply_V_TVALID;
wire   [127:0] arp_table_U0_m_axis_host_arp_lookup_reply_V_TDATA;
wire    arp_table_U0_m_axis_host_arp_lookup_reply_V_TVALID;
wire    myMacAddress_c1_full_n;
wire   [47:0] myMacAddress_c1_dout;
wire    myMacAddress_c1_empty_n;
wire    myIpAddress_c2_full_n;
wire   [31:0] myIpAddress_c2_dout;
wire    myIpAddress_c2_empty_n;
wire    myMacAddress_c_full_n;
wire   [47:0] myMacAddress_c_dout;
wire    myMacAddress_c_empty_n;
wire    myIpAddress_c_full_n;
wire   [31:0] myIpAddress_c_dout;
wire    myIpAddress_c_empty_n;
wire    arpDataIn_internal_full_n;
wire   [127:0] arpDataIn_internal_dout;
wire    arpDataIn_internal_empty_n;
wire    arpDataOut_internal_full_n;
wire   [127:0] arpDataOut_internal_dout;
wire    arpDataOut_internal_empty_n;
wire    myIpAddress_c16_full_n;
wire   [31:0] myIpAddress_c16_dout;
wire    myIpAddress_c16_empty_n;
wire    arpReplyMetaFifo_full_n;
wire   [191:0] arpReplyMetaFifo_dout;
wire    arpReplyMetaFifo_empty_n;
wire    arpTableInsertFifo_full_n;
wire   [191:0] arpTableInsertFifo_dout;
wire    arpTableInsertFifo_empty_n;
wire    arpRequestMetaFifo_full_n;
wire   [31:0] arpRequestMetaFifo_dout;
wire    arpRequestMetaFifo_empty_n;

arp_server_subnet_top_arp_server_subnet_top_entry3 arp_server_subnet_top_entry3_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(arp_server_subnet_top_entry3_U0_ap_start),
    .ap_done(arp_server_subnet_top_entry3_U0_ap_done),
    .ap_continue(arp_server_subnet_top_entry3_U0_ap_continue),
    .ap_idle(arp_server_subnet_top_entry3_U0_ap_idle),
    .ap_ready(arp_server_subnet_top_entry3_U0_ap_ready),
    .myMacAddress(myMacAddress),
    .myIpAddress(myIpAddress),
    .myMacAddress_out_din(arp_server_subnet_top_entry3_U0_myMacAddress_out_din),
    .myMacAddress_out_full_n(myMacAddress_c1_full_n),
    .myMacAddress_out_write(arp_server_subnet_top_entry3_U0_myMacAddress_out_write),
    .myIpAddress_out_din(arp_server_subnet_top_entry3_U0_myIpAddress_out_din),
    .myIpAddress_out_full_n(myIpAddress_c2_full_n),
    .myIpAddress_out_write(arp_server_subnet_top_entry3_U0_myIpAddress_out_write)
);

arp_server_subnet_top_arp_server_subnet_top_entry7 arp_server_subnet_top_entry7_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(arp_server_subnet_top_entry7_U0_ap_start),
    .ap_done(arp_server_subnet_top_entry7_U0_ap_done),
    .ap_continue(arp_server_subnet_top_entry7_U0_ap_continue),
    .ap_idle(arp_server_subnet_top_entry7_U0_ap_idle),
    .ap_ready(arp_server_subnet_top_entry7_U0_ap_ready),
    .myMacAddress_dout(myMacAddress_c1_dout),
    .myMacAddress_empty_n(myMacAddress_c1_empty_n),
    .myMacAddress_read(arp_server_subnet_top_entry7_U0_myMacAddress_read),
    .myIpAddress_dout(myIpAddress_c2_dout),
    .myIpAddress_empty_n(myIpAddress_c2_empty_n),
    .myIpAddress_read(arp_server_subnet_top_entry7_U0_myIpAddress_read),
    .myMacAddress_out_din(arp_server_subnet_top_entry7_U0_myMacAddress_out_din),
    .myMacAddress_out_full_n(myMacAddress_c_full_n),
    .myMacAddress_out_write(arp_server_subnet_top_entry7_U0_myMacAddress_out_write),
    .myIpAddress_out_din(arp_server_subnet_top_entry7_U0_myIpAddress_out_din),
    .myIpAddress_out_full_n(myIpAddress_c_full_n),
    .myIpAddress_out_write(arp_server_subnet_top_entry7_U0_myIpAddress_out_write)
);

arp_server_subnet_top_convert_axis_to_net_axis_64_s convert_axis_to_net_axis_64_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(convert_axis_to_net_axis_64_U0_ap_start),
    .ap_done(convert_axis_to_net_axis_64_U0_ap_done),
    .ap_continue(convert_axis_to_net_axis_64_U0_ap_continue),
    .ap_idle(convert_axis_to_net_axis_64_U0_ap_idle),
    .ap_ready(convert_axis_to_net_axis_64_U0_ap_ready),
    .s_axis_TVALID(s_axis_TVALID),
    .arpDataIn_internal_din(convert_axis_to_net_axis_64_U0_arpDataIn_internal_din),
    .arpDataIn_internal_full_n(arpDataIn_internal_full_n),
    .arpDataIn_internal_write(convert_axis_to_net_axis_64_U0_arpDataIn_internal_write),
    .s_axis_TDATA(s_axis_TDATA),
    .s_axis_TREADY(convert_axis_to_net_axis_64_U0_s_axis_TREADY),
    .s_axis_TKEEP(s_axis_TKEEP),
    .s_axis_TSTRB(s_axis_TSTRB),
    .s_axis_TLAST(s_axis_TLAST)
);

arp_server_subnet_top_convert_net_axis_to_axis_64_s convert_net_axis_to_axis_64_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(convert_net_axis_to_axis_64_U0_ap_start),
    .ap_done(convert_net_axis_to_axis_64_U0_ap_done),
    .ap_continue(convert_net_axis_to_axis_64_U0_ap_continue),
    .ap_idle(convert_net_axis_to_axis_64_U0_ap_idle),
    .ap_ready(convert_net_axis_to_axis_64_U0_ap_ready),
    .arpDataOut_internal_dout(arpDataOut_internal_dout),
    .arpDataOut_internal_empty_n(arpDataOut_internal_empty_n),
    .arpDataOut_internal_read(convert_net_axis_to_axis_64_U0_arpDataOut_internal_read),
    .m_axis_TREADY(m_axis_TREADY),
    .m_axis_TDATA(convert_net_axis_to_axis_64_U0_m_axis_TDATA),
    .m_axis_TVALID(convert_net_axis_to_axis_64_U0_m_axis_TVALID),
    .m_axis_TKEEP(convert_net_axis_to_axis_64_U0_m_axis_TKEEP),
    .m_axis_TSTRB(convert_net_axis_to_axis_64_U0_m_axis_TSTRB),
    .m_axis_TLAST(convert_net_axis_to_axis_64_U0_m_axis_TLAST)
);

arp_server_subnet_top_process_arp_pkg_64_s process_arp_pkg_64_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(process_arp_pkg_64_U0_ap_start),
    .ap_done(process_arp_pkg_64_U0_ap_done),
    .ap_continue(process_arp_pkg_64_U0_ap_continue),
    .ap_idle(process_arp_pkg_64_U0_ap_idle),
    .ap_ready(process_arp_pkg_64_U0_ap_ready),
    .arpDataIn_internal_dout(arpDataIn_internal_dout),
    .arpDataIn_internal_empty_n(arpDataIn_internal_empty_n),
    .arpDataIn_internal_read(process_arp_pkg_64_U0_arpDataIn_internal_read),
    .myIpAddress_dout(myIpAddress_c_dout),
    .myIpAddress_empty_n(myIpAddress_c_empty_n),
    .myIpAddress_read(process_arp_pkg_64_U0_myIpAddress_read),
    .myIpAddress_out_din(process_arp_pkg_64_U0_myIpAddress_out_din),
    .myIpAddress_out_full_n(myIpAddress_c16_full_n),
    .myIpAddress_out_write(process_arp_pkg_64_U0_myIpAddress_out_write),
    .arpTableInsertFifo_din(process_arp_pkg_64_U0_arpTableInsertFifo_din),
    .arpTableInsertFifo_full_n(arpTableInsertFifo_full_n),
    .arpTableInsertFifo_write(process_arp_pkg_64_U0_arpTableInsertFifo_write),
    .arpReplyMetaFifo_din(process_arp_pkg_64_U0_arpReplyMetaFifo_din),
    .arpReplyMetaFifo_full_n(arpReplyMetaFifo_full_n),
    .arpReplyMetaFifo_write(process_arp_pkg_64_U0_arpReplyMetaFifo_write),
    .regRequestCount(process_arp_pkg_64_U0_regRequestCount),
    .regRequestCount_ap_vld(process_arp_pkg_64_U0_regRequestCount_ap_vld),
    .regReplyCount(process_arp_pkg_64_U0_regReplyCount),
    .regReplyCount_ap_vld(process_arp_pkg_64_U0_regReplyCount_ap_vld)
);

arp_server_subnet_top_generate_arp_pkg_64_s generate_arp_pkg_64_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(generate_arp_pkg_64_U0_ap_start),
    .ap_done(generate_arp_pkg_64_U0_ap_done),
    .ap_continue(generate_arp_pkg_64_U0_ap_continue),
    .ap_idle(generate_arp_pkg_64_U0_ap_idle),
    .ap_ready(generate_arp_pkg_64_U0_ap_ready),
    .myMacAddress_dout(myMacAddress_c_dout),
    .myMacAddress_empty_n(myMacAddress_c_empty_n),
    .myMacAddress_read(generate_arp_pkg_64_U0_myMacAddress_read),
    .myIpAddress_dout(myIpAddress_c16_dout),
    .myIpAddress_empty_n(myIpAddress_c16_empty_n),
    .myIpAddress_read(generate_arp_pkg_64_U0_myIpAddress_read),
    .arpRequestMetaFifo_dout(arpRequestMetaFifo_dout),
    .arpRequestMetaFifo_empty_n(arpRequestMetaFifo_empty_n),
    .arpRequestMetaFifo_read(generate_arp_pkg_64_U0_arpRequestMetaFifo_read),
    .arpReplyMetaFifo_dout(arpReplyMetaFifo_dout),
    .arpReplyMetaFifo_empty_n(arpReplyMetaFifo_empty_n),
    .arpReplyMetaFifo_read(generate_arp_pkg_64_U0_arpReplyMetaFifo_read),
    .arpDataOut_internal_din(generate_arp_pkg_64_U0_arpDataOut_internal_din),
    .arpDataOut_internal_full_n(arpDataOut_internal_full_n),
    .arpDataOut_internal_write(generate_arp_pkg_64_U0_arpDataOut_internal_write)
);

arp_server_subnet_top_arp_table arp_table_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(arp_table_U0_ap_start),
    .ap_done(arp_table_U0_ap_done),
    .ap_continue(arp_table_U0_ap_continue),
    .ap_idle(arp_table_U0_ap_idle),
    .ap_ready(arp_table_U0_ap_ready),
    .s_axis_host_arp_lookup_request_V_TVALID(s_axis_host_arp_lookup_request_V_TVALID),
    .s_axis_arp_lookup_request_V_TVALID(s_axis_arp_lookup_request_V_TVALID),
    .arpTableInsertFifo_dout(arpTableInsertFifo_dout),
    .arpTableInsertFifo_empty_n(arpTableInsertFifo_empty_n),
    .arpTableInsertFifo_read(arp_table_U0_arpTableInsertFifo_read),
    .m_axis_host_arp_lookup_reply_V_TREADY(m_axis_host_arp_lookup_reply_V_TREADY),
    .m_axis_arp_lookup_reply_V_TREADY(m_axis_arp_lookup_reply_V_TREADY),
    .arpRequestMetaFifo_din(arp_table_U0_arpRequestMetaFifo_din),
    .arpRequestMetaFifo_full_n(arpRequestMetaFifo_full_n),
    .arpRequestMetaFifo_write(arp_table_U0_arpRequestMetaFifo_write),
    .s_axis_arp_lookup_request_V_TDATA(s_axis_arp_lookup_request_V_TDATA),
    .s_axis_arp_lookup_request_V_TREADY(arp_table_U0_s_axis_arp_lookup_request_V_TREADY),
    .s_axis_host_arp_lookup_request_V_TDATA(s_axis_host_arp_lookup_request_V_TDATA),
    .s_axis_host_arp_lookup_request_V_TREADY(arp_table_U0_s_axis_host_arp_lookup_request_V_TREADY),
    .m_axis_arp_lookup_reply_V_TDATA(arp_table_U0_m_axis_arp_lookup_reply_V_TDATA),
    .m_axis_arp_lookup_reply_V_TVALID(arp_table_U0_m_axis_arp_lookup_reply_V_TVALID),
    .m_axis_host_arp_lookup_reply_V_TDATA(arp_table_U0_m_axis_host_arp_lookup_reply_V_TDATA),
    .m_axis_host_arp_lookup_reply_V_TVALID(arp_table_U0_m_axis_host_arp_lookup_reply_V_TVALID)
);

arp_server_subnet_top_fifo_w48_d2_S myMacAddress_c1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(arp_server_subnet_top_entry3_U0_myMacAddress_out_din),
    .if_full_n(myMacAddress_c1_full_n),
    .if_write(arp_server_subnet_top_entry3_U0_myMacAddress_out_write),
    .if_dout(myMacAddress_c1_dout),
    .if_empty_n(myMacAddress_c1_empty_n),
    .if_read(arp_server_subnet_top_entry7_U0_myMacAddress_read)
);

arp_server_subnet_top_fifo_w32_d2_S myIpAddress_c2_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(arp_server_subnet_top_entry3_U0_myIpAddress_out_din),
    .if_full_n(myIpAddress_c2_full_n),
    .if_write(arp_server_subnet_top_entry3_U0_myIpAddress_out_write),
    .if_dout(myIpAddress_c2_dout),
    .if_empty_n(myIpAddress_c2_empty_n),
    .if_read(arp_server_subnet_top_entry7_U0_myIpAddress_read)
);

arp_server_subnet_top_fifo_w48_d4_S myMacAddress_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(arp_server_subnet_top_entry7_U0_myMacAddress_out_din),
    .if_full_n(myMacAddress_c_full_n),
    .if_write(arp_server_subnet_top_entry7_U0_myMacAddress_out_write),
    .if_dout(myMacAddress_c_dout),
    .if_empty_n(myMacAddress_c_empty_n),
    .if_read(generate_arp_pkg_64_U0_myMacAddress_read)
);

arp_server_subnet_top_fifo_w32_d3_S myIpAddress_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(arp_server_subnet_top_entry7_U0_myIpAddress_out_din),
    .if_full_n(myIpAddress_c_full_n),
    .if_write(arp_server_subnet_top_entry7_U0_myIpAddress_out_write),
    .if_dout(myIpAddress_c_dout),
    .if_empty_n(myIpAddress_c_empty_n),
    .if_read(process_arp_pkg_64_U0_myIpAddress_read)
);

arp_server_subnet_top_fifo_w128_d2_S arpDataIn_internal_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(convert_axis_to_net_axis_64_U0_arpDataIn_internal_din),
    .if_full_n(arpDataIn_internal_full_n),
    .if_write(convert_axis_to_net_axis_64_U0_arpDataIn_internal_write),
    .if_dout(arpDataIn_internal_dout),
    .if_empty_n(arpDataIn_internal_empty_n),
    .if_read(process_arp_pkg_64_U0_arpDataIn_internal_read)
);

arp_server_subnet_top_fifo_w128_d2_S arpDataOut_internal_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(generate_arp_pkg_64_U0_arpDataOut_internal_din),
    .if_full_n(arpDataOut_internal_full_n),
    .if_write(generate_arp_pkg_64_U0_arpDataOut_internal_write),
    .if_dout(arpDataOut_internal_dout),
    .if_empty_n(arpDataOut_internal_empty_n),
    .if_read(convert_net_axis_to_axis_64_U0_arpDataOut_internal_read)
);

arp_server_subnet_top_fifo_w32_d2_S myIpAddress_c16_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(process_arp_pkg_64_U0_myIpAddress_out_din),
    .if_full_n(myIpAddress_c16_full_n),
    .if_write(process_arp_pkg_64_U0_myIpAddress_out_write),
    .if_dout(myIpAddress_c16_dout),
    .if_empty_n(myIpAddress_c16_empty_n),
    .if_read(generate_arp_pkg_64_U0_myIpAddress_read)
);

arp_server_subnet_top_fifo_w192_d4_S arpReplyMetaFifo_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(process_arp_pkg_64_U0_arpReplyMetaFifo_din),
    .if_full_n(arpReplyMetaFifo_full_n),
    .if_write(process_arp_pkg_64_U0_arpReplyMetaFifo_write),
    .if_dout(arpReplyMetaFifo_dout),
    .if_empty_n(arpReplyMetaFifo_empty_n),
    .if_read(generate_arp_pkg_64_U0_arpReplyMetaFifo_read)
);

arp_server_subnet_top_fifo_w192_d4_S arpTableInsertFifo_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(process_arp_pkg_64_U0_arpTableInsertFifo_din),
    .if_full_n(arpTableInsertFifo_full_n),
    .if_write(process_arp_pkg_64_U0_arpTableInsertFifo_write),
    .if_dout(arpTableInsertFifo_dout),
    .if_empty_n(arpTableInsertFifo_empty_n),
    .if_read(arp_table_U0_arpTableInsertFifo_read)
);

arp_server_subnet_top_fifo_w32_d4_S arpRequestMetaFifo_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(arp_table_U0_arpRequestMetaFifo_din),
    .if_full_n(arpRequestMetaFifo_full_n),
    .if_write(arp_table_U0_arpRequestMetaFifo_write),
    .if_dout(arpRequestMetaFifo_dout),
    .if_empty_n(arpRequestMetaFifo_empty_n),
    .if_read(generate_arp_pkg_64_U0_arpRequestMetaFifo_read)
);

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_continue = 1'b0;

assign arp_server_subnet_top_entry3_U0_ap_continue = 1'b1;

assign arp_server_subnet_top_entry3_U0_ap_start = 1'b1;

assign arp_server_subnet_top_entry7_U0_ap_continue = 1'b1;

assign arp_server_subnet_top_entry7_U0_ap_start = 1'b1;

assign arp_table_U0_ap_continue = 1'b1;

assign arp_table_U0_ap_start = 1'b1;

assign convert_axis_to_net_axis_64_U0_ap_continue = 1'b1;

assign convert_axis_to_net_axis_64_U0_ap_start = 1'b1;

assign convert_net_axis_to_axis_64_U0_ap_continue = 1'b1;

assign convert_net_axis_to_axis_64_U0_ap_start = 1'b1;

assign generate_arp_pkg_64_U0_ap_continue = 1'b1;

assign generate_arp_pkg_64_U0_ap_start = 1'b1;

assign m_axis_TDATA = convert_net_axis_to_axis_64_U0_m_axis_TDATA;

assign m_axis_TKEEP = convert_net_axis_to_axis_64_U0_m_axis_TKEEP;

assign m_axis_TLAST = convert_net_axis_to_axis_64_U0_m_axis_TLAST;

assign m_axis_TSTRB = convert_net_axis_to_axis_64_U0_m_axis_TSTRB;

assign m_axis_TVALID = convert_net_axis_to_axis_64_U0_m_axis_TVALID;

assign m_axis_arp_lookup_reply_V_TDATA = arp_table_U0_m_axis_arp_lookup_reply_V_TDATA;

assign m_axis_arp_lookup_reply_V_TVALID = arp_table_U0_m_axis_arp_lookup_reply_V_TVALID;

assign m_axis_host_arp_lookup_reply_V_TDATA = arp_table_U0_m_axis_host_arp_lookup_reply_V_TDATA;

assign m_axis_host_arp_lookup_reply_V_TVALID = arp_table_U0_m_axis_host_arp_lookup_reply_V_TVALID;

assign process_arp_pkg_64_U0_ap_continue = 1'b1;

assign process_arp_pkg_64_U0_ap_start = 1'b1;

assign regReplyCount = process_arp_pkg_64_U0_regReplyCount;

assign regReplyCount_ap_vld = process_arp_pkg_64_U0_regReplyCount_ap_vld;

assign regRequestCount = process_arp_pkg_64_U0_regRequestCount;

assign regRequestCount_ap_vld = process_arp_pkg_64_U0_regRequestCount_ap_vld;

assign s_axis_TREADY = convert_axis_to_net_axis_64_U0_s_axis_TREADY;

assign s_axis_arp_lookup_request_V_TREADY = arp_table_U0_s_axis_arp_lookup_request_V_TREADY;

assign s_axis_host_arp_lookup_request_V_TREADY = arp_table_U0_s_axis_host_arp_lookup_request_V_TREADY;

endmodule //arp_server_subnet_top