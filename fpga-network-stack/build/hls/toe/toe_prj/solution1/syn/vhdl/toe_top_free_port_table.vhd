-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Version: 2020.2
-- Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity toe_top_free_port_table is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    sLookup2portTable_releasePort_dout : IN STD_LOGIC_VECTOR (15 downto 0);
    sLookup2portTable_releasePort_empty_n : IN STD_LOGIC;
    sLookup2portTable_releasePort_read : OUT STD_LOGIC;
    pt_portCheckUsed_req_fifo_dout : IN STD_LOGIC_VECTOR (14 downto 0);
    pt_portCheckUsed_req_fifo_empty_n : IN STD_LOGIC;
    pt_portCheckUsed_req_fifo_read : OUT STD_LOGIC;
    portTable2txApp_port_rsp_din : OUT STD_LOGIC_VECTOR (15 downto 0);
    portTable2txApp_port_rsp_full_n : IN STD_LOGIC;
    portTable2txApp_port_rsp_write : OUT STD_LOGIC;
    pt_portCheckUsed_rsp_fifo_din : OUT STD_LOGIC_VECTOR (0 downto 0);
    pt_portCheckUsed_rsp_fifo_full_n : IN STD_LOGIC;
    pt_portCheckUsed_rsp_fifo_write : OUT STD_LOGIC );
end;


