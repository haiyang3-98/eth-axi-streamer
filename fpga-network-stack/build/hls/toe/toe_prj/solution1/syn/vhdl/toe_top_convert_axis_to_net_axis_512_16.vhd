-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Version: 2020.2
-- Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity toe_top_convert_axis_to_net_axis_512_16 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    s_axis_tcp_data_TVALID : IN STD_LOGIC;
    ipRxData_internal_din : OUT STD_LOGIC_VECTOR (1023 downto 0);
    ipRxData_internal_full_n : IN STD_LOGIC;
    ipRxData_internal_write : OUT STD_LOGIC;
    s_axis_tcp_data_TDATA : IN STD_LOGIC_VECTOR (511 downto 0);
    s_axis_tcp_data_TREADY : OUT STD_LOGIC;
    s_axis_tcp_data_TKEEP : IN STD_LOGIC_VECTOR (63 downto 0);
    s_axis_tcp_data_TSTRB : IN STD_LOGIC_VECTOR (63 downto 0);
    s_axis_tcp_data_TLAST : IN STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of toe_top_convert_axis_to_net_axis_512_16 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_0 : BOOLEAN := false;

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal tmp_nbreadreq_fu_34_p6 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal tmp_reg_91 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal s_axis_tcp_data_TDATA_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ipRxData_internal_blk_n : STD_LOGIC;
    signal ref_tmp_data_reg_95 : STD_LOGIC_VECTOR (511 downto 0);
    signal ref_tmp_keep_reg_100 : STD_LOGIC_VECTOR (63 downto 0);
    signal ref_tmp_last_reg_105 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal tmp_s_fu_79_p4 : STD_LOGIC_VECTOR (576 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_idle_pp0_0to0 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal regslice_both_input_V_data_V_U_apdone_blk : STD_LOGIC;
    signal s_axis_tcp_data_TDATA_int_regslice : STD_LOGIC_VECTOR (511 downto 0);
    signal s_axis_tcp_data_TVALID_int_regslice : STD_LOGIC;
    signal s_axis_tcp_data_TREADY_int_regslice : STD_LOGIC;
    signal regslice_both_input_V_data_V_U_ack_in : STD_LOGIC;
    signal regslice_both_input_V_keep_V_U_apdone_blk : STD_LOGIC;
    signal s_axis_tcp_data_TKEEP_int_regslice : STD_LOGIC_VECTOR (63 downto 0);
    signal regslice_both_input_V_keep_V_U_vld_out : STD_LOGIC;
    signal regslice_both_input_V_keep_V_U_ack_in : STD_LOGIC;
    signal regslice_both_input_V_strb_V_U_apdone_blk : STD_LOGIC;
    signal s_axis_tcp_data_TSTRB_int_regslice : STD_LOGIC_VECTOR (63 downto 0);
    signal regslice_both_input_V_strb_V_U_vld_out : STD_LOGIC;
    signal regslice_both_input_V_strb_V_U_ack_in : STD_LOGIC;
    signal regslice_both_input_V_last_V_U_apdone_blk : STD_LOGIC;
    signal s_axis_tcp_data_TLAST_int_regslice : STD_LOGIC_VECTOR (0 downto 0);
    signal regslice_both_input_V_last_V_U_vld_out : STD_LOGIC;
    signal regslice_both_input_V_last_V_U_ack_in : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component toe_top_regslice_both IS
    generic (
        DataWidth : INTEGER );
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        data_in : IN STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_in : IN STD_LOGIC;
        ack_in : OUT STD_LOGIC;
        data_out : OUT STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_out : OUT STD_LOGIC;
        ack_out : IN STD_LOGIC;
        apdone_blk : OUT STD_LOGIC );
    end component;



