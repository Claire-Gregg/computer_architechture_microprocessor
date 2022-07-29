----------------------------------------------------------------------------------
-- Engineer: Claire Gregg
--
-- Create Date: 11.10.2021 12:31:16
-- Module Name: mux_32to1_32bit - Behavioral
-- Project Name: register file
-- Description:
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_32to1_32bit is
    Port ( sel : in STD_LOGIC_VECTOR (4 downto 0);
           i0, i1, i2, i3, i4, i5, i6, i7, i8,
           i9, i10, i11, i12, i13, i14, i15,
           i16, i17, i18, i19, i20, i21, i22,
           i23, i24, i25, i26, i27, i28, i29,
           i30, i31 : in STD_LOGIC_VECTOR (31 downto 0);
           output : out STD_LOGIC_VECTOR (31 downto 0));
end mux_32to1_32bit;

architecture Behavioral of mux_32to1_32bit is

begin

output <= i0 after 2ns when sel="00000" else
          i1 after 2ns when sel="00001" else
          i2 after 2ns when sel="00010" else
          i3 after 2ns when sel="00011" else
          i4 after 2ns when sel="00100" else
          i5 after 2ns when sel="00101" else
          i6 after 2ns when sel="00110" else
          i7 after 2ns when sel="00111" else
          i8 after 2ns when sel="01000" else
          i9 after 2ns when sel="01001" else
          i10 after 2ns when sel="01010" else
          i11 after 2ns when sel="01011" else
          i12 after 2ns when sel="01100" else
          i13 after 2ns when sel="01101" else
          i14 after 2ns when sel="01110" else
          i15 after 2ns when sel="01111" else
          i16 after 2ns when sel="10000" else
          i17 after 2ns when sel="10001" else
          i18 after 2ns when sel="10010" else
          i19 after 2ns when sel="10011" else
          i20 after 2ns when sel="10100" else
          i21 after 2ns when sel="10101" else
          i22 after 2ns when sel="10110" else
          i23 after 2ns when sel="10111" else
          i24 after 2ns when sel="11000" else
          i25 after 2ns when sel="11001" else
          i26 after 2ns when sel="11010" else
          i27 after 2ns when sel="11011" else
          i28 after 2ns when sel="11100" else
          i29 after 2ns when sel="11101" else
          i30 after 2ns when sel="11110" else
          i31 after 2ns when sel="11111" else
          "00000000000000000000000000000000" after 2ns;


end Behavioral;
