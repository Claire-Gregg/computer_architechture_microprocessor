----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 09.11.2021 16:45:37
-- Design Name:
-- Module Name: datapath_tb - Behavioral
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

entity datapath_tb is
--  Port ( );
end datapath_tb;

architecture Behavioral of datapath_tb is

    component datapath
    Port (
        D_address, A_address, B_address, FS: in std_logic_vector(4 downto 0);
        constant_in, data_in: in  std_logic_vector (31 downto 0);
        RW, MB, MD, Clk: in  std_logic;
        Address_out, Data_out: inout std_logic_vector (31 downto 0);
        V, C, N, Z: inout std_logic
    );
    end component;

    -- Input signals
    signal D_address, A_address, B_address, FS: std_logic_vector(4 downto 0);
    signal constant_in, data_in: std_logic_vector (31 downto 0);
    signal RW, MB, MD, Clk: std_logic;

    -- Output signals
    signal Address_out, Data_out: std_logic_vector (31 downto 0);
    signal V, C, N, Z: std_logic;

begin

    uut: datapath
    port map (
        D_address => D_address,
        A_address => A_address,
        B_address => B_address,
        FS => FS,
        constant_in => constant_in,
        data_in => data_in,
        RW => RW,
        MB => MB,
        MD => MD,
        Clk => Clk,
        Address_out => Address_out,
        Data_out => Data_out,
        V => V,
        C => C,
        N => N,
        Z => Z
    );

    clk_process: process
    begin
        clk <= '0';
        -- worst case propagation delay is 256ns when using ripple adder, so we give wiggle room
        wait for 300ns;
        clk <= '1';
        wait for 300ns;
    end process;

    stim_proc: process
    begin
            -- Choosing to load data into the register based off of the data input
            MB <= '0';
            MD <= '1';
            RW <= '1';
            FS <= "00000";

                -- Load 0x20332015 into reg0
            A_address <= "00000";
            D_address <= "00000";
            data_in <= x"20332015";
            wait for 500ns;
    -- Load 0x20332016 into reg1
            A_address <= "00001";
            D_address <= "00001";
            data_in <= x"20332016";
            wait for 500ns;
    -- Load 0x20332017 into reg2
            A_address <= "00010";
            D_address <= "00010";
            data_in <= x"20332017";
            wait for 500ns;
    -- Load 0x20332018 into reg3
            A_address <= "00011";
            D_address <= "00011";
            data_in <= x"20332018";
            wait for 500ns;
    -- Load 0x20332019 into reg4
            A_address <= "00100";
            D_address <= "00100";
            data_in <= x"20332019";
            wait for 500ns;
    -- Load 0x2033201a into reg5
            A_address <= "00101";
            D_address <= "00101";
            data_in <= x"2033201a";
            wait for 500ns;
    -- Load 0x2033201b into reg6
            A_address <= "00110";
            D_address <= "00110";
            data_in <= x"2033201b";
            wait for 500ns;
    -- Load 0x2033201c into reg7
            A_address <= "00111";
            D_address <= "00111";
            data_in <= x"2033201c";
            wait for 500ns;
    -- Load 0x2033201d into reg8
            A_address <= "01000";
            D_address <= "01000";
            data_in <= x"2033201d";
            wait for 500ns;
    -- Load 0x2033201e into reg9
            A_address <= "01001";
            D_address <= "01001";
            data_in <= x"2033201e";
            wait for 500ns;
    -- Load 0x2033201f into reg10
            A_address <= "01010";
            D_address <= "01010";
            data_in <= x"2033201f";
            wait for 500ns;
    -- Load 0x20332020 into reg11
            A_address <= "01011";
            D_address <= "01011";
            data_in <= x"20332020";
            wait for 500ns;
    -- Load 0x20332021 into reg12
            A_address <= "01100";
            D_address <= "01100";
            data_in <= x"20332021";
            wait for 500ns;
    -- Load 0x20332022 into reg13
            A_address <= "01101";
            D_address <= "01101";
            data_in <= x"20332022";
            wait for 500ns;
    -- Load 0x20332023 into reg14
            A_address <= "01110";
            D_address <= "01110";
            data_in <= x"20332023";
            wait for 500ns;
    -- Load 0x20332024 into reg15
            A_address <= "01111";
            D_address <= "01111";
            data_in <= x"20332024";
            wait for 500ns;
    -- Load 0x20332025 into reg16
            A_address <= "10000";
            D_address <= "10000";
            data_in <= x"20332025";
            wait for 500ns;
    -- Load 0x20332026 into reg17
            A_address <= "10001";
            D_address <= "10001";
            data_in <= x"20332026";
            wait for 500ns;
    -- Load 0x20332027 into reg18
            A_address <= "10010";
            D_address <= "10010";
            data_in <= x"20332027";
            wait for 500ns;
    -- Load 0x20332028 into reg19
            A_address <= "10011";
            D_address <= "10011";
            data_in <= x"20332028";
            wait for 500ns;
    -- Load 0x20332029 into reg20
            A_address <= "10100";
            D_address <= "10100";
            data_in <= x"20332029";
            wait for 500ns;
    -- Load 0x2033202a into reg21
            A_address <= "10101";
            D_address <= "10101";
            data_in <= x"2033202a";
            wait for 500ns;
    -- Load 0x2033202b into reg22
            A_address <= "10110";
            D_address <= "10110";
            data_in <= x"2033202b";
            wait for 500ns;
    -- Load 0x2033202c into reg23
            A_address <= "10111";
            D_address <= "10111";
            data_in <= x"2033202c";
            wait for 500ns;
    -- Load 0x2033202d into reg24
            A_address <= "11000";
            D_address <= "11000";
            data_in <= x"2033202d";
            wait for 500ns;
    -- Load 0x2033202e into reg25
            A_address <= "11001";
            D_address <= "11001";
            data_in <= x"2033202e";
            wait for 500ns;
    -- Load 0x2033202f into reg26
            A_address <= "11010";
            D_address <= "11010";
            data_in <= x"2033202f";
            wait for 500ns;
    -- Load 0x20332030 into reg27
            A_address <= "11011";
            D_address <= "11011";
            data_in <= x"20332030";
            wait for 500ns;
    -- Load 0x20332031 into reg28
            A_address <= "11100";
            D_address <= "11100";
            data_in <= x"20332031";
            wait for 500ns;
    -- Load 0x20332032 into reg29
            A_address <= "11101";
            D_address <= "11101";
            data_in <= x"20332032";
            wait for 500ns;
    -- Load 0x20332033 into reg30
            A_address <= "11110";
            D_address <= "11110";
            data_in <= x"20332033";
            wait for 500ns;
    -- Load 0x20332034 into reg31
            A_address <= "11111";
            D_address <= "11111";
            data_in <= x"20332034";
            wait for 500ns;

    -- Select Dest register by last digit of student number, 5.
        D_address <= "00101";
    -- Select A_address by last digit of student number + 5, 10
        A_address <= "01010";
    -- Select B_address by last digit of student number + 10, 15
        B_address <= "01111";

    --Order of demonstrations
    --  F = A - 1
        MD <= '0';
        MB <= '0';
        RW <= '1';
        FS <= "00110";
        wait for 500ns;

        --switch to des register on A to check register has been set. RW must be 0 for this
        RW <= '0';
        A_address <= "00101";
        wait for 500ns;
        A_address <= "01010";

    --  F = A
        RW <= '1';
        FS <= "00111";
        wait for 500ns;

        --switch to des register on A to check register has been set. RW must be 0 for this
        RW <= '0';
        A_address <= "00101";
        wait for 500ns;
        A_address <= "01010";

    --  F = A + ~B + 1
        RW <= '1';
        FS <= "00101";
        wait for 500ns;

        --switch to des register on A to check register has been set. RW must be 0 for this
        RW <= '0';
        A_address <= "00101";
        wait for 500ns;
        A_address <= "01010";

    --  F = A XOR B
        RW <= '1';
        FS <= "01100";
        wait for 500ns;

        --switch to des register on A to check register has been set. RW must be 0 for this
        RW <= '0';
        A_address <= "00101";
        wait for 500ns;
        A_address <= "01010";

    --  F = A + ~B
        RW <= '1';
        FS <= "00100";
        wait for 500ns;

        --switch to des register on A to check register has been set. RW must be 0 for this
        RW <= '0';
        A_address <= "00101";
        wait for 500ns;
        A_address <= "01010";

    --  F = B
        RW <= '1';
        FS <= "10000";
        wait for 500ns;

        --switch to des register on A to check register has been set. RW must be 0 for this
        RW <= '0';
        A_address <= "00101";
        wait for 500ns;
        A_address <= "01010";

    --  F = A + B + 1
        RW <= '1';
        FS <= "00011";
        wait for 500ns;

        --switch to des register on A to check register has been set. RW must be 0 for this
        RW <= '0';
        A_address <= "00101";
        wait for 500ns;
        A_address <= "01010";

    --  F = srB
        RW <= '1';
        FS <= "10100";
        wait for 500ns;

        --switch to des register on A to check register has been set. RW must be 0 for this
        RW <= '0';
        A_address <= "00101";
        wait for 500ns;
        A_address <= "01010";

    --  F = A + B
        RW <= '1';
        FS <= "00010";
        wait for 500ns;

        --switch to des register on A to check register has been set. RW must be 0 for this
        RW <= '0';
        A_address <= "00101";
        wait for 500ns;
        A_address <= "01010";

    --  F = ~A
        RW <= '1';
        FS <= "01110";
        wait for 500ns;

        --switch to des register on A to check register has been set. RW must be 0 for this
        RW <= '0';
        A_address <= "00101";
        wait for 500ns;
        A_address <= "01010";

    --  F = A
        RW <= '1';
        FS <= "00000";
        wait for 500ns;

        --switch to des register on A to check register has been set. RW must be 0 for this
        RW <= '0';
        A_address <= "00101";
        wait for 500ns;
        A_address <= "01010";

    --  F = slB
        RW <= '1';
        FS <= "11000";
        wait for 500ns;

        --switch to des register on A to check register has been set. RW must be 0 for this
        RW <= '0';
        A_address <= "00101";
        wait for 500ns;
        A_address <= "01010";

    --  F = A + 1
        RW <= '1';
        FS <= "00001";
        wait for 500ns;

        --switch to des register on A to check register has been set. RW must be 0 for this
        RW <= '0';
        A_address <= "00101";
        wait for 500ns;
        A_address <= "01010";

    --  F = A AND B
        RW <= '1';
        FS <= "01000";
        wait for 500ns;

        --switch to des register on A to check register has been set. RW must be 0 for this
        RW <= '0';
        A_address <= "00101";
        wait for 500ns;
        A_address <= "01010";

    --  F = A OR B
        RW <= '1';
        FS <= "01010";
        wait for 500ns;

        --switch to des register on A to check register has been set. RW must be 0 for this
        RW <= '0';
        A_address <= "00101";
        wait for 500ns;
        A_address <= "01010";


    --  To use constant in
        MB <= '1';
        constant_in <= x"20332015";
    --  F = A + ~(constant in) + 1
        RW <= '1';
        FS <= "00101";
        wait for 500ns;

        --switch to des register on A to check register has been set. RW must be 0 for this
        RW <= '0';
        A_address <= "00101";
        wait for 500ns;
        A_address <= "01010";


    --  F = A XOR (constant in)
        RW <= '1';
        FS <= "01100";
        wait for 500ns;

        --switch to des register on A to check register has been set. RW must be 0 for this
        RW <= '0';
        A_address <= "00101";
        wait for 500ns;
        A_address <= "01010";

    --  F = A + ~(constant in)
        RW <= '1';
        FS <= "00100";
        wait for 500ns;

        --switch to des register on A to check register has been set. RW must be 0 for this
        RW <= '0';
        A_address <= "00101";
        wait for 500ns;
        A_address <= "01010";

    --  F = (constant in)
        RW <= '1';
        FS <= "10000";
        wait for 500ns;

        --switch to des register on A to check register has been set. RW must be 0 for this
        RW <= '0';
        A_address <= "00101";
        wait for 500ns;
        A_address <= "01010";

    --  F = A + (constant in) + 1
        RW <= '1';
        FS <= "00011";
        wait for 500ns;

        --switch to des register on A to check register has been set. RW must be 0 for this
        RW <= '0';
        A_address <= "00101";
        wait for 500ns;
        A_address <= "01010";

    --  F = sr(constant in)
        RW <= '1';
        FS <= "10100";
        wait for 500ns;

        --switch to des register on A to check register has been set. RW must be 0 for this
        RW <= '0';
        A_address <= "00101";
        wait for 500ns;
        A_address <= "01010";

    --  F = A + (constant in)
        RW <= '1';
        FS <= "00010";
        wait for 500ns;

        --switch to des register on A to check register has been set. RW must be 0 for this
        RW <= '0';
        A_address <= "00101";
        wait for 500ns;
        A_address <= "01010";

    --  F = sl(constant in)
        RW <= '1';
        FS <= "11000";
        wait for 500ns;

        --switch to des register on A to check register has been set. RW must be 0 for this
        RW <= '0';
        A_address <= "00101";
        wait for 500ns;
        A_address <= "01010";

    --  F = A AND (constant in)
        RW <= '1';
        FS <= "01000";
        wait for 500ns;

        --switch to des register on A to check register has been set. RW must be 0 for this
        RW <= '0';
        A_address <= "00101";
        wait for 500ns;
        A_address <= "01010";

    --  F = A OR (constant in)
        RW <= '1';
        FS <= "01010";
        wait for 500ns;

        --switch to des register on A to check register has been set. RW must be 0 for this
        RW <= '0';
        A_address <= "00101";
        wait for 2000ns;


    end process;



end Behavioral;
