----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/07/2021 06:16:00 PM
-- Design Name: 
-- Module Name: mux2x1 - Structural
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

entity mux_2x1 is
    generic(WIDTH:integer:=16);
    Port (
            clk     :   in  std_logic;
            rst     :   in  std_logic; 
            inp_0   :   in  std_logic_vector(WIDTH-1 downto 0);
            inp_1   :   in  std_logic_vector(WIDTH-1 downto 0);
            sel     :   in  std_logic;
            op      :   out std_logic_vector(WIDTH-1 downto 0)            
        );
end mux_2x1;

architecture Structural of mux_2x1 is

begin

MUX: process(clk, rst)
     begin
        if(rst='1') then
            op <= (others => '0');
        elsif(rising_edge(clk)) then
            case sel is
                when '0' => op <= inp_1;
                when '1' => op <= inp_0;
                when others => op <= (others => 'Z');
            end case;
        end if;
     end process;
end Structural;
