library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity modulator is
Port ( RESET : in STD_LOGIC;
CLK : in STD_LOGIC;
O : out STD_LOGIC_VECTOR (7 downto 0));
end modulator;
architecture Behavioral of modulator is
type state_t is (S0, S1, S2, S3);
signal state: state_t;
begin
process(CLK)
begin
if rising_edge(CLK) then
if RESET = '1' then
state <= S0;
O <= x"64";
elsif state = S0 then
state <= S1;
O <= x"00";
elsif state = S1 then
state <= S2;
O <= x"46";
elsif state = S2 then
state <= S3;
O <= x"28";
else
state <= S0;
O <= x"64";
end if;
end if;
end process;
end Behavioral;