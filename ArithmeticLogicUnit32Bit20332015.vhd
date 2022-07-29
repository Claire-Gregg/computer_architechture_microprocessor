----------------------------------------------------------------------------------
-- Engineer: Claire Gregg
-- 
-- Create Date: 30.10.2021 11:25:20
-- Module Name: arithmetic_logic_unit_32bit - Behavioral
-- Project Name: 

-- Additional Comments:
-- Following the instructions in slideset 6 on the processor, I instantiated each bit of the functional unit individually rather than building up each component fully and then combining them.
-- When given the simulation details on Friday the 12th, I already had a fully functioning datapath, and was told to demonstrate the functioning of my datapath appropriately. 
-- Therefore, the following sections of the simulation details have changed:
--  - 32-Bit Ripple carry adder
--  - B_Input_logic
--  - 32-Bit Ripple Carry Adder Subtractor
--  - 32 bit logic circuit


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

entity arithmetic_logic_unit_32bit is
    Port ( C0 : in STD_LOGIC;
           A, B : in STD_LOGIC_VECTOR (31 downto 0);
           S : in STD_LOGIC_VECTOR (2 downto 0);
           C32: inout STD_LOGIC;
           V, Z, N: out STD_Logic;
           G : inout STD_LOGIC_VECTOR (31 downto 0));
end arithmetic_logic_unit_32bit;

architecture Behavioral of arithmetic_logic_unit_32bit is
    -- Component Declaration
    component arithmetic_logic_unit_1bit
    Port (
        A, B, C_in: in std_logic;
        S: in std_logic_vector (2 downto 0);
        C_out, G: out std_logic
     );
     end component;
     
     -- Internal signals
     signal C: std_logic_vector (31 downto 1);
     
     constant gate_delay: Time := 2ns;
