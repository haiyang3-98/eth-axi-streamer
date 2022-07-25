-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Version: 2020.2
-- Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity echo_server_application_notification_handler is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    s_axis_notifications_V_TVALID : IN STD_LOGIC;
    m_axis_read_package_V_TREADY : IN STD_LOGIC;
    esa_lengthFifo_din : OUT STD_LOGIC_VECTOR (15 downto 0);
    esa_lengthFifo_full_n : IN STD_LOGIC;
    esa_lengthFifo_write : OUT STD_LOGIC;
    s_axis_notifications_V_TDATA : IN STD_LOGIC_VECTOR (95 downto 0);
    s_axis_notifications_V_TREADY : OUT STD_LOGIC;
    m_axis_read_package_V_TDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axis_read_package_V_TVALID : OUT STD_LOGIC );
end;


architecture behav of echo_server_application_notification_handler is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal tmp_i_nbreadreq_fu_38_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal tmp_i_reg_86 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln874_reg_95 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op18_write_state2 : BOOLEAN;
    signal ap_predicate_op19_write_state2 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state2_io : BOOLEAN;
    signal tmp_i_reg_86_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln874_reg_95_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op20_write_state3 : BOOLEAN;
    signal regslice_both_m_axis_read_package_V_U_apdone_blk : STD_LOGIC;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state3_io : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal s_axis_notifications_V_TDATA_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal m_axis_read_package_V_TDATA_blk_n : STD_LOGIC;
    signal esa_lengthFifo_blk_n : STD_LOGIC;
    signal notification_length_V_fu_66_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal notification_length_V_reg_90 : STD_LOGIC_VECTOR (15 downto 0);
    signal icmp_ln874_fu_76_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln174_fu_82_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln174_reg_99 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_idle_pp0_0to1 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal regslice_both_s_axis_notifications_V_U_apdone_blk : STD_LOGIC;
    signal s_axis_notifications_V_TDATA_int_regslice : STD_LOGIC_VECTOR (95 downto 0);
    signal s_axis_notifications_V_TVALID_int_regslice : STD_LOGIC;
    signal s_axis_notifications_V_TREADY_int_regslice : STD_LOGIC;
    signal regslice_both_s_axis_notifications_V_U_ack_in : STD_LOGIC;
    signal m_axis_read_package_V_TVALID_int_regslice : STD_LOGIC;
    signal m_axis_read_package_V_TREADY_int_regslice : STD_LOGIC;
    signal regslice_both_m_axis_read_package_V_U_vld_out : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component echo_server_application_regslice_both IS
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
    regslice_both_s_axis_notifications_V_U : component echo_server_application_regslice_both
    generic map (
        DataWidth => 96)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => s_axis_notifications_V_TDATA,
        vld_in => s_axis_notifications_V_TVALID,
        ack_in => regslice_both_s_axis_notifications_V_U_ack_in,
        data_out => s_axis_notifications_V_TDATA_int_regslice,
        vld_out => s_axis_notifications_V_TVALID_int_regslice,
        ack_out => s_axis_notifications_V_TREADY_int_regslice,
        apdone_blk => regslice_both_s_axis_notifications_V_U_apdone_blk);

    regslice_both_m_axis_read_package_V_U : component echo_server_application_regslice_both
    generic map (
        DataWidth => 32)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => trunc_ln174_reg_99,
        vld_in => m_axis_read_package_V_TVALID_int_regslice,
        ack_in => m_axis_read_package_V_TREADY_int_regslice,
        data_out => m_axis_read_package_V_TDATA,
        vld_out => regslice_both_m_axis_read_package_V_U_vld_out,
        ack_out => m_axis_read_package_V_TREADY,
        apdone_blk => regslice_both_m_axis_read_package_V_U_apdone_blk);





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
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
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


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_i_nbreadreq_fu_38_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln874_reg_95 <= icmp_ln874_fu_76_p2;
                notification_length_V_reg_90 <= s_axis_notifications_V_TDATA_int_regslice(31 downto 16);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln874_reg_95_pp0_iter1_reg <= icmp_ln874_reg_95;
                tmp_i_reg_86 <= tmp_i_nbreadreq_fu_38_p3;
                tmp_i_reg_86_pp0_iter1_reg <= tmp_i_reg_86;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_i_nbreadreq_fu_38_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln874_fu_76_p2 = ap_const_lv1_0))) then
                trunc_ln174_reg_99 <= trunc_ln174_fu_82_p1;
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

    ap_block_pp0_stage0_01001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, tmp_i_nbreadreq_fu_38_p3, ap_predicate_op18_write_state2, esa_lengthFifo_full_n, ap_predicate_op19_write_state2, ap_predicate_op20_write_state3, regslice_both_m_axis_read_package_V_U_apdone_blk, s_axis_notifications_V_TVALID_int_regslice, m_axis_read_package_V_TREADY_int_regslice)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and ((regslice_both_m_axis_read_package_V_U_apdone_blk = ap_const_logic_1) or ((ap_predicate_op20_write_state3 = ap_const_boolean_1) and (m_axis_read_package_V_TREADY_int_regslice = ap_const_logic_0)))) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((ap_predicate_op19_write_state2 = ap_const_boolean_1) and (esa_lengthFifo_full_n = ap_const_logic_0)) or ((ap_predicate_op18_write_state2 = ap_const_boolean_1) and (m_axis_read_package_V_TREADY_int_regslice = ap_const_logic_0)))) or ((ap_start = ap_const_logic_1) and ((ap_done_reg = ap_const_logic_1) or ((tmp_i_nbreadreq_fu_38_p3 = ap_const_lv1_1) and (s_axis_notifications_V_TVALID_int_regslice = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, tmp_i_nbreadreq_fu_38_p3, ap_predicate_op18_write_state2, esa_lengthFifo_full_n, ap_predicate_op19_write_state2, ap_block_state2_io, ap_predicate_op20_write_state3, regslice_both_m_axis_read_package_V_U_apdone_blk, ap_block_state3_io, s_axis_notifications_V_TVALID_int_regslice, m_axis_read_package_V_TREADY_int_regslice)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and ((regslice_both_m_axis_read_package_V_U_apdone_blk = ap_const_logic_1) or (ap_const_boolean_1 = ap_block_state3_io) or ((ap_predicate_op20_write_state3 = ap_const_boolean_1) and (m_axis_read_package_V_TREADY_int_regslice = ap_const_logic_0)))) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((ap_const_boolean_1 = ap_block_state2_io) or ((ap_predicate_op19_write_state2 = ap_const_boolean_1) and (esa_lengthFifo_full_n = ap_const_logic_0)) or ((ap_predicate_op18_write_state2 = ap_const_boolean_1) and (m_axis_read_package_V_TREADY_int_regslice = ap_const_logic_0)))) or ((ap_start = ap_const_logic_1) and ((ap_done_reg = ap_const_logic_1) or ((tmp_i_nbreadreq_fu_38_p3 = ap_const_lv1_1) and (s_axis_notifications_V_TVALID_int_regslice = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, tmp_i_nbreadreq_fu_38_p3, ap_predicate_op18_write_state2, esa_lengthFifo_full_n, ap_predicate_op19_write_state2, ap_block_state2_io, ap_predicate_op20_write_state3, regslice_both_m_axis_read_package_V_U_apdone_blk, ap_block_state3_io, s_axis_notifications_V_TVALID_int_regslice, m_axis_read_package_V_TREADY_int_regslice)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and ((regslice_both_m_axis_read_package_V_U_apdone_blk = ap_const_logic_1) or (ap_const_boolean_1 = ap_block_state3_io) or ((ap_predicate_op20_write_state3 = ap_const_boolean_1) and (m_axis_read_package_V_TREADY_int_regslice = ap_const_logic_0)))) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((ap_const_boolean_1 = ap_block_state2_io) or ((ap_predicate_op19_write_state2 = ap_const_boolean_1) and (esa_lengthFifo_full_n = ap_const_logic_0)) or ((ap_predicate_op18_write_state2 = ap_const_boolean_1) and (m_axis_read_package_V_TREADY_int_regslice = ap_const_logic_0)))) or ((ap_start = ap_const_logic_1) and ((ap_done_reg = ap_const_logic_1) or ((tmp_i_nbreadreq_fu_38_p3 = ap_const_lv1_1) and (s_axis_notifications_V_TVALID_int_regslice = ap_const_logic_0)))));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_done_reg, tmp_i_nbreadreq_fu_38_p3, s_axis_notifications_V_TVALID_int_regslice)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((ap_done_reg = ap_const_logic_1) or ((tmp_i_nbreadreq_fu_38_p3 = ap_const_lv1_1) and (s_axis_notifications_V_TVALID_int_regslice = ap_const_logic_0)));
    end process;


    ap_block_state2_io_assign_proc : process(ap_predicate_op18_write_state2, m_axis_read_package_V_TREADY_int_regslice)
    begin
                ap_block_state2_io <= ((ap_predicate_op18_write_state2 = ap_const_boolean_1) and (m_axis_read_package_V_TREADY_int_regslice = ap_const_logic_0));
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(ap_predicate_op18_write_state2, esa_lengthFifo_full_n, ap_predicate_op19_write_state2, m_axis_read_package_V_TREADY_int_regslice)
    begin
                ap_block_state2_pp0_stage0_iter1 <= (((ap_predicate_op19_write_state2 = ap_const_boolean_1) and (esa_lengthFifo_full_n = ap_const_logic_0)) or ((ap_predicate_op18_write_state2 = ap_const_boolean_1) and (m_axis_read_package_V_TREADY_int_regslice = ap_const_logic_0)));
    end process;


    ap_block_state3_io_assign_proc : process(ap_predicate_op20_write_state3, m_axis_read_package_V_TREADY_int_regslice)
    begin
                ap_block_state3_io <= ((ap_predicate_op20_write_state3 = ap_const_boolean_1) and (m_axis_read_package_V_TREADY_int_regslice = ap_const_logic_0));
    end process;


    ap_block_state3_pp0_stage0_iter2_assign_proc : process(ap_predicate_op20_write_state3, regslice_both_m_axis_read_package_V_U_apdone_blk, m_axis_read_package_V_TREADY_int_regslice)
    begin
                ap_block_state3_pp0_stage0_iter2 <= ((regslice_both_m_axis_read_package_V_U_apdone_blk = ap_const_logic_1) or ((ap_predicate_op20_write_state3 = ap_const_boolean_1) and (m_axis_read_package_V_TREADY_int_regslice = ap_const_logic_0)));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
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


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_0to1_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0_0to1 <= ap_const_logic_1;
        else 
            ap_idle_pp0_0to1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_predicate_op18_write_state2_assign_proc : process(tmp_i_reg_86, icmp_ln874_reg_95)
    begin
                ap_predicate_op18_write_state2 <= ((icmp_ln874_reg_95 = ap_const_lv1_0) and (tmp_i_reg_86 = ap_const_lv1_1));
    end process;


    ap_predicate_op19_write_state2_assign_proc : process(tmp_i_reg_86, icmp_ln874_reg_95)
    begin
                ap_predicate_op19_write_state2 <= ((icmp_ln874_reg_95 = ap_const_lv1_0) and (tmp_i_reg_86 = ap_const_lv1_1));
    end process;


    ap_predicate_op20_write_state3_assign_proc : process(tmp_i_reg_86_pp0_iter1_reg, icmp_ln874_reg_95_pp0_iter1_reg)
    begin
                ap_predicate_op20_write_state3 <= ((icmp_ln874_reg_95_pp0_iter1_reg = ap_const_lv1_0) and (tmp_i_reg_86_pp0_iter1_reg = ap_const_lv1_1));
    end process;


    ap_ready_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_reset_idle_pp0_assign_proc : process(ap_start, ap_idle_pp0_0to1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_idle_pp0_0to1 = ap_const_logic_1))) then 
            ap_reset_idle_pp0 <= ap_const_logic_1;
        else 
            ap_reset_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    esa_lengthFifo_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, esa_lengthFifo_full_n, ap_predicate_op19_write_state2, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_predicate_op19_write_state2 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            esa_lengthFifo_blk_n <= esa_lengthFifo_full_n;
        else 
            esa_lengthFifo_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    esa_lengthFifo_din <= notification_length_V_reg_90;

    esa_lengthFifo_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_predicate_op19_write_state2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op19_write_state2 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            esa_lengthFifo_write <= ap_const_logic_1;
        else 
            esa_lengthFifo_write <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln874_fu_76_p2 <= "1" when (notification_length_V_fu_66_p4 = ap_const_lv16_0) else "0";

    m_axis_read_package_V_TDATA_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_predicate_op18_write_state2, ap_predicate_op20_write_state3, ap_block_pp0_stage0, m_axis_read_package_V_TREADY_int_regslice)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_predicate_op20_write_state3 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_predicate_op18_write_state2 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            m_axis_read_package_V_TDATA_blk_n <= m_axis_read_package_V_TREADY_int_regslice;
        else 
            m_axis_read_package_V_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    m_axis_read_package_V_TVALID <= regslice_both_m_axis_read_package_V_U_vld_out;

    m_axis_read_package_V_TVALID_int_regslice_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_predicate_op18_write_state2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op18_write_state2 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            m_axis_read_package_V_TVALID_int_regslice <= ap_const_logic_1;
        else 
            m_axis_read_package_V_TVALID_int_regslice <= ap_const_logic_0;
        end if; 
    end process;

    notification_length_V_fu_66_p4 <= s_axis_notifications_V_TDATA_int_regslice(31 downto 16);

    s_axis_notifications_V_TDATA_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_pp0_stage0, tmp_i_nbreadreq_fu_38_p3, ap_block_pp0_stage0, s_axis_notifications_V_TVALID_int_regslice)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (tmp_i_nbreadreq_fu_38_p3 = ap_const_lv1_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_done_reg = ap_const_logic_0))) then 
            s_axis_notifications_V_TDATA_blk_n <= s_axis_notifications_V_TVALID_int_regslice;
        else 
            s_axis_notifications_V_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    s_axis_notifications_V_TREADY <= regslice_both_s_axis_notifications_V_U_ack_in;

    s_axis_notifications_V_TREADY_int_regslice_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, tmp_i_nbreadreq_fu_38_p3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_i_nbreadreq_fu_38_p3 = ap_const_lv1_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            s_axis_notifications_V_TREADY_int_regslice <= ap_const_logic_1;
        else 
            s_axis_notifications_V_TREADY_int_regslice <= ap_const_logic_0;
        end if; 
    end process;

    tmp_i_nbreadreq_fu_38_p3 <= (0=>(s_axis_notifications_V_TVALID_int_regslice), others=>'-');
    trunc_ln174_fu_82_p1 <= s_axis_notifications_V_TDATA_int_regslice(32 - 1 downto 0);
end behav;
