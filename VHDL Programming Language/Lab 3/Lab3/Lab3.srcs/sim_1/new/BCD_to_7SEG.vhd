----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/18/2021 10:52:13 PM
-- Design Name: 
-- Module Name: BCD_to_7Seg_tb - Behavioral
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

entity BCD_to_7Seg_tb is
--  Port ( );
end BCD_to_7Seg_tb;

architecture Behavioral of BCD_to_7Seg_tb is

component BCD_to_7Seg is
            Port (
                   BCD  : in std_logic_vector(3 downto 0);
                   a_to_g : out std_logic_vector (6 downto 0)
                    
                 );
end component;
signal BCD_tb : std_logic_vector(3 downto 0) := (others => '0');
signal a_to_g_tb : std_logic_vector(6 downto 0);
constant tb_time : time:= 10ns;
begin


uut: BCD_to_7Seg port map (
                            BCD => BCD_tb,
                            a_to_g => a_to_g_tb
                           );


TEST2: process 
    begin
--when 0 or 10 => a_to_g    <= "0000001"
--when 1 or 11  => a_to_g   <= "1001111"
--when 2 or 12  => a_to_g   <= "0010010"
--when 3 or 13  => a_to_g   <= "0000110" 
--when 4 or 14  => a_to_g   <= "1001100" 
--when 5 or 15  => a_to_g   <= "0100100" 
--when 6        => a_to_g   <= "0100000" 
--when 7        => a_to_g   <= "0001111" 
--when 8        => a_to_g   <= "0000000"
--when 9        => a_to_g   <= "0000100"
 
                        BCD_tb <= "0000"; 
                      wait for tb_time;
                        BCD_tb <= "0001"; 
                      wait for tb_time;
                        BCD_tb<= "0010";
                      wait for tb_time;
                        BCD_tb <= "0011";
                      wait for tb_time;
                        BCD_tb<= "0100";
                      wait for tb_time;
                        BCD_tb<= "0101";
                      wait for tb_time;
                        BCD_tb<= "0110";
                      wait for tb_time;
                        BCD_tb<= "0111";
                      wait for tb_time;
                        BCD_tb <= "1000";
                      wait for tb_time;
                        BCD_tb<= "1001";
                      wait for tb_time;
                      
                       BCD_tb<= "1010"; --10 
                      wait for tb_time; 
                       BCD_tb<= "1011"; --11
                      wait for tb_time; 
                       BCD_tb<= "1100"; --12
                      wait for tb_time;
                       BCD_tb<= "1101"; --13
                      wait for tb_time;
                       BCD_tb<= "1110"; --14
                      wait for tb_time;
                       BCD_tb<= "1111"; --15
                      wait for tb_time;
                      wait;
end process;
 
END;

