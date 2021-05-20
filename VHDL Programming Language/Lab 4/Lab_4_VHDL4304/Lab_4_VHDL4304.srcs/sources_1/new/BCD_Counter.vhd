----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/01/2021 07:21:54 PM
-- Design Name: 
-- Module Name: BCD_Counter - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all; 
use IEEE.std_logic_arith.all; 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BCD_Counter is
             Port (
                        bcd_clk: in  std_logic; -- clk
                        bcd_rst: in  std_logic; -- reset signal 
                        bcd_ud : in  std_logic; -- Switch for the up/down control signal 
                        bcd_op : out std_logic_vector(3 downto 0) -- output pattern              
                   );
end BCD_Counter;

architecture Behavioral of BCD_Counter is

signal bcd_tmp    : std_logic_vector(3 downto 0); 
signal rst_auto: std_logic; 
signal bcd_gen_rst: std_logic; 

signal up_auto_rst: std_logic; 
signal dn_auto_rst: std_logic;
begin

rst_auto <= bcd_rst or bcd_gen_rst; 


BCD_GEN: process (bcd_clk, rst_auto) 
         begin 
            if (rst_auto = '1')  then 
                    if (bcd_ud = '1') then 
                        bcd_tmp <= (others =>'0');
                    else 
                        bcd_tmp <= "1001";
                    end if;  
            elsif(rising_edge(bcd_clk)) then 
                
                   if (bcd_ud = '1') then 
                         bcd_tmp <= bcd_tmp + 1; -- we need to stop by 9 
                   else 
                        bcd_tmp <= bcd_tmp - 1;   -- we have to stop by 0
                   end if;      
            end if; 
           
         end process; 
up_auto_rst <= bcd_tmp(3) and (not bcd_tmp(2))  and  (bcd_tmp(1)) and (not bcd_tmp(0));
dn_auto_rst <= ( bcd_tmp (0) and bcd_tmp(1) and bcd_tmp(2) and bcd_tmp(3));
bcd_gen_rst <=  (up_auto_rst and bcd_ud) or (dn_auto_rst and (not bcd_ud)) ; 

bcd_op <= bcd_tmp;

--- we have to make a cascaded BCD counter where the first digit of the counter 
--flips every 10 counts to the second counter
-- up_auto and the dn_auto will enable the cascaded counter.
end Behavioral;
