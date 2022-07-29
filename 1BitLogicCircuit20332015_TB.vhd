----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.11.2021 12:50:38
-- Design Name: 
-- Module Name: logic_circuit_TB - Behavioral
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

entity logic_circuit_TB is
--  Port ( );
end logic_circuit_TB;

architecture Behavioral of logic_circuit_TB is
    -- Component
    component logic_circuit_1bit
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           S : in STD_LOGIC_VECTOR (1 downto 0);
           G : out STD_LOGIC);
    end component;
    
    -- Inputs
    signal A, B: std_logic;
    signal S: std_logic_vector(1 downto 0);
    
    -- Outputs
    signal G: std_logic;
    
begin
    uut: logic_circuit_1bit
    port map (
        A => A,
        B => B,
        S => S,
        G => G
    );
    
    stim_process: process
    begin
        -- Testing truth table for AND
        s <= "00";
        A <= '0';
        B <= '0';
        wait for 8ns;
        A <= '0';
        B <= '1';
        wait for 8ns;
        A <= '1';
        B <= '0';
        wait for 8ns;
        A <= '1';
        B <= '1';
        wait for 16ns;
        
        -- Testing truth table for OR
        s <= "01";
        A <= '0';
        B <= '0';
        wait for 8ns;
        A <= '0';
        B <= '1';
        wait for 8ns;
        A <= '1';
        B <= '0';
        wait for 8ns;
        A <= '1';
        B <= '1';
        wait for 16ns;
        
        -- Testing truth table for XOR
        s <= "10";
        A <= '0';
        B <= '0';
        wait for 8ns;
        A <= '0';
        B <= '1';
        wait for 8ns;
        A <= '1';
        B <= '0';
        wait for 8ns;
        A <= '1';
        B <= '1';
        wait for 16ns;
        
        -- Testing truth table for NOT
        s <= "11";
        A <= '0';
        wait for 8ns;
        A <= '1';
        wait for 32ns;
    end process;
end Behavioral;
