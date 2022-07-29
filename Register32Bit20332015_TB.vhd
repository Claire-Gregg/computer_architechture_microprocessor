----------------------------------------------------------------------------------
-- Engineer: Claire Gregg
-- 
-- Create Date: 12.10.2021 13:41:31
-- Module Name: reg_32bit_tb - Behavioral
-- Project Name: register file
-- Description: 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg_32bit_tb is
--  Port ( );
end reg_32bit_tb;

architecture Behavioral of reg_32bit_tb is
    -- Component Declaration for the Unit Under Test (UUT)
    component reg_32bit
        Port 
        ( 
            reg_Data : in STD_LOGIC_VECTOR (31 downto 0);
            load, clk : in STD_LOGIC;
            Q : out STD_LOGIC_VECTOR (31 downto 0)
        );
    end component;
    
    -- Inputs
    signal reg_Data: std_logic_vector (31 downto 0);
    signal load, clk: std_logic;
    
    -- Outputs
    signal q: std_logic_vector (31 downto 0);
    
    
begin
    uut : reg_32bit port map (
        reg_data => reg_data,
        load => load,
        clk => clk,
        Q => q
    );
    
    clk_proc: process
    begin
        clk <= '0';
        wait for 5ns;
        clk <= '1';
        wait for 5ns;
    
    end process;
    stim_proc: process
    begin
        load <= '0';
        reg_data <= "00010010001101000101011001111000";
        wait for 20ns;
        load <= '1';
        
        wait for 20ns;
        load <= '0';
        reg_data <= "01010101010101010101010101010101";
        wait for 20ns;
        load <= '1';
        wait for 20ns;
    end process;

end Behavioral;
