-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Version: 2020.2
-- Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity toe_top_prependPseudoHeader_512_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    rxEng_pseudoHeaderFifo_dout : IN STD_LOGIC_VECTOR (1023 downto 0);
    rxEng_pseudoHeaderFifo_empty_n : IN STD_LOGIC;
    rxEng_pseudoHeaderFifo_read : OUT STD_LOGIC;
    rxEng_dataBuffer5_dout : IN STD_LOGIC_VECTOR (1023 downto 0);
    rxEng_dataBuffer5_empty_n : IN STD_LOGIC;
    rxEng_dataBuffer5_read : OUT STD_LOGIC;
    rxEng_dataBuffer1_din : OUT STD_LOGIC_VECTOR (1023 downto 0);
    rxEng_dataBuffer1_full_n : IN STD_LOGIC;
    rxEng_dataBuffer1_write : OUT STD_LOGIC );
end;


architecture behav of toe_top_prependPseudoHeader_512_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_240 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000001001000000";
    constant ap_const_lv32_5F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001011111";
    constant ap_const_lv32_200 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000001000000000";

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
    signal tmp_i_nbreadreq_fu_48_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op21_read_state1 : BOOLEAN;
    signal tmp_i_275_nbreadreq_fu_62_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op31_read_state1 : BOOLEAN;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal state_2_load_reg_192 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_i_reg_199 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_290_reg_208 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op43_write_state2 : BOOLEAN;
    signal tmp_i_275_reg_212 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op48_write_state2 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal state_2 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal firstPayload : STD_LOGIC_VECTOR (0 downto 0) := "1";
    signal prevWord_data_V_7 : STD_LOGIC_VECTOR (95 downto 0) := "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    signal rxEng_pseudoHeaderFifo_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal rxEng_dataBuffer1_blk_n : STD_LOGIC;
    signal rxEng_dataBuffer5_blk_n : STD_LOGIC;
    signal rxEng_pseudoHeaderFifo_read_reg_203 : STD_LOGIC_VECTOR (1023 downto 0);
    signal tmp_290_fu_110_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_data_V_fu_130_p1 : STD_LOGIC_VECTOR (511 downto 0);
    signal p_Result_s_fu_146_p5 : STD_LOGIC_VECTOR (511 downto 0);
    signal firstPayload_load_load_fu_96_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_reg_229 : STD_LOGIC_VECTOR (64 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_phi_reg_pp0_iter0_sendWord_data_V_9_reg_83 : STD_LOGIC_VECTOR (511 downto 0);
    signal ap_phi_reg_pp0_iter1_sendWord_data_V_9_reg_83 : STD_LOGIC_VECTOR (511 downto 0);
    signal tmp_last_V_fu_134_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln145_fu_100_p1 : STD_LOGIC_VECTOR (95 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal zext_ln174_fu_187_p1 : STD_LOGIC_VECTOR (1023 downto 0);
    signal tmp_s_fu_180_p3 : STD_LOGIC_VECTOR (576 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_idle_pp0_0to0 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_condition_137 : BOOLEAN;
    signal ap_condition_151 : BOOLEAN;
    signal ap_condition_98 : BOOLEAN;
    signal ap_condition_154 : BOOLEAN;
    signal ap_condition_175 : BOOLEAN;
    signal ap_condition_158 : BOOLEAN;
    signal ap_ce_reg : STD_LOGIC;


begin




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


    ap_phi_reg_pp0_iter1_sendWord_data_V_9_reg_83_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_98)) then
                if ((ap_const_boolean_1 = ap_condition_151)) then 
                    ap_phi_reg_pp0_iter1_sendWord_data_V_9_reg_83 <= tmp_data_V_fu_130_p1;
                elsif ((ap_const_boolean_1 = ap_condition_137)) then 
                    ap_phi_reg_pp0_iter1_sendWord_data_V_9_reg_83 <= p_Result_s_fu_146_p5;
                elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                    ap_phi_reg_pp0_iter1_sendWord_data_V_9_reg_83 <= ap_phi_reg_pp0_iter0_sendWord_data_V_9_reg_83;
                end if;
            end if; 
        end if;
    end process;

    firstPayload_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_98)) then
                if ((ap_const_boolean_1 = ap_condition_137)) then 
                    firstPayload <= ap_const_lv1_0;
                elsif ((ap_const_boolean_1 = ap_condition_154)) then 
                    firstPayload <= ap_const_lv1_1;
                end if;
            end if; 
        end if;
    end process;

    state_2_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_98)) then
                if ((ap_const_boolean_1 = ap_condition_158)) then 
                    state_2 <= ap_const_lv1_0;
                elsif ((ap_const_boolean_1 = ap_condition_154)) then 
                    state_2 <= ap_const_lv1_1;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_i_nbreadreq_fu_48_p3 = ap_const_lv1_1) and (state_2 = ap_const_lv1_0) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                prevWord_data_V_7 <= trunc_ln145_fu_100_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op21_read_state1 = ap_const_boolean_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                rxEng_pseudoHeaderFifo_read_reg_203 <= rxEng_pseudoHeaderFifo_dout;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                state_2_load_reg_192 <= state_2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_i_nbreadreq_fu_48_p3 = ap_const_lv1_1) and (state_2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                tmp_290_reg_208 <= rxEng_pseudoHeaderFifo_dout(576 downto 576);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (state_2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                tmp_i_275_reg_212 <= tmp_i_275_nbreadreq_fu_62_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (state_2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                tmp_i_reg_199 <= tmp_i_nbreadreq_fu_48_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_i_275_nbreadreq_fu_62_p3 = ap_const_lv1_1) and (state_2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                tmp_reg_229 <= rxEng_dataBuffer5_dout(576 downto 512);
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

    ap_block_pp0_stage0_01001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, rxEng_pseudoHeaderFifo_empty_n, ap_predicate_op21_read_state1, rxEng_dataBuffer5_empty_n, ap_predicate_op31_read_state1, rxEng_dataBuffer1_full_n, ap_predicate_op43_write_state2, ap_predicate_op48_write_state2)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((ap_predicate_op48_write_state2 = ap_const_boolean_1) and (rxEng_dataBuffer1_full_n = ap_const_logic_0)) or ((ap_predicate_op43_write_state2 = ap_const_boolean_1) and (rxEng_dataBuffer1_full_n = ap_const_logic_0)))) or ((ap_start = ap_const_logic_1) and ((ap_done_reg = ap_const_logic_1) or ((ap_predicate_op31_read_state1 = ap_const_boolean_1) and (rxEng_dataBuffer5_empty_n = ap_const_logic_0)) or ((ap_predicate_op21_read_state1 = ap_const_boolean_1) and (rxEng_pseudoHeaderFifo_empty_n = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, rxEng_pseudoHeaderFifo_empty_n, ap_predicate_op21_read_state1, rxEng_dataBuffer5_empty_n, ap_predicate_op31_read_state1, rxEng_dataBuffer1_full_n, ap_predicate_op43_write_state2, ap_predicate_op48_write_state2)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((ap_predicate_op48_write_state2 = ap_const_boolean_1) and (rxEng_dataBuffer1_full_n = ap_const_logic_0)) or ((ap_predicate_op43_write_state2 = ap_const_boolean_1) and (rxEng_dataBuffer1_full_n = ap_const_logic_0)))) or ((ap_start = ap_const_logic_1) and ((ap_done_reg = ap_const_logic_1) or ((ap_predicate_op31_read_state1 = ap_const_boolean_1) and (rxEng_dataBuffer5_empty_n = ap_const_logic_0)) or ((ap_predicate_op21_read_state1 = ap_const_boolean_1) and (rxEng_pseudoHeaderFifo_empty_n = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, rxEng_pseudoHeaderFifo_empty_n, ap_predicate_op21_read_state1, rxEng_dataBuffer5_empty_n, ap_predicate_op31_read_state1, rxEng_dataBuffer1_full_n, ap_predicate_op43_write_state2, ap_predicate_op48_write_state2)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((ap_predicate_op48_write_state2 = ap_const_boolean_1) and (rxEng_dataBuffer1_full_n = ap_const_logic_0)) or ((ap_predicate_op43_write_state2 = ap_const_boolean_1) and (rxEng_dataBuffer1_full_n = ap_const_logic_0)))) or ((ap_start = ap_const_logic_1) and ((ap_done_reg = ap_const_logic_1) or ((ap_predicate_op31_read_state1 = ap_const_boolean_1) and (rxEng_dataBuffer5_empty_n = ap_const_logic_0)) or ((ap_predicate_op21_read_state1 = ap_const_boolean_1) and (rxEng_pseudoHeaderFifo_empty_n = ap_const_logic_0)))));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_done_reg, rxEng_pseudoHeaderFifo_empty_n, ap_predicate_op21_read_state1, rxEng_dataBuffer5_empty_n, ap_predicate_op31_read_state1)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((ap_done_reg = ap_const_logic_1) or ((ap_predicate_op31_read_state1 = ap_const_boolean_1) and (rxEng_dataBuffer5_empty_n = ap_const_logic_0)) or ((ap_predicate_op21_read_state1 = ap_const_boolean_1) and (rxEng_pseudoHeaderFifo_empty_n = ap_const_logic_0)));
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(rxEng_dataBuffer1_full_n, ap_predicate_op43_write_state2, ap_predicate_op48_write_state2)
    begin
                ap_block_state2_pp0_stage0_iter1 <= (((ap_predicate_op48_write_state2 = ap_const_boolean_1) and (rxEng_dataBuffer1_full_n = ap_const_logic_0)) or ((ap_predicate_op43_write_state2 = ap_const_boolean_1) and (rxEng_dataBuffer1_full_n = ap_const_logic_0)));
    end process;


    ap_condition_137_assign_proc : process(tmp_i_275_nbreadreq_fu_62_p3, state_2, firstPayload_load_load_fu_96_p1)
    begin
                ap_condition_137 <= ((tmp_i_275_nbreadreq_fu_62_p3 = ap_const_lv1_1) and (state_2 = ap_const_lv1_1) and (firstPayload_load_load_fu_96_p1 = ap_const_lv1_1));
    end process;


    ap_condition_151_assign_proc : process(tmp_i_275_nbreadreq_fu_62_p3, state_2, firstPayload_load_load_fu_96_p1)
    begin
                ap_condition_151 <= ((tmp_i_275_nbreadreq_fu_62_p3 = ap_const_lv1_1) and (state_2 = ap_const_lv1_1) and (firstPayload_load_load_fu_96_p1 = ap_const_lv1_0));
    end process;


    ap_condition_154_assign_proc : process(tmp_i_nbreadreq_fu_48_p3, state_2, tmp_290_fu_110_p3)
    begin
                ap_condition_154 <= ((tmp_i_nbreadreq_fu_48_p3 = ap_const_lv1_1) and (state_2 = ap_const_lv1_0) and (tmp_290_fu_110_p3 = ap_const_lv1_1));
    end process;


    ap_condition_158_assign_proc : process(tmp_i_275_nbreadreq_fu_62_p3, state_2, tmp_last_V_fu_134_p3)
    begin
                ap_condition_158 <= ((tmp_i_275_nbreadreq_fu_62_p3 = ap_const_lv1_1) and (state_2 = ap_const_lv1_1) and (tmp_last_V_fu_134_p3 = ap_const_lv1_1));
    end process;


    ap_condition_175_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_01001)
    begin
                ap_condition_175 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_01001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_condition_98_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
                ap_condition_98 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
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

    ap_phi_reg_pp0_iter0_sendWord_data_V_9_reg_83 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";

    ap_predicate_op21_read_state1_assign_proc : process(tmp_i_nbreadreq_fu_48_p3, state_2)
    begin
                ap_predicate_op21_read_state1 <= ((tmp_i_nbreadreq_fu_48_p3 = ap_const_lv1_1) and (state_2 = ap_const_lv1_0));
    end process;


    ap_predicate_op31_read_state1_assign_proc : process(tmp_i_275_nbreadreq_fu_62_p3, state_2)
    begin
                ap_predicate_op31_read_state1 <= ((tmp_i_275_nbreadreq_fu_62_p3 = ap_const_lv1_1) and (state_2 = ap_const_lv1_1));
    end process;


    ap_predicate_op43_write_state2_assign_proc : process(state_2_load_reg_192, tmp_i_reg_199, tmp_290_reg_208)
    begin
                ap_predicate_op43_write_state2 <= ((tmp_290_reg_208 = ap_const_lv1_0) and (tmp_i_reg_199 = ap_const_lv1_1) and (state_2_load_reg_192 = ap_const_lv1_0));
    end process;


    ap_predicate_op48_write_state2_assign_proc : process(state_2_load_reg_192, tmp_i_275_reg_212)
    begin
                ap_predicate_op48_write_state2 <= ((tmp_i_275_reg_212 = ap_const_lv1_1) and (state_2_load_reg_192 = ap_const_lv1_1));
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

    firstPayload_load_load_fu_96_p1 <= firstPayload;
    p_Result_s_fu_146_p5 <= (tmp_data_V_fu_130_p1(511 downto 96) & prevWord_data_V_7);

    rxEng_dataBuffer1_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, rxEng_dataBuffer1_full_n, ap_predicate_op43_write_state2, ap_predicate_op48_write_state2, ap_block_pp0_stage0)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_predicate_op48_write_state2 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_predicate_op43_write_state2 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            rxEng_dataBuffer1_blk_n <= rxEng_dataBuffer1_full_n;
        else 
            rxEng_dataBuffer1_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    rxEng_dataBuffer1_din_assign_proc : process(ap_predicate_op43_write_state2, ap_predicate_op48_write_state2, rxEng_pseudoHeaderFifo_read_reg_203, zext_ln174_fu_187_p1, ap_condition_175)
    begin
        if ((ap_const_boolean_1 = ap_condition_175)) then
            if ((ap_predicate_op48_write_state2 = ap_const_boolean_1)) then 
                rxEng_dataBuffer1_din <= zext_ln174_fu_187_p1;
            elsif ((ap_predicate_op43_write_state2 = ap_const_boolean_1)) then 
                rxEng_dataBuffer1_din <= rxEng_pseudoHeaderFifo_read_reg_203;
            else 
                rxEng_dataBuffer1_din <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            rxEng_dataBuffer1_din <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    rxEng_dataBuffer1_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_predicate_op43_write_state2, ap_predicate_op48_write_state2, ap_block_pp0_stage0_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op48_write_state2 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op43_write_state2 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            rxEng_dataBuffer1_write <= ap_const_logic_1;
        else 
            rxEng_dataBuffer1_write <= ap_const_logic_0;
        end if; 
    end process;


    rxEng_dataBuffer5_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_pp0_stage0, rxEng_dataBuffer5_empty_n, ap_predicate_op31_read_state1, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_predicate_op31_read_state1 = ap_const_boolean_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_done_reg = ap_const_logic_0))) then 
            rxEng_dataBuffer5_blk_n <= rxEng_dataBuffer5_empty_n;
        else 
            rxEng_dataBuffer5_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    rxEng_dataBuffer5_read_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_predicate_op31_read_state1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op31_read_state1 = ap_const_boolean_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            rxEng_dataBuffer5_read <= ap_const_logic_1;
        else 
            rxEng_dataBuffer5_read <= ap_const_logic_0;
        end if; 
    end process;


    rxEng_pseudoHeaderFifo_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_pp0_stage0, rxEng_pseudoHeaderFifo_empty_n, ap_predicate_op21_read_state1, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_predicate_op21_read_state1 = ap_const_boolean_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_done_reg = ap_const_logic_0))) then 
            rxEng_pseudoHeaderFifo_blk_n <= rxEng_pseudoHeaderFifo_empty_n;
        else 
            rxEng_pseudoHeaderFifo_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    rxEng_pseudoHeaderFifo_read_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_predicate_op21_read_state1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op21_read_state1 = ap_const_boolean_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            rxEng_pseudoHeaderFifo_read <= ap_const_logic_1;
        else 
            rxEng_pseudoHeaderFifo_read <= ap_const_logic_0;
        end if; 
    end process;

    tmp_290_fu_110_p3 <= rxEng_pseudoHeaderFifo_dout(576 downto 576);
    tmp_data_V_fu_130_p1 <= rxEng_dataBuffer5_dout(512 - 1 downto 0);
    tmp_i_275_nbreadreq_fu_62_p3 <= (0=>(rxEng_dataBuffer5_empty_n), others=>'-');
    tmp_i_nbreadreq_fu_48_p3 <= (0=>(rxEng_pseudoHeaderFifo_empty_n), others=>'-');
    tmp_last_V_fu_134_p3 <= rxEng_dataBuffer5_dout(576 downto 576);
    tmp_s_fu_180_p3 <= (tmp_reg_229 & ap_phi_reg_pp0_iter1_sendWord_data_V_9_reg_83);
    trunc_ln145_fu_100_p1 <= rxEng_pseudoHeaderFifo_dout(96 - 1 downto 0);
    zext_ln174_fu_187_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_s_fu_180_p3),1024));
end behav;