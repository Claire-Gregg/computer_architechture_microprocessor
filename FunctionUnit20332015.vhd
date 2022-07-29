----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2021 12:37:21
-- Design Name: 
-- Module Name: function_unit - Behavioral
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

entity function_unit is
    Port ( A, B : in STD_LOGIC_VECTOR (31 downto 0);
           FS : in STD_LOGIC_VECTOR (4 downto 0);
           output : out STD_LOGIC_VECTOR (31 downto 0);
           C: inout std_logic;
           V, N, Z: out STD_LOGIC);
end function_unit;

architecture Behavioral of function_unit is
    -- Component Declarations
    component arithmetic_logic_unit_32bit
    Port ( C0 : in STD_LOGIC;
           A, B : in STD_LOGIC_VECTOR (31 downto 0);
           S : in STD_LOGIC_VECTOR (2 downto 0);
           C32: inout STD_LOGIC;
           V, Z, N: out STD_Logic;
           G : inout STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    component shifter_32bit
    Port ( B : in STD_LOGIC_VECTOR (31 downto 0);
           IL : in STD_LOGIC;
           IR : in STD_LOGIC;
           S : in STD_LOGIC_VECTOR (1 downto 0);
           H : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    component mux_2to1_32bit
    Port ( in0 : in STD_LOGIC_VECTOR (31 downto 0);
           in1 : in STD_LOGIC_VECTOR (31 downto 0);
           s : in STD_LOGIC;
           z : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    -- Internal signals
    signal ALU_out, Shifter_out: std_logic_vector(31 downto 0);
begin

    ALU: arithmetic_logic_unit_32bit
    port map (
        C0 => FS(0),
        A => A,
        B => B, 
        S => FS(3 downto 1),
        C32 => C,
        V => V, 
        N => N,
        Z => Z,
        G => ALU_out
    );
    
    Shifter: shifter_32bit
    port map (
        B => B,
        IL => '0',
        IR => '0',
        S => FS(3 downto 2),
        H => Shifter_out
    );
    
    Muxer: mux_2to1_32bit
    port map (
        in0 => ALU_out,
        in1 => Shifter_out,
        s => FS(4),
        z => output
    );


end Behavioral;
