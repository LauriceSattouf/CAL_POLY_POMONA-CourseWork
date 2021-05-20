----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/07/2021 07:08:48 PM
-- Design Name: 
-- Module Name: muxNx1_TB - Behavioral
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

entity muxNx1_TB is
    generic(LAYER_TB:integer:=3);
end muxNx1_TB;

architecture Behavioral of muxNx1_TB is
    component muxNx1
        generic(LAYER:integer:=2);
        port(
                sel :   in  std_logic_vector(LAYER-1 downto 0);
                inp :   in  std_logic_vector((2 ** LAYER)-1 downto 0);
                op  :   out std_logic                
            );
    end component;
    
signal sel_TB : std_logic_vector(LAYER_TB-1 downto 0);
signal inp_TB : std_logic_vector((2**LAYER_TB)-1 downto 0);
signal op_TB  : std_logic;

constant clock_period:time:=10 ns;

begin

    NMUX_GEN: muxNx1
    generic map(LAYER => LAYER_TB)
    port map(
                sel => sel_TB,
                inp => inp_TB,
                op  => op_TB
            );
    
            
    TSB: process
    begin   
            sel_TB <= "010";
            inp_TB <= x"06";
            wait for clock_period;
            sel_TB <= "001";
            inp_TB <= x"0A";
            wait for clock_period;
            sel_TB <= "110";
            inp_TB <= x"02";
            wait for clock_period;
            sel_TB <= "111";
            inp_TB <= x"09";
            wait for clock_period;
            sel_TB <= "011";
            inp_TB <= x"01";
            wait;
     end process;
     
end Behavioral;
