----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/16/2021 01:29:03 AM
-- Design Name: 
-- Module Name: top_TB - Behavioral
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

entity top_TB is
    generic(top_N_inp_TB:integer:=4; top_N_seg7_TB:integer:=2; top_DIV_TB:integer:= 5);
--  Port ( );
end top_TB;

architecture Behavioral of top_TB is

signal clk_TB : std_logic;
signal rst_tB         : std_logic;
signal top_inp_A_TB   : std_logic_vector(3 downto 0);
signal top_inp_B_TB   : std_logic_vector(3 downto 0);
signal top_sel_TB     : std_logic_vector(3 downto 0);
signal top_out_digit_TB: std_logic_vector(6 downto 0);
signal top_7seg_en_TB: std_logic_vector(7 downto 0);
constant clk_period: time:=10ns;

component top is
    generic(top_N_inp:integer:=4; top_N_seg7:integer:=2; top_DIV:integer:=250_000);
    Port (
            clk         : in std_logic;
            rst         : in std_logic;
            top_inp_A   : in std_logic_vector(3 downto 0);
            top_inp_B   : in std_logic_vector(3 downto 0);
            top_sel     : in std_logic_vector(3 downto 0);
            top_out_digit: out std_logic_vector(6 downto 0);
            top_7seg_en: out std_logic_vector(7 downto 0)
         );
 end component;

begin

TOPGEN: top
    generic map(top_N_inp => top_N_inp_TB, top_N_seg7 => top_N_seg7_TB, top_DIV => top_DIV_TB)
    port map(
                clk => clk_TB,
                rst => rst_TB,
                top_inp_A => top_inp_A_TB,
                top_inp_B => top_inp_A_TB,
                top_sel => top_sel_TB,
                top_out_digit => top_out_digit_TB,
                top_7seg_en => top_7seg_en_TB
            );
            
CLKGEN: process
    begin
        clk_TB <= '0';
        wait for clk_period/2;
        clk_TB <= '1';
        wait for clk_period/2;
    end process;
    
TB: process
    begin
        rst_TB <= '1';
        top_inp_A_TB <= "0010";
        top_inp_B_TB <= "0010";
        top_sel_TB <= "0100";   --should be subtracting the two values
        wait for 2*clk_period;
        rst_TB <= '0';
        wait for 2*clk_period;
        top_sel_TB <= "0000";
        wait for 2*clk_period;
        top_sel_TB <= "0011";
        wait for 2*clk_period;
        top_sel_TB <= "1000";
        wait;
    end process;


end Behavioral;
