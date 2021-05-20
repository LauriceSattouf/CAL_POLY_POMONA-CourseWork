----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/15/2021 11:07:05 PM
-- Design Name: 
-- Module Name: top - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
    generic(top_N_inp:integer:=4; top_N_seg7:integer:=2; top_DIV:integer:=250_000);
    --top_N_inp is the bit width pf each input going into the AU
    --top_N_seg7 is the number of bits required to turn on all the necessary 7seg displays
        --in this case, four 7segs needs 2 bits
    --top_DIV is used for the clock divider when multiplexing 7sg displays
    Port (
            clk         : in std_logic;
            rst         : in std_logic;
            top_inp_A   : in std_logic_vector(3 downto 0);
            top_inp_B   : in std_logic_vector(3 downto 0);
            top_sel     : in std_logic_vector(3 downto 0); --highest two bits are AU. lowest two bits toggle BCD->HEX
            top_out_digit: out std_logic_vector(6 downto 0);
            top_7seg_en: out std_logic_vector(7 downto 0)
         );
end top;

architecture Behavioral of top is

signal inpA_hex    : std_logic_vector(top_N_inp-1 downto 0);
signal inpA_BCD    : std_logic_vector(top_N_inp-1  downto 0);
signal inpA_disp: std_logic_vector(top_N_inp-1  downto 0);
signal inpA_BCD_reg: std_logic_vector(top_N_inp-1  downto 0);

signal inpB_hex    : std_logic_vector(top_N_inp-1  downto 0);
signal inpB_BCD    : std_logic_vector(top_N_inp-1  downto 0);
signal inpB_disp: std_logic_vector(top_N_inp-1  downto 0);
signal inpB_BCD_reg:  std_logic_vector(top_N_inp-1  downto 0);

signal topAU_op: std_logic_vector(2*top_N_inp-1 downto 0);



signal cl : std_logic_vector(2*top_N_inp-1 downto 0);
signal cl_resized : std_logic_vector(top_N_inp-1 downto 0);
signal ch : std_logic_vector(2*top_N_inp-1 downto 0);
signal ch_resized : std_logic_vector(top_N_inp-1 downto 0);


component AU is 
    generic(N:integer:=4);
    Port (
            AU_Sel  : in std_logic_vector(1 downto 0);
            AU_inp_1: in std_logic_vector(N-1 downto 0);
            AU_inp_2: in std_logic_vector(N-1 downto 0);
            AU_op   : out std_logic_vector((N*2)-1 downto 0)
         );
end component;

component BinaryToBCD is
    Port (
            clk       : in std_logic;
            rst       : in std_logic;
            BinaryIn  : in  std_logic_vector(3 downto 0);
            BCDout    : out std_logic_vector(3 downto 0);
            BCDout_reg: out std_logic_vector(3 downto 0)
         );
end component;

component SevenSegCtrl is
    generic(N7:integer:=2; DIV7:integer:=250_000);
    Port (
            top_clk      : in std_logic;
            rst          : in std_logic;
            seg7_digit_1 : in std_logic_vector(3 downto 0);
            seg7_digit_2 : in std_logic_vector(3 downto 0);
            seg7_digit_3 : in std_logic_vector(3 downto 0);
            seg7_digit_4 : in std_logic_vector(3 downto 0);
            seg7_ctrl    : out std_logic_vector(7 downto 0);
            seg7_outDigit: out std_logic_vector(6 downto 0)
         );
end component;


begin

inpA_hex <= top_inp_A;
inpB_hex <= top_inp_B;

MUXHEXBIN_A:process(inpA_hex, inpA_BCD, top_sel(0))
    begin
        case top_sel(0) is
            when '0' => inpA_disp <= inpA_BCD;
            when '1' => inpA_disp <= inpA_hex; 
            when others => inpA_disp <= "ZZZZ";
        end case;
    end process;
    
MUXHEXBIN_B:process(inpB_hex,inpB_BCD, top_sel(1))
    begin
        case top_sel(1) is
            when '0' => inpB_disp <= inpB_BCD;
            when '1' => inpB_disp <= inpB_hex; 
            when others => inpA_disp <= "ZZZZ";
        end case;
    end process;


AUGEN: AU
    generic map(N => top_N_inp)
    port map(
                AU_sel => top_sel (3 downto 2),
                AU_inp_1 => inpA_BCD_reg,
                AU_inp_2 => inpB_BCD_reg,
                AU_op => topAU_op
            );

----------------
--Separate the two-digit output into single digits
cl <= std_logic_vector(to_unsigned(to_integer(unsigned(topAU_op)) mod 10, topAU_op'length));
cl_resized <= cl(top_N_inp-1 downto 0); 
ch <= std_logic_vector(to_unsigned(to_integer(unsigned(topAU_op))/10, topAU_op'length));
ch_resized <= ch(top_N_inp-1 downto 0); 
------------

SEG7GEN: SevenSegCtrl
    generic map(N7 => top_N_seg7, DIV7 => top_DIV)
    port map(
                top_clk => clk,
                rst => rst,
                seg7_digit_1 => inpA_disp,
                seg7_digit_2 => inpB_disp,
                seg7_digit_3 => cl_resized,
                seg7_digit_4 => ch_resized,
                seg7_ctrl => top_7seg_en,
                seg7_outDigit => top_out_digit
            );
            
BCDCONV_A: BinaryToBCD
    port map(
                clk => clk,
                rst => rst,
                BinaryIn => top_inp_A,
                BCDout => inpA_BCD,
                BCDout_reg => inpA_BCD_reg
            );
            
BCDCONV_B: BinaryToBCD
    port map(
                clk => clk,
                rst => rst,
                BinaryIn => top_inp_B,
                BCDout => inpB_BCD,
                BCDout_reg => inpB_BCD_reg
            );
end Behavioral;