begin
    regslice_both_input_V_data_V_U : component toe_top_regslice_both
    generic map (
        DataWidth => 512)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => s_axis_tcp_data_TDATA,
        vld_in => s_axis_tcp_data_TVALID,
        ack_in => regslice_both_input_V_data_V_U_ack_in,
        data_out => s_axis_tcp_data_TDATA_int_regslice,
        vld_out => s_axis_tcp_data_TVALID_int_regslice,
        ack_out => s_axis_tcp_data_TREADY_int_regslice,
        apdone_blk => regslice_both_input_V_data_V_U_apdone_blk);

    regslice_both_input_V_keep_V_U : component toe_top_regslice_both
    generic map (
        DataWidth => 64)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => s_axis_tcp_data_TKEEP,
        vld_in => s_axis_tcp_data_TVALID,
        ack_in => regslice_both_input_V_keep_V_U_ack_in,
        data_out => s_axis_tcp_data_TKEEP_int_regslice,
        vld_out => regslice_both_input_V_keep_V_U_vld_out,
        ack_out => s_axis_tcp_data_TREADY_int_regslice,
        apdone_blk => regslice_both_input_V_keep_V_U_apdone_blk);

    regslice_both_input_V_strb_V_U : component toe_top_regslice_both
    generic map (
        DataWidth => 64)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => s_axis_tcp_data_TSTRB,
        vld_in => s_axis_tcp_data_TVALID,
        ack_in => regslice_both_input_V_strb_V_U_ack_in,
        data_out => s_axis_tcp_data_TSTRB_int_regslice,
        vld_out => regslice_both_input_V_strb_V_U_vld_out,
        ack_out => s_axis_tcp_data_TREADY_int_regslice,
        apdone_blk => regslice_both_input_V_strb_V_U_apdone_blk);

    regslice_both_input_V_last_V_U : component toe_top_regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => s_axis_tcp_data_TLAST,
        vld_in => s_axis_tcp_data_TVALID,
        ack_in => regslice_both_input_V_last_V_U_ack_in,
        data_out => s_axis_tcp_data_TLAST_int_regslice,
        vld_out => regslice_both_input_V_last_V_U_vld_out,
        ack_out => s_axis_tcp_data_TREADY_int_regslice,
        apdone_blk => regslice_both_input_V_last_V_U_apdone_blk);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_nbreadreq_fu_34_p6 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ref_tmp_data_reg_95 <= s_axis_tcp_data_TDATA_int_regslice;
                ref_tmp_keep_reg_100 <= s_axis_tcp_data_TKEEP_int_regslice;
                ref_tmp_last_reg_105 <= s_axis_tcp_data_TLAST_int_regslice;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                tmp_reg_91 <= tmp_nbreadreq_fu_34_p6;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage0_subdone, ap_reset_idle_pp0)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, tmp_nbreadreq_fu_34_p6, ipRxData_internal_full_n, tmp_reg_91, s_axis_tcp_data_TVALID_int_regslice)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_done_reg = ap_const_logic_1) or ((tmp_reg_91 = ap_const_lv1_1) and (ipRxData_internal_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((ap_start = ap_const_logic_1) and ((ap_done_reg = ap_const_logic_1) or ((tmp_nbreadreq_fu_34_p6 = ap_const_lv1_1) and (s_axis_tcp_data_TVALID_int_regslice = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, tmp_nbreadreq_fu_34_p6, ipRxData_internal_full_n, tmp_reg_91, s_axis_tcp_data_TVALID_int_regslice)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_done_reg = ap_const_logic_1) or ((tmp_reg_91 = ap_const_lv1_1) and (ipRxData_internal_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((ap_start = ap_const_logic_1) and ((ap_done_reg = ap_const_logic_1) or ((tmp_nbreadreq_fu_34_p6 = ap_const_lv1_1) and (s_axis_tcp_data_TVALID_int_regslice = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, tmp_nbreadreq_fu_34_p6, ipRxData_internal_full_n, tmp_reg_91, s_axis_tcp_data_TVALID_int_regslice)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_done_reg = ap_const_logic_1) or ((tmp_reg_91 = ap_const_lv1_1) and (ipRxData_internal_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((ap_start = ap_const_logic_1) and ((ap_done_reg = ap_const_logic_1) or ((tmp_nbreadreq_fu_34_p6 = ap_const_lv1_1) and (s_axis_tcp_data_TVALID_int_regslice = ap_const_logic_0)))));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_done_reg, tmp_nbreadreq_fu_34_p6, s_axis_tcp_data_TVALID_int_regslice)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((ap_done_reg = ap_const_logic_1) or ((tmp_nbreadreq_fu_34_p6 = ap_const_lv1_1) and (s_axis_tcp_data_TVALID_int_regslice = ap_const_logic_0)));
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(ipRxData_internal_full_n, tmp_reg_91)
    begin
                ap_block_state2_pp0_stage0_iter1 <= ((tmp_reg_91 = ap_const_lv1_1) and (ipRxData_internal_full_n = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start;

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_idle_pp0)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_0to0_assign_proc : process(ap_enable_reg_pp0_iter0)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_0)) then 
            ap_idle_pp0_0to0 <= ap_const_logic_1;
        else 
            ap_idle_pp0_0to0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_reset_idle_pp0_assign_proc : process(ap_start, ap_idle_pp0_0to0)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_idle_pp0_0to0 = ap_const_logic_1))) then 
            ap_reset_idle_pp0 <= ap_const_logic_1;
        else 
            ap_reset_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ipRxData_internal_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ipRxData_internal_full_n, tmp_reg_91, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (tmp_reg_91 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ipRxData_internal_blk_n <= ipRxData_internal_full_n;
        else 
            ipRxData_internal_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    ipRxData_internal_din <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_s_fu_79_p4),1024));

    ipRxData_internal_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, tmp_reg_91, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_reg_91 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ipRxData_internal_write <= ap_const_logic_1;
        else 
            ipRxData_internal_write <= ap_const_logic_0;
        end if; 
    end process;


    s_axis_tcp_data_TDATA_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_pp0_stage0, tmp_nbreadreq_fu_34_p6, ap_block_pp0_stage0, s_axis_tcp_data_TVALID_int_regslice)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (tmp_nbreadreq_fu_34_p6 = ap_const_lv1_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_done_reg = ap_const_logic_0))) then 
            s_axis_tcp_data_TDATA_blk_n <= s_axis_tcp_data_TVALID_int_regslice;
        else 
            s_axis_tcp_data_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    s_axis_tcp_data_TREADY <= regslice_both_input_V_data_V_U_ack_in;

    s_axis_tcp_data_TREADY_int_regslice_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, tmp_nbreadreq_fu_34_p6, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_nbreadreq_fu_34_p6 = ap_const_lv1_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            s_axis_tcp_data_TREADY_int_regslice <= ap_const_logic_1;
        else 
            s_axis_tcp_data_TREADY_int_regslice <= ap_const_logic_0;
        end if; 
    end process;

    tmp_nbreadreq_fu_34_p6 <= (0=>(s_axis_tcp_data_TVALID_int_regslice), others=>'-');
    tmp_s_fu_79_p4 <= ((ref_tmp_last_reg_105 & ref_tmp_keep_reg_100) & ref_tmp_data_reg_95);
end behav;
