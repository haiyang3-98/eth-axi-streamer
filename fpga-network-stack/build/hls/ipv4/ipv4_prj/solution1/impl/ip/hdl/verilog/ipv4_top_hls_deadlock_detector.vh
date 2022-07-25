
    wire reset;
    wire clock;
    assign reset = ap_rst_n;
    assign clock = ap_clk;
    wire [0:0] proc_0_data_FIFO_blk;
    wire [0:0] proc_0_data_PIPO_blk;
    wire [0:0] proc_0_start_FIFO_blk;
    wire [0:0] proc_0_TLF_FIFO_blk;
    wire [0:0] proc_0_input_sync_blk;
    wire [0:0] proc_0_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_0;
    reg [0:0] proc_dep_vld_vec_0_reg;
    wire [0:0] in_chan_dep_vld_vec_0;
    wire [9:0] in_chan_dep_data_vec_0;
    wire [0:0] token_in_vec_0;
    wire [0:0] out_chan_dep_vld_vec_0;
    wire [9:0] out_chan_dep_data_0;
    wire [0:0] token_out_vec_0;
    wire dl_detect_out_0;
    wire dep_chan_vld_1_0;
    wire [9:0] dep_chan_data_1_0;
    wire token_1_0;
    wire [1:0] proc_1_data_FIFO_blk;
    wire [1:0] proc_1_data_PIPO_blk;
    wire [1:0] proc_1_start_FIFO_blk;
    wire [1:0] proc_1_TLF_FIFO_blk;
    wire [1:0] proc_1_input_sync_blk;
    wire [1:0] proc_1_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_1;
    reg [1:0] proc_dep_vld_vec_1_reg;
    wire [1:0] in_chan_dep_vld_vec_1;
    wire [19:0] in_chan_dep_data_vec_1;
    wire [1:0] token_in_vec_1;
    wire [1:0] out_chan_dep_vld_vec_1;
    wire [9:0] out_chan_dep_data_1;
    wire [1:0] token_out_vec_1;
    wire dl_detect_out_1;
    wire dep_chan_vld_0_1;
    wire [9:0] dep_chan_data_0_1;
    wire token_0_1;
    wire dep_chan_vld_9_1;
    wire [9:0] dep_chan_data_9_1;
    wire token_9_1;
    wire [0:0] proc_2_data_FIFO_blk;
    wire [0:0] proc_2_data_PIPO_blk;
    wire [0:0] proc_2_start_FIFO_blk;
    wire [0:0] proc_2_TLF_FIFO_blk;
    wire [0:0] proc_2_input_sync_blk;
    wire [0:0] proc_2_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_2;
    reg [0:0] proc_dep_vld_vec_2_reg;
    wire [0:0] in_chan_dep_vld_vec_2;
    wire [9:0] in_chan_dep_data_vec_2;
    wire [0:0] token_in_vec_2;
    wire [0:0] out_chan_dep_vld_vec_2;
    wire [9:0] out_chan_dep_data_2;
    wire [0:0] token_out_vec_2;
    wire dl_detect_out_2;
    wire dep_chan_vld_6_2;
    wire [9:0] dep_chan_data_6_2;
    wire token_6_2;
    wire [0:0] proc_3_data_FIFO_blk;
    wire [0:0] proc_3_data_PIPO_blk;
    wire [0:0] proc_3_start_FIFO_blk;
    wire [0:0] proc_3_TLF_FIFO_blk;
    wire [0:0] proc_3_input_sync_blk;
    wire [0:0] proc_3_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_3;
    reg [0:0] proc_dep_vld_vec_3_reg;
    wire [0:0] in_chan_dep_vld_vec_3;
    wire [9:0] in_chan_dep_data_vec_3;
    wire [0:0] token_in_vec_3;
    wire [0:0] out_chan_dep_vld_vec_3;
    wire [9:0] out_chan_dep_data_3;
    wire [0:0] token_out_vec_3;
    wire dl_detect_out_3;
    wire dep_chan_vld_8_3;
    wire [9:0] dep_chan_data_8_3;
    wire token_8_3;
    wire [0:0] proc_4_data_FIFO_blk;
    wire [0:0] proc_4_data_PIPO_blk;
    wire [0:0] proc_4_start_FIFO_blk;
    wire [0:0] proc_4_TLF_FIFO_blk;
    wire [0:0] proc_4_input_sync_blk;
    wire [0:0] proc_4_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_4;
    reg [0:0] proc_dep_vld_vec_4_reg;
    wire [0:0] in_chan_dep_vld_vec_4;
    wire [9:0] in_chan_dep_data_vec_4;
    wire [0:0] token_in_vec_4;
    wire [0:0] out_chan_dep_vld_vec_4;
    wire [9:0] out_chan_dep_data_4;
    wire [0:0] token_out_vec_4;
    wire dl_detect_out_4;
    wire dep_chan_vld_7_4;
    wire [9:0] dep_chan_data_7_4;
    wire token_7_4;
    wire [0:0] proc_5_data_FIFO_blk;
    wire [0:0] proc_5_data_PIPO_blk;
    wire [0:0] proc_5_start_FIFO_blk;
    wire [0:0] proc_5_TLF_FIFO_blk;
    wire [0:0] proc_5_input_sync_blk;
    wire [0:0] proc_5_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_5;
    reg [0:0] proc_dep_vld_vec_5_reg;
    wire [0:0] in_chan_dep_vld_vec_5;
    wire [9:0] in_chan_dep_data_vec_5;
    wire [0:0] token_in_vec_5;
    wire [0:0] out_chan_dep_vld_vec_5;
    wire [9:0] out_chan_dep_data_5;
    wire [0:0] token_out_vec_5;
    wire dl_detect_out_5;
    wire dep_chan_vld_9_5;
    wire [9:0] dep_chan_data_9_5;
    wire token_9_5;
    wire [1:0] proc_6_data_FIFO_blk;
    wire [1:0] proc_6_data_PIPO_blk;
    wire [1:0] proc_6_start_FIFO_blk;
    wire [1:0] proc_6_TLF_FIFO_blk;
    wire [1:0] proc_6_input_sync_blk;
    wire [1:0] proc_6_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_6;
    reg [1:0] proc_dep_vld_vec_6_reg;
    wire [1:0] in_chan_dep_vld_vec_6;
    wire [19:0] in_chan_dep_data_vec_6;
    wire [1:0] token_in_vec_6;
    wire [1:0] out_chan_dep_vld_vec_6;
    wire [9:0] out_chan_dep_data_6;
    wire [1:0] token_out_vec_6;
    wire dl_detect_out_6;
    wire dep_chan_vld_2_6;
    wire [9:0] dep_chan_data_2_6;
    wire token_2_6;
    wire dep_chan_vld_7_6;
    wire [9:0] dep_chan_data_7_6;
    wire token_7_6;
    wire [1:0] proc_7_data_FIFO_blk;
    wire [1:0] proc_7_data_PIPO_blk;
    wire [1:0] proc_7_start_FIFO_blk;
    wire [1:0] proc_7_TLF_FIFO_blk;
    wire [1:0] proc_7_input_sync_blk;
    wire [1:0] proc_7_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_7;
    reg [1:0] proc_dep_vld_vec_7_reg;
    wire [1:0] in_chan_dep_vld_vec_7;
    wire [19:0] in_chan_dep_data_vec_7;
    wire [1:0] token_in_vec_7;
    wire [1:0] out_chan_dep_vld_vec_7;
    wire [9:0] out_chan_dep_data_7;
    wire [1:0] token_out_vec_7;
    wire dl_detect_out_7;
    wire dep_chan_vld_4_7;
    wire [9:0] dep_chan_data_4_7;
    wire token_4_7;
    wire dep_chan_vld_6_7;
    wire [9:0] dep_chan_data_6_7;
    wire token_6_7;
    wire [1:0] proc_8_data_FIFO_blk;
    wire [1:0] proc_8_data_PIPO_blk;
    wire [1:0] proc_8_start_FIFO_blk;
    wire [1:0] proc_8_TLF_FIFO_blk;
    wire [1:0] proc_8_input_sync_blk;
    wire [1:0] proc_8_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_8;
    reg [1:0] proc_dep_vld_vec_8_reg;
    wire [1:0] in_chan_dep_vld_vec_8;
    wire [19:0] in_chan_dep_data_vec_8;
    wire [1:0] token_in_vec_8;
    wire [1:0] out_chan_dep_vld_vec_8;
    wire [9:0] out_chan_dep_data_8;
    wire [1:0] token_out_vec_8;
    wire dl_detect_out_8;
    wire dep_chan_vld_3_8;
    wire [9:0] dep_chan_data_3_8;
    wire token_3_8;
    wire dep_chan_vld_9_8;
    wire [9:0] dep_chan_data_9_8;
    wire token_9_8;
    wire [2:0] proc_9_data_FIFO_blk;
    wire [2:0] proc_9_data_PIPO_blk;
    wire [2:0] proc_9_start_FIFO_blk;
    wire [2:0] proc_9_TLF_FIFO_blk;
    wire [2:0] proc_9_input_sync_blk;
    wire [2:0] proc_9_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_9;
    reg [2:0] proc_dep_vld_vec_9_reg;
    wire [2:0] in_chan_dep_vld_vec_9;
    wire [29:0] in_chan_dep_data_vec_9;
    wire [2:0] token_in_vec_9;
    wire [2:0] out_chan_dep_vld_vec_9;
    wire [9:0] out_chan_dep_data_9;
    wire [2:0] token_out_vec_9;
    wire dl_detect_out_9;
    wire dep_chan_vld_1_9;
    wire [9:0] dep_chan_data_1_9;
    wire token_1_9;
    wire dep_chan_vld_5_9;
    wire [9:0] dep_chan_data_5_9;
    wire token_5_9;
    wire dep_chan_vld_8_9;
    wire [9:0] dep_chan_data_8_9;
    wire token_8_9;
    wire [9:0] dl_in_vec;
    wire dl_detect_out;
    wire token_clear;
    reg [9:0] origin;

    // Process: ipv4_top_entry3_U0
    ipv4_top_hls_deadlock_detect_unit #(10, 0, 1, 1) ipv4_top_hls_deadlock_detect_unit_0 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_0),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_0),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_0),
        .token_in_vec(token_in_vec_0),
        .dl_detect_in(dl_detect_out),
        .origin(origin[0]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_0),
        .out_chan_dep_data(out_chan_dep_data_0),
        .token_out_vec(token_out_vec_0),
        .dl_detect_out(dl_in_vec[0]));

    assign proc_0_data_FIFO_blk[0] = 1'b0 | (~ipv4_top_entry3_U0.local_ipv4_address_out_blk_n) | (~ipv4_top_entry3_U0.protocol_out_blk_n);
    assign proc_0_data_PIPO_blk[0] = 1'b0;
    assign proc_0_start_FIFO_blk[0] = 1'b0;
    assign proc_0_TLF_FIFO_blk[0] = 1'b0;
    assign proc_0_input_sync_blk[0] = 1'b0;
    assign proc_0_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_0[0] = dl_detect_out ? proc_dep_vld_vec_0_reg[0] : (proc_0_data_FIFO_blk[0] | proc_0_data_PIPO_blk[0] | proc_0_start_FIFO_blk[0] | proc_0_TLF_FIFO_blk[0] | proc_0_input_sync_blk[0] | proc_0_output_sync_blk[0]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_0_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_0_reg <= proc_dep_vld_vec_0;
        end
    end
    assign in_chan_dep_vld_vec_0[0] = dep_chan_vld_1_0;
    assign in_chan_dep_data_vec_0[9 : 0] = dep_chan_data_1_0;
    assign token_in_vec_0[0] = token_1_0;
    assign dep_chan_vld_0_1 = out_chan_dep_vld_vec_0[0];
    assign dep_chan_data_0_1 = out_chan_dep_data_0;
    assign token_0_1 = token_out_vec_0[0];

    // Process: ipv4_top_entry6_U0
    ipv4_top_hls_deadlock_detect_unit #(10, 1, 2, 2) ipv4_top_hls_deadlock_detect_unit_1 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_1),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_1),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_1),
        .token_in_vec(token_in_vec_1),
        .dl_detect_in(dl_detect_out),
        .origin(origin[1]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_1),
        .out_chan_dep_data(out_chan_dep_data_1),
        .token_out_vec(token_out_vec_1),
        .dl_detect_out(dl_in_vec[1]));

    assign proc_1_data_FIFO_blk[0] = 1'b0 | (~ipv4_top_entry6_U0.local_ipv4_address_blk_n) | (~ipv4_top_entry6_U0.protocol_blk_n);
    assign proc_1_data_PIPO_blk[0] = 1'b0;
    assign proc_1_start_FIFO_blk[0] = 1'b0;
    assign proc_1_TLF_FIFO_blk[0] = 1'b0;
    assign proc_1_input_sync_blk[0] = 1'b0;
    assign proc_1_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_1[0] = dl_detect_out ? proc_dep_vld_vec_1_reg[0] : (proc_1_data_FIFO_blk[0] | proc_1_data_PIPO_blk[0] | proc_1_start_FIFO_blk[0] | proc_1_TLF_FIFO_blk[0] | proc_1_input_sync_blk[0] | proc_1_output_sync_blk[0]);
    assign proc_1_data_FIFO_blk[1] = 1'b0 | (~ipv4_top_entry6_U0.local_ipv4_address_out_blk_n) | (~ipv4_top_entry6_U0.protocol_out_blk_n);
    assign proc_1_data_PIPO_blk[1] = 1'b0;
    assign proc_1_start_FIFO_blk[1] = 1'b0;
    assign proc_1_TLF_FIFO_blk[1] = 1'b0;
    assign proc_1_input_sync_blk[1] = 1'b0;
    assign proc_1_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_1[1] = dl_detect_out ? proc_dep_vld_vec_1_reg[1] : (proc_1_data_FIFO_blk[1] | proc_1_data_PIPO_blk[1] | proc_1_start_FIFO_blk[1] | proc_1_TLF_FIFO_blk[1] | proc_1_input_sync_blk[1] | proc_1_output_sync_blk[1]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_1_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_1_reg <= proc_dep_vld_vec_1;
        end
    end
    assign in_chan_dep_vld_vec_1[0] = dep_chan_vld_0_1;
    assign in_chan_dep_data_vec_1[9 : 0] = dep_chan_data_0_1;
    assign token_in_vec_1[0] = token_0_1;
    assign in_chan_dep_vld_vec_1[1] = dep_chan_vld_9_1;
    assign in_chan_dep_data_vec_1[19 : 10] = dep_chan_data_9_1;
    assign token_in_vec_1[1] = token_9_1;
    assign dep_chan_vld_1_0 = out_chan_dep_vld_vec_1[0];
    assign dep_chan_data_1_0 = out_chan_dep_data_1;
    assign token_1_0 = token_out_vec_1[0];
    assign dep_chan_vld_1_9 = out_chan_dep_vld_vec_1[1];
    assign dep_chan_data_1_9 = out_chan_dep_data_1;
    assign token_1_9 = token_out_vec_1[1];

    // Process: convert_axis_to_net_axis_512_4_U0
    ipv4_top_hls_deadlock_detect_unit #(10, 2, 1, 1) ipv4_top_hls_deadlock_detect_unit_2 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_2),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_2),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_2),
        .token_in_vec(token_in_vec_2),
        .dl_detect_in(dl_detect_out),
        .origin(origin[2]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_2),
        .out_chan_dep_data(out_chan_dep_data_2),
        .token_out_vec(token_out_vec_2),
        .dl_detect_out(dl_in_vec[2]));

    assign proc_2_data_FIFO_blk[0] = 1'b0 | (~convert_axis_to_net_axis_512_4_U0.s_axis_rx_data_internal_blk_n);
    assign proc_2_data_PIPO_blk[0] = 1'b0;
    assign proc_2_start_FIFO_blk[0] = 1'b0;
    assign proc_2_TLF_FIFO_blk[0] = 1'b0;
    assign proc_2_input_sync_blk[0] = 1'b0;
    assign proc_2_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_2[0] = dl_detect_out ? proc_dep_vld_vec_2_reg[0] : (proc_2_data_FIFO_blk[0] | proc_2_data_PIPO_blk[0] | proc_2_start_FIFO_blk[0] | proc_2_TLF_FIFO_blk[0] | proc_2_input_sync_blk[0] | proc_2_output_sync_blk[0]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_2_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_2_reg <= proc_dep_vld_vec_2;
        end
    end
    assign in_chan_dep_vld_vec_2[0] = dep_chan_vld_6_2;
    assign in_chan_dep_data_vec_2[9 : 0] = dep_chan_data_6_2;
    assign token_in_vec_2[0] = token_6_2;
    assign dep_chan_vld_2_6 = out_chan_dep_vld_vec_2[0];
    assign dep_chan_data_2_6 = out_chan_dep_data_2;
    assign token_2_6 = token_out_vec_2[0];

    // Process: convert_axis_to_net_axis_512_U0
    ipv4_top_hls_deadlock_detect_unit #(10, 3, 1, 1) ipv4_top_hls_deadlock_detect_unit_3 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_3),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_3),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_3),
        .token_in_vec(token_in_vec_3),
        .dl_detect_in(dl_detect_out),
        .origin(origin[3]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_3),
        .out_chan_dep_data(out_chan_dep_data_3),
        .token_out_vec(token_out_vec_3),
        .dl_detect_out(dl_in_vec[3]));

    assign proc_3_data_FIFO_blk[0] = 1'b0 | (~convert_axis_to_net_axis_512_U0.s_axis_tx_data_internal_blk_n);
    assign proc_3_data_PIPO_blk[0] = 1'b0;
    assign proc_3_start_FIFO_blk[0] = 1'b0;
    assign proc_3_TLF_FIFO_blk[0] = 1'b0;
    assign proc_3_input_sync_blk[0] = 1'b0;
    assign proc_3_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_3[0] = dl_detect_out ? proc_dep_vld_vec_3_reg[0] : (proc_3_data_FIFO_blk[0] | proc_3_data_PIPO_blk[0] | proc_3_start_FIFO_blk[0] | proc_3_TLF_FIFO_blk[0] | proc_3_input_sync_blk[0] | proc_3_output_sync_blk[0]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_3_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_3_reg <= proc_dep_vld_vec_3;
        end
    end
    assign in_chan_dep_vld_vec_3[0] = dep_chan_vld_8_3;
    assign in_chan_dep_data_vec_3[9 : 0] = dep_chan_data_8_3;
    assign token_in_vec_3[0] = token_8_3;
    assign dep_chan_vld_3_8 = out_chan_dep_vld_vec_3[0];
    assign dep_chan_data_3_8 = out_chan_dep_data_3;
    assign token_3_8 = token_out_vec_3[0];

    // Process: convert_net_axis_to_axis_512_5_U0
    ipv4_top_hls_deadlock_detect_unit #(10, 4, 1, 1) ipv4_top_hls_deadlock_detect_unit_4 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_4),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_4),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_4),
        .token_in_vec(token_in_vec_4),
        .dl_detect_in(dl_detect_out),
        .origin(origin[4]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_4),
        .out_chan_dep_data(out_chan_dep_data_4),
        .token_out_vec(token_out_vec_4),
        .dl_detect_out(dl_in_vec[4]));

    assign proc_4_data_FIFO_blk[0] = 1'b0 | (~convert_net_axis_to_axis_512_5_U0.m_axis_rx_data_internal_blk_n);
    assign proc_4_data_PIPO_blk[0] = 1'b0;
    assign proc_4_start_FIFO_blk[0] = 1'b0;
    assign proc_4_TLF_FIFO_blk[0] = 1'b0;
    assign proc_4_input_sync_blk[0] = 1'b0;
    assign proc_4_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_4[0] = dl_detect_out ? proc_dep_vld_vec_4_reg[0] : (proc_4_data_FIFO_blk[0] | proc_4_data_PIPO_blk[0] | proc_4_start_FIFO_blk[0] | proc_4_TLF_FIFO_blk[0] | proc_4_input_sync_blk[0] | proc_4_output_sync_blk[0]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_4_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_4_reg <= proc_dep_vld_vec_4;
        end
    end
    assign in_chan_dep_vld_vec_4[0] = dep_chan_vld_7_4;
    assign in_chan_dep_data_vec_4[9 : 0] = dep_chan_data_7_4;
    assign token_in_vec_4[0] = token_7_4;
    assign dep_chan_vld_4_7 = out_chan_dep_vld_vec_4[0];
    assign dep_chan_data_4_7 = out_chan_dep_data_4;
    assign token_4_7 = token_out_vec_4[0];

    // Process: convert_net_axis_to_axis_512_U0
    ipv4_top_hls_deadlock_detect_unit #(10, 5, 1, 1) ipv4_top_hls_deadlock_detect_unit_5 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_5),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_5),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_5),
        .token_in_vec(token_in_vec_5),
        .dl_detect_in(dl_detect_out),
        .origin(origin[5]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_5),
        .out_chan_dep_data(out_chan_dep_data_5),
        .token_out_vec(token_out_vec_5),
        .dl_detect_out(dl_in_vec[5]));

    assign proc_5_data_FIFO_blk[0] = 1'b0 | (~convert_net_axis_to_axis_512_U0.m_axis_tx_data_internal_blk_n);
    assign proc_5_data_PIPO_blk[0] = 1'b0;
    assign proc_5_start_FIFO_blk[0] = 1'b0;
    assign proc_5_TLF_FIFO_blk[0] = 1'b0;
    assign proc_5_input_sync_blk[0] = 1'b0;
    assign proc_5_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_5[0] = dl_detect_out ? proc_dep_vld_vec_5_reg[0] : (proc_5_data_FIFO_blk[0] | proc_5_data_PIPO_blk[0] | proc_5_start_FIFO_blk[0] | proc_5_TLF_FIFO_blk[0] | proc_5_input_sync_blk[0] | proc_5_output_sync_blk[0]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_5_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_5_reg <= proc_dep_vld_vec_5;
        end
    end
    assign in_chan_dep_vld_vec_5[0] = dep_chan_vld_9_5;
    assign in_chan_dep_data_vec_5[9 : 0] = dep_chan_data_9_5;
    assign token_in_vec_5[0] = token_9_5;
    assign dep_chan_vld_5_9 = out_chan_dep_vld_vec_5[0];
    assign dep_chan_data_5_9 = out_chan_dep_data_5;
    assign token_5_9 = token_out_vec_5[0];

    // Process: process_ipv4_512_U0
    ipv4_top_hls_deadlock_detect_unit #(10, 6, 2, 2) ipv4_top_hls_deadlock_detect_unit_6 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_6),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_6),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_6),
        .token_in_vec(token_in_vec_6),
        .dl_detect_in(dl_detect_out),
        .origin(origin[6]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_6),
        .out_chan_dep_data(out_chan_dep_data_6),
        .token_out_vec(token_out_vec_6),
        .dl_detect_out(dl_in_vec[6]));

    assign proc_6_data_FIFO_blk[0] = 1'b0 | (~process_ipv4_512_U0.s_axis_rx_data_internal_blk_n);
    assign proc_6_data_PIPO_blk[0] = 1'b0;
    assign proc_6_start_FIFO_blk[0] = 1'b0;
    assign proc_6_TLF_FIFO_blk[0] = 1'b0;
    assign proc_6_input_sync_blk[0] = 1'b0;
    assign proc_6_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_6[0] = dl_detect_out ? proc_dep_vld_vec_6_reg[0] : (proc_6_data_FIFO_blk[0] | proc_6_data_PIPO_blk[0] | proc_6_start_FIFO_blk[0] | proc_6_TLF_FIFO_blk[0] | proc_6_input_sync_blk[0] | proc_6_output_sync_blk[0]);
    assign proc_6_data_FIFO_blk[1] = 1'b0 | (~process_ipv4_512_U0.rx_process2dropFifo_blk_n) | (~process_ipv4_512_U0.rx_process2dropLengthFifo_blk_n);
    assign proc_6_data_PIPO_blk[1] = 1'b0;
    assign proc_6_start_FIFO_blk[1] = 1'b0;
    assign proc_6_TLF_FIFO_blk[1] = 1'b0;
    assign proc_6_input_sync_blk[1] = 1'b0;
    assign proc_6_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_6[1] = dl_detect_out ? proc_dep_vld_vec_6_reg[1] : (proc_6_data_FIFO_blk[1] | proc_6_data_PIPO_blk[1] | proc_6_start_FIFO_blk[1] | proc_6_TLF_FIFO_blk[1] | proc_6_input_sync_blk[1] | proc_6_output_sync_blk[1]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_6_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_6_reg <= proc_dep_vld_vec_6;
        end
    end
    assign in_chan_dep_vld_vec_6[0] = dep_chan_vld_2_6;
    assign in_chan_dep_data_vec_6[9 : 0] = dep_chan_data_2_6;
    assign token_in_vec_6[0] = token_2_6;
    assign in_chan_dep_vld_vec_6[1] = dep_chan_vld_7_6;
    assign in_chan_dep_data_vec_6[19 : 10] = dep_chan_data_7_6;
    assign token_in_vec_6[1] = token_7_6;
    assign dep_chan_vld_6_2 = out_chan_dep_vld_vec_6[0];
    assign dep_chan_data_6_2 = out_chan_dep_data_6;
    assign token_6_2 = token_out_vec_6[0];
    assign dep_chan_vld_6_7 = out_chan_dep_vld_vec_6[1];
    assign dep_chan_data_6_7 = out_chan_dep_data_6;
    assign token_6_7 = token_out_vec_6[1];

    // Process: ipv4_drop_optional_ip_header_512_U0
    ipv4_top_hls_deadlock_detect_unit #(10, 7, 2, 2) ipv4_top_hls_deadlock_detect_unit_7 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_7),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_7),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_7),
        .token_in_vec(token_in_vec_7),
        .dl_detect_in(dl_detect_out),
        .origin(origin[7]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_7),
        .out_chan_dep_data(out_chan_dep_data_7),
        .token_out_vec(token_out_vec_7),
        .dl_detect_out(dl_in_vec[7]));

    assign proc_7_data_FIFO_blk[0] = 1'b0 | (~ipv4_drop_optional_ip_header_512_U0.rx_process2dropLengthFifo_blk_n) | (~ipv4_drop_optional_ip_header_512_U0.rx_process2dropFifo_blk_n);
    assign proc_7_data_PIPO_blk[0] = 1'b0;
    assign proc_7_start_FIFO_blk[0] = 1'b0;
    assign proc_7_TLF_FIFO_blk[0] = 1'b0;
    assign proc_7_input_sync_blk[0] = 1'b0;
    assign proc_7_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_7[0] = dl_detect_out ? proc_dep_vld_vec_7_reg[0] : (proc_7_data_FIFO_blk[0] | proc_7_data_PIPO_blk[0] | proc_7_start_FIFO_blk[0] | proc_7_TLF_FIFO_blk[0] | proc_7_input_sync_blk[0] | proc_7_output_sync_blk[0]);
    assign proc_7_data_FIFO_blk[1] = 1'b0 | (~ipv4_drop_optional_ip_header_512_U0.m_axis_rx_data_internal_blk_n);
    assign proc_7_data_PIPO_blk[1] = 1'b0;
    assign proc_7_start_FIFO_blk[1] = 1'b0;
    assign proc_7_TLF_FIFO_blk[1] = 1'b0;
    assign proc_7_input_sync_blk[1] = 1'b0;
    assign proc_7_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_7[1] = dl_detect_out ? proc_dep_vld_vec_7_reg[1] : (proc_7_data_FIFO_blk[1] | proc_7_data_PIPO_blk[1] | proc_7_start_FIFO_blk[1] | proc_7_TLF_FIFO_blk[1] | proc_7_input_sync_blk[1] | proc_7_output_sync_blk[1]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_7_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_7_reg <= proc_dep_vld_vec_7;
        end
    end
    assign in_chan_dep_vld_vec_7[0] = dep_chan_vld_4_7;
    assign in_chan_dep_data_vec_7[9 : 0] = dep_chan_data_4_7;
    assign token_in_vec_7[0] = token_4_7;
    assign in_chan_dep_vld_vec_7[1] = dep_chan_vld_6_7;
    assign in_chan_dep_data_vec_7[19 : 10] = dep_chan_data_6_7;
    assign token_in_vec_7[1] = token_6_7;
    assign dep_chan_vld_7_6 = out_chan_dep_vld_vec_7[0];
    assign dep_chan_data_7_6 = out_chan_dep_data_7;
    assign token_7_6 = token_out_vec_7[0];
    assign dep_chan_vld_7_4 = out_chan_dep_vld_vec_7[1];
    assign dep_chan_data_7_4 = out_chan_dep_data_7;
    assign token_7_4 = token_out_vec_7[1];

    // Process: ipv4_lshiftWordByOctet_512_2_U0
    ipv4_top_hls_deadlock_detect_unit #(10, 8, 2, 2) ipv4_top_hls_deadlock_detect_unit_8 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_8),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_8),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_8),
        .token_in_vec(token_in_vec_8),
        .dl_detect_in(dl_detect_out),
        .origin(origin[8]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_8),
        .out_chan_dep_data(out_chan_dep_data_8),
        .token_out_vec(token_out_vec_8),
        .dl_detect_out(dl_in_vec[8]));

    assign proc_8_data_FIFO_blk[0] = 1'b0 | (~ipv4_lshiftWordByOctet_512_2_U0.tx_shift2ipv4Fifo_blk_n);
    assign proc_8_data_PIPO_blk[0] = 1'b0;
    assign proc_8_start_FIFO_blk[0] = 1'b0;
    assign proc_8_TLF_FIFO_blk[0] = 1'b0;
    assign proc_8_input_sync_blk[0] = 1'b0;
    assign proc_8_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_8[0] = dl_detect_out ? proc_dep_vld_vec_8_reg[0] : (proc_8_data_FIFO_blk[0] | proc_8_data_PIPO_blk[0] | proc_8_start_FIFO_blk[0] | proc_8_TLF_FIFO_blk[0] | proc_8_input_sync_blk[0] | proc_8_output_sync_blk[0]);
    assign proc_8_data_FIFO_blk[1] = 1'b0 | (~ipv4_lshiftWordByOctet_512_2_U0.s_axis_tx_data_internal_blk_n);
    assign proc_8_data_PIPO_blk[1] = 1'b0;
    assign proc_8_start_FIFO_blk[1] = 1'b0;
    assign proc_8_TLF_FIFO_blk[1] = 1'b0;
    assign proc_8_input_sync_blk[1] = 1'b0;
    assign proc_8_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_8[1] = dl_detect_out ? proc_dep_vld_vec_8_reg[1] : (proc_8_data_FIFO_blk[1] | proc_8_data_PIPO_blk[1] | proc_8_start_FIFO_blk[1] | proc_8_TLF_FIFO_blk[1] | proc_8_input_sync_blk[1] | proc_8_output_sync_blk[1]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_8_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_8_reg <= proc_dep_vld_vec_8;
        end
    end
    assign in_chan_dep_vld_vec_8[0] = dep_chan_vld_3_8;
    assign in_chan_dep_data_vec_8[9 : 0] = dep_chan_data_3_8;
    assign token_in_vec_8[0] = token_3_8;
    assign in_chan_dep_vld_vec_8[1] = dep_chan_vld_9_8;
    assign in_chan_dep_data_vec_8[19 : 10] = dep_chan_data_9_8;
    assign token_in_vec_8[1] = token_9_8;
    assign dep_chan_vld_8_9 = out_chan_dep_vld_vec_8[0];
    assign dep_chan_data_8_9 = out_chan_dep_data_8;
    assign token_8_9 = token_out_vec_8[0];
    assign dep_chan_vld_8_3 = out_chan_dep_vld_vec_8[1];
    assign dep_chan_data_8_3 = out_chan_dep_data_8;
    assign token_8_3 = token_out_vec_8[1];

    // Process: ipv4_generate_ipv4_512_U0
    ipv4_top_hls_deadlock_detect_unit #(10, 9, 3, 3) ipv4_top_hls_deadlock_detect_unit_9 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_9),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_9),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_9),
        .token_in_vec(token_in_vec_9),
        .dl_detect_in(dl_detect_out),
        .origin(origin[9]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_9),
        .out_chan_dep_data(out_chan_dep_data_9),
        .token_out_vec(token_out_vec_9),
        .dl_detect_out(dl_in_vec[9]));

    assign proc_9_data_FIFO_blk[0] = 1'b0 | (~ipv4_generate_ipv4_512_U0.local_ipv4_address_blk_n) | (~ipv4_generate_ipv4_512_U0.protocol_blk_n);
    assign proc_9_data_PIPO_blk[0] = 1'b0;
    assign proc_9_start_FIFO_blk[0] = 1'b0;
    assign proc_9_TLF_FIFO_blk[0] = 1'b0;
    assign proc_9_input_sync_blk[0] = 1'b0;
    assign proc_9_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_9[0] = dl_detect_out ? proc_dep_vld_vec_9_reg[0] : (proc_9_data_FIFO_blk[0] | proc_9_data_PIPO_blk[0] | proc_9_start_FIFO_blk[0] | proc_9_TLF_FIFO_blk[0] | proc_9_input_sync_blk[0] | proc_9_output_sync_blk[0]);
    assign proc_9_data_FIFO_blk[1] = 1'b0 | (~ipv4_generate_ipv4_512_U0.m_axis_tx_data_internal_blk_n);
    assign proc_9_data_PIPO_blk[1] = 1'b0;
    assign proc_9_start_FIFO_blk[1] = 1'b0;
    assign proc_9_TLF_FIFO_blk[1] = 1'b0;
    assign proc_9_input_sync_blk[1] = 1'b0;
    assign proc_9_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_9[1] = dl_detect_out ? proc_dep_vld_vec_9_reg[1] : (proc_9_data_FIFO_blk[1] | proc_9_data_PIPO_blk[1] | proc_9_start_FIFO_blk[1] | proc_9_TLF_FIFO_blk[1] | proc_9_input_sync_blk[1] | proc_9_output_sync_blk[1]);
    assign proc_9_data_FIFO_blk[2] = 1'b0 | (~ipv4_generate_ipv4_512_U0.tx_shift2ipv4Fifo_blk_n);
    assign proc_9_data_PIPO_blk[2] = 1'b0;
    assign proc_9_start_FIFO_blk[2] = 1'b0;
    assign proc_9_TLF_FIFO_blk[2] = 1'b0;
    assign proc_9_input_sync_blk[2] = 1'b0;
    assign proc_9_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_9[2] = dl_detect_out ? proc_dep_vld_vec_9_reg[2] : (proc_9_data_FIFO_blk[2] | proc_9_data_PIPO_blk[2] | proc_9_start_FIFO_blk[2] | proc_9_TLF_FIFO_blk[2] | proc_9_input_sync_blk[2] | proc_9_output_sync_blk[2]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_9_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_9_reg <= proc_dep_vld_vec_9;
        end
    end
    assign in_chan_dep_vld_vec_9[0] = dep_chan_vld_1_9;
    assign in_chan_dep_data_vec_9[9 : 0] = dep_chan_data_1_9;
    assign token_in_vec_9[0] = token_1_9;
    assign in_chan_dep_vld_vec_9[1] = dep_chan_vld_5_9;
    assign in_chan_dep_data_vec_9[19 : 10] = dep_chan_data_5_9;
    assign token_in_vec_9[1] = token_5_9;
    assign in_chan_dep_vld_vec_9[2] = dep_chan_vld_8_9;
    assign in_chan_dep_data_vec_9[29 : 20] = dep_chan_data_8_9;
    assign token_in_vec_9[2] = token_8_9;
    assign dep_chan_vld_9_1 = out_chan_dep_vld_vec_9[0];
    assign dep_chan_data_9_1 = out_chan_dep_data_9;
    assign token_9_1 = token_out_vec_9[0];
    assign dep_chan_vld_9_5 = out_chan_dep_vld_vec_9[1];
    assign dep_chan_data_9_5 = out_chan_dep_data_9;
    assign token_9_5 = token_out_vec_9[1];
    assign dep_chan_vld_9_8 = out_chan_dep_vld_vec_9[2];
    assign dep_chan_data_9_8 = out_chan_dep_data_9;
    assign token_9_8 = token_out_vec_9[2];


`include "ipv4_top_hls_deadlock_report_unit.vh"
