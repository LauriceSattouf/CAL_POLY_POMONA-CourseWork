----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/15/2021 09:06:07 PM
-- Design Name: 
-- Module Name: ClkDivider - Behavioral
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

entity ClkDivider is
    generic(div:integer:=250_000);
    Port (
            top_clk: in std_logic;
            rst    : in std_logic;
            out_clk: out std_logic
         );
end ClkDivider;

architecture Behavioral of ClkDivider is

signal cnt: integer range 0 to DIV; 
signal tmp_clk: std_logic;

begin

process(top_clk, rst)
begin
    if(rst = '1') then
        cnt <= 0;
        tmp_clk <= '0';
    elsif rising_edge(top_clk) then
        if (cnt = div-1) then
            tmp_clk <= not(tmp_clk);
            cnt <= 0;
        else
            cnt <= cnt + 1;
        end if;
    end if;
end process;

out_clk <= tmp_clk;

end Behavioral;