architecture behav of toe_top_free_port_table is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv15_1 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000001";

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
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter4 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal tmp_i_nbreadreq_fu_60_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal tmp_i_reg_194 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_i_287_nbreadreq_fu_74_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op14_read_state2 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3 : BOOLEAN;
    signal tmp_i_reg_194_pp0_iter3_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_i_287_reg_207 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_i_287_reg_207_pp0_iter3_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal freePortTable_load_reg_232 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_44_i_nbwritereq_fu_88_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op53_write_state5 : BOOLEAN;
    signal ap_predicate_op55_write_state5 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter4 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal pt_cursor : STD_LOGIC_VECTOR (14 downto 0) := "000000000000000";
    signal freePortTable_address0 : STD_LOGIC_VECTOR (14 downto 0);
    signal freePortTable_ce0 : STD_LOGIC;
    signal freePortTable_we0 : STD_LOGIC;
    signal freePortTable_address1 : STD_LOGIC_VECTOR (14 downto 0);
    signal freePortTable_ce1 : STD_LOGIC;
    signal freePortTable_we1 : STD_LOGIC;
    signal freePortTable_q1 : STD_LOGIC_VECTOR (0 downto 0);
    signal sLookup2portTable_releasePort_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal pt_portCheckUsed_req_fifo_blk_n : STD_LOGIC;
    signal pt_portCheckUsed_rsp_fifo_blk_n : STD_LOGIC;
    signal portTable2txApp_port_rsp_blk_n : STD_LOGIC;
    signal tmp_i_reg_194_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_i_reg_194_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_fu_145_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_reg_198 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_reg_198_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln708_fu_153_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal trunc_ln708_reg_202 : STD_LOGIC_VECTOR (14 downto 0);
    signal trunc_ln708_reg_202_pp0_iter1_reg : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_i_287_reg_207_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_V_reg_211 : STD_LOGIC_VECTOR (14 downto 0);
    signal pt_cursor_load_reg_216 : STD_LOGIC_VECTOR (14 downto 0);
    signal pt_cursor_load_reg_216_pp0_iter3_reg : STD_LOGIC_VECTOR (14 downto 0);
    signal freePortTable_addr_2_reg_221 : STD_LOGIC_VECTOR (14 downto 0);
    signal freePortTable_addr_2_reg_221_pp0_iter3_reg : STD_LOGIC_VECTOR (14 downto 0);
    signal freePortTable_load_1_reg_236 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal zext_ln534_17_fu_161_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln534_fu_166_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln708_fu_170_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal add_ln691_fu_174_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_idle_pp0_0to3 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_block_pp0 : BOOLEAN;
    signal ap_predicate_op42_store_state3 : BOOLEAN;
    signal ap_enable_operation_42 : BOOLEAN;
    signal ap_enable_state3_pp0_iter2_stage0 : BOOLEAN;
    signal ap_predicate_op36_load_state3 : BOOLEAN;
    signal ap_enable_operation_36 : BOOLEAN;
    signal ap_predicate_op46_load_state4 : BOOLEAN;
    signal ap_enable_operation_46 : BOOLEAN;
    signal ap_enable_state4_pp0_iter3_stage0 : BOOLEAN;
    signal ap_predicate_op39_load_state3 : BOOLEAN;
    signal ap_enable_operation_39 : BOOLEAN;
    signal ap_predicate_op48_load_state4 : BOOLEAN;
    signal ap_enable_operation_48 : BOOLEAN;
    signal ap_predicate_op52_store_state5 : BOOLEAN;
    signal ap_enable_operation_52 : BOOLEAN;
    signal ap_enable_state5_pp0_iter4_stage0 : BOOLEAN;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component toe_top_free_port_table_freePortTable IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (14 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (0 downto 0);
        address1 : IN STD_LOGIC_VECTOR (14 downto 0);
        ce1 : IN STD_LOGIC;
        we1 : IN STD_LOGIC;
        d1 : IN STD_LOGIC_VECTOR (0 downto 0);
        q1 : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;



begin
    freePortTable_U : component toe_top_free_port_table_freePortTable
    generic map (
        DataWidth => 1,
        AddressRange => 32768,
        AddressWidth => 15)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => freePortTable_address0,
        ce0 => freePortTable_ce0,
        we0 => freePortTable_we0,
        d0 => ap_const_lv1_1,
        address1 => freePortTable_address1,
        ce1 => freePortTable_ce1,
        we1 => freePortTable_we1,
        d1 => ap_const_lv1_0,
        q1 => freePortTable_q1);





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
                elsif (((ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
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


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter4_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_i_287_reg_207 = ap_const_lv1_0) and (tmp_i_reg_194_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                freePortTable_addr_2_reg_221 <= zext_ln534_17_fu_161_p1(15 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                freePortTable_addr_2_reg_221_pp0_iter3_reg <= freePortTable_addr_2_reg_221;
                pt_cursor_load_reg_216 <= pt_cursor;
                pt_cursor_load_reg_216_pp0_iter3_reg <= pt_cursor_load_reg_216;
                tmp_i_287_reg_207_pp0_iter2_reg <= tmp_i_287_reg_207;
                tmp_i_287_reg_207_pp0_iter3_reg <= tmp_i_287_reg_207_pp0_iter2_reg;
                tmp_i_reg_194_pp0_iter2_reg <= tmp_i_reg_194_pp0_iter1_reg;
                tmp_i_reg_194_pp0_iter3_reg <= tmp_i_reg_194_pp0_iter2_reg;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (tmp_i_287_reg_207_pp0_iter2_reg = ap_const_lv1_1) and (tmp_i_reg_194_pp0_iter2_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                freePortTable_load_1_reg_236 <= freePortTable_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (tmp_i_287_reg_207_pp0_iter2_reg = ap_const_lv1_0) and (tmp_i_reg_194_pp0_iter2_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                freePortTable_load_reg_232 <= freePortTable_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                pt_cursor <= add_ln691_fu_174_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_predicate_op14_read_state2 = ap_const_boolean_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_V_reg_211 <= pt_portCheckUsed_req_fifo_dout;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_i_reg_194 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_i_287_reg_207 <= tmp_i_287_nbreadreq_fu_74_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_i_reg_194 <= tmp_i_nbreadreq_fu_60_p3;
                tmp_i_reg_194_pp0_iter1_reg <= tmp_i_reg_194;
                tmp_reg_198_pp0_iter1_reg <= tmp_reg_198;
                trunc_ln708_reg_202_pp0_iter1_reg <= trunc_ln708_reg_202;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_i_nbreadreq_fu_60_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_reg_198 <= sLookup2portTable_releasePort_dout(15 downto 15);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_i_nbreadreq_fu_60_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (tmp_fu_145_p3 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                trunc_ln708_reg_202 <= trunc_ln708_fu_153_p1;
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
    add_ln691_fu_174_p2 <= std_logic_vector(unsigned(pt_cursor) + unsigned(ap_const_lv15_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);

    ap_block_pp0_assign_proc : process(ap_CS_fsm, ap_block_pp0_stage0_subdone)
    begin
                ap_block_pp0 <= ((ap_ST_fsm_pp0_stage0 = ap_CS_fsm) and (ap_const_boolean_1 = ap_block_pp0_stage0_subdone));
    end process;

        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter4, sLookup2portTable_releasePort_empty_n, tmp_i_nbreadreq_fu_60_p3, pt_portCheckUsed_req_fifo_empty_n, ap_predicate_op14_read_state2, portTable2txApp_port_rsp_full_n, ap_predicate_op53_write_state5, pt_portCheckUsed_rsp_fifo_full_n, ap_predicate_op55_write_state5)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_predicate_op14_read_state2 = ap_const_boolean_1) and (pt_portCheckUsed_req_fifo_empty_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((ap_start = ap_const_logic_1) and ((ap_done_reg = ap_const_logic_1) or ((tmp_i_nbreadreq_fu_60_p3 = ap_const_lv1_1) and (sLookup2portTable_releasePort_empty_n = ap_const_logic_0)))) or ((ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (((pt_portCheckUsed_rsp_fifo_full_n = ap_const_logic_0) and (ap_predicate_op55_write_state5 = ap_const_boolean_1)) or ((ap_predicate_op53_write_state5 = ap_const_boolean_1) and (portTable2txApp_port_rsp_full_n = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter4, sLookup2portTable_releasePort_empty_n, tmp_i_nbreadreq_fu_60_p3, pt_portCheckUsed_req_fifo_empty_n, ap_predicate_op14_read_state2, portTable2txApp_port_rsp_full_n, ap_predicate_op53_write_state5, pt_portCheckUsed_rsp_fifo_full_n, ap_predicate_op55_write_state5)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_predicate_op14_read_state2 = ap_const_boolean_1) and (pt_portCheckUsed_req_fifo_empty_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((ap_start = ap_const_logic_1) and ((ap_done_reg = ap_const_logic_1) or ((tmp_i_nbreadreq_fu_60_p3 = ap_const_lv1_1) and (sLookup2portTable_releasePort_empty_n = ap_const_logic_0)))) or ((ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (((pt_portCheckUsed_rsp_fifo_full_n = ap_const_logic_0) and (ap_predicate_op55_write_state5 = ap_const_boolean_1)) or ((ap_predicate_op53_write_state5 = ap_const_boolean_1) and (portTable2txApp_port_rsp_full_n = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter4, sLookup2portTable_releasePort_empty_n, tmp_i_nbreadreq_fu_60_p3, pt_portCheckUsed_req_fifo_empty_n, ap_predicate_op14_read_state2, portTable2txApp_port_rsp_full_n, ap_predicate_op53_write_state5, pt_portCheckUsed_rsp_fifo_full_n, ap_predicate_op55_write_state5)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_done_reg = ap_const_logic_1) or ((ap_predicate_op14_read_state2 = ap_const_boolean_1) and (pt_portCheckUsed_req_fifo_empty_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((ap_start = ap_const_logic_1) and ((ap_done_reg = ap_const_logic_1) or ((tmp_i_nbreadreq_fu_60_p3 = ap_const_lv1_1) and (sLookup2portTable_releasePort_empty_n = ap_const_logic_0)))) or ((ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (((pt_portCheckUsed_rsp_fifo_full_n = ap_const_logic_0) and (ap_predicate_op55_write_state5 = ap_const_boolean_1)) or ((ap_predicate_op53_write_state5 = ap_const_boolean_1) and (portTable2txApp_port_rsp_full_n = ap_const_logic_0)))));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_done_reg, sLookup2portTable_releasePort_empty_n, tmp_i_nbreadreq_fu_60_p3)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((ap_done_reg = ap_const_logic_1) or ((tmp_i_nbreadreq_fu_60_p3 = ap_const_lv1_1) and (sLookup2portTable_releasePort_empty_n = ap_const_logic_0)));
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(pt_portCheckUsed_req_fifo_empty_n, ap_predicate_op14_read_state2)
    begin
                ap_block_state2_pp0_stage0_iter1 <= ((ap_predicate_op14_read_state2 = ap_const_boolean_1) and (pt_portCheckUsed_req_fifo_empty_n = ap_const_logic_0));
    end process;

        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state5_pp0_stage0_iter4_assign_proc : process(portTable2txApp_port_rsp_full_n, ap_predicate_op53_write_state5, pt_portCheckUsed_rsp_fifo_full_n, ap_predicate_op55_write_state5)
    begin
                ap_block_state5_pp0_stage0_iter4 <= (((pt_portCheckUsed_rsp_fifo_full_n = ap_const_logic_0) and (ap_predicate_op55_write_state5 = ap_const_boolean_1)) or ((ap_predicate_op53_write_state5 = ap_const_boolean_1) and (portTable2txApp_port_rsp_full_n = ap_const_logic_0)));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_enable_reg_pp0_iter4, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_enable_operation_36_assign_proc : process(ap_predicate_op36_load_state3)
    begin
                ap_enable_operation_36 <= (ap_predicate_op36_load_state3 = ap_const_boolean_1);
    end process;


    ap_enable_operation_39_assign_proc : process(ap_predicate_op39_load_state3)
    begin
                ap_enable_operation_39 <= (ap_predicate_op39_load_state3 = ap_const_boolean_1);
    end process;


    ap_enable_operation_42_assign_proc : process(ap_predicate_op42_store_state3)
    begin
                ap_enable_operation_42 <= (ap_predicate_op42_store_state3 = ap_const_boolean_1);
    end process;


    ap_enable_operation_46_assign_proc : process(ap_predicate_op46_load_state4)
    begin
                ap_enable_operation_46 <= (ap_predicate_op46_load_state4 = ap_const_boolean_1);
    end process;


    ap_enable_operation_48_assign_proc : process(ap_predicate_op48_load_state4)
    begin
                ap_enable_operation_48 <= (ap_predicate_op48_load_state4 = ap_const_boolean_1);
    end process;


    ap_enable_operation_52_assign_proc : process(ap_predicate_op52_store_state5)
    begin
                ap_enable_operation_52 <= (ap_predicate_op52_store_state5 = ap_const_boolean_1);
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start;

    ap_enable_state3_pp0_iter2_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter2)
    begin
                ap_enable_state3_pp0_iter2_stage0 <= ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_enable_state4_pp0_iter3_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter3)
    begin
                ap_enable_state4_pp0_iter3_stage0 <= ((ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_enable_state5_pp0_iter4_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter4)
    begin
                ap_enable_state5_pp0_iter4_stage0 <= ((ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_idle_pp0)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter4)
    begin
        if (((ap_enable_reg_pp0_iter4 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_0to3_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3)
    begin
        if (((ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0_0to3 <= ap_const_logic_1;
        else 
            ap_idle_pp0_0to3 <= ap_const_logic_0;
        end if; 
    end process;


    ap_predicate_op14_read_state2_assign_proc : process(tmp_i_reg_194, tmp_i_287_nbreadreq_fu_74_p3)
    begin
                ap_predicate_op14_read_state2 <= ((tmp_i_287_nbreadreq_fu_74_p3 = ap_const_lv1_1) and (tmp_i_reg_194 = ap_const_lv1_0));
    end process;


    ap_predicate_op36_load_state3_assign_proc : process(tmp_i_287_reg_207, tmp_i_reg_194_pp0_iter1_reg)
    begin
                ap_predicate_op36_load_state3 <= ((tmp_i_287_reg_207 = ap_const_lv1_0) and (tmp_i_reg_194_pp0_iter1_reg = ap_const_lv1_0));
    end process;


    ap_predicate_op39_load_state3_assign_proc : process(tmp_i_287_reg_207, tmp_i_reg_194_pp0_iter1_reg)
    begin
                ap_predicate_op39_load_state3 <= ((tmp_i_287_reg_207 = ap_const_lv1_1) and (tmp_i_reg_194_pp0_iter1_reg = ap_const_lv1_0));
    end process;


    ap_predicate_op42_store_state3_assign_proc : process(tmp_i_reg_194_pp0_iter1_reg, tmp_reg_198_pp0_iter1_reg)
    begin
                ap_predicate_op42_store_state3 <= ((tmp_reg_198_pp0_iter1_reg = ap_const_lv1_1) and (tmp_i_reg_194_pp0_iter1_reg = ap_const_lv1_1));
    end process;


    ap_predicate_op46_load_state4_assign_proc : process(tmp_i_reg_194_pp0_iter2_reg, tmp_i_287_reg_207_pp0_iter2_reg)
    begin
                ap_predicate_op46_load_state4 <= ((tmp_i_287_reg_207_pp0_iter2_reg = ap_const_lv1_0) and (tmp_i_reg_194_pp0_iter2_reg = ap_const_lv1_0));
    end process;


    ap_predicate_op48_load_state4_assign_proc : process(tmp_i_reg_194_pp0_iter2_reg, tmp_i_287_reg_207_pp0_iter2_reg)
    begin
                ap_predicate_op48_load_state4 <= ((tmp_i_287_reg_207_pp0_iter2_reg = ap_const_lv1_1) and (tmp_i_reg_194_pp0_iter2_reg = ap_const_lv1_0));
    end process;


    ap_predicate_op52_store_state5_assign_proc : process(tmp_i_reg_194_pp0_iter3_reg, tmp_i_287_reg_207_pp0_iter3_reg, freePortTable_load_reg_232, tmp_44_i_nbwritereq_fu_88_p3)
    begin
                ap_predicate_op52_store_state5 <= ((tmp_44_i_nbwritereq_fu_88_p3 = ap_const_lv1_1) and (freePortTable_load_reg_232 = ap_const_lv1_0) and (tmp_i_287_reg_207_pp0_iter3_reg = ap_const_lv1_0) and (tmp_i_reg_194_pp0_iter3_reg = ap_const_lv1_0));
    end process;


    ap_predicate_op53_write_state5_assign_proc : process(tmp_i_reg_194_pp0_iter3_reg, tmp_i_287_reg_207_pp0_iter3_reg, freePortTable_load_reg_232, tmp_44_i_nbwritereq_fu_88_p3)
    begin
                ap_predicate_op53_write_state5 <= ((tmp_44_i_nbwritereq_fu_88_p3 = ap_const_lv1_1) and (freePortTable_load_reg_232 = ap_const_lv1_0) and (tmp_i_287_reg_207_pp0_iter3_reg = ap_const_lv1_0) and (tmp_i_reg_194_pp0_iter3_reg = ap_const_lv1_0));
    end process;


    ap_predicate_op55_write_state5_assign_proc : process(tmp_i_reg_194_pp0_iter3_reg, tmp_i_287_reg_207_pp0_iter3_reg)
    begin
                ap_predicate_op55_write_state5 <= ((tmp_i_287_reg_207_pp0_iter3_reg = ap_const_lv1_1) and (tmp_i_reg_194_pp0_iter3_reg = ap_const_lv1_0));
    end process;


    ap_ready_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_reset_idle_pp0_assign_proc : process(ap_start, ap_idle_pp0_0to3)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_idle_pp0_0to3 = ap_const_logic_1))) then 
            ap_reset_idle_pp0 <= ap_const_logic_1;
        else 
            ap_reset_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    freePortTable_address0 <= freePortTable_addr_2_reg_221_pp0_iter3_reg;

    freePortTable_address1_assign_proc : process(ap_enable_reg_pp0_iter2, tmp_i_287_reg_207, ap_block_pp0_stage0, tmp_i_reg_194_pp0_iter1_reg, tmp_reg_198_pp0_iter1_reg, zext_ln534_17_fu_161_p1, zext_ln534_fu_166_p1, zext_ln708_fu_170_p1)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then
            if (((tmp_reg_198_pp0_iter1_reg = ap_const_lv1_1) and (tmp_i_reg_194_pp0_iter1_reg = ap_const_lv1_1))) then 
                freePortTable_address1 <= zext_ln708_fu_170_p1(15 - 1 downto 0);
            elsif (((tmp_i_287_reg_207 = ap_const_lv1_1) and (tmp_i_reg_194_pp0_iter1_reg = ap_const_lv1_0))) then 
                freePortTable_address1 <= zext_ln534_fu_166_p1(15 - 1 downto 0);
            elsif (((tmp_i_287_reg_207 = ap_const_lv1_0) and (tmp_i_reg_194_pp0_iter1_reg = ap_const_lv1_0))) then 
                freePortTable_address1 <= zext_ln534_17_fu_161_p1(15 - 1 downto 0);
            else 
                freePortTable_address1 <= "XXXXXXXXXXXXXXX";
            end if;
        else 
            freePortTable_address1 <= "XXXXXXXXXXXXXXX";
        end if; 
    end process;


    freePortTable_ce0_assign_proc : process(ap_enable_reg_pp0_iter4, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            freePortTable_ce0 <= ap_const_logic_1;
        else 
            freePortTable_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    freePortTable_ce1_assign_proc : process(ap_enable_reg_pp0_iter2, tmp_i_287_reg_207, ap_block_pp0_stage0_11001, tmp_i_reg_194_pp0_iter1_reg, tmp_reg_198_pp0_iter1_reg)
    begin
        if ((((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (tmp_reg_198_pp0_iter1_reg = ap_const_lv1_1) and (tmp_i_reg_194_pp0_iter1_reg = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)) or ((tmp_i_287_reg_207 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (tmp_i_reg_194_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)) or ((tmp_i_287_reg_207 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (tmp_i_reg_194_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)))) then 
            freePortTable_ce1 <= ap_const_logic_1;
        else 
            freePortTable_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    freePortTable_we0_assign_proc : process(ap_enable_reg_pp0_iter4, tmp_i_reg_194_pp0_iter3_reg, tmp_i_287_reg_207_pp0_iter3_reg, freePortTable_load_reg_232, tmp_44_i_nbwritereq_fu_88_p3, ap_block_pp0_stage0_11001)
    begin
        if (((tmp_44_i_nbwritereq_fu_88_p3 = ap_const_lv1_1) and (freePortTable_load_reg_232 = ap_const_lv1_0) and (tmp_i_287_reg_207_pp0_iter3_reg = ap_const_lv1_0) and (tmp_i_reg_194_pp0_iter3_reg = ap_const_lv1_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            freePortTable_we0 <= ap_const_logic_1;
        else 
            freePortTable_we0 <= ap_const_logic_0;
        end if; 
    end process;


    freePortTable_we1_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001, tmp_i_reg_194_pp0_iter1_reg, tmp_reg_198_pp0_iter1_reg)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (tmp_reg_198_pp0_iter1_reg = ap_const_lv1_1) and (tmp_i_reg_194_pp0_iter1_reg = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            freePortTable_we1 <= ap_const_logic_1;
        else 
            freePortTable_we1 <= ap_const_logic_0;
        end if; 
    end process;


    portTable2txApp_port_rsp_blk_n_assign_proc : process(ap_enable_reg_pp0_iter4, portTable2txApp_port_rsp_full_n, ap_predicate_op53_write_state5, ap_block_pp0_stage0)
    begin
        if (((ap_predicate_op53_write_state5 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            portTable2txApp_port_rsp_blk_n <= portTable2txApp_port_rsp_full_n;
        else 
            portTable2txApp_port_rsp_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    portTable2txApp_port_rsp_din <= (ap_const_lv1_1 & pt_cursor_load_reg_216_pp0_iter3_reg);

    portTable2txApp_port_rsp_write_assign_proc : process(ap_enable_reg_pp0_iter4, ap_predicate_op53_write_state5, ap_block_pp0_stage0_11001)
    begin
        if (((ap_predicate_op53_write_state5 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            portTable2txApp_port_rsp_write <= ap_const_logic_1;
        else 
            portTable2txApp_port_rsp_write <= ap_const_logic_0;
        end if; 
    end process;


    pt_portCheckUsed_req_fifo_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, pt_portCheckUsed_req_fifo_empty_n, ap_predicate_op14_read_state2, ap_block_pp0_stage0)
    begin
        if (((ap_predicate_op14_read_state2 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            pt_portCheckUsed_req_fifo_blk_n <= pt_portCheckUsed_req_fifo_empty_n;
        else 
            pt_portCheckUsed_req_fifo_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    pt_portCheckUsed_req_fifo_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_predicate_op14_read_state2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_predicate_op14_read_state2 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            pt_portCheckUsed_req_fifo_read <= ap_const_logic_1;
        else 
            pt_portCheckUsed_req_fifo_read <= ap_const_logic_0;
        end if; 
    end process;


    pt_portCheckUsed_rsp_fifo_blk_n_assign_proc : process(ap_enable_reg_pp0_iter4, pt_portCheckUsed_rsp_fifo_full_n, ap_predicate_op55_write_state5, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_predicate_op55_write_state5 = ap_const_boolean_1))) then 
            pt_portCheckUsed_rsp_fifo_blk_n <= pt_portCheckUsed_rsp_fifo_full_n;
        else 
            pt_portCheckUsed_rsp_fifo_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    pt_portCheckUsed_rsp_fifo_din <= freePortTable_load_1_reg_236;

    pt_portCheckUsed_rsp_fifo_write_assign_proc : process(ap_enable_reg_pp0_iter4, ap_predicate_op55_write_state5, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op55_write_state5 = ap_const_boolean_1))) then 
            pt_portCheckUsed_rsp_fifo_write <= ap_const_logic_1;
        else 
            pt_portCheckUsed_rsp_fifo_write <= ap_const_logic_0;
        end if; 
    end process;


    sLookup2portTable_releasePort_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_pp0_stage0, sLookup2portTable_releasePort_empty_n, tmp_i_nbreadreq_fu_60_p3, ap_block_pp0_stage0)
    begin
        if (((tmp_i_nbreadreq_fu_60_p3 = ap_const_lv1_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_done_reg = ap_const_logic_0))) then 
            sLookup2portTable_releasePort_blk_n <= sLookup2portTable_releasePort_empty_n;
        else 
            sLookup2portTable_releasePort_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    sLookup2portTable_releasePort_read_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, tmp_i_nbreadreq_fu_60_p3, ap_block_pp0_stage0_11001)
    begin
        if (((tmp_i_nbreadreq_fu_60_p3 = ap_const_lv1_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            sLookup2portTable_releasePort_read <= ap_const_logic_1;
        else 
            sLookup2portTable_releasePort_read <= ap_const_logic_0;
        end if; 
    end process;

    tmp_44_i_nbwritereq_fu_88_p3 <= (0=>portTable2txApp_port_rsp_full_n, others=>'-');
    tmp_fu_145_p3 <= sLookup2portTable_releasePort_dout(15 downto 15);
    tmp_i_287_nbreadreq_fu_74_p3 <= (0=>(pt_portCheckUsed_req_fifo_empty_n), others=>'-');
    tmp_i_nbreadreq_fu_60_p3 <= (0=>(sLookup2portTable_releasePort_empty_n), others=>'-');
    trunc_ln708_fu_153_p1 <= sLookup2portTable_releasePort_dout(15 - 1 downto 0);
    zext_ln534_17_fu_161_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(pt_cursor),64));
    zext_ln534_fu_166_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_V_reg_211),64));
    zext_ln708_fu_170_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln708_reg_202_pp0_iter1_reg),64));
end behav;