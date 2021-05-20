----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/16/2021 12:48:04 AM
-- Design Name: 
-- Module Name: SevenSegCtrl_TB - Behavioral
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

entity SevenSegCtrl_TB is
    generic(N7_TB: integer:= 2; DIV_TB:integer:=5);
--  Port ( );
end SevenSegCtrl_TB;

architecture Behavioral of SevenSegCtrl_TB is

signal top_clk_TB: std_logic;
signal rst_TB: std_logic;
signal seg7_digit_1_TB: std_logic_vector(3 downto 0);
signal seg7_digit_2_TB: std_logic_vector(3 downto 0);
signal seg7_digit_3_TB: std_logic_vector(3 downto 0);
signal seg7_digit_4_TB: std_logic_vector(3 downto 0);
signal seg7_ctrl_TB: std_logic_vector(7 downto 0);
signal seg7_outdigit_TB: std_logic_vector(6 downto 0);

component SevenSegCtrl is
    generic(N7:integer:= 2; DIV7:integer:=250_000);
    port(
            top_clk: in std_logic;
            rst: in std_logic;
            seg7_digit_1: in std_logic_vector(3 downto 0);
            seg7_digit_2: in std_logic_vector(3 downto 0);
            seg7_digit_3: in std_logic_vector(3 downto 0);
            seg7_digit_4: in std_logic_vector(3 downto 0);
            seg7_ctrl: out std_logic_vector(7 downto 0);
            seg7_outDigit: out std_logic_vector(6 downto 0)
        );
end component;

constant clk_period:time:= 10ns;

begin

SEGGEN: SevenSegCtrl
    generic map(N7 => N7_TB, DIV7 => DIV_TB)
    port map(
                top_clk => top_clk_TB,
                rst => rst_TB,
                seg7_digit_1 => seg7_digit_1_TB,
                seg7_digit_2 => seg7_digit_2_TB,
                seg7_digit_3 => seg7_digit_3_TB,
                seg7_digit_4 => seg7_digit_4_TB,
                seg7_ctrl => seg7_ctrl_TB,
                seg7_outDigit => seg7_outDigit_TB
            );
            
CLKGEN: process
    begin
        top_clk_TB <= '0';
        wait for clk_period/2;
        top_clk_TB <= '1';
        wait for clk_period/2;
    end process;

TB: process
    begin
        rst_TB <= '1';
        seg7_digit_1_TB <= "0001";
        seg7_digit_2_TB <= "0010";
        seg7_digit_3_TB <= "0100";
        seg7_digit_4_TB <= "1000";
        wait for 2*clk_period;
        rst_TB <= '0';
        wait;
    end process;

end Behavioral;
