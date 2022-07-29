----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.10.2021 12:33:11
-- Design Name: 
-- Module Name: b_databus_32bit - Behavioral
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

entity b_databus_32bit is
    Port ( dataIn : in STD_LOGIC_VECTOR (31 downto 0);
           dataB : in STD_LOGIC_VECTOR (31 downto 0);
           muxBSelect: in std_logic;
           busB : out STD_LOGIC_VECTOR (31 downto 0)
           );
end b_databus_32bit;

architecture Behavioral of b_databus_32bit is

    --component 2 to 1 multiplexor
    component mux_2to1_32bit
    port (
        in0 : in STD_LOGIC_VECTOR (31 downto 0);
        in1 : in STD_LOGIC_VECTOR (31 downto 0);
        s : in STD_LOGIC;
        z : out STD_LOGIC_VECTOR (31 downto 0)
   );
   end component;
begin
    --port map
    muxB: mux_2to1_32bit port map (
        in0 => dataB,
        in1 => dataIn,
        s => muxBSelect,
        z => busB
    );
end Behavioral;
