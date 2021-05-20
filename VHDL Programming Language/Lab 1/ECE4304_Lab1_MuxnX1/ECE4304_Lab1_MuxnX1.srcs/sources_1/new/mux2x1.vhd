----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/06/2021 01:29:35 PM
-- Design Name: MuxNx1 using mux2x1
-- Module Name: mux2x1 - Behavioral
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

entity mux2x1 is
  Port ( 
            
            inp_0   :   in  std_logic;
            inp_1   :   in  std_logic;
            sel     :   in  std_logic;
            op      :   out std_logic := '0'            
        );
end mux2x1;

architecture Structural of mux2x1 is

begin

op <= (inp_0 and sel) or (inp_1 and (not sel));        

end Structural;

