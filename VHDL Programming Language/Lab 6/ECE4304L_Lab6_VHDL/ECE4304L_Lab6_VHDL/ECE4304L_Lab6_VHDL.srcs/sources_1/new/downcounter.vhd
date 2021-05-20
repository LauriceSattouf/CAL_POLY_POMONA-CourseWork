LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY downcounter IS
    GENERIC (WIDTH : INTEGER := 18);
    PORT (
        clk : IN STD_LOGIC;
        Q : OUT STD_LOGIC_VECTOR (WIDTH - 1 DOWNTO 0)
    );
END downcounter;

ARCHITECTURE Structural OF downcounter IS

    SIGNAL Q_tmp : STD_LOGIC_VECTOR (WIDTH DOWNTO 0);

    COMPONENT DFlipflop_SyncRst IS
    PORT (
        clk : IN STD_LOGIC;
        rst : IN STD_LOGIC;
        D : IN STD_LOGIC;
        Q : OUT STD_LOGIC);
    END COMPONENT;


BEGIN

    FF_GEN : FOR i IN 1 TO WIDTH GENERATE
        FF : DFlipflop_SyncRst
        PORT MAP(
            clk => Q_tmp(i - 1),
            rst => Q_tmp(i),
            D => '1',
            Q => Q_tmp(i)
        );
    END GENERATE;

    Q_tmp(0) <= clk;
    Q <= Q_tmp(WIDTH DOWNTO 1);

END Structural;