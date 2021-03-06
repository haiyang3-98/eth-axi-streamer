-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Version: 2020.2
-- Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity echo_server_application_client is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    esa_sessionidFifo_dout : IN STD_LOGIC_VECTOR (15 downto 0);
    esa_sessionidFifo_empty_n : IN STD_LOGIC;
    esa_sessionidFifo_read : OUT STD_LOGIC;
    esa_lengthFifo_dout : IN STD_LOGIC_VECTOR (15 downto 0);
    esa_lengthFifo_empty_n : IN STD_LOGIC;
    esa_lengthFifo_read : OUT STD_LOGIC;
    m_axis_tx_metadata_V_TREADY : IN STD_LOGIC;
    esa_dataFifo_dout : IN STD_LOGIC_VECTOR (1023 downto 0);
    esa_dataFifo_empty_n : IN STD_LOGIC;
    esa_dataFifo_read : OUT STD_LOGIC;
    m_axis_tx_data_V_TREADY : IN STD_LOGIC;
    m_axis_tx_metadata_V_TDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axis_tx_metadata_V_TVALID : OUT STD_LOGIC;
    m_axis_tx_data_V_TDATA : OUT STD_LOGIC_VECTOR (1023 downto 0);
    m_axis_tx_data_V_TVALID : OUT STD_LOGIC );
end;


