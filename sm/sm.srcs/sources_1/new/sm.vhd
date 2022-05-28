----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.04.2022 10:01:49
-- Design Name: 
-- Module Name: sm - Behavioral
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

entity sm is
    Port ( I : in STD_LOGIC;
           O : out STD_LOGIC;
           CLK : in STD_LOGIC;
           RESET : in STD_LOGIC);
end sm;

architecture Behavioral of sm is
    signal state: std_logic_vector(2 downto 0);


begin

process(RESET, CLK)
begin
-- Okre�lenie stanu pocz�tkowego i wyj�� po resecie
if RESET = '1' then
state <= "000";
O <= '0';
-- Synchronizacja zboczem narastaj�cym sygna�u zegarowego
-- powoduje, �e zmiana stanu maszyny nast�puje tylko na tym zboczu 
elsif rising_edge(CLK) then
-- W instrukcji case opisuje si� zachowania maszyny
-- w poszczeg�lnych stanach zgodnie z grafem
case state is
    when "000" =>
        if I = '0' then
        state <= "001";
        else
        state <= "000";
        end if;
        O <= '0';
    when "001" =>
        if I = '0' then
        state <= "001";
        else
        state <= "010";
        end if;
        O <= '0';
    when "010" =>
        if I = '0' then
        state <= "001";
        else
        state <= "011";
        end if;
        O <= '0';
    when "011" =>
        if I = '0' then
        state <= "100";
        else
        state <= "000";
        end if;
        O <= '0';
    when "100" =>
        if I = '0' then
        state <= "001";
        else
        state <= "000";
        end if;
        O <= '1';
    -- Wariant, kt�ry warto umie�ci� dla bezpiecze�stwa.
    -- W przypadku gdyby maszyna przesz�a do nieprzewidzianego
    -- stanu, np. w wyniku zak��cenia, to po jednym cyklu
    -- zegarowym przejdzie do stanu pocz�tkowego, zachowa si�
    -- jak po resecie
    when others =>
        state <= "000";
        O <= '0';
end case;
end if;
end process;


end Behavioral;
