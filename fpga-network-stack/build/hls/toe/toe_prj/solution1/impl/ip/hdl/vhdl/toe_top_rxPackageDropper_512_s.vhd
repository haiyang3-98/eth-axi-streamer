-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Version: 2020.2
-- Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity toe_top_rxPackageDropper_512_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    rxEng_dataBuffer3_dout : IN STD_LOGIC_VECTOR (1023 downto 0);
    rxEng_dataBuffer3_empty_n : IN STD_LOGIC;
    rxEng_dataBuffer3_read : OUT STD_LOGIC;
    rxEng_fsmDropFifo_dout : IN STD_LOGIC_VECTOR (0 downto 0);
    rxEng_fsmDropFifo_empty_n : IN STD_LOGIC;
    rxEng_fsmDropFifo_read : OUT STD_LOGIC;
    rxEng_metaHandlerDropFifo_dout : IN STD_LOGIC_VECTOR (0 downto 0);
    rxEng_metaHandlerDropFifo_empty_n : IN STD_LOGIC;
    rxEng_metaHandlerDropFifo_read : OUT STD_LOGIC;
    rxBufferWriteData_internal_din : OUT STD_LOGIC_VECTOR (1023 downto 0);
    rxBufferWriteData_internal_full_n : IN STD_LOGIC;
    rxBufferWriteData_internal_write : OUT STD_LOGIC );
end;


