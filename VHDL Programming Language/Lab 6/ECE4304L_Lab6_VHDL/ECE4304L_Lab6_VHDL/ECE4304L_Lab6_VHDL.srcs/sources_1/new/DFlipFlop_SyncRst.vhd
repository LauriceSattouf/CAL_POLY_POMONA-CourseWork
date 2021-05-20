LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY DFlipflop_SyncRst IS
    PORT (
        clk : IN STD_LOGIC;
        rst : IN STD_LOGIC;
        D : IN STD_LOGIC;
        Q : OUT STD_LOGIC);
END DFlipflop_SyncRst;

ARCHITECTURE Behavioral OF DFlipflop_SyncRst IS

BEGIN

    MAIN : PROCESS (clk, rst)
    BEGIN
        IF (rising_edge(clk)) THEN
            IF (rst = '1') THEN
                Q <= '0';
            ELSE
                Q <= D;
            END IF;
        END IF;
    END PROCESS;

END Behavioral;