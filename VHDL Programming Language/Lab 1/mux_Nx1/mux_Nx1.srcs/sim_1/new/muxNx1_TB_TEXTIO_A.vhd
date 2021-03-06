library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.textio.all;
use IEEE.std_logic_textio.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
entity muxNx1_TB_TEXTIO is
    generic (LAYER_TB:integer:=6);
end muxNx1_TB_TEXTIO;
architecture Behavioral of muxNx1_TB_TEXTIO is
    component muxNx1
        generic (LAYER:integer:=3);
        port(
                sel : in  std_logic_vector(LAYER-1 downto 0);
                inp : in  std_logic_vector((2 ** LAYER)-1 downto 0);
                op  : out std_logic        
            );
    end component;
signal sel_TB : std_logic_vector(LAYER_TB-1 downto 0);
signal inp_TB : std_logic_vector((2 ** LAYER_TB)-1 downto 0);
signal op_TB  : std_logic; 
constant clock_period:time:=1ns;
file file_vectors: text;
file file_results: text;
begin
MUX_GEN : muxNx1
generic map(LAYER => LAYER_TB)
port map(
            sel => sel_TB,
            inp => inp_TB,
            op  => op_TB
        );
        
TEXTIO_GEN: process
            variable v_ILINE: line;
            variable v_OLINE: line;
            
            variable v_INP   : std_logic_vector((2 ** LAYER_TB)-1 downto 0);
            variable v_SEL   : std_logic_vector(LAYER_TB-1 downto 0);
            variable v_space : character;
            begin
                      
         
            file_open(file_vectors,"C:\Users\Lauri\Desktop\Spring2021\4304VHDL\Labs\mux_Nx1\input.txt", read_mode);     
            file_open(file_results,"C:\Users\Lauri\Desktop\Spring2021\4304VHDL\Labs\mux_Nx1\output.txt" , write_mode);
            
            while not endfile(file_vectors) loop 
                readline(file_vectors, v_ILINE); 
                read(v_ILINE, v_INP);  
                read(v_ILINE, v_SPACE); 
                read(v_ILINE, v_SEL);
                
                inp_TB <= v_INP;
                sel_TB <= v_SEL;
                
                wait for clock_period; 
                
                write(v_OLINE, v_INP);
                write(v_OLINE, v_SPACE);
                write(v_OLINE, v_SEL);
                write(v_OLINE, v_SPACE);
                write(v_OLINE, op_TB);

                writeline(file_results, v_OLINE);
            
            end loop; 
            file_close(file_vectors); 
            file_close(file_results);     
            wait; 
            
            
            end process;
            
end Behavioral;