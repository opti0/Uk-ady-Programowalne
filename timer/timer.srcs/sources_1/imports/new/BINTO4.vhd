library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BINTO4 is
    Port ( COUNTER : in STD_LOGIC_VECTOR (1 downto 0);
           AN : out STD_LOGIC_VECTOR (3 downto 0));
end BINTO4;

architecture Behavioral of BINTO4 is

begin

with COUNTER select
    AN <= "0111" when "00",
          "1011" when "01",
          "1101" when "10",
          "1110" when "11",
          "1111" when others;

end Behavioral;
