----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2021 13:18:01
-- Design Name: 
-- Module Name: function_unit_tb - Behavioral
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

entity function_unit_tb is
--  Port ( );
end function_unit_tb;

architecture Behavioral of function_unit_tb is
    -- UUT declaration
    component function_unit
    Port ( A, B : in STD_LOGIC_VECTOR (31 downto 0);
           FS : in STD_LOGIC_VECTOR (4 downto 0);
           output : out STD_LOGIC_VECTOR (31 downto 0);
           C: inout std_logic;
           V, N, Z: out STD_LOGIC);
    end component;
    
    -- Inputs
    signal A, B: std_logic_vector (31 downto 0);
    signal FS: std_logic_vector (4 downto 0);
    
    -- Outputs
    signal output: std_logic_vector (31 downto 0);
    signal C, V, N, Z: std_logic;
    
    constant propagation_delay: Time := 512ns;
begin

    uut: function_unit
    port map (
        A => A,
        B => B,
        FS => FS,
        output => output,
        C => C,
        V => V,
        N => N,
        Z => Z
    );
    
    stim_proc: process
    begin
    
    A <= x"20332015";
    B <= x"2033201A";    
    
    -- Last digit of my student number is 5
    -- FS = 00110, output = A - 1
    FS <= "00110";
    wait for propagation_delay;
    
    -- FS = 00111, output = A
    FS <= "00111";
    wait for propagation_delay;
    
    
    -- FS = 00101, output = A + ~B + 1 = A - B
    FS <= "00101";
    wait for propagation_delay;
    
    -- FS = 01100, output = A XOR B
    FS <= "01100";
    wait for propagation_delay;
    
    -- FS = 00100, output = A + ~B
    FS <= "00100";
    wait for propagation_delay;
    
    -- FS = 10000, output = B
    FS <= "10000";
    wait for propagation_delay;
    
    -- FS = 00011, output = A + B + 1
    FS <= "00011";
    wait for propagation_delay;
    
    -- FS = 10100, output = srB
    FS <= "10100";
    wait for propagation_delay;
    
    -- FS = 00010, output = A + B
    FS <= "00010";
    wait for propagation_delay;
    
    -- FS = 01110, output = ~A
    FS <= "01110";
    wait for propagation_delay;
    
    -- FS = 00000, output = A
    FS <= "00000";
    wait for propagation_delay;
    
    -- FS = 11000, output = slB
    FS <= "11000";
    wait for propagation_delay;
    
    -- FS = 00001, output = A + 1
    FS <= "00001";
    wait for propagation_delay;

    
    
    -- FS = 01000, output = A AND B
    FS <= "01000";
    wait for propagation_delay;
    
    -- FS = 01010, output = A OR B
    FS <= "01010";
    wait for propagation_delay;
    wait for propagation_delay;
    wait for propagation_delay;
    
    
    end process;


end Behavioral;
