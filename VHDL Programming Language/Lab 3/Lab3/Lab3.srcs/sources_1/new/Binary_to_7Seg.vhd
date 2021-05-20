----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/18/2021 10:06:11 PM
-- Design Name: 
-- Module Name: Binary_to_7Seg - Behavioral
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

entity BCD_to_7Seg is
            Port (
                   BCD  : in std_logic_vector(3 downto 0);
                   a_to_g : out std_logic_vector (6 downto 0)
                    
                 );
end BCD_to_7Seg;

architecture Behavioral of BCD_to_7Seg is

begin
process (BCD)
begin
  case BCD is
when "0000"  => a_to_g   <= "0000001";-----
when "0001"  => a_to_g   <= "1001111"; 
when "0010"  => a_to_g   <= "0010010";
when "0011"  => a_to_g   <= "0000110"; 
when "0100"  => a_to_g   <= "1001100"; 
when "0101"  => a_to_g   <= "0100100"; 
when "0110"  => a_to_g   <= "0100000"; 
when "0111"  => a_to_g   <= "0001111"; 
when "1000"  => a_to_g   <= "0000000";
when "1001"  => a_to_g   <= "0000100";
when "1010"  => a_to_g   <= "0000001";-----
when "1011"  => a_to_g   <= "1001111"; 
when "1100"  => a_to_g   <= "0010010";
when "1101"  => a_to_g   <= "0000110"; 
when "1110"  => a_to_g   <= "1001100"; 
when "1111"  => a_to_g   <= "0100100"; 
when others  => a_to_g    <= "1111111";
end case;
 
end process;
 
end Behavioral;



