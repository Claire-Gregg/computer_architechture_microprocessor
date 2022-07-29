----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.11.2021 11:37:33
-- Design Name: 
-- Module Name: datapath - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity datapath is
    Port ( 
        D_address, A_address, B_address,FS: in std_logic_vector(4 downto 0);
        constant_in, data_in: in  std_logic_vector (31 downto 0);
        RW, MB, MD, Clk: in  std_logic;
        Address_out, Data_out: inout std_logic_vector (31 downto 0);
        V, C, N, Z: inout std_logic
    );
end datapath;

architecture Behavioral of datapath is
    -- Component declarations
    component reg_file
    Port (
        A_select, B_select: in std_logic_vector(4 downto 0);
        des_select_32: in std_logic_vector(4 downto 0);
        data: in std_logic_vector(31 downto 0);
        clk, RW: in std_logic;
        A_output, B_output: out std_logic_vector (31 downto 0)
    );
    end component;
    
    component b_databus_32bit
    Port ( dataIn : in STD_LOGIC_VECTOR (31 downto 0);
           dataB : in STD_LOGIC_VECTOR (31 downto 0);
           muxBSelect: in std_logic;
           busB : out STD_LOGIC_VECTOR (31 downto 0)
           );
    end component;
    
    component function_unit
    Port ( A, B : in STD_LOGIC_VECTOR (31 downto 0);
           FS : in STD_LOGIC_VECTOR (4 downto 0);
           output : out STD_LOGIC_VECTOR (31 downto 0);
           C: inout std_logic;
           V, N, Z: out STD_LOGIC);
    end component;
    
    component mux_2to1_32bit
    Port ( in0 : in STD_LOGIC_VECTOR (31 downto 0);
           in1 : in STD_LOGIC_VECTOR (31 downto 0);
           s : in STD_LOGIC;
           z : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    -- Internal signals
    signal B_data, function_out, data: std_logic_vector (31 downto 0);
begin

    Register_File: reg_file
    port map (
        A_select => A_address,
        B_select => B_address,
        des_select_32 => D_address,
        data => data,
        clk => Clk,
        RW => RW,
        A_output => Address_out,
        B_output => B_data
    );
    
    
    B_Selector: b_databus_32bit
    port map (
        dataIn => constant_in,
        dataB => B_data,
        muxBSelect => MB,
        busB => Data_out
    );
    
    Functional_Unit: function_unit
    port map (
        A => Address_out,
        B => Data_out,
        FS => FS,
        output => function_out,
        C => C,
        V => V,
        N => N, 
        Z => Z
    );
    
    D_selector: mux_2to1_32bit
    port map (
        in0 => function_out,
        in1 => data_in,
        s => MD,
        z => data
    );


end Behavioral;
