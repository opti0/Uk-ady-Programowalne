library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity COUNTER3B is
    Port ( EN : in STD_LOGIC;
           CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           COUNTER_OUT : out STD_LOGIC_VECTOR (1 downto 0));
end COUNTER3B;

architecture Behavioral of COUNTER3B is
    signal CNT: unsigned(1 downto 0);
begin
    process (RESET, CLK)
    begin
          if RESET = '1' then
            CNT <= (others => '0');
          elsif rising_edge(CLK) then
           if EN = '0' then
            CNT <= (others => '0');
          else
            CNT <= CNT + 1;
            end if;
        end if;
    end process;
    
    COUNTER_OUT <= std_logic_vector(CNT);

end Behavioral;
