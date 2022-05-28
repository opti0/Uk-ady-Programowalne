----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.03.2022 10:35:26
-- Design Name: 
-- Module Name: BINTO7SEG - Behavioral
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

entity BINTO7SEG is
    Port ( X : in STD_LOGIC_VECTOR (3 downto 0);
           EN : in STD_LOGIC;
           DP : in STD_LOGIC;
           SEG : out STD_LOGIC_VECTOR (7 downto 0));
end BINTO7SEG;

architecture Behavioral of BINTO7SEG is

begin
SEG(6 downto 0) <= "1000000" when (X = "0000") and (EN = '1') else --0
                   "1111001" when (X = "0001") and (EN = '1') else --1
                   "0100100" when (X = "0010") and (EN = '1') else --2
                   "0110000" when (X = "0011") and (EN = '1') else --3
                   "0011001" when (X = "0100") and (EN = '1') else --4
                   "0010010" when (X = "0101") and (EN = '1') else --5
                   "0000010" when (X = "0110") and (EN = '1') else --6
                   "1111000" when (X = "0111") and (EN = '1') else --7
                   "0000000" when (X = "1000") and (EN = '1') else --8
                   "0010000" when (X = "1001") and (EN = '1') else --9
                   "0001000" when (X = "1010") and (EN = '1') else --A
                   "0000011" when (X = "1011") and (EN = '1') else --b
                   "1000110" when (X = "1100") and (EN = '1') else --C
                   "0100001" when (X = "1101") and (EN = '1') else --d
                   "0000110" when (X = "1110") and (EN = '1') else --E
                   "0001110" when (X = "1111") and (EN = '1') else --F
                   "1111111"; --wylaczony gdy EN = '0'
                   
SEG(7) <= '0' when (DP = '1') and (EN = '1') else --kropka
          '1'; --bez kropki
end Behavioral;
