----------------------------------------------------------------------------------
-- Engineer: Claire Gregg
-- 
-- Create Date: 11.10.2021 12:54:05 
-- Module Name: mux_32to1_32bit_tb - Behavioral
-- Project Name: register file
-- Description: 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_32to1_32bit_tb is
end mux_32to1_32bit_tb;

architecture Behavioral of mux_32to1_32bit_tb is
    -- Component Declaration for the Unit Under Test (UUT)
    component mux_32to1_32bit
        Port ( sel : in STD_LOGIC_VECTOR (4 downto 0);
           i0, i1, i2, i3, i4, i5, i6, i7, i8,
           i9, i10, i11, i12, i13, i14, i15, 
           i16, i17, i18, i19, i20, i21, i22,
           i23, i24, i25, i26, i27, i28, i29,
           i30, i31 : in STD_LOGIC_VECTOR (31 downto 0);
           output : out STD_LOGIC_VECTOR (31 downto 0));
   end component;
   
   -- Inputs
   signal sel: std_logic_vector (4 downto 0);
   signal i0, i1, i2, i3, i4, i5, i6, i7, i8,
           i9, i10, i11, i12, i13, i14, i15, 
           i16, i17, i18, i19, i20, i21, i22,
           i23, i24, i25, i26, i27, i28, i29,
           i30, i31: std_logic_vector (31 downto 0);
           
           
   -- Output       
   signal output: std_logic_vector (31 downto 0);  
begin
    uut: mux_32to1_32bit port map (
        sel => sel,
        i0 => i0,
        i1 => i1,
        i2 => i2,
        i3 => i3,
        i4 => i4,
        i5 => i5,
        i6 => i6,
        i7 => i7,
        i8 => i8,
        i9 => i9,
        i10 => i10,
        i11 => i11,
        i12 => i12,
        i13 => i13,
        i14 => i14,
        i15 => i15,
        i16 => i16,
        i17 => i17,
        i18 => i18,
        i19 => i19,
        i20 => i20,
        i21 => i21,
        i22 => i22,
        i23 => i23,
        i24 => i24,
        i25 => i25,
        i26 => i26,
        i27 => i27,
        i28 => i28,
        i29 => i29,
        i30 => i30,
        i31 => i31,
        output => output        
    );
    
    stim_proc: process
    begin
        i0 <= x"20332015";
        i1 <= x"20332014";
        i2 <= x"20332013";
        i3 <= x"20332012";
        i4 <= x"20332011";
        i5 <= x"20332010";
        i6 <= x"2033200F";
        i7 <= x"2033200E";
        i8 <= x"2033200D";
        i9 <= x"2033200C";
        i10 <= x"2033200B";
        i11 <= x"2033200A";
        i12 <= x"20332009";
        i13 <= x"20332008";
        i14 <= x"20332007";
        i15 <= x"20332006";
        i16 <= x"20332005";
        i17 <= x"20332004";
        i18 <= x"20332003";
        i19 <= x"20332002";
        i20 <= x"20332001";
        i21 <= x"20332000";
        i22 <= x"20331FFF";
        i23 <= x"20331FFE";
        i24 <= x"20331FFD";
        i25 <= x"20331FFC";
        i26 <= x"20331FFB";
        i27 <= x"20331FFA";
        i28 <= x"20331FF9";
        i29 <= x"20331FF8";
        i30 <= x"20331FF7";
        i31 <= x"20331FF6";
        
        wait for 10ns;
        sel <= "00000";
        wait for 10ns;
        sel <= "00001";
        wait for 10ns;
        sel <= "00010";
        wait for 10ns;
        sel <= "00011";
        wait for 10ns;
        sel <= "00100";
        wait for 10ns;
        sel <= "00101";
        wait for 10ns;
        sel <= "00110";
        wait for 10ns;
        sel <= "00111";
        wait for 10ns;
        sel <= "01000";
        wait for 10ns;
        sel <= "01001";
        wait for 10ns;
        sel <= "01010";
        wait for 10ns;
        sel <= "01011";
        wait for 10ns;
        sel <= "01100";
        wait for 10ns;
        sel <= "01101";
        wait for 10ns;
        sel <= "01110";
        wait for 10ns;
        sel <= "01111";
        wait for 10ns;
        sel <= "10000";
        wait for 10ns;
        sel <= "10001";
        wait for 10ns;
        sel <= "10010";
        wait for 10ns;
        sel <= "10011";
        wait for 10ns;
        sel <= "10100";
        wait for 10ns;
        sel <= "10101";
        wait for 10ns;
        sel <= "10110";
        wait for 10ns;
        sel <= "10111";
        wait for 10ns;
        sel <= "11000";
        wait for 10ns;
        sel <= "11001";
        wait for 10ns;
        sel <= "11010";
        wait for 10ns;
        sel <= "11011";
        wait for 10ns;
        sel <= "11100";
        wait for 10ns;
        sel <= "11101";
        wait for 10ns;
        sel <= "11110";
        wait for 10ns;
        sel <= "11111";        
    end process;

end Behavioral;