begin
    -- Each ALU bit slice takes 4 gate delays
    -- 4 * 32 = 128 gate delays = here 256ns
    Bit0: arithmetic_logic_unit_1bit
    port map (
        A => A(0),
        B => B(0),
        C_in => C0,
        S => S,
        C_out => C(1),
        G => G(0)
    );
    Bit1: arithmetic_logic_unit_1bit
    port map (
        A => A(1),
        B => B(1),
        C_in => C(1),
        S => S,
        C_out => C(2),
        G => G(1)
    );
    Bit2: arithmetic_logic_unit_1bit
    port map (
        A => A(2),
        B => B(2),
        C_in => C(2),
        S => S,
        C_out => C(3),
        G => G(2)
    );
    Bit3: arithmetic_logic_unit_1bit
    port map (
        A => A(3),
        B => B(3),
        C_in => C(3),
        S => S,
        C_out => C(4),
        G => G(3)
    );
    Bit4: arithmetic_logic_unit_1bit
    port map (
        A => A(4),
        B => B(4),
        C_in => C(4),
        S => S,
        C_out => C(5),
        G => G(4)
    );
    Bit5: arithmetic_logic_unit_1bit
    port map (
        A => A(5),
        B => B(5),
        C_in => C(5),
        S => S,
        C_out => C(6),
        G => G(5)
    );
    Bit6: arithmetic_logic_unit_1bit
    port map (
        A => A(6),
        B => B(6),
        C_in => C(6),
        S => S,
        C_out => C(7),
        G => G(6)
    );
    Bit7: arithmetic_logic_unit_1bit
    port map (
        A => A(7),
        B => B(7),
        C_in => C(7),
        S => S,
        C_out => C(8),
        G => G(7)
    );
    Bit8: arithmetic_logic_unit_1bit
    port map (
        A => A(8),
        B => B(8),
        C_in => C(8),
        S => S,
        C_out => C(9),
        G => G(8)
    );
    Bit9: arithmetic_logic_unit_1bit
    port map (
        A => A(9),
        B => B(9),
        C_in => C(9),
        S => S,
        C_out => C(10),
        G => G(9)
    );
    Bit10: arithmetic_logic_unit_1bit
    port map (
        A => A(10),
        B => B(10),
        C_in => C(10),
        S => S,
        C_out => C(11),
        G => G(10)
    );
    Bit11: arithmetic_logic_unit_1bit
    port map (
        A => A(11),
        B => B(11),
        C_in => C(11),
        S => S,
        C_out => C(12),
        G => G(11)
    );
    Bit12: arithmetic_logic_unit_1bit
    port map (
        A => A(12),
        B => B(12),
        C_in => C(12),
        S => S,
        C_out => C(13),
        G => G(12)
    );
    Bit13: arithmetic_logic_unit_1bit
    port map (
        A => A(13),
        B => B(13),
        C_in => C(13),
        S => S,
        C_out => C(14),
        G => G(13)
    );
    Bit14: arithmetic_logic_unit_1bit
    port map (
        A => A(14),
        B => B(14),
        C_in => C(14),
        S => S,
        C_out => C(15),
        G => G(14)
    );
    Bit15: arithmetic_logic_unit_1bit
    port map (
        A => A(15),
        B => B(15),
        C_in => C(15),
        S => S,
        C_out => C(16),
        G => G(15)
    );
    Bit16: arithmetic_logic_unit_1bit
    port map (
        A => A(16),
        B => B(16),
        C_in => C(16),
        S => S,
        C_out => C(17),
        G => G(16)
    );
    Bit17: arithmetic_logic_unit_1bit
    port map (
        A => A(17),
        B => B(17),
        C_in => C(17),
        S => S,
        C_out => C(18),
        G => G(17)
    );
    Bit18: arithmetic_logic_unit_1bit
    port map (
        A => A(18),
        B => B(18),
        C_in => C(18),
        S => S,
        C_out => C(19),
        G => G(18)
    );
    Bit19: arithmetic_logic_unit_1bit
    port map (
        A => A(19),
        B => B(19),
        C_in => C(19),
        S => S,
        C_out => C(20),
        G => G(19)
    );
    Bit20: arithmetic_logic_unit_1bit
    port map (
        A => A(20),
        B => B(20),
        C_in => C(20),
        S => S,
        C_out => C(21),
        G => G(20)
    );
    Bit21: arithmetic_logic_unit_1bit
    port map (
        A => A(21),
        B => B(21),
        C_in => C(21),
        S => S,
        C_out => C(22),
        G => G(21)
    );
    Bit22: arithmetic_logic_unit_1bit
    port map (
        A => A(22),
        B => B(22),
        C_in => C(22),
        S => S,
        C_out => C(23),
        G => G(22)
    );
    Bit23: arithmetic_logic_unit_1bit
    port map (
        A => A(23),
        B => B(23),
        C_in => C(23),
        S => S,
        C_out => C(24),
        G => G(23)
    );
    Bit24: arithmetic_logic_unit_1bit
    port map (
        A => A(24),
        B => B(24),
        C_in => C(24),
        S => S,
        C_out => C(25),
        G => G(24)
    );
    Bit25: arithmetic_logic_unit_1bit
    port map (
        A => A(25),
        B => B(25),
        C_in => C(25),
        S => S,
        C_out => C(26),
        G => G(25)
    );
    Bit26: arithmetic_logic_unit_1bit
    port map (
        A => A(26),
        B => B(26),
        C_in => C(26),
        S => S,
        C_out => C(27),
        G => G(26)
    );
    Bit27: arithmetic_logic_unit_1bit
    port map (
        A => A(27),
        B => B(27),
        C_in => C(27),
        S => S,
        C_out => C(28),
        G => G(27)
    );
    Bit28: arithmetic_logic_unit_1bit
    port map (
        A => A(28),
        B => B(28),
        C_in => C(28),
        S => S,
        C_out => C(29),
        G => G(28)
    );
    Bit29: arithmetic_logic_unit_1bit
    port map (
        A => A(29),
        B => B(29),
        C_in => C(29),
        S => S,
        C_out => C(30),
        G => G(29)
    );
    Bit30: arithmetic_logic_unit_1bit
    port map (
        A => A(30),
        B => B(30),
        C_in => C(30),
        S => S,
        C_out => C(31),
        G => G(30)
    );
    Bit31: arithmetic_logic_unit_1bit
    port map (
        A => A(31),
        B => B(31),
        C_in => C(31),
        S => S,
        C_out => C32,
        G => G(31)
    );
    V <= C32 xor C(31) after gate_delay;
    N <= G(31);
    Z <= '1' after gate_delay when G = x"00000000" else '0';


end Behavioral;
