----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.10.2021 10:38:20
-- Design Name: 
-- Module Name: mux_4to1_1bit - Behavioral
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

entity mux_4to1_1bit is
    Port ( inputs : in STD_LOGIC_vector (3 downto 0);
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           output : out STD_LOGIC);
end mux_4to1_1bit;

architecture Behavioral of mux_4to1_1bit is
    constant gate_delay: Time := 2ns;
begin
 with sel select
    output <= inputs(0) after gate_delay when "00",
              inputs(1) after gate_delay when "01",
              inputs(2) after gate_delay when "10",
              inputs(3) after gate_delay when "11",
              '0' when others;

end Behavioral;
