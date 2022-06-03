----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.05.2022 10:05:45
-- Design Name: 
-- Module Name: BCDCNT - Behavioral
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

entity BCDCNT is
    Port ( EN : in STD_LOGIC;
           CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           CO : out STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end BCDCNT;

architecture Behavioral of BCDCNT is
    signal CNT: unsigned(3 downto 0);
begin
    process (RESET, CLK)
    begin
        if RESET = '1' then
            CNT <= "0000";
            CO <='0';
        elsif rising_edge(CLK) then
        if EN='1' then
            CNT <= CNT + 1;
            if CNT = 9 then
                CO  <= '1';
                CNT <= "0000";
             else
                CO  <= '0';
            end if;
        end if;
        end if;
    end process;
    Q <= std_logic_vector(CNT);
end Behavioral;
