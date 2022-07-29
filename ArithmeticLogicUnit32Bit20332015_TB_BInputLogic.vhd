----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.10.2021 11:35:08
-- Design Name: 
-- Module Name: arithmetic_logic_unit_32bit_tb - Behavioral
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
--  This is testing the B input logic segment of the ALU.
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

entity arithmetic_logic_unit_32bit_tb is
--  Port ( );
end arithmetic_logic_unit_32bit_tb;

architecture Behavioral of arithmetic_logic_unit_32bit_tb is
    component arithmetic_logic_unit_32bit
    Port ( C0 : in STD_LOGIC;
           A, B : in STD_LOGIC_VECTOR (31 downto 0);
           S : in STD_LOGIC_VECTOR (2 downto 0);
           C32: inout STD_LOGIC;
           V, Z, N: out STD_Logic;
           G : inout STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    -- Inputs
    signal C0: std_logic;
    signal A, B: std_logic_vector (31 downto 0);
    signal S: std_logic_vector (2 downto 0);
    
    -- Outputs
    signal C32: std_logic;
    signal V,Z,N,G: std_logic_vector (31 downto 0);
begin

    uut: arithmetic_logic_unit_32bit
    port map (
        C0 => C0,
        A => A,
        B => B,
        S => S,
        C32 => C32,
        G => G
    );
    
    atim_proc: process
    begin
        A <= x"00000000";
        B <= x"20332015";
        
        -- When S = 000 and C_in = 0,
        --      G = 0 
        S <= "000";
        C0 <= '0';
        wait for 512ns;
        
        -- When S = 001 and C_in = 0,
        --      G = B 
        S <= "001";
        C0 <= '0';
        wait for 512ns;
        
        -- When S = 010 and C_in = 0,
        --      G = ~B 
        S <= "010";
        C0 <= '0';
        wait for 512ns;
        
        -- When S = 011 and C_in = 0,
        --      G = -1 
        S <= "011";
        C0 <= '0';
        wait for 2048ns;
        
    end process;

end Behavioral;
