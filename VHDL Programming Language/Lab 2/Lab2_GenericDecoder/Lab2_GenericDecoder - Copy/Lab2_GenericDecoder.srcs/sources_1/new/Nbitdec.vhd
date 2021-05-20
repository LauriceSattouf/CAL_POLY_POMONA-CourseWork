----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/11/2021 01:10:53 PM
-- Design Name: 
-- Module Name: Nbitdec - Behavioral
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

entity Nbitdec is
    generic(N:integer:=5; inMUX:integer:=16);               --inMUX is the width of each mux input
    Port ( 
            clk: in std_logic;
            rst_N: in std_logic;                             --added "_N" suffix for clarity
            s  : in std_logic_vector(N-1 downto 0);
            p_N  : out std_logic_vector((2 ** N)-1 downto 0);
            sel_N: in std_logic;                             --mux select
            op_N : out std_logic_vector(inMUX-1 downto 0)    --mux output
        );
end Nbitdec;

architecture Behavioral of Nbitdec is
    constant LAYER:integer := (N+1)/2;  -- equivalent to dividing 2 and round up
    constant Nup:integer := LAYER*2; -- N but rounded up to the next even integer

    component dec2x4 is
        Port (
            clk: in std_logic;
            rst: in std_logic;
            s: in std_logic_vector(1 downto 0);
            p: out std_logic_vector (3 downto 0)
        );
    end component;
    
    component mux_2x1 is
        generic(WIDTH:integer:=16);
        port (
                clk   : in std_logic;
                rst   : in std_logic;
                inp_0 : in  std_logic_vector(WIDTH-1 downto 0);
                inp_1 : in  std_logic_vector(WIDTH-1 downto 0);
                sel   : in  std_logic;
                op    : out std_logic_vector(WIDTH-1 downto 0)        
             );
     end component;

    signal interlayer: std_logic_vector((2 ** (Nup+1))-1 downto 1);
    signal s_tmp: std_logic_vector(Nup downto 0);
    signal p_tmp: std_logic_vector((2**N)-1 downto 0);

begin
    
    GEN_LAYERS: for i in 0 to LAYER-1 generate
        GEN_DECS: for j in 0 to (2 ** (i*2))-1 generate
            D2x4: dec2x4 port map(
                clk => clk,
                rst => not(interlayer((2**(i*2))+j)),
                s   => s_tmp((2*(LAYER-i))-1 downto (2*(LAYER-i))-2),
                p   => interlayer((((2**(i*2))+j)*4)+3 downto ((2**(i*2))+j)*4)
            );

        end generate;
    end generate;

    interlayer(1) <= not(rst_N);
    s_tmp(N-1 downto 0) <= s;
    s_tmp(Nup downto N) <= (others => '0');
    p_N <= interlayer(((2 ** Nup)+(2 ** N)-1) downto (2 ** Nup));
    
    DEC_2MUX: mux_2x1 --turn 32 bits of decoder output into 2 sets of 16 bit mux inputs. toggle which 16 bits are shown using 'sel'
            generic map(WIDTH => inMUX)
            port map(
                        clk => clk,
                        rst => rst_N,
                        inp_1 =>interlayer(((2 ** Nup)+(2 ** N)-1-inMUX) downto (2 ** Nup)),            --first 16 bits of decoder output go to input 1
                        inp_0 =>interlayer(((2 ** Nup)+(2 ** N)-1) downto ((2 ** Nup)+(2 ** N)-inMUX)), --second 16 bits of decoder output go to input 1
                        sel => sel_N,
                        op => op_N
                    );
end Behavioral;

