----------------------------------------------------------------------------------
-- Engineer: Claire Gregg
-- 
-- Create Date: 30.10.2021 11:35:08
-- Module Name: arithmetic_logic_unit_32bit_tb - Behavioral
-- Project Name: 
-- Additional Comments:
-- This tests the functionality of the Ripple Carry Adder encompassed in the ALU.
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

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
    signal C32, V, Z, N: std_logic;
    signal G: std_logic_vector (31 downto 0);
begin

    uut: arithmetic_logic_unit_32bit
    port map (
        C0 => C0,
        A => A,
        B => B,
        S => S,
        C32 => C32,
        V => V,
        Z => Z, 
        N => N,
        G => G
    );
    
    atim_proc: process
    begin
    
        S <= "001";
        -- Simulate the following:
        -- 1. positive(StudentID (HEX value) + positive value
        A <= x"20332015";
        B <= x"11111111";
        C0 <= '0';
        wait for 512ns;
        
        -- 2. positive(StudentID (HEX value) + negative value
        A <= x"20332015";
        B <= x"EEEEEEEE";
        C0 <= '0';
        wait for 512ns;
        
        -- 3. negative(StudentID (HEX value)) + positive value
        -- neg(StudentID) = inverse(studentid) +1 = 0xDFCCDFEB
        A <= x"DFCCDFEB";
        B <= x"11111111";
        C0 <= '0';
        wait for 512ns;
        
        -- 4. negative(StudentID (HEX value)) + negative value
        A <= x"DFCCDFEB";
        B <= x"EEEEEEEE";
        C0 <= '0';
        wait for 512ns; 
        
        -- 5. Demonstrate worst case propagation delay. Also how long is the propagation delay?
        -- Worst case propagation delay is when a carry must ripple across all of the adders, so 0xFFFFFFFF + 0x00000001 shows this.
        -- A one bit ALU takes 3 gate delays to add and 2 gate delays to do the logical unit, which are done simulataneously. Then, selecting between the 2 outputs takes another 1 gate delay. 
        -- This gives a total of 4 gate delays for the 1-bit ALU. 
        -- As the carry must propagate down every bit of the ALU, the total propagation delay is 128 gate delays, which, with our gate delay of 2ns, 
        -- gives a propagation delay of 256ns, worst case.
        A <= x"FFFFFFFF";
        B <= x"00000001";
        C0 <= '0';
        wait for 512ns;
        
        -- 6. If you add a 2s complement number to your StudentID (HEX value), what number would
        --      set the C flag, and what number would set the V flag?
        -- The C flag is set when the addition sets a 33rd bit. This can be done in the same way as showing worst case propagation delay.
        -- The V flag is set if either the 33rd carry is positive (as with the carry) OR the 32nd carry is set, but not both. 
        -- Therefore, this can be given by 0xFFFFFFFF + 0x80000000.
        A <= x"FFFFFFFF";
        B <= x"80000000";
        C0 <= '0';
        
        wait for 2048ns;
        
        
    end process;

end Behavioral;
