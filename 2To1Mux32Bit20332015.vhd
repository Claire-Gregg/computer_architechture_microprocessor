----------------------------------------------------------------------------------
-- Engineer: Claire Gregg
--
-- Create Date: 05.10.2021 14:12:28
-- Design Name:
-- Module Name: mux_2to1_32bit - Behavioral
-- Project Name: register file
-- Description:
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity mux_2to1_32bit is
    Port ( in0 : in STD_LOGIC_VECTOR (31 downto 0);
           in1 : in STD_LOGIC_VECTOR (31 downto 0);
           s : in STD_LOGIC;
           z : out STD_LOGIC_VECTOR (31 downto 0));
end mux_2to1_32bit;

architecture Behavioral of mux_2to1_32bit is

begin
z <= in0 after 2ns when S='0' else
     in1 after 2ns when s='1' else
     "00000000000000000000000000000000" after 2ns;
end Behavioral;
