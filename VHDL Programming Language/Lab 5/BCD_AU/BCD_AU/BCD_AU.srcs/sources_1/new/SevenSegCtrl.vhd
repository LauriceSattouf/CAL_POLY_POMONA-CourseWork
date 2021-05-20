----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/15/2021 08:51:32 PM
-- Design Name: 
-- Module Name: SevenSegCtrl - Behavioral
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

entity SevenSegCtrl is
    generic(N7:integer:=2; DIV7:integer:=250_000);
    Port (
            top_clk: in std_logic;
            rst: in std_logic;
            seg7_digit_1: in std_logic_vector(3 downto 0);
            seg7_digit_2: in std_logic_vector(3 downto 0);
            seg7_digit_3: in std_logic_vector(3 downto 0);
            seg7_digit_4: in std_logic_vector(3 downto 0);
            seg7_ctrl: out std_logic_vector(7 downto 0);
            seg7_outDigit: out std_logic_vector(6 downto 0)
         );
end SevenSegCtrl;


architecture Behavioral of SevenSegCtrl is

signal seg7_clk: std_logic;
signal cnt_out: std_logic_vector(N7-1 downto 0);
signal mux_out: std_logic_vector(3 downto 0);

component ClkDivider is
    generic(div:integer:=250_000);
    Port (
            top_clk: in std_logic;
            rst    : in std_logic;
            out_clk: out std_logic
         );
end component;

component Mux7Seg is
    generic(MUXN:integer:=1);
    Port (
            digit_1: in std_logic_vector(3 downto 0);
            digit_2: in std_logic_vector(3 downto 0);
            digit_3: in std_logic_vector(3 downto 0);
            digit_4: in std_logic_vector(3 downto 0);
            sel    : in std_logic_vector(MUXN-1 downto 0);--in this case, counter output will act as select line
            op     : out std_logic_vector(3 downto 0)
         );
end component;

component FourBitTo7Seg is
    Port (
           inp_4bitInp  : in std_logic_vector(3 downto 0);
           op_7segDigit : out std_logic_vector (6 downto 0)
         );
end component;

component DecodeUpCnt is
    generic(DECN:integer:=1);
    Port (
            inp: in std_logic_vector(DECN-1 downto 0);
            op : out std_logic_vector(7 downto 0)
         );
end component;

component NBitCounter is
    generic(N:integer:=1);
    Port (
            clk: in std_logic;
            rst: in std_logic;
            cnt: out std_logic_vector(N-1 downto 0)
         );
end component;



begin

CLKDIV: ClkDivider
    generic map(DIV => DIV7)
    port map(
                top_clk => top_clk,
                rst => rst,
                out_clk => seg7_clk
            );
            
CNTGEN: NBitCounter
    generic map(N => N7)
    port map(
                clk => seg7_clk,
                rst => rst,
                cnt => cnt_out
            );
            
MUXGEN: Mux7Seg
    generic map(MUXN => N7)
    port map(
                digit_1 => seg7_digit_1, 
                digit_2 => seg7_digit_2, 
                digit_3 => seg7_digit_3, 
                digit_4 => seg7_digit_4,
                sel => cnt_out ,
                op => mux_out
            );

DECGEN: DecodeUpCnt
    generic map(DECN => N7)
    port map(
                inp => cnt_out,
                op => seg7_ctrl
            );

DIGITCONV: FourBitTo7Seg
    port map(
                inp_4bitInp => mux_out,
                op_7segDigit => seg7_outDigit
            );
    
            

end Behavioral;
