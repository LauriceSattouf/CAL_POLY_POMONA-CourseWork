----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/09/2021 11:39:34 PM
-- Design Name: 
-- Module Name: BinaryToBCD - Behavioral
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

entity BinaryToBCD is
    Port (
            clk: in std_logic;
            rst: in std_logic;
            BinaryIn: in  std_logic_vector(3 downto 0);
            BCDout  : out std_logic_vector(3 downto 0);
            BCDout_reg: out std_logic_vector(3 downto 0)
         );
end BinaryToBCD;

architecture Behavioral of BinaryToBCD is

--Signal Declaration--
signal tmpBCDout: std_logic_vector(3 downto 0);
signal tmpBCDout_reg: std_logic_vector(3 downto 0);
------------------------

begin

--BCD Conversion--
tmpBCDout(3) <= BinaryIn(3) and (not BinaryIn(2)) and (not BinaryIn(1));
tmpBCDout(2) <= (BinaryIn(2) and BinaryIn(1)) or ( (not BinaryIn(3)) and BinaryIn(2) );
tmpBCDout(1) <= ( (not BinaryIn(3)) and BinaryIn(1) ) or ( BinaryIn(3) and BinaryIn(2) and (not BinaryIn(1)) );
tmpBCDout(0) <= BinaryIn(0);

BCDout <= tmpBCDout; 
-------------------------
    
--Store in Reg--
REGIFY: process(clk, rst)
    begin
        if rst = '1' then
            tmpBCDout_reg <= (others => '0');
        elsif rising_edge(clk) then
            tmpBCDout_reg <= tmpBCDout;
        end if;
    end process;

BCDout_reg <= tmpBCDout_reg;
----------------------------

end Behavioral;
