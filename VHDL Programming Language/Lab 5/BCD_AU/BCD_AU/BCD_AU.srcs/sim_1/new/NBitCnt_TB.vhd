----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/16/2021 01:10:55 AM
-- Design Name: 
-- Module Name: NBitCnt_TB - Behavioral
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

entity NBitCnt_TB is
    generic(N_TB:integer:=2);
--  Port ( );
end NBitCnt_TB;

architecture Behavioral of NBitCnt_TB is

signal clk_TB: std_logic;
signal rst_TB: std_logic;
signal cnt_TB: std_logic_vector(N_TB-1 downto 0);

component NBitCounter is
    generic(N:integer:=2); --N is the number of bits for the counter
    Port (
            clk: in std_logic;
            rst: in std_logic;
            cnt: out std_logic_vector(N-1 downto 0)
         );
 end component;

constant clk_period:time:= 10ns;

begin

CNTGEN: NBitCounter
    generic map(N => N_TB)
    port map(
                clk => clk_TB,
                rst => rst_TB,
                cnt => cnt_TB
            );

CLKGEN: process
    begin
        clk_TB <= '0';
        wait for clk_period/2;
        clk_TB <='1';
        wait for clk_period/2;        
    end process;

TB: process
    begin
        rst_TB <= '1';
        wait for 2*clk_period;
        rst_TB <='0';
        wait;
    end process;

end Behavioral;
