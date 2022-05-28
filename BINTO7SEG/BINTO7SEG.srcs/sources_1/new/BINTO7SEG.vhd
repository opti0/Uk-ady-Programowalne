----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.03.2022 21:43:03
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


--use UNISIM.VComponents.all;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
 entity BINTO7SEG is
   Port ( x : in STD_LOGIC_VECTOR (3 downto 0);
           EN : in STD_LOGIC;
           DP : in STD_LOGIC;
           SEG : out STD_LOGIC_VECTOR (7 downto 0));
end BINTO7SEG;

architecture Behavioral of BINTO7SEG is

begin
seg <= x"FF" when EN = '0' else
    x"79" when x=x"1" AND DP = '1' else   
    x"F9" when x=x"1" else     
    x"40" when x=x"0" AND DP = '1' else 
    x"C0" when x=x"0" else 
    x"24" when x=x"2" AND DP = '1' else  
    x"A4" when x=x"2" else 
    x"30" when x=x"3" AND DP = '1' else
    x"B0" when x=x"3" else 
    x"19" when x=x"4" AND DP = '1' else
    x"99" when x=x"4" else
    x"12" when x=x"5" AND DP = '1' else
    x"92" when x=x"5" else
    x"02" when x=x"6" AND DP = '1' else
    x"82" when x=x"6" else
    x"78" when x=x"7" AND DP = '1' else
    x"F8" when x=x"7" else
    x"00" when x=x"8" AND DP = '1' else
    x"80" when x=x"8" else 
    x"10" when x=x"9" AND DP = '1' else
    x"90" when x=x"9" else
    x"08" when x=x"A" AND DP = '1' else
    x"88" when x=x"A" else
    x"03" when x=x"B" AND DP = '1' else
    x"83" when x=x"B" else
    x"27" when x=x"C" AND DP = '1' else
    x"A7" when x=x"C" else
    x"21" when x=x"D" AND DP = '1' else
    x"A1" when x=x"D" else
    x"06" when x=x"E" AND DP = '1' else
    x"86" when x=x"E" else
    x"08" when x=x"F" AND DP = '1' else
    x"8E" when x=x"F" else
    x"7F" when DP = '1' else
    (others=>'Z');    


end Behavioral;
