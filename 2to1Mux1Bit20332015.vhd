----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.10.2021 10:22:05
-- Design Name: 
-- Module Name: mux_2to1_1bit - Behavioral
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

entity mux_2to1_1bit is
    Port ( 
        in0, in1, s: in std_logic; 
        z: out std_logic
        );
end mux_2to1_1bit;

architecture Behavioral of mux_2to1_1bit is
    constant gate_delay: Time := 2ns;
begin
    z <= in0 after gate_delay when S='0' else
         in1 after gate_delay when s='1' else
         '0' after gate_delay;

end Behavioral;
