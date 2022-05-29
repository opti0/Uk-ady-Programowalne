----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.05.2022 10:10:39
-- Design Name: 
-- Module Name: FREQ_DEV - Behavioral
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FREQ_DEV is
    Port ( CLK : in STD_LOGIC;
           CLKD : out STD_LOGIC);
end FREQ_DEV;

architecture Behavioral of FREQ_DEV is
signal count: unsigned (15 downto 0);
signal guard: std_logic;
begin
process(CLK)
    begin
    if rising_edge(CLK) then
        count <= count + 1;
        if count = 49999 then
            guard <= not guard;
            CLKD <= guard;
            count <= "0000000000000000";
            end if;
    end if;
end process;

end Behavioral;
