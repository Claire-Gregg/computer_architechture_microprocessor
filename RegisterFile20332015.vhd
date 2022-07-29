----------------------------------------------------------------------------------
-- Engineer: Claire Gregg
-- 
-- Create Date: 11.10.2021 14:18:13
-- Module Name: project - Behavioral
-- Project Name: register file
-- Description: 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg_file is
    Port (
        A_select, B_select: in std_logic_vector(4 downto 0);
        des_select_32: in std_logic_vector(4 downto 0);
        data: in std_logic_vector(31 downto 0);
        clk, RW: in std_logic;
        A_output, B_output: out std_logic_vector (31 downto 0)
    );
end reg_file;

architecture Behavioral of reg_file is

    -- 32 bit register
   component reg_32bit
   port(
        reg_data: in std_logic_vector (31 downto 0);
        load, clk, RW: in std_logic;
        q: out std_logic_vector (31 downto 0)
   );
   end component;
   
   -- 5 to 32 Decoder
   component decoder_5to32
   port(
        Address : in STD_LOGIC_VECTOR (4 downto 0);
        Q : out STD_LOGIC_VECTOR (31 downto 0)
        );
   end component;
   
   -- 2 to 1 Multiplexer
   component mux_2to1_32bit
   port(
        in0 : in STD_LOGIC_VECTOR (31 downto 0);
        in1 : in STD_LOGIC_VECTOR (31 downto 0);
        s : in STD_LOGIC;
        z : out STD_LOGIC_VECTOR (31 downto 0)
   );
   end component;
   
   -- 32 to 1 Multiplexer
   component mux_32to1_32bit
   port(
        sel : in STD_LOGIC_VECTOR (4 downto 0);
        i0, i1, i2, i3, i4, i5, i6, i7, i8,
        i9, i10, i11, i12, i13, i14, i15, 
        i16, i17, i18, i19, i20, i21, i22,
        i23, i24, i25, i26, i27, i28, i29,
        i30, i31 : in STD_LOGIC_VECTOR (31 downto 0);
        output : out STD_LOGIC_VECTOR (31 downto 0)
   );
   end component;
   
   -- signals
   signal load_reg, 
          q_reg0, q_reg1, q_reg2, q_reg3, q_reg4,
          q_reg5, q_reg6, q_reg7, q_reg8, q_reg9,
          q_reg10, q_reg11, q_reg12, q_reg13, q_reg14,
          q_reg15, q_reg16, q_reg17, q_reg18, q_reg19,
          q_reg20, q_reg21, q_reg22, q_reg23, q_reg24, 
          q_reg25, q_reg26, q_reg27, q_reg28, q_reg29,
          q_reg30, q_reg31: std_logic_vector(31 downto 0);
   
