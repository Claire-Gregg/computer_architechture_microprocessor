----------------------------------------------------------------------------------
-- Engineer: Claire Gregg
-- 
-- Create Date: 28.10.2021 18:47:20
-- Module Name: full_adder_tb - Behavioral
-- Project Name: datapath
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_tb is

end full_adder_tb;

architecture Behavioral of full_adder_tb is
    -- Component Declaration for the Unit Under Test (UUT)
    component full_adder 
        port (
           in1 : in STD_LOGIC;
           in2 : in STD_LOGIC;
           c_in : in STD_LOGIC;
           sum : out STD_LOGIC;
           c_out : out STD_LOGIC
        );
    end component;
    
    -- Inputs
    signal in1, in2, c_in: std_logic; 
    
    -- Outputs
    signal sum, c_out: std_logic;
begin

    uut : full_adder port map (
        in1 => in1, 
        in2 => in2, 
        c_in => c_in, 
        sum => sum, 
        c_out => c_out
    );
    stim_proc: process
    begin
        in1 <= '0';
        in2 <= '0';
        c_in <= '0';
        wait for 8ns;
        
        in1 <= '0';
        in2 <= '0';
        c_in <= '1';
        wait for 8ns;
        
        in1 <= '0';
        in2 <= '1';
        c_in <= '0';
        wait for 8ns;
        
        in1 <= '0';
        in2 <= '1';
        c_in <= '1';
        wait for 8ns;
        
        in1 <= '1';
        in2 <= '0';
        c_in <= '0';
        wait for 8ns;
        
        in1 <= '1';
        in2 <= '0';
        c_in <= '1';
        wait for 8ns;
        
        in1 <= '1';
        in2 <= '1';
        c_in <= '0';
        wait for 8ns;
        
        in1 <= '1';
        in2 <= '1';
        c_in <= '1';
        wait for 8ns;
    end process;


end Behavioral;