architecture behav of echo_server_application_client is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_240 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000001001000000";

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal esac_fsmState_V_load_reg_160 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_4_i_reg_164 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_6_i_reg_168 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_nbwritereq_fu_70_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op31_read_state2 : BOOLEAN;
    signal ap_predicate_op32_read_state2 : BOOLEAN;
    signal ap_predicate_op34_write_state2 : BOOLEAN;
    signal tmp_i_reg_172 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_nbwritereq_fu_86_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op39_read_state2 : BOOLEAN;
    signal ap_predicate_op41_write_state2 : BOOLEAN;
    signal ap_block_state2_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_state2_io : BOOLEAN;
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal esac_fsmState_V : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal m_axis_tx_metadata_V_TDATA_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal tmp_7_i_reg_176 : STD_LOGIC_VECTOR (0 downto 0);
    signal m_axis_tx_data_V_TDATA_blk_n : STD_LOGIC;
    signal tmp_5_i_reg_185 : STD_LOGIC_VECTOR (0 downto 0);
    signal esa_sessionidFifo_blk_n : STD_LOGIC;
    signal esa_lengthFifo_blk_n : STD_LOGIC;
    signal esa_dataFifo_blk_n : STD_LOGIC;
    signal esac_fsmState_V_load_load_fu_127_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_predicate_op45_write_state3 : BOOLEAN;
    signal ap_predicate_op46_write_state3 : BOOLEAN;
    signal regslice_both_m_axis_tx_metadata_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_m_axis_tx_data_V_U_apdone_blk : STD_LOGIC;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_io : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal tmp_4_i_nbreadreq_fu_54_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_6_i_nbreadreq_fu_62_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_i_nbreadreq_fu_78_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal currWord_last_V_fu_146_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage1_01001 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_idle_pp0_0to0 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_idle_pp0_1to1 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal m_axis_tx_metadata_V_TDATA_int_regslice : STD_LOGIC_VECTOR (31 downto 0);
    signal m_axis_tx_metadata_V_TVALID_int_regslice : STD_LOGIC;
    signal m_axis_tx_metadata_V_TREADY_int_regslice : STD_LOGIC;
    signal regslice_both_m_axis_tx_metadata_V_U_vld_out : STD_LOGIC;
    signal m_axis_tx_data_V_TVALID_int_regslice : STD_LOGIC;
    signal m_axis_tx_data_V_TREADY_int_regslice : STD_LOGIC;
    signal regslice_both_m_axis_tx_data_V_U_vld_out : STD_LOGIC;
    signal ap_condition_56 : BOOLEAN;
    signal ap_condition_203 : BOOLEAN;
    signal ap_condition_109 : BOOLEAN;
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
    regslice_both_m_axis_tx_metadata_V_U : component echo_server_application_regslice_both
    generic map (
        DataWidth => 32)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => m_axis_tx_metadata_V_TDATA_int_regslice,
        vld_in => m_axis_tx_metadata_V_TVALID_int_regslice,
        ack_in => m_axis_tx_metadata_V_TREADY_int_regslice,
        data_out => m_axis_tx_metadata_V_TDATA,
        vld_out => regslice_both_m_axis_tx_metadata_V_U_vld_out,
        ack_out => m_axis_tx_metadata_V_TREADY,
        apdone_blk => regslice_both_m_axis_tx_metadata_V_U_apdone_blk);

    regslice_both_m_axis_tx_data_V_U : component echo_server_application_regslice_both
    generic map (
        DataWidth => 1024)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => esa_dataFifo_dout,
        vld_in => m_axis_tx_data_V_TVALID_int_regslice,
        ack_in => m_axis_tx_data_V_TREADY_int_regslice,
        data_out => m_axis_tx_data_V_TDATA,
        vld_out => regslice_both_m_axis_tx_data_V_U_vld_out,
        ack_out => m_axis_tx_data_V_TREADY,
        apdone_blk => regslice_both_m_axis_tx_data_V_U_apdone_blk);





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
                elsif (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
                    ap_enable_reg_pp0_iter0_reg <= ap_start;
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
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    esac_fsmState_V_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_109)) then
                if ((ap_const_boolean_1 = ap_condition_203)) then 
                    esac_fsmState_V <= ap_const_lv1_0;
                elsif ((ap_const_boolean_1 = ap_condition_56)) then 
                    esac_fsmState_V <= ap_const_lv1_1;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                esac_fsmState_V_load_reg_160 <= esac_fsmState_V;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (esac_fsmState_V_load_load_fu_127_p1 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_4_i_reg_164 <= tmp_4_i_nbreadreq_fu_54_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_i_reg_172 = ap_const_lv1_1) and (esac_fsmState_V_load_reg_160 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then
                tmp_5_i_reg_185 <= (0=>m_axis_tx_data_V_TREADY_int_regslice, others=>'-');
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (tmp_4_i_nbreadreq_fu_54_p3 = ap_const_lv1_1) and (esac_fsmState_V_load_load_fu_127_p1 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_6_i_reg_168 <= tmp_6_i_nbreadreq_fu_62_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_6_i_reg_168 = ap_const_lv1_1) and (tmp_4_i_reg_164 = ap_const_lv1_1) and (esac_fsmState_V_load_reg_160 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then
                tmp_7_i_reg_176 <= (0=>m_axis_tx_metadata_V_TREADY_int_regslice, others=>'-');
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (esac_fsmState_V_load_load_fu_127_p1 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_i_reg_172 <= tmp_i_nbreadreq_fu_78_p3;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_block_pp0_stage0_subdone, ap_block_pp0_stage1_subdone, ap_reset_idle_pp0, ap_idle_pp0_1to1)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_start = ap_const_logic_0) and (ap_idle_pp0_1to1 = ap_const_logic_1))) and (ap_reset_idle_pp0 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                elsif (((ap_reset_idle_pp0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage1_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(1);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_11001_assign_proc : process(ap_done_reg, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_predicate_op45_write_state3, ap_predicate_op46_write_state3, regslice_both_m_axis_tx_metadata_V_U_apdone_blk, regslice_both_m_axis_tx_data_V_U_apdone_blk, ap_block_state3_io, m_axis_tx_metadata_V_TREADY_int_regslice, m_axis_tx_data_V_TREADY_int_regslice)
    begin
                ap_block_pp0_stage0_11001 <= (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_done_reg = ap_const_logic_1)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((ap_const_boolean_1 = ap_block_state3_io) or (regslice_both_m_axis_tx_data_V_U_apdone_blk = ap_const_logic_1) or (regslice_both_m_axis_tx_metadata_V_U_apdone_blk = ap_const_logic_1) or ((m_axis_tx_data_V_TREADY_int_regslice = ap_const_logic_0) and (ap_predicate_op46_write_state3 = ap_const_boolean_1)) or ((m_axis_tx_metadata_V_TREADY_int_regslice = ap_const_logic_0) and (ap_predicate_op45_write_state3 = ap_const_boolean_1)))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_done_reg, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_predicate_op45_write_state3, ap_predicate_op46_write_state3, regslice_both_m_axis_tx_metadata_V_U_apdone_blk, regslice_both_m_axis_tx_data_V_U_apdone_blk, ap_block_state3_io, m_axis_tx_metadata_V_TREADY_int_regslice, m_axis_tx_data_V_TREADY_int_regslice)
    begin
                ap_block_pp0_stage0_subdone <= (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_done_reg = ap_const_logic_1)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((ap_const_boolean_1 = ap_block_state3_io) or (regslice_both_m_axis_tx_data_V_U_apdone_blk = ap_const_logic_1) or (regslice_both_m_axis_tx_metadata_V_U_apdone_blk = ap_const_logic_1) or ((m_axis_tx_data_V_TREADY_int_regslice = ap_const_logic_0) and (ap_predicate_op46_write_state3 = ap_const_boolean_1)) or ((m_axis_tx_metadata_V_TREADY_int_regslice = ap_const_logic_0) and (ap_predicate_op45_write_state3 = ap_const_boolean_1)))));
    end process;

        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage1_01001_assign_proc : process(ap_done_reg, ap_enable_reg_pp0_iter0, esa_sessionidFifo_empty_n, ap_predicate_op31_read_state2, esa_lengthFifo_empty_n, ap_predicate_op32_read_state2, ap_predicate_op34_write_state2, esa_dataFifo_empty_n, ap_predicate_op39_read_state2, ap_predicate_op41_write_state2, m_axis_tx_metadata_V_TREADY_int_regslice, m_axis_tx_data_V_TREADY_int_regslice)
    begin
                ap_block_pp0_stage1_01001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (((ap_predicate_op41_write_state2 = ap_const_boolean_1) and (m_axis_tx_data_V_TREADY_int_regslice = ap_const_logic_0)) or ((ap_predicate_op39_read_state2 = ap_const_boolean_1) and (esa_dataFifo_empty_n = ap_const_logic_0)) or ((ap_predicate_op34_write_state2 = ap_const_boolean_1) and (m_axis_tx_metadata_V_TREADY_int_regslice = ap_const_logic_0)) or ((ap_predicate_op32_read_state2 = ap_const_boolean_1) and (esa_lengthFifo_empty_n = ap_const_logic_0)) or ((ap_predicate_op31_read_state2 = ap_const_boolean_1) and (esa_sessionidFifo_empty_n = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage1_11001_assign_proc : process(ap_done_reg, ap_enable_reg_pp0_iter0, esa_sessionidFifo_empty_n, ap_predicate_op31_read_state2, esa_lengthFifo_empty_n, ap_predicate_op32_read_state2, ap_predicate_op34_write_state2, esa_dataFifo_empty_n, ap_predicate_op39_read_state2, ap_predicate_op41_write_state2, ap_block_state2_io, m_axis_tx_metadata_V_TREADY_int_regslice, m_axis_tx_data_V_TREADY_int_regslice)
    begin
                ap_block_pp0_stage1_11001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and ((ap_const_boolean_1 = ap_block_state2_io) or ((ap_predicate_op41_write_state2 = ap_const_boolean_1) and (m_axis_tx_data_V_TREADY_int_regslice = ap_const_logic_0)) or ((ap_predicate_op39_read_state2 = ap_const_boolean_1) and (esa_dataFifo_empty_n = ap_const_logic_0)) or ((ap_predicate_op34_write_state2 = ap_const_boolean_1) and (m_axis_tx_metadata_V_TREADY_int_regslice = ap_const_logic_0)) or ((ap_predicate_op32_read_state2 = ap_const_boolean_1) and (esa_lengthFifo_empty_n = ap_const_logic_0)) or ((ap_predicate_op31_read_state2 = ap_const_boolean_1) and (esa_sessionidFifo_empty_n = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage1_subdone_assign_proc : process(ap_done_reg, ap_enable_reg_pp0_iter0, esa_sessionidFifo_empty_n, ap_predicate_op31_read_state2, esa_lengthFifo_empty_n, ap_predicate_op32_read_state2, ap_predicate_op34_write_state2, esa_dataFifo_empty_n, ap_predicate_op39_read_state2, ap_predicate_op41_write_state2, ap_block_state2_io, m_axis_tx_metadata_V_TREADY_int_regslice, m_axis_tx_data_V_TREADY_int_regslice)
    begin
                ap_block_pp0_stage1_subdone <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and ((ap_const_boolean_1 = ap_block_state2_io) or ((ap_predicate_op41_write_state2 = ap_const_boolean_1) and (m_axis_tx_data_V_TREADY_int_regslice = ap_const_logic_0)) or ((ap_predicate_op39_read_state2 = ap_const_boolean_1) and (esa_dataFifo_empty_n = ap_const_logic_0)) or ((ap_predicate_op34_write_state2 = ap_const_boolean_1) and (m_axis_tx_metadata_V_TREADY_int_regslice = ap_const_logic_0)) or ((ap_predicate_op32_read_state2 = ap_const_boolean_1) and (esa_lengthFifo_empty_n = ap_const_logic_0)) or ((ap_predicate_op31_read_state2 = ap_const_boolean_1) and (esa_sessionidFifo_empty_n = ap_const_logic_0)))));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_done_reg)
    begin
                ap_block_state1_pp0_stage0_iter0 <= (ap_done_reg = ap_const_logic_1);
    end process;


    ap_block_state2_io_assign_proc : process(ap_predicate_op34_write_state2, ap_predicate_op41_write_state2, m_axis_tx_metadata_V_TREADY_int_regslice, m_axis_tx_data_V_TREADY_int_regslice)
    begin
                ap_block_state2_io <= (((ap_predicate_op41_write_state2 = ap_const_boolean_1) and (m_axis_tx_data_V_TREADY_int_regslice = ap_const_logic_0)) or ((ap_predicate_op34_write_state2 = ap_const_boolean_1) and (m_axis_tx_metadata_V_TREADY_int_regslice = ap_const_logic_0)));
    end process;


    ap_block_state2_pp0_stage1_iter0_assign_proc : process(esa_sessionidFifo_empty_n, ap_predicate_op31_read_state2, esa_lengthFifo_empty_n, ap_predicate_op32_read_state2, ap_predicate_op34_write_state2, esa_dataFifo_empty_n, ap_predicate_op39_read_state2, ap_predicate_op41_write_state2, m_axis_tx_metadata_V_TREADY_int_regslice, m_axis_tx_data_V_TREADY_int_regslice)
    begin
                ap_block_state2_pp0_stage1_iter0 <= (((ap_predicate_op41_write_state2 = ap_const_boolean_1) and (m_axis_tx_data_V_TREADY_int_regslice = ap_const_logic_0)) or ((ap_predicate_op39_read_state2 = ap_const_boolean_1) and (esa_dataFifo_empty_n = ap_const_logic_0)) or ((ap_predicate_op34_write_state2 = ap_const_boolean_1) and (m_axis_tx_metadata_V_TREADY_int_regslice = ap_const_logic_0)) or ((ap_predicate_op32_read_state2 = ap_const_boolean_1) and (esa_lengthFifo_empty_n = ap_const_logic_0)) or ((ap_predicate_op31_read_state2 = ap_const_boolean_1) and (esa_sessionidFifo_empty_n = ap_const_logic_0)));
    end process;


    ap_block_state3_io_assign_proc : process(ap_predicate_op45_write_state3, ap_predicate_op46_write_state3, m_axis_tx_metadata_V_TREADY_int_regslice, m_axis_tx_data_V_TREADY_int_regslice)
    begin
                ap_block_state3_io <= (((m_axis_tx_data_V_TREADY_int_regslice = ap_const_logic_0) and (ap_predicate_op46_write_state3 = ap_const_boolean_1)) or ((m_axis_tx_metadata_V_TREADY_int_regslice = ap_const_logic_0) and (ap_predicate_op45_write_state3 = ap_const_boolean_1)));
    end process;


    ap_block_state3_pp0_stage0_iter1_assign_proc : process(ap_predicate_op45_write_state3, ap_predicate_op46_write_state3, regslice_both_m_axis_tx_metadata_V_U_apdone_blk, regslice_both_m_axis_tx_data_V_U_apdone_blk, m_axis_tx_metadata_V_TREADY_int_regslice, m_axis_tx_data_V_TREADY_int_regslice)
    begin
                ap_block_state3_pp0_stage0_iter1 <= ((regslice_both_m_axis_tx_data_V_U_apdone_blk = ap_const_logic_1) or (regslice_both_m_axis_tx_metadata_V_U_apdone_blk = ap_const_logic_1) or ((m_axis_tx_data_V_TREADY_int_regslice = ap_const_logic_0) and (ap_predicate_op46_write_state3 = ap_const_boolean_1)) or ((m_axis_tx_metadata_V_TREADY_int_regslice = ap_const_logic_0) and (ap_predicate_op45_write_state3 = ap_const_boolean_1)));
    end process;


    ap_condition_109_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001)
    begin
                ap_condition_109 <= ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001));
    end process;


    ap_condition_203_assign_proc : process(esac_fsmState_V_load_reg_160, tmp_i_reg_172, grp_nbwritereq_fu_86_p3, currWord_last_V_fu_146_p3)
    begin
                ap_condition_203 <= ((grp_nbwritereq_fu_86_p3 = ap_const_lv1_1) and (tmp_i_reg_172 = ap_const_lv1_1) and (esac_fsmState_V_load_reg_160 = ap_const_lv1_1) and (currWord_last_V_fu_146_p3 = ap_const_lv1_1));
    end process;


    ap_condition_56_assign_proc : process(esac_fsmState_V_load_reg_160, tmp_4_i_reg_164, tmp_6_i_reg_168, grp_nbwritereq_fu_70_p3)
    begin
                ap_condition_56 <= ((grp_nbwritereq_fu_70_p3 = ap_const_lv1_1) and (tmp_6_i_reg_168 = ap_const_lv1_1) and (tmp_4_i_reg_164 = ap_const_lv1_1) and (esac_fsmState_V_load_reg_160 = ap_const_lv1_0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_enable_reg_pp0_iter0_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0_reg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
            ap_enable_reg_pp0_iter0 <= ap_start;
        else 
            ap_enable_reg_pp0_iter0 <= ap_enable_reg_pp0_iter0_reg;
        end if; 
    end process;


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


    ap_idle_pp0_1to1_assign_proc : process(ap_enable_reg_pp0_iter1)
    begin
        if ((ap_enable_reg_pp0_iter1 = ap_const_logic_0)) then 
            ap_idle_pp0_1to1 <= ap_const_logic_1;
        else 
            ap_idle_pp0_1to1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_predicate_op31_read_state2_assign_proc : process(esac_fsmState_V_load_reg_160, tmp_4_i_reg_164, tmp_6_i_reg_168, grp_nbwritereq_fu_70_p3)
    begin
                ap_predicate_op31_read_state2 <= ((grp_nbwritereq_fu_70_p3 = ap_const_lv1_1) and (tmp_6_i_reg_168 = ap_const_lv1_1) and (tmp_4_i_reg_164 = ap_const_lv1_1) and (esac_fsmState_V_load_reg_160 = ap_const_lv1_0));
    end process;


    ap_predicate_op32_read_state2_assign_proc : process(esac_fsmState_V_load_reg_160, tmp_4_i_reg_164, tmp_6_i_reg_168, grp_nbwritereq_fu_70_p3)
    begin
                ap_predicate_op32_read_state2 <= ((grp_nbwritereq_fu_70_p3 = ap_const_lv1_1) and (tmp_6_i_reg_168 = ap_const_lv1_1) and (tmp_4_i_reg_164 = ap_const_lv1_1) and (esac_fsmState_V_load_reg_160 = ap_const_lv1_0));
    end process;


    ap_predicate_op34_write_state2_assign_proc : process(esac_fsmState_V_load_reg_160, tmp_4_i_reg_164, tmp_6_i_reg_168, grp_nbwritereq_fu_70_p3)
    begin
                ap_predicate_op34_write_state2 <= ((grp_nbwritereq_fu_70_p3 = ap_const_lv1_1) and (tmp_6_i_reg_168 = ap_const_lv1_1) and (tmp_4_i_reg_164 = ap_const_lv1_1) and (esac_fsmState_V_load_reg_160 = ap_const_lv1_0));
    end process;


    ap_predicate_op39_read_state2_assign_proc : process(esac_fsmState_V_load_reg_160, tmp_i_reg_172, grp_nbwritereq_fu_86_p3)
    begin
                ap_predicate_op39_read_state2 <= ((grp_nbwritereq_fu_86_p3 = ap_const_lv1_1) and (tmp_i_reg_172 = ap_const_lv1_1) and (esac_fsmState_V_load_reg_160 = ap_const_lv1_1));
    end process;


    ap_predicate_op41_write_state2_assign_proc : process(esac_fsmState_V_load_reg_160, tmp_i_reg_172, grp_nbwritereq_fu_86_p3)
    begin
                ap_predicate_op41_write_state2 <= ((grp_nbwritereq_fu_86_p3 = ap_const_lv1_1) and (tmp_i_reg_172 = ap_const_lv1_1) and (esac_fsmState_V_load_reg_160 = ap_const_lv1_1));
    end process;


    ap_predicate_op45_write_state3_assign_proc : process(esac_fsmState_V_load_reg_160, tmp_4_i_reg_164, tmp_6_i_reg_168, tmp_7_i_reg_176)
    begin
                ap_predicate_op45_write_state3 <= ((tmp_6_i_reg_168 = ap_const_lv1_1) and (tmp_4_i_reg_164 = ap_const_lv1_1) and (esac_fsmState_V_load_reg_160 = ap_const_lv1_0) and (tmp_7_i_reg_176 = ap_const_lv1_1));
    end process;


    ap_predicate_op46_write_state3_assign_proc : process(esac_fsmState_V_load_reg_160, tmp_i_reg_172, tmp_5_i_reg_185)
    begin
                ap_predicate_op46_write_state3 <= ((tmp_i_reg_172 = ap_const_lv1_1) and (esac_fsmState_V_load_reg_160 = ap_const_lv1_1) and (tmp_5_i_reg_185 = ap_const_lv1_1));
    end process;


    ap_ready_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then 
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

    currWord_last_V_fu_146_p3 <= esa_dataFifo_dout(576 downto 576);

    esa_dataFifo_blk_n_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, esa_dataFifo_empty_n, ap_predicate_op39_read_state2, ap_block_pp0_stage1)
    begin
        if (((ap_predicate_op39_read_state2 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1))) then 
            esa_dataFifo_blk_n <= esa_dataFifo_empty_n;
        else 
            esa_dataFifo_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    esa_dataFifo_read_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_predicate_op39_read_state2, ap_block_pp0_stage1_11001)
    begin
        if (((ap_predicate_op39_read_state2 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then 
            esa_dataFifo_read <= ap_const_logic_1;
        else 
            esa_dataFifo_read <= ap_const_logic_0;
        end if; 
    end process;


    esa_lengthFifo_blk_n_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, esa_lengthFifo_empty_n, ap_predicate_op32_read_state2, ap_block_pp0_stage1)
    begin
        if (((ap_predicate_op32_read_state2 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1))) then 
            esa_lengthFifo_blk_n <= esa_lengthFifo_empty_n;
        else 
            esa_lengthFifo_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    esa_lengthFifo_read_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_predicate_op32_read_state2, ap_block_pp0_stage1_11001)
    begin
        if (((ap_predicate_op32_read_state2 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then 
            esa_lengthFifo_read <= ap_const_logic_1;
        else 
            esa_lengthFifo_read <= ap_const_logic_0;
        end if; 
    end process;


    esa_sessionidFifo_blk_n_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, esa_sessionidFifo_empty_n, ap_predicate_op31_read_state2, ap_block_pp0_stage1)
    begin
        if (((ap_predicate_op31_read_state2 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1))) then 
            esa_sessionidFifo_blk_n <= esa_sessionidFifo_empty_n;
        else 
            esa_sessionidFifo_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    esa_sessionidFifo_read_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_predicate_op31_read_state2, ap_block_pp0_stage1_11001)
    begin
        if (((ap_predicate_op31_read_state2 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then 
            esa_sessionidFifo_read <= ap_const_logic_1;
        else 
            esa_sessionidFifo_read <= ap_const_logic_0;
        end if; 
    end process;

    esac_fsmState_V_load_load_fu_127_p1 <= esac_fsmState_V;
    grp_nbwritereq_fu_70_p3 <= (0=>m_axis_tx_metadata_V_TREADY_int_regslice, others=>'-');
    grp_nbwritereq_fu_86_p3 <= (0=>m_axis_tx_data_V_TREADY_int_regslice, others=>'-');

    m_axis_tx_data_V_TDATA_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, esac_fsmState_V_load_reg_160, tmp_i_reg_172, ap_predicate_op41_write_state2, ap_block_pp0_stage1, ap_block_pp0_stage0, tmp_5_i_reg_185, m_axis_tx_data_V_TREADY_int_regslice)
    begin
        if ((((ap_predicate_op41_write_state2 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1)) or ((tmp_i_reg_172 = ap_const_lv1_1) and (esac_fsmState_V_load_reg_160 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (tmp_5_i_reg_185 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)))) then 
            m_axis_tx_data_V_TDATA_blk_n <= m_axis_tx_data_V_TREADY_int_regslice;
        else 
            m_axis_tx_data_V_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    m_axis_tx_data_V_TVALID <= regslice_both_m_axis_tx_data_V_U_vld_out;

    m_axis_tx_data_V_TVALID_int_regslice_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_predicate_op41_write_state2, ap_block_pp0_stage1_11001)
    begin
        if (((ap_predicate_op41_write_state2 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then 
            m_axis_tx_data_V_TVALID_int_regslice <= ap_const_logic_1;
        else 
            m_axis_tx_data_V_TVALID_int_regslice <= ap_const_logic_0;
        end if; 
    end process;


    m_axis_tx_metadata_V_TDATA_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, esac_fsmState_V_load_reg_160, tmp_4_i_reg_164, tmp_6_i_reg_168, ap_predicate_op34_write_state2, ap_block_pp0_stage1, ap_block_pp0_stage0, tmp_7_i_reg_176, m_axis_tx_metadata_V_TREADY_int_regslice)
    begin
        if ((((ap_predicate_op34_write_state2 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1)) or ((tmp_6_i_reg_168 = ap_const_lv1_1) and (tmp_4_i_reg_164 = ap_const_lv1_1) and (esac_fsmState_V_load_reg_160 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (tmp_7_i_reg_176 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)))) then 
            m_axis_tx_metadata_V_TDATA_blk_n <= m_axis_tx_metadata_V_TREADY_int_regslice;
        else 
            m_axis_tx_metadata_V_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    m_axis_tx_metadata_V_TDATA_int_regslice <= (esa_lengthFifo_dout & esa_sessionidFifo_dout);
    m_axis_tx_metadata_V_TVALID <= regslice_both_m_axis_tx_metadata_V_U_vld_out;

    m_axis_tx_metadata_V_TVALID_int_regslice_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_predicate_op34_write_state2, ap_block_pp0_stage1_11001)
    begin
        if (((ap_predicate_op34_write_state2 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then 
            m_axis_tx_metadata_V_TVALID_int_regslice <= ap_const_logic_1;
        else 
            m_axis_tx_metadata_V_TVALID_int_regslice <= ap_const_logic_0;
        end if; 
    end process;

    tmp_4_i_nbreadreq_fu_54_p3 <= (0=>(esa_sessionidFifo_empty_n), others=>'-');
    tmp_6_i_nbreadreq_fu_62_p3 <= (0=>(esa_lengthFifo_empty_n), others=>'-');
    tmp_i_nbreadreq_fu_78_p3 <= (0=>(esa_dataFifo_empty_n), others=>'-');
end behav;