begin
    -- Port Maps :(
    
    -- Destination register decoder
    decoder: decoder_5to32 port map(
        Address => des_select_32,
        Q => load_reg
    );
    
    -- register 0
    reg00000: reg_32bit port map(
        reg_data => data,
        load => load_reg(0),
        clk => clk,
        RW => RW,
        q => q_reg0
    );
    
    -- register 1
    reg00001: reg_32bit port map(
        reg_data => data,
        load => load_reg(1),
        clk => clk,
        RW => RW,
        q => q_reg1
    );
    
    -- register 2
    reg00010: reg_32bit port map(
        reg_data => data,
        load => load_reg(2),
        clk => clk,
        RW => RW,
        q => q_reg2
    );
    
    -- register 3
    reg00011: reg_32bit port map(
        reg_data => data,
        load => load_reg(3),
        clk => clk,
        RW => RW,
        q => q_reg3
    );
    
    -- register 4
    reg00100: reg_32bit port map(
        reg_data => data,
        load => load_reg(4),
        clk => clk,
        RW => RW,
        q => q_reg4
    );
    
    -- register 5
    reg00101: reg_32bit port map(
        reg_data => data,
        load => load_reg(5),
        clk => clk,
        RW => RW,
        q => q_reg5
    );
    
    -- register 6
    reg00110: reg_32bit port map(
        reg_data => data,
        load => load_reg(6),
        clk => clk,
        RW => RW,
        q => q_reg6
    );
    
    -- register 7
    reg00111: reg_32bit port map(
        reg_data => data,
        load => load_reg(7),
        clk => clk,
        RW => RW,
        q => q_reg7
    );
    
    -- register 8
    reg01000: reg_32bit port map(
        reg_data => data,
        load => load_reg(8),
        clk => clk,
        RW => RW,
        q => q_reg8
    );
    
    -- register 9
    reg01001: reg_32bit port map(
        reg_data => data,
        load => load_reg(9),
        clk => clk,
        RW => RW,
        q => q_reg9
    );
    
    -- register 10
    reg01010: reg_32bit port map(
        reg_data => data,
        load => load_reg(10),
        clk => clk,
        RW => RW,
        q => q_reg10
    );
    
    -- register 11
    reg01011: reg_32bit port map(
        reg_data => data,
        load => load_reg(11),
        clk => clk,
        RW => RW,
        q => q_reg11
    );
    
    -- register 12
    reg01100: reg_32bit port map(
        reg_data => data,
        load => load_reg(12),
        clk => clk,
        RW => RW,
        q => q_reg12
    );
    
    -- register 13
    reg01101: reg_32bit port map(
        reg_data => data,
        load => load_reg(13),
        clk => clk,
        RW => RW,
        q => q_reg13
    );
    
    -- register 14
    reg01110: reg_32bit port map(
        reg_data => data,
        load => load_reg(14),
        clk => clk,
        RW => RW,
        q => q_reg14
    );
    
    -- register 15
    reg01111: reg_32bit port map(
        reg_data => data,
        load => load_reg(15),
        clk => clk,
        RW => RW,
        q => q_reg15
    );
    
    -- register 16
    reg10000: reg_32bit port map(
        reg_data => data,
        load => load_reg(16),
        clk => clk,
        RW => RW,
        q => q_reg16
    );
    
    -- register 17
    reg10001: reg_32bit port map(
        reg_data => data,
        load => load_reg(17),
        clk => clk,
        RW => RW,
        q => q_reg17
    );
    
    -- register 18
    reg10010: reg_32bit port map(
        reg_data => data,
        load => load_reg(18),
        clk => clk,
        RW => RW,
        q => q_reg18
    );
    
    -- register 19
    reg10011: reg_32bit port map(
        reg_data => data,
        load => load_reg(19),
        clk => clk,
        RW => RW,
        q => q_reg19
    );
    
    -- register 20
    reg10100: reg_32bit port map(
        reg_data => data,
        load => load_reg(20),
        clk => clk,
        RW => RW,
        q => q_reg20
    );
    
    -- register 21
    reg10101: reg_32bit port map(
        reg_data => data,
        load => load_reg(21),
        clk => clk,
        RW => RW,
        q => q_reg21
    );
    
    -- register 22
    reg10110: reg_32bit port map(
        reg_data => data,
        load => load_reg(22),
        clk => clk,
        RW => RW,
        q => q_reg22
    );
    
    -- register 23
    reg10111: reg_32bit port map(
        reg_data => data,
        load => load_reg(23),
        clk => clk,
        RW => RW,
        q => q_reg23
    );
    
    -- register 24
    reg11000: reg_32bit port map(
        reg_data => data,
        load => load_reg(24),
        clk => clk,
        RW => RW,
        q => q_reg24
    );
    
    -- register 25
    reg11001: reg_32bit port map(
        reg_data => data,
        load => load_reg(25),
        clk => clk,
        RW => RW,
        q => q_reg25
    );
    
    -- register 26
    reg11010: reg_32bit port map(
        reg_data => data,
        load => load_reg(26),
        clk => clk,
        RW => RW,
        q => q_reg26
    );
    
    -- register 27
    reg11011: reg_32bit port map(
        reg_data => data,
        load => load_reg(27),
        clk => clk,
        RW => RW,
        q => q_reg27
    );
    
    -- register 28
    reg11100: reg_32bit port map(
        reg_data => data,
        load => load_reg(28),
        clk => clk,
        RW => RW,
        q => q_reg28
    );
    
    -- register 29
    reg11101: reg_32bit port map(
        reg_data => data,
        load => load_reg(29),
        clk => clk,
        RW => RW,
        q => q_reg29
    );
    
    -- register 30
    reg11110: reg_32bit port map(
        reg_data => data,
        load => load_reg(30),
        clk => clk,
        RW => RW,
        q => q_reg30
    );
    
    -- register 31
    reg11111: reg_32bit port map(
        reg_data => data,
        load => load_reg(31),
        clk => clk,
        RW => RW,
        q => q_reg31
    );
   
    
    -- 32 to 1 source register multiplexer
    A_mux_32to1: mux_32to1_32bit port map (
        sel => A_select,
        i0 => q_reg0,
        i1 => q_reg1,
        i2 => q_reg2,
        i3 => q_reg3,
        i4 => q_reg4,
        i5 => q_reg5,
        i6 => q_reg6,
        i7 => q_reg7,
        i8 => q_reg8,
        i9 => q_reg9,
        i10 => q_reg10,
        i11 => q_reg11,
        i12 => q_reg12,
        i13 => q_reg13,
        i14 => q_reg14,
        i15 => q_reg15,
        i16 => q_reg16,
        i17 => q_reg17,
        i18 => q_reg18,
        i19 => q_reg19,
        i20 => q_reg20,
        i21 => q_reg21,
        i22 => q_reg22,
        i23 => q_reg23,
        i24 => q_reg24,
        i25 => q_reg25,
        i26 => q_reg26,
        i27 => q_reg27,
        i28 => q_reg28,
        i29 => q_reg29,
        i30 => q_reg30,
        i31 => q_reg31,
        output => A_output        
    );
    
    -- 32 to 1 source register multiplexer
    B_mux_32to1: mux_32to1_32bit port map (
        sel => B_select,
        i0 => q_reg0,
        i1 => q_reg1,
        i2 => q_reg2,
        i3 => q_reg3,
        i4 => q_reg4,
        i5 => q_reg5,
        i6 => q_reg6,
        i7 => q_reg7,
        i8 => q_reg8,
        i9 => q_reg9,
        i10 => q_reg10,
        i11 => q_reg11,
        i12 => q_reg12,
        i13 => q_reg13,
        i14 => q_reg14,
        i15 => q_reg15,
        i16 => q_reg16,
        i17 => q_reg17,
        i18 => q_reg18,
        i19 => q_reg19,
        i20 => q_reg20,
        i21 => q_reg21,
        i22 => q_reg22,
        i23 => q_reg23,
        i24 => q_reg24,
        i25 => q_reg25,
        i26 => q_reg26,
        i27 => q_reg27,
        i28 => q_reg28,
        i29 => q_reg29,
        i30 => q_reg30,
        i31 => q_reg31,
        output => B_output        
    );
    
end Behavioral;
