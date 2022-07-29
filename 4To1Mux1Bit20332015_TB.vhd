----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.11.2021 20:56:05
-- Design Name: 
-- Module Name: mux_4to1_1bit_TB - Behavioral
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

entity mux_4to1_1bit_TB is
--  Port ( );
end mux_4to1_1bit_TB;

architecture Behavioral of mux_4to1_1bit_TB is
    component mux_4to1_1bit
        Port ( inputs : in STD_LOGIC_vector (3 downto 0);
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           output : out STD_LOGIC);
    end component;

    -- Inputs
    signal inputs: std_logic_vector (3 downto 0);
    signal sel: std_logic_vector (1 downto 0);
    
    
    -- Output
    signal output: std_logic; 
begin
    uut: mux_4to1_1bit
    port map(
        inputs => inputs,
        sel => sel,
        output => output
    );
    
    stim_proc: process
    begin
    
    inputs <= "0101";
    
    sel <= "00";
    wait for 4ns;
    
    sel <= "01";
    wait for 4ns;
    
    sel <= "10";
    wait for 4ns;
    
    sel <= "11";
    wait for 16ns;
    
    end process;
end Behavioral;
