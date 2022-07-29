----------------------------------------------------------------------------------
-- Engineer: Claire Gregg
-- 
-- Create Date: 05.10.2021 14:12:28
-- Module Name: mux_2to1_32bit_tb - Behavioral
-- Project Name: register file
-- Description: 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_2to1_32bit_tb is
end mux_2to1_32bit_tb;

architecture Behavioral of mux_2to1_32bit_tb is

    -- Component Declaration for the Unit Under Test (UUT)
    component mux_2to1_32bit
        Port ( in0 : in STD_LOGIC_VECTOR (31 downto 0);
           in1 : in STD_LOGIC_VECTOR (31 downto 0);
           s : in STD_LOGIC;
           z : out STD_LOGIC_VECTOR (31 downto 0)
        );
    end component;        
    
    -- Inputs
    signal in0: std_logic_vector (31 downto 0); 
    signal in1: std_logic_vector (31 downto 0);
    signal s: std_logic;
    
    
    -- Output
    signal z: std_logic_vector (31 downto 0);
begin

    uut : mux_2to1_32bit port map (
        in0 => in0,
        in1 => in1,
        s => s,
        z => z
    );
    
    stim_proc: process
    begin
        in0 <= "00010010001101000101011001111000";
		in1 <= "10000111011001010100001100100001";
		wait for 10ns;
		s <= '0';
		wait for 10ns;
		s <= '1';
    end process;

end Behavioral;
