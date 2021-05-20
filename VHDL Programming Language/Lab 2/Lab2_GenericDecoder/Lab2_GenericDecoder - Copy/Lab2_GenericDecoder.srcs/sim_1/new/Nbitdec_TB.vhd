----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/15/2021 11:31:23 AM
-- Design Name: 
-- Module Name: Nbitdec_TB - Behavioral
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

entity Nbitdec_TB is
    generic(N_TB:integer:=5; inMUX_TB:integer:=16);
--  Port ( );
end Nbitdec_TB;

architecture Behavioral of Nbitdec_TB is

component Nbitdec is
    generic(N:integer:=5; inMUX:integer:=16);
    port(
            clk  : in std_logic;
            rst_N: in std_logic;
            s    : in std_logic_vector(N-1 downto 0);
            p_N  : out std_logic_vector((2 ** N)-1 downto 0);
            sel_N: in std_logic;
            op_N : out std_logic_vector(inMUX-1 downto 0)
        );
end component;

signal clk_TB: std_logic;
signal rst_TB: std_logic;
signal s_TB  : std_logic_vector(N_TB-1 downto 0);
signal p_TB  : std_logic_vector((2**N_TB)-1 downto 0);
signal sel_TB: std_logic;
signal op_TB : std_logic_vector(inMUX_TB-1 downto 0);

constant clock_period:time:=10 ns;

begin
    
    DEC_GEN: Nbitdec
    generic map (N => N_TB, inMUX => inMUX_TB)
    port map(
                clk => clk_TB,
                rst_N => rst_TB,
                s => s_TB,
                p_N => p_TB,
                sel_N => sel_TB,
                op_N => op_TB
            );
            
    CLK_GEN: process
    begin
        clk_TB <= '0';
        wait for clock_period;
        clk_TB <= '1';
        wait for clock_period;
    end process;
    
    TSB: process
    begin
        rst_TB <= '1';
        s_TB<="00000";
        sel_TB<='0';
        wait for 1*clock_period;
        rst_TB <= '0';
        wait for 2*clock_period;
        s_TB<="00011";
        wait for 10*clock_period;
        sel_TB<='1';
        wait for 10*clock_period;
        s_TB<="11100";
        wait for 10*clock_period;
        s_TB<="01010";
        wait for 10*clock_period;
        s_TB<="10101";
        wait for 10*clock_period;
        sel_TB<='0';
        wait;
    end process;
    
end Behavioral;
