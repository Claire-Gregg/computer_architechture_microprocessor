----------------------------------------------------------------------------------
-- Engineer: Claire Gregg
-- 
-- Create Date: 05.10.2021 10:21:40
-- Module Name: decoder_5to32_tb - Behavioral
-- Project Name: register file
-- Description: 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_5to32_tb is
end decoder_5to32_tb;

architecture Behavioral of decoder_5to32_tb is

    -- Component Declaration for the Unit Under Test (UUT)
    component decoder_5to32
        Port ( 
            Address : in STD_LOGIC_VECTOR (4 downto 0);
            Q : out STD_LOGIC_VECTOR (31 downto 0)
            );
    end component;
    
    -- Input
    signal Address : std_logic_vector(4 downto 0);-- := (others <= '0');
    
    -- Output
    signal Q : std_logic_vector(31 downto 0);
    
begin

    -- Instantiate the Unit Under Test (UUT)
    uut: decoder_5to32 port map (
        Address => Address,
        Q => Q
    );
    stim_proc: process
    begin
        Address <= "00000";
        wait for 10 ns;
        Address <= "00001";
        wait for 10ns;
        Address <= "00010";
        wait for 10ns;
        Address <= "00011";
        wait for 10ns;
        Address <= "00100";
        wait for 10ns;
        Address <= "00101";
        wait for 10ns;
        Address <= "00110";
        wait for 10ns;
        Address <= "00111";
        wait for 10ns;
        Address <= "01000";
        wait for 10ns;
        Address <= "01001";
        wait for 10ns;
        Address <= "01010";
        wait for 10ns;
        Address <= "01011";
        wait for 10ns;
        Address <= "01100";
        wait for 10ns;
        Address <= "01101";
        wait for 10ns;
        Address <= "01110";
        wait for 10ns;
        Address <= "01111";
        wait for 10ns;
        Address <= "10000";
        wait for 10ns;
        Address <= "10001";
        wait for 10ns;
        Address <= "10010";
        wait for 10ns;
        Address <= "10011";
        wait for 10ns;
        Address <= "10100";
        wait for 10ns;
        Address <= "10101";
        wait for 10ns;
        Address <= "10110";
        wait for 10ns;
        Address <= "10111";
        wait for 10ns;
        Address <= "11000";
        wait for 10ns;
        Address <= "11001";
        wait for 10ns;
        Address <= "11010";
        wait for 10ns;
        Address <= "11011";
        wait for 10ns;
        Address <= "11100";
        wait for 10ns;
        Address <= "11101";
        wait for 10ns;
        Address <= "11110";
        wait for 10ns;
        Address <= "11111";
    
    end process;        
end Behavioral;
