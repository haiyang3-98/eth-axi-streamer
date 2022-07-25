-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
--
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity toe_top_state_table_state_table_1_ram is 
    generic(
            MEM_TYPE    : string := "block"; 
            DWIDTH     : integer := 32; 
            AWIDTH     : integer := 10; 
            MEM_SIZE    : integer := 1000
    ); 
    port (
          addr1     : in std_logic_vector(AWIDTH-1 downto 0); 
          ce1       : in std_logic; 
          d1        : in std_logic_vector(DWIDTH-1 downto 0); 
          we1       : in std_logic; 
          q1        : out std_logic_vector(DWIDTH-1 downto 0);
          clk        : in std_logic 
    ); 
end entity; 


architecture rtl of toe_top_state_table_state_table_1_ram is 

signal addr1_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
shared variable ram : mem_array := (others=>(others=>'0'));

attribute syn_ramstyle : string; 
attribute syn_ramstyle of ram : variable is "block_ram";
attribute ram_style : string;
attribute ram_style of ram : variable is MEM_TYPE;

begin 


memory_access_guard_1: process (addr1) 
begin
      addr1_tmp <= addr1;
--synthesis translate_off
      if (CONV_INTEGER(addr1) > mem_size-1) then
           addr1_tmp <= (others => '0');
      else 
           addr1_tmp <= addr1;
      end if;
--synthesis translate_on
end process;

p_memory_access_1: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce1 = '1') then 
            q1 <= ram(CONV_INTEGER(addr1_tmp));
            if (we1 = '1') then 
                ram(CONV_INTEGER(addr1_tmp)) := d1; 
            end if;
        end if;
    end if;
end process;


end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity toe_top_state_table_state_table_1 is
    generic (
        DataWidth : INTEGER := 32;
        AddressRange : INTEGER := 1000;
        AddressWidth : INTEGER := 10);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address1 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce1 : IN STD_LOGIC;
        we1 : IN STD_LOGIC;
        d1 : IN STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        q1 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of toe_top_state_table_state_table_1 is
    component toe_top_state_table_state_table_1_ram is
        port (
            clk : IN STD_LOGIC;
            addr1 : IN STD_LOGIC_VECTOR;
            ce1 : IN STD_LOGIC;
            we1 : IN STD_LOGIC;
            d1 : IN STD_LOGIC_VECTOR;
            q1 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    toe_top_state_table_state_table_1_ram_U :  component toe_top_state_table_state_table_1_ram
    port map (
        clk => clk,
        addr1 => address1,
        ce1 => ce1,
        we1 => we1,
        d1 => d1,
        q1 => q1);

end architecture;


