----------------------------------------------------------------------------------
-- Engineer: Claire Gregg
-- 
-- Create Date: 11.10.2021 15:40:29
-- Module Name: reg_file_tb - Behavioral
-- Project Name: register file
-- Description: 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg_file_tb is
end reg_file_tb;

architecture Behavioral of reg_file_tb is

    -- Component Declaration for the Unit Under Test (UUT)
    component reg_file
    Port (
        A_select, B_select: in std_logic_vector(4 downto 0);
        des_select_32: in std_logic_vector(4 downto 0);
        data: in std_logic_vector(31 downto 0);
        clk,RW: in std_logic;
        A_output, B_output: out std_logic_vector (31 downto 0)
    );
    end component;
    
    
    -- Inputs
    signal clk, RW: std_logic := '0';
    signal A_select, B_select, des_select_32: std_logic_vector(4 downto 0);
    signal data: std_logic_vector (31 downto 0);
            
    -- Outputs
    signal  A_output, B_output: std_logic_vector (31 downto 0);
            
            
begin
    uut: reg_file port map (
        A_select => A_select,
        B_select => B_select,
        des_select_32 => des_select_32,
        data => data,
        clk => clk,
        RW => RW,
        A_output => A_output,
        B_output => B_output   
    );
    
    clk_process: process
    begin
        clk <= '0';
        wait for 5ns;
        clk <= '1';
        wait for 5ns;
    end process;
    
    stim_process: process
    begin
        
        -- Begin by setting register write to 1, so that the register values wil change
        RW <= '1';
        
        -- load student id (0x20332015) into reg0
        data <= "00100000001100110010000000010101";
        des_select_32 <= "00000";
        A_Select <= "00000"; -- Changing A select so you can see the values are successfully loaded into the registers
        
        wait for 20ns;

        
        -- load student id-1 (0x20332014) into reg1
        data <= "00100000001100110010000000010100";
        des_select_32 <= "00001";
        A_Select <= "00001";
        
        wait for 20ns;
        
        -- load student id-2 (0x20332013) into reg2
        data <= "00100000001100110010000000010011";
        des_select_32 <= "00010";
        A_Select <= "00010";
        
        wait for 20ns;
        
        -- load student id-3 (0x20332012) into reg3
        data <= "00100000001100110010000000010010";
        des_select_32 <= "00011";
        A_Select <= "00011";
        
        wait for 20ns;
        
        -- load student id-4 (0x20332011) into reg4
        data <= "00100000001100110010000000010001";
        des_select_32 <= "00100";
        A_Select <= "00100";
        
        wait for 20ns;
        
        -- load student id-5 (0x20332010) into reg5
        data <= "00100000001100110010000000010000";
        des_select_32 <= "00101";
        A_Select <= "00101";
        
        wait for 20ns;
        
        -- load student id-6 (0x2033200F) into reg6
        data <= "00100000001100110010000000001111";
        des_select_32 <= "00110";
        A_Select <= "00110";
        
        wait for 20ns;
        
        -- load student id-7 (0x2033200E) into reg7
        data <= "00100000001100110010000000001110";
        des_select_32 <= "00111";
        A_Select <= "00111";
        
        wait for 20ns;
        
        -- load student id-8 (0x2033200D) into reg8
        data <= "00100000001100110010000000001101";
        des_select_32 <= "01000";
        A_Select <= "01000";
        
        wait for 20ns;
        
        -- load student id-9 (0x2033200C) into reg9
        data <= "00100000001100110010000000001100";
        des_select_32 <= "01001";
        A_Select <= "01001";
        
        wait for 20ns;
        
        -- load student id-10 (0x2033200B) into reg10
        data <= "00100000001100110010000000001011";
        des_select_32 <= "01010";
        A_Select <= "01010";
        
        wait for 20ns;
        
        -- load student id-11 (0x2033200A) into reg11
        data <= "00100000001100110010000000001010";
        des_select_32 <= "01011";
        A_Select <= "01011";
        
        wait for 20ns;
        
        -- load student id-12 (0x20332009) into reg12
        data <= "00100000001100110010000000001001";
        des_select_32 <= "01100";
        A_Select <= "01100";
        
        wait for 20ns;
        
        -- load student id-13 (0x20332008) into reg13
        data <= "00100000001100110010000000001000";
        des_select_32 <= "01101";
        A_Select <= "01101";
        
        wait for 20ns;
        
        -- load student id-14 (0x20332007) into reg14
        data <= "00100000001100110010000000000111";
        des_select_32 <= "01110";
        A_Select <= "01110";
        
        wait for 20ns;
        
        -- load student id-15 (0x20332006) into reg15
        data <= "00100000001100110010000000000110";
        des_select_32 <= "01111";
        A_Select <= "01111";
        
        wait for 20ns;
        
        -- load student id-16 (0x20332005) into reg16
        data <= "00100000001100110010000000000101";
        des_select_32 <= "10000";
        A_Select <= "10000";
        
        wait for 20ns;
        
        -- load student id-17 (0x20332004) into reg17
        data <= "00100000001100110010000000000100";
        des_select_32 <= "10001";
        A_Select <= "10001";
        
        wait for 20ns;
        
        -- load student id-18 (0x20332003) into reg18
        data <= "00100000001100110010000000000011";
        des_select_32 <= "10010";
        A_Select <= "10010";
        
        wait for 20ns;
        
        -- load student id-19 (0x20332002) into reg19
        data <= "00100000001100110010000000000010";
        des_select_32 <= "10011";
        A_Select <= "10011";
        
        wait for 20ns;
        
        -- load student id-20 (0x20332001) into reg20
        data <= "00100000001100110010000000000001";
        des_select_32 <= "10100";
        A_Select <= "10100";
        
        wait for 20ns;
        
        -- load student id-21 (0x20332000) into reg21
        data <= "00100000001100110010000000000000";
        des_select_32 <= "10101";
        A_Select <= "10101";
        
        wait for 20ns;
        
        -- load student id-22 (0x20332000) into reg22
        data <= "00100000001100110001111111111111";
        des_select_32 <= "10110";
        A_Select <= "10110";
        
        wait for 20ns;
        
        -- load student id-23 (0x20331FFF) into reg23
        data <= "00100000001100110001111111111110";
        des_select_32 <= "10111";
        A_Select <= "10111";
        
        wait for 20ns;
        
        -- load student id-24 (0x20331FFE) into reg24
        data <= "01000000011001100011111111111101";
        des_select_32 <= "11000";
        A_Select <= "11000";
        
        wait for 20ns;
        
        -- load student id-25 (0x20331FFD) into reg25
        data <= "00100000001100110001111111111100";
        des_select_32 <= "11001";
        A_Select <= "11001";
        
        wait for 20ns;
        
        -- load student id-26 (0x20331FFC) into reg26
        data <= "00100000001100110001111111111011";
        des_select_32 <= "11010";
        A_Select <= "11010";
        
        wait for 20ns;
        
        -- load student id-27 (0x20331FFB) into reg27
        data <= "00100000001100110001111111111010";
        des_select_32 <= "11011";
        A_Select <= "11011";
        
        wait for 20ns;
        
        -- load student id-28 (0x20331FFA) into reg28
        data <= "00100000001100110001111111111001";
        des_select_32 <= "11100";
        A_Select <= "11100";
        
        wait for 20ns;
        
        -- load student id-29 (0x20331FF9) into reg29
        data <= "00100000001100110001111111111000";
        des_select_32 <= "11101";
        A_Select <= "11101";
        
        wait for 20ns;
        
        -- load student id-30 (0x20331FF8) into reg30
        data <= "00100000001100110001111111110111";
        des_select_32 <= "11110";
        A_Select <= "11110";
        
        wait for 20ns;
        
        -- load student id-31 (0x20331FF7) into reg31
        data <= "00100000001100110001111111110110";
        des_select_32 <= "11111";
        A_Select <= "11111";
        
        wait for 20ns;
        
        -- turn off register write to confirm register values do not change if register write is 0
        RW <= '0';
        data <= "00000000000000000000000000000000";
        
        wait for 20ns; -- nothing happens
        
        -- Now demonstrating that by changing A Select/B Select (aka address) we can change A data/B data
        A_Select <= "00000";
        B_Select <= "11111";
        
        wait for 40ns;

    end process;
end Behavioral;
