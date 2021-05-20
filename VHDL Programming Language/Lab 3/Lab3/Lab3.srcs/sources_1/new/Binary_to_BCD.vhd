----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/18/2021 10:44:34 AM
-- Design Name: 
-- Module Name: Binary_to_BCD - Behavioral
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

entity Binary_to_BCD is
        Port (
              B: in std_logic_vector(3 downto 0);
              P: out std_logic_vector(3 downto 0)
              
             );

end Binary_to_BCD;

architecture Behavioral of Binary_to_BCD is

begin

 P(0)<= B(0);
 p(1)<= (B(1)And(Not B(3))) Or ( (Not B(1))And B(2)And B(3));
 
 P(2)<= ( B(2)And B(1)) Or ((Not B(3))And B(2));
 
 P(3)<= B(3) ANd (Not B(2)) And (Not B(1));
end Behavioral;

