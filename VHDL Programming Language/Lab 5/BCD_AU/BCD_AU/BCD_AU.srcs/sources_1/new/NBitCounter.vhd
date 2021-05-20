----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/15/2021 09:52:11 PM
-- Design Name: 
-- Module Name: NBitCounter - Behavioral
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

entity NBitCounter is
    generic(N:integer:=2); --N is the number of bits for the counter
    Port (
            clk: in std_logic;
            rst: in std_logic;
            cnt: out std_logic_vector(N-1 downto 0)
         );
end NBitCounter;

architecture Behavioral of NBitCounter is

signal tmp_cnt: integer;

begin

COUNT: process(clk, rst)
       begin
            if rst ='1' then
                tmp_cnt <= 0;
            else
                if rising_edge(clk) then
                    tmp_cnt <= tmp_cnt +1;
                end if;
            end if;
       end process;
         
cnt <= std_logic_vector(to_unsigned(tmp_cnt, cnt'length)); --turn integer to bit vector size of cnt

end Behavioral;