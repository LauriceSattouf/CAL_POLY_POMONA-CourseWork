----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/10/2021 01:13:18 AM
-- Design Name: 
-- Module Name: AU - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AU is
    generic(N:integer:=4);
    Port (
            AU_Sel  : in std_logic_vector(1 downto 0);
            AU_inp_1: in std_logic_vector(N-1 downto 0);
            AU_inp_2: in std_logic_vector(N-1 downto 0);
            AU_op   : out std_logic_vector((N*2)-1 downto 0)
         );
end AU;

architecture Behavioral of AU is
signal inp_1_int: integer range 0 to 15;
signal inp_2_int: integer range 0 to 15;
signal op_int   : integer range 0 to 255;


begin

inp_1_int <= to_integer(unsigned(AU_inp_1));
inp_2_int <= to_integer(unsigned(AU_inp_2));

process(AU_sel, AU_inp_1, AU_inp_2)
    begin
        case AU_sel is
            when "00" => op_int <= inp_1_int + inp_2_int;
            when "01" => op_int <= inp_1_int - inp_2_int;
            when "10" => op_int <= inp_1_int * inp_2_int;
            when others => op_int <= 0;
        end case;
end process;


AU_op <= std_logic_vector(to_unsigned(op_int,AU_op'length));

end Behavioral;
