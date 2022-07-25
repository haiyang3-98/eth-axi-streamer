-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Version: 2020.2
-- Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ipv4_top_ipv4_lshiftWordByOctet_512_2_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    s_axis_tx_data_internal_dout : IN STD_LOGIC_VECTOR (1023 downto 0);
    s_axis_tx_data_internal_empty_n : IN STD_LOGIC;
    s_axis_tx_data_internal_read : OUT STD_LOGIC;
    tx_shift2ipv4Fifo_din : OUT STD_LOGIC_VECTOR (1023 downto 0);
    tx_shift2ipv4Fifo_full_n : IN STD_LOGIC;
    tx_shift2ipv4Fifo_write : OUT STD_LOGIC );
end;


architecture behav of ipv4_top_ipv4_lshiftWordByOctet_512_2_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_160 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000101100000";
    constant ap_const_lv32_1FF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000111111111";
    constant ap_const_lv32_2C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101100";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv32_200 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000001000000000";
    constant ap_const_lv32_23F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000001000111111";
    constant ap_const_lv32_240 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000001001000000";
    constant ap_const_lv32_22B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000001000101011";
    constant ap_const_lv32_22C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000001000101100";
    constant ap_const_lv20_0 : STD_LOGIC_VECTOR (19 downto 0) := "00000000000000000000";
    constant ap_const_lv160_lc_2 : STD_LOGIC_VECTOR (159 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv20_FFFFF : STD_LOGIC_VECTOR (19 downto 0) := "11111111111111111111";
    constant ap_const_lv447_lc_2 : STD_LOGIC_VECTOR (446 downto 0) := "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv45_100000000000 : STD_LOGIC_VECTOR (44 downto 0) := "100000000000000000000000000000000000000000000";
    constant ap_const_lv352_lc_2 : STD_LOGIC_VECTOR (351 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";

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
    signal ls_writeRemainder_load_load_fu_172_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_i_nbreadreq_fu_86_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op17_read_state1 : BOOLEAN;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ls_writeRemainder_load_reg_351 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_i_reg_355 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op45_write_state2 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal ls_writeRemainder : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal prevWord_data_V : STD_LOGIC_VECTOR (511 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    signal prevWord_keep_V : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    signal ls_firstWord : STD_LOGIC_VECTOR (0 downto 0) := "1";
    signal tx_shift2ipv4Fifo_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal s_axis_tx_data_internal_blk_n : STD_LOGIC;
    signal reg_164 : STD_LOGIC_VECTOR (159 downto 0);
    signal reg_168 : STD_LOGIC_VECTOR (19 downto 0);
    signal trunc_ln674_fu_208_p1 : STD_LOGIC_VECTOR (351 downto 0);
    signal trunc_ln674_reg_362 : STD_LOGIC_VECTOR (351 downto 0);
    signal p_Result_4_i_reg_368 : STD_LOGIC_VECTOR (43 downto 0);
    signal sendWord_last_V_fu_232_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sendWord_last_V_reg_374 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_phi_mux_ls_firstWord_flag_0_i_phi_fu_112_p8 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_reg_pp0_iter0_ls_firstWord_flag_0_i_reg_107 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_reg_pp0_iter1_ls_firstWord_flag_0_i_reg_107 : STD_LOGIC_VECTOR (0 downto 0);
    signal currWord_last_V_fu_200_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_reg_pp0_iter0_ls_firstWord_new_0_i_reg_126 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_reg_pp0_iter1_ls_firstWord_new_0_i_reg_126 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln752_fu_250_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal currWord_data_V_fu_186_p1 : STD_LOGIC_VECTOR (511 downto 0);
    signal p_s_fu_316_p5 : STD_LOGIC_VECTOR (1023 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal zext_ln174_fu_340_p1 : STD_LOGIC_VECTOR (1023 downto 0);
    signal p_Result_5_i_fu_222_p4 : STD_LOGIC_VECTOR (19 downto 0);
    signal p_Result_s_fu_272_p3 : STD_LOGIC_VECTOR (511 downto 0);
    signal p_Result_2_fu_286_p3 : STD_LOGIC_VECTOR (511 downto 0);
    signal p_Result_1_fu_279_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_Result_3_fu_293_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal select_ln1269_fu_308_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal sendWord_data_V_2_fu_300_p3 : STD_LOGIC_VECTOR (511 downto 0);
    signal or_ln_fu_328_p5 : STD_LOGIC_VECTOR (576 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_idle_pp0_0to0 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_condition_129 : BOOLEAN;
    signal ap_condition_132 : BOOLEAN;
    signal ap_condition_77 : BOOLEAN;
    signal ap_condition_162 : BOOLEAN;
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


    ap_phi_reg_pp0_iter1_ls_firstWord_flag_0_i_reg_107_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_i_nbreadreq_fu_86_p3 = ap_const_lv1_1) and (ls_writeRemainder = ap_const_lv1_0) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (currWord_last_V_fu_200_p3 = ap_const_lv1_0)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_i_nbreadreq_fu_86_p3 = ap_const_lv1_1) and (ls_writeRemainder = ap_const_lv1_0) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (currWord_last_V_fu_200_p3 = ap_const_lv1_1)))) then 
                ap_phi_reg_pp0_iter1_ls_firstWord_flag_0_i_reg_107 <= ap_const_lv1_1;
            elsif ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_i_nbreadreq_fu_86_p3 = ap_const_lv1_0) and (ls_writeRemainder = ap_const_lv1_0) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ls_writeRemainder_load_load_fu_172_p1 = ap_const_lv1_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
                ap_phi_reg_pp0_iter1_ls_firstWord_flag_0_i_reg_107 <= ap_const_lv1_0;
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                ap_phi_reg_pp0_iter1_ls_firstWord_flag_0_i_reg_107 <= ap_phi_reg_pp0_iter0_ls_firstWord_flag_0_i_reg_107;
            end if; 
        end if;
    end process;

    ap_phi_reg_pp0_iter1_ls_firstWord_new_0_i_reg_126_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_77)) then
                if ((ap_const_boolean_1 = ap_condition_132)) then 
                    ap_phi_reg_pp0_iter1_ls_firstWord_new_0_i_reg_126 <= ap_const_lv1_0;
                elsif ((ap_const_boolean_1 = ap_condition_129)) then 
                    ap_phi_reg_pp0_iter1_ls_firstWord_new_0_i_reg_126 <= ap_const_lv1_1;
                elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                    ap_phi_reg_pp0_iter1_ls_firstWord_new_0_i_reg_126 <= ap_phi_reg_pp0_iter0_ls_firstWord_new_0_i_reg_126;
                end if;
            end if; 
        end if;
    end process;

    ls_writeRemainder_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_77)) then
                if ((ls_writeRemainder_load_load_fu_172_p1 = ap_const_lv1_1)) then 
                    ls_writeRemainder <= ap_const_lv1_0;
                elsif ((ap_const_boolean_1 = ap_condition_129)) then 
                    ls_writeRemainder <= xor_ln752_fu_250_p2;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_phi_mux_ls_firstWord_flag_0_i_phi_fu_112_p8 = ap_const_lv1_1))) then
                ls_firstWord <= ap_phi_reg_pp0_iter1_ls_firstWord_new_0_i_reg_126;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ls_writeRemainder_load_reg_351 <= ls_writeRemainder;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_i_nbreadreq_fu_86_p3 = ap_const_lv1_1) and (ls_writeRemainder = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                p_Result_4_i_reg_368 <= s_axis_tx_data_internal_dout(555 downto 512);
                sendWord_last_V_reg_374 <= sendWord_last_V_fu_232_p2;
                trunc_ln674_reg_362 <= trunc_ln674_fu_208_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_i_nbreadreq_fu_86_p3 = ap_const_lv1_1) and (ls_writeRemainder = ap_const_lv1_0) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                prevWord_data_V <= currWord_data_V_fu_186_p1;
                prevWord_keep_V <= s_axis_tx_data_internal_dout(575 downto 512);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_i_nbreadreq_fu_86_p3 = ap_const_lv1_1) and (ls_writeRemainder = ap_const_lv1_0) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ls_writeRemainder_load_load_fu_172_p1 = ap_const_lv1_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then
                reg_164 <= prevWord_data_V(511 downto 352);
                reg_168 <= prevWord_keep_V(63 downto 44);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ls_writeRemainder = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                tmp_i_reg_355 <= tmp_i_nbreadreq_fu_86_p3;
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

    ap_block_pp0_stage0_01001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, s_axis_tx_data_internal_empty_n, ap_predicate_op17_read_state1, tx_shift2ipv4Fifo_full_n, ls_writeRemainder_load_reg_351, ap_predicate_op45_write_state2)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((ls_writeRemainder_load_reg_351 = ap_const_lv1_1) and (tx_shift2ipv4Fifo_full_n = ap_const_logic_0)) or ((ap_predicate_op45_write_state2 = ap_const_boolean_1) and (tx_shift2ipv4Fifo_full_n = ap_const_logic_0)))) or ((ap_start = ap_const_logic_1) and ((ap_done_reg = ap_const_logic_1) or ((ap_predicate_op17_read_state1 = ap_const_boolean_1) and (s_axis_tx_data_internal_empty_n = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, s_axis_tx_data_internal_empty_n, ap_predicate_op17_read_state1, tx_shift2ipv4Fifo_full_n, ls_writeRemainder_load_reg_351, ap_predicate_op45_write_state2)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((ls_writeRemainder_load_reg_351 = ap_const_lv1_1) and (tx_shift2ipv4Fifo_full_n = ap_const_logic_0)) or ((ap_predicate_op45_write_state2 = ap_const_boolean_1) and (tx_shift2ipv4Fifo_full_n = ap_const_logic_0)))) or ((ap_start = ap_const_logic_1) and ((ap_done_reg = ap_const_logic_1) or ((ap_predicate_op17_read_state1 = ap_const_boolean_1) and (s_axis_tx_data_internal_empty_n = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, s_axis_tx_data_internal_empty_n, ap_predicate_op17_read_state1, tx_shift2ipv4Fifo_full_n, ls_writeRemainder_load_reg_351, ap_predicate_op45_write_state2)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((ls_writeRemainder_load_reg_351 = ap_const_lv1_1) and (tx_shift2ipv4Fifo_full_n = ap_const_logic_0)) or ((ap_predicate_op45_write_state2 = ap_const_boolean_1) and (tx_shift2ipv4Fifo_full_n = ap_const_logic_0)))) or ((ap_start = ap_const_logic_1) and ((ap_done_reg = ap_const_logic_1) or ((ap_predicate_op17_read_state1 = ap_const_boolean_1) and (s_axis_tx_data_internal_empty_n = ap_const_logic_0)))));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_done_reg, s_axis_tx_data_internal_empty_n, ap_predicate_op17_read_state1)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((ap_done_reg = ap_const_logic_1) or ((ap_predicate_op17_read_state1 = ap_const_boolean_1) and (s_axis_tx_data_internal_empty_n = ap_const_logic_0)));
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(tx_shift2ipv4Fifo_full_n, ls_writeRemainder_load_reg_351, ap_predicate_op45_write_state2)
    begin
                ap_block_state2_pp0_stage0_iter1 <= (((ls_writeRemainder_load_reg_351 = ap_const_lv1_1) and (tx_shift2ipv4Fifo_full_n = ap_const_logic_0)) or ((ap_predicate_op45_write_state2 = ap_const_boolean_1) and (tx_shift2ipv4Fifo_full_n = ap_const_logic_0)));
    end process;


    ap_condition_129_assign_proc : process(tmp_i_nbreadreq_fu_86_p3, ls_writeRemainder, currWord_last_V_fu_200_p3)
    begin
                ap_condition_129 <= ((tmp_i_nbreadreq_fu_86_p3 = ap_const_lv1_1) and (ls_writeRemainder = ap_const_lv1_0) and (currWord_last_V_fu_200_p3 = ap_const_lv1_1));
    end process;


    ap_condition_132_assign_proc : process(tmp_i_nbreadreq_fu_86_p3, ls_writeRemainder, currWord_last_V_fu_200_p3)
    begin
                ap_condition_132 <= ((tmp_i_nbreadreq_fu_86_p3 = ap_const_lv1_1) and (ls_writeRemainder = ap_const_lv1_0) and (currWord_last_V_fu_200_p3 = ap_const_lv1_0));
    end process;


    ap_condition_162_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_01001)
    begin
                ap_condition_162 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_01001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_condition_77_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
                ap_condition_77 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
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

    ap_phi_mux_ls_firstWord_flag_0_i_phi_fu_112_p8 <= ap_phi_reg_pp0_iter1_ls_firstWord_flag_0_i_reg_107;
    ap_phi_reg_pp0_iter0_ls_firstWord_flag_0_i_reg_107 <= "X";
    ap_phi_reg_pp0_iter0_ls_firstWord_new_0_i_reg_126 <= "X";

    ap_predicate_op17_read_state1_assign_proc : process(tmp_i_nbreadreq_fu_86_p3, ls_writeRemainder)
    begin
                ap_predicate_op17_read_state1 <= ((tmp_i_nbreadreq_fu_86_p3 = ap_const_lv1_1) and (ls_writeRemainder = ap_const_lv1_0));
    end process;


    ap_predicate_op45_write_state2_assign_proc : process(ls_writeRemainder_load_reg_351, tmp_i_reg_355)
    begin
                ap_predicate_op45_write_state2 <= ((tmp_i_reg_355 = ap_const_lv1_1) and (ls_writeRemainder_load_reg_351 = ap_const_lv1_0));
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

    currWord_data_V_fu_186_p1 <= s_axis_tx_data_internal_dout(512 - 1 downto 0);
    currWord_last_V_fu_200_p3 <= s_axis_tx_data_internal_dout(576 downto 576);
    ls_writeRemainder_load_load_fu_172_p1 <= ls_writeRemainder;
    or_ln_fu_328_p5 <= (((ap_const_lv45_100000000000 & reg_168) & ap_const_lv352_lc_2) & reg_164);
    p_Result_1_fu_279_p3 <= (p_Result_4_i_reg_368 & ap_const_lv20_FFFFF);
    p_Result_2_fu_286_p3 <= (trunc_ln674_reg_362 & reg_164);
    p_Result_3_fu_293_p3 <= (p_Result_4_i_reg_368 & reg_168);
    p_Result_5_i_fu_222_p4 <= s_axis_tx_data_internal_dout(575 downto 556);
    p_Result_s_fu_272_p3 <= (trunc_ln674_reg_362 & ap_const_lv160_lc_2);
    p_s_fu_316_p5 <= (((ap_const_lv447_lc_2 & sendWord_last_V_reg_374) & select_ln1269_fu_308_p3) & sendWord_data_V_2_fu_300_p3);

    s_axis_tx_data_internal_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_pp0_stage0, s_axis_tx_data_internal_empty_n, ap_predicate_op17_read_state1, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_predicate_op17_read_state1 = ap_const_boolean_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_done_reg = ap_const_logic_0))) then 
            s_axis_tx_data_internal_blk_n <= s_axis_tx_data_internal_empty_n;
        else 
            s_axis_tx_data_internal_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    s_axis_tx_data_internal_read_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_predicate_op17_read_state1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op17_read_state1 = ap_const_boolean_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            s_axis_tx_data_internal_read <= ap_const_logic_1;
        else 
            s_axis_tx_data_internal_read <= ap_const_logic_0;
        end if; 
    end process;

    select_ln1269_fu_308_p3 <= 
        p_Result_1_fu_279_p3 when (ls_firstWord(0) = '1') else 
        p_Result_3_fu_293_p3;
    sendWord_data_V_2_fu_300_p3 <= 
        p_Result_s_fu_272_p3 when (ls_firstWord(0) = '1') else 
        p_Result_2_fu_286_p3;
    sendWord_last_V_fu_232_p2 <= "1" when (p_Result_5_i_fu_222_p4 = ap_const_lv20_0) else "0";
    tmp_i_nbreadreq_fu_86_p3 <= (0=>(s_axis_tx_data_internal_empty_n), others=>'-');
    trunc_ln674_fu_208_p1 <= s_axis_tx_data_internal_dout(352 - 1 downto 0);

    tx_shift2ipv4Fifo_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, tx_shift2ipv4Fifo_full_n, ls_writeRemainder_load_reg_351, ap_predicate_op45_write_state2, ap_block_pp0_stage0)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0) and (ls_writeRemainder_load_reg_351 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_predicate_op45_write_state2 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            tx_shift2ipv4Fifo_blk_n <= tx_shift2ipv4Fifo_full_n;
        else 
            tx_shift2ipv4Fifo_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    tx_shift2ipv4Fifo_din_assign_proc : process(ls_writeRemainder_load_reg_351, ap_predicate_op45_write_state2, p_s_fu_316_p5, zext_ln174_fu_340_p1, ap_condition_162)
    begin
        if ((ap_const_boolean_1 = ap_condition_162)) then
            if ((ls_writeRemainder_load_reg_351 = ap_const_lv1_1)) then 
                tx_shift2ipv4Fifo_din <= zext_ln174_fu_340_p1;
            elsif ((ap_predicate_op45_write_state2 = ap_const_boolean_1)) then 
                tx_shift2ipv4Fifo_din <= p_s_fu_316_p5;
            else 
                tx_shift2ipv4Fifo_din <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            tx_shift2ipv4Fifo_din <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    tx_shift2ipv4Fifo_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ls_writeRemainder_load_reg_351, ap_predicate_op45_write_state2, ap_block_pp0_stage0_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ls_writeRemainder_load_reg_351 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op45_write_state2 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            tx_shift2ipv4Fifo_write <= ap_const_logic_1;
        else 
            tx_shift2ipv4Fifo_write <= ap_const_logic_0;
        end if; 
    end process;

    xor_ln752_fu_250_p2 <= (sendWord_last_V_fu_232_p2 xor ap_const_lv1_1);
    zext_ln174_fu_340_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln_fu_328_p5),1024));
end behav;
