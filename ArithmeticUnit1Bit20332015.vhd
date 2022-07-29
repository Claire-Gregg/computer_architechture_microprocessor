----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.10.2021 11:03:33
-- Design Name: 
-- Module Name: arithmetic_circuit_1bit - Behavioral
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

entity arithmetic_circuit_1bit is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C_in : in STD_LOGIC;
           S : in STD_LOGIC_VECTOR (1 downto 0);
           C_out : out STD_LOGIC;
           G : out STD_LOGIC);
end arithmetic_circuit_1bit;

architecture Behavioral of arithmetic_circuit_1bit is
    -- Component Declarations
    component mux_2to1_1bit
    Port ( 
        in0, in1, s: in std_logic; 
        z: out std_logic
        );
    end component;
    
    component full_adder
    Port ( in1 : in STD_LOGIC;
           in2 : in STD_LOGIC;
           c_in : in STD_LOGIC;
           sum : out STD_LOGIC;
           c_out : out STD_LOGIC);
    end component;
    
    -- Internal signal
    signal Y: std_logic; 
           
begin

    -- takes 1 gate_delay
    b_logic: mux_2to1_1bit
    port map (
        in0 => S(1),
        in1 => S(0),
        s => B,
        z => Y
    );
    
    -- takes 2 gate_delays
    adder_unit: full_adder
    port map (
        in1 => Y,
        in2 => A,
        c_in => C_in,
        sum => G, 
        c_out => c_out
    );


end Behavioral;
