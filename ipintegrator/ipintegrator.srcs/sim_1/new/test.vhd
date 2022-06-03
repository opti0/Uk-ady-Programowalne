library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity test is
end test;
architecture Behavioral of test is
component modsystem is
port (
DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
CLK : in STD_LOGIC;
DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
RESET : in STD_LOGIC
);
end component modsystem;
signal DIN: STD_LOGIC_VECTOR ( 7 downto 0 );
signal CLK: STD_LOGIC;
signal DOUT: STD_LOGIC_VECTOR ( 7 downto 0 );
signal RESET: STD_LOGIC;
signal W: signed(7 downto 0);
begin
-- Konkretyzacja ca³ego systemu modulatora
ms: modsystem port map (CLK => CLK, DIN => DIN, DOUT => DOUT, RESET => RESET);
-- Proces generuj¹cy reset
process
begin
RESET <= '1';
wait for 10 ns;
RESET <= '0';
wait;
end process;
-- Proces generuj¹cy sygna³ zegarowy
process
begin
CLK <= '0';
wait for 5 ns;
CLK <= '1';
wait for 5 ns;
end process;
-- Proces generuj¹cy sygna³ pi³okszta³tny
process
begin
for i in -8 to 7 loop
W <= to_signed(i*16, 8);
wait for 3 ns;
end loop;
end process;
DIN <= std_logic_vector(W);
end Behavioral;