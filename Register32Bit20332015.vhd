----------------------------------------------------------------------------------
-- Engineer: Claire Gregg
--
-- Create Date: 11.10.2021 14:12:55
-- Module Name: reg_32bit - Behavioral
-- Project Name: register file
-- Description:
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg_32bit is
    Port ( reg_Data : in STD_LOGIC_VECTOR (31 downto 0);
           load, clk, RW : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (31 downto 0));
end reg_32bit;

architecture Behavioral of reg_32bit is

begin

process(clk)
begin
    if (rising_edge(clk)) then
        if load='1' then
            if RW='1' then
                Q <= reg_Data after 5ns;
            end if;
        end if;
    end if;
end process;
end Behavioral;
