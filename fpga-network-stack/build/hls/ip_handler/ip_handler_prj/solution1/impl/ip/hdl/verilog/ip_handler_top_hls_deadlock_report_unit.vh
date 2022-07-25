   
    parameter PROC_NUM = 22;
    parameter ST_IDLE = 2'b0;
    parameter ST_DL_DETECTED = 2'b1;
    parameter ST_DL_REPORT = 2'b10;
   

    reg find_df_deadlock = 0;
    reg [1:0] CS_fsm;
    reg [1:0] NS_fsm;
    reg [PROC_NUM - 1:0] dl_detect_reg;
    reg [PROC_NUM - 1:0] dl_done_reg;
    reg [PROC_NUM - 1:0] origin_reg;
    reg [PROC_NUM - 1:0] dl_in_vec_reg;
    integer i;
    integer fp;

    // FSM State machine
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            CS_fsm <= ST_IDLE;
        end
        else begin
            CS_fsm <= NS_fsm;
        end
    end
    always @ (CS_fsm or dl_in_vec or dl_detect_reg or dl_done_reg or dl_in_vec or origin_reg) begin
        NS_fsm = CS_fsm;
        case (CS_fsm)
            ST_IDLE : begin
                if (|dl_in_vec) begin
                    NS_fsm = ST_DL_DETECTED;
                end
            end
            ST_DL_DETECTED: begin
                // has unreported deadlock cycle
                if (dl_detect_reg != dl_done_reg) begin
                    NS_fsm = ST_DL_REPORT;
                end
            end
            ST_DL_REPORT: begin
                if (|(dl_in_vec & origin_reg)) begin
                    NS_fsm = ST_DL_DETECTED;
                end
            end
        endcase
    end

    // dl_detect_reg record the procs that first detect deadlock
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            dl_detect_reg <= 'b0;
        end
        else begin
            if (CS_fsm == ST_IDLE) begin
                dl_detect_reg <= dl_in_vec;
            end
        end
    end

    // dl_detect_out keeps in high after deadlock detected
    assign dl_detect_out = |dl_detect_reg;

    // dl_done_reg record the cycles has been reported
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            dl_done_reg <= 'b0;
        end
        else begin
            if ((CS_fsm == ST_DL_REPORT) && (|(dl_in_vec & dl_detect_reg) == 'b1)) begin
                dl_done_reg <= dl_done_reg | dl_in_vec;
            end
        end
    end

    // clear token once a cycle is done
    assign token_clear = (CS_fsm == ST_DL_REPORT) ? ((|(dl_in_vec & origin_reg)) ? 'b1 : 'b0) : 'b0;

    // origin_reg record the current cycle start id
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            origin_reg <= 'b0;
        end
        else begin
            if (CS_fsm == ST_DL_DETECTED) begin
                origin_reg <= origin;
            end
        end
    end
   
    // origin will be valid for only one cycle
    always @ (CS_fsm or dl_detect_reg or dl_done_reg) begin
        if (CS_fsm == ST_DL_DETECTED) begin
            for (i = 0; i < PROC_NUM; i = i + 1) begin
                if (dl_detect_reg[i] & ~dl_done_reg[i] & ~(|origin)) begin
                    origin = 'b1 << i;
                end
            end
        end
        else begin
            origin = 'b0;
        end
    end
    
    // dl_in_vec_reg record the current cycle dl_in_vec
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            dl_in_vec_reg <= 'b0;
        end
        else begin
            if (CS_fsm == ST_DL_DETECTED) begin
                dl_in_vec_reg <= origin;
            end
            else if (CS_fsm == ST_DL_REPORT) begin
                dl_in_vec_reg <= dl_in_vec;
            end
        end
    end
    
    // get the first valid proc index in dl vector
    function integer proc_index(input [PROC_NUM - 1:0] dl_vec);
        begin
            proc_index = 0;
            for (i = 0; i < PROC_NUM; i = i + 1) begin
                if (dl_vec[i]) begin
                    proc_index = i;
                end
            end
        end
    endfunction

    // get the proc path based on dl vector
    function [680:0] proc_path(input [PROC_NUM - 1:0] dl_vec);
        integer index;
        begin
            index = proc_index(dl_vec);
            case (index)
                0 : begin
                    proc_path = "ip_handler_top_ip_handler_top.ip_handler_top_entry3_U0";
                end
                1 : begin
                    proc_path = "ip_handler_top_ip_handler_top.ip_handler_top_entry19_U0";
                end
                2 : begin
                    proc_path = "ip_handler_top_ip_handler_top.convert_axis_to_net_axis_512_U0";
                end
                3 : begin
                    proc_path = "ip_handler_top_ip_handler_top.convert_net_axis_to_axis_512_13_U0";
                end
                4 : begin
                    proc_path = "ip_handler_top_ip_handler_top.convert_net_axis_to_axis_512_14_U0";
                end
                5 : begin
                    proc_path = "ip_handler_top_ip_handler_top.convert_net_axis_to_axis_512_15_U0";
                end
                6 : begin
                    proc_path = "ip_handler_top_ip_handler_top.convert_net_axis_to_axis_512_16_U0";
                end
                7 : begin
                    proc_path = "ip_handler_top_ip_handler_top.convert_net_axis_to_axis_512_17_U0";
                end
                8 : begin
                    proc_path = "ip_handler_top_ip_handler_top.convert_net_axis_to_axis_512_18_U0";
                end
                9 : begin
                    proc_path = "ip_handler_top_ip_handler_top.convert_net_axis_to_axis_512_U0";
                end
                10 : begin
                    proc_path = "ip_handler_top_ip_handler_top.detect_eth_protocol_512_U0";
                end
                11 : begin
                    proc_path = "ip_handler_top_ip_handler_top.route_by_eth_protocol_512_U0";
                end
                12 : begin
                    proc_path = "ip_handler_top_ip_handler_top.ip_handler_rshiftWordByOctet_net_axis_512_512_1_U0";
                end
                13 : begin
                    proc_path = "ip_handler_top_ip_handler_top.ip_handler_rshiftWordByOctet_net_axis_512_512_3_U0";
                end
                14 : begin
                    proc_path = "ip_handler_top_ip_handler_top.extract_ip_meta_512_U0";
                end
                15 : begin
                    proc_path = "ip_handler_top_ip_handler_top.ip_handler_compute_ipv4_checksum_U0";
                end
                16 : begin
                    proc_path = "ip_handler_top_ip_handler_top.ip_handler_check_ipv4_checksum_32_U0";
                end
                17 : begin
                    proc_path = "ip_handler_top_ip_handler_top.ip_invalid_dropper_512_U0";
                end
                18 : begin
                    proc_path = "ip_handler_top_ip_handler_top.cut_length_U0";
                end
                19 : begin
                    proc_path = "ip_handler_top_ip_handler_top.detect_ipv4_protocol_512_U0";
                end
                20 : begin
                    proc_path = "ip_handler_top_ip_handler_top.detect_ipv6_protocol_512_U0";
                end
                21 : begin
                    proc_path = "ip_handler_top_ip_handler_top.ip_handler_duplicate_stream_net_axis_512_U0";
                end
                default : begin
                    proc_path = "unknown";
                end
            endcase
        end
    endfunction

    // print the headlines of deadlock detection
    task print_dl_head;
        begin
            $display("\n//////////////////////////////////////////////////////////////////////////////");
            $display("// ERROR!!! DEADLOCK DETECTED at %0t ns! SIMULATION WILL BE STOPPED! //", $time);
            $display("//////////////////////////////////////////////////////////////////////////////");
            fp = $fopen("deadlock_db.dat", "w");
        end
    endtask

    // print the start of a cycle
    task print_cycle_start(input reg [680:0] proc_path, input integer cycle_id);
        begin
            $display("/////////////////////////");
            $display("// Dependence cycle %0d:", cycle_id);
            $display("// (1): Process: %0s", proc_path);
            $fdisplay(fp, "Dependence_Cycle_ID %0d", cycle_id);
            $fdisplay(fp, "Dependence_Process_ID 1");
            $fdisplay(fp, "Dependence_Process_path %0s", proc_path);
        end
    endtask

    // print the end of deadlock detection
    task print_dl_end(input integer num, input integer record_time);
        begin
            $display("////////////////////////////////////////////////////////////////////////");
            $display("// Totally %0d cycles detected!", num);
            $display("////////////////////////////////////////////////////////////////////////");
            $display("// ERROR!!! DEADLOCK DETECTED at %0t ns! SIMULATION WILL BE STOPPED! //", record_time);
            $display("//////////////////////////////////////////////////////////////////////////////");
            $fdisplay(fp, "Dependence_Cycle_Number %0d", num);
            $fclose(fp);
        end
    endtask

    // print one proc component in the cycle
    task print_cycle_proc_comp(input reg [680:0] proc_path, input integer cycle_comp_id);
        begin
            $display("// (%0d): Process: %0s", cycle_comp_id, proc_path);
            $fdisplay(fp, "Dependence_Process_ID %0d", cycle_comp_id);
            $fdisplay(fp, "Dependence_Process_path %0s", proc_path);
        end
    endtask

    // print one channel component in the cycle
    task print_cycle_chan_comp(input [PROC_NUM - 1:0] dl_vec1, input [PROC_NUM - 1:0] dl_vec2);
        reg [480:0] chan_path;
        integer index1;
        integer index2;
        begin
            index1 = proc_index(dl_vec1);
            index2 = proc_index(dl_vec2);
            case (index1)
                0 : begin
                    case(index2)
                    1: begin
                        if (~ip_handler_top_entry3_U0.myIpAddress_out_blk_n) begin
                            if (~myIpAddress_c1_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.myIpAddress_c1_U' written by process 'ip_handler_top_ip_handler_top.ip_handler_top_entry19_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.myIpAddress_c1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~myIpAddress_c1_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.myIpAddress_c1_U' read by process 'ip_handler_top_ip_handler_top.ip_handler_top_entry19_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.myIpAddress_c1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                1 : begin
                    case(index2)
                    0: begin
                        if (~ip_handler_top_entry19_U0.myIpAddress_blk_n) begin
                            if (~myIpAddress_c1_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.myIpAddress_c1_U' written by process 'ip_handler_top_ip_handler_top.ip_handler_top_entry3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.myIpAddress_c1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~myIpAddress_c1_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.myIpAddress_c1_U' read by process 'ip_handler_top_ip_handler_top.ip_handler_top_entry3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.myIpAddress_c1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    14: begin
                        if (~ip_handler_top_entry19_U0.myIpAddress_out_blk_n) begin
                            if (~myIpAddress_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.myIpAddress_c_U' written by process 'ip_handler_top_ip_handler_top.extract_ip_meta_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.myIpAddress_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~myIpAddress_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.myIpAddress_c_U' read by process 'ip_handler_top_ip_handler_top.extract_ip_meta_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.myIpAddress_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                2 : begin
                    case(index2)
                    10: begin
                        if (~convert_axis_to_net_axis_512_U0.s_axis_raw_internal_blk_n) begin
                            if (~s_axis_raw_internal_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.s_axis_raw_internal_U' written by process 'ip_handler_top_ip_handler_top.detect_eth_protocol_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.s_axis_raw_internal_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~s_axis_raw_internal_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.s_axis_raw_internal_U' read by process 'ip_handler_top_ip_handler_top.detect_eth_protocol_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.s_axis_raw_internal_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                3 : begin
                    case(index2)
                    11: begin
                        if (~convert_net_axis_to_axis_512_13_U0.m_axis_arp_internal_blk_n) begin
                            if (~m_axis_arp_internal_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.m_axis_arp_internal_U' written by process 'ip_handler_top_ip_handler_top.route_by_eth_protocol_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.m_axis_arp_internal_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~m_axis_arp_internal_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.m_axis_arp_internal_U' read by process 'ip_handler_top_ip_handler_top.route_by_eth_protocol_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.m_axis_arp_internal_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                4 : begin
                    case(index2)
                    20: begin
                        if (~convert_net_axis_to_axis_512_14_U0.m_axis_icmpv6_internal_blk_n) begin
                            if (~m_axis_icmpv6_internal_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.m_axis_icmpv6_internal_U' written by process 'ip_handler_top_ip_handler_top.detect_ipv6_protocol_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.m_axis_icmpv6_internal_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~m_axis_icmpv6_internal_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.m_axis_icmpv6_internal_U' read by process 'ip_handler_top_ip_handler_top.detect_ipv6_protocol_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.m_axis_icmpv6_internal_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                5 : begin
                    case(index2)
                    20: begin
                        if (~convert_net_axis_to_axis_512_15_U0.m_axis_ipv6udp_internal_blk_n) begin
                            if (~m_axis_ipv6udp_internal_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.m_axis_ipv6udp_internal_U' written by process 'ip_handler_top_ip_handler_top.detect_ipv6_protocol_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.m_axis_ipv6udp_internal_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~m_axis_ipv6udp_internal_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.m_axis_ipv6udp_internal_U' read by process 'ip_handler_top_ip_handler_top.detect_ipv6_protocol_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.m_axis_ipv6udp_internal_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                6 : begin
                    case(index2)
                    19: begin
                        if (~convert_net_axis_to_axis_512_16_U0.m_axis_icmp_internal_blk_n) begin
                            if (~m_axis_icmp_internal_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.m_axis_icmp_internal_U' written by process 'ip_handler_top_ip_handler_top.detect_ipv4_protocol_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.m_axis_icmp_internal_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~m_axis_icmp_internal_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.m_axis_icmp_internal_U' read by process 'ip_handler_top_ip_handler_top.detect_ipv4_protocol_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.m_axis_icmp_internal_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                7 : begin
                    case(index2)
                    21: begin
                        if (~convert_net_axis_to_axis_512_17_U0.m_axis_udp_internal_blk_n) begin
                            if (~m_axis_udp_internal_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.m_axis_udp_internal_U' written by process 'ip_handler_top_ip_handler_top.ip_handler_duplicate_stream_net_axis_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.m_axis_udp_internal_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~m_axis_udp_internal_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.m_axis_udp_internal_U' read by process 'ip_handler_top_ip_handler_top.ip_handler_duplicate_stream_net_axis_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.m_axis_udp_internal_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                8 : begin
                    case(index2)
                    19: begin
                        if (~convert_net_axis_to_axis_512_18_U0.m_axis_tcp_internal_blk_n) begin
                            if (~m_axis_tcp_internal_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.m_axis_tcp_internal_U' written by process 'ip_handler_top_ip_handler_top.detect_ipv4_protocol_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.m_axis_tcp_internal_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~m_axis_tcp_internal_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.m_axis_tcp_internal_U' read by process 'ip_handler_top_ip_handler_top.detect_ipv4_protocol_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.m_axis_tcp_internal_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                9 : begin
                    case(index2)
                    21: begin
                        if (~convert_net_axis_to_axis_512_U0.m_axis_roce_internal_blk_n) begin
                            if (~m_axis_roce_internal_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.m_axis_roce_internal_U' written by process 'ip_handler_top_ip_handler_top.ip_handler_duplicate_stream_net_axis_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.m_axis_roce_internal_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~m_axis_roce_internal_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.m_axis_roce_internal_U' read by process 'ip_handler_top_ip_handler_top.ip_handler_duplicate_stream_net_axis_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.m_axis_roce_internal_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                10 : begin
                    case(index2)
                    2: begin
                        if (~detect_eth_protocol_512_U0.s_axis_raw_internal_blk_n) begin
                            if (~s_axis_raw_internal_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.s_axis_raw_internal_U' written by process 'ip_handler_top_ip_handler_top.convert_axis_to_net_axis_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.s_axis_raw_internal_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~s_axis_raw_internal_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.s_axis_raw_internal_U' read by process 'ip_handler_top_ip_handler_top.convert_axis_to_net_axis_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.s_axis_raw_internal_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    11: begin
                        if (~detect_eth_protocol_512_U0.etherTypeFifo_blk_n) begin
                            if (~etherTypeFifo_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.etherTypeFifo_U' written by process 'ip_handler_top_ip_handler_top.route_by_eth_protocol_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.etherTypeFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~etherTypeFifo_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.etherTypeFifo_U' read by process 'ip_handler_top_ip_handler_top.route_by_eth_protocol_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.etherTypeFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~detect_eth_protocol_512_U0.ethDataFifo_blk_n) begin
                            if (~ethDataFifo_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.ethDataFifo_U' written by process 'ip_handler_top_ip_handler_top.route_by_eth_protocol_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ethDataFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ethDataFifo_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.ethDataFifo_U' read by process 'ip_handler_top_ip_handler_top.route_by_eth_protocol_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ethDataFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                11 : begin
                    case(index2)
                    10: begin
                        if (~route_by_eth_protocol_512_U0.etherTypeFifo_blk_n) begin
                            if (~etherTypeFifo_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.etherTypeFifo_U' written by process 'ip_handler_top_ip_handler_top.detect_eth_protocol_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.etherTypeFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~etherTypeFifo_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.etherTypeFifo_U' read by process 'ip_handler_top_ip_handler_top.detect_eth_protocol_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.etherTypeFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~route_by_eth_protocol_512_U0.ethDataFifo_blk_n) begin
                            if (~ethDataFifo_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.ethDataFifo_U' written by process 'ip_handler_top_ip_handler_top.detect_eth_protocol_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ethDataFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ethDataFifo_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.ethDataFifo_U' read by process 'ip_handler_top_ip_handler_top.detect_eth_protocol_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ethDataFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    3: begin
                        if (~route_by_eth_protocol_512_U0.m_axis_arp_internal_blk_n) begin
                            if (~m_axis_arp_internal_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.m_axis_arp_internal_U' written by process 'ip_handler_top_ip_handler_top.convert_net_axis_to_axis_512_13_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.m_axis_arp_internal_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~m_axis_arp_internal_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.m_axis_arp_internal_U' read by process 'ip_handler_top_ip_handler_top.convert_net_axis_to_axis_512_13_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.m_axis_arp_internal_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    12: begin
                        if (~route_by_eth_protocol_512_U0.ipv4ShiftFifo_blk_n) begin
                            if (~ipv4ShiftFifo_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.ipv4ShiftFifo_U' written by process 'ip_handler_top_ip_handler_top.ip_handler_rshiftWordByOctet_net_axis_512_512_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipv4ShiftFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ipv4ShiftFifo_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.ipv4ShiftFifo_U' read by process 'ip_handler_top_ip_handler_top.ip_handler_rshiftWordByOctet_net_axis_512_512_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipv4ShiftFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    13: begin
                        if (~route_by_eth_protocol_512_U0.ipv6ShiftFifo_blk_n) begin
                            if (~ipv6ShiftFifo_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.ipv6ShiftFifo_U' written by process 'ip_handler_top_ip_handler_top.ip_handler_rshiftWordByOctet_net_axis_512_512_3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipv6ShiftFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ipv6ShiftFifo_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.ipv6ShiftFifo_U' read by process 'ip_handler_top_ip_handler_top.ip_handler_rshiftWordByOctet_net_axis_512_512_3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipv6ShiftFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                12 : begin
                    case(index2)
                    11: begin
                        if (~ip_handler_rshiftWordByOctet_net_axis_512_512_1_U0.ipv4ShiftFifo_blk_n) begin
                            if (~ipv4ShiftFifo_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.ipv4ShiftFifo_U' written by process 'ip_handler_top_ip_handler_top.route_by_eth_protocol_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipv4ShiftFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ipv4ShiftFifo_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.ipv4ShiftFifo_U' read by process 'ip_handler_top_ip_handler_top.route_by_eth_protocol_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipv4ShiftFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    14: begin
                        if (~ip_handler_rshiftWordByOctet_net_axis_512_512_1_U0.ipDataFifo_blk_n) begin
                            if (~ipDataFifo_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.ipDataFifo_U' written by process 'ip_handler_top_ip_handler_top.extract_ip_meta_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipDataFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ipDataFifo_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.ipDataFifo_U' read by process 'ip_handler_top_ip_handler_top.extract_ip_meta_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipDataFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                13 : begin
                    case(index2)
                    11: begin
                        if (~ip_handler_rshiftWordByOctet_net_axis_512_512_3_U0.ipv6ShiftFifo_blk_n) begin
                            if (~ipv6ShiftFifo_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.ipv6ShiftFifo_U' written by process 'ip_handler_top_ip_handler_top.route_by_eth_protocol_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipv6ShiftFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ipv6ShiftFifo_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.ipv6ShiftFifo_U' read by process 'ip_handler_top_ip_handler_top.route_by_eth_protocol_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipv6ShiftFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    20: begin
                        if (~ip_handler_rshiftWordByOctet_net_axis_512_512_3_U0.ipv6DataFifo_blk_n) begin
                            if (~ipv6DataFifo_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.ipv6DataFifo_U' written by process 'ip_handler_top_ip_handler_top.detect_ipv6_protocol_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipv6DataFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ipv6DataFifo_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.ipv6DataFifo_U' read by process 'ip_handler_top_ip_handler_top.detect_ipv6_protocol_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipv6DataFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                14 : begin
                    case(index2)
                    1: begin
                        if (~extract_ip_meta_512_U0.myIpAddress_blk_n) begin
                            if (~myIpAddress_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.myIpAddress_c_U' written by process 'ip_handler_top_ip_handler_top.ip_handler_top_entry19_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.myIpAddress_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~myIpAddress_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.myIpAddress_c_U' read by process 'ip_handler_top_ip_handler_top.ip_handler_top_entry19_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.myIpAddress_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    12: begin
                        if (~extract_ip_meta_512_U0.ipDataFifo_blk_n) begin
                            if (~ipDataFifo_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.ipDataFifo_U' written by process 'ip_handler_top_ip_handler_top.ip_handler_rshiftWordByOctet_net_axis_512_512_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipDataFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ipDataFifo_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.ipDataFifo_U' read by process 'ip_handler_top_ip_handler_top.ip_handler_rshiftWordByOctet_net_axis_512_512_1_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipDataFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    15: begin
                        if (~extract_ip_meta_512_U0.ipDataMetaFifo_blk_n) begin
                            if (~ipDataMetaFifo_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.ipDataMetaFifo_U' written by process 'ip_handler_top_ip_handler_top.ip_handler_compute_ipv4_checksum_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipDataMetaFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ipDataMetaFifo_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.ipDataMetaFifo_U' read by process 'ip_handler_top_ip_handler_top.ip_handler_compute_ipv4_checksum_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipDataMetaFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    17: begin
                        if (~extract_ip_meta_512_U0.validIpAddressFifo_blk_n) begin
                            if (~validIpAddressFifo_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.validIpAddressFifo_U' written by process 'ip_handler_top_ip_handler_top.ip_invalid_dropper_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.validIpAddressFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~validIpAddressFifo_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.validIpAddressFifo_U' read by process 'ip_handler_top_ip_handler_top.ip_invalid_dropper_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.validIpAddressFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    19: begin
                        if (~extract_ip_meta_512_U0.ipv4ProtocolFifo_blk_n) begin
                            if (~ipv4ProtocolFifo_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.ipv4ProtocolFifo_U' written by process 'ip_handler_top_ip_handler_top.detect_ipv4_protocol_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipv4ProtocolFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ipv4ProtocolFifo_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.ipv4ProtocolFifo_U' read by process 'ip_handler_top_ip_handler_top.detect_ipv4_protocol_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipv4ProtocolFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                15 : begin
                    case(index2)
                    14: begin
                        if (~ip_handler_compute_ipv4_checksum_U0.ipDataMetaFifo_blk_n) begin
                            if (~ipDataMetaFifo_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.ipDataMetaFifo_U' written by process 'ip_handler_top_ip_handler_top.extract_ip_meta_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipDataMetaFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ipDataMetaFifo_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.ipDataMetaFifo_U' read by process 'ip_handler_top_ip_handler_top.extract_ip_meta_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipDataMetaFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    17: begin
                        if (~ip_handler_compute_ipv4_checksum_U0.ipDataCheckFifo_blk_n) begin
                            if (~ipDataCheckFifo_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.ipDataCheckFifo_U' written by process 'ip_handler_top_ip_handler_top.ip_invalid_dropper_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipDataCheckFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ipDataCheckFifo_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.ipDataCheckFifo_U' read by process 'ip_handler_top_ip_handler_top.ip_invalid_dropper_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipDataCheckFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    16: begin
                        if (~ip_handler_compute_ipv4_checksum_U0.iph_subSumsFifoOut_blk_n) begin
                            if (~iph_subSumsFifoOut_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.iph_subSumsFifoOut_U' written by process 'ip_handler_top_ip_handler_top.ip_handler_check_ipv4_checksum_32_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.iph_subSumsFifoOut_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~iph_subSumsFifoOut_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.iph_subSumsFifoOut_U' read by process 'ip_handler_top_ip_handler_top.ip_handler_check_ipv4_checksum_32_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.iph_subSumsFifoOut_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                16 : begin
                    case(index2)
                    15: begin
                        if (~ip_handler_check_ipv4_checksum_32_U0.iph_subSumsFifoOut_blk_n) begin
                            if (~iph_subSumsFifoOut_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.iph_subSumsFifoOut_U' written by process 'ip_handler_top_ip_handler_top.ip_handler_compute_ipv4_checksum_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.iph_subSumsFifoOut_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~iph_subSumsFifoOut_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.iph_subSumsFifoOut_U' read by process 'ip_handler_top_ip_handler_top.ip_handler_compute_ipv4_checksum_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.iph_subSumsFifoOut_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    17: begin
                        if (~ip_handler_check_ipv4_checksum_32_U0.validChecksumFifo_blk_n) begin
                            if (~validChecksumFifo_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.validChecksumFifo_U' written by process 'ip_handler_top_ip_handler_top.ip_invalid_dropper_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.validChecksumFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~validChecksumFifo_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.validChecksumFifo_U' read by process 'ip_handler_top_ip_handler_top.ip_invalid_dropper_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.validChecksumFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                17 : begin
                    case(index2)
                    16: begin
                        if (~ip_invalid_dropper_512_U0.validChecksumFifo_blk_n) begin
                            if (~validChecksumFifo_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.validChecksumFifo_U' written by process 'ip_handler_top_ip_handler_top.ip_handler_check_ipv4_checksum_32_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.validChecksumFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~validChecksumFifo_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.validChecksumFifo_U' read by process 'ip_handler_top_ip_handler_top.ip_handler_check_ipv4_checksum_32_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.validChecksumFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    14: begin
                        if (~ip_invalid_dropper_512_U0.validIpAddressFifo_blk_n) begin
                            if (~validIpAddressFifo_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.validIpAddressFifo_U' written by process 'ip_handler_top_ip_handler_top.extract_ip_meta_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.validIpAddressFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~validIpAddressFifo_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.validIpAddressFifo_U' read by process 'ip_handler_top_ip_handler_top.extract_ip_meta_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.validIpAddressFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    19: begin
                        if (~ip_invalid_dropper_512_U0.ipv4ValidFifo_blk_n) begin
                            if (~ipv4ValidFifo_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.ipv4ValidFifo_U' written by process 'ip_handler_top_ip_handler_top.detect_ipv4_protocol_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipv4ValidFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ipv4ValidFifo_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.ipv4ValidFifo_U' read by process 'ip_handler_top_ip_handler_top.detect_ipv4_protocol_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipv4ValidFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    15: begin
                        if (~ip_invalid_dropper_512_U0.ipDataCheckFifo_blk_n) begin
                            if (~ipDataCheckFifo_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.ipDataCheckFifo_U' written by process 'ip_handler_top_ip_handler_top.ip_handler_compute_ipv4_checksum_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipDataCheckFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ipDataCheckFifo_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.ipDataCheckFifo_U' read by process 'ip_handler_top_ip_handler_top.ip_handler_compute_ipv4_checksum_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipDataCheckFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    18: begin
                        if (~ip_invalid_dropper_512_U0.ipDataDropFifo_blk_n) begin
                            if (~ipDataDropFifo_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.ipDataDropFifo_U' written by process 'ip_handler_top_ip_handler_top.cut_length_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipDataDropFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ipDataDropFifo_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.ipDataDropFifo_U' read by process 'ip_handler_top_ip_handler_top.cut_length_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipDataDropFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                18 : begin
                    case(index2)
                    17: begin
                        if (~cut_length_U0.ipDataDropFifo_blk_n) begin
                            if (~ipDataDropFifo_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.ipDataDropFifo_U' written by process 'ip_handler_top_ip_handler_top.ip_invalid_dropper_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipDataDropFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ipDataDropFifo_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.ipDataDropFifo_U' read by process 'ip_handler_top_ip_handler_top.ip_invalid_dropper_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipDataDropFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    19: begin
                        if (~cut_length_U0.ipDataCutFifo_blk_n) begin
                            if (~ipDataCutFifo_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.ipDataCutFifo_U' written by process 'ip_handler_top_ip_handler_top.detect_ipv4_protocol_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipDataCutFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ipDataCutFifo_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.ipDataCutFifo_U' read by process 'ip_handler_top_ip_handler_top.detect_ipv4_protocol_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipDataCutFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                19 : begin
                    case(index2)
                    14: begin
                        if (~detect_ipv4_protocol_512_U0.ipv4ProtocolFifo_blk_n) begin
                            if (~ipv4ProtocolFifo_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.ipv4ProtocolFifo_U' written by process 'ip_handler_top_ip_handler_top.extract_ip_meta_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipv4ProtocolFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ipv4ProtocolFifo_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.ipv4ProtocolFifo_U' read by process 'ip_handler_top_ip_handler_top.extract_ip_meta_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipv4ProtocolFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    17: begin
                        if (~detect_ipv4_protocol_512_U0.ipv4ValidFifo_blk_n) begin
                            if (~ipv4ValidFifo_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.ipv4ValidFifo_U' written by process 'ip_handler_top_ip_handler_top.ip_invalid_dropper_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipv4ValidFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ipv4ValidFifo_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.ipv4ValidFifo_U' read by process 'ip_handler_top_ip_handler_top.ip_invalid_dropper_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipv4ValidFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    18: begin
                        if (~detect_ipv4_protocol_512_U0.ipDataCutFifo_blk_n) begin
                            if (~ipDataCutFifo_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.ipDataCutFifo_U' written by process 'ip_handler_top_ip_handler_top.cut_length_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipDataCutFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ipDataCutFifo_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.ipDataCutFifo_U' read by process 'ip_handler_top_ip_handler_top.cut_length_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipDataCutFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    6: begin
                        if (~detect_ipv4_protocol_512_U0.m_axis_icmp_internal_blk_n) begin
                            if (~m_axis_icmp_internal_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.m_axis_icmp_internal_U' written by process 'ip_handler_top_ip_handler_top.convert_net_axis_to_axis_512_16_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.m_axis_icmp_internal_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~m_axis_icmp_internal_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.m_axis_icmp_internal_U' read by process 'ip_handler_top_ip_handler_top.convert_net_axis_to_axis_512_16_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.m_axis_icmp_internal_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    21: begin
                        if (~detect_ipv4_protocol_512_U0.udpDataFifo_blk_n) begin
                            if (~udpDataFifo_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.udpDataFifo_U' written by process 'ip_handler_top_ip_handler_top.ip_handler_duplicate_stream_net_axis_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.udpDataFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~udpDataFifo_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.udpDataFifo_U' read by process 'ip_handler_top_ip_handler_top.ip_handler_duplicate_stream_net_axis_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.udpDataFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    8: begin
                        if (~detect_ipv4_protocol_512_U0.m_axis_tcp_internal_blk_n) begin
                            if (~m_axis_tcp_internal_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.m_axis_tcp_internal_U' written by process 'ip_handler_top_ip_handler_top.convert_net_axis_to_axis_512_18_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.m_axis_tcp_internal_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~m_axis_tcp_internal_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.m_axis_tcp_internal_U' read by process 'ip_handler_top_ip_handler_top.convert_net_axis_to_axis_512_18_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.m_axis_tcp_internal_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                20 : begin
                    case(index2)
                    13: begin
                        if (~detect_ipv6_protocol_512_U0.ipv6DataFifo_blk_n) begin
                            if (~ipv6DataFifo_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.ipv6DataFifo_U' written by process 'ip_handler_top_ip_handler_top.ip_handler_rshiftWordByOctet_net_axis_512_512_3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipv6DataFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ipv6DataFifo_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.ipv6DataFifo_U' read by process 'ip_handler_top_ip_handler_top.ip_handler_rshiftWordByOctet_net_axis_512_512_3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.ipv6DataFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    4: begin
                        if (~detect_ipv6_protocol_512_U0.m_axis_icmpv6_internal_blk_n) begin
                            if (~m_axis_icmpv6_internal_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.m_axis_icmpv6_internal_U' written by process 'ip_handler_top_ip_handler_top.convert_net_axis_to_axis_512_14_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.m_axis_icmpv6_internal_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~m_axis_icmpv6_internal_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.m_axis_icmpv6_internal_U' read by process 'ip_handler_top_ip_handler_top.convert_net_axis_to_axis_512_14_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.m_axis_icmpv6_internal_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    5: begin
                        if (~detect_ipv6_protocol_512_U0.m_axis_ipv6udp_internal_blk_n) begin
                            if (~m_axis_ipv6udp_internal_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.m_axis_ipv6udp_internal_U' written by process 'ip_handler_top_ip_handler_top.convert_net_axis_to_axis_512_15_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.m_axis_ipv6udp_internal_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~m_axis_ipv6udp_internal_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.m_axis_ipv6udp_internal_U' read by process 'ip_handler_top_ip_handler_top.convert_net_axis_to_axis_512_15_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.m_axis_ipv6udp_internal_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                21 : begin
                    case(index2)
                    19: begin
                        if (~ip_handler_duplicate_stream_net_axis_512_U0.udpDataFifo_blk_n) begin
                            if (~udpDataFifo_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.udpDataFifo_U' written by process 'ip_handler_top_ip_handler_top.detect_ipv4_protocol_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.udpDataFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~udpDataFifo_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.udpDataFifo_U' read by process 'ip_handler_top_ip_handler_top.detect_ipv4_protocol_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.udpDataFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    7: begin
                        if (~ip_handler_duplicate_stream_net_axis_512_U0.m_axis_udp_internal_blk_n) begin
                            if (~m_axis_udp_internal_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.m_axis_udp_internal_U' written by process 'ip_handler_top_ip_handler_top.convert_net_axis_to_axis_512_17_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.m_axis_udp_internal_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~m_axis_udp_internal_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.m_axis_udp_internal_U' read by process 'ip_handler_top_ip_handler_top.convert_net_axis_to_axis_512_17_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.m_axis_udp_internal_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    9: begin
                        if (~ip_handler_duplicate_stream_net_axis_512_U0.m_axis_roce_internal_blk_n) begin
                            if (~m_axis_roce_internal_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ip_handler_top_ip_handler_top.m_axis_roce_internal_U' written by process 'ip_handler_top_ip_handler_top.convert_net_axis_to_axis_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.m_axis_roce_internal_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~m_axis_roce_internal_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ip_handler_top_ip_handler_top.m_axis_roce_internal_U' read by process 'ip_handler_top_ip_handler_top.convert_net_axis_to_axis_512_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ip_handler_top_ip_handler_top.m_axis_roce_internal_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
            endcase
        end
    endtask

    // report
    initial begin : report_deadlock
        integer cycle_id;
        integer cycle_comp_id;
        integer record_time;
        wait (reset == 1);
        cycle_id = 1;
        record_time = 0;
        while (1) begin
            @ (negedge clock);
            case (CS_fsm)
                ST_DL_DETECTED: begin
                    cycle_comp_id = 2;
                    if (dl_detect_reg != dl_done_reg) begin
                        if (dl_done_reg == 'b0) begin
                            print_dl_head;
                            record_time = $time;
                        end
                        print_cycle_start(proc_path(origin), cycle_id);
                        cycle_id = cycle_id + 1;
                    end
                    else begin
                        print_dl_end((cycle_id - 1),record_time);
                        find_df_deadlock = 1;
                        @(negedge clock);
                        $finish;
                    end
                end
                ST_DL_REPORT: begin
                    if ((|(dl_in_vec)) & ~(|(dl_in_vec & origin_reg))) begin
                        print_cycle_chan_comp(dl_in_vec_reg, dl_in_vec);
                        print_cycle_proc_comp(proc_path(dl_in_vec), cycle_comp_id);
                        cycle_comp_id = cycle_comp_id + 1;
                    end
                    else begin
                        print_cycle_chan_comp(dl_in_vec_reg, dl_in_vec);
                    end
                end
            endcase
        end
    end
 
