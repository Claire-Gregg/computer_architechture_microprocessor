----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.10.2021 11:11:08
-- Design Name: 
-- Module Name: arithmetic_logic_unit_1bit - Behavioral
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

entity arithmetic_logic_unit_1bit is
    Port (
        A, B, C_in: in std_logic;
        S: in std_logic_vector (2 downto 0);
        C_out, G: out std_logic
     );
end arithmetic_logic_unit_1bit;

architecture Behavioral of arithmetic_logic_unit_1bit is
    -- Component declarations
    component arithmetic_circuit_1bit
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C_in : in STD_LOGIC;
           S : in STD_LOGIC_VECTOR (1 downto 0);
           C_out : out STD_LOGIC;
           G : out STD_LOGIC);
    end component;
    
    component logic_circuit_1bit
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           S : in STD_LOGIC_VECTOR (1 downto 0);
           G : out STD_LOGIC);
    end component;
    
    component mux_2to1_1bit
    Port ( 
        in0, in1, s: in std_logic; 
        z: out std_logic
        );
        end component;
        
   -- Internal signals
   signal arithmetic_result, logic_result: std_logic;
begin
    -- takes 3 gate delays
    arithmetic_unit: arithmetic_circuit_1bit
    port map (
         A => A,
         B => B,
         C_in => C_in,
         S => S(1 downto 0),
         C_out => C_out,
         G => arithmetic_result
    );
    
    -- takes 2 gate delays
    logic_unit: logic_circuit_1bit
    port map (
        A => A,
        B => B, 
        S => S(1 downto 0),
        G => logic_result
    );
    
    -- takes 1 gate delay
    select_output: mux_2to1_1bit
    port map (
        in0 => arithmetic_result,
        in1 => logic_result,
        S => S(2),
        z => G
    );

end Behavioral;
