----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/15/2021 09:31:51 PM
-- Design Name: 
-- Module Name: Mux7Seg - Behavioral
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

entity Mux7Seg is
    generic(MUXN:integer:=2);
    Port (
            digit_1: in std_logic_vector(3 downto 0);
            digit_2: in std_logic_vector(3 downto 0);
            digit_3: in std_logic_vector(3 downto 0);
            digit_4: in std_logic_vector(3 downto 0);
            sel    : in std_logic_vector(MUXN-1 downto 0);--in this case, counter output will act as select line
            op     : out std_logic_vector(3 downto 0)
         );
end Mux7Seg;

architecture Behavioral of Mux7Seg is

begin

process(sel, digit_1, digit_2)
begin
        case sel is
            when "00" => op <= digit_1;
            when "01" => op <= digit_2;
            when "10" => op <= digit_3;
            when "11" => op <= digit_4;
            when others => op <= (others => 'Z');
        end case;
end process;

end Behavioral;
