----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2021 11:26:46 AM
-- Design Name: 
-- Module Name: Time_Muxing2x1 - Behavioral
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


entity Time_Muxing4x1 is
         Port ( 
                x  : in std_logic_vector(15 downto 0); 
                sel : in std_logic_vector(1 downto 0);
                y   : out std_logic_vector(3 downto 0)
                );
end Time_Muxing4x1;

architecture Behavioral of Time_Muxing4x1 is

begin

 Muxing: process(sel)
    begin
    case (sel)is 
    when "00" => y <= x(3downto 0);
    when "01" => y <= x(7 downto 4);
    when "10" => y <= x(11 downto 8);
    when others => y <= x(15 downto 12);
  
    end case;
    end process;

end Behavioral;
