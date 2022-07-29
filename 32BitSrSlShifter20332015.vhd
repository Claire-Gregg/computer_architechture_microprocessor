----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2021 12:43:21
-- Design Name: 
-- Module Name: shifter_32bit - Behavioral
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

entity shifter_32bit is
    Port ( B : in STD_LOGIC_VECTOR (31 downto 0);
           IL : in STD_LOGIC;
           IR : in STD_LOGIC;
           S : in STD_LOGIC_VECTOR (1 downto 0);
           H : out STD_LOGIC_VECTOR (31 downto 0));
end shifter_32bit;

architecture Behavioral of shifter_32bit is
    component mux_4to1_1bit
    Port ( inputs : in STD_LOGIC_vector (3 downto 0);
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           output : out STD_LOGIC);
    end component;
begin

        Bit0: mux_4to1_1bit 
    port map(
        inputs(0) => B(0),
        inputs(1) => B(1),
        inputs(2) => IL,
        inputs(3) => '0',
        Sel => S,
        output => H(0) 
    );    Bit1: mux_4to1_1bit 
    port map(
        inputs(0) => B(1),
        inputs(1) => B(2),
        inputs(2) => B(0),
        inputs(3) => '0',
        Sel => S,
        output => H(1) 
    );    Bit2: mux_4to1_1bit 
    port map(
        inputs(0) => B(2),
        inputs(1) => B(3),
        inputs(2) => B(1),
        inputs(3) => '0',
        Sel => S,
        output => H(2) 
    );    Bit3: mux_4to1_1bit 
    port map(
        inputs(0) => B(3),
        inputs(1) => B(4),
        inputs(2) => B(2),
        inputs(3) => '0',
        Sel => S,
        output => H(3) 
    );    Bit4: mux_4to1_1bit 
    port map(
        inputs(0) => B(4),
        inputs(1) => B(5),
        inputs(2) => B(3),
        inputs(3) => '0',
        Sel => S,
        output => H(4) 
    );    Bit5: mux_4to1_1bit 
    port map(
        inputs(0) => B(5),
        inputs(1) => B(6),
        inputs(2) => B(4),
        inputs(3) => '0',
        Sel => S,
        output => H(5) 
    );    Bit6: mux_4to1_1bit 
    port map(
        inputs(0) => B(6),
        inputs(1) => B(7),
        inputs(2) => B(5),
        inputs(3) => '0',
        Sel => S,
        output => H(6) 
    );    Bit7: mux_4to1_1bit 
    port map(
        inputs(0) => B(7),
        inputs(1) => B(8),
        inputs(2) => B(6),
        inputs(3) => '0',
        Sel => S,
        output => H(7) 
    );    Bit8: mux_4to1_1bit 
    port map(
        inputs(0) => B(8),
        inputs(1) => B(9),
        inputs(2) => B(7),
        inputs(3) => '0',
        Sel => S,
        output => H(8) 
    );    Bit9: mux_4to1_1bit 
    port map(
        inputs(0) => B(9),
        inputs(1) => B(10),
        inputs(2) => B(8),
        inputs(3) => '0',
        Sel => S,
        output => H(9) 
    );    Bit10: mux_4to1_1bit 
    port map(
        inputs(0) => B(10),
        inputs(1) => B(11),
        inputs(2) => B(9),
        inputs(3) => '0',
        Sel => S,
        output => H(10) 
    );    Bit11: mux_4to1_1bit 
    port map(
        inputs(0) => B(11),
        inputs(1) => B(12),
        inputs(2) => B(10),
        inputs(3) => '0',
        Sel => S,
        output => H(11) 
    );    Bit12: mux_4to1_1bit 
    port map(
        inputs(0) => B(12),
        inputs(1) => B(13),
        inputs(2) => B(11),
        inputs(3) => '0',
        Sel => S,
        output => H(12) 
    );    Bit13: mux_4to1_1bit 
    port map(
        inputs(0) => B(13),
        inputs(1) => B(14),
        inputs(2) => B(12),
        inputs(3) => '0',
        Sel => S,
        output => H(13) 
    );    Bit14: mux_4to1_1bit 
    port map(
        inputs(0) => B(14),
        inputs(1) => B(15),
        inputs(2) => B(13),
        inputs(3) => '0',
        Sel => S,
        output => H(14) 
    );    Bit15: mux_4to1_1bit 
    port map(
        inputs(0) => B(15),
        inputs(1) => B(16),
        inputs(2) => B(14),
        inputs(3) => '0',
        Sel => S,
        output => H(15) 
    );    Bit16: mux_4to1_1bit 
    port map(
        inputs(0) => B(16),
        inputs(1) => B(17),
        inputs(2) => B(15),
        inputs(3) => '0',
        Sel => S,
        output => H(16) 
    );    Bit17: mux_4to1_1bit 
    port map(
        inputs(0) => B(17),
        inputs(1) => B(18),
        inputs(2) => B(16),
        inputs(3) => '0',
        Sel => S,
        output => H(17) 
    );    Bit18: mux_4to1_1bit 
    port map(
        inputs(0) => B(18),
        inputs(1) => B(19),
        inputs(2) => B(17),
        inputs(3) => '0',
        Sel => S,
        output => H(18) 
    );    Bit19: mux_4to1_1bit 
    port map(
        inputs(0) => B(19),
        inputs(1) => B(20),
        inputs(2) => B(18),
        inputs(3) => '0',
        Sel => S,
        output => H(19) 
    );    Bit20: mux_4to1_1bit 
    port map(
        inputs(0) => B(20),
        inputs(1) => B(21),
        inputs(2) => B(19),
        inputs(3) => '0',
        Sel => S,
        output => H(20) 
    );    Bit21: mux_4to1_1bit 
    port map(
        inputs(0) => B(21),
        inputs(1) => B(22),
        inputs(2) => B(20),
        inputs(3) => '0',
        Sel => S,
        output => H(21) 
    );    Bit22: mux_4to1_1bit 
    port map(
        inputs(0) => B(22),
        inputs(1) => B(23),
        inputs(2) => B(21),
        inputs(3) => '0',
        Sel => S,
        output => H(22) 
    );    Bit23: mux_4to1_1bit 
    port map(
        inputs(0) => B(23),
        inputs(1) => B(24),
        inputs(2) => B(22),
        inputs(3) => '0',
        Sel => S,
        output => H(23) 
    );    Bit24: mux_4to1_1bit 
    port map(
        inputs(0) => B(24),
        inputs(1) => B(25),
        inputs(2) => B(23),
        inputs(3) => '0',
        Sel => S,
        output => H(24) 
    );    Bit25: mux_4to1_1bit 
    port map(
        inputs(0) => B(25),
        inputs(1) => B(26),
        inputs(2) => B(24),
        inputs(3) => '0',
        Sel => S,
        output => H(25) 
    );    Bit26: mux_4to1_1bit 
    port map(
        inputs(0) => B(26),
        inputs(1) => B(27),
        inputs(2) => B(25),
        inputs(3) => '0',
        Sel => S,
        output => H(26) 
    );    Bit27: mux_4to1_1bit 
    port map(
        inputs(0) => B(27),
        inputs(1) => B(28),
        inputs(2) => B(26),
        inputs(3) => '0',
        Sel => S,
        output => H(27) 
    );    Bit28: mux_4to1_1bit 
    port map(
        inputs(0) => B(28),
        inputs(1) => B(29),
        inputs(2) => B(27),
        inputs(3) => '0',
        Sel => S,
        output => H(28) 
    );    Bit29: mux_4to1_1bit 
    port map(
        inputs(0) => B(29),
        inputs(1) => B(30),
        inputs(2) => B(28),
        inputs(3) => '0',
        Sel => S,
        output => H(29) 
    );    Bit30: mux_4to1_1bit 
    port map(
        inputs(0) => B(30),
        inputs(1) => B(31),
        inputs(2) => B(29),
        inputs(3) => '0',
        Sel => S,
        output => H(30) 
    );    Bit31: mux_4to1_1bit 
    port map(
        inputs(0) => B(31),
        inputs(1) => IR,
        inputs(2) => B(30),
        inputs(3) => '0',
        Sel => S,
        output => H(31) 
    );


end Behavioral;
