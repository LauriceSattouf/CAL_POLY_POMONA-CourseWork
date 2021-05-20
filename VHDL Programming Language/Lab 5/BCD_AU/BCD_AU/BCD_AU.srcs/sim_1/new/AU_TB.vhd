----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/10/2021 01:33:41 AM
-- Design Name: 
-- Module Name: AU_TB - Behavioral
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

entity AU_TB is
    generic(N_TB:integer:=4);
--  Port ( );
end AU_TB;

architecture Behavioral of AU_TB is

component AU is
    generic(N:integer:=4);
    port (
            AU_Sel: in std_logic_vector(1 downto 0);
            AU_inp_1: in std_logic_vector(N-1 downto 0);
            AU_inp_2: in std_logic_vector(N-1 downto 0);
            AU_op : out std_logic_vector((N*2)-1 downto 0)
         );
end component;

signal AU_sel_TB: std_logic_vector(1 downto 0);
signal AU_inp_1_TB: std_logic_vector(N_TB-1 downto 0);
signal AU_inp_2_TB: std_logic_vector(N_TB-1 downto 0);
signal AU_op_TB: std_logic_vector((N_TB*2)-1 downto 0);
constant clk_period: time:= 10ns;

begin

AUASS: AU
        generic map(N => N_TB)
        port map(
                    AU_sel => AU_sel_TB,
                    AU_inp_1 => AU_inp_1_TB,
                    AU_inp_2 => AU_inp_2_TB,
                    AU_op => AU_op_TB
                );

TB: process
    begin
        --wait for 2*clk_period;
        AU_sel_TB <= "00";
        AU_inp_1_TB <= "0001";
        AU_inp_2_TB <= "0010";
        wait for 2*clk_period;
        AU_inp_1_TB <= "0100";
        AU_inp_2_TB <= "0010"; 
        wait for 2*clk_period;
        AU_sel_TB <= "01";
        AU_inp_1_TB <= "0100";
        AU_inp_2_TB <= "0010"; 
        wait for 2*clk_period;
        AU_sel_TB <= "10";
        AU_inp_1_TB <= "1001";
        AU_inp_2_TB <= "0100";
        wait for 2* clk_period;
        wait; 
    end process;

end Behavioral;
