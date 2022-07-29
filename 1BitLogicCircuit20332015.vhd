----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.10.2021 10:43:09
-- Design Name: 
-- Module Name: logic_circuit - Behavioral
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

entity logic_circuit_1bit is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           S : in STD_LOGIC_VECTOR (1 downto 0);
           G : out STD_LOGIC);
end logic_circuit_1bit;

architecture Behavioral of logic_circuit_1bit is
    -- Component declaration
    component mux_4to1_1bit
        port (
           inputs : in STD_LOGIC_vector (3 downto 0);
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           output : out STD_LOGIC
        );
    end component;
    
    constant gate_delay: Time := 2ns;
    
    --signals
    signal sig: std_logic_vector (3 downto 0);
begin
    sig(0) <= A and B after gate_delay; 
    sig(1) <= A or B after gate_delay; 
    sig(2) <= A xor B after gate_delay; 
    sig(3) <= not A after gate_delay;
    
    --takes 1 gate delay
    muxer: mux_4to1_1bit
    port map (
        inputs(0) => sig(0),
        inputs(1) => sig(1),
        inputs(2) => sig(2),
        inputs(3) => sig(3),
        sel => S,
        output => G
    );

end Behavioral;
