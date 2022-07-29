----------------------------------------------------------------------------------
-- Engineer: Claire Gregg

-- Module Name: full_adder - Behavioral
-- Project Name: 
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

entity full_adder is
    Port ( in1 : in STD_LOGIC;
           in2 : in STD_LOGIC;
           c_in : in STD_LOGIC;
           sum : out STD_LOGIC;
           c_out : out STD_LOGIC);
end full_adder;

architecture structural of full_adder is
    --internal signals
    signal s1, s2, s3: std_logic;
    constant gate_delay: Time := 2ns;
begin
    s1 <= (in1 xor in2) after gate_delay;
    s2 <= (c_in and s1) after gate_delay;
    s3 <= (in1 and in2) after gate_delay;
    sum <= (s1 xor c_in) after gate_delay;
    c_out <= (s2 or s3) after gate_delay;
end structural;
