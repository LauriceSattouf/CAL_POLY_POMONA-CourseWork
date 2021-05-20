----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/09/2021 11:49:51 PM
-- Design Name: 
-- Module Name: BinaryToBCD_TB - Behavioral
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

entity BinaryToBCD_TB is
--  Port ( );
end BinaryToBCD_TB;

architecture Behavioral of BinaryToBCD_TB is

component  BinaryToBCD is
    port (
            clk: in std_logic;
            rst: in std_logic;
            BinaryIn: in std_logic_vector(3 downto 0);
            BCDout  : out std_logic_vector(3 downto 0);
            BCDout_reg: out std_logic_vector(3 downto 0)
         );
end component;

signal clk_tb: std_logic;
signal rst_tb: std_logic;
signal BinaryIn_TB: std_logic_vector(3 downto 0);
signal BCDout_TB: std_logic_vector(3 downto 0);
signal BCDout_reg_TB: std_logic_vector(3 downto 0);

constant clk_period:time:= 10 ns;

begin  
Bin_BCD: BinaryToBCD
    port map (
                clk => clk_tb,
                rst => rst_tb,
                BinaryIn => BinaryIn_TB,
                BCDout   => BCDout_TB,
                BCDout_reg => BCDout_reg_TB
             );

CLKGEN: process
    begin
        clk_TB <= '0';
        wait for clk_period;
        clk_TB <= '1';
        wait for clk_period;
    end process;
             
TB: process
    begin
        rst_TB <= '1';
        BinaryIn_TB <= "1101";
        wait for clk_period;
        rst_TB <='0';
        wait for clk_period;
        BinaryIn_TB <= "1101";
        wait for 2*clk_period;
        BinaryIn_TB <= "1000";
        wait for 2*clk_period;
        BinaryIn_TB <= "1001";
        wait for 2*clk_period;
        BinaryIn_TB <= "0001";
        wait for 2*clk_period;
        BinaryIn_TB <= "0101";
        wait for 2*clk_period;
        BinaryIn_TB <= "1110";
        wait;
    end process;

end Behavioral;
