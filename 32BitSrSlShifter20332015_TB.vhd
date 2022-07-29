----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2021 12:58:15
-- Design Name: 
-- Module Name: shifter_32bit_tb - Behavioral
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

entity shifter_32bit_tb is
--  Port ( );
end shifter_32bit_tb;

architecture Behavioral of shifter_32bit_tb is
    component shifter_32bit
    Port ( B : in STD_LOGIC_VECTOR (31 downto 0);
           IL : in STD_LOGIC;
           IR : in STD_LOGIC;
           S : in STD_LOGIC_VECTOR (1 downto 0);
           H : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    -- Inputs
    signal B: std_logic_vector (31 downto 0);
    signal S: std_logic_vector (1 downto 0);
    signal IR, IL: std_logic;
    
    --Output
    signal H: std_logic_vector(31 downto 0);
    
    constant propagation_delay: Time := 4ns;
begin

    uut: shifter_32bit
    port map (
        B => B,
        IL => IL,
        IR => IR, 
        S => S,
        H => H
    );
    
    stim_proc: process
    begin
        B <= x"20332015";
        IL <= '0';
        IR <= '0';
        
        -- No rotate
        S <= "00";
        wait for propagation_delay;
        
        -- Rotate left
        S <= "01";
        wait for propagation_delay;
        
        -- Rotate right
        S <= "10";
        wait for 16ns;
    end process;

end Behavioral;
