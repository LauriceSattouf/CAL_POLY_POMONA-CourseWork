----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/15/2021 09:39:14 PM
-- Design Name: 
-- Module Name: DecodeUpCnt - Behavioral
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

entity DecodeUpCnt is
    generic(DECN:integer:=2);
    Port (
            inp: in std_logic_vector(DECN-1 downto 0);
            op : out std_logic_vector(7 downto 0)
         );
end DecodeUpCnt;

architecture Behavioral of DecodeUpCnt is

begin

process(inp)
begin
    case inp is
        when "00" => op <= "11111110";
        when "01" => op <= "11111101";
        when "10" => op <= "11111011";
        when "11" => op <= "11110111";
        when others => op <= (others => 'Z');
    end case;
end process;

end Behavioral;
