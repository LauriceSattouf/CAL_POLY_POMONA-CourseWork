----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/15/2021 09:35:34 PM
-- Design Name: 
-- Module Name: FourBitTo7Seg - Behavioral
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

entity FourBitTo7Seg is
            Port (
                   inp_4bitInp  : in std_logic_vector(3 downto 0);
                   op_7segDigit : out std_logic_vector (6 downto 0)
                 );
end FourBitTo7Seg;

architecture Behavioral of FourBitTo7Seg is

begin

process (inp_4bitInp)
begin
    case inp_4bitInp is
        when "0000"  => op_7segDigit   <= "0000001";
        when "0001"  => op_7segDigit   <= "1001111"; 
        when "0010"  => op_7segDigit   <= "0010010";
        when "0011"  => op_7segDigit   <= "0000110"; 
        when "0100"  => op_7segDigit   <= "1001100"; 
        when "0101"  => op_7segDigit   <= "0100100"; 
        when "0110"  => op_7segDigit   <= "0100000"; 
        when "0111"  => op_7segDigit   <= "0001111"; 
        when "1000"  => op_7segDigit   <= "0000000";
        when "1001"  => op_7segDigit   <= "0000100";
        when "1010"  => op_7segDigit   <= "0001000";
        when "1011"  => op_7segDigit   <= "1100000"; 
        when "1100"  => op_7segDigit   <= "0110001";
        when "1101"  => op_7segDigit   <= "1000010"; 
        when "1110"  => op_7segDigit   <= "0110000"; 
        when "1111"  => op_7segDigit   <= "0111000"; 
        when others  => op_7segDigit    <= "1111111";
    end case;
end process;
 
end Behavioral;