architecture behav of toe_top_rxPackageDropper_512_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_240 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000001001000000";

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
    signal grp_nbreadreq_fu_44_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op23_read_state1 : BOOLEAN;
    signal ap_predicate_op30_read_state1 : BOOLEAN;
    signal tmp_i_262_nbreadreq_fu_58_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op38_read_state1 : BOOLEAN;
    signal tmp_i_nbreadreq_fu_72_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op46_read_state1 : BOOLEAN;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal tpf_state_load_reg_129 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_9_i_reg_139 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op52_write_state2 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal tpf_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal rxEng_metaHandlerDropFifo_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal rxEng_fsmDropFifo_blk_n : STD_LOGIC;
    signal rxEng_dataBuffer3_blk_n : STD_LOGIC;
    signal rxBufferWriteData_internal_blk_n : STD_LOGIC;
    signal rxEng_dataBuffer3_read_reg_143 : STD_LOGIC_VECTOR (1023 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal grp_fu_93_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal drop_1_read_fu_66_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal drop_read_fu_80_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_idle_pp0_0to0 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
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
                elsif (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
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
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start;
                end if; 
            end if;
        end if;
    end process;


    tpf_state_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_i_nbreadreq_fu_72_p3 = ap_const_lv1_1) and (tpf_state = ap_const_lv2_0) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (drop_read_fu_80_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                tpf_state <= ap_const_lv2_1;
            elsif ((((tmp_i_nbreadreq_fu_72_p3 = ap_const_lv1_1) and (tpf_state = ap_const_lv2_0) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (drop_read_fu_80_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)) or ((tmp_i_262_nbreadreq_fu_58_p3 = ap_const_lv1_1) and (tpf_state = ap_const_lv2_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (drop_1_read_fu_66_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)))) then 
                tpf_state <= ap_const_lv2_3;
            elsif (((tmp_i_262_nbreadreq_fu_58_p3 = ap_const_lv1_1) and (tpf_state = ap_const_lv2_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (drop_1_read_fu_66_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                tpf_state <= ap_const_lv2_2;
            elsif ((((grp_nbreadreq_fu_44_p3 = ap_const_lv1_1) and (tpf_state = ap_const_lv2_2) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (grp_fu_93_p3 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)) or ((grp_nbreadreq_fu_44_p3 = ap_const_lv1_1) and (tpf_state = ap_const_lv2_3) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (grp_fu_93_p3 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)))) then 
                tpf_state <= ap_const_lv2_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_predicate_op30_read_state1 = ap_const_boolean_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                rxEng_dataBuffer3_read_reg_143 <= rxEng_dataBuffer3_dout;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tpf_state = ap_const_lv2_2) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_9_i_reg_139 <= grp_nbreadreq_fu_44_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tpf_state_load_reg_129 <= tpf_state;
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

    ap_block_pp0_stage0_01001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, rxEng_dataBuffer3_empty_n, ap_predicate_op23_read_state1, ap_predicate_op30_read_state1, rxEng_fsmDropFifo_empty_n, ap_predicate_op38_read_state1, rxEng_metaHandlerDropFifo_empty_n, ap_predicate_op46_read_state1, rxBufferWriteData_internal_full_n, ap_predicate_op52_write_state2)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_predicate_op52_write_state2 = ap_const_boolean_1) and (rxBufferWriteData_internal_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((ap_start = ap_const_logic_1) and ((ap_done_reg = ap_const_logic_1) or ((ap_predicate_op46_read_state1 = ap_const_boolean_1) and (rxEng_metaHandlerDropFifo_empty_n = ap_const_logic_0)) or ((ap_predicate_op38_read_state1 = ap_const_boolean_1) and (rxEng_fsmDropFifo_empty_n = ap_const_logic_0)) or ((ap_predicate_op30_read_state1 = ap_const_boolean_1) and (rxEng_dataBuffer3_empty_n = ap_const_logic_0)) or ((ap_predicate_op23_read_state1 = ap_const_boolean_1) and (rxEng_dataBuffer3_empty_n = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, rxEng_dataBuffer3_empty_n, ap_predicate_op23_read_state1, ap_predicate_op30_read_state1, rxEng_fsmDropFifo_empty_n, ap_predicate_op38_read_state1, rxEng_metaHandlerDropFifo_empty_n, ap_predicate_op46_read_state1, rxBufferWriteData_internal_full_n, ap_predicate_op52_write_state2)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_predicate_op52_write_state2 = ap_const_boolean_1) and (rxBufferWriteData_internal_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((ap_start = ap_const_logic_1) and ((ap_done_reg = ap_const_logic_1) or ((ap_predicate_op46_read_state1 = ap_const_boolean_1) and (rxEng_metaHandlerDropFifo_empty_n = ap_const_logic_0)) or ((ap_predicate_op38_read_state1 = ap_const_boolean_1) and (rxEng_fsmDropFifo_empty_n = ap_const_logic_0)) or ((ap_predicate_op30_read_state1 = ap_const_boolean_1) and (rxEng_dataBuffer3_empty_n = ap_const_logic_0)) or ((ap_predicate_op23_read_state1 = ap_const_boolean_1) and (rxEng_dataBuffer3_empty_n = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, rxEng_dataBuffer3_empty_n, ap_predicate_op23_read_state1, ap_predicate_op30_read_state1, rxEng_fsmDropFifo_empty_n, ap_predicate_op38_read_state1, rxEng_metaHandlerDropFifo_empty_n, ap_predicate_op46_read_state1, rxBufferWriteData_internal_full_n, ap_predicate_op52_write_state2)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_done_reg = ap_const_logic_1) or ((ap_predicate_op52_write_state2 = ap_const_boolean_1) and (rxBufferWriteData_internal_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((ap_start = ap_const_logic_1) and ((ap_done_reg = ap_const_logic_1) or ((ap_predicate_op46_read_state1 = ap_const_boolean_1) and (rxEng_metaHandlerDropFifo_empty_n = ap_const_logic_0)) or ((ap_predicate_op38_read_state1 = ap_const_boolean_1) and (rxEng_fsmDropFifo_empty_n = ap_const_logic_0)) or ((ap_predicate_op30_read_state1 = ap_const_boolean_1) and (rxEng_dataBuffer3_empty_n = ap_const_logic_0)) or ((ap_predicate_op23_read_state1 = ap_const_boolean_1) and (rxEng_dataBuffer3_empty_n = ap_const_logic_0)))));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_done_reg, rxEng_dataBuffer3_empty_n, ap_predicate_op23_read_state1, ap_predicate_op30_read_state1, rxEng_fsmDropFifo_empty_n, ap_predicate_op38_read_state1, rxEng_metaHandlerDropFifo_empty_n, ap_predicate_op46_read_state1)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((ap_done_reg = ap_const_logic_1) or ((ap_predicate_op46_read_state1 = ap_const_boolean_1) and (rxEng_metaHandlerDropFifo_empty_n = ap_const_logic_0)) or ((ap_predicate_op38_read_state1 = ap_const_boolean_1) and (rxEng_fsmDropFifo_empty_n = ap_const_logic_0)) or ((ap_predicate_op30_read_state1 = ap_const_boolean_1) and (rxEng_dataBuffer3_empty_n = ap_const_logic_0)) or ((ap_predicate_op23_read_state1 = ap_const_boolean_1) and (rxEng_dataBuffer3_empty_n = ap_const_logic_0)));
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(rxBufferWriteData_internal_full_n, ap_predicate_op52_write_state2)
    begin
                ap_block_state2_pp0_stage0_iter1 <= ((ap_predicate_op52_write_state2 = ap_const_boolean_1) and (rxBufferWriteData_internal_full_n = ap_const_logic_0));
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


    ap_predicate_op23_read_state1_assign_proc : process(grp_nbreadreq_fu_44_p3, tpf_state)
    begin
                ap_predicate_op23_read_state1 <= ((grp_nbreadreq_fu_44_p3 = ap_const_lv1_1) and (tpf_state = ap_const_lv2_3));
    end process;


    ap_predicate_op30_read_state1_assign_proc : process(grp_nbreadreq_fu_44_p3, tpf_state)
    begin
                ap_predicate_op30_read_state1 <= ((grp_nbreadreq_fu_44_p3 = ap_const_lv1_1) and (tpf_state = ap_const_lv2_2));
    end process;


    ap_predicate_op38_read_state1_assign_proc : process(tmp_i_262_nbreadreq_fu_58_p3, tpf_state)
    begin
                ap_predicate_op38_read_state1 <= ((tmp_i_262_nbreadreq_fu_58_p3 = ap_const_lv1_1) and (tpf_state = ap_const_lv2_1));
    end process;


    ap_predicate_op46_read_state1_assign_proc : process(tmp_i_nbreadreq_fu_72_p3, tpf_state)
    begin
                ap_predicate_op46_read_state1 <= ((tmp_i_nbreadreq_fu_72_p3 = ap_const_lv1_1) and (tpf_state = ap_const_lv2_0));
    end process;


    ap_predicate_op52_write_state2_assign_proc : process(tpf_state_load_reg_129, tmp_9_i_reg_139)
    begin
                ap_predicate_op52_write_state2 <= ((tmp_9_i_reg_139 = ap_const_lv1_1) and (tpf_state_load_reg_129 = ap_const_lv2_2));
    end process;


    ap_ready_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
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

    drop_1_read_fu_66_p2 <= rxEng_fsmDropFifo_dout;
    drop_read_fu_80_p2 <= rxEng_metaHandlerDropFifo_dout;
    grp_fu_93_p3 <= rxEng_dataBuffer3_dout(576 downto 576);
    grp_nbreadreq_fu_44_p3 <= (0=>(rxEng_dataBuffer3_empty_n), others=>'-');

    rxBufferWriteData_internal_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, rxBufferWriteData_internal_full_n, ap_predicate_op52_write_state2, ap_block_pp0_stage0)
    begin
        if (((ap_predicate_op52_write_state2 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            rxBufferWriteData_internal_blk_n <= rxBufferWriteData_internal_full_n;
        else 
            rxBufferWriteData_internal_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    rxBufferWriteData_internal_din <= rxEng_dataBuffer3_read_reg_143;

    rxBufferWriteData_internal_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_predicate_op52_write_state2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_predicate_op52_write_state2 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            rxBufferWriteData_internal_write <= ap_const_logic_1;
        else 
            rxBufferWriteData_internal_write <= ap_const_logic_0;
        end if; 
    end process;


    rxEng_dataBuffer3_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_pp0_stage0, rxEng_dataBuffer3_empty_n, ap_predicate_op23_read_state1, ap_predicate_op30_read_state1, ap_block_pp0_stage0)
    begin
        if ((((ap_predicate_op30_read_state1 = ap_const_boolean_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_done_reg = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0)) or ((ap_predicate_op23_read_state1 = ap_const_boolean_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_done_reg = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0)))) then 
            rxEng_dataBuffer3_blk_n <= rxEng_dataBuffer3_empty_n;
        else 
            rxEng_dataBuffer3_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    rxEng_dataBuffer3_read_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_predicate_op23_read_state1, ap_predicate_op30_read_state1, ap_block_pp0_stage0_11001)
    begin
        if ((((ap_predicate_op30_read_state1 = ap_const_boolean_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)) or ((ap_predicate_op23_read_state1 = ap_const_boolean_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)))) then 
            rxEng_dataBuffer3_read <= ap_const_logic_1;
        else 
            rxEng_dataBuffer3_read <= ap_const_logic_0;
        end if; 
    end process;


    rxEng_fsmDropFifo_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_pp0_stage0, rxEng_fsmDropFifo_empty_n, ap_predicate_op38_read_state1, ap_block_pp0_stage0)
    begin
        if (((ap_predicate_op38_read_state1 = ap_const_boolean_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_done_reg = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            rxEng_fsmDropFifo_blk_n <= rxEng_fsmDropFifo_empty_n;
        else 
            rxEng_fsmDropFifo_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    rxEng_fsmDropFifo_read_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_predicate_op38_read_state1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_predicate_op38_read_state1 = ap_const_boolean_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            rxEng_fsmDropFifo_read <= ap_const_logic_1;
        else 
            rxEng_fsmDropFifo_read <= ap_const_logic_0;
        end if; 
    end process;


    rxEng_metaHandlerDropFifo_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_pp0_stage0, rxEng_metaHandlerDropFifo_empty_n, ap_predicate_op46_read_state1, ap_block_pp0_stage0)
    begin
        if (((ap_predicate_op46_read_state1 = ap_const_boolean_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_done_reg = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            rxEng_metaHandlerDropFifo_blk_n <= rxEng_metaHandlerDropFifo_empty_n;
        else 
            rxEng_metaHandlerDropFifo_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    rxEng_metaHandlerDropFifo_read_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_predicate_op46_read_state1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_predicate_op46_read_state1 = ap_const_boolean_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            rxEng_metaHandlerDropFifo_read <= ap_const_logic_1;
        else 
            rxEng_metaHandlerDropFifo_read <= ap_const_logic_0;
        end if; 
    end process;

    tmp_i_262_nbreadreq_fu_58_p3 <= (0=>(rxEng_fsmDropFifo_empty_n), others=>'-');
    tmp_i_nbreadreq_fu_72_p3 <= (0=>(rxEng_metaHandlerDropFifo_empty_n), others=>'-');
end behav;
