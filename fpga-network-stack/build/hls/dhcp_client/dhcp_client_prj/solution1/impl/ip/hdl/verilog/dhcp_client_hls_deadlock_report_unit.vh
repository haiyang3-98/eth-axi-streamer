   
    parameter PROC_NUM = 6;
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
    function [400:0] proc_path(input [PROC_NUM - 1:0] dl_vec);
        integer index;
        begin
            index = proc_index(dl_vec);
            case (index)
                0 : begin
                    proc_path = "dhcp_client_dhcp_client.dhcp_client_entry3_U0";
                end
                1 : begin
                    proc_path = "dhcp_client_dhcp_client.dhcp_client_entry7_U0";
                end
                2 : begin
                    proc_path = "dhcp_client_dhcp_client.open_dhcp_port_U0";
                end
                3 : begin
                    proc_path = "dhcp_client_dhcp_client.receive_message_U0";
                end
                4 : begin
                    proc_path = "dhcp_client_dhcp_client.dhcp_fsm_U0";
                end
                5 : begin
                    proc_path = "dhcp_client_dhcp_client.send_message_U0";
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
    task print_cycle_start(input reg [400:0] proc_path, input integer cycle_id);
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
    task print_cycle_proc_comp(input reg [400:0] proc_path, input integer cycle_comp_id);
        begin
            $display("// (%0d): Process: %0s", cycle_comp_id, proc_path);
            $fdisplay(fp, "Dependence_Process_ID %0d", cycle_comp_id);
            $fdisplay(fp, "Dependence_Process_path %0s", proc_path);
        end
    endtask

    // print one channel component in the cycle
    task print_cycle_chan_comp(input [PROC_NUM - 1:0] dl_vec1, input [PROC_NUM - 1:0] dl_vec2);
        reg [408:0] chan_path;
        integer index1;
        integer index2;
        begin
            index1 = proc_index(dl_vec1);
            index2 = proc_index(dl_vec2);
            case (index1)
                0 : begin
                    case(index2)
                    1: begin
                        if (~dhcp_client_entry3_U0.dhcpEnable_out_blk_n) begin
                            if (~dhcpEnable_c1_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'dhcp_client_dhcp_client.dhcpEnable_c1_U' written by process 'dhcp_client_dhcp_client.dhcp_client_entry7_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.dhcpEnable_c1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~dhcpEnable_c1_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'dhcp_client_dhcp_client.dhcpEnable_c1_U' read by process 'dhcp_client_dhcp_client.dhcp_client_entry7_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.dhcpEnable_c1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~dhcp_client_entry3_U0.inputIpAddress_out_blk_n) begin
                            if (~inputIpAddress_c2_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'dhcp_client_dhcp_client.inputIpAddress_c2_U' written by process 'dhcp_client_dhcp_client.dhcp_client_entry7_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.inputIpAddress_c2_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~inputIpAddress_c2_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'dhcp_client_dhcp_client.inputIpAddress_c2_U' read by process 'dhcp_client_dhcp_client.dhcp_client_entry7_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.inputIpAddress_c2_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~dhcp_client_entry3_U0.myMacAddress_out_blk_n) begin
                            if (~myMacAddress_c3_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'dhcp_client_dhcp_client.myMacAddress_c3_U' written by process 'dhcp_client_dhcp_client.dhcp_client_entry7_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.myMacAddress_c3_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~myMacAddress_c3_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'dhcp_client_dhcp_client.myMacAddress_c3_U' read by process 'dhcp_client_dhcp_client.dhcp_client_entry7_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.myMacAddress_c3_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                1 : begin
                    case(index2)
                    0: begin
                        if (~dhcp_client_entry7_U0.dhcpEnable_blk_n) begin
                            if (~dhcpEnable_c1_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'dhcp_client_dhcp_client.dhcpEnable_c1_U' written by process 'dhcp_client_dhcp_client.dhcp_client_entry3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.dhcpEnable_c1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~dhcpEnable_c1_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'dhcp_client_dhcp_client.dhcpEnable_c1_U' read by process 'dhcp_client_dhcp_client.dhcp_client_entry3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.dhcpEnable_c1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~dhcp_client_entry7_U0.inputIpAddress_blk_n) begin
                            if (~inputIpAddress_c2_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'dhcp_client_dhcp_client.inputIpAddress_c2_U' written by process 'dhcp_client_dhcp_client.dhcp_client_entry3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.inputIpAddress_c2_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~inputIpAddress_c2_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'dhcp_client_dhcp_client.inputIpAddress_c2_U' read by process 'dhcp_client_dhcp_client.dhcp_client_entry3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.inputIpAddress_c2_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~dhcp_client_entry7_U0.myMacAddress_blk_n) begin
                            if (~myMacAddress_c3_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'dhcp_client_dhcp_client.myMacAddress_c3_U' written by process 'dhcp_client_dhcp_client.dhcp_client_entry3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.myMacAddress_c3_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~myMacAddress_c3_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'dhcp_client_dhcp_client.myMacAddress_c3_U' read by process 'dhcp_client_dhcp_client.dhcp_client_entry3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.myMacAddress_c3_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    4: begin
                        if (~dhcp_client_entry7_U0.dhcpEnable_out_blk_n) begin
                            if (~dhcpEnable_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'dhcp_client_dhcp_client.dhcpEnable_c_U' written by process 'dhcp_client_dhcp_client.dhcp_fsm_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.dhcpEnable_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~dhcpEnable_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'dhcp_client_dhcp_client.dhcpEnable_c_U' read by process 'dhcp_client_dhcp_client.dhcp_fsm_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.dhcpEnable_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~dhcp_client_entry7_U0.inputIpAddress_out_blk_n) begin
                            if (~inputIpAddress_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'dhcp_client_dhcp_client.inputIpAddress_c_U' written by process 'dhcp_client_dhcp_client.dhcp_fsm_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.inputIpAddress_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~inputIpAddress_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'dhcp_client_dhcp_client.inputIpAddress_c_U' read by process 'dhcp_client_dhcp_client.dhcp_fsm_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.inputIpAddress_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    3: begin
                        if (~dhcp_client_entry7_U0.myMacAddress_out_blk_n) begin
                            if (~myMacAddress_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'dhcp_client_dhcp_client.myMacAddress_c_U' written by process 'dhcp_client_dhcp_client.receive_message_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.myMacAddress_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~myMacAddress_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'dhcp_client_dhcp_client.myMacAddress_c_U' read by process 'dhcp_client_dhcp_client.receive_message_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.myMacAddress_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    5: begin
                        if (~dhcp_client_entry7_U0.myMacAddress_out1_blk_n) begin
                            if (~myMacAddress_c12_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'dhcp_client_dhcp_client.myMacAddress_c12_U' written by process 'dhcp_client_dhcp_client.send_message_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.myMacAddress_c12_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~myMacAddress_c12_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'dhcp_client_dhcp_client.myMacAddress_c12_U' read by process 'dhcp_client_dhcp_client.send_message_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.myMacAddress_c12_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                2 : begin
                    case(index2)
                    4: begin
                        if (~open_dhcp_port_U0.portOpen_blk_n) begin
                            if (~portOpen_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'dhcp_client_dhcp_client.portOpen_U' written by process 'dhcp_client_dhcp_client.dhcp_fsm_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.portOpen_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~portOpen_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'dhcp_client_dhcp_client.portOpen_U' read by process 'dhcp_client_dhcp_client.dhcp_fsm_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.portOpen_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                3 : begin
                    case(index2)
                    1: begin
                        if (~receive_message_U0.myMacAddress_blk_n) begin
                            if (~myMacAddress_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'dhcp_client_dhcp_client.myMacAddress_c_U' written by process 'dhcp_client_dhcp_client.dhcp_client_entry7_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.myMacAddress_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~myMacAddress_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'dhcp_client_dhcp_client.myMacAddress_c_U' read by process 'dhcp_client_dhcp_client.dhcp_client_entry7_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.myMacAddress_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    4: begin
                        if (~receive_message_U0.dhcp_replyMetaFifo_blk_n) begin
                            if (~dhcp_replyMetaFifo_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'dhcp_client_dhcp_client.dhcp_replyMetaFifo_U' written by process 'dhcp_client_dhcp_client.dhcp_fsm_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.dhcp_replyMetaFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~dhcp_replyMetaFifo_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'dhcp_client_dhcp_client.dhcp_replyMetaFifo_U' read by process 'dhcp_client_dhcp_client.dhcp_fsm_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.dhcp_replyMetaFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                4 : begin
                    case(index2)
                    1: begin
                        if (~dhcp_fsm_U0.dhcpEnable_blk_n) begin
                            if (~dhcpEnable_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'dhcp_client_dhcp_client.dhcpEnable_c_U' written by process 'dhcp_client_dhcp_client.dhcp_client_entry7_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.dhcpEnable_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~dhcpEnable_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'dhcp_client_dhcp_client.dhcpEnable_c_U' read by process 'dhcp_client_dhcp_client.dhcp_client_entry7_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.dhcpEnable_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~dhcp_fsm_U0.inputIpAddress_blk_n) begin
                            if (~inputIpAddress_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'dhcp_client_dhcp_client.inputIpAddress_c_U' written by process 'dhcp_client_dhcp_client.dhcp_client_entry7_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.inputIpAddress_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~inputIpAddress_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'dhcp_client_dhcp_client.inputIpAddress_c_U' read by process 'dhcp_client_dhcp_client.dhcp_client_entry7_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.inputIpAddress_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    2: begin
                        if (~dhcp_fsm_U0.portOpen_blk_n) begin
                            if (~portOpen_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'dhcp_client_dhcp_client.portOpen_U' written by process 'dhcp_client_dhcp_client.open_dhcp_port_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.portOpen_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~portOpen_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'dhcp_client_dhcp_client.portOpen_U' read by process 'dhcp_client_dhcp_client.open_dhcp_port_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.portOpen_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    5: begin
                        if (~dhcp_fsm_U0.dhcp_requestMetaFifo_blk_n) begin
                            if (~dhcp_requestMetaFifo_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'dhcp_client_dhcp_client.dhcp_requestMetaFifo_U' written by process 'dhcp_client_dhcp_client.send_message_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.dhcp_requestMetaFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~dhcp_requestMetaFifo_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'dhcp_client_dhcp_client.dhcp_requestMetaFifo_U' read by process 'dhcp_client_dhcp_client.send_message_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.dhcp_requestMetaFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    3: begin
                        if (~dhcp_fsm_U0.dhcp_replyMetaFifo_blk_n) begin
                            if (~dhcp_replyMetaFifo_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'dhcp_client_dhcp_client.dhcp_replyMetaFifo_U' written by process 'dhcp_client_dhcp_client.receive_message_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.dhcp_replyMetaFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~dhcp_replyMetaFifo_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'dhcp_client_dhcp_client.dhcp_replyMetaFifo_U' read by process 'dhcp_client_dhcp_client.receive_message_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.dhcp_replyMetaFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                5 : begin
                    case(index2)
                    1: begin
                        if (~send_message_U0.myMacAddress_blk_n) begin
                            if (~myMacAddress_c12_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'dhcp_client_dhcp_client.myMacAddress_c12_U' written by process 'dhcp_client_dhcp_client.dhcp_client_entry7_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.myMacAddress_c12_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~myMacAddress_c12_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'dhcp_client_dhcp_client.myMacAddress_c12_U' read by process 'dhcp_client_dhcp_client.dhcp_client_entry7_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.myMacAddress_c12_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    4: begin
                        if (~send_message_U0.dhcp_requestMetaFifo_blk_n) begin
                            if (~dhcp_requestMetaFifo_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'dhcp_client_dhcp_client.dhcp_requestMetaFifo_U' written by process 'dhcp_client_dhcp_client.dhcp_fsm_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.dhcp_requestMetaFifo_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~dhcp_requestMetaFifo_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'dhcp_client_dhcp_client.dhcp_requestMetaFifo_U' read by process 'dhcp_client_dhcp_client.dhcp_fsm_U0'");
                                $fdisplay(fp, "Dependence_Channel_path dhcp_client_dhcp_client.dhcp_requestMetaFifo_U");
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
 
