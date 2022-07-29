----------------------------------------------------------------------------------
-- Company:
-- Engineer: Claire Gregg
--
-- Create Date: 05.10.2021 10:22:34
-- Module Name: decoder_5to32 - Behavioral
-- Project Name: register file
-- Description:
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use ieee.std_logic_arith .all;

entity decoder_5to32 is
    Port ( Address : in STD_LOGIC_VECTOR (4 downto 0);
           Q : out STD_LOGIC_VECTOR (31 downto 0));
end decoder_5to32;

architecture Behavioral of decoder_5to32 is

begin                                                                                                                      --BIT 43210
Q(0) <= ((not Address(0)) and (not Address(1)) and (not Address(2)) and (not Address(3)) and (not Address(4))) after 2ns; --q0 = 00000
Q(1) <= ((Address(0)) and (not Address(1)) and (not Address(2)) and (not Address(3)) and (not Address(4))) after 2ns;     --q1 = 00001
Q(2) <= ((not Address(0)) and (Address(1)) and (not Address(2)) and (not Address(3)) and (not Address(4))) after 2ns;     --q2 = 00010
Q(3) <= ((Address(0)) and (Address(1)) and (not Address(2)) and (not Address(3)) and (not Address(4))) after 2ns;         --q3 = 00011
Q(4) <= ((not Address(0)) and (not Address(1)) and (Address(2)) and (not Address(3)) and (not Address(4))) after 2ns;     --q4 = 00100
Q(5) <= ((Address(0)) and (not Address(1)) and (Address(2)) and (not Address(3)) and (not Address(4))) after 2ns;         --q5 = 00101
Q(6) <= ((not Address(0)) and (Address(1)) and (Address(2)) and (not Address(3)) and (not Address(4))) after 2ns;         --q6 = 00110
Q(7) <= ((Address(0)) and (Address(1)) and (Address(2)) and (not Address(3)) and (not Address(4))) after 2ns;             --q7 = 00111
Q(8) <= ((not Address(0)) and (not Address(1)) and (not Address(2)) and (Address(3)) and (not Address(4))) after 2ns;     --q8 = 01000
Q(9) <= ((Address(0)) and (not Address(1)) and (not Address(2)) and (Address(3)) and (not Address(4))) after 2ns;         --q9 = 01001
Q(10) <= ((not Address(0)) and (Address(1)) and (not Address(2)) and (Address(3)) and (not Address(4))) after 2ns;        --q10 = 01010
Q(11) <= ((Address(0)) and (Address(1)) and (not Address(2)) and (Address(3)) and (not Address(4))) after 2ns;            --q11 = 01011
Q(12) <= ((not Address(0)) and (not Address(1)) and (Address(2)) and (Address(3)) and (not Address(4))) after 2ns;        --q12 = 01100
Q(13) <= ((Address(0)) and (not Address(1)) and (Address(2)) and (Address(3)) and (not Address(4))) after 2ns;            --q13 = 01101
Q(14) <= ((not Address(0)) and (Address(1)) and (Address(2)) and (Address(3)) and (not Address(4))) after 2ns;            --q14 = 01110
Q(15) <= ((Address(0)) and (Address(1)) and (Address(2)) and (Address(3)) and (not Address(4))) after 2ns;                --q15 = 01111
Q(16) <= ((not Address(0)) and (not Address(1)) and (not Address(2)) and (not Address(3)) and (Address(4))) after 2ns;    --q16 = 10000
Q(17) <= ((Address(0)) and (not Address(1)) and (not Address(2)) and (not Address(3)) and (Address(4))) after 2ns;        --q17 = 10001
Q(18) <= ((not Address(0)) and (Address(1)) and (not Address(2)) and (not Address(3)) and (Address(4))) after 2ns;        --q18 = 10010
Q(19) <= ((Address(0)) and (Address(1)) and (not Address(2)) and (not Address(3)) and (Address(4))) after 2ns;            --q19 = 10011
Q(20) <= ((not Address(0)) and (not Address(1)) and (Address(2)) and (not Address(3)) and (Address(4))) after 2ns;        --q20 = 10100
Q(21) <= ((Address(0)) and (not Address(1)) and (Address(2)) and (not Address(3)) and (Address(4))) after 2ns;            --q21 = 10101
Q(22) <= ((not Address(0)) and (Address(1)) and (Address(2)) and (not Address(3)) and (Address(4))) after 2ns;            --q22 = 10110
Q(23) <= ((Address(0)) and (Address(1)) and (Address(2)) and (not Address(3)) and (Address(4))) after 2ns;                --q23 = 10111
Q(24) <= ((not Address(0)) and (not Address(1)) and (not Address(2)) and (Address(3)) and (Address(4))) after 2ns;        --q24 = 11000
Q(25) <= ((Address(0)) and (not Address(1)) and (not Address(2)) and (Address(3)) and (Address(4))) after 2ns;            --q25 = 11001
Q(26) <= ((not Address(0)) and (Address(1)) and (not Address(2)) and (Address(3)) and (Address(4))) after 2ns;            --q26 = 11010
Q(27) <= ((Address(0)) and (Address(1)) and (not Address(2)) and (Address(3)) and (Address(4))) after 2ns;                --q27 = 11011
Q(28) <= ((not Address(0)) and (not Address(1)) and (Address(2)) and (Address(3)) and (Address(4))) after 2ns;            --q28 = 11100
Q(29) <= ((Address(0)) and (not Address(1)) and (Address(2)) and (Address(3)) and (Address(4))) after 2ns;                --q29 = 11101
Q(30) <= ((not Address(0)) and (Address(1)) and (Address(2)) and (Address(3)) and (Address(4))) after 2ns;                --q30 = 11110
Q(31) <= ((Address(0)) and (Address(1)) and (Address(2)) and (Address(3)) and (Address(4))) after 2ns;                    --q31 = 11111
end Behavioral;
